id sub_100166E9C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for FMSelectedSection(0);
  __chkstk_darwin(v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10016FF44(a2, v5, type metadata accessor for FMSelectedSection);
  LODWORD(a2) = swift_getEnumCaseMultiPayload();
  result = sub_10016FFAC(v5, type metadata accessor for FMSelectedSection);
  if (a2 == 2)
  {
    return sub_100163594();
  }

  return result;
}

void sub_100166F90(double **a1, uint64_t a2, uint64_t a3, double (*a4)(double **, uint64_t, uint64_t))
{
  v5 = a4(a1, a2, a3);
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

void *sub_100166FC8(void *a1, int64_t a2, char a3)
{
  result = sub_100036A38(a1, a2, a3, *v3, &unk_1006B20B0, &unk_1005523B0, &unk_1006B4230, &unk_100555EC0);
  *v3 = result;
  return result;
}

void *sub_100167008(void *a1, int64_t a2, char a3)
{
  result = sub_1000357C0(a1, a2, a3, *v3, &qword_1006AF950, &unk_100555EB0, &type metadata accessor for FMIPDevice);
  *v3 = result;
  return result;
}

void *sub_10016704C(void *a1, int64_t a2, char a3)
{
  result = sub_1000357C0(a1, a2, a3, *v3, &unk_1006AF7A0, &qword_100555D10, &type metadata accessor for FMIPItem);
  *v3 = result;
  return result;
}

void *sub_100167090(void *a1, int64_t a2, char a3)
{
  result = sub_1000357C0(a1, a2, a3, *v3, &unk_1006B4090, &unk_100555D40, &type metadata accessor for FMIPAudioChannel);
  *v3 = result;
  return result;
}

void *sub_1001670D4(void *a1, int64_t a2, char a3)
{
  result = sub_1000357C0(a1, a2, a3, *v3, &qword_1006AF790, &qword_1005523C8, &type metadata accessor for FMIPSafeLocation);
  *v3 = result;
  return result;
}

void *sub_100167118(void *a1, int64_t a2, char a3)
{
  result = sub_1000357C0(a1, a2, a3, *v3, &unk_1006B4100, &unk_1005523A0, &type metadata accessor for FMIPUnknownItem);
  *v3 = result;
  return result;
}

char *sub_10016715C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10016771C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10016717C(void *a1, int64_t a2, char a3)
{
  result = sub_1000357C0(a1, a2, a3, *v3, &unk_1006B40A0, &unk_100555D50, &type metadata accessor for FMIPBeaconShare);
  *v3 = result;
  return result;
}

void *sub_1001671C0(void *a1, int64_t a2, char a3)
{
  result = sub_1000357C0(a1, a2, a3, *v3, &qword_1006AF970, &qword_100552598, &type metadata accessor for FMFFriend);
  *v3 = result;
  return result;
}

char *sub_100167204(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10016789C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100167224(void *a1, int64_t a2, char a3)
{
  result = sub_1000357C0(a1, a2, a3, *v3, &unk_1006AF8E0, &unk_10055CEB0, &type metadata accessor for FMFLocationAlert);
  *v3 = result;
  return result;
}

void *sub_100167268(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100167BA0(a1, a2, a3, *v3, &qword_1006C39E0, &qword_100555E28, &qword_1006B4190, &qword_100555E30);
  *v3 = result;
  return result;
}

void *sub_1001672A8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100167BA0(a1, a2, a3, *v3, &unk_1006B40D0, &qword_100555D70, &qword_1006C3800, &unk_100555D78);
  *v3 = result;
  return result;
}

void *sub_1001672E8(void *a1, int64_t a2, char a3)
{
  result = sub_1000357C0(a1, a2, a3, *v3, &qword_1006B0090, &unk_100552B00, &type metadata accessor for IndexPath);
  *v3 = result;
  return result;
}

void *sub_10016732C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100167FDC(a1, a2, a3, *v3, &unk_1006B4080, &unk_100555D30, &qword_1006B4078, &qword_100555D28);
  *v3 = result;
  return result;
}

void *sub_10016736C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100167FDC(a1, a2, a3, *v3, &qword_1006AF960, &qword_100555EA0, &qword_1006B4228, &qword_100555EA8);
  *v3 = result;
  return result;
}

char *sub_1001673AC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100167EBC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1001673CC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100167FDC(a1, a2, a3, *v3, &qword_1006B41A8, &qword_100555E48, &qword_1006B41B0, &qword_100555E50);
  *v3 = result;
  return result;
}

void *sub_10016740C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100167FDC(a1, a2, a3, *v3, &qword_1006B41B8, &qword_100555E58, &qword_1006B41C0, &unk_100555E60);
  *v3 = result;
  return result;
}

void *sub_10016744C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100167FDC(a1, a2, a3, *v3, &qword_1006B4198, &qword_100555E38, &qword_1006B41A0, &qword_100555E40);
  *v3 = result;
  return result;
}

void *sub_10016748C(void *a1, int64_t a2, char a3)
{
  result = sub_1000357C0(a1, a2, a3, *v3, &qword_1006B40E0, &unk_100552420, &type metadata accessor for UUID);
  *v3 = result;
  return result;
}

void *sub_1001674D0(void *a1, int64_t a2, char a3)
{
  result = sub_1000357C0(a1, a2, a3, *v3, &qword_1006B4148, &unk_100555E00, &type metadata accessor for FMFLabel);
  *v3 = result;
  return result;
}

void *sub_100167514(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100168138(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100167534(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100168390(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100167554(void *a1, int64_t a2, char a3)
{
  result = sub_1000357C0(a1, a2, a3, *v3, &qword_1006B40F8, &qword_100555D98, type metadata accessor for FMAnnotationIdentifier);
  *v3 = result;
  return result;
}

void *sub_100167598(void *a1, int64_t a2, char a3)
{
  result = sub_1000357C0(a1, a2, a3, *v3, &unk_1006AF8A0, &unk_100555DE0, type metadata accessor for FMItemCellViewModel);
  *v3 = result;
  return result;
}

void *sub_1001675DC(void *a1, int64_t a2, char a3)
{
  result = sub_1000357C0(a1, a2, a3, *v3, &unk_1006B4118, &qword_100555DA8, &type metadata accessor for FMFLabelledLocation);
  *v3 = result;
  return result;
}

void *sub_100167620(void *a1, int64_t a2, char a3)
{
  result = sub_1000357C0(a1, a2, a3, *v3, &qword_1006B4110, &qword_100555DA0, &type metadata accessor for PersonModel.Handle);
  *v3 = result;
  return result;
}

char *sub_100167664(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001684AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100167684(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001685B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10016771C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10007EBC0(&unk_1006AF770, &unk_1005542D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_10016789C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10007EBC0(&qword_1006B4128, &unk_100555DC8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

void *sub_1001679A8(void *result, int64_t a2, char a3, void *a4)
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
    sub_10007EBC0(&unk_1006B4130, qword_1005524D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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
    sub_10007EBC0(&unk_1006C0230, &qword_100555DD8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100167BA0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    v19 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10007EBC0(a5, a6);
  v16 = *(sub_10007EBC0(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
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
  v21 = *(sub_10007EBC0(a7, a8) - 8);
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

void *sub_100167D88(void *result, int64_t a2, char a3, void *a4)
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
    sub_10007EBC0(&qword_1006B4160, &unk_100552510);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10007EBC0(&qword_1006B4168, &qword_100555E10);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100167EBC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10007EBC0(&unk_1006B4150, qword_1005653A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

void *sub_100167FDC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    sub_10007EBC0(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
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
    v16 = _swiftEmptyArrayStorage;
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
    sub_10007EBC0(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_100168138(void *result, int64_t a2, char a3, void *a4)
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
    sub_10007EBC0(&qword_1006B4170, &qword_100555E18);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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
    sub_10007EBC0(&qword_1006B4178, &qword_100555E20);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100168280(char *result, int64_t a2, char a3, char *a4)
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
    sub_10007EBC0(&qword_1006B04E8, &qword_100552DC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_100168390(char *result, int64_t a2, char a3, char *a4)
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
    sub_10007EBC0(&qword_1006AF8C8, &unk_100552500);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

char *sub_1001684AC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10007EBC0(&unk_1006B40E8, &qword_100555D88);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_1001685B0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10007EBC0(&qword_1006AF7F0, &qword_100555D90);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void (*sub_1001686B4(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
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
    return sub_100170464;
  }

  __break(1u);
  return result;
}

void (*sub_100168734(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
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
    return sub_1001687B4;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1001687BC(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
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
    return sub_10016883C;
  }

  __break(1u);
  return result;
}

uint64_t sub_100168844(uint64_t a1, int a2)
{
  v3 = type metadata accessor for FMItemCapabilities();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v35 - v8;
  v10 = FMIPUnknownItem.unknownBeacon.getter();
  if (v10)
  {
    v11 = v10;
    v12 = [v10 capabilities];
  }

  else
  {
    v15 = FMIPUnknownItem.unknownBeacon.getter();
    if (!v15 || (v16 = v15, v11 = [v15 metadata], v16, !v11))
    {
      FMIPUnknownItem.capabilities.getter();
      static FMItemCapabilities.canR1.getter();
      sub_1001702F0(&qword_1006B4180, &type metadata accessor for FMItemCapabilities, &protocol conformance descriptor for FMItemCapabilities);
      v17 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v18 = *(v4 + 8);
      v18(v6, v3);
      v18(v9, v3);
      if ((v17 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }

    v12 = [v11 capabilities];
  }

  v13 = v12;

  if ((v13 & 0x100) == 0)
  {
LABEL_4:
    v14 = 1;
    goto LABEL_10;
  }

LABEL_9:
  v14 = FMIPUnknownItem.isAppleAudioAccessory.getter();
LABEL_10:
  v19 = FMIPUnknownItem.unknownBeacon.getter();
  if (v19)
  {
    v20 = v19;
    v21 = [v19 capabilities];

    v22 = (v21 >> 10) & 1;
  }

  else
  {
    v23 = FMIPUnknownItem.unknownBeacon.getter();
    if (v23 && (v24 = v23, v25 = [v23 metadata], v24, v25))
    {
      v26 = [v25 capabilities];

      v22 = (v26 >> 10) & 1;
    }

    else
    {
      FMIPUnknownItem.capabilities.getter();
      static FMItemCapabilities.canBTFinding.getter();
      sub_1001702F0(&qword_1006B4180, &type metadata accessor for FMItemCapabilities, &protocol conformance descriptor for FMItemCapabilities);
      LOBYTE(v22) = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v27 = *(v4 + 8);
      v27(v6, v3);
      v27(v9, v3);
    }
  }

  type metadata accessor for FMConnectionManager();
  if (static FMConnectionManager.hostSupportsRanging.getter())
  {
    v28 = [objc_opt_self() currentDevice];
    v29 = [v28 userInterfaceIdiom];

    v30 = (v29 != 1) & (v14 ^ 1) & a2;
  }

  else
  {
    v30 = 0;
  }

  v31 = [objc_opt_self() currentDevice];
  v32 = [v31 userInterfaceIdiom];

  if (((v32 != 1) & v22) != 0)
  {
    v33 = 256;
  }

  else
  {
    v33 = 0;
  }

  return v33 | v30;
}

uint64_t sub_100168BDC(uint64_t a1, int a2, int a3, uint64_t a4, int a5)
{
  v37 = a5;
  v9 = type metadata accessor for FMIPItemState();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  v16 = sub_100168844(a1, a2);
  v36 = a1;
  FMIPUnknownItem.state.getter();
  static FMIPItemState.isFirmwareUpdating.getter();
  v34 = sub_1001702F0(&qword_1006C0350, &type metadata accessor for FMIPItemState, &protocol conformance descriptor for FMIPItemState);
  v17 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v18 = *(v10 + 8);
  v18(v12, v9);
  v35 = v18;
  v18(v15, v9);
  v39 = *(a4 + 16);
  OS_dispatch_queue.sync<A>(execute:)();
  v19 = v40;
  v20 = sub_10041E648();
  v38 = a3;
  if (a3)
  {
    v21 = v20 | v17;
  }

  else
  {
    v21 = v20;
  }

  if (v16)
  {
    LOBYTE(v22) = v20 | v19;
  }

  else
  {
    v22 = (v20 | v17) & ((v16 & 0x100) >> 8);
  }

  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v23 = v22 ^ 1;
  v24 = type metadata accessor for Logger();
  sub_100005B14(v24, qword_1006D4630);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 67109376;
    *(v27 + 4) = v23 & 1;
    *(v27 + 8) = 1024;
    *(v27 + 10) = (v21 ^ 1) & 1;
    _os_log_impl(&_mh_execute_header, v25, v26, "FMFindingExperiencePresenter: calculate required connectivity:\n    hasRequiredFindingConnectivity: %{BOOL}d\n    hasRequiredPlaySoundConnectivity: %{BOOL}d", v27, 0xEu);
  }

  if (v38)
  {
    v28 = 1;
  }

  else
  {
    FMIPUnknownItem.state.getter();
    static FMIPItemState.isBTConnected.getter();
    v29 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v30 = v35;
    v35(v12, v9);
    v30(v15, v9);
    v28 = v29 | v37;
  }

  v31 = v23 & v28;
  if (v21)
  {
    v32 = 0;
  }

  else
  {
    v32 = 256;
  }

  return v32 & 0xFFFFFFFE | v31 & 1;
}

uint64_t sub_100168F44(unint64_t a1, unint64_t a2, char a3)
{
  v5 = (a1 >> 7) & 1;
  type metadata accessor for FMConnectionManager();
  if (static FMConnectionManager.hostSupportsRanging.getter())
  {
    v6 = [objc_opt_self() currentDevice];
    v7 = [v6 userInterfaceIdiom];

    v25 = v7 != 1;
  }

  else
  {
    v25 = 0;
  }

  v8 = a1 & 0x80;
  v9 = [objc_opt_self() currentDevice];
  v10 = [v9 userInterfaceIdiom];

  if ((a2 & 0x20) != 0)
  {
    if (v25)
    {
      if ((a1 & 0x400) != 0)
      {
        if (v10 != 1 && (a1 & 0x800) != 0)
        {
LABEL_10:
          if (a3)
          {
            v11 = 1;
            v23 = 1;
LABEL_28:
            v13 = (a2 & 0x1000) == 0;
            LODWORD(v5) = (v8 != 0) & (a2 >> 12);
            LODWORD(v12) = 1;
            v14 = v11;
            goto LABEL_29;
          }

LABEL_27:
          v11 = 0;
          v23 = 1;
          goto LABEL_28;
        }

        goto LABEL_24;
      }

      if (v10 == 1)
      {
LABEL_21:
        v13 = 0;
        v23 = 0;
        v14 = 0;
        LODWORD(v12) = 1;
        goto LABEL_29;
      }
    }

    else if (v10 == 1)
    {
      goto LABEL_21;
    }

    if ((a1 & 0x800) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_21;
  }

  if (v25 && (a1 & 0x400) != 0 && (a2 & 0x40) != 0)
  {
    if (v10 != 1 && (a1 & 0x800) != 0)
    {
      goto LABEL_10;
    }

LABEL_24:
    v23 = 0;
    v13 = 0;
    v14 = 0;
    v11 = 1;
    LODWORD(v12) = 1;
    if (a3)
    {
      goto LABEL_28;
    }

    goto LABEL_29;
  }

  v12 = (a2 >> 6) & 1;
  if (v10 == 1 || (a1 & 0x800) == 0)
  {
    v13 = 0;
    v23 = 0;
    v14 = 0;
    goto LABEL_29;
  }

  if ((a2 & 0x40) != 0)
  {
    goto LABEL_27;
  }

  v13 = 0;
  v23 = 0;
  v14 = 0;
  LODWORD(v12) = 0;
LABEL_29:
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v15 = a1 & 4;
  v16 = type metadata accessor for Logger();
  sub_100005B14(v16, qword_1006D4630);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 67111936;
    *(v19 + 4) = v25;
    *(v19 + 8) = 1024;
    *(v19 + 10) = (a1 >> 10) & 1;
    *(v19 + 14) = 1024;
    *(v19 + 16) = (a1 >> 11) & 1;
    *(v19 + 20) = 1024;
    *(v19 + 22) = v8 >> 7;
    *(v19 + 26) = 1024;
    v20 = v15 >> 2;
    *(v19 + 28) = v20;
    *(v19 + 32) = 1024;
    *(v19 + 34) = v12;
    *(v19 + 38) = 1024;
    *(v19 + 40) = a3 & 1;
    *(v19 + 44) = 1024;
    *(v19 + 46) = v14;
    *(v19 + 50) = 1024;
    *(v19 + 52) = v23;
    *(v19 + 56) = 1024;
    *(v19 + 58) = v13;
    *(v19 + 62) = 1024;
    *(v19 + 64) = v5;
    *(v19 + 68) = 1024;
    *(v19 + 70) = v20;
    _os_log_impl(&_mh_execute_header, v17, v18, "FMFindingExperiencePresenter: calculateButtonState:\n    hostSupportsR1Finding: %{BOOL}d\n    itemSupportsR1Finding: %{BOOL}d\n    itemSupportsBTFinding: %{BOOL}d\n    itemSupportsDirections: %{BOOL}d\n    itemSupportsPlaySound: %{BOOL}d\n    isConnectedOrWasNearby: %{BOOL}d\n    isR1Available: %{BOOL}d\n    canUseR1Finding: %{BOOL}d\n    canUseBTFinding: %{BOOL}d\n    showFindButton: %{BOOL}d\n    showDirectionsButton: %{BOOL}d\n    showPlaySoundButton: %{BOOL}d", v19, 0x4Au);
  }

  else
  {

    v20 = v15 >> 2;
  }

  if (v5)
  {
    v21 = 0x10000;
  }

  else
  {
    v21 = 0;
  }

  return v21 | (v13 << 8) | v20;
}

uint64_t sub_100169288(uint64_t a1, char a2, int a3)
{
  v5 = a1;
  type metadata accessor for FMConnectionManager();
  if (static FMConnectionManager.hostSupportsRanging.getter())
  {
    v6 = [objc_opt_self() currentDevice];
    v7 = [v6 userInterfaceIdiom];

    v8 = v7 != 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_opt_self() currentDevice];
  v10 = [v9 userInterfaceIdiom];

  v11 = v8 & (v5 >> 10);
  if ((a2 & 0x60) == 0)
  {
    v11 = 0;
  }

  v12 = v11 & a3;
  v13 = v10 != 1 && (v5 & 0x800) != 0;
  if (v13 && (a2 & 0x60) != 0)
  {
    v14 = 256;
  }

  else
  {
    v14 = 0;
  }

  return v14 | v12;
}

void sub_100169388(uint64_t a1)
{
  v105 = a1;
  v2 = sub_10007EBC0(&qword_1006AF740, &unk_100552330);
  __chkstk_darwin(v2 - 8);
  v89 = &v84 - v3;
  v109 = type metadata accessor for FMFRelationshipType();
  v4 = *(v109 - 8);
  __chkstk_darwin(v109);
  v108 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v107 = &v84 - v7;
  v117 = type metadata accessor for FMFFriend();
  v98 = *(v117 - 8);
  __chkstk_darwin(v117);
  v111 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v84 - v10;
  __chkstk_darwin(v12);
  v91 = &v84 - v13;
  v14 = type metadata accessor for FMFindingProductType();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10007EBC0(&qword_1006B4058, &qword_100555D08);
  __chkstk_darwin(v18 - 8);
  v20 = (&v84 - v19);
  v21 = OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_presentedMode;
  swift_beginAccess();
  sub_100007204(v1 + v21, v20, &qword_1006B4058, &qword_100555D08);
  v22 = type metadata accessor for FindingMode(0);
  if ((*(*(v22 - 8) + 48))(v20, 1, v22) == 1)
  {
    sub_100012DF0(v20, &qword_1006B4058, &qword_100555D08);
    return;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_10016FFAC(v20, type metadata accessor for FindingMode);
    return;
  }

  v23 = v20[1];
  v97 = *v20;
  v85 = v23;
  v24 = FMConnectionManager.findables.getter();
  v26 = v24;
  v27 = *(v24 + 16);
  if (!v27)
  {
LABEL_53:

    return;
  }

  v28 = 0;
  v104 = v24 + 32;
  v103 = (v15 + 88);
  v102 = enum case for FMFindingProductType.person(_:);
  v100 = (v15 + 8);
  v99 = (v15 + 96);
  v115 = v98 + 16;
  v106 = (v4 + 8);
  v116 = (v98 + 8);
  v84 = (v98 + 32);
  *&v25 = 136315138;
  v92 = v25;
  v29 = v117;
  v110 = v11;
  v95 = v14;
  v94 = v17;
  v96 = v24;
  v93 = v27;
  while (1)
  {
    if (v28 >= *(v26 + 16))
    {
      __break(1u);
      return;
    }

    sub_100037840(v104 + 40 * v28, v120);
    sub_1000244BC(v120, v120[3]);
    dispatch thunk of FMFindable.findingProductType.getter();
    v30 = (*v103)(v17, v14);
    if (v30 != v102)
    {
      (*v100)(v17, v14);
LABEL_32:
      if (qword_1006AED70 != -1)
      {
        swift_once();
      }

      v57 = type metadata accessor for Logger();
      sub_100005B14(v57, qword_1006D4CF0);
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&_mh_execute_header, v58, v59, "FMFindingExperiencePresenter: Can't find current findable's handle", v60, 2u);
      }

      goto LABEL_7;
    }

    (*v99)(v17, v14);
    v31 = *(v17 + 1);
    v32 = *(v17 + 2);

    if (!v32)
    {
      goto LABEL_32;
    }

    v101 = v28;
    v33 = *(v105 + 16);
    if (v33)
    {
      break;
    }

LABEL_36:
    if (qword_1006AED70 != -1)
    {
      swift_once();
    }

    v61 = type metadata accessor for Logger();
    v62 = sub_100005B14(v61, qword_1006D4CF0);

    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v119 = v90;
      v113 = v65;
      *v65 = v92;
      if (v33)
      {
        v86 = v64;
        v87 = v63;
        v88 = v62;
        v118 = _swiftEmptyArrayStorage;
        sub_10016732C(0, v33, 0);
        v66 = v118;
        v67 = v105 + ((*(v98 + 80) + 32) & ~*(v98 + 80));
        v114 = *(v98 + 72);
        v68 = *(v98 + 16);
        do
        {
          v69 = v111;
          v70 = v117;
          v68(v111, v67, v117);
          v71 = FMFFriend.contactHandles.getter();
          (*v116)(v69, v70);
          v118 = v66;
          v73 = v66[2];
          v72 = v66[3];
          if (v73 >= v72 >> 1)
          {
            sub_10016732C((v72 > 1), v73 + 1, 1);
            v66 = v118;
          }

          v66[2] = v73 + 1;
          v66[v73 + 4] = v71;
          v67 += v114;
          --v33;
        }

        while (v33);
        v29 = v117;
        v11 = v110;
        v63 = v87;
        LOBYTE(v64) = v86;
      }

      sub_10007EBC0(&qword_1006B4078, &qword_100555D28);
      v74 = Array.description.getter();
      v76 = v75;

      v77 = sub_100005B4C(v74, v76, &v119);

      v78 = v113;
      *(v113 + 1) = v77;
      _os_log_impl(&_mh_execute_header, v63, v64, "FMFindingExperiencePresenter: person doesn't exist or doesn't share location. Going back to list. People list: %s", v78, 0xCu);
      sub_100006060(v90);
    }

    v14 = v95;
    v17 = v94;

    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v119 = v82;
      *v81 = v92;
      v83 = sub_100005B4C(v31, v32, &v119);

      *(v81 + 4) = v83;
      _os_log_impl(&_mh_execute_header, v79, v80, "FMFindingExperiencePresenter connection manager handle: %s", v81, 0xCu);
      sub_100006060(v82);
    }

    else
    {
    }

    v26 = v96;
    v27 = v93;
    v28 = v101;
    dispatch thunk of FMFindingSession.updateSessionForRemovedFriendship()();
LABEL_7:
    ++v28;
    sub_100006060(v120);
    if (v28 == v27)
    {
      goto LABEL_53;
    }
  }

  v34 = 0;
  v35 = v105 + ((*(v98 + 80) + 32) & ~*(v98 + 80));
  v114 = *(v98 + 72);
  v113 = *(v98 + 16);
  v112 = v33;
  (v113)(v11, v35, v29);
  while (1)
  {
    v36 = FMFFriend.contactHandles.getter();
    if (!*(v36 + 16) || (Hasher.init(_seed:)(), String.hash(into:)(), v37 = Hasher._finalize()(), v38 = -1 << *(v36 + 32), v39 = v37 & ~v38, ((*(v36 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0))
    {
LABEL_13:

      goto LABEL_14;
    }

    v40 = ~v38;
    while (1)
    {
      v41 = (*(v36 + 48) + 16 * v39);
      v42 = *v41 == v31 && v32 == v41[1];
      if (v42 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v39 = (v39 + 1) & v40;
      if (((*(v36 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    v43 = v107;
    FMFFriend.relationshipType.getter();
    v44 = v108;
    static FMFRelationshipType.sharesLocationWithMe.getter();
    sub_1001702F0(&qword_1006B4070, &type metadata accessor for FMFRelationshipType, &protocol conformance descriptor for FMFRelationshipType);
    v45 = v109;
    v46 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v47 = *v106;
    (*v106)(v44, v45);
    v48 = v43;
    v11 = v110;
    v47(v48, v45);
    if (v46)
    {
      break;
    }

LABEL_14:
    ++v34;
    v29 = v117;
    (*v116)(v11, v117);
    v33 = v112;
    if (v34 == v112)
    {
      goto LABEL_36;
    }

    (v113)(v11, v35 + v114 * v34, v29);
  }

  v29 = v117;
  (*v84)(v91, v11, v117);
  v49 = v89;
  FMFFriend.location.getter();
  v50 = type metadata accessor for FMFLocation();
  v51 = *(v50 - 8);
  if ((*(v51 + 48))(v49, 1, v50) == 1)
  {
    (*v116)(v91, v29);

    sub_100012DF0(v49, &qword_1006AF740, &unk_100552330);
  }

  else
  {
    v52 = FMFLocation.location.getter();
    v53 = v49;
    v54 = v52;
    (*(v51 + 8))(v53, v50);
    v55 = v85;
    v26 = v96;
    if (v54)
    {
      type metadata accessor for FMPrecisionConnectionManager();
      if (swift_dynamicCastClass())
      {
        v56 = v55;
        dispatch thunk of FMPrecisionConnectionManager.updateLocationForFindable(findable:location:)();

        (*v116)(v91, v29);
      }

      else
      {
        (*v116)(v91, v29);
      }

      v14 = v95;
      v17 = v94;
      v27 = v93;
      v28 = v101;
      goto LABEL_7;
    }

    (*v116)(v91, v29);
  }

  sub_100006060(v120);
}

void sub_10016A1F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v93 = type metadata accessor for DispatchWorkItemFlags();
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v90 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for DispatchQoS();
  v89 = *(v91 - 8);
  __chkstk_darwin(v91);
  v88 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for FMIPDeviceConnectedStateType();
  v96 = *(v97 - 8);
  __chkstk_darwin(v97);
  v95 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v94 = &v87 - v8;
  v9 = sub_10007EBC0(&unk_1006BBCE0, &unk_1005534C0);
  __chkstk_darwin(v9 - 8);
  v99 = &v87 - v10;
  v11 = sub_10007EBC0(&qword_1006B4058, &qword_100555D08);
  __chkstk_darwin(v11 - 8);
  v13 = &v87 - v12;
  v14 = type metadata accessor for FindingMode(0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v110 = (&v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v109 = &v87 - v18;
  v19 = type metadata accessor for FMIPDevice();
  v101 = *(v19 - 8);
  __chkstk_darwin(v19);
  v98 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v87 - v22;
  __chkstk_darwin(v24);
  v100 = &v87 - v25;
  v26 = *(a1 + 16);
  if (!v26)
  {
LABEL_24:
    if (qword_1006AED70 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_100005B14(v41, qword_1006D4CF0);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "🧭 FMFindingExperiencePresenter: Received device update but current device is missing from the set.", v44, 2u);
    }

    return;
  }

  v27 = v101;
  v28 = a1 + ((*(v101 + 80) + 32) & ~*(v101 + 80));
  v105 = OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_presentedMode;
  swift_beginAccess();
  v106 = *(v27 + 16);
  v107 = v27 + 16;
  v103 = v14;
  v104 = (v15 + 48);
  v102 = *(v27 + 72);
  v108 = (v27 + 8);
  while (1)
  {
    v30 = v19;
    v106(v23, v28, v19);
    v31 = FMIPDevice.baIdentifier.getter();
    v33 = v32;
    sub_100007204(&v111[v105], v13, &qword_1006B4058, &qword_100555D08);
    if ((*v104)(v13, 1, v14) == 1)
    {
      sub_100012DF0(v13, &qword_1006B4058, &qword_100555D08);
      goto LABEL_8;
    }

    v37 = v109;
    sub_10016FED8(v13, v109);
    sub_10016FF44(v37, v110, type metadata accessor for FindingMode);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_10016FFAC(v109, type metadata accessor for FindingMode);
        sub_10016FFAC(v110, type metadata accessor for FindingMode);
LABEL_8:
        v34 = 0;
        v35 = 0;
        if (!v33)
        {
          goto LABEL_22;
        }

        goto LABEL_9;
      }
    }

    else if (!EnumCaseMultiPayload)
    {
      sub_10016FFAC(v109, type metadata accessor for FindingMode);
      v39 = type metadata accessor for UUID();
      (*(*(v39 - 8) + 8))(v110, v39);
      goto LABEL_8;
    }

    v34 = dispatch thunk of FMFindingSession.findingSessionIdentifier.getter();
    v35 = v40;

    sub_10016FFAC(v109, type metadata accessor for FindingMode);
    if (!v33)
    {
LABEL_22:
      v19 = v30;
      v29 = v108;
      v14 = v103;
      if (!v35)
      {
        goto LABEL_30;
      }

      goto LABEL_4;
    }

LABEL_9:
    if (!v35)
    {
      v19 = v30;
      v29 = v108;
      v14 = v103;
LABEL_4:

      goto LABEL_5;
    }

    if (v31 == v34 && v33 == v35)
    {
      break;
    }

    v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v19 = v30;
    v29 = v108;
    v14 = v103;
    if (v36)
    {
      goto LABEL_30;
    }

LABEL_5:
    (*v29)(v23, v19);
    v28 += v102;
    if (!--v26)
    {
      goto LABEL_24;
    }
  }

  v19 = v30;
  v29 = v108;
LABEL_30:
  v45 = v101;
  v46 = v100;
  (*(v101 + 32))(v100, v23, v19);

  v47 = v99;
  sub_1000E5498(v99);

  if ((*(v45 + 48))(v47, 1, v19) == 1)
  {
    (*v29)(v46, v19);
    sub_100012DF0(v47, &unk_1006BBCE0, &unk_1005534C0);
    return;
  }

  v48 = FMIPDevice.baIdentifier.getter();
  v50 = v49;
  v51 = *v29;
  (*v29)(v47, v19);
  if (!v50)
  {
    (v51)(v46, v19);
    return;
  }

  v52 = FMIPDevice.deviceConnectedWithBeacon.getter();
  if (v53)
  {
    v54 = v98;
    if (v48 == v52 && v50 == v53)
    {

LABEL_40:
      v56 = v94;
      FMIPDevice.deviceConnectedState.getter();
      v110 = v51;
      v57 = v96;
      v58 = v48;
      v59 = v95;
      v60 = v97;
      (*(v96 + 104))(v95, enum case for FMIPDeviceConnectedStateType.attached(_:), v97);
      v61 = static FMIPDeviceConnectedStateType.== infix(_:_:)();
      v62 = *(v57 + 8);
      v63 = v59;
      v48 = v58;
      v46 = v100;
      v62(v63, v60);
      v64 = v56;
      v54 = v98;
      v62(v64, v60);
      v51 = v110;
      if ((v61 & 1) != 0 && *&v111[OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_presentedViewController])
      {

        sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
        v109 = static OS_dispatch_queue.main.getter();
        v65 = swift_allocObject();
        v66 = v111;
        *(v65 + 16) = v111;
        v116 = sub_10016FF3C;
        v117 = v65;
        aBlock = _NSConcreteStackBlock;
        v113 = 1107296256;
        v114 = sub_100004AE4;
        v115 = &unk_100629FC8;
        v67 = _Block_copy(&aBlock);
        v68 = v66;

        v69 = v88;
        static DispatchQoS.unspecified.getter();
        aBlock = _swiftEmptyArrayStorage;
        sub_1001702F0(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
        v111 = v19;
        sub_100004098(&qword_1006AEDF0, &unk_1006B0640, &unk_100552B10, &protocol conformance descriptor for [A]);
        v70 = v90;
        v71 = v93;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v72 = v109;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v67);

        (*(v92 + 8))(v70, v71);
        (*(v89 + 8))(v69, v91);
        (v51)(v46, v111);
        return;
      }
    }

    else
    {
      v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v55)
      {
        goto LABEL_40;
      }
    }
  }

  else
  {

    v54 = v98;
  }

  if (qword_1006AED70 != -1)
  {
    swift_once();
  }

  v73 = type metadata accessor for Logger();
  sub_100005B14(v73, qword_1006D4CF0);
  v106(v54, v46, v19);

  v74 = Logger.logObject.getter();
  v75 = v19;
  v76 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v74, v76))
  {
    v77 = swift_slowAlloc();
    v110 = v51;
    v78 = v54;
    v79 = v77;
    v118 = swift_slowAlloc();
    *v79 = 136315394;
    v80 = sub_100005B4C(v48, v50, &v118);

    *(v79 + 4) = v80;
    *(v79 + 12) = 2080;
    aBlock = FMIPDevice.deviceConnectedWithBeacon.getter();
    v113 = v81;
    sub_10007EBC0(&qword_1006AF8F0, &qword_100555D20);
    v82 = String.init<A>(describing:)();
    v84 = v83;
    v85 = v78;
    v51 = v110;
    (v110)(v85, v75);
    v86 = sub_100005B4C(v82, v84, &v118);

    *(v79 + 14) = v86;
    _os_log_impl(&_mh_execute_header, v74, v76, "🧭 FMFindingExperiencePresenter: This device baID: %s, and presented device connectedW/ UUID: %s", v79, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (v51)(v54, v75);
  }

  (v51)(v46, v75);
}

void sub_10016B02C(uint64_t a1)
{
  v2 = type metadata accessor for FMIPItemState();
  v53 = *(v2 - 8);
  v54 = v2;
  __chkstk_darwin(v2);
  v52 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v51 = &v49 - v5;
  v6 = sub_10007EBC0(&qword_1006B4058, &qword_100555D08);
  __chkstk_darwin(v6 - 8);
  v8 = &v49 - v7;
  v65 = type metadata accessor for FindingMode(0);
  v9 = *(v65 - 8);
  __chkstk_darwin(v65);
  v63 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v64 = &v49 - v12;
  v13 = type metadata accessor for FMIPItem();
  v55 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v50 = &v49 - v17;
  v18 = *(a1 + 16);
  if (!v18)
  {
LABEL_20:
    if (qword_1006AED70 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100005B14(v33, qword_1006D4CF0);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "🧭 FMFindingExperiencePresenter: Received item update but current item is missing from the set.", v36, 2u);
    }

    return;
  }

  v19 = v55;
  v20 = a1 + ((*(v55 + 80) + 32) & ~*(v55 + 80));
  v61 = OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_presentedMode;
  swift_beginAccess();
  v21 = *(v19 + 16);
  v19 += 16;
  v58 = (v9 + 48);
  v59 = v21;
  v62 = (v19 - 8);
  v60 = v19;
  v22 = *(v19 + 56);
  v56 = v13;
  v57 = v22;
  v21(v15, v20, v13);
  while (1)
  {
    v23 = FMIPItem.identifier.getter();
    v25 = v24;
    sub_100007204(v66 + v61, v8, &qword_1006B4058, &qword_100555D08);
    if ((*v58)(v8, 1, v65) == 1)
    {
      sub_100012DF0(v8, &qword_1006B4058, &qword_100555D08);
LABEL_4:

      goto LABEL_5;
    }

    v26 = v64;
    sub_10016FED8(v8, v64);
    sub_10016FF44(v26, v63, type metadata accessor for FindingMode);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_10016FFAC(v64, type metadata accessor for FindingMode);
        sub_10016FFAC(v63, type metadata accessor for FindingMode);
        goto LABEL_13;
      }
    }

    else if (!EnumCaseMultiPayload)
    {
      sub_10016FFAC(v64, type metadata accessor for FindingMode);
      v28 = type metadata accessor for UUID();
      (*(*(v28 - 8) + 8))(v63, v28);
LABEL_13:
      v13 = v56;
      goto LABEL_4;
    }

    v29 = dispatch thunk of FMFindingSession.findingSessionIdentifier.getter();
    v31 = v30;

    sub_10016FFAC(v64, type metadata accessor for FindingMode);
    if (v23 == v29 && v25 == v31)
    {
      break;
    }

    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v13 = v56;
    if (v32)
    {
      goto LABEL_26;
    }

LABEL_5:
    (*v62)(v15, v13);
    v20 += v57;
    if (!--v18)
    {
      goto LABEL_20;
    }

    v59(v15, v20, v13);
  }

  v13 = v56;
LABEL_26:
  v37 = v50;
  (*(v55 + 32))(v50, v15, v13);
  if (qword_1006AED70 != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  sub_100005B14(v38, qword_1006D4CF0);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&_mh_execute_header, v39, v40, "🧭 FMFindingExperiencePresenter: Received item update and forwarding sound playback state.", v41, 2u);
  }

  v42 = v51;
  FMIPItem.state.getter();
  v43 = v52;
  static FMIPItemState.soundPlaying.getter();
  sub_1001702F0(&qword_1006C0350, &type metadata accessor for FMIPItemState, &protocol conformance descriptor for FMIPItemState);
  v44 = v54;
  v45 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v46 = *(v53 + 8);
  v46(v43, v44);
  v46(v42, v44);
  sub_1001660BC(v45 & 1, v47, v48);
  (*v62)(v37, v13);
}

void sub_10016B7B4(uint64_t a1)
{
  v57 = type metadata accessor for FMIPItemState();
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v55 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v54 = &v53 - v4;
  v5 = sub_10007EBC0(&qword_1006B4058, &qword_100555D08);
  __chkstk_darwin(v5 - 8);
  v7 = &v53 - v6;
  v71 = type metadata accessor for FindingMode(0);
  v8 = *(v71 - 8);
  __chkstk_darwin(v71);
  v68 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v70 = &v53 - v11;
  v74 = type metadata accessor for UUID();
  v12 = *(v74 - 8);
  __chkstk_darwin(v74);
  v69 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FMIPUnknownItem();
  v58 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v53 = &v53 - v18;
  v19 = *(a1 + 16);
  if (!v19)
  {
LABEL_19:
    if (qword_1006AED70 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_100005B14(v37, qword_1006D4CF0);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "🧭 FMFindingExperiencePresenter: Received item update but current item is missing from the set.", v40, 2u);
    }

    return;
  }

  v20 = v58;
  v21 = a1 + ((*(v58 + 80) + 32) & ~*(v58 + 80));
  v66 = OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_presentedMode;
  swift_beginAccess();
  v22 = *(v20 + 16);
  v20 += 16;
  v73 = (v12 + 8);
  v63 = (v8 + 48);
  v64 = v22;
  v67 = (v20 - 8);
  v65 = v20;
  v23 = *(v20 + 56);
  v60 = v7;
  v61 = v23;
  v59 = v14;
  v62 = v16;
  v22(v16, v21, v14);
  while (1)
  {
    v25 = v69;
    FMIPUnknownItem.identifier.getter();
    v26 = UUID.uuidString.getter();
    v28 = v27;
    v29 = *v73;
    (*v73)(v25, v74);
    sub_100007204(v72 + v66, v7, &qword_1006B4058, &qword_100555D08);
    if ((*v63)(v7, 1, v71) == 1)
    {
      sub_100012DF0(v7, &qword_1006B4058, &qword_100555D08);
LABEL_4:

      v24 = v62;
      goto LABEL_5;
    }

    v30 = v7;
    v31 = v70;
    sub_10016FED8(v30, v70);
    sub_10016FF44(v31, v68, type metadata accessor for FindingMode);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_10016FFAC(v70, type metadata accessor for FindingMode);
        sub_10016FFAC(v68, type metadata accessor for FindingMode);
        v7 = v60;
        goto LABEL_4;
      }
    }

    else if (!EnumCaseMultiPayload)
    {
      sub_10016FFAC(v70, type metadata accessor for FindingMode);
      v29(v68, v74);
      v7 = v60;
      goto LABEL_4;
    }

    v33 = dispatch thunk of FMFindingSession.findingSessionIdentifier.getter();
    v35 = v34;

    sub_10016FFAC(v70, type metadata accessor for FindingMode);
    if (v26 == v33 && v28 == v35)
    {
      break;
    }

    v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v14 = v59;
    v7 = v60;
    v24 = v62;
    if (v36)
    {
      goto LABEL_25;
    }

LABEL_5:
    (*v67)(v24, v14);
    v21 += v61;
    if (!--v19)
    {
      goto LABEL_19;
    }

    v64(v24, v21, v14);
  }

  v14 = v59;
  v24 = v62;
LABEL_25:
  v41 = v53;
  (*(v58 + 32))(v53, v24, v14);
  if (qword_1006AED70 != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  sub_100005B14(v42, qword_1006D4CF0);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&_mh_execute_header, v43, v44, "🧭 FMFindingExperiencePresenter: Received item update and forwarding sound playback state.", v45, 2u);
  }

  v46 = v54;
  FMIPUnknownItem.state.getter();
  v47 = v55;
  static FMIPItemState.soundPlaying.getter();
  sub_1001702F0(&qword_1006C0350, &type metadata accessor for FMIPItemState, &protocol conformance descriptor for FMIPItemState);
  v48 = v57;
  v49 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v50 = *(v56 + 8);
  v50(v47, v48);
  v50(v46, v48);
  sub_1001660BC(v49 & 1, v51, v52);
  (*v67)(v41, v59);
}

void sub_10016BFEC(uint64_t a1)
{
  v73 = type metadata accessor for FMIPItem();
  v62 = *(v73 - 8);
  __chkstk_darwin(v73);
  v72 = v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FMIPItemGroup();
  v55 = *(v4 - 8);
  __chkstk_darwin(v4);
  v53 = v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v52 - v7;
  __chkstk_darwin(v9);
  v54 = v52 - v10;
  v11 = sub_10007EBC0(&qword_1006B4058, &qword_100555D08);
  __chkstk_darwin(v11 - 8);
  v13 = (v52 - v12);
  v14 = OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_presentedMode;
  swift_beginAccess();
  sub_100007204(v1 + v14, v13, &qword_1006B4058, &qword_100555D08);
  v15 = type metadata accessor for FindingMode(0);
  if ((*(*(v15 - 8) + 48))(v13, 1, v15) == 1)
  {
    sub_100012DF0(v13, &qword_1006B4058, &qword_100555D08);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    v52[1] = *v13;
    v65 = dispatch thunk of FMFindingSession.findingSessionIdentifier.getter();
    v66 = v16;
    v61 = *(a1 + 16);
    if (v61)
    {
      v17 = 0;
      v18 = 0;
      v63 = *(v55 + 16);
      v64 = v55 + 16;
      v59 = a1 + ((*(v55 + 80) + 32) & ~*(v55 + 80));
      v70 = (v62 + 8);
      v71 = v62 + 16;
      v60 = (v55 + 8);
      v58 = *(v55 + 72);
      v57 = v4;
      v56 = v8;
      while (1)
      {
        v63(v8, v59 + v58 * v17, v4);
        v19 = FMIPItemGroup.items.getter();
        v20 = *(v19 + 16);
        if (v20)
        {
          v68 = v18;
          v69 = v17;
          v74[0] = _swiftEmptyArrayStorage;
          sub_10016715C(0, v20, 0);
          v21 = v74[0];
          v22 = *(v62 + 80);
          v67 = v19;
          v23 = v19 + ((v22 + 32) & ~v22);
          v24 = *(v62 + 72);
          v25 = *(v62 + 16);
          do
          {
            v26 = v72;
            v27 = v73;
            v25(v72, v23, v73);
            v28 = FMIPItem.identifier.getter();
            v30 = v29;
            (*v70)(v26, v27);
            v74[0] = v21;
            v32 = v21[2];
            v31 = v21[3];
            if (v32 >= v31 >> 1)
            {
              sub_10016715C((v31 > 1), v32 + 1, 1);
              v21 = v74[0];
            }

            v21[2] = v32 + 1;
            v33 = &v21[2 * v32];
            v33[4] = v28;
            v33[5] = v30;
            v23 += v24;
            --v20;
          }

          while (v20);

          v4 = v57;
          v8 = v56;
          v18 = v68;
          v17 = v69;
        }

        else
        {

          v21 = _swiftEmptyArrayStorage;
        }

        v74[0] = v65;
        v74[1] = v66;
        __chkstk_darwin(v34);
        v52[-2] = v74;
        v35 = sub_10008A40C(sub_10011F7D4, &v52[-4], v21);

        if (v35)
        {
          break;
        }

        ++v17;
        (*v60)(v8, v4);
        if (v17 == v61)
        {
          goto LABEL_15;
        }
      }

      v40 = v54;
      (*(v55 + 32))(v54, v8, v4);
      if (qword_1006AED70 != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      sub_100005B14(v41, qword_1006D4CF0);
      v42 = v53;
      v63(v53, v40, v4);
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v74[0] = v46;
        *v45 = 136315138;
        FMIPItemGroup.groupedItemIdentifiers.getter();
        sub_10007EBC0(&qword_1006B4060, &qword_100555D18);
        sub_100004098(&qword_1006B4068, &qword_1006B4060, &qword_100555D18, &protocol conformance descriptor for Set<A>);
        v47 = Set.description.getter();
        v49 = v48;

        v50 = *v60;
        (*v60)(v53, v4);
        v51 = sub_100005B4C(v47, v49, v74);

        *(v45 + 4) = v51;
        _os_log_impl(&_mh_execute_header, v43, v44, "🧭 FMFindingExperiencePresenter: Received item group update and forwarding group status: %s", v45, 0xCu);
        sub_100006060(v46);

        v40 = v54;
      }

      else
      {

        v50 = *v60;
        (*v60)(v42, v4);
      }

      FMIPItemGroup.groupedItemIdentifiers.getter();
      dispatch thunk of FMFindingSession.update(groupedItemIdentifiers:)();

      v50(v40, v4);
    }

    else
    {
LABEL_15:

      if (qword_1006AED70 != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      sub_100005B14(v36, qword_1006D4CF0);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&_mh_execute_header, v37, v38, "🧭 FMFindingExperiencePresenter: Received item group update but current item is missing from the set.", v39, 2u);
      }
    }
  }

  else
  {
    sub_10016FFAC(v13, type metadata accessor for FindingMode);
  }
}

void sub_10016C824(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7, int a8, uint64_t a9, void *a10)
{
  v273 = a8;
  v274._countAndFlagsBits = a7;
  v269 = a6;
  v276 = a3;
  v277 = a2;
  v274._object = a10;
  v275 = a1;
  v244 = type metadata accessor for FMIPProductType();
  v243 = *(v244 - 8);
  __chkstk_darwin(v244);
  v242 = &v234 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10007EBC0(&qword_1006C39A0, &unk_100558B20);
  __chkstk_darwin(v13 - 8);
  v236 = &v234 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v246 = &v234 - v16;
  v17 = type metadata accessor for FMIPItem();
  v270 = *(v17 - 8);
  v271 = v17;
  __chkstk_darwin(v17);
  v245 = &v234 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v251 = type metadata accessor for UUID();
  v249 = *(v251 - 8);
  __chkstk_darwin(v251);
  v241 = &v234 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10007EBC0(&unk_1006B20C0, &unk_100552E10);
  __chkstk_darwin(v20 - 8);
  v248 = &v234 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v254 = &v234 - v23;
  v24 = sub_10007EBC0(&unk_1006B77D0, &unk_100559AB0);
  __chkstk_darwin(v24 - 8);
  v237 = &v234 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v250 = &v234 - v27;
  v255 = type metadata accessor for FMIPUnknownItem();
  v253 = *(v255 - 8);
  __chkstk_darwin(v255);
  v247 = &v234 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10007EBC0(&unk_1006BBCE0, &unk_1005534C0);
  __chkstk_darwin(v29 - 8);
  v252 = &v234 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v256 = &v234 - v32;
  v258 = type metadata accessor for FMIPDevice();
  v257 = *(v258 - 8);
  __chkstk_darwin(v258);
  v260 = &v234 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10007EBC0(&qword_1006B4058, &qword_100555D08);
  __chkstk_darwin(v34 - 8);
  v266 = &v234 - v35;
  v36 = type metadata accessor for FMIPPartType();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v261 = &v234 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v268 = sub_10007EBC0(&qword_1006B41F0, &qword_100555E80);
  __chkstk_darwin(v268);
  v40 = &v234 - v39;
  v41 = sub_10007EBC0(&unk_1006B41F8, &qword_100555E88);
  __chkstk_darwin(v41 - 8);
  v262 = &v234 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v45 = &v234 - v44;
  __chkstk_darwin(v46);
  v48 = &v234 - v47;
  v49 = sub_10007EBC0(&qword_1006B07D0, qword_100552820);
  __chkstk_darwin(v49 - 8);
  v235 = &v234 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v240 = &v234 - v52;
  __chkstk_darwin(v53);
  v55 = &v234 - v54;
  __chkstk_darwin(v56);
  v58 = &v234 - v57;
  v59 = swift_allocObject();
  v60 = a4;
  *(v59 + 16) = a4;
  *(v59 + 24) = a5;
  v61 = a5;
  v62 = v269;
  countAndFlagsBits = v274._countAndFlagsBits;
  *(v59 + 32) = v269;
  *(v59 + 40) = countAndFlagsBits;
  *(v59 + 48) = v273 & 1;
  v265 = a9;
  v272 = v59;
  object = v274._object;
  *(v59 + 56) = a9;
  *(v59 + 64) = object;
  v259 = *&v276[OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_mediator];
  v263 = v60;
  v264 = v61;
  sub_100062900(v60, v61);
  v65 = v62;
  v66 = v271;
  v267 = v65;

  sub_1000E5FF8(v275, v277, v58);

  v269 = v58;
  v67 = v58;
  v68 = v270;
  sub_100007204(v67, v55, &qword_1006B07D0, qword_100552820);
  v69 = *(v68 + 48);
  v239 = v68 + 48;
  v238 = v69;
  if (v69(v55, 1, v66) == 1)
  {
    sub_100012DF0(v55, &qword_1006B07D0, qword_100552820);
    v70 = 1;
  }

  else
  {
    FMIPItem.partType.getter();
    (*(v68 + 8))(v55, v66);
    v70 = 0;
  }

  v71 = *(v37 + 56);
  v71(v48, v70, 1, v36);
  (*(v37 + 104))(v45, enum case for FMIPPartType.case(_:), v36);
  v71(v45, 0, 1, v36);
  v72 = *(v268 + 48);
  sub_100007204(v48, v40, &unk_1006B41F8, &qword_100555E88);
  sub_100007204(v45, &v40[v72], &unk_1006B41F8, &qword_100555E88);
  v73 = *(v37 + 48);
  if (v73(v40, 1, v36) == 1)
  {
    sub_100012DF0(v45, &unk_1006B41F8, &qword_100555E88);
    sub_100012DF0(v48, &unk_1006B41F8, &qword_100555E88);
    v74 = v73(&v40[v72], 1, v36);
    v75 = v277;
    if (v74 == 1)
    {
      sub_100012DF0(v40, &unk_1006B41F8, &qword_100555E88);
      goto LABEL_27;
    }

    goto LABEL_9;
  }

  v76 = v262;
  sub_100007204(v40, v262, &unk_1006B41F8, &qword_100555E88);
  if (v73(&v40[v72], 1, v36) == 1)
  {
    sub_100012DF0(v45, &unk_1006B41F8, &qword_100555E88);
    sub_100012DF0(v48, &unk_1006B41F8, &qword_100555E88);
    (*(v37 + 8))(v76, v36);
    v75 = v277;
LABEL_9:
    sub_100012DF0(v40, &qword_1006B41F0, &qword_100555E80);
    goto LABEL_10;
  }

  v104 = &v40[v72];
  v105 = v261;
  (*(v37 + 32))(v261, v104, v36);
  sub_1001702F0(&qword_1006B4208, &type metadata accessor for FMIPPartType, &protocol conformance descriptor for FMIPPartType);
  v106 = v76;
  v107 = dispatch thunk of static Equatable.== infix(_:_:)();
  v108 = *(v37 + 8);
  v108(v105, v36);
  sub_100012DF0(v45, &unk_1006B41F8, &qword_100555E88);
  sub_100012DF0(v48, &unk_1006B41F8, &qword_100555E88);
  v108(v106, v36);
  sub_100012DF0(v40, &unk_1006B41F8, &qword_100555E88);
  v75 = v277;
  if ((v107 & 1) == 0)
  {
LABEL_10:
    v77 = OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_presentedMode;
    v78 = v276;
    swift_beginAccess();
    v79 = v266;
    sub_100007204(&v78[v77], v266, &qword_1006B4058, &qword_100555D08);
    v80 = type metadata accessor for FindingMode(0);
    if ((*(*(v80 - 8) + 48))(v79, 1, v80) == 1)
    {
      sub_100012DF0(v79, &qword_1006B4058, &qword_100555D08);
      goto LABEL_20;
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_10016FFAC(v79, type metadata accessor for FindingMode);
    if (EnumCaseMultiPayload != 1)
    {
LABEL_20:
      if (qword_1006AED70 != -1)
      {
        swift_once();
      }

      v89 = type metadata accessor for Logger();
      sub_100005B14(v89, qword_1006D4CF0);

      v90 = Logger.logObject.getter();
      v91 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        aBlock = v93;
        *v92 = 136315138;
        *(v92 + 4) = sub_100005B4C(v275, v75, &aBlock);
        _os_log_impl(&_mh_execute_header, v90, v91, "FMFindingExperiencePresenter: Safety warning for beacon %s not required, this is R1 finding.", v92, 0xCu);
        sub_100006060(v93);
      }

      v94 = v267;
      v95 = &v267[OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_delegate];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v96 = *(v95 + 1);
        ObjectType = swift_getObjectType();
        v98 = swift_allocObject();
        v99 = v263;
        v100 = v264;
        v98[2] = v263;
        v98[3] = v100;
        v98[4] = v94;
        v101 = v96[3];
        sub_100062900(v99, v100);
        v102 = v94;
        v287._object = v96;
        v103 = sub_1001700C4;
LABEL_33:
        v101(v102, v274._countAndFlagsBits, v273 & 1, v265, v274._object, v103, v98, ObjectType, v287._object);

        swift_unknownObjectRelease();
        goto LABEL_34;
      }

      goto LABEL_34;
    }

    if (v78[OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_confirmedSafetyWarning] == 1)
    {
      if (qword_1006AED70 != -1)
      {
        swift_once();
      }

      v82 = type metadata accessor for Logger();
      sub_100005B14(v82, qword_1006D4CF0);

      v83 = Logger.logObject.getter();
      v84 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        aBlock = v86;
        *v85 = 136315138;
        *(v85 + 4) = sub_100005B4C(v275, v75, &aBlock);
        _os_log_impl(&_mh_execute_header, v83, v84, "FMFindingExperiencePresenter: Safety warning for beacon %s was already presented, ignoring.", v85, 0xCu);
        sub_100006060(v86);
      }

      v87 = v267;
      v88 = &v267[OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_delegate];
      if (swift_unknownObjectWeakLoadStrong())
      {
        goto LABEL_32;
      }

      goto LABEL_34;
    }

    v117 = v256;
    sub_1000E5794(v275, v75, v256);

    v118 = v257;
    v119 = v258;
    if ((*(v257 + 48))(v117, 1, v258) != 1)
    {
      (*(v118 + 32))(v260, v117, v119);
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v127 = type metadata accessor for Logger();
      sub_100005B14(v127, qword_1006D4630);

      v128 = Logger.logObject.getter();
      v129 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v128, v129))
      {
        v130 = swift_slowAlloc();
        v131 = swift_slowAlloc();
        aBlock = v131;
        *v130 = 136315138;
        *(v130 + 4) = sub_100005B4C(v275, v75, &aBlock);
        _os_log_impl(&_mh_execute_header, v128, v129, "FMFindingExperiencePresenter: Found device matching %s, showing device version of the alert.", v130, 0xCu);
        sub_100006060(v131);
      }

      v132 = *(v118 + 16);
      v133 = v252;
      v132(v252, v260, v119);
      v134 = *(v118 + 56);
      v134(v133, 0, 1, v119);
      sub_100230194(0xD000000000000026, 0x80000001005822D0, v133, &aBlock);
      v274._countAndFlagsBits = sub_1002304E0(aBlock, v279, v280, v281, v282, v283);
      v274._object = v135;

      sub_100012DF0(v133, &unk_1006BBCE0, &unk_1005534C0);
      v136 = v260;
      v132(v133, v260, v119);
      v134(v133, 0, 1, v119);
      sub_100230194(0xD000000000000028, 0x8000000100582300, v133, &aBlock);
      sub_1002304E0(aBlock, v279, v280, v281, v282, v283);

      sub_100012DF0(v133, &unk_1006BBCE0, &unk_1005534C0);
      (*(v118 + 8))(v136, v119);
      goto LABEL_70;
    }

    sub_100012DF0(v117, &unk_1006BBCE0, &unk_1005534C0);
    v120 = v254;
    UUID.init(uuidString:)();
    v121 = v248;
    sub_100007204(v120, v248, &unk_1006B20C0, &unk_100552E10);
    v122 = v249;
    v123 = v251;
    if ((*(v249 + 48))(v121, 1, v251) == 1)
    {

      sub_100012DF0(v120, &unk_1006B20C0, &unk_100552E10);
      v124 = v253;
      v125 = v250;
      v126 = v255;
      v268 = *(v253 + 56);
      (v268)(v250, 1, 1, v255);
    }

    else
    {
      v137 = v241;
      (*(v122 + 32))(v241, v121, v123);

      v138 = FMIPManager.unknownItems.getter();
      __chkstk_darwin(v138);
      v287._object = v137;
      sub_100104884(sub_10017014C, (&v234 - 4), v139);
      v126 = v255;
      v124 = v253;
      if (*(v140 + 16))
      {
        v125 = v250;
        (*(v253 + 16))(v250, v140 + ((*(v253 + 80) + 32) & ~*(v253 + 80)), v255);
        v141 = 0;
      }

      else
      {
        v141 = 1;
        v125 = v250;
      }

      v268 = *(v124 + 56);
      (v268)(v125, v141, 1, v126);
      (*(v122 + 8))(v137, v123);
      sub_100012DF0(v254, &unk_1006B20C0, &unk_100552E10);
    }

    v142 = (*(v124 + 48))(v125, 1, v126);
    v143 = v275;
    if (v142 == 1)
    {
      sub_100012DF0(v125, &unk_1006B77D0, &unk_100559AB0);

      v144 = v240;
      sub_1000E5FF8(v143, v75, v240);

      v145 = v271;
      if (v238(v144, 1, v271) == 1)
      {
        sub_100012DF0(v144, &qword_1006B07D0, qword_100552820);
        if (qword_1006AEBE0 != -1)
        {
          swift_once();
        }

        v146 = type metadata accessor for Logger();
        sub_100005B14(v146, qword_1006D4630);

        v147 = Logger.logObject.getter();
        v148 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v147, v148))
        {
          v149 = swift_slowAlloc();
          v150 = swift_slowAlloc();
          aBlock = v150;
          *v149 = 136315138;
          *(v149 + 4) = sub_100005B4C(v275, v75, &aBlock);
          _os_log_impl(&_mh_execute_header, v147, v148, "FMFindingExperiencePresenter: Unknown entity for beacon  %s, showing generic version of the alert.", v149, 0xCu);
          sub_100006060(v150);
        }

        v151 = objc_opt_self();
        v152 = [v151 mainBundle];
        v287._object = 0x8000000100582120;
        v153._countAndFlagsBits = 0xD00000000000002FLL;
        v153._object = 0x80000001005820F0;
        v284._countAndFlagsBits = 0xD000000000000041;
        v154._countAndFlagsBits = 0;
        v154._object = 0xE000000000000000;
        v274 = NSLocalizedString(_:tableName:bundle:value:comment:)(v153, 0, v152, v154, v284);

        v155 = [v151 mainBundle];
        v287._object = 0x80000001005821B0;
        v156._countAndFlagsBits = 0xD000000000000031;
        v156._object = 0x8000000100582170;
        v285._countAndFlagsBits = 0xD000000000000043;
        v157._countAndFlagsBits = 0;
        v157._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v156, 0, v155, v157, v285);

        goto LABEL_71;
      }

      v171 = v270;
      (*(v270 + 32))(v245, v144, v145);
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v172 = type metadata accessor for Logger();
      sub_100005B14(v172, qword_1006D4630);

      v173 = Logger.logObject.getter();
      v174 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v173, v174))
      {
        v175 = swift_slowAlloc();
        v176 = swift_slowAlloc();
        aBlock = v176;
        *v175 = 136315138;
        *(v175 + 4) = sub_100005B4C(v275, v75, &aBlock);
        _os_log_impl(&_mh_execute_header, v173, v174, "FMFindingExperiencePresenter: Found item matching %s, showing item version of the alert.", v175, 0xCu);
        sub_100006060(v176);
      }

      v177 = *(v171 + 16);
      v178 = v235;
      v179 = v245;
      v177(v235, v245, v145);
      v180 = *(v171 + 56);
      v180(v178, 0, 1, v145);
      v274._countAndFlagsBits = sub_10022E84C(0xD000000000000026, 0x80000001005822D0, v178);
      v274._object = v181;
      sub_100012DF0(v178, &qword_1006B07D0, qword_100552820);
      v177(v178, v179, v145);
      v180(v178, 0, 1, v145);
      sub_10022E84C(0xD000000000000028, 0x8000000100582300, v178);
      sub_100012DF0(v178, &qword_1006B07D0, qword_100552820);
      (*(v171 + 8))(v179, v145);
LABEL_70:
      v75 = v277;
LABEL_71:
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v192 = type metadata accessor for Logger();
      sub_100005B14(v192, qword_1006D4630);

      v193 = Logger.logObject.getter();
      v194 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v193, v194))
      {
        v195 = swift_slowAlloc();
        v196 = swift_slowAlloc();
        aBlock = v196;
        *v195 = 136315138;
        *(v195 + 4) = sub_100005B4C(v275, v75, &aBlock);
        _os_log_impl(&_mh_execute_header, v193, v194, "FMFindingExperiencePresenter: Showing safety warning for beacon %s", v195, 0xCu);
        sub_100006060(v196);
      }

      v197 = objc_opt_self();
      v198 = [v197 mainBundle];
      v199._countAndFlagsBits = 0xD00000000000001FLL;
      v287._object = 0x8000000100582220;
      v199._object = 0x8000000100582200;
      v286._countAndFlagsBits = 0xD000000000000031;
      v200._countAndFlagsBits = 0;
      v200._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v199, 0, v198, v200, v286);

      v201 = [v197 mainBundle];
      v202._countAndFlagsBits = 0xD000000000000021;
      v287._object = 0x8000000100582290;
      v202._object = 0x8000000100582260;
      v287._countAndFlagsBits = 0xD000000000000033;
      v203._countAndFlagsBits = 0;
      v203._object = 0xE000000000000000;
      v277 = NSLocalizedString(_:tableName:bundle:value:comment:)(v202, 0, v201, v203, v287)._countAndFlagsBits;

      v204 = String._bridgeToObjectiveC()();

      v205 = String._bridgeToObjectiveC()();

      v206 = [objc_opt_self() alertControllerWithTitle:v204 message:v205 preferredStyle:1];

      v207 = swift_allocObject();
      v208 = v272;
      v207[2] = sub_1001700B0;
      v207[3] = v208;

      v209 = String._bridgeToObjectiveC()();

      v282 = sub_1001700C8;
      v283 = v207;
      aBlock = _NSConcreteStackBlock;
      v279 = 1107296256;
      v280 = sub_100017328;
      v281 = &unk_10062A1A8;
      v210 = _Block_copy(&aBlock);

      v211 = objc_opt_self();
      v212 = [v211 actionWithTitle:v209 style:0 handler:v210];
      _Block_release(v210);

      v213 = swift_allocObject();
      v214 = v276;
      v213[2] = v276;
      v213[3] = sub_1001700B0;
      v213[4] = v208;

      v215 = v214;
      v216 = String._bridgeToObjectiveC()();

      v282 = sub_1001700D0;
      v283 = v213;
      aBlock = _NSConcreteStackBlock;
      v279 = 1107296256;
      v280 = sub_100017328;
      v281 = &unk_10062A1F8;
      v217 = _Block_copy(&aBlock);

      v218 = [v211 actionWithTitle:v216 style:0 handler:v217];
      _Block_release(v217);

      [v206 addAction:v212];
      [v206 addAction:v218];
      v219 = *&v215[OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_presentedViewController];
      if (v219)
      {
        [v219 presentViewController:v206 animated:1 completion:0];
      }

      goto LABEL_34;
    }

    v158 = v247;
    (*(v124 + 32))(v247, v125, v126);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v159 = type metadata accessor for Logger();
    sub_100005B14(v159, qword_1006D4630);

    v160 = Logger.logObject.getter();
    v161 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v160, v161))
    {
      v162 = swift_slowAlloc();
      v163 = swift_slowAlloc();
      aBlock = v163;
      *v162 = 136315138;
      *(v162 + 4) = sub_100005B4C(v275, v75, &aBlock);
      _os_log_impl(&_mh_execute_header, v160, v161, "FMFindingExperiencePresenter: Found unknownItem matching %s", v162, 0xCu);
      sub_100006060(v163);
      v124 = v253;
      v126 = v255;
    }

    v164 = v242;
    FMIPUnknownItem.productType.getter();
    v165 = v243;
    v166 = v244;
    if ((*(v243 + 88))(v164, v244) == enum case for FMIPProductType.hawkeye(_:))
    {
      (*(v165 + 96))(v164, v166);
      v167 = v246;
      sub_1001700DC(v164, v246);
      v168 = v236;
      sub_100007204(v167, v236, &qword_1006C39A0, &unk_100558B20);
      v169 = type metadata accessor for FMIPHawkeyeProductInformation();
      v170 = *(v169 - 8);
      if ((*(v170 + 48))(v168, 1, v169) == 1)
      {
        sub_100012DF0(v168, &qword_1006C39A0, &unk_100558B20);
LABEL_80:
        if (qword_1006AED70 != -1)
        {
          swift_once();
        }

        sub_100005B14(v159, qword_1006D4CF0);

        v221 = Logger.logObject.getter();
        v222 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v221, v222))
        {
          v223 = swift_slowAlloc();
          v224 = swift_slowAlloc();
          aBlock = v224;
          *v223 = 136315138;
          *(v223 + 4) = sub_100005B4C(v275, v75, &aBlock);
          sub_100006060(v224);
        }

        v225 = v267;
        v226 = &v267[OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_delegate];
        if (swift_unknownObjectWeakLoadStrong())
        {
          v227 = *(v226 + 1);
          v228 = swift_getObjectType();
          v229 = swift_allocObject();
          v230 = v263;
          v231 = v264;
          v229[2] = v263;
          v229[3] = v231;
          v229[4] = v225;
          v232 = *(v227 + 24);
          sub_100062900(v230, v231);
          v233 = v225;
          v232(v233, v274._countAndFlagsBits, v273 & 1, v265, v274._object, sub_10017047C, v229, v228, v227);
          v124 = v253;

          swift_unknownObjectRelease();
        }

        sub_100012DF0(v246, &qword_1006C39A0, &unk_100558B20);
        (*(v124 + 8))(v247, v126);
        goto LABEL_34;
      }

      v220 = FMIPHawkeyeProductInformation.requiresAudioSafetyAlert.getter();
      (*(v170 + 8))(v168, v169);
      if ((v220 & 1) == 0)
      {
        goto LABEL_80;
      }

      sub_100012DF0(v246, &qword_1006C39A0, &unk_100558B20);
    }

    else
    {
      (*(v165 + 8))(v164, v166);
    }

    v182 = Logger.logObject.getter();
    v183 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v182, v183))
    {
      v184 = swift_slowAlloc();
      v185 = swift_slowAlloc();
      aBlock = v185;
      *v184 = 136315138;
      *(v184 + 4) = sub_100005B4C(v275, v75, &aBlock);
      _os_log_impl(&_mh_execute_header, v182, v183, "FMFindingExperiencePresenter: Found unknownItem matching %s, showing unknownItem version of the alert.", v184, 0xCu);
      sub_100006060(v185);
    }

    v186 = *(v124 + 16);
    v187 = v237;
    v188 = v124;
    v189 = v255;
    v186(v237, v158, v255);
    v190 = v268;
    (v268)(v187, 0, 1, v189);
    v274._countAndFlagsBits = sub_10022E3F4(0xD000000000000026, 0x80000001005822D0, v187);
    v274._object = v191;
    sub_100012DF0(v187, &unk_1006B77D0, &unk_100559AB0);
    v186(v187, v158, v189);
    v190(v187, 0, 1, v189);
    sub_10022E3F4(0xD000000000000028, 0x8000000100582300, v187);
    sub_100012DF0(v187, &unk_1006B77D0, &unk_100559AB0);
    (*(v188 + 8))(v158, v189);
    goto LABEL_70;
  }

LABEL_27:
  if (qword_1006AED70 != -1)
  {
    swift_once();
  }

  v109 = type metadata accessor for Logger();
  sub_100005B14(v109, qword_1006D4CF0);

  v110 = Logger.logObject.getter();
  v111 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v110, v111))
  {
    v112 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    aBlock = v113;
    *v112 = 136315138;
    *(v112 + 4) = sub_100005B4C(v275, v75, &aBlock);
    _os_log_impl(&_mh_execute_header, v110, v111, "FMFindingExperiencePresenter: Safety warning for beacon %s not required, this part type does not require a warning.", v112, 0xCu);
    sub_100006060(v113);
  }

  v87 = v267;
  v88 = &v267[OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
LABEL_32:
    v114 = *(v88 + 1);
    ObjectType = swift_getObjectType();
    v98 = swift_allocObject();
    v115 = v263;
    v116 = v264;
    v98[2] = v263;
    v98[3] = v116;
    v98[4] = v87;
    v101 = v114[3];
    sub_100062900(v115, v116);
    v102 = v87;
    v287._object = v114;
    v103 = sub_10017047C;
    goto LABEL_33;
  }

LABEL_34:
  sub_100012DF0(v269, &qword_1006B07D0, qword_100552820);
}

id sub_10016EFF0(id result, const char *a2)
{
  if (result)
  {
    if (qword_1006AED70 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100005B14(v3, qword_1006D4CF0);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, a2, v6, 2u);
    }

    return sub_100163594();
  }

  return result;
}

void sub_10016F0FC()
{
  v1 = v0;
  v2 = type metadata accessor for FMFConfigValue();
  v57 = *(v2 - 8);
  v58 = v2;
  __chkstk_darwin(v2);
  v56 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10007EBC0(&unk_1006B0000, &unk_100552AA0);
  __chkstk_darwin(v4 - 8);
  v60 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v54 - v7;
  v9 = type metadata accessor for Date();
  v61 = *(v9 - 8);
  v62 = v9;
  __chkstk_darwin(v9);
  v55 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v59 = &v54 - v12;
  v13 = type metadata accessor for FMFindingProductType();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10007EBC0(&qword_1006B4058, &qword_100555D08);
  __chkstk_darwin(v17 - 8);
  v19 = (&v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v20);
  v22 = &v54 - v21;
  v23 = OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_presentedMode;
  swift_beginAccess();
  sub_100007204(v1 + v23, v22, &qword_1006B4058, &qword_100555D08);
  v24 = type metadata accessor for FindingMode(0);
  v25 = &unk_1006B3000;
  if ((*(*(v24 - 8) + 48))(v22, 1, v24) == 1)
  {
    goto LABEL_13;
  }

  sub_100007204(v22, v19, &qword_1006B4058, &qword_100555D08);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    if (EnumCaseMultiPayload != 3)
    {
      sub_10016FFAC(v19, type metadata accessor for FindingMode);
      goto LABEL_13;
    }
  }

  dispatch thunk of FMFindingSession.currentFindable.getter();
  sub_1000244BC(v64, *&v64[3]);
  dispatch thunk of FMFindable.findingProductType.getter();
  v27 = FMFindingProductType.isPerson.getter();
  (*(v14 + 8))(v16, v13);
  sub_100006060(v64);
  if ((v27 & 1) == 0)
  {

    v25 = &unk_1006B3000;
LABEL_13:
    sub_100012DF0(v22, &qword_1006B4058, &qword_100555D08);
    v35 = v60;
    v28 = v61;
    v36 = v62;
LABEL_14:
    (*(v28 + 56))(v35, 1, 1, v36);
    v37 = v25[486];
    swift_beginAccess();
    sub_1000BBF40(v35, v1 + v37, &unk_1006B0000, &unk_100552AA0);
    swift_endAccess();
    return;
  }

  v28 = v61;
  sub_100012DF0(v22, &qword_1006B4058, &qword_100555D08);
  v29 = OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_backgroundedDate;
  swift_beginAccess();
  sub_100007204(v1 + v29, v8, &unk_1006B0000, &unk_100552AA0);
  v30 = v62;
  if ((*(v28 + 48))(v8, 1) != 1)
  {
    (*(v28 + 32))(v59, v8, v30);
    v38 = v55;
    Date.init()();
    Date.timeIntervalSince(_:)();
    v40 = v39;
    v41 = *(v28 + 8);
    v41(v38, v30);
    v43 = v56;
    v42 = v57;
    v44 = v58;
    (*(v57 + 104))(v56, enum case for FMFConfigValue.peopleFindingBackgroundedTimeout(_:), v58);
    v63 = 0x405E000000000000;
    FMFWaldoGlobalConfig<A>(_:fallback:)();
    (*(v42 + 8))(v43, v44);
    if (v64[0] < v40 && (sub_1001607EC(), v45))
    {

      if (qword_1006AED70 != -1)
      {
        swift_once();
      }

      v46 = type metadata accessor for Logger();
      sub_100005B14(v46, qword_1006D4CF0);
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 134217984;
        *(v49 + 4) = v40;

        _os_log_impl(&_mh_execute_header, v47, v48, "🧭 FMFindingExperiencePresenter: Dismissing Finding View Controller because you were backgrounded for too long. Backgrounded time: %f", v49, 0xCu);
      }

      else
      {
      }

      v35 = v60;
      sub_100163594();
    }

    else
    {
      if (qword_1006AED70 != -1)
      {
        swift_once();
      }

      v50 = type metadata accessor for Logger();
      sub_100005B14(v50, qword_1006D4CF0);
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 134217984;
        *(v53 + 4) = v40;

        _os_log_impl(&_mh_execute_header, v51, v52, "🧭 FMFindingExperiencePresenter: Reentering foreground but not dismissing Finding VC. Backgrounded time: %f", v53, 0xCu);
      }

      else
      {
      }

      v35 = v60;
    }

    v41(v59, v30);
    v36 = v30;
    v25 = &unk_1006B3000;
    goto LABEL_14;
  }

  sub_100012DF0(v8, &unk_1006B0000, &unk_100552AA0);
  if (qword_1006AED70 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  sub_100005B14(v31, qword_1006D4CF0);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;

    _os_log_impl(&_mh_execute_header, v32, v33, "🧭 FMFindingExperiencePresenter: Entering foreground. Not background date.", v34, 2u);
  }

  else
  {
  }
}

uint64_t sub_10016F9C8()
{
  v1 = v0;
  v2 = sub_10007EBC0(&unk_1006B0000, &unk_100552AA0);
  __chkstk_darwin(v2 - 8);
  v4 = v30 - v3;
  v5 = type metadata accessor for FMFindingProductType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10007EBC0(&qword_1006B4058, &qword_100555D08);
  __chkstk_darwin(v9 - 8);
  v11 = (v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v14 = v30 - v13;
  v15 = OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_presentedMode;
  swift_beginAccess();
  sub_100007204(v1 + v15, v14, &qword_1006B4058, &qword_100555D08);
  v16 = type metadata accessor for FindingMode(0);
  if ((*(*(v16 - 8) + 48))(v14, 1, v16) == 1)
  {
    goto LABEL_12;
  }

  sub_100007204(v14, v11, &qword_1006B4058, &qword_100555D08);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    if (EnumCaseMultiPayload != 3)
    {
      sub_10016FFAC(v11, type metadata accessor for FindingMode);
      goto LABEL_12;
    }
  }

  dispatch thunk of FMFindingSession.currentFindable.getter();
  sub_1000244BC(v30, v30[3]);
  dispatch thunk of FMFindable.findingProductType.getter();
  v18 = FMFindingProductType.isPerson.getter();
  (*(v6 + 8))(v8, v5);
  sub_100006060(v30);
  if (v18)
  {
    sub_100012DF0(v14, &qword_1006B4058, &qword_100555D08);
    if (qword_1006AED70 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100005B14(v19, qword_1006D4CF0);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;

      _os_log_impl(&_mh_execute_header, v20, v21, "🧭 FMFindingExperiencePresenter: Entering background. Noting background time.", v22, 2u);
    }

    else
    {
    }

    Date.init()();
    v28 = type metadata accessor for Date();
    (*(*(v28 - 8) + 56))(v4, 0, 1, v28);
    v29 = OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_backgroundedDate;
    swift_beginAccess();
    sub_1000BBF40(v4, v1 + v29, &unk_1006B0000, &unk_100552AA0);
    return swift_endAccess();
  }

LABEL_12:
  if (qword_1006AED70 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_100005B14(v23, qword_1006D4CF0);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "🧭 FMFindingExperiencePresenter: Dismissing Finding View Controller for Item/Devices when entering background", v26, 2u);
  }

  sub_100163594();
  return sub_100012DF0(v14, &qword_1006B4058, &qword_100555D08);
}

uint64_t sub_10016FED8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FindingMode(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10016FF44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10016FFAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10017005C()
{
  result = qword_1006B41E0;
  if (!qword_1006B41E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B41E0);
  }

  return result;
}

uint64_t sub_1001700DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006C39A0, &unk_100558B20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10017016C()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001701B4(char a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 16);
  if (v5)
  {
    v5(a1 & 1, a2, a3);
  }

  return sub_1001660BC(a1 & 1, a2, a3);
}

uint64_t sub_100170204()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100170264(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, char *))
{
  v4 = *(type metadata accessor for FindingMode(0) - 8);
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2 + ((*(v4 + 80) + 48) & ~*(v4 + 80));

  return a2(a1, v5, v6, v7, v8, v9);
}

uint64_t sub_1001702F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100170338()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000E3478;

  return sub_1001615AC();
}

unint64_t sub_1001703F8()
{
  result = qword_1006B4240;
  if (!qword_1006B4240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B4240);
  }

  return result;
}

double sub_100170480@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, _OWORD *a4@<X8>, void *a5@<X3>)
{
  sub_100173538(a1 & 0x1010101010101, a2, a3 & 1, &v19, a5);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100005B14(v6, qword_1006D4630);
  sub_100174444(&v19, &v17);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  sub_10008ED7C(&v19);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v9 = 136315394;
    *(v9 + 4) = sub_100005B4C(0xD000000000000011, 0x80000001005823C0, &v16);
    *(v9 + 12) = 2080;
    v17 = v19;
    v18[0] = v20[0];
    *(v18 + 9) = *(v20 + 9);
    sub_100174444(&v19, v15);
    v10 = String.init<A>(describing:)();
    v12 = sub_100005B4C(v10, v11, &v16);

    *(v9 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v7, v8, "FMStewieViewModelState: %s - %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  v13 = v20[0];
  *a4 = v19;
  a4[1] = v13;
  result = *(v20 + 9);
  *(a4 + 25) = *(v20 + 9);
  return result;
}

double sub_10017067C()
{
  v1 = v0;
  My = type metadata accessor for Feature.FindMy();
  v10[3] = My;
  v10[4] = sub_100177628(&qword_1006B4220, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v3 = sub_100008FC0(v10);
  (*(*(My - 8) + 104))(v3, enum case for Feature.FindMy.fmNiftyCurve(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100006060(v10);
  if (My)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100005B14(v5, qword_1006D4630);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10[0] = v9;
      *v8 = 136315394;
      *(v8 + 4) = sub_100005B4C(0x5574736575716572, 0xEF29286574616470, v10);
      *(v8 + 12) = 1024;
      *(v8 + 14) = *(v1 + 48);

      _os_log_impl(&_mh_execute_header, v6, v7, "FMStewieViewModel: %s - hasActiveSubs: %{BOOL}d", v8, 0x12u);
      sub_100006060(v9);

      if (*(v1 + 48))
      {
        return sub_10017173C();
      }
    }

    else
    {

      if (*(v1 + 48))
      {
        return sub_10017173C();
      }
    }

    sub_100172114();
    return sub_10017173C();
  }

  return result;
}

uint64_t sub_1001708B8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

double sub_100170934(void *a1)
{
  v2 = v1;
  My = type metadata accessor for Feature.FindMy();
  *(&v19 + 1) = My;
  v20 = sub_100177628(&qword_1006B4220, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v5 = sub_100008FC0(&v18);
  (*(*(My - 8) + 104))(v5, enum case for Feature.FindMy.fmNiftyCurve(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100006060(&v18);
  if (My)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100005B14(v7, qword_1006D4630);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *&v18 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_100005B4C(0xD00000000000003BLL, 0x8000000100582620, &v18);
      _os_log_impl(&_mh_execute_header, v8, v9, "FMStewieViewModel: Will %s", v10, 0xCu);
      sub_100006060(v11);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    *&v16[7] = *(&v19 + 1);
    *v16 = *(&v19 + 1);
    v17 = 0;
    *(&v18 + 1) = 5;
    LOBYTE(v19) = 0;
    *(&v19 + 1) = *&v16[7];
    swift_getKeyPath();
    swift_getKeyPath();
    v15[2] = v18;
    v15[3] = v19;

    sub_10008EDD0(&v18, v15);
    static Published.subscript.setter();
    sub_100170F90();
    sub_10008ED28(&v18);
    type metadata accessor for FMFUpdateStewieLocationAction();
    swift_allocObject();
    v12 = FMFUpdateStewieLocationAction.init(publishReason:)();
    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    *(v13 + 24) = v2;

    v14 = a1;
    sub_1000FB600(v12, sub_100177724, v13);
  }

  return result;
}

uint64_t sub_100170C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10007EBC0(&unk_1006BEF30, &qword_100554550);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100007204(a3, v25 - v10, &unk_1006BEF30, &qword_100554550);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100012DF0(v11, &unk_1006BEF30, &qword_100554550);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_100012DF0(a3, &unk_1006BEF30, &qword_100554550);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100012DF0(a3, &unk_1006BEF30, &qword_100554550);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_100170F90()
{
  My = type metadata accessor for Feature.FindMy();
  v11 = My;
  v12 = sub_100177628(&qword_1006B4220, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v1 = sub_100008FC0(v10);
  (*(*(My - 8) + 104))(v1, enum case for Feature.FindMy.fmNiftyCurve(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100006060(v10);
  if (My)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100005B14(v2, qword_1006D4630);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v5 = 136315394;
      *(v5 + 4) = sub_100005B4C(0x6574617473, 0xE500000000000000, &v9);
      *(v5 + 12) = 2080;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v6 = String.init<A>(describing:)();
      v8 = sub_100005B4C(v6, v7, &v9);

      *(v5 + 14) = v8;
      _os_log_impl(&_mh_execute_header, v3, v4, "FMStewieViewModel: %s - %s", v5, 0x16u);
      swift_arrayDestroy();
    }
  }
}

uint64_t *sub_100171218(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10007EBC0(&unk_1006BEF30, &qword_100554550);
  __chkstk_darwin(v4 - 8);
  v6 = &v20[-1] - v5;
  type metadata accessor for FMItemAger();
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  swift_allocObject();
  *(v1 + 40) = sub_10002BE70();
  *(v1 + 48) = 0;
  *(v1 + 16) = a1;
  v25 = 1;
  swift_beginAccess();
  v20[1] = 0;
  LODWORD(v20[0]) = 0;
  *(v20 + 3) = 0;
  v21 = v25;
  v22 = 0;

  Published.init(initialValue:)();
  swift_endAccess();
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v2;

  sub_10041D3F4(0, 0, v6, &unk_100556330, v8);

  sub_100012DF0(v6, &unk_1006BEF30, &qword_100554550);
  My = type metadata accessor for Feature.FindMy();
  v22 = My;
  v23 = sub_100177628(&qword_1006B4220, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v10 = sub_100008FC0(v20);
  (*(*(My - 8) + 104))(v10, enum case for Feature.FindMy.fmNiftyCurve(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100006060(v20);
  if (My)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100005B14(v11, qword_1006D4630);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v20[0] = swift_slowAlloc();
      *v14 = 136315394;
      *(v14 + 4) = sub_100005B4C(0x64656D2874696E69, 0xEF293A726F746169, v20);
      *(v14 + 12) = 2080;
      v24 = v2;

      v15 = String.init<A>(describing:)();
      v17 = sub_100005B4C(v15, v16, v20);

      *(v14 + 14) = v17;
      _os_log_impl(&_mh_execute_header, v12, v13, "FMStewieViewModel: %s - %s", v14, 0x16u);
      swift_arrayDestroy();
    }
  }

  return v2;
}

uint64_t sub_100171644()
{
  type metadata accessor for MainActor();
  *(v0 + 24) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001716D8, v2, v1);
}

uint64_t sub_1001716D8()
{

  v1.n128_f64[0] = sub_10017067C();
  v2 = *(v0 + 8);

  return v2(v1);
}

double sub_10017173C()
{
  v1 = v0;
  My = type metadata accessor for Feature.FindMy();
  *(&v21 + 1) = My;
  v22 = sub_100177628(&qword_1006B4220, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v3 = sub_100008FC0(&v20);
  (*(*(My - 8) + 104))(v3, enum case for Feature.FindMy.fmNiftyCurve(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100006060(&v20);
  if (My)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100005B14(v5, qword_1006D4630);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *&v20 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_100005B4C(0xD00000000000002ALL, 0x80000001005824E0, &v20);
      _os_log_impl(&_mh_execute_header, v6, v7, "FMStewieViewModel: Will %s", v8, 0xCu);
      sub_100006060(v9);
    }

    sub_10007EBC0(&unk_1006B40B0, &unk_100555D60);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_100552220;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v20 = v18;
    v21 = v19;
    *(v10 + 56) = &type metadata for FMStewieViewModelState;
    *(v10 + 64) = &off_10062A548;
    v11 = swift_allocObject();
    *(v10 + 32) = v11;
    v12 = v21;
    *(v11 + 16) = v20;
    *(v11 + 32) = v12;
    sub_100036B80(v10, v13, v14);

    v15 = *(*(v1 + 16) + 16);
    v16 = swift_allocObject();
    swift_weakInit();
    v17 = v15;
    sub_100423B78(v17, v16);
  }

  return result;
}

uint64_t sub_100171A2C(void *a1, uint64_t a2)
{
  v3 = sub_10007EBC0(&unk_1006BEF30, &qword_100554550);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = type metadata accessor for TaskPriority();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v7;
    v9[5] = a1;
    v10 = a1;

    sub_10041D3F4(0, 0, v5, &unk_1005611F0, v9);

    return sub_100012DF0(v5, &unk_1006BEF30, &qword_100554550);
  }

  return result;
}

uint64_t sub_100171B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_10007EBC0(&unk_1006BEF30, &qword_100554550);
  v5[4] = swift_task_alloc();

  return _swift_task_switch(sub_100171C2C, 0, 0);
}

uint64_t sub_100171C2C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = v2;

  v6 = sub_100175C50(v5, v2);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v1, 1, 1, v13);
  type metadata accessor for MainActor();
  v14 = v12;

  v15 = static MainActor.shared.getter();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = &protocol witness table for MainActor;
  *(v16 + 32) = v3;
  *(v16 + 40) = v6 & 1;
  v17 = vdupq_n_s64(v6);
  *v17.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v17, xmmword_100555F90), vshlq_u64(v17, xmmword_100555F80))), 0x1000100010001);
  *(v16 + 41) = vuzp1_s8(*v17.i8, *v17.i8).u32[0];
  *(v16 + 45) = BYTE5(v6) & 1;
  *(v16 + 46) = BYTE6(v6) & 1;
  *(v16 + 48) = v8;
  *(v16 + 56) = v10 & 1;
  *(v16 + 64) = v12;
  sub_100170C90(0, 0, v1, &unk_1005562C0, v16);

  v18 = v0[1];

  return v18();
}

uint64_t sub_100171DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 112) = a4;
  *(v8 + 16) = a5;
  *(v8 + 24) = a6;
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  type metadata accessor for MainActor();
  *(v8 + 120) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100171E94, v10, v9);
}

uint64_t sub_100171E94()
{
  v13 = v0;

  swift_getKeyPath();
  swift_getKeyPath();
  v1 = *(v0 + 32);
  *(v0 + 48) = *(v0 + 16);
  *(v0 + 64) = v1;

  sub_10008EDD0(v0 + 16, v0 + 80);
  static Published.subscript.setter();
  sub_100170F90();
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005B14(v2, qword_1006D4630);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v5 = 136315394;
    *(v5 + 4) = sub_100005B4C(0xD00000000000002ALL, 0x80000001005824E0, &v12);
    *(v5 + 12) = 2080;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v6 = *(v0 + 64);
    *(v0 + 80) = *(v0 + 48);
    *(v0 + 96) = v6;
    v7 = String.init<A>(describing:)();
    v9 = sub_100005B4C(v7, v8, &v12);

    *(v5 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "FMStewieViewModel: Did %s: %s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v10 = *(v0 + 8);

  return v10();
}

void sub_100172114()
{
  v1 = v0;
  My = type metadata accessor for Feature.FindMy();
  v15[3] = My;
  v15[4] = sub_100177628(&qword_1006B4220, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v3 = sub_100008FC0(v15);
  (*(*(My - 8) + 104))(v3, enum case for Feature.FindMy.fmNiftyCurve(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100006060(v15);
  if (My)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100005B14(v4, qword_1006D4630);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15[0] = v8;
      *v7 = 136315394;
      *(v7 + 4) = sub_100005B4C(0x6470557472617473, 0xEF2928676E697461, v15);
      *(v7 + 12) = 1024;
      *(v7 + 14) = *(v1 + 48);

      _os_log_impl(&_mh_execute_header, v5, v6, "FMStewieViewModel: %s - hasActiveSubs: %{BOOL}d", v7, 0x12u);
      sub_100006060(v8);

      if (*(v1 + 48))
      {
        return;
      }
    }

    else
    {

      if (*(v1 + 48))
      {
        return;
      }
    }

    *(v1 + 48) = 1;
    v9 = *(v1 + 16);
    v10 = *(v9 + 48);
    type metadata accessor for FMPeopleSubscription(0);
    v11 = swift_allocObject();
    *(v11 + OBJC_IVAR____TtC6FindMy20FMPeopleSubscription_subscriber + 8) = 0;
    swift_unknownObjectWeakInit();

    UUID.init()();
    *(v11 + OBJC_IVAR____TtC6FindMy20FMPeopleSubscription_subscriber + 8) = &off_10062A570;
    swift_unknownObjectWeakAssign();
    v12 = *(v10 + 32);

    os_unfair_lock_lock((v12 + 24));
    sub_10000E7C0((v12 + 16));
    os_unfair_lock_unlock((v12 + 24));

    *(v1 + 24) = v11;

    v13 = *(v9 + 16);
    v14 = sub_1003CC214(v1, v13);

    *(v1 + 32) = v14;

    *(*(v1 + 40) + 24) = &off_10062A560;
    swift_unknownObjectWeakAssign();
  }
}

double sub_100172448(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_10007EBC0(&unk_1006BEF30, &qword_100554550);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  type metadata accessor for MainActor();
  swift_errorRetain();
  v11 = a3;

  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = a2;
  v13[5] = v11;
  v13[6] = a4;
  sub_100170C90(0, 0, v9, &unk_100556340, v13);

  return result;
}

uint64_t sub_100172594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[12] = a4;
  type metadata accessor for MainActor();
  v6[15] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100172630, v8, v7);
}

uint64_t sub_100172630()
{
  v44 = v0;

  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100005B14(v1, qword_1006D4630);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[12];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v43 = v7;
    *v5 = 136315394;
    *(v5 + 4) = sub_100005B4C(0xD00000000000003BLL, 0x8000000100582620, &v43);
    *(v5 + 12) = 2112;
    if (v4)
    {
      swift_errorRetain();
      v8 = _swift_stdlib_bridgeErrorToNSError();
      v9 = v8;
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    *(v5 + 14) = v8;
    *v6 = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "FMStewieViewModel: Did %s, error: %@", v5, 0x16u);
    sub_100012DF0(v6, &unk_1006AF760, &qword_100552DB0);

    sub_100006060(v7);
  }

  if (v0[12])
  {
    v10 = objc_opt_self();
    swift_errorRetain();
    v11 = [v10 mainBundle];
    v46._object = 0x800000010057FD20;
    v12._countAndFlagsBits = 0xD000000000000022;
    v12._object = 0x8000000100582660;
    v13.value._object = 0x800000010057FD00;
    v46._countAndFlagsBits = 0xD000000000000017;
    v13.value._countAndFlagsBits = 0xD000000000000012;
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v13, v11, v14, v46);

    v15 = [objc_opt_self() sharedInstance];
    v16 = [v15 isInternalBuild];

    v17 = [v10 mainBundle];
    v42 = 0x800000010057FD20;
    if (v16)
    {
      v18._countAndFlagsBits = 0xD00000000000002DLL;
      v18._object = 0x80000001005826F0;
      v19.value._object = 0x800000010057FD00;
      v20 = 0xD000000000000017;
      v19.value._countAndFlagsBits = 0xD000000000000012;
      v21._countAndFlagsBits = 0;
      v21._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v18, v19, v17, v21, *(&v42 - 1));

      sub_10007EBC0(&unk_1006B20B0, &unk_1005523B0);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_100552220;
      swift_getErrorValue();
      v23 = sub_100271D20(v0[9], v0[10]);
      *(v22 + 56) = &type metadata for Int;
      *(v22 + 64) = &protocol witness table for Int;
      *(v22 + 32) = v23;
      String.init(format:_:)();
    }

    else
    {
      v24._countAndFlagsBits = 0xD00000000000002CLL;
      v24._object = 0x8000000100582690;
      v25.value._object = 0x800000010057FD00;
      v26 = 0xD000000000000017;
      v25.value._countAndFlagsBits = 0xD000000000000012;
      v27._countAndFlagsBits = 0;
      v27._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v24, v25, v17, v27, *(&v42 - 1));
    }

    v28 = v0[13];
    v29 = [v10 mainBundle];
    v47._object = 0x800000010057FD20;
    v30._countAndFlagsBits = 0xD000000000000023;
    v30._object = 0x80000001005826C0;
    v31.value._object = 0x800000010057FD00;
    v47._countAndFlagsBits = 0xD000000000000017;
    v31.value._countAndFlagsBits = 0xD000000000000012;
    v32._countAndFlagsBits = 0;
    v32._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v30, v31, v29, v32, v47);

    v33 = String._bridgeToObjectiveC()();

    v0[6] = State.rawValue.getter;
    v0[7] = 0;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_100017328;
    v0[5] = &unk_10062A8B0;
    v34 = _Block_copy(v0 + 2);

    v35 = [objc_opt_self() actionWithTitle:v33 style:0 handler:v34];
    _Block_release(v34);

    v36 = String._bridgeToObjectiveC()();

    v37 = String._bridgeToObjectiveC()();

    v38 = [objc_opt_self() alertControllerWithTitle:v36 message:v37 preferredStyle:1];

    [v38 addAction:v35];
    [v28 presentViewController:v38 animated:1 completion:0];
  }

  v39.n128_f64[0] = sub_10017067C();
  v40 = v0[1];

  return v40(v39);
}

char *sub_100172C28()
{
  v1 = v0;
  v2 = sub_10007EBC0(&unk_1006BEF30, &qword_100554550);
  __chkstk_darwin(v2 - 8);
  v4 = &v21[-1] - v3;
  My = type metadata accessor for Feature.FindMy();
  v21[3] = My;
  v21[4] = sub_100177628(&qword_1006B4220, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v6 = sub_100008FC0(v21);
  (*(*(My - 8) + 104))(v6, enum case for Feature.FindMy.fmNiftyCurve(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100006060(v21);
  if (My)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100005B14(v7, qword_1006D4630);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v21[0] = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_100005B4C(0x74696E696564, 0xE600000000000000, v21);
      _os_log_impl(&_mh_execute_header, v8, v9, "FMStewieViewModel: Will %s", v10, 0xCu);
      sub_100006060(v11);
    }

    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
    v14 = *(v1 + 3);
    v13 = *(v1 + 4);
    v15 = *(v1 + 2);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = v13;
    v16[5] = v15;
    v16[6] = v14;

    sub_10041D3F4(0, 0, v4, &unk_100556350, v16);

    sub_100012DF0(v4, &unk_1006BEF30, &qword_100554550);
  }

  v17 = OBJC_IVAR____TtC6FindMy17FMStewieViewModel__state;
  v18 = sub_10007EBC0(&qword_1006AF9A8, &unk_1005525C0);
  (*(*(v18 - 8) + 8))(&v1[v17], v18);
  return v1;
}

uint64_t sub_100172F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return _swift_task_switch(sub_100172FAC, 0, 0);
}

uint64_t sub_100172FAC()
{
  v17 = v0;
  v1 = v0[5];
  if (!v1)
  {
    if (!v0[7])
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v2 = *(v0[6] + 16);
  v3 = OBJC_IVAR____TtC6FindMy19FMConditionProvider_subscriptions;
  swift_beginAccess();

  v5 = sub_1003CD738((v2 + v3), v1, v4);

  v6 = *(v2 + v3);
  if (v6 >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
    if (v7 >= v5)
    {
LABEL_4:
      sub_1003CDB08(v5, v7);
      swift_endAccess();
      if (!v0[7])
      {
LABEL_8:
        if (qword_1006AEBE0 == -1)
        {
          goto LABEL_9;
        }

        goto LABEL_16;
      }

LABEL_7:
      v8 = *(*(v0[6] + 48) + 32);

      os_unfair_lock_lock((v8 + 24));
      sub_10008FB88((v8 + 16));
      os_unfair_lock_unlock((v8 + 24));

      goto LABEL_8;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7 >= v5)
    {
      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_16:
  swift_once();
LABEL_9:
  v9 = type metadata accessor for Logger();
  sub_100005B14(v9, qword_1006D4630);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v16 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_100005B4C(0x74696E696564, 0xE600000000000000, &v16);
    _os_log_impl(&_mh_execute_header, v10, v11, "FMStewieViewModel: Did %s", v12, 0xCu);
    sub_100006060(v13);
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_100173234()
{
  sub_100172C28();

  return swift_deallocClassInstance();
}

uint64_t sub_10017328C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100177B20, v6, v5);
}

BOOL sub_1001733B4(uint64_t *a1)
{
  v2 = *v1 >> 62;
  v3 = *a1;
  v4 = *a1 & 0xFFFFFFFFFFFFFF00;
  if (v2)
  {
    if (v2 == 1)
    {
      v5 = v3 & 0xC000000000000000;
      return v4 != 0xFFFFFFFF00 && v5 == 0x4000000000000000;
    }

    if (v4 != 0xFFFFFFFF00 && (v3 & 0xC000000000000000) == 0x8000000000000000 && !*(a1 + 40) && v3 == 0x8000000000000000)
    {
      v12 = vorrq_s8(*(a1 + 1), *(a1 + 3));
      if (!*&vorr_s8(*v12.i8, *&vextq_s8(v12, v12, 8uLL)))
      {
        return 1;
      }
    }

    return 0;
  }

  if (v3 >> 62)
  {
    v8 = 1;
  }

  else
  {
    v8 = v4 == 0xFFFFFFFF00;
  }

  if (v8)
  {
    return 0;
  }

  v9 = *a1;
  v10 = *v1;
  if (v10 <= 4)
  {
    switch(v10)
    {
      case 2u:
        return v9 == 2;
      case 3u:
        return v9 == 3;
      case 4u:
        return v9 == 4;
    }

    return (v9 - 2) >= 7 && ((v3 ^ *v1) & 1) == 0;
  }

  if (*v1 > 6u)
  {
    if (v10 == 7)
    {
      return v9 == 7;
    }

    if (v10 == 8)
    {
      return v9 == 8;
    }

    return (v9 - 2) >= 7 && ((v3 ^ *v1) & 1) == 0;
  }

  if (v10 != 5)
  {
    if (v10 == 6)
    {
      return v9 == 6;
    }

    return (v9 - 2) >= 7 && ((v3 ^ *v1) & 1) == 0;
  }

  return v9 == 5;
}

uint64_t sub_100173538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, void *a5@<X3>)
{
  if (a3)
  {
    result = 0;
    object = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0x8000000000000000;
    goto LABEL_3;
  }

  v9 = 0;
  result = 0;
  v10 = 0x8000000000000000;
  object = 0;
  v7 = 0;
  v8 = 0;
  if (a2 > 6)
  {
    if (a2 == 7)
    {
      goto LABEL_3;
    }

    if (a2 == 8)
    {
      v19 = a4;
      result = sub_1001739FC(a1 & 0x1010101010101, 8, 0, a5);
      a4 = v19;
      LOBYTE(v7) = v20;
      v8 = 0;
      v9 = 0;
      v7 = v7;
      v10 = 7;
      goto LABEL_3;
    }
  }

  else
  {
    if (!a2)
    {
      goto LABEL_3;
    }

    if (a2 == 5)
    {
      v13 = a4;
      v14 = [objc_opt_self() mainBundle];
      v57._object = 0x800000010057FD20;
      v15._countAndFlagsBits = 0xD000000000000028;
      v15._object = 0x8000000100582410;
      v16.value._object = 0x800000010057FD00;
      v57._countAndFlagsBits = 0xD000000000000017;
      v16.value._countAndFlagsBits = 0xD000000000000012;
      v17._countAndFlagsBits = 0;
      v17._object = 0xE000000000000000;
      v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, v14, v17, v57);

      object = v18._object;
      result = v18._countAndFlagsBits;
      a4 = v13;
      v8 = 0;
      v9 = 2;
      v10 = 0x4000000000000000;
      v7 = 1;
      goto LABEL_3;
    }
  }

  if ((a1 & 0x10000000000) != 0)
  {
    v23 = a1 & 0x1010101010101;
    v24 = a2;
    goto LABEL_23;
  }

  if ((a1 & 0x1000000) != 0)
  {
    v21 = a1 & 0x1000101010101;
    v22 = a2;
    goto LABEL_25;
  }

  if ((a1 & 0x100) != 0)
  {
    v29 = a4;
    result = sub_1001739FC(a1 & 0x1000100010101, a2, 0, a5);
    a4 = v29;
    LOBYTE(v7) = v30;
    v8 = 0;
    v9 = 0;
    v7 = v7;
    v10 = 3;
    goto LABEL_3;
  }

  if ((a1 & 0x100000000) != 0)
  {
    v31 = a4;
    result = sub_1001739FC(a1 & 0x1000100010001, a2, 0, a5);
    a4 = v31;
    LOBYTE(v7) = v32;
    v8 = 0;
    v9 = 0;
    v7 = v7;
    v10 = 4;
    goto LABEL_3;
  }

  if ((a1 & 0x10000) != 0)
  {
    v10 = a1 & 1;
    v33 = a1 & 0x1000000010001;
    v34 = a2;
    goto LABEL_29;
  }

  if ((a1 & 0x1000000000000) != 0)
  {
    v37 = a4;
    result = sub_1001739FC(a1 & 0x1000000000001, a2, 0, a5);
    a4 = v37;
    LOBYTE(v7) = v38;
    v8 = 0;
    v9 = 0;
    v7 = v7;
    v10 = 5;
    goto LABEL_3;
  }

  v9 = 0;
  result = 0;
  if (a2 > 3)
  {
    if (a2 != 4)
    {
      if (a2 == 6)
      {
        v50 = a4;
        v51 = sub_100173C38(a1 & 1, 6, 0, a5);
        v53 = v52;
        v54 = sub_1001739FC(a1 & 1, 6, 0, a5);
        a4 = v50;
        v7 = v54;
        result = v51;
        v8 = v55;
        object = v53;
        v10 = 0x4000000000000000;
        goto LABEL_3;
      }

      object = 0;
      v7 = 0;
      v8 = 0;
      if (a2 != 9)
      {
        goto LABEL_3;
      }

      v23 = a1 & 1;
      v24 = 9;
LABEL_23:
      v25 = a4;
      result = sub_1001739FC(v23, v24, 0, a5);
      a4 = v25;
      LOBYTE(v7) = v26;
      v8 = 0;
      v9 = 0;
      v7 = v7;
      v10 = 2;
      goto LABEL_3;
    }

    v10 = a1 & 1;
    v33 = v10;
    v34 = 4;
LABEL_29:
    v35 = a4;
    result = sub_1001739FC(v33, v34, 0, a5);
    a4 = v35;
    LOBYTE(v7) = v36;
    v8 = 0;
    v9 = 0;
    v7 = v7;
    goto LABEL_3;
  }

  if (a2 == 1)
  {
    v56 = a4;
    v40 = [objc_opt_self() mainBundle];
    v58._object = 0x800000010057FD20;
    v41._countAndFlagsBits = 0xD000000000000023;
    v41._object = 0x80000001005823E0;
    v42.value._object = 0x800000010057FD00;
    v58._countAndFlagsBits = 0xD000000000000017;
    v42.value._countAndFlagsBits = 0xD000000000000012;
    v43._countAndFlagsBits = 0;
    v43._object = 0xE000000000000000;
    v44 = NSLocalizedString(_:tableName:bundle:value:comment:)(v41, v42, v40, v43, v58);

    v45 = sub_1001739FC(a1 & 1, 1, 0, a5);
    a4 = v56;
    v7 = v45;
    result = v44._countAndFlagsBits;
    v8 = v46;
    object = v44._object;
    v10 = 0x4000000000000001;
    goto LABEL_3;
  }

  if (a2 == 2)
  {
    v47 = a4;
    result = sub_1001739FC(a1 & 1, 2, 0, a5);
    a4 = v47;
    LOBYTE(v7) = v48;
    v8 = 0;
    v9 = 0;
    v7 = v7;
    v10 = 8;
    goto LABEL_3;
  }

  object = 0;
  v7 = 0;
  v8 = 0;
  if (a2 == 3)
  {
    v21 = a1 & 1;
    v22 = 3;
LABEL_25:
    v27 = a4;
    result = sub_1001739FC(v21, v22, 0, a5);
    a4 = v27;
    LOBYTE(v7) = v28;
    v8 = 0;
    v9 = 0;
    v7 = v7;
    v10 = 6;
  }

LABEL_3:
  *a4 = v10;
  *(a4 + 8) = result;
  *(a4 + 16) = object;
  *(a4 + 24) = v7;
  *(a4 + 32) = v8;
  *(a4 + 40) = v9;
  return result;
}

uint64_t sub_1001739FC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v25 - v10;
  if (!a4)
  {
    return 0;
  }

  v12 = a4;
  v13 = [v12 lastPublished];
  if (!v13)
  {
LABEL_10:

    return 0;
  }

  v14 = v13;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  static Date.now.getter();
  Date.timeIntervalSince(_:)();
  v16 = v15;
  v17 = *(v6 + 8);
  v17(v8, v5);
  if (v16 >= 604800.0)
  {
    v17(v11, v5);
    goto LABEL_10;
  }

  if (v16 <= 60.0)
  {
    v17(v11, v5);

    return 0;
  }

  else if (v16 >= 7200.0)
  {
    v22 = sub_10017507C(v11);
    v24 = v23;

    v17(v11, v5);
    if (v24)
    {
      return v22;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v18 = sub_100174D08(v11);
    v20 = v19;

    v17(v11, v5);
    if (v20)
    {
      return 0;
    }

    else
    {
      return v18;
    }
  }
}

uint64_t sub_100173C38(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v39 - v10;
  if (!a4)
  {
    v23 = [objc_opt_self() mainBundle];
    v41._object = 0x800000010057FD20;
    v24._countAndFlagsBits = 0xD00000000000002BLL;
    v24._object = 0x8000000100582440;
    v25.value._object = 0x800000010057FD00;
    v41._countAndFlagsBits = 0xD000000000000017;
    v25.value._countAndFlagsBits = 0xD000000000000012;
    v26._countAndFlagsBits = 0;
    v26._object = 0xE000000000000000;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v24, v25, v23, v26, v41)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  v12 = a4;
  [v12 nextAllowedPublish];
  Date.init(timeIntervalSince1970:)();
  static Date.now.getter();
  Date.timeIntervalSince(_:)();
  v14 = v13;
  v15 = *(v6 + 8);
  v15(v8, v5);
  if (v14 <= 30.0)
  {
    v29 = [objc_opt_self() mainBundle];
    v42._object = 0x800000010057FD20;
    v30._countAndFlagsBits = 0xD00000000000002BLL;
    v30._object = 0x8000000100582440;
    v31.value._object = 0x800000010057FD00;
    v42._countAndFlagsBits = 0xD000000000000017;
    v31.value._countAndFlagsBits = 0xD000000000000012;
    v32._countAndFlagsBits = 0;
    v32._object = 0xE000000000000000;
    v22 = NSLocalizedString(_:tableName:bundle:value:comment:)(v30, v31, v29, v32, v42)._countAndFlagsBits;

LABEL_8:
    goto LABEL_9;
  }

  v16 = sub_100175448();
  if ((v17 & 1) == 0)
  {
    v33 = v16;
    v34 = [objc_opt_self() mainBundle];
    v43._object = 0x800000010057FD20;
    v35._countAndFlagsBits = 0xD000000000000029;
    v35._object = 0x8000000100582470;
    v36.value._object = 0x800000010057FD00;
    v43._countAndFlagsBits = 0xD000000000000017;
    v36.value._countAndFlagsBits = 0xD000000000000012;
    v37._countAndFlagsBits = 0;
    v37._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v35, v36, v34, v37, v43);

    sub_10007EBC0(&unk_1006B20B0, &unk_1005523B0);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_100552220;
    *(v38 + 56) = &type metadata for Int;
    *(v38 + 64) = &protocol witness table for Int;
    *(v38 + 32) = v33;
    v22 = String.init(format:_:)();

    goto LABEL_8;
  }

  v18 = [objc_opt_self() mainBundle];
  v40._object = 0x800000010057FD20;
  v19._countAndFlagsBits = 0xD00000000000002BLL;
  v19._object = 0x8000000100582440;
  v20.value._object = 0x800000010057FD00;
  v40._countAndFlagsBits = 0xD000000000000017;
  v20.value._countAndFlagsBits = 0xD000000000000012;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  v22 = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, v20, v18, v21, v40)._countAndFlagsBits;

LABEL_9:
  v15(v11, v5);
  return v22;
}

uint64_t type metadata accessor for FMStewieViewModel(uint64_t a1)
{
  result = qword_1006B4280;
  if (!qword_1006B4280)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100174128(uint64_t a1)
{
  sub_1001741E0();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1001741E0()
{
  if (!qword_1006B4290)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1006B4290);
    }
  }
}

uint64_t sub_100174230(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_10017424C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100174260(uint64_t a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 | (*(a1 + 8) << 8)) + 2;
  }
}

uint64_t sub_100174280(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 1);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1001742CC(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 40) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 41) = 1;
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
      *a1 = -a2 << 8;
      result = 0.0;
      *(a1 + 8) = 0u;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0;
      return result;
    }

    *(a1 + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unsigned __int8 *sub_10017433C(unsigned __int8 *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result | (a2 << 62);
  }

  else
  {
    *(result + 1) = (a2 - 2) >> 8;
    *(result + 2) = 0;
    *(result + 3) = 0;
    *(result + 4) = 0;
    result[40] = 0;
    *result = (a2 - 2) | 0x8000000000000000;
  }

  return result;
}

uint64_t sub_100174384(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1001743E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_10017447C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100174574;

  return v6(a1);
}

uint64_t sub_100174574()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

BOOL sub_10017466C(int a1, int a2)
{
  if (a1 <= 4u)
  {
    if (a1 == 2)
    {
      return a2 == 2;
    }

    if (a1 == 3)
    {
      return a2 == 3;
    }

    if (a1 != 4)
    {
      goto LABEL_18;
    }

    if (a2 == 4)
    {
      return 1;
    }
  }

  else if (a1 > 6u)
  {
    if (a1 != 7)
    {
      if (a1 == 8)
      {
        return a2 == 8;
      }

LABEL_18:
      if ((a2 - 2) >= 7u)
      {
        return (a2 ^ a1 ^ 1) & 1;
      }

      return 0;
    }

    if (a2 == 7)
    {
      return 1;
    }
  }

  else
  {
    if (a1 != 5)
    {
      if (a1 == 6)
      {
        return a2 == 6;
      }

      goto LABEL_18;
    }

    if (a2 == 5)
    {
      return 1;
    }
  }

  return 0;
}

void *sub_100174754(uint64_t a1)
{
  v2 = type metadata accessor for Calendar.Component();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_10007EBC0(&qword_1006B4338, &qword_100556228);
    v9 = static _SetStorage.allocate(capacity:)();
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
      sub_100177628(&qword_1006B4340, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
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
          sub_100177628(&qword_1006B4348, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
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

  return _swiftEmptySetSingleton;
}

void sub_100174A74(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      sub_10007EBC0(&qword_1006B4350, &qword_100556320);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = _CocoaArrayWrapper.endIndex.getter();
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

  v3 = _swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
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
  v6 = 0;
  v7 = v3 + 7;
  v21 = a1 & 0xC000000000000001;
  v19 = a1 + 32;
  v20 = a1 & 0xFFFFFFFFFFFFFF8;
  while (v21)
  {
    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_25;
    }

LABEL_18:
    type metadata accessor for AnyCancellable();
    sub_100177628(&qword_1006AF990, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
    v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v11 = -1 << *(v3 + 32);
    v12 = v10 & ~v11;
    v13 = v12 >> 6;
    v14 = v7[v12 >> 6];
    v15 = 1 << v12;
    if (((1 << v12) & v14) != 0)
    {
      v16 = ~v11;
      sub_100177628(&qword_1006B3870, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
      while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
      {
        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = v7[v12 >> 6];
        v15 = 1 << v12;
        if (((1 << v12) & v14) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      v7[v13] = v15 | v14;
      *(v3[6] + 8 * v12) = v8;
      v17 = v3[2];
      v9 = __OFADD__(v17, 1);
      v18 = v17 + 1;
      if (v9)
      {
        goto LABEL_26;
      }

      v3[2] = v18;
    }

    if (v6 == v5)
    {
      return;
    }
  }

  if (v6 >= *(v20 + 16))
  {
    goto LABEL_27;
  }

  v8 = *(v19 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
}

uint64_t sub_100174D08(uint64_t a1)
{
  v27 = a1;
  v28 = type metadata accessor for Date();
  v26 = *(v28 - 8);
  __chkstk_darwin(v28);
  v2 = &v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Calendar();
  v23 = *(v25 - 8);
  __chkstk_darwin(v25);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DateComponents();
  v5 = *(v24 - 8);
  __chkstk_darwin(v24);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.current.getter();
  sub_10007EBC0(&qword_1006B0088, &qword_100556220);
  v8 = type metadata accessor for Calendar.Component();
  v9 = *(v8 - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100552210;
  v13 = v12 + v11;
  v14 = *(v9 + 104);
  v14(v13, enum case for Calendar.Component.hour(_:), v8);
  v14(v13 + v10, enum case for Calendar.Component.minute(_:), v8);
  sub_100174754(v12);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  static Date.now.getter();
  Calendar.dateComponents(_:from:to:)();

  (*(v26 + 8))(v2, v28);
  (*(v23 + 8))(v4, v25);
  v15 = DateComponents.hour.getter();
  if (v16)
  {
    v17 = 0;
  }

  else
  {
    v17 = v15;
  }

  v18 = DateComponents.minute.getter();
  v20 = v19;
  (*(v5 + 8))(v7, v24);
  if (v20)
  {
    v21 = 0;
  }

  else
  {
    v21 = v18;
  }

  if (v17 | v21)
  {
    return v17;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10017507C(uint64_t a1)
{
  v23 = a1;
  v1 = type metadata accessor for Date();
  v25 = *(v1 - 8);
  v26 = v1;
  __chkstk_darwin(v1);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Calendar();
  v4 = *(v24 - 8);
  __chkstk_darwin(v24);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DateComponents();
  v7 = *(v22 - 8);
  __chkstk_darwin(v22);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.current.getter();
  sub_10007EBC0(&qword_1006B0088, &qword_100556220);
  v10 = type metadata accessor for Calendar.Component();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100552220;
  (*(v11 + 104))(v13 + v12, enum case for Calendar.Component.minute(_:), v10);
  sub_100174754(v13);
  swift_setDeallocating();
  (*(v11 + 8))(v13 + v12, v10);
  swift_deallocClassInstance();
  static Date.now.getter();
  Calendar.dateComponents(_:from:to:)();

  (*(v25 + 8))(v3, v26);
  (*(v4 + 8))(v6, v24);
  v14 = DateComponents.minute.getter();
  LOBYTE(v4) = v15;
  (*(v7 + 8))(v9, v22);
  result = 0;
  if ((v4 & 1) == 0 && v14 < 0)
  {
    v17 = [objc_allocWithZone(NSDateFormatter) init];
    [v17 setDateStyle:2];
    [v17 setTimeStyle:1];
    isa = Date._bridgeToObjectiveC()().super.isa;
    v19 = [v17 stringFromDate:isa];

    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    return v20;
  }

  return result;
}

uint64_t sub_100175448()
{
  v33 = type metadata accessor for Calendar();
  v31 = *(v33 - 8);
  __chkstk_darwin(v33);
  v28 = &v28 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for DateComponents();
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v2 = &v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for Date();
  v3 = *(v29 - 8);
  __chkstk_darwin(v29);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v28 - v7;
  Date.addingTimeInterval(_:)();
  static Calendar.current.getter();
  sub_10007EBC0(&qword_1006B0088, &qword_100556220);
  v9 = type metadata accessor for Calendar.Component();
  v10 = *(v9 - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100552210;
  v14 = v13 + v12;
  v15 = *(v10 + 104);
  v15(v14, enum case for Calendar.Component.minute(_:), v9);
  v15(v14 + v11, enum case for Calendar.Component.second(_:), v9);
  sub_100174754(v13);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  static Date.now.getter();
  v16 = v28;
  Calendar.dateComponents(_:from:to:)();

  v17 = *(v3 + 8);
  v18 = v5;
  v19 = v29;
  v17(v18, v29);
  (*(v31 + 8))(v16, v33);
  v20 = DateComponents.minute.getter();
  if (v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = v20;
  }

  v23 = DateComponents.second.getter();
  v25 = v24;
  (*(v30 + 8))(v2, v32);
  result = (v17)(v8, v19);
  if (v25)
  {
    return v22 & ~(v22 >> 63);
  }

  if (v23 < 1)
  {
    return v22 & ~(v22 >> 63);
  }

  if (!__OFADD__(v22++, 1))
  {
    return v22 & ~(v22 >> 63);
  }

  __break(1u);
  return result;
}

double sub_100175810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = sub_10007EBC0(&unk_1006BEF30, &qword_100554550);
  __chkstk_darwin(v6 - 8);
  v8 = &v21[-1] - v7;
  My = type metadata accessor for Feature.FindMy();
  v21[3] = My;
  v21[4] = sub_100177628(&qword_1006B4220, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v10 = sub_100008FC0(v21);
  (*(*(My - 8) + 104))(v10, enum case for Feature.FindMy.fmNiftyCurve(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100006060(v21);
  if (My)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100005B14(v12, qword_1006D4630);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21[0] = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_100005B4C(0xD000000000000023, 0x80000001005825D0, v21);
      _os_log_impl(&_mh_execute_header, v13, v14, "FMStewieViewModel: %s", v15, 0xCu);
      sub_100006060(v16);
    }

    v17 = type metadata accessor for TaskPriority();
    (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
    type metadata accessor for MainActor();

    v18 = static MainActor.shared.getter();
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = &protocol witness table for MainActor;
    v19[4] = v5;
    sub_100170C90(0, 0, v8, a3, v19);
  }

  return result;
}

Swift::Int sub_100175AE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10007EBC0(&qword_1006B4358, &qword_100556358);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return _swiftEmptySetSingleton;
  }

  return result;
}

unint64_t sub_100175C50(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v3 = type metadata accessor for FMFMyInfo();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10007EBC0(&qword_1006AF748, &unk_100558AD0);
  __chkstk_darwin(v7 - 8);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v37 - v11;
  v13 = sub_10007EBC0(&qword_1006AF750, &qword_100552340);
  __chkstk_darwin(v13 - 8);
  v15 = &v37 - v14;
  v42 = *(a1 + 16);
  v16 = v42;
  OS_dispatch_queue.sync<A>(execute:)();

  v40 = v43;
  v39 = *(*(a1 + 16) + OBJC_IVAR____TtC6FindMy19FMConditionProvider_isNetworkUp);
  v37 = *(dispatch thunk of FMFManager.friends.getter() + 16);

  v38 = [objc_opt_self() locationServicesEnabled];
  dispatch thunk of FMFManager.preferences.getter();
  v17 = type metadata accessor for FMFPreferences();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v15, 1, v17) == 1)
  {
    sub_100012DF0(v15, &qword_1006AF750, &qword_100552340);
    v19 = 0;
  }

  else
  {
    v20 = FMFPreferences.hideLocation.getter();
    (*(v18 + 8))(v15, v17);
    if (v20)
    {
      v19 = 0x1000000;
    }

    else
    {
      v19 = 0;
    }
  }

  dispatch thunk of FMFManager.myInfo.getter();
  sub_100007204(v12, v9, &qword_1006AF748, &unk_100558AD0);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    v21 = &_mh_execute_header;
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    v22 = FMFMyInfo.deviceId.getter();
    v24 = v23;
    v25 = FMFMyInfo.meDeviceId.getter();
    if (v26)
    {
      if (v22 == v25 && v26 == v24)
      {

        v21 = 0;
      }

      else
      {
        v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v27)
        {
          v21 = 0;
        }

        else
        {
          v21 = &_mh_execute_header;
        }
      }
    }

    else
    {

      v21 = &_mh_execute_header;
    }

    (*(v4 + 8))(v6, v3);
  }

  sub_100012DF0(v12, &qword_1006AF748, &unk_100558AD0);
  v28 = v39 ^ 1u;
  v29 = v37 == 0;
  v30 = *(a1 + 16);
  v31 = v30[OBJC_IVAR____TtC6FindMy19FMConditionProvider_accountsAreSignedIn];
  v32 = v30;

  v33 = 0x10000;
  if (v38)
  {
    v33 = 0;
  }

  v34 = 0x10000000000;
  if (v31)
  {
    v34 = 0;
  }

  v35 = 0x1000000000000;
  if (!v40)
  {
    v35 = 0;
  }

  return v35 | v28 | (v29 << 8) | v33 | v19 | v21 | v34;
}

double sub_100176100()
{
  v1 = v0;
  v2 = sub_10007EBC0(&unk_1006BEF30, &qword_100554550);
  __chkstk_darwin(v2 - 8);
  v4 = &v17[-1] - v3;
  My = type metadata accessor for Feature.FindMy();
  v17[3] = My;
  v17[4] = sub_100177628(&qword_1006B4220, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v6 = sub_100008FC0(v17);
  (*(*(My - 8) + 104))(v6, enum case for Feature.FindMy.fmNiftyCurve(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100006060(v17);
  if (My)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100005B14(v8, qword_1006D4630);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17[0] = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_100005B4C(0xD000000000000033, 0x8000000100582510, v17);
      _os_log_impl(&_mh_execute_header, v9, v10, "FMStewieViewModel: %s", v11, 0xCu);
      sub_100006060(v12);
    }

    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
    type metadata accessor for MainActor();

    v14 = static MainActor.shared.getter();
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = &protocol witness table for MainActor;
    v15[4] = v1;
    sub_100170C90(0, 0, v4, &unk_1005562D8, v15);
  }

  return result;
}

double sub_1001763DC()
{
  v1 = v0;
  v2 = sub_10007EBC0(&unk_1006BEF30, &qword_100554550);
  __chkstk_darwin(v2 - 8);
  v4 = &v17[-1] - v3;
  My = type metadata accessor for Feature.FindMy();
  v17[3] = My;
  v17[4] = sub_100177628(&qword_1006B4220, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v6 = sub_100008FC0(v17);
  (*(*(My - 8) + 104))(v6, enum case for Feature.FindMy.fmNiftyCurve(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100006060(v17);
  if (My)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100005B14(v8, qword_1006D4630);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17[0] = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_100005B4C(0xD000000000000038, 0x8000000100582550, v17);
      _os_log_impl(&_mh_execute_header, v9, v10, "FMStewieViewModel: %s", v11, 0xCu);
      sub_100006060(v12);
    }

    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
    type metadata accessor for MainActor();

    v14 = static MainActor.shared.getter();
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = &protocol witness table for MainActor;
    v15[4] = v1;
    sub_100170C90(0, 0, v4, &unk_1005562E8, v15);
  }

  return result;
}

double sub_1001766B8()
{
  v1 = v0;
  v2 = sub_10007EBC0(&unk_1006BEF30, &qword_100554550);
  __chkstk_darwin(v2 - 8);
  v4 = &v17[-1] - v3;
  My = type metadata accessor for Feature.FindMy();
  v17[3] = My;
  v17[4] = sub_100177628(&qword_1006B4220, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v6 = sub_100008FC0(v17);
  (*(*(My - 8) + 104))(v6, enum case for Feature.FindMy.fmNiftyCurve(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100006060(v17);
  if (My)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100005B14(v8, qword_1006D4630);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17[0] = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_100005B4C(0xD000000000000033, 0x80000001005824A0, v17);
      _os_log_impl(&_mh_execute_header, v9, v10, "FMStewieViewModel: %s", v11, 0xCu);
      sub_100006060(v12);
    }

    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
    type metadata accessor for MainActor();

    v14 = static MainActor.shared.getter();
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = &protocol witness table for MainActor;
    v15[4] = v1;
    sub_100170C90(0, 0, v4, &unk_100556288, v15);
  }

  return result;
}

uint64_t sub_100176994(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000EE760;

  return sub_10017328C(a1, v4, v5, v6);
}

uint64_t sub_100176A48(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000EE760;

  return sub_10017447C(a1, v4);
}

uint64_t sub_100176B00(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000E3478;

  return sub_10017447C(a1, v4);
}

uint64_t sub_100176BB8(uint64_t a1)
{
  v3 = v2;
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 44);
  v9 = *(v1 + 45);
  v10 = *(v1 + 46);
  v11 = *(v1 + 48);
  v12 = *(v1 + 56);
  v13 = *(v1 + 64);
  v14 = 256;
  if (!*(v1 + 41))
  {
    v14 = 0;
  }

  v15 = v14 | *(v1 + 40);
  v16 = 0x10000;
  if (!*(v1 + 42))
  {
    v16 = 0;
  }

  v17 = 0x1000000;
  if (!*(v1 + 43))
  {
    v17 = 0;
  }

  v18 = v15 | v16 | v17;
  v19 = &_mh_execute_header;
  if (!v8)
  {
    v19 = 0;
  }

  v20 = 0x10000000000;
  if (!v9)
  {
    v20 = 0;
  }

  v21 = 0x1000000000000;
  if (!v10)
  {
    v21 = 0;
  }

  v22 = v19 | v20 | v21;
  v23 = swift_task_alloc();
  *(v3 + 16) = v23;
  *v23 = v3;
  v23[1] = sub_1000EE760;

  return sub_100171DF0(a1, v6, v5, v7, v18 | v22, v11, v12, v13);
}

uint64_t sub_100176D1C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000EE760;

  return sub_100171B90(a1, v4, v5, v7, v6);
}

uint64_t sub_100176DDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000EE760;

  return sub_10017328C(a1, v4, v5, v6);
}

uint64_t sub_100176E90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000EE760;

  return sub_10017328C(a1, v4, v5, v6);
}

double sub_100176F44()
{
  v1 = v0;
  v2 = sub_10007EBC0(&unk_1006BEF30, &qword_100554550);
  __chkstk_darwin(v2 - 8);
  v4 = &v17[-1] - v3;
  My = type metadata accessor for Feature.FindMy();
  v17[3] = My;
  v17[4] = sub_100177628(&qword_1006B4220, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v6 = sub_100008FC0(v17);
  (*(*(My - 8) + 104))(v6, enum case for Feature.FindMy.fmNiftyCurve(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100006060(v17);
  if (My)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100005B14(v8, qword_1006D4630);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17[0] = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_100005B4C(0xD000000000000034, 0x8000000100582590, v17);
      _os_log_impl(&_mh_execute_header, v9, v10, "FMStewieViewModel: %s", v11, 0xCu);
      sub_100006060(v12);
    }

    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
    type metadata accessor for MainActor();

    v14 = static MainActor.shared.getter();
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = &protocol witness table for MainActor;
    v15[4] = v1;
    sub_100170C90(0, 0, v4, &unk_1005562F8, v15);
  }

  return result;
}

uint64_t sub_100177220(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000EE760;

  return sub_10017328C(a1, v4, v5, v6);
}

uint64_t sub_1001772D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000EE760;

  return sub_10017328C(a1, v4, v5, v6);
}

uint64_t sub_100177388(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000EE760;

  return sub_10017328C(a1, v4, v5, v6);
}

double sub_10017743C()
{
  My = type metadata accessor for Feature.FindMy();
  v8[3] = My;
  v8[4] = sub_100177628(&qword_1006B4220, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v1 = sub_100008FC0(v8);
  (*(*(My - 8) + 104))(v1, enum case for Feature.FindMy.fmNiftyCurve(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100006060(v8);
  if (My)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100005B14(v3, qword_1006D4630);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8[0] = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_100005B4C(0xD000000000000018, 0x8000000100582600, v8);
      _os_log_impl(&_mh_execute_header, v4, v5, "FMStewieViewModel: %s", v6, 0xCu);
      sub_100006060(v7);
    }

    return sub_10017067C();
  }

  return result;
}

uint64_t sub_100177628(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100177670(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000EE760;

  return sub_100171624(a1, v4, v5, v6);
}

uint64_t sub_10017772C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000E3478;

  return sub_100172594(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1001777F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000EE760;

  return sub_100172F88(a1, v4, v5, v6, v7, v8);
}

__n128 initializeBufferWithCopyOfBuffer for FMHelpFriendViewStyle(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1001778D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100177918(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_10017795C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for FMStewieViewModelState.ViewState.NotAvailableReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_19;
  }

  v2 = a2 + 8;
  if (a2 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 8;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 8;
    }
  }

LABEL_19:
  v7 = *a1;
  if (v7 < 2)
  {
    return 0;
  }

  v8 = (v7 + 2147483646) & 0x7FFFFFFF;
  result = v8 - 6;
  if (v8 <= 6)
  {
    return 0;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for FMStewieViewModelState.ViewState.NotAvailableReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 8;
  if (a3 + 8 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xF8)
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_100177ADC(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_100177AF8(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

void sub_100177B24(void *a1)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for FMLostModeLandingViewController(0);
  v1 = v5.receiver;
  objc_msgSendSuper2(&v5, "viewDidLoad");
  sub_100177BE8();
  v2 = objc_allocWithZone(UIBarButtonItem);
  v3 = [v2 initWithBarButtonSystemItem:1 target:v1 action:{"cancelActionWithSender:", v5.receiver, v5.super_class}];
  v4 = [v1 navigationItem];
  [v4 setLeftBarButtonItem:v3];
}

double sub_100177BE8()
{
  v1 = type metadata accessor for FMLostModeTrackable(0);
  __chkstk_darwin(v1);
  v3 = &v27[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = String._bridgeToObjectiveC()();
  [v0 setAccessibilityIdentifier:v4];

  v5 = *&v0[qword_1006B4360];
  v6 = objc_opt_self();
  v7 = [v6 mainBundle];
  v29._object = 0x800000010057B8A0;
  v8._countAndFlagsBits = 0xD000000000000015;
  v8._object = 0x800000010057B880;
  v28._countAndFlagsBits = 0xD000000000000027;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v8, 0, v7, v9, v28);

  v10 = String._bridgeToObjectiveC()();

  [v5 setTitle:v10 forState:0];

  [v5 addTarget:v0 action:"continueActionWithSender:" forControlEvents:64];
  v11 = [v0 buttonTray];
  [v11 addButton:v5];

  v12 = &v0[qword_1006D3E00];
  sub_1000970F8(&v0[qword_1006D3E00], v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *(sub_10007EBC0(&qword_1006AFC80, &qword_100554B70) + 48);
    v14 = [v0 buttonTray];
    v15 = [v6 mainBundle];
    v29._object = 0x8000000100579A00;
    v16._countAndFlagsBits = 0xD00000000000002BLL;
    v16._object = 0x80000001005829B0;
    v17.value._object = 0x80000001005799E0;
    v29._countAndFlagsBits = 0xD000000000000018;
    v17.value._countAndFlagsBits = 0xD000000000000013;
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v17, v15, v18, v29);

    v19 = String._bridgeToObjectiveC()();

    [v14 setCaptionText:v19];

    sub_100012DF0(&v3[v13], &qword_1006B07D0, qword_100552820);
    v20 = type metadata accessor for FMIPDevice();
    (*(*(v20 - 8) + 8))(v3, v20);
  }

  else
  {
    v21 = [v0 buttonTray];
    v22 = String._bridgeToObjectiveC()();
    [v21 setCaptionText:v22];

    sub_10009715C(v3);
  }

  v23 = sub_1003C3968(v12);
  __chkstk_darwin(v23);
  sub_100190750(sub_10017A03C, &v27[-32], v23);
  v25 = v24;

  sub_10036F4B4(v25);

  return result;
}

uint64_t sub_100177FF8(void *a1)
{
  v19 = a1;
  v2 = type metadata accessor for FMIPItem();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007EBC0(&qword_1006B07D0, qword_100552820);
  __chkstk_darwin(v6 - 8);
  v8 = &v18 - v7;
  v9 = type metadata accessor for FMIPDevice();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FMLostModeTrackable(0);
  __chkstk_darwin(v13);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000970F8(v1 + qword_1006D3E00, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *(sub_10007EBC0(&qword_1006AFC80, &qword_100554B70) + 48);
    (*(v10 + 32))(v12, v15, v9);
    sub_100110438(&v15[v16], v8);
    sub_1001785B0(v12, v8, v19);
    sub_100012DF0(v8, &qword_1006B07D0, qword_100552820);
    return (*(v10 + 8))(v12, v9);
  }

  else
  {
    (*(v3 + 32))(v5, v15, v2);
    sub_1001783A8(v5);
    return (*(v3 + 8))(v5, v2);
  }
}

void sub_1001782BC(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_100177FF8(a3);
}

void sub_100178328(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = a1;
  v5 = [v4 view];
  sub_100177FF8(v5);
}

void sub_1001783A8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for FMIPItem();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FMItemPhoneNumberViewController(0);
  v8 = *&v1[qword_1006B8E58];
  v9 = *(v5 + 16);
  v9(v7, a1, v4);
  v10 = swift_retain_n();
  v11 = sub_100370974(v10, v7, 0, 0);

  type metadata accessor for FMItemEmailViewController(0);
  v9(v7, a1, v4);
  v12 = sub_100373C5C(v8, v7, 0, 0);
  sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100552EE0;
  *(v13 + 32) = v11;
  *(v13 + 40) = v12;
  objc_allocWithZone(type metadata accessor for FMPageViewController());
  v14 = v11;
  v15 = v12;
  v16 = sub_100141E10(v8, v13);
  v17 = [v2 navigationController];
  if (v17)
  {
    v18 = v17;
    [v17 pushViewController:v16 animated:1];
  }
}

double sub_1001785B0(char *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v81 = a3;
  v85 = a2;
  v6 = type metadata accessor for FMIPFeatures();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v77 - v11;
  v13 = sub_10007EBC0(&unk_1006BBCE0, &unk_1005534C0);
  __chkstk_darwin(v13 - 8);
  v83 = &v77 - v14;
  v15 = sub_10007EBC0(&qword_1006B07D0, qword_100552820);
  __chkstk_darwin(v15 - 8);
  v84 = &v77 - v16;
  v17 = type metadata accessor for FMIPDevice();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1;
  if (FMIPDevice.isConsideredAccessory.getter())
  {
    v77 = type metadata accessor for FMDevicePhoneNumberViewController(0);
    v81 = *&v4[qword_1006B8E58];
    v82 = v18;
    v22 = *(v18 + 16);
    v79 = v4;
    v80 = v18 + 16;
    v78 = v21;
    v23 = v21;
    v24 = v17;
    v22(v20, v23, v17);
    v25 = v22;
    sub_1001104A8(v85, v84);
    v26 = objc_opt_self();
    v27 = [v26 mainBundle];
    v86._object = 0x8000000100582840;
    v28._object = 0x8000000100582820;
    v86._countAndFlagsBits = 0xD000000000000031;
    v28._countAndFlagsBits = 0xD00000000000001FLL;
    v29._countAndFlagsBits = 0;
    v29._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v28, 0, v27, v29, v86);

    v30 = [v26 mainBundle];
    v87._object = 0x80000001005828B0;
    v31._countAndFlagsBits = 0xD000000000000029;
    v31._object = 0x8000000100582880;
    v87._countAndFlagsBits = 0xD00000000000003BLL;
    v32._countAndFlagsBits = 0;
    v32._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v31, 0, v30, v32, v87);

    v33 = objc_allocWithZone(v77);
    v34 = v81;

    v35 = String._bridgeToObjectiveC()();

    v36 = String._bridgeToObjectiveC()();

    v37 = [v33 initWithTitle:v35 detailText:v36 icon:0 contentLayout:2];

    *&v37[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_mediator] = v34;
    v38 = v37;

    v39 = &v38[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_passcode];
    v40 = *&v38[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_passcode];
    v41 = *&v38[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_passcode + 8];
    *v39 = 0;
    *(v39 + 1) = 0;
    sub_100179FB0(v40, v41);

    v42 = v83;
    v25(v83, v20, v24);
    v43 = *(v82 + 56);
    v43(v42, 0, 1, v24);
    v44 = OBJC_IVAR____TtC6FindMy33FMDevicePhoneNumberViewController_device;
    swift_beginAccess();
    v45 = v38;
    sub_1000BBF40(v42, &v38[v44], &unk_1006BBCE0, &unk_1005534C0);
    swift_endAccess();
    v46 = OBJC_IVAR____TtC6FindMy33FMDevicePhoneNumberViewController_primaryItemPart;
    swift_beginAccess();
    v47 = v84;
    sub_100179FC4(v84, &v45[v46]);
    swift_endAccess();
    v48 = &v45[OBJC_IVAR____TtC6FindMy33FMDevicePhoneNumberViewController_mode];
    *v48 = 2;
    v48[4] = 0;

    FMIPDevice.isConsideredAccessory.getter();
    v25(v42, v20, v24);
    v43(v42, 0, 1, v24);
    v49 = sub_10022F104(0xD00000000000002ELL, 0x80000001005828F0, v42);
    v51 = v50;
    v53 = v52;
    v55 = v54;

    v56 = sub_10022E0A8(v49, v51, v53, v55, 0, 0);
    v58 = v57;

    swift_bridgeObjectRelease_n();
    sub_100012DF0(v42, &unk_1006BBCE0, &unk_1005534C0);
    sub_100418334(v56, v58);
    sub_100012DF0(v47, &qword_1006B07D0, qword_100552820);
    (*(v82 + 8))(v20, v24);
    type metadata accessor for FMDeviceEmailViewController(0);
    v25(v20, v78, v24);
    sub_1001104A8(v85, v47);
    v59 = swift_retain_n();
    v60 = sub_10040939C(v59, v20, v47, 0, 0);
    sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_100552EE0;
    *(v61 + 32) = v45;
    *(v61 + 40) = v60;
    objc_allocWithZone(type metadata accessor for FMPageViewController());
    v62 = v45;
    v63 = v60;
    v64 = sub_100141E10(v59, v61);
    v65 = [v79 navigationController];
    if (v65)
    {
      v66 = v65;
      [v65 pushViewController:v64 animated:1];
    }
  }

  else
  {
    FMIPDevice.features.getter();
    static FMIPFeatures.isLostModeWithLocationServiceEnabled.getter();
    sub_100179F58();
    v68 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v69 = *(v7 + 8);
    v69(v9, v6);
    v69(v12, v6);
    v70 = sub_100178EF8(a1, v85);
    v71 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v72 = swift_allocObject();
    *(v72 + 16) = v71;
    *(v72 + 24) = v70;
    if (v68)
    {
      v73 = v70;
      sub_100179884(v21, v81, sub_10017A034, v72);
    }

    else
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      v75 = v70;

      if (Strong && (v76 = [Strong navigationController], Strong, v76))
      {
        [v76 pushViewController:v75 animated:1];
      }

      else
      {
      }
    }
  }

  return result;
}

void sub_100178E64(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong navigationController];

    if (v5)
    {
      [v5 pushViewController:a2 animated:1];
    }
  }
}

char *sub_100178EF8(uint64_t a1, uint64_t a2)
{
  v91 = a2;
  v3 = sub_10007EBC0(&unk_1006BBCE0, &unk_1005534C0);
  __chkstk_darwin(v3 - 8);
  v93 = &v86 - v4;
  v5 = sub_10007EBC0(&qword_1006B07D0, qword_100552820);
  __chkstk_darwin(v5 - 8);
  v94 = &v86 - v6;
  v7 = type metadata accessor for FMIPDevice();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FMIPFeatures();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v86 - v16;
  FMIPDevice.features.getter();
  static FMIPFeatures.isKeypadEnabled.getter();
  sub_100179F58();
  v18 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v19 = *(v12 + 8);
  v19(v14, v11);
  v19(v17, v11);
  v92 = v7;
  if (v18)
  {
    v90 = *&v90[qword_1006B8E58];
    v20 = *(v8 + 16);
    v88 = v10;
    v21 = v7;
    v20(v10, a1, v7);
    sub_1001104A8(v91, v94);
    v22 = objc_opt_self();

    v23 = [v22 mainBundle];
    v95._object = 0x8000000100582940;
    v24._object = 0x8000000100582920;
    v95._countAndFlagsBits = 0xD00000000000002BLL;
    v24._countAndFlagsBits = 0xD000000000000019;
    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v24, 0, v23, v25, v95);

    v26 = v93;
    v20(v93, v10, v21);
    v27 = *(v8 + 56);
    v27(v26, 0, 1, v21);
    v28 = sub_10022F104(0xD00000000000001DLL, 0x8000000100582970, v26);
    v30 = v29;
    v32 = v31;
    v34 = v33;

    sub_10022E0A8(v28, v30, v32, v34, 0, 0);

    swift_bridgeObjectRelease_n();
    sub_100012DF0(v26, &unk_1006BBCE0, &unk_1005534C0);
    v35 = objc_allocWithZone(type metadata accessor for FMDevicePasscodeViewController(0));
    v36 = String._bridgeToObjectiveC()();

    v37 = String._bridgeToObjectiveC()();

    v38 = [v35 initWithTitle:v36 detailText:v37 icon:0];

    *&v38[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_mediator] = v90;
    v39 = v38;

    v40 = v92;
    (*(v8 + 32))(v26, v88, v92);
    v27(v26, 0, 1, v40);
    v41 = OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_device;
    swift_beginAccess();
    sub_1000BBF40(v26, &v39[v41], &unk_1006BBCE0, &unk_1005534C0);
    swift_endAccess();
    v42 = OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_primaryItemPart;
    swift_beginAccess();
    sub_1000BBF40(v94, &v39[v42], &qword_1006B07D0, qword_100552820);
    swift_endAccess();
    v43 = &v39[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_mode];
    *v43 = 2;
    v43[4] = 0;
  }

  else
  {
    v87 = type metadata accessor for FMDevicePhoneNumberViewController(0);
    v44 = *&v90[qword_1006B8E58];
    v46 = v8 + 16;
    v45 = *(v8 + 16);
    v89 = v8;
    v90 = v45;
    v47 = v10;
    (v45)(v10, a1, v7);
    v86 = v46;
    sub_1001104A8(v91, v94);
    v48 = objc_opt_self();
    v49 = [v48 mainBundle];
    v96._object = 0x8000000100582840;
    v50._countAndFlagsBits = 0xD00000000000001FLL;
    v50._object = 0x8000000100582820;
    v96._countAndFlagsBits = 0xD000000000000031;
    v51._countAndFlagsBits = 0;
    v51._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v50, 0, v49, v51, v96);

    v52 = [v48 mainBundle];
    v97._object = 0x80000001005828B0;
    v53._countAndFlagsBits = 0xD000000000000029;
    v53._object = 0x8000000100582880;
    v97._countAndFlagsBits = 0xD00000000000003BLL;
    v54._countAndFlagsBits = 0;
    v54._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v53, 0, v52, v54, v97);

    v55 = objc_allocWithZone(v87);

    v56 = String._bridgeToObjectiveC()();

    v57 = String._bridgeToObjectiveC()();

    v58 = [v55 initWithTitle:v56 detailText:v57 icon:0 contentLayout:2];

    *&v58[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_mediator] = v44;
    v59 = v58;

    v60 = &v59[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_passcode];
    v61 = *&v59[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_passcode];
    v62 = *&v59[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_passcode + 8];
    *v60 = 0;
    *(v60 + 1) = 0;
    sub_100179FB0(v61, v62);

    v64 = v92;
    v63 = v93;
    v65 = v90;
    (v90)(v93, v47, v92);
    v66 = *(v89 + 56);
    v67 = v64;
    v66(v63, 0, 1, v64);
    v68 = OBJC_IVAR____TtC6FindMy33FMDevicePhoneNumberViewController_device;
    swift_beginAccess();
    v39 = v59;
    sub_1000BBF40(v63, &v59[v68], &unk_1006BBCE0, &unk_1005534C0);
    swift_endAccess();
    v69 = OBJC_IVAR____TtC6FindMy33FMDevicePhoneNumberViewController_primaryItemPart;
    swift_beginAccess();
    v70 = v94;
    sub_100179FC4(v94, &v39[v69]);
    swift_endAccess();
    v71 = &v39[OBJC_IVAR____TtC6FindMy33FMDevicePhoneNumberViewController_mode];
    *v71 = 2;
    v71[4] = 0;

    FMIPDevice.isConsideredAccessory.getter();
    v72 = v47;
    v73 = v47;
    v74 = v67;
    v65(v63, v72, v67);
    v66(v63, 0, 1, v67);
    v75 = sub_10022F104(0xD00000000000002ELL, 0x80000001005828F0, v63);
    v77 = v76;
    v79 = v78;
    v81 = v80;

    v82 = sub_10022E0A8(v75, v77, v79, v81, 0, 0);
    v84 = v83;

    swift_bridgeObjectRelease_n();
    sub_100012DF0(v63, &unk_1006BBCE0, &unk_1005534C0);
    sub_100418334(v82, v84);
    sub_100012DF0(v70, &qword_1006B07D0, qword_100552820);
    (*(v89 + 8))(v73, v74);
  }

  return v39;
}

void sub_100179884(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v49 = a2;
  v46 = a3;
  v47 = a4;
  v5 = sub_10007EBC0(&unk_1006BBCE0, &unk_1005534C0);
  __chkstk_darwin(v5 - 8);
  v7 = &v45 - v6;
  v52 = &type metadata for SolariumFeatureFlag;
  v48 = sub_10000BD04();
  v53 = v48;
  v8 = isFeatureEnabled(_:)();
  sub_100006060(aBlock);
  v9 = ~v8;
  v10 = objc_opt_self();
  v11 = [v10 mainBundle];
  v55._object = 0x80000001005827A0;
  v12._countAndFlagsBits = 0xD000000000000030;
  v12._object = 0x8000000100582760;
  v55._countAndFlagsBits = 0xD000000000000042;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, v11, v13, v55);

  v14 = type metadata accessor for FMIPDevice();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v7, a1, v14);
  (*(v15 + 56))(v7, 0, 1, v14);
  v16 = sub_10022F104(0xD00000000000002FLL, 0x80000001005827F0, v7);
  v18 = v17;
  v20 = v19;
  v22 = v21;

  sub_10022E0A8(v16, v18, v20, v22, 0, 0);

  swift_bridgeObjectRelease_n();
  sub_100012DF0(v7, &unk_1006BBCE0, &unk_1005534C0);
  v23 = String._bridgeToObjectiveC()();

  v24 = String._bridgeToObjectiveC()();

  v25 = [objc_opt_self() alertControllerWithTitle:v23 message:v24 preferredStyle:v9 & 1];

  v26 = [v10 mainBundle];
  v56._object = 0x800000010057B8F0;
  v27._object = 0x800000010057B8D0;
  v56._countAndFlagsBits = 0xD000000000000025;
  v27._countAndFlagsBits = 0xD000000000000013;
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v27, 0, v26, v28, v56);

  v29 = String._bridgeToObjectiveC()();

  v30 = objc_opt_self();
  v31 = [v30 actionWithTitle:v29 style:1 handler:0];

  [v25 addAction:v31];
  v32 = [v10 mainBundle];
  v57._object = 0x8000000100579B60;
  v33._countAndFlagsBits = 0x4F545455425F4B4FLL;
  v33._object = 0xEF454C5449545F4ELL;
  v57._countAndFlagsBits = 0xD000000000000021;
  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v33, 0, v32, v34, v57);

  v35 = swift_allocObject();
  *(v35 + 16) = v46;
  *(v35 + 24) = v47;

  v36 = String._bridgeToObjectiveC()();

  v53 = sub_100009624;
  v54 = v35;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100017328;
  v52 = &unk_10062AA48;
  v37 = _Block_copy(aBlock);

  v38 = [v30 actionWithTitle:v36 style:0 handler:v37];
  _Block_release(v37);

  [v25 addAction:v38];
  v39 = v49;
  v52 = &type metadata for SolariumFeatureFlag;
  v53 = v48;
  LOBYTE(v36) = isFeatureEnabled(_:)();
  sub_100006060(aBlock);
  if ((v36 & 1) != 0 && v39)
  {
    v40 = v25;
    v41 = v39;
    v42 = [v40 popoverPresentationController];
    if (v42)
    {
      v43 = v42;
      [v42 setSourceView:v41];
    }

    v44 = [v40 popoverPresentationController];

    if (v44)
    {
      [v41 bounds];
      [v44 setSourceRect:?];
    }
  }

  [v50 presentViewController:v25 animated:1 completion:0];
}

id sub_100179E74()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMLostModeLandingViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FMLostModeLandingViewController(uint64_t a1)
{
  result = qword_1006B4390;
  if (!qword_1006B4390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100179F58()
{
  result = qword_1006C1D50;
  if (!qword_1006C1D50)
  {
    type metadata accessor for FMIPFeatures();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1D50);
  }

  return result;
}

double sub_100179FB0(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_100179FC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006B07D0, qword_100552820);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10017A05C()
{
  v8[3] = &type metadata for SolariumFeatureFlag;
  v8[4] = sub_10000BD04();
  v0 = isFeatureEnabled(_:)();
  result = sub_100006060(v8);
  v2 = 16.0;
  if ((v0 & 1) == 0)
  {
    if (qword_1006AEC30 != -1)
    {
      result = swift_once();
    }

    v2 = qword_1006D4798;
  }

  __asm { FMOV            V1.2D, #10.0 }

  xmmword_1006D3E20 = _Q1;
  *algn_1006D3E30 = _Q1;
  xmmword_1006D3E40 = xmmword_100556450;
  qword_1006D3E50 = v2;
  return result;
}

id sub_10017A328(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for FMSectionPlatterSwitchAndButtonGroupView();
  return objc_msgSendSuper2(&v4, "dealloc");
}

__n128 sub_10017A40C(uint64_t a1, uint64_t a2)
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

uint64_t sub_10017A428(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10017A448(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 56) = v3;
  return result;
}

uint64_t sub_10017A490(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC6FindMy40FMSectionPlatterSwitchAndButtonGroupView_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(a1, a2 & 1, ObjectType, v7);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10017A528()
{
  v1 = OBJC_IVAR____TtC6FindMy40FMSectionPlatterSwitchAndButtonGroupView_style;
  if (qword_1006AEAB8 != -1)
  {
    swift_once();
  }

  v2 = v0 + v1;
  v3 = qword_1006D3E50;
  v4 = *algn_1006D3E30;
  v5 = xmmword_1006D3E40;
  *v2 = xmmword_1006D3E20;
  *(v2 + 16) = v4;
  *(v2 + 32) = v5;
  *(v2 + 48) = v3;
  v6 = OBJC_IVAR____TtC6FindMy40FMSectionPlatterSwitchAndButtonGroupView_sectionLabel;
  *(v0 + v6) = [objc_allocWithZone(UILabel) init];
  v7 = OBJC_IVAR____TtC6FindMy40FMSectionPlatterSwitchAndButtonGroupView_contentView;
  *(v0 + v7) = [objc_allocWithZone(UIView) init];
  v8 = OBJC_IVAR____TtC6FindMy40FMSectionPlatterSwitchAndButtonGroupView_switchView;
  *(v0 + v8) = [objc_allocWithZone(type metadata accessor for FMSettingSwitchView()) init];
  *(v0 + OBJC_IVAR____TtC6FindMy40FMSectionPlatterSwitchAndButtonGroupView_switchViewIsVisible) = 1;
  v9 = OBJC_IVAR____TtC6FindMy40FMSectionPlatterSwitchAndButtonGroupView_separatorView;
  *(v0 + v9) = [objc_allocWithZone(UIView) init];
  v10 = OBJC_IVAR____TtC6FindMy40FMSectionPlatterSwitchAndButtonGroupView_actionButton;
  *(v0 + v10) = [objc_opt_self() buttonWithType:1];
  *(v0 + OBJC_IVAR____TtC6FindMy40FMSectionPlatterSwitchAndButtonGroupView_actionButtonIsVisible) = 1;
  *(v0 + OBJC_IVAR____TtC6FindMy40FMSectionPlatterSwitchAndButtonGroupView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC6FindMy40FMSectionPlatterSwitchAndButtonGroupView_isActionEnabled) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_10017A6D8()
{
  v1 = OBJC_IVAR____TtC6FindMy24FMAccessoryNameTextField_displayTextView;
  *&v0[v1] = [objc_allocWithZone(UITextView) init];
  v2 = OBJC_IVAR____TtC6FindMy24FMAccessoryNameTextField_placeholderTextView;
  *&v0[v2] = [objc_allocWithZone(UITextView) init];
  v3 = OBJC_IVAR____TtC6FindMy24FMAccessoryNameTextField_deleteButton;
  *&v0[v3] = [objc_allocWithZone(UIButton) init];
  v4 = &v0[OBJC_IVAR____TtC6FindMy24FMAccessoryNameTextField_text];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v0[OBJC_IVAR____TtC6FindMy24FMAccessoryNameTextField_textSizeHeightConstraint] = 0;
  v7.receiver = v0;
  v7.super_class = type metadata accessor for FMAccessoryNameTextField();
  v5 = objc_msgSendSuper2(&v7, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10017A810();
  sub_10017AC4C();

  return v5;
}

id sub_10017A810()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 tertiarySystemFillColor];
  [v1 setBackgroundColor:v3];

  v4 = [v1 layer];
  [v4 setCornerRadius:_UISheetCornerRadius];

  v5 = [v1 layer];
  [v5 setMasksToBounds:1];

  v6 = *&v1[OBJC_IVAR____TtC6FindMy24FMAccessoryNameTextField_displayTextView];
  v7 = objc_opt_self();
  v8 = [v7 preferredFontForTextStyle:UIFontTextStyleHeadline];
  sub_10007EBC0(&qword_1006BA720, &unk_1005565C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100552220;
  *(inited + 32) = UIFontWeightTrait;
  *(inited + 40) = UIFontWeightMedium;
  v10 = UIFontWeightTrait;
  v11 = sub_10002AB84(inited);
  swift_setDeallocating();
  sub_10002AC74(inited + 32);
  v12 = sub_10002ACDC(v11);

  [v6 setFont:v12];

  [v6 setDelegate:v1];
  v13 = [v2 clearColor];
  [v6 setBackgroundColor:v13];

  [v6 setAdjustsFontForContentSizeCategory:1];
  [v6 setScrollEnabled:0];
  [v6 setReturnKeyType:9];
  v14 = *&v1[OBJC_IVAR____TtC6FindMy24FMAccessoryNameTextField_placeholderTextView];
  v15 = [v7 preferredFontForTextStyle:UIFontTextStyleHeadline];
  [v14 setFont:v15];

  v16 = [v2 secondaryLabelColor];
  [v14 setTextColor:v16];

  v17 = [v2 clearColor];
  [v14 setBackgroundColor:v17];

  [v14 setAdjustsFontForContentSizeCategory:1];
  [v14 setScrollEnabled:0];
  [v14 setUserInteractionEnabled:0];
  v18 = *&v1[OBJC_IVAR____TtC6FindMy24FMAccessoryNameTextField_deleteButton];
  v19 = String._bridgeToObjectiveC()();
  v20 = [objc_opt_self() systemImageNamed:v19];

  [v18 setImage:v20 forState:0];
  [v18 addTarget:v1 action:"clearTextView" forControlEvents:64];
  [v18 setHidden:1];
  v21 = [v2 tertiaryLabelColor];
  [v18 setTintColor:v21];

  [v1 addSubview:v14];
  [v1 addSubview:v6];
  return [v1 addSubview:v18];
}

void sub_10017AC4C()
{
  sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100552EF0;
  v2 = *&v0[OBJC_IVAR____TtC6FindMy24FMAccessoryNameTextField_displayTextView];
  *(inited + 32) = v2;
  v3 = *&v0[OBJC_IVAR____TtC6FindMy24FMAccessoryNameTextField_deleteButton];
  *(inited + 40) = v3;
  v4 = *&v0[OBJC_IVAR____TtC6FindMy24FMAccessoryNameTextField_placeholderTextView];
  *(inited + 48) = v4;
  v5 = inited & 0xC000000000000001;
  v6 = v2;
  v7 = v3;
  v59 = v4;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_12;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

  for (i = v6; ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
  {
    v9 = i;
    [i setTranslatesAutoresizingMaskIntoConstraints:0];

    if (v5)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_11;
      }

      v10 = *(inited + 40);
    }

    v11 = v10;
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

    if (v5)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v12 = *(inited + 48);
      goto LABEL_10;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    ;
  }

  v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_10:
  v13 = v12;
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

  swift_setDeallocating();
  swift_arrayDestroy();
  v58 = objc_opt_self();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1005521F0;
  v15 = [v7 widthAnchor];
  v16 = [v15 constraintEqualToConstant:*&qword_1006BAFB8];

  *(v14 + 32) = v16;
  v17 = [v7 heightAnchor];
  v18 = [v17 constraintEqualToConstant:*&qword_1006BAFB8];

  *(v14 + 40) = v18;
  v19 = [v7 trailingAnchor];
  v20 = [v0 trailingAnchor];
  v21 = [v19 constraintEqualToAnchor:v20 constant:-*&qword_1006BAFB0];

  *(v14 + 48) = v21;
  v22 = [v7 centerYAnchor];
  v23 = [v0 centerYAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];

  *(v14 + 56) = v24;
  sub_10002B27C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v58 activateConstraints:isa];

  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1005521F0;
  v27 = [v6 topAnchor];
  v28 = [v0 topAnchor];
  v29 = [v27 constraintEqualToAnchor:v28 constant:*&qword_1006BAFB0];

  *(v26 + 32) = v29;
  v30 = [v6 leadingAnchor];
  v31 = [v0 leadingAnchor];
  v32 = [v30 constraintEqualToAnchor:v31 constant:*&qword_1006BAFB0];

  *(v26 + 40) = v32;
  v33 = [v6 trailingAnchor];
  v34 = [v7 leadingAnchor];
  v35 = [v33 constraintEqualToAnchor:v34 constant:-*&qword_1006BAFB0];

  *(v26 + 48) = v35;
  v36 = [v6 bottomAnchor];
  v37 = [v0 bottomAnchor];
  v38 = [v36 constraintEqualToAnchor:v37 constant:-*&qword_1006BAFB0];

  *(v26 + 56) = v38;
  v39 = Array._bridgeToObjectiveC()().super.isa;

  [v58 activateConstraints:v39];

  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_100552EF0;
  v41 = [v59 centerYAnchor];
  v42 = [v6 centerYAnchor];
  v43 = [v41 constraintEqualToAnchor:v42];

  *(v40 + 32) = v43;
  v44 = [v59 leadingAnchor];
  v45 = [v6 leadingAnchor];
  v46 = [v44 constraintEqualToAnchor:v45];

  *(v40 + 40) = v46;
  v47 = [v59 trailingAnchor];
  v48 = [v6 trailingAnchor];
  v49 = [v47 constraintEqualToAnchor:v48];

  *(v40 + 48) = v49;
  v50 = Array._bridgeToObjectiveC()().super.isa;

  [v58 activateConstraints:v50];

  v51 = [v6 heightAnchor];
  v52 = [v51 constraintEqualToConstant:0.0];

  LODWORD(v53) = 1148846080;
  [v52 setPriority:v53];
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_1005528C0;
  *(v54 + 32) = v52;
  v55 = v52;
  v56 = Array._bridgeToObjectiveC()().super.isa;

  [v58 activateConstraints:v56];

  v57 = *&v0[OBJC_IVAR____TtC6FindMy24FMAccessoryNameTextField_textSizeHeightConstraint];
  *&v0[OBJC_IVAR____TtC6FindMy24FMAccessoryNameTextField_textSizeHeightConstraint] = v55;
}

id sub_10017B490()
{
  v1 = (v0 + OBJC_IVAR____TtC6FindMy24FMAccessoryNameTextField_text);
  v2 = *(v0 + OBJC_IVAR____TtC6FindMy24FMAccessoryNameTextField_text + 8);
  if (v2)
  {
    if ((v2 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(v2) & 0xF;
    }

    else
    {
      v3 = *v1 & 0xFFFFFFFFFFFFLL;
    }

    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  [*(v0 + OBJC_IVAR____TtC6FindMy24FMAccessoryNameTextField_deleteButton) setHidden:v4];
  v5 = v1[1];
  if (v5)
  {
    if ((v5 & 0x2000000000000000) != 0)
    {
      v6 = HIBYTE(v5) & 0xF;
    }

    else
    {
      v6 = *v1 & 0xFFFFFFFFFFFFLL;
    }

    v7 = v6 != 0;
  }

  else
  {
    v7 = 0;
  }

  [*(v0 + OBJC_IVAR____TtC6FindMy24FMAccessoryNameTextField_placeholderTextView) setHidden:v7];
  v8 = *(v0 + OBJC_IVAR____TtC6FindMy24FMAccessoryNameTextField_displayTextView);
  [v8 frame];
  [v8 sizeThatFits:{CGRectGetWidth(v12), 1.79769313e308}];
  result = *(v0 + OBJC_IVAR____TtC6FindMy24FMAccessoryNameTextField_textSizeHeightConstraint);
  if (result)
  {

    return [result setConstant:v9];
  }

  return result;
}

void sub_10017B5B8(void *a1)
{
  v2 = v1;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100005B14(v4, qword_1006D4630);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = v9;
    *v8 = 136315138;
    v10 = [v5 text];

    if (!v10)
    {
      __break(1u);
      return;
    }

    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = sub_100005B4C(v11, v13, &v23);

    *(v8 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "FMCustomRoleView: displayTextViewDidChange %s", v8, 0xCu);
    sub_100006060(v9);
  }

  else
  {
  }

  v15 = *&v2[OBJC_IVAR____TtC6FindMy24FMAccessoryNameTextField_displayTextView];
  v16 = [v15 text];
  if (v16)
  {
    v17 = v16;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  v21 = &v2[OBJC_IVAR____TtC6FindMy24FMAccessoryNameTextField_text];
  *v21 = v18;
  v21[1] = v20;

  if (v20)
  {

    v22 = String._bridgeToObjectiveC()();
  }

  else
  {
    v22 = 0;
  }

  [v15 setText:v22];

  sub_10017B490();

  [v2 sendActionsForControlEvents:4096];
}

char *sub_10017B8EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4 == 10 && a5 == 0xE100000000000000 || (v7 = a1, v8 = _stringCompareWithSmolCheck(_:_:expecting:)(), a1 = v7, (v8 & 1) != 0))
  {
    [a1 resignFirstResponder];
    return 0;
  }

  result = [*(v5 + OBJC_IVAR____TtC6FindMy24FMAccessoryNameTextField_displayTextView) text];
  if (result)
  {
    v10 = result;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v11 = String.count.getter();

    result = String.count.getter();
    v12 = &result[-a3];
    if (__OFSUB__(result, a3))
    {
      __break(1u);
    }

    else
    {
      v13 = __OFADD__(v11, v12);
      v14 = &v12[v11];
      if (!v13)
      {
        return (qword_1006BAFC0 >= v14);
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_10017BBE4()
{
  sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1005528C0;
  v2 = *&v0[OBJC_IVAR____TtC6FindMy35FMAccessoryPairingNameSelectionCard_nameLabel];
  *(inited + 32) = v2;
  v3 = v2;
  v4 = v3;
  if ((inited & 0xC000000000000001) != 0)
  {
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_4;
  }

  if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = v3;
LABEL_4:
    v6 = v5;
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

    swift_setDeallocating();
    swift_arrayDestroy();
    v29 = objc_opt_self();
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1005521F0;
    v8 = [v4 topAnchor];
    v9 = [v0 contentView];
    v10 = [v9 mainContentGuide];

    v11 = [v10 topAnchor];
    v12 = [v8 constraintEqualToAnchor:v11];

    *(v7 + 32) = v12;
    v13 = [v4 leadingAnchor];
    v14 = [v0 contentView];
    v15 = [v14 mainContentGuide];

    v16 = [v15 leadingAnchor];
    v17 = [v13 constraintEqualToAnchor:v16];

    *(v7 + 40) = v17;
    v18 = [v4 trailingAnchor];
    v19 = [v0 contentView];
    v20 = [v19 mainContentGuide];

    v21 = [v20 trailingAnchor];
    v22 = [v18 constraintEqualToAnchor:v21];

    *(v7 + 48) = v22;
    v23 = [v4 bottomAnchor];
    v24 = [v0 contentView];
    v25 = [v24 mainContentGuide];

    v26 = [v25 bottomAnchor];
    v27 = [v23 constraintEqualToAnchor:v26];

    *(v7 + 56) = v27;
    sub_10002B27C();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v29 activateConstraints:isa];

    return;
  }

  __break(1u);
}

id sub_10017BF8C(uint64_t a1, NSString a2)
{
  v3 = v2;
  v6 = objc_opt_self();
  v7 = [v6 mainBundle];
  v28._object = 0x8000000100579A00;
  v8._countAndFlagsBits = 0xD00000000000001FLL;
  v8._object = 0x8000000100582C30;
  v9.value._object = 0x80000001005799E0;
  v28._countAndFlagsBits = 0xD000000000000018;
  v9.value._countAndFlagsBits = 0xD000000000000013;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v9, v7, v10, v28);

  v11 = String._bridgeToObjectiveC()();

  [v3 setTitle:v11];

  v12 = [v6 mainBundle];
  v29._object = 0x8000000100579A00;
  v13._countAndFlagsBits = 0xD000000000000025;
  v13._object = 0x8000000100582C50;
  v14.value._object = 0x80000001005799E0;
  v29._countAndFlagsBits = 0xD000000000000018;
  v14.value._countAndFlagsBits = 0xD000000000000013;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v14, v12, v15, v29);

  v16 = String._bridgeToObjectiveC()();

  [v3 setSubtitle:v16];

  v17 = *&v3[OBJC_IVAR____TtC6FindMy35FMAccessoryPairingNameSelectionCard_nameLabel];
  v18 = &v17[OBJC_IVAR____TtC6FindMy24FMAccessoryNameTextField_text];
  *v18 = a1;
  *(v18 + 1) = a2;

  v19 = *&v17[OBJC_IVAR____TtC6FindMy24FMAccessoryNameTextField_displayTextView];
  if (a2)
  {

    a2 = String._bridgeToObjectiveC()();
  }

  [v19 setText:a2];

  sub_10017B490();
  [v17 sendActionsForControlEvents:4096];
  v20 = [v6 mainBundle];
  v30._object = 0x8000000100579A00;
  v21._countAndFlagsBits = 0xD000000000000025;
  v21._object = 0x8000000100582C80;
  v22.value._object = 0x80000001005799E0;
  v30._countAndFlagsBits = 0xD000000000000018;
  v22.value._countAndFlagsBits = 0xD000000000000013;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v21, v22, v20, v23, v30);

  v24 = *&v17[OBJC_IVAR____TtC6FindMy24FMAccessoryNameTextField_placeholderTextView];
  v25 = String._bridgeToObjectiveC()();

  [v24 setText:v25];

  return [v3 setDismissalType:3];
}

id sub_10017C268()
{
  v1 = [objc_opt_self() mainBundle];
  v17._object = 0x8000000100579A00;
  v2._countAndFlagsBits = 0xD000000000000029;
  v2._object = 0x8000000100582BE0;
  v3.value._object = 0x80000001005799E0;
  v17._countAndFlagsBits = 0xD000000000000018;
  v3.value._countAndFlagsBits = 0xD000000000000013;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v3, v1, v4, v17);

  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v6 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_10017C88C;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100017328;
  aBlock[3] = &unk_10062AB98;
  v7 = _Block_copy(aBlock);
  v8 = objc_opt_self();

  v9 = [v8 actionWithTitle:v6 style:0 handler:v7];

  _Block_release(v7);

  v10 = [v0 addAction:v9];

  v11 = OBJC_IVAR____TtC6FindMy35FMAccessoryPairingNameSelectionCard_continueAction;
  v12 = *&v0[OBJC_IVAR____TtC6FindMy35FMAccessoryPairingNameSelectionCard_continueAction];
  *&v0[OBJC_IVAR____TtC6FindMy35FMAccessoryPairingNameSelectionCard_continueAction] = v9;

  if (*(*&v0[OBJC_IVAR____TtC6FindMy35FMAccessoryPairingNameSelectionCard_nameLabel] + OBJC_IVAR____TtC6FindMy24FMAccessoryNameTextField_text + 8))
  {

    v13 = String.characterCount.getter();

    v14 = v13 != 0;
    result = *&v0[v11];
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v14 = 1;
    result = *&v0[v11];
    if (!result)
    {
      return result;
    }
  }

  return [result setEnabled:v14];
}

void sub_10017C4D8(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for FMAccessoryPairingCoordinator.Event(0);
  __chkstk_darwin(v2);
  v4 = (&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = (*(Strong + OBJC_IVAR____TtC6FindMy35FMAccessoryPairingNameSelectionCard_nameLabel) + OBJC_IVAR____TtC6FindMy24FMAccessoryNameTextField_text);
    v8 = v7[1];
    if (v8 && (v9 = *v7, (v10 = swift_unknownObjectWeakLoadStrong()) != 0))
    {
      v11 = v10;
      *v4 = v9;
      v4[1] = v8;
      swift_storeEnumTagMultiPayload();

      sub_100123FF0(v4);

      sub_10017C894(v4);
    }

    else
    {
    }
  }
}

id sub_10017C5FC()
{
  if (*(*(v0 + OBJC_IVAR____TtC6FindMy35FMAccessoryPairingNameSelectionCard_nameLabel) + OBJC_IVAR____TtC6FindMy24FMAccessoryNameTextField_text + 8))
  {

    v1 = String.characterCount.getter();

    v2 = v1 != 0;
  }

  else
  {
    v2 = 1;
  }

  result = *(v0 + OBJC_IVAR____TtC6FindMy35FMAccessoryPairingNameSelectionCard_continueAction);
  if (result)
  {

    return [result setEnabled:v2];
  }

  return result;
}

id sub_10017C7C4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10017C894(uint64_t a1)
{
  v2 = type metadata accessor for FMAccessoryPairingCoordinator.Event(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10017C8F0()
{
  v1 = OBJC_IVAR____TtC6FindMy24FMAccessoryNameTextField_displayTextView;
  *(v0 + v1) = [objc_allocWithZone(UITextView) init];
  v2 = OBJC_IVAR____TtC6FindMy24FMAccessoryNameTextField_placeholderTextView;
  *(v0 + v2) = [objc_allocWithZone(UITextView) init];
  v3 = OBJC_IVAR____TtC6FindMy24FMAccessoryNameTextField_deleteButton;
  *(v0 + v3) = [objc_allocWithZone(UIButton) init];
  v4 = (v0 + OBJC_IVAR____TtC6FindMy24FMAccessoryNameTextField_text);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy24FMAccessoryNameTextField_textSizeHeightConstraint) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_10017C9D0()
{
  v1 = v0;
  v2 = type metadata accessor for CharacterSet();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *&v0[OBJC_IVAR____TtC6FindMy24FMAccessoryNameTextField_displayTextView];
  result = [v7 text];
  if (result)
  {
    v9 = result;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v18[0] = v10;
    v18[1] = v12;
    static CharacterSet.whitespacesAndNewlines.getter();
    sub_100035F3C();
    v13 = StringProtocol.trimmingCharacters(in:)();
    v15 = v14;
    (*(v3 + 8))(v6, v2);

    v16 = &v1[OBJC_IVAR____TtC6FindMy24FMAccessoryNameTextField_text];
    *v16 = v13;
    v16[1] = v15;

    v17 = String._bridgeToObjectiveC()();

    [v7 setText:v17];

    sub_10017B490();
    return [v1 sendActionsForControlEvents:4096];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10017CB84(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_10017CBE0(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_10017CC9C(char a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10007EBC0(&qword_1006B3298, &unk_100558AB0);
  *&v7 = __chkstk_darwin(v6 - 8).n128_u64[0];
  v9 = &v20 - v8;
  v10 = *(v3 + OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_label);
  [v10 setFont:{*(v3 + OBJC_IVAR____TtC6FindMy25FMNotificationPlatterView_preferredFont), v7}];
  if ((a1 & 1) != 0 && a3)
  {
    v11 = String._bridgeToObjectiveC()();
    [v10 setText:v11];

    *(v3 + OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_isChevronVisible) = 0;
    sub_1002B1E98();
    v12 = type metadata accessor for FMPlatterIcon(0);
  }

  else
  {
    v13 = [objc_opt_self() mainBundle];
    v21._object = 0x800000010057ABB0;
    v14._countAndFlagsBits = 0xD00000000000002BLL;
    v14._object = 0x8000000100582DB0;
    v15.value._object = 0x800000010057AB90;
    v21._countAndFlagsBits = 0xD000000000000017;
    v15.value._countAndFlagsBits = 0xD000000000000012;
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v14, v15, v13, v16, v21);

    v17 = String._bridgeToObjectiveC()();

    [v10 setText:v17];

    [v10 setNumberOfLines:1];
    [v10 setAdjustsFontSizeToFitWidth:1];
    *(v3 + OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_isChevronVisible) = 1;
    sub_1002B1E98();
    v12 = type metadata accessor for FMPlatterIcon(0);
  }

  swift_storeEnumTagMultiPayload();
  (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  v18 = OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_platterIcon;
  swift_beginAccess();
  sub_100140BE4(v9, v3 + v18);
  swift_endAccess();
  sub_1002B23D8();
  return sub_10017D238(v9);
}

void sub_10017CF4C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_subtitle);
  v6 = [objc_opt_self() mainBundle];
  v13._object = 0x800000010057ABB0;
  v7._countAndFlagsBits = 0xD000000000000026;
  v7._object = 0x8000000100582D80;
  v8.value._object = 0x800000010057AB90;
  v13._countAndFlagsBits = 0xD000000000000017;
  v8.value._countAndFlagsBits = 0xD000000000000012;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v8, v6, v9, v13);

  sub_10007EBC0(&unk_1006B20B0, &unk_1005523B0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100552220;
  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = sub_10008EE84();
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;

  String.init(format:_:)();

  v11 = String._bridgeToObjectiveC()();

  [v5 setText:v11];
}

void sub_10017D0D8()
{
  v1 = *(v0 + OBJC_IVAR____TtC6FindMy25FMNotificationPlatterView_preferredFont);
}

id sub_10017D118()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMNotificationPlatterView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FMNotificationPlatterView(uint64_t a1)
{
  result = qword_1006B47E0;
  if (!qword_1006B47E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10017D238(uint64_t a1)
{
  v2 = sub_10007EBC0(&qword_1006B3298, &unk_100558AB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Int sub_10017D2A0()
{
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v2 = 2;
      goto LABEL_11;
    }

    if (v1 == 3)
    {
      v2 = 3;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v1)
    {
      v2 = 0;
      goto LABEL_11;
    }

    if (v1 == 1)
    {
      v2 = 1;
LABEL_11:
      Hasher._combine(_:)(v2);
      return Hasher._finalize()();
    }
  }

  Hasher._combine(_:)(4uLL);
  String.hash(into:)();
  return Hasher._finalize()();
}

void sub_10017D358(uint64_t a1)
{
  v2 = *(v1 + 8);
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v3 = 2;
      goto LABEL_13;
    }

    if (v2 == 3)
    {
      v3 = 3;
      goto LABEL_13;
    }
  }

  else
  {
    if (!v2)
    {
      v3 = 0;
      goto LABEL_13;
    }

    if (v2 == 1)
    {
      v3 = 1;
LABEL_13:
      Hasher._combine(_:)(v3);
      return;
    }
  }

  Hasher._combine(_:)(4uLL);

  String.hash(into:)();
}

Swift::Int sub_10017D408(uint64_t a1)
{
  v2 = *(v1 + 8);
  Hasher.init(_seed:)();
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v3 = 2;
      goto LABEL_11;
    }

    if (v2 == 3)
    {
      v3 = 3;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v2)
    {
      v3 = 0;
      goto LABEL_11;
    }

    if (v2 == 1)
    {
      v3 = 1;
LABEL_11:
      Hasher._combine(_:)(v3);
      return Hasher._finalize()();
    }
  }

  Hasher._combine(_:)(4uLL);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10017D4BC(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1];
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      if (v5 == 3)
      {
        return v6 == 3;
      }

LABEL_10:
      if (v6 >= 4)
      {
        if (v4 != *a2 || v5 != v6)
        {
          return _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        return 1;
      }

      return 0;
    }

    if (v6 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v5)
    {
      if (v5 == 1)
      {
        return v6 == 1;
      }

      goto LABEL_10;
    }

    if (v6)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_10017D548(uint64_t a1)
{
  v3 = type metadata accessor for FMAnnotationIdentifier(0);
  __chkstk_darwin(v3);
  v5 = (&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_10007EBC0(&unk_1006B4970, qword_1005567C0);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v10 = (&v20 + *(v9 + 56) - v7);
  sub_10017E674(v1, &v20 - v7);
  sub_10017E674(a1, v10);
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    goto LABEL_17;
  }

  sub_10017E674(v8, v5);
  v12 = *v5;
  v11 = v5[1];

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 4)
  {
    v15 = *v10;
    v16 = v10[1];

    if (v12 != v15 || v11 != v16)
    {
      goto LABEL_13;
    }

LABEL_14:
    v18 = 1;
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload != 2)
  {

LABEL_17:
    sub_100012DF0(v8, &unk_1006B4970, qword_1005567C0);
    v18 = 0;
    return v18 & 1;
  }

  if (v12 == *v10 && v11 == v10[1])
  {
    goto LABEL_14;
  }

LABEL_13:
  v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
LABEL_15:

  sub_10017E6D8(v8);
  return v18 & 1;
}

double sub_10017D71C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FMAnnotationIdentifier(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v24 - v13;
  sub_10017E674(v2, &v24 - v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v16 = 3;
      }

      else
      {
        v16 = 4;
      }
    }

    else if (EnumCaseMultiPayload)
    {
      v16 = 2;
    }

    else
    {
      v16 = 1;
    }

    Hasher._combine(_:)(v16);
    String.hash(into:)();
LABEL_19:

    return result;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      (*(v5 + 32))(v7, v14, v4);
      Hasher._combine(_:)(6uLL);
      sub_100013840(&unk_1006C2410, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      (*(v5 + 8))(v7, v4);
      return result;
    }

    Hasher._combine(_:)(5uLL);
    String.hash(into:)();

    String.hash(into:)();
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload != 6)
  {
    Hasher._combine(_:)(0);
    return result;
  }

  v17 = *(*v14 + 24);
  v18 = *(*v14 + 32);
  Hasher._combine(_:)(7uLL);
  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v19 = 2;
      goto LABEL_27;
    }

    if (v17 == 3)
    {
      v19 = 3;
      goto LABEL_27;
    }
  }

  else
  {
    if (!v17)
    {
      v19 = 0;
      goto LABEL_27;
    }

    if (v17 == 1)
    {
      v19 = 1;
LABEL_27:
      Hasher._combine(_:)(v19);
      goto LABEL_28;
    }
  }

  Hasher._combine(_:)(4uLL);
  String.hash(into:)();
LABEL_28:
  Hasher._combine(_:)(*(v18 + 16));
  v21 = *(v18 + 16);
  if (v21)
  {
    v22 = v18 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v23 = *(v9 + 72);
    do
    {
      sub_10017E674(v22, v11);
      sub_10017D71C(a1);
      sub_10017E6D8(v11);
      v22 += v23;
      --v21;
    }

    while (v21);
  }

  return result;
}

Swift::Int sub_10017DAD4()
{
  Hasher.init(_seed:)();
  sub_10017D71C(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10017DB18(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_10017D71C(v2);
  return Hasher._finalize()();
}

uint64_t sub_10017DC4C@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_1006AEBD8 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_10017EDAC(&xmmword_1006D4580, v2);
}

uint64_t sub_10017DE2C(uint64_t a1)
{
  swift_getObjectType();
  v3 = type metadata accessor for FMAnnotationIdentifier(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v39 - v7;
  sub_10017EE08(a1, v41);
  if (v42)
  {
    if (swift_dynamicCast())
    {
      v9 = v40;
      v10 = *(v1 + OBJC_IVAR____TtC6FindMy12FMAnnotation_stewieBadgeImage);
      v11 = *(v40 + OBJC_IVAR____TtC6FindMy12FMAnnotation_stewieBadgeImage);
      if (v10)
      {
        if (!v11)
        {
          goto LABEL_35;
        }

        sub_10000905C(0, &qword_1006BC2B0, UIImage_ptr);
        v12 = v11;
        v13 = v10;
        v14 = static NSObject.== infix(_:_:)();

        if ((v14 & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      else if (v11)
      {
        goto LABEL_35;
      }

      v15 = v1;
      v16 = (*((swift_isaMask & *v1) + 0x190))();
      (*((swift_isaMask & *v9) + 0x190))(v16);
      v17 = sub_10017E734(v8, v5);
      sub_10017E6D8(v5);
      sub_10017E6D8(v8);
      if ((v17 & 1) == 0)
      {
        goto LABEL_35;
      }

      sub_10000905C(0, &qword_1006B4980, NSObject_ptr);
      v18 = (*((swift_isaMask & *v15) + 0x188))();
      v19 = (*((swift_isaMask & *v9) + 0x188))();
      v20 = static NSObject.== infix(_:_:)();

      if ((v20 & 1) == 0)
      {
        goto LABEL_35;
      }

      v21 = (*((swift_isaMask & *v15) + 0x198))();
      if ((v21 ^ (*((swift_isaMask & *v9) + 0x198))()))
      {
        goto LABEL_35;
      }

      [v15 coordinate];
      v23 = v22;
      [v9 coordinate];
      if (v23 != v24)
      {
        goto LABEL_35;
      }

      [v15 coordinate];
      v26 = v25;
      [v9 coordinate];
      if (v26 != v27 || *(v15 + OBJC_IVAR____TtC6FindMy12FMAnnotation_horizontalAccuracy) != *(v9 + OBJC_IVAR____TtC6FindMy12FMAnnotation_horizontalAccuracy))
      {
        goto LABEL_35;
      }

      v28 = *(v15 + OBJC_IVAR____TtC6FindMy12FMAnnotation_fmClusterIdentifier + 8);
      v29 = *(v9 + OBJC_IVAR____TtC6FindMy12FMAnnotation_fmClusterIdentifier + 8);
      if (v28 > 1)
      {
        if (v28 == 2)
        {
          if (v29 != 2)
          {
            goto LABEL_35;
          }

          goto LABEL_32;
        }

        if (v28 == 3)
        {
          if (v29 != 3)
          {
            goto LABEL_35;
          }

          goto LABEL_32;
        }
      }

      else
      {
        if (!v28)
        {
          if (v29)
          {
            goto LABEL_35;
          }

          goto LABEL_32;
        }

        if (v28 == 1)
        {
          if (v29 != 1)
          {
            goto LABEL_35;
          }

          goto LABEL_32;
        }
      }

      if (v29 < 4 || (*(v15 + OBJC_IVAR____TtC6FindMy12FMAnnotation_fmClusterIdentifier) != *(v9 + OBJC_IVAR____TtC6FindMy12FMAnnotation_fmClusterIdentifier) || v28 != v29) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_35;
      }

LABEL_32:
      if (*(v15 + OBJC_IVAR____TtC6FindMy12FMAnnotation_isInaccurate) != *(v9 + OBJC_IVAR____TtC6FindMy12FMAnnotation_isInaccurate) || *(v15 + OBJC_IVAR____TtC6FindMy12FMAnnotation_isLive) != *(v9 + OBJC_IVAR____TtC6FindMy12FMAnnotation_isLive) || *(v15 + OBJC_IVAR____TtC6FindMy12FMAnnotation_isWithYou) != *(v9 + OBJC_IVAR____TtC6FindMy12FMAnnotation_isWithYou))
      {
        goto LABEL_35;
      }

      v32 = *(v15 + OBJC_IVAR____TtC6FindMy12FMAnnotation_title + 8);
      v33 = *(v9 + OBJC_IVAR____TtC6FindMy12FMAnnotation_title + 8);
      if (v32)
      {
        if (!v33 || (*(v15 + OBJC_IVAR____TtC6FindMy12FMAnnotation_title) != *(v9 + OBJC_IVAR____TtC6FindMy12FMAnnotation_title) || v32 != v33) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_35;
        }

LABEL_45:
        v34 = *(v15 + OBJC_IVAR____TtC6FindMy12FMAnnotation_badgeImage);
        v35 = *(v9 + OBJC_IVAR____TtC6FindMy12FMAnnotation_badgeImage);
        if (!v34)
        {
          v38 = v35;

          if (!v35)
          {
            v30 = 1;
            return v30 & 1;
          }

          goto LABEL_36;
        }

        if (v35)
        {
          sub_10000905C(0, &qword_1006BC2B0, UIImage_ptr);
          v36 = v35;
          v37 = v34;
          v30 = static NSObject.== infix(_:_:)();

          return v30 & 1;
        }

        goto LABEL_35;
      }

      if (!v33)
      {
        goto LABEL_45;
      }

LABEL_35:
    }
  }

  else
  {
    sub_100012DF0(v41, &unk_1006B8740, &unk_100552DA0);
  }

LABEL_36:
  v30 = 0;
  return v30 & 1;
}

id sub_10017E47C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMAnnotation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10017E524(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10017E53C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10017E590(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

void *sub_10017E5EC(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_10017E620()
{
  result = qword_1006B4928;
  if (!qword_1006B4928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B4928);
  }

  return result;
}

uint64_t sub_10017E674(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMAnnotationIdentifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10017E6D8(uint64_t a1)
{
  v2 = type metadata accessor for FMAnnotationIdentifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10017E734(uint64_t a1, uint64_t a2)
{
  v69 = a2;
  v3 = type metadata accessor for UUID();
  v67 = *(v3 - 8);
  v68 = v3;
  __chkstk_darwin(v3);
  v66 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FMAnnotationIdentifier(0);
  __chkstk_darwin(v5);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v66 - v9;
  __chkstk_darwin(v11);
  v13 = (&v66 - v12);
  __chkstk_darwin(v14);
  v16 = (&v66 - v15);
  __chkstk_darwin(v17);
  v19 = (&v66 - v18);
  __chkstk_darwin(v20);
  v22 = (&v66 - v21);
  __chkstk_darwin(v23);
  v25 = (&v66 - v24);
  v26 = sub_10007EBC0(&unk_1006B4970, qword_1005567C0);
  __chkstk_darwin(v26 - 8);
  v29 = (&v66 + *(v28 + 56) - v27);
  v30 = a1;
  v31 = &v66 - v27;
  sub_10017E674(v30, &v66 - v27);
  sub_10017E674(v69, v29);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_10017E674(v31, v19);
        v44 = *v19;
        v43 = v19[1];
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          if (v44 != *v29 || v43 != v29[1])
          {
LABEL_34:
            v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v52 & 1) == 0)
            {
              goto LABEL_72;
            }

            goto LABEL_45;
          }

          goto LABEL_44;
        }
      }

      else
      {
        sub_10017E674(v31, v16);
        v34 = *v16;
        v33 = v16[1];
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          goto LABEL_30;
        }
      }
    }

    else if (EnumCaseMultiPayload)
    {
      sub_10017E674(v31, v22);
      v34 = *v22;
      v33 = v22[1];
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        goto LABEL_30;
      }
    }

    else
    {
      sub_10017E674(v31, v25);
      v34 = *v25;
      v33 = v25[1];
      if (!swift_getEnumCaseMultiPayload())
      {
LABEL_30:
        if (v34 != *v29 || v33 != v29[1])
        {
          goto LABEL_34;
        }

LABEL_44:

LABEL_45:
        v59 = v31;
        goto LABEL_46;
      }
    }

    goto LABEL_39;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      sub_10017E674(v31, v13);
      v36 = *v13;
      v35 = v13[1];
      v38 = v13[2];
      v37 = v13[3];
      if (swift_getEnumCaseMultiPayload() != 4)
      {

LABEL_39:

        goto LABEL_40;
      }

      v40 = v29[2];
      v39 = v29[3];
      if (v36 == *v29 && v35 == v29[1])
      {
      }

      else
      {
        v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v42 & 1) == 0)
        {

LABEL_72:
          sub_10017E6D8(v31);
          goto LABEL_41;
        }
      }

      if (v38 == v40 && v37 == v39)
      {

        v59 = v31;
      }

      else
      {
        v61 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v61 & 1) == 0)
        {
          goto LABEL_72;
        }

        v59 = v31;
      }

LABEL_46:
      sub_10017E6D8(v59);
      v57 = 1;
      return v57 & 1;
    }

    sub_10017E674(v31, v10);
    if (swift_getEnumCaseMultiPayload() != 5)
    {
      (*(v67 + 8))(v10, v68);
      goto LABEL_40;
    }

    v54 = v66;
    v53 = v67;
    v55 = v29;
    v56 = v68;
    (*(v67 + 32))(v66, v55, v68);
    v57 = static UUID.== infix(_:_:)();
    v58 = *(v53 + 8);
    v58(v54, v56);
    v58(v10, v56);
LABEL_75:
    sub_10017E6D8(v31);
    return v57 & 1;
  }

  if (EnumCaseMultiPayload == 6)
  {
    sub_10017E674(v31, v7);
    v47 = *(*v7 + 16);
    v46 = *(*v7 + 24);
    v48 = *(*v7 + 32);
    if (swift_getEnumCaseMultiPayload() != 6)
    {

      goto LABEL_40;
    }

    v49 = *(*v29 + 24);
    v50 = *(*v29 + 32);
    if (v46 > 1)
    {
      if (v46 != 2)
      {
        if (v46 == 3)
        {
          if (v49 == 3)
          {
            goto LABEL_74;
          }

          goto LABEL_71;
        }

LABEL_63:
        if (v49 >= 4)
        {
          if (v47 == *(*v29 + 16) && v46 == v49)
          {
            goto LABEL_74;
          }

          v63 = *(*v29 + 32);
          v64 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v50 = v63;
          if (v64)
          {
            goto LABEL_74;
          }
        }

        goto LABEL_71;
      }

      if (v49 != 2)
      {
        goto LABEL_71;
      }
    }

    else
    {
      if (v46)
      {
        if (v46 == 1)
        {
          if (v49 == 1)
          {
            goto LABEL_74;
          }

LABEL_71:

          goto LABEL_72;
        }

        goto LABEL_63;
      }

      if (v49)
      {
        goto LABEL_71;
      }
    }

LABEL_74:
    v57 = sub_100244CC8(v48, v50);

    goto LABEL_75;
  }

  if (swift_getEnumCaseMultiPayload() == 7)
  {
    goto LABEL_45;
  }

LABEL_40:
  sub_100012DF0(v31, &unk_1006B4970, qword_1005567C0);
LABEL_41:
  v57 = 0;
  return v57 & 1;
}