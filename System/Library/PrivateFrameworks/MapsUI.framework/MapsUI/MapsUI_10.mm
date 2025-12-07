id sub_1C5722E6C()
{
  result = [*v0 sequenceForRow:0 outIsNewLine:0 outNextLineIsSame:0];
  if (result)
  {
    result = [result containerLabelItems];
    if (result)
    {
      v2 = result;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DD38, &qword_1C5868370);
      v3 = sub_1C584F770();
      swift_unknownObjectRelease();

      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1C5722F1C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170890, &qword_1C5879340);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170898, &unk_1C5877FF0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1C5723064(uint64_t a1)
{
  v2 = type metadata accessor for TransitDeparturesRowViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C57230E8(uint64_t a1)
{
  sub_1C5626E40(319, &qword_1EC170870, 0x1E696F3D8);
  if (v1 <= 0x3F)
  {
    sub_1C5626E40(319, &qword_1EC170878, 0x1E696F400);
    if (v2 <= 0x3F)
    {
      sub_1C584EB30();
      if (v3 <= 0x3F)
      {
        sub_1C57231C4(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C57231C4(uint64_t a1)
{
  if (!qword_1EC170880)
  {
    sub_1C584ED80();
    v1 = sub_1C584FAF0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC170880);
    }
  }
}

id AspectRatioLayout.__allocating_init(item:aspectRatio:)(void *a1, double a2)
{
  v5 = objc_allocWithZone(v2);
  [a1 _mapsui_disableTranslatesAutoresizingMaskIntoConstraints];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1708A0, &unk_1C5878000);
  swift_unknownObjectRetain();
  sub_1C56236C4();
  *&v9[1] = a2;
  *&v5[OBJC_IVAR___MUAspectRatioLayoutInternal_builder] = sub_1C562370C(v9);

  v7 = sub_1C562389C(v6, &off_1F44C6BC0);
  swift_unknownObjectRelease();
  return v7;
}

id AspectRatioLayout.init(item:aspectRatio:)(void *a1, double a2)
{
  [a1 _mapsui_disableTranslatesAutoresizingMaskIntoConstraints];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1708A0, &unk_1C5878000);
  swift_unknownObjectRetain();
  sub_1C56236C4();
  *&v7[1] = a2;
  *(v2 + OBJC_IVAR___MUAspectRatioLayoutInternal_builder) = sub_1C562370C(v7);

  v5 = sub_1C562389C(v4, &off_1F44C6BC0);
  swift_unknownObjectRelease();
  return v5;
}

uint64_t AspectRatioLayout.item.getter()
{
  sub_1C5623A68(v2);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1C5723500(v2);
  return Strong;
}

uint64_t AspectRatioLayout.item.setter(id a1)
{
  if (a1)
  {
    [a1 _mapsui_disableTranslatesAutoresizingMaskIntoConstraints];
  }

  sub_1C5623A68(v4);
  swift_unknownObjectWeakAssign();
  sub_1C5723648(v4, v3);
  sub_1C5623B40(v3, v1);
  swift_unknownObjectRelease();
  return sub_1C5723500(v4);
}

uint64_t sub_1C5723680@<X0>(uint64_t *a1@<X8>)
{
  sub_1C5623A68(v4);
  Strong = swift_unknownObjectWeakLoadStrong();
  result = sub_1C5723500(v4);
  *a1 = Strong;
  return result;
}

uint64_t sub_1C57236D8(void *a1, uint64_t a2)
{
  if (*a1)
  {
    [swift_unknownObjectRetain() _mapsui_disableTranslatesAutoresizingMaskIntoConstraints];
  }

  sub_1C5623A68(v5);
  swift_unknownObjectWeakAssign();
  sub_1C5723648(v5, v4);
  sub_1C5623B40(v4, v2);
  swift_unknownObjectRelease();
  return sub_1C5723500(v5);
}

void (*AspectRatioLayout.item.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
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
  *(v3 + 40) = *(v1 + OBJC_IVAR___MUAspectRatioLayoutInternal_builder);
  sub_1C5623A68(v3);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1C5723500(v4);
  *(v4 + 32) = Strong;
  return sub_1C57237FC;
}

void sub_1C57237FC(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  if (a2)
  {
    if (v3)
    {
      [swift_unknownObjectRetain() _mapsui_disableTranslatesAutoresizingMaskIntoConstraints];
    }

    sub_1C5623A68(v2);
    v4 = swift_unknownObjectWeakAssign();
    sub_1C5723648(v4, v2 + 16);
    sub_1C5623B40(v2 + 16, v5);
    swift_unknownObjectRelease();
    sub_1C5723500(v2);
    swift_unknownObjectRelease();
  }

  else
  {
    if (v3)
    {
      [*(*a1 + 32) _mapsui_disableTranslatesAutoresizingMaskIntoConstraints];
    }

    sub_1C5623A68(v2);
    v6 = swift_unknownObjectWeakAssign();
    sub_1C5723648(v6, v2 + 16);
    sub_1C5623B40(v2 + 16, v7);
    swift_unknownObjectRelease();
    sub_1C5723500(v2);
  }

  free(v2);
}

double AspectRatioLayout.aspectRatio.getter()
{
  sub_1C5623A68(v2);
  v0 = *&v2[1];
  sub_1C5723500(v2);
  return v0;
}

uint64_t AspectRatioLayout.aspectRatio.setter(double a1)
{
  sub_1C5623A68(v5);
  v6 = a1;
  sub_1C5723648(v5, v4);
  sub_1C5623B40(v4, v2);
  return sub_1C5723500(v5);
}

uint64_t sub_1C5723A7C@<X0>(void *a1@<X8>)
{
  sub_1C5623A68(v4);
  v2 = v4[1];
  result = sub_1C5723500(v4);
  *a1 = v2;
  return result;
}

uint64_t sub_1C5723AD4(uint64_t *a1)
{
  v1 = *a1;
  sub_1C5623A68(v5);
  v6 = v1;
  sub_1C5723648(v5, v4);
  sub_1C5623B40(v4, v2);
  return sub_1C5723500(v5);
}

void (*AspectRatioLayout.aspectRatio.modify(uint64_t *a1))(uint64_t *a1)
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
  *(v3 + 40) = *(v1 + OBJC_IVAR___MUAspectRatioLayoutInternal_builder);
  sub_1C5623A68(v3);
  v5 = *(v4 + 8);
  sub_1C5723500(v4);
  *(v4 + 32) = v5;
  return sub_1C5723BE4;
}

void sub_1C5723BE4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  sub_1C5623A68(*a1);
  v1[1] = v2;
  sub_1C5723648(v1, (v1 + 2));
  sub_1C5623B40((v1 + 2), v3);
  sub_1C5723500(v1);

  free(v1);
}

uint64_t sub_1C5723C50()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E8B0, &qword_1C5869AC0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1C5867900;
  sub_1C56250A4(v0, v7);
  v7[16] = 0;
  sub_1C56250A4(v0, v6);
  v6[16] = 0;
  v2 = *(v0 + 8);
  v3 = sub_1C57057B4();
  v4 = sub_1C57056F8();
  sub_1C5625108(v7, 7, 0, v6, 8, 0, 0, v1 + 32, v2, v3, v4);
  return v1;
}

uint64_t sub_1C5723D10()
{
  sub_1C584FEA0();
  sub_1C5662408();
  sub_1C584F5F0();
  v1 = *(v0 + 8);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1C694A590](*&v1);
  return sub_1C584FEF0();
}

uint64_t sub_1C5723D84(uint64_t a1)
{
  sub_1C5662408();
  sub_1C584F5F0();
  v2 = *(v1 + 8);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  return MEMORY[0x1C694A590](*&v2);
}

uint64_t sub_1C5723DD8(uint64_t a1)
{
  sub_1C584FEA0();
  sub_1C5662408();
  sub_1C584F5F0();
  v2 = *(v1 + 8);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x1C694A590](*&v2);
  return sub_1C584FEF0();
}

id AspectRatioLayout.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1C5723F0C(uint64_t a1)
{
  result = sub_1C5723F34();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C5723F34()
{
  result = qword_1EC1708B0;
  if (!qword_1EC1708B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1708B0);
  }

  return result;
}

unint64_t sub_1C5723F8C()
{
  result = qword_1EC1708B8;
  if (!qword_1EC1708B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1708B8);
  }

  return result;
}

uint64_t *sub_1C5724040@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *v2;
  v4 = *v2 >> 1;
  if (v4 == 1610612735)
  {
    v3 = 4294967294;
  }

  else if (v4 == 0x7FFFFFFF)
  {
    *a2 = *result;
    return result;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_1C5724078()
{
  v1 = *v0 >> 29;
  if (v1 <= 2)
  {
    v3 = 3;
    if (v1 != 1)
    {
      v3 = 4;
    }

    if (v1)
    {
      return v3;
    }

    else
    {
      return 2;
    }
  }

  else if (*v0 >> 29 > 4)
  {
    if (v1 == 5)
    {
      return 7;
    }

    else
    {
      return *v0 != 3221225472;
    }
  }

  else if (v1 == 3)
  {
    return 5;
  }

  else
  {
    return 6;
  }
}

void sub_1C57240E4(uint64_t a1)
{
  v3 = *v1;
  if ((~*v1 & 0xC0000000) != 0)
  {
    if (a1 > 3)
    {
      if (a1 <= 5)
      {
        if (a1 == 4)
        {
          v4 = v3 & 0xFFFFFFFF00000001 | 0x40000000;
        }

        else
        {
          v4 = v3 & 0xFFFFFFFF00000001 | 0x60000000;
        }

        goto LABEL_33;
      }

      if (a1 == 6)
      {
        v4 = v3 & 0xFFFFFFFF00000001 | 0x80000000;
        goto LABEL_33;
      }

      if (a1 == 7)
      {
        v4 = v3 & 0xFFFFFFFF00000001 | 0xA0000000;
        goto LABEL_33;
      }

      goto LABEL_34;
    }

    if (a1 > 1)
    {
      if (a1 == 2)
      {
        v4 = v3 & 0xFFFFFFFF00000001;
      }

      else
      {
        v4 = v3 & 0xFFFFFFFF00000001 | 0x20000000;
      }

      goto LABEL_33;
    }

    if (a1)
    {
      goto LABEL_5;
    }

LABEL_10:
    v4 = 3221225472;
    goto LABEL_33;
  }

  sub_1C563E560(v5);
  if (a1 > 3)
  {
    if (a1 <= 5)
    {
      if (a1 == 4)
      {
        v4 = v5[0] | (v6 << 32) | 0x40000000;
      }

      else
      {
        v4 = v5[0] | (v6 << 32) | 0x60000000;
      }

      goto LABEL_33;
    }

    if (a1 == 6)
    {
      v4 = v5[0] | (v6 << 32) | 0x80000000;
      goto LABEL_33;
    }

    if (a1 == 7)
    {
      v4 = v5[0] | (v6 << 32) | 0xA0000000;
      goto LABEL_33;
    }

    goto LABEL_34;
  }

  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v4 = v5[0] | (v6 << 32);
    }

    else
    {
      v4 = v5[0] | (v6 << 32) | 0x20000000;
    }

    goto LABEL_33;
  }

  if (!a1)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (a1 == 1)
  {
    v4 = 3221225473;
LABEL_33:
    *v1 = v4;
    return;
  }

LABEL_34:
  sub_1C584FD00();
  __break(1u);
}

void sub_1C57242BC(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  if (*a1 == 2)
  {
    sub_1C563E560(v11);
    v4 = v3 >> 29;
    if (v3 >> 29 > 2)
    {
      if (v3 >> 29 <= 4)
      {
        v5 = v11[0] | (v12 << 32) | 0x80000000;
        if (v4 == 3)
        {
          v5 = v11[0] | (v12 << 32) | 0x60000000;
        }

        goto LABEL_28;
      }

      if (v4 == 5)
      {
        v5 = v11[0] | (v12 << 32) | 0xA0000000;
        goto LABEL_28;
      }

      goto LABEL_26;
    }

    v5 = v11[0] | (v12 << 32) | 0x40000000;
    if (v4 == 1)
    {
      v5 = v11[0] | (v12 << 32) | 0x20000000;
    }

    if (!v4)
    {
      v5 = v11[0] | (v12 << 32);
    }
  }

  else
  {
    v6 = v3 >> 29;
    if (v3 >> 29 <= 2)
    {
      v5 = v2 & 0xFFFFFFFF00000001;
      v10 = v5 | 0x20000000;
      if (v6 != 1)
      {
        v10 = v5 | 0x40000000;
      }

      if (v6)
      {
        v5 = v10;
      }
    }

    else
    {
      if (v3 >> 29 > 4)
      {
        if (v6 == 5)
        {
          v5 = v2 & 0xFFFFFFFF00000001 | 0xA0000000;
          goto LABEL_28;
        }

LABEL_26:
        v5 = 3221225472;
        if (v3 != 3221225472)
        {
          v5 = 3221225473;
        }

        goto LABEL_28;
      }

      v7 = v6 == 3;
      v8 = v2 & 0xFFFFFFFF00000001;
      v9 = v8 | 0x60000000;
      v5 = v8 | 0x80000000;
      if (v7)
      {
        v5 = v9;
      }
    }
  }

LABEL_28:
  *v1 = v5;
}

void sub_1C572440C(uint64_t a1)
{
  v3 = *v1;
  if ((~*v1 & 0xC0000000) != 0)
  {
    if (a1 <= 1)
    {
      if (a1)
      {
        if (a1 == 1)
        {
          v4 = v3 & 0xFFFFFFFF00000001;
          goto LABEL_20;
        }

        goto LABEL_21;
      }

LABEL_8:
      v4 = 3221225472;
      goto LABEL_20;
    }

    if (a1 == 2)
    {
      v4 = v3 & 0xFFFFFFFF00000001 | 0x40000000;
      goto LABEL_20;
    }

    if (a1 != 3)
    {
      goto LABEL_21;
    }

    v5 = v3 & 0xFFFFFFFF00000001;
LABEL_19:
    v4 = v5 | 0x80000000;
    goto LABEL_20;
  }

  sub_1C563E560(v6);
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v4 = v6[0] | (v7 << 32) | 0x40000000;
      goto LABEL_20;
    }

    if (a1 != 3)
    {
      goto LABEL_21;
    }

    v5 = v6[0] | (v7 << 32);
    goto LABEL_19;
  }

  if (!a1)
  {
    goto LABEL_8;
  }

  if (a1 == 1)
  {
    v4 = v6[0] | (v7 << 32);
LABEL_20:
    *v1 = v4;
    return;
  }

LABEL_21:
  sub_1C584FD00();
  __break(1u);
}

void sub_1C5724528(void *a1)
{
  v2 = *v1;
  if (*a1 == 2)
  {
    sub_1C563E560(v6);
    v3 = v6[0] | (v7 << 32) | 0x80000000;
    if (v2 >> 30 != 2)
    {
      v3 = v2;
    }

    v4 = v6[0] | (v7 << 32) | 0x40000000;
    if (!(v2 >> 30))
    {
      v4 = v6[0] | (v7 << 32);
    }

    if (v2 >> 30 > 1)
    {
      v4 = v3;
    }
  }

  else
  {
    v4 = *a1 & 0xFFFFFFFF00000001;
    v5 = v4 | 0x80000000;
    if (v2 >> 30 != 2)
    {
      v5 = *v1;
    }

    if (v2 >> 30)
    {
      v4 |= 0x40000000uLL;
    }

    if (v2 >> 30 > 1)
    {
      v4 = v5;
    }
  }

  *v1 = v4;
}

uint64_t sub_1C57245D8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *v1 >> 29;
  type metadata accessor for UILayoutPriority(0);
  sub_1C5625AB0(&qword_1ED77E828, MEMORY[0x1E69DC408]);
  result = sub_1C584F610();
  if (result)
  {
    goto LABEL_5;
  }

  if (v4 < 4)
  {
    v6 = 3221225472;
    goto LABEL_6;
  }

  if (v4 - 4 < 2 || (v6 = 3221225472, v3 != 3221225472))
  {
LABEL_5:
    v6 = v3;
  }

LABEL_6:
  *a1 = v6;
  return result;
}

float sub_1C57246C0()
{
  result = 1000.0;
  if (*v0 >> 29 == 5)
  {
    LODWORD(result) = HIDWORD(*v0);
  }

  if (*v0 >> 29 <= 4)
  {
    LODWORD(result) = HIDWORD(*v0);
  }

  if (*v0 >> 29 <= 2)
  {
    LODWORD(result) = HIDWORD(*v0);
  }

  return result;
}

uint64_t sub_1C572470C()
{
  v1 = *v0;
  if (*v0 >> 29 == 5)
  {
    v2 = *v0;
  }

  else
  {
    v2 = 1;
  }

  if (*v0 >> 29 <= 4)
  {
    v2 = *v0;
  }

  if (*v0 >> 29 > 2)
  {
    LOBYTE(v1) = v2;
  }

  return v1 & 1;
}

void sub_1C5724768(uint64_t *a1@<X8>)
{
  v3 = *v1;
  if ((~*v1 & 0xC0000000) != 0)
  {
    type metadata accessor for UILayoutPriority(0);
    sub_1C5625AB0(&qword_1ED77E828, MEMORY[0x1E69DC408]);
    if ((sub_1C584F610() & 1) == 0)
    {
      v3 = 3221225472;
    }
  }

  *a1 = v3;
}

float sub_1C5724800()
{
  if (*v0 >> 30 == 3)
  {
    return 1000.0;
  }

  LODWORD(result) = HIDWORD(*v0);
  return result;
}

uint64_t sub_1C5724830()
{
  v1 = *v0;
  if (*v0 >> 30 == 2)
  {
    v2 = *v0;
  }

  else
  {
    v2 = 1;
  }

  if (*v0 >> 30 > 1)
  {
    LOBYTE(v1) = v2;
  }

  return v1 & 1;
}

uint64_t sub_1C572486C(char a1, uint64_t (*a2)(unint64_t *))
{
  if ((~*v2 & 0xC0000000) != 0)
  {
    v3 = *v2 & 0xFFFFFFFF00000000 | a1 & 1;
  }

  else
  {
    v3 = 2;
  }

  v5 = v3;
  return a2(&v5);
}

uint64_t sub_1C57248D0(uint64_t (*a1)(uint64_t *), float a2)
{
  if ((~*v2 & 0xC0000000) != 0)
  {
    LODWORD(v4) = *v2 & 1;
    *(&v4 + 1) = a2;
  }

  else
  {
    v4 = 2;
  }

  return a1(&v4);
}

unint64_t MUNativeButtonType.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1C572493C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF746E656D756772;
  v3 = 0x4164696C61766E69;
  v4 = a1;
  v5 = 0x80000001C589A890;
  v6 = 0xD000000000000016;
  if (a1 != 4)
  {
    v6 = 0x6E776F6E6B6E75;
    v5 = 0xE700000000000000;
  }

  if (a1 == 3)
  {
    v6 = 0xD000000000000013;
    v7 = 0x80000001C589A870;
  }

  else
  {
    v7 = v5;
  }

  v8 = 0xD000000000000012;
  v9 = 0x80000001C589A840;
  v10 = 0x7461447974706D65;
  v11 = 0xE900000000000061;
  if (a1 == 1)
  {
    v10 = 0x4164696C61766E69;
    v11 = 0xEF746E656D756772;
  }

  if (a1)
  {
    v8 = v10;
    v9 = v11;
  }

  if (a1 <= 2u)
  {
    v12 = v8;
  }

  else
  {
    v12 = v6;
  }

  if (v4 <= 2)
  {
    v13 = v9;
  }

  else
  {
    v13 = v7;
  }

  if (a2 > 2u)
  {
    if (a2 != 3)
    {
      if (a2 == 4)
      {
        v2 = 0x80000001C589A890;
        if (v12 != 0xD000000000000016)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v2 = 0xE700000000000000;
        if (v12 != 0x6E776F6E6B6E75)
        {
          goto LABEL_32;
        }
      }

      goto LABEL_29;
    }

    v2 = 0x80000001C589A870;
    v3 = 0xD000000000000013;
  }

  else
  {
    if (!a2)
    {
      v2 = 0x80000001C589A840;
      if (v12 != 0xD000000000000012)
      {
        goto LABEL_32;
      }

      goto LABEL_29;
    }

    if (a2 != 1)
    {
      v2 = 0xE900000000000061;
      if (v12 != 0x7461447974706D65)
      {
        goto LABEL_32;
      }

      goto LABEL_29;
    }
  }

  if (v12 != v3)
  {
LABEL_32:
    v14 = sub_1C584FDC0();
    goto LABEL_33;
  }

LABEL_29:
  if (v13 != v2)
  {
    goto LABEL_32;
  }

  v14 = 1;
LABEL_33:

  return v14 & 1;
}

uint64_t sub_1C5724B20(unsigned __int8 a1)
{
  sub_1C584FEA0();
  sub_1C584F6C0();

  return sub_1C584FEF0();
}

uint64_t sub_1C5724C44(uint64_t a1, unsigned __int8 a2)
{
  sub_1C584FEA0();
  sub_1C584F6C0();

  return sub_1C584FEF0();
}

unint64_t *sub_1C5724D64@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_1C5724E80(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_1C5724EE0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xB0))();
  *a2 = result;
  return result;
}

uint64_t sub_1C5724F3C(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xB8);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

void (*sub_1C5724FA0(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_sectionDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1C56430D0;
}

id sub_1C5725094()
{
  v1 = OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_configuration;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1C57251A0(void *a1)
{
  sub_1C5734640(&selRef_removeObserver_, MUEVChargerAvailabilityProvider.unregisterObserver(_:));
  v3 = OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_configuration;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_1C5734640(&selRef_addObserver_, MUEVChargerAvailabilityProvider.registerObserver(_:));
}

uint64_t sub_1C5725244@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xE0))();
  *a2 = result;
  return result;
}

void (*sub_1C5725304(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_configuration;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_1C57253A0;
}

void sub_1C57253A0(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  v5 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  if (a2)
  {
    v7 = v3;
    sub_1C5734640(&selRef_removeObserver_, MUEVChargerAvailabilityProvider.unregisterObserver(_:));
    v8 = *(v5 + v6);
    *(v5 + v6) = v7;
    v9 = v7;

    sub_1C5734640(&selRef_addObserver_, MUEVChargerAvailabilityProvider.registerObserver(_:));
    v10 = *v4;
  }

  else
  {
    sub_1C5734640(&selRef_removeObserver_, MUEVChargerAvailabilityProvider.unregisterObserver(_:));
    v11 = *(v5 + v6);
    *(v5 + v6) = v3;
    v10 = v3;

    sub_1C5734640(&selRef_addObserver_, MUEVChargerAvailabilityProvider.registerObserver(_:));
  }

  free(v2);
}

id sub_1C5725530()
{
  v1 = *(v0 + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_bridge);
  v2 = sub_1C566AF74();

  v3 = [v2 isLoading];
  return v3;
}

double sub_1C57255E0()
{
  v1 = OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_topInset;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C5725678(double a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_topInset;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_1C5725834()
{
  v1 = OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_bottomInset;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C57258CC(double a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_bottomInset;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

float sub_1C5725A7C()
{
  v1 = v0 + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController____lazy_storage___cardExpansionProgress;
  if ((*(v0 + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController____lazy_storage___cardExpansionProgress + 4) & 1) == 0)
  {
    return *v1;
  }

  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1C0))();
  *v1 = result;
  v1[4] = 0;
  return result;
}

void sub_1C5725B10(float a1)
{
  v2 = v1 + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController____lazy_storage___cardExpansionProgress;
  *v2 = a1;
  *(v2 + 4) = 0;
}

uint64_t (*sub_1C5725B28(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 8) = sub_1C5725A7C();
  return sub_1C5725B70;
}

uint64_t sub_1C5725B70(uint64_t result)
{
  v1 = *result + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController____lazy_storage___cardExpansionProgress;
  *v1 = *(result + 8);
  *(v1 + 4) = 0;
  return result;
}

float sub_1C5725BCC()
{
  v0 = [objc_opt_self() isMapsProcess];
  result = 1.0;
  if (v0)
  {
    return 0.0;
  }

  return result;
}

void *MUWebBasedPlacecardSectionController.__allocating_init(mapItem:placeActionDispatcher:bridge:configuration:)(void *a1, void *a2, void *a3, void *a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = sub_1C57347EC(a1, a2, a3, a4);

  return v10;
}

void *MUWebBasedPlacecardSectionController.init(mapItem:placeActionDispatcher:bridge:configuration:)(void *a1, void *a2, void *a3, void *a4)
{
  v8 = sub_1C57347EC(a1, a2, a3, a4);

  return v8;
}

id MUWebBasedPlacecardSectionController.__deallocating_deinit()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xE0);
  v4 = v3();
  v5 = (*((*v2 & *v4) + 0x460))();

  if (v5)
  {
    [v5 removeObserver_];
  }

  v6 = v3();
  v7 = (*((*v2 & *v6) + 0x1C0))();

  if (v7)
  {
    v8 = v1;
    MUEVChargerAvailabilityProvider.unregisterObserver(_:)(v8);
  }

  v9 = v3();
  v10 = (*((*v2 & *v9) + 0x580))();

  if (v10)
  {
    v11 = v1;
    [v10 removeObserver_];

    swift_unknownObjectRelease();
  }

  [v1 removeTestingObserverIfNeeded];
  v13.receiver = v1;
  v13.super_class = type metadata accessor for MUWebBasedPlacecardSectionController();
  return objc_msgSendSuper2(&v13, sel_dealloc);
}

id sub_1C5726068(void *a1, void *a2)
{
  v3 = v2;
  v43 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E660, &unk_1C58685F0);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v42 - v11;
  v13 = sub_1C584EA90();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C5626E40(0, &unk_1EC16CF88, 0x1E69E58C0);
  v18 = OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController__mapItem;
  v19 = *(v2 + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController__mapItem);
  v20 = sub_1C584FAC0();

  if ((v20 & 1) == 0 || (result = [v3 isTesting], result))
  {
    v22 = *(v3 + v18);
    *(v3 + v18) = a1;
    v23 = a1;

    v24 = MEMORY[0x1E69E7D40];
    v25 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0xE8))(v43);
    v26 = (*((*v24 & *v3) + 0x1C0))(v25);
    (*((*v24 & *v3) + 0x1B0))(v26);
    v27 = *(v3 + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_resourceManager);
    v28 = *((*v24 & *v27) + 0x78);
    v29 = v27;
    v28();

    v30 = 1;
    v43 = sub_1C584EA60();
    v32 = v31;
    v33 = *(v3 + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_bridge);
    v34 = sub_1C566AF74();

    v35 = [v34 URL];
    if (v35)
    {
      sub_1C584EA50();

      v30 = 0;
    }

    (*(v14 + 56))(v9, v30, 1, v13);
    sub_1C56534F4(v9, v12, &unk_1EC16E660, &unk_1C58685F0);
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      sub_1C5625230(v12, &unk_1EC16E660, &unk_1C58685F0);

LABEL_7:
      v36 = sub_1C584EA20();
      [v3 loadPlaceCardWithUrl_];

      return (*(v14 + 8))(v17, v13);
    }

    v37 = sub_1C584EA60();
    v39 = v38;
    v40 = *(v14 + 8);
    v40(v12, v13);
    if (v43 == v37 && v32 == v39)
    {
    }

    else
    {
      v41 = sub_1C584FDC0();

      if ((v41 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    [v3 updatePlacecard];
    return (v40)(v17, v13);
  }

  return result;
}

id MUWebBasedPlacecardSectionController.__allocating_init(mapItem:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithMapItem_];

  return v3;
}

uint64_t sub_1C5726670()
{
  [v0 postNotificationForContentLoadWithEvent_];
  v1 = *&v0[OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_resourceManager];
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x70);
  v4 = v1;

  v3(sub_1C5734B88, v2);
}

id sub_1C5726794(char *a1)
{
  v2 = v1;
  v4 = sub_1C584EA90();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC17B020 != -1)
  {
    swift_once();
  }

  v9 = sub_1C584F2C0();
  __swift_project_value_buffer(v9, qword_1EC18FA38);
  (*(v5 + 16))(v8, a1, v4);
  v10 = sub_1C584F2A0();
  v11 = sub_1C584F990();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v22 = v1;
    v13 = v12;
    v14 = swift_slowAlloc();
    v23 = v14;
    *v13 = 136315138;
    sub_1C5742CB4(&qword_1EC16D8C0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v15 = sub_1C584FD90();
    v17 = v16;
    (*(v5 + 8))(v8, v4);
    v18 = sub_1C5649518(v15, v17, &v23);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_1C5620000, v10, v11, "loading URL: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1C694B7A0](v14, -1, -1);
    v19 = v13;
    v2 = v22;
    MEMORY[0x1C694B7A0](v19, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  v20 = *(v2 + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_bridge);
  sub_1C566B63C(a1);

  return sub_1C5718EA0();
}

uint64_t sub_1C5726A3C()
{
  if (qword_1EC17B020 != -1)
  {
    swift_once();
  }

  v0 = sub_1C584F2C0();

  return __swift_project_value_buffer(v0, qword_1EC18FA38);
}

id sub_1C5726B88()
{
  [v0 postNotificationForContentLoadWithEvent_];
  sub_1C5719014();
  v1 = [v0 delegate];
  if (v1)
  {
    [v1 placeSectionControllerDidUpdateContent_];
    v1 = swift_unknownObjectRelease();
  }

  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xB0))(v1);
  if (v3)
  {
    [v3 sectionControllerWebContentLoadCompleted_];
    v3 = swift_unknownObjectRelease();
  }

  (*((*v2 & *v0) + 0x1A8))(v3);

  return [v0 callBridgeMethodForExpansionProgressWithProgress_];
}

void MUWebBasedPlacecardSectionController.didReceiveMessage(fromWebContentViewController:replyHandler:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v335 = a3;
  v336 = a4;
  v334 = a2;
  v5 = type metadata accessor for WebPlacecardBridge.MUStickyHeaderArgument(0);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v331 = &v294 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v9);
  v315 = &v294 - v10;
  v11 = type metadata accessor for WebPlacecardBridge.MUPageResizedArgument(0);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v329 = &v294 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v15);
  v312 = &v294 - v16;
  v17 = type metadata accessor for WebPlacecardBridge.MUWebTextSelectionViewArgument(0);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v311 = &v294 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v21);
  v316 = &v294 - v22;
  v23 = type metadata accessor for WebPlacecardBridge.MUWebMenuButton(0);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v310 = &v294 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v27);
  v314 = &v294 - v28;
  v29 = type metadata accessor for WebPlacecardBridge.MUNearbyPlacesArgument(0);
  v31 = MEMORY[0x1EEE9AC00](v29 - 8, v30);
  v333 = (&v294 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v31, v33);
  v318 = &v294 - v34;
  v35 = type metadata accessor for WebPlacecardBridge.MUAmpArtworkArgument(0);
  MEMORY[0x1EEE9AC00](v35 - 8, v36);
  v332 = &v294 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0);
  v330 = *(v38 - 8);
  v40 = MEMORY[0x1EEE9AC00](v38 - 8, v39);
  v328 = &v294 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x1EEE9AC00](v40, v42);
  v327 = &v294 - v44;
  v46 = MEMORY[0x1EEE9AC00](v43, v45);
  v326 = &v294 - v47;
  v49 = MEMORY[0x1EEE9AC00](v46, v48);
  v325 = &v294 - v50;
  v52 = MEMORY[0x1EEE9AC00](v49, v51);
  v324 = &v294 - v53;
  v55 = MEMORY[0x1EEE9AC00](v52, v54);
  v323 = &v294 - v56;
  MEMORY[0x1EEE9AC00](v55, v57);
  v322 = &v294 - v58;
  v59 = type metadata accessor for WebPlacecardBridge.MUIconArgument(0);
  v61 = MEMORY[0x1EEE9AC00](v59 - 8, v60);
  v305 = &v294 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v61, v63);
  v313 = &v294 - v64;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170928, &unk_1C5878148);
  v67 = MEMORY[0x1EEE9AC00](v65 - 8, v66);
  v309 = &v294 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = MEMORY[0x1EEE9AC00](v67, v69);
  v308 = &v294 - v71;
  v73 = MEMORY[0x1EEE9AC00](v70, v72);
  v306 = &v294 - v74;
  v76 = MEMORY[0x1EEE9AC00](v73, v75);
  v307 = &v294 - v77;
  v79 = MEMORY[0x1EEE9AC00](v76, v78);
  v303 = &v294 - v80;
  MEMORY[0x1EEE9AC00](v79, v81);
  v317 = &v294 - v82;
  v319 = type metadata accessor for WebPlacecardBridgeReply(0);
  v320 = *(v319 - 8);
  v84 = MEMORY[0x1EEE9AC00](v319, v83);
  v302 = &v294 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = MEMORY[0x1EEE9AC00](v84, v86);
  v301 = &v294 - v88;
  v90 = MEMORY[0x1EEE9AC00](v87, v89);
  v299 = &v294 - v91;
  v93 = MEMORY[0x1EEE9AC00](v90, v92);
  v300 = &v294 - v94;
  v96 = MEMORY[0x1EEE9AC00](v93, v95);
  v298 = &v294 - v97;
  v99 = MEMORY[0x1EEE9AC00](v96, v98);
  v304 = &v294 - v100;
  MEMORY[0x1EEE9AC00](v99, v101);
  v103 = &v294 - v102;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170930, &qword_1C58695F0);
  MEMORY[0x1EEE9AC00](v104 - 8, v105);
  v107 = &v294 - v106;
  v108 = sub_1C584F010();
  MEMORY[0x1EEE9AC00](v108 - 8, v109);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC170938, &unk_1C5878158);
  MEMORY[0x1EEE9AC00](v110 - 8, v111);
  v113 = &v294 - v112;
  v114 = type metadata accessor for WebPlacecardBridge(0);
  v115 = *(v114 - 8);
  v116 = *(v115 + 64);
  v118 = MEMORY[0x1EEE9AC00](v114, v117);
  MEMORY[0x1EEE9AC00](v118, v119);
  v121 = (&v294 - v120);
  v337 = a1;
  v338 = v334;
  v342 = 0;
  v340 = 0u;
  v341 = 0u;
  sub_1C566DCD4(a1, v334);
  sub_1C584F000();
  sub_1C5742CB4(&qword_1EC16D460, type metadata accessor for WebPlacecardBridge, &unk_1C586D288);
  sub_1C584F150();
  v296 = &v294 - ((v116 + 15) & 0xFFFFFFFFFFFFFFF0);
  v295 = v103;
  v297 = 0;
  v122 = v329;
  v123 = v331;
  (*(v115 + 56))(v113, 0, 1, v114);
  sub_1C5743928(v113, v121, type metadata accessor for WebPlacecardBridge);
  v124 = swift_allocObject();
  v125 = v335;
  v126 = v336;
  *(v124 + 16) = v335;
  *(v124 + 24) = v126;
  v334 = v124;
  swift_retain_n();
  v127 = sub_1C568FE50();
  v128 = v126;
  v129 = v121;
  v130 = v123;
  v132 = v332;
  v131 = v333;
  v133 = v324;
  switch(v127)
  {
    case 1:
      v145 = v129;

      sub_1C573CEFC(v145, v321, v125, v128);
      goto LABEL_51;
    case 2:
      v170 = v129;
      v171 = *v129;
      if (!*(v171 + 16))
      {
        goto LABEL_46;
      }

      v172 = v125;
      v173 = v325;
      sub_1C5743990(v171 + ((*(v330 + 80) + 32) & ~*(v330 + 80)), v325, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      v174 = v310;
      sub_1C5690CC0(v310);
      sub_1C57439F8(v173, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      v175 = v314;
      sub_1C5743928(v174, v314, type metadata accessor for WebPlacecardBridge.MUWebMenuButton);
      v176 = *(v321 + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_actionDispatcher);
      v177 = [v321 mapItem];
      sub_1C57191B4(v175, v176, v177);

      v340 = 0u;
      v341 = 0u;
      sub_1C56466CC(&v340, &v337, &qword_1EC16E790, &unk_1C586A110);
      if (v339)
      {
        v178 = v307;
        v179 = v319;
        v180 = swift_dynamicCast();
        v181 = v320;
        (*(v320 + 56))(v178, v180 ^ 1u, 1, v179);
        if ((*(v181 + 48))(v178, 1, v179) != 1)
        {
          v182 = v300;
          sub_1C5743928(v178, v300, type metadata accessor for WebPlacecardBridgeReply);
          sub_1C5742CB4(&qword_1EC16D150, type metadata accessor for WebPlacecardBridgeReply, &unk_1C5872030);
          v183 = v297;
          v184 = sub_1C584F140();
          if (v183)
          {

            sub_1C57439F8(v182, type metadata accessor for WebPlacecardBridgeReply);
          }

          else
          {
            v268 = v184;
            v269 = v185;
            v270 = sub_1C584EAD0();
            v272 = v271;
            v273 = sub_1C566DD84(v268, v269);
            v339 = MEMORY[0x1E69E6158];
            v337 = v270;
            v338 = v272;
            (v172)(&v337, 0, 0, v273);
            sub_1C57439F8(v182, type metadata accessor for WebPlacecardBridgeReply);
            sub_1C5625230(&v337, &qword_1EC16E790, &unk_1C586A110);
          }

LABEL_62:
          sub_1C5625230(&v340, &qword_1EC16E790, &unk_1C586A110);
          v251 = type metadata accessor for WebPlacecardBridge.MUWebMenuButton;
LABEL_67:
          v252 = v251;
          v253 = v175;
LABEL_71:
          sub_1C57439F8(v253, v252);
LABEL_72:

          goto LABEL_83;
        }
      }

      else
      {
        sub_1C5625230(&v337, &qword_1EC16E790, &unk_1C586A110);
        v178 = v307;
        (*(v320 + 56))(v307, 1, 1, v319);
      }

      sub_1C5625230(v178, &qword_1EC170928, &unk_1C5878148);
      v172(&v340, 0, 0);
      goto LABEL_62;
    case 3:
      v333 = v129;
      v194 = *v129;
      if (!*(v194 + 16))
      {
        goto LABEL_52;
      }

      v195 = v125;
      v196 = v322;
      sub_1C5743990(v194 + ((*(v330 + 80) + 32) & ~*(v330 + 80)), v322, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      v197 = v305;
      sub_1C56905F4(v305);
      sub_1C57439F8(v196, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      v198 = v313;
      sub_1C5743928(v197, v313, type metadata accessor for WebPlacecardBridge.MUIconArgument);
      v199 = *(**sub_1C5764F70() + 88);

      v200 = v199(v198);
      v202 = v201;

      if (!v202)
      {
        v340 = 0u;
        v341 = 0u;
        sub_1C572942C(&v340, 2u, v195);
        sub_1C5625230(&v340, &qword_1EC16E790, &unk_1C586A110);
        sub_1C57439F8(v198, type metadata accessor for WebPlacecardBridge.MUIconArgument);
        goto LABEL_80;
      }

      v203 = v304;
      sub_1C569CA9C(v304);
      sub_1C5696FD8(v200, v202);
      v204 = v319;
      *(&v341 + 1) = v319;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v340);
      sub_1C5743990(v203, boxed_opaque_existential_1, type metadata accessor for WebPlacecardBridgeReply);
      sub_1C56466CC(&v340, &v337, &qword_1EC16E790, &unk_1C586A110);
      if (!v339)
      {
        sub_1C5625230(&v337, &qword_1EC16E790, &unk_1C586A110);
        v206 = v303;
        (*(v320 + 56))(v303, 1, 1, v204);
        goto LABEL_77;
      }

      v206 = v303;
      v207 = swift_dynamicCast();
      v208 = v320;
      (*(v320 + 56))(v206, v207 ^ 1u, 1, v204);
      if ((*(v208 + 48))(v206, 1, v204) == 1)
      {
LABEL_77:
        sub_1C5625230(v206, &qword_1EC170928, &unk_1C5878148);
        v195(&v340, 0, 0);
        goto LABEL_78;
      }

      v209 = v298;
      sub_1C5743928(v206, v298, type metadata accessor for WebPlacecardBridgeReply);
      sub_1C5742CB4(&qword_1EC16D150, type metadata accessor for WebPlacecardBridgeReply, &unk_1C5872030);
      v210 = v297;
      v211 = sub_1C584F140();
      if (v210)
      {

        sub_1C57439F8(v209, type metadata accessor for WebPlacecardBridgeReply);
      }

      else
      {
        v288 = v211;
        v289 = v212;
        v290 = sub_1C584EAD0();
        v292 = v291;
        v293 = sub_1C566DD84(v288, v289);
        v339 = MEMORY[0x1E69E6158];
        v337 = v290;
        v338 = v292;
        (v195)(&v337, 0, 0, v293);
        sub_1C57439F8(v209, type metadata accessor for WebPlacecardBridgeReply);
        sub_1C5625230(&v337, &qword_1EC16E790, &unk_1C586A110);
      }

LABEL_78:
      sub_1C57439F8(v203, type metadata accessor for WebPlacecardBridgeReply);
      sub_1C57439F8(v198, type metadata accessor for WebPlacecardBridge.MUIconArgument);
LABEL_79:
      sub_1C5625230(&v340, &qword_1EC16E790, &unk_1C586A110);
LABEL_80:

      v144 = v333;
LABEL_84:
      sub_1C57439F8(v144, type metadata accessor for WebPlacecardBridge);
      return;
    case 4:
      v160 = v129;
      v161 = *v129;
      if (*(v161 + 16))
      {
        v162 = v323;
        sub_1C5743990(v161 + ((*(v330 + 80) + 32) & ~*(v330 + 80)), v323, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
        sub_1C5690970(v132);
        sub_1C57439F8(v162, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
        v163 = sub_1C5695BB4();
        v165 = v164;
        sub_1C57439F8(v132, type metadata accessor for WebPlacecardBridge.MUAmpArtworkArgument);
        v166 = *sub_1C5764F70();
        v167 = swift_allocObject();
        v168 = v334;
        *(v167 + 16) = sub_1C5734C04;
        *(v167 + 24) = v168;
        v169 = *(*v166 + 104);

        v169(v163, v165, sub_1C57420C8, v167);
      }

      else
      {
        v340 = 0u;
        v341 = 0u;
        sub_1C572942C(&v340, 1u, v125);
        sub_1C5625230(&v340, &qword_1EC16E790, &unk_1C586A110);
      }

      v144 = v160;
      goto LABEL_84;
    case 5:
      v145 = v129;

      sub_1C573C8B0(v145, v321, v125, v128);
      goto LABEL_51;
    case 6:
      v170 = v129;
      v213 = *v129;
      if (!*(v213 + 16))
      {
        goto LABEL_46;
      }

      v214 = v125;
      v215 = v327;
      sub_1C5743990(v213 + ((*(v330 + 80) + 32) & ~*(v330 + 80)), v327, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      sub_1C5690E98(v122);
      sub_1C57439F8(v215, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      v175 = v312;
      sub_1C5743928(v122, v312, type metadata accessor for WebPlacecardBridge.MUPageResizedArgument);
      v216 = sub_1C5695DC8();
      MUWebBasedPlacecardViewController.defaultHeight.setter(COERCE__INT64(v216), 0);
      v340 = 0u;
      v341 = 0u;
      sub_1C56466CC(&v340, &v337, &qword_1EC16E790, &unk_1C586A110);
      if (v339)
      {
        v217 = v308;
        v218 = v319;
        v219 = swift_dynamicCast();
        v220 = v320;
        (*(v320 + 56))(v217, v219 ^ 1u, 1, v218);
        if ((*(v220 + 48))(v217, 1, v218) != 1)
        {
          v221 = v301;
          sub_1C5743928(v217, v301, type metadata accessor for WebPlacecardBridgeReply);
          sub_1C5742CB4(&qword_1EC16D150, type metadata accessor for WebPlacecardBridgeReply, &unk_1C5872030);
          v222 = v297;
          v223 = sub_1C584F140();
          if (v222)
          {

            sub_1C57439F8(v221, type metadata accessor for WebPlacecardBridgeReply);
          }

          else
          {
            v274 = v214;
            v275 = v223;
            v276 = v224;
            v277 = sub_1C584EAD0();
            v279 = v278;
            v280 = sub_1C566DD84(v275, v276);
            v339 = MEMORY[0x1E69E6158];
            v337 = v277;
            v338 = v279;
            (v274)(&v337, 0, 0, v280);
            sub_1C57439F8(v221, type metadata accessor for WebPlacecardBridgeReply);
            sub_1C5625230(&v337, &qword_1EC16E790, &unk_1C586A110);
          }

LABEL_66:
          sub_1C5625230(&v340, &qword_1EC16E790, &unk_1C586A110);
          v251 = type metadata accessor for WebPlacecardBridge.MUPageResizedArgument;
          goto LABEL_67;
        }
      }

      else
      {
        sub_1C5625230(&v337, &qword_1EC16E790, &unk_1C586A110);
        v217 = v308;
        (*(v320 + 56))(v308, 1, 1, v319);
      }

      sub_1C5625230(v217, &qword_1EC170928, &unk_1C5878148);
      v214(&v340, 0, 0);
      goto LABEL_66;
    case 7:
      v145 = v129;

      sub_1C573E98C(v145, v321, v125, v128);
      goto LABEL_51;
    case 8:
      v145 = v129;

      sub_1C573FEC8(v145, v125, v128);
      goto LABEL_51;
    case 9:
      v145 = v129;

      sub_1C573D334(v145, v125, v128);
      goto LABEL_51;
    case 10:
      v238 = v129;
      v239 = *v129;
      if (!*(v239 + 16))
      {
        goto LABEL_74;
      }

      sub_1C5743990(v239 + ((*(v330 + 80) + 32) & ~*(v330 + 80)), v324, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      sub_1C569134C(v131);
      sub_1C57439F8(v133, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      v240 = v318;
      sub_1C5743928(v131, v318, type metadata accessor for WebPlacecardBridge.MUNearbyPlacesArgument);
      sub_1C5691FCC();
      v241 = objc_allocWithZone(MEMORY[0x1E69A21C0]);
      v242 = sub_1C584F630();

      v243 = [v241 initWithEncodedMapsIdentifier_];

      if (v243)
      {
        v244 = [objc_allocWithZone(MEMORY[0x1E696F280]) initWithGEOMapItemIdentifier_];
        v335 = sub_1C5691FE4();
        v246 = v245;
        v247 = *sub_1C567A818();
        v248 = swift_allocObject();
        v249 = v334;
        *(v248 + 16) = sub_1C5734C04;
        *(v248 + 24) = v249;
        v250 = *(*v247 + 120);

        v250(v244, v335, v246, sub_1C57420C0, v248);

        sub_1C57439F8(v318, type metadata accessor for WebPlacecardBridge.MUNearbyPlacesArgument);
      }

      else
      {
        sub_1C57439F8(v240, type metadata accessor for WebPlacecardBridge.MUNearbyPlacesArgument);
LABEL_74:
        v340 = 0u;
        v341 = 0u;
        sub_1C572942C(&v340, 1u, v125);
        sub_1C5625230(&v340, &qword_1EC16E790, &unk_1C586A110);
      }

      v144 = v238;
      goto LABEL_84;
    case 11:
      v145 = v129;

      sub_1C573F4F8(v145, v125, v128);
      goto LABEL_51;
    case 12:
      v145 = v129;

      sub_1C573F898(v145, v125, v128);
      goto LABEL_51;
    case 13:
      v145 = v129;

      sub_1C574050C(v145, v321, v125, v128);
      goto LABEL_51;
    case 14:
      v333 = v129;
      v146 = *v129;
      if (!*(v146 + 16))
      {
LABEL_52:
        v340 = 0u;
        v341 = 0u;
        sub_1C572942C(&v340, 1u, v125);
        goto LABEL_79;
      }

      v147 = v328;
      sub_1C5743990(v146 + ((*(v330 + 80) + 32) & ~*(v330 + 80)), v328, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      sub_1C5691A0C(v130);
      sub_1C57439F8(v147, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      v148 = v315;
      v149 = sub_1C5743928(v130, v315, type metadata accessor for WebPlacecardBridge.MUStickyHeaderArgument);
      v150 = v321;
      v151 = (*((*MEMORY[0x1E69E7D40] & *v321) + 0xB0))(v149);
      if (v151)
      {
        [v151 sectionController:v150 updateFixedHeaderWithShouldShow:sub_1C5696744() & 1];
        swift_unknownObjectRelease();
      }

      v340 = 0u;
      v341 = 0u;
      sub_1C56466CC(&v340, &v337, &qword_1EC16E790, &unk_1C586A110);
      v152 = v319;
      v153 = v320;
      if (v339)
      {
        v154 = v309;
        v155 = swift_dynamicCast();
        (*(v153 + 56))(v154, v155 ^ 1u, 1, v152);
        if ((*(v153 + 48))(v154, 1, v152) != 1)
        {
          v156 = v302;
          sub_1C5743928(v154, v302, type metadata accessor for WebPlacecardBridgeReply);
          sub_1C5742CB4(&qword_1EC16D150, type metadata accessor for WebPlacecardBridgeReply, &unk_1C5872030);
          v157 = v297;
          v158 = sub_1C584F140();
          if (v157)
          {

            sub_1C57439F8(v156, type metadata accessor for WebPlacecardBridgeReply);
          }

          else
          {
            v260 = v125;
            v261 = v156;
            v262 = v158;
            v263 = v159;
            v264 = sub_1C584EAD0();
            v266 = v265;
            v267 = sub_1C566DD84(v262, v263);
            v339 = MEMORY[0x1E69E6158];
            v337 = v264;
            v338 = v266;
            (v260)(&v337, 0, 0, v267);
            sub_1C57439F8(v261, type metadata accessor for WebPlacecardBridgeReply);
            sub_1C5625230(&v337, &qword_1EC16E790, &unk_1C586A110);
          }

LABEL_59:
          sub_1C5625230(&v340, &qword_1EC16E790, &unk_1C586A110);
          sub_1C57439F8(v148, type metadata accessor for WebPlacecardBridge.MUStickyHeaderArgument);
          goto LABEL_80;
        }
      }

      else
      {
        sub_1C5625230(&v337, &qword_1EC16E790, &unk_1C586A110);
        v154 = v309;
        (*(v153 + 56))(v309, 1, 1, v152);
      }

      sub_1C5625230(v154, &qword_1EC170928, &unk_1C5878148);
      v125(&v340, 0, 0);
      goto LABEL_59;
    case 15:
      v170 = v129;
      [v321 webViewFinishedLoading];
      v340 = 0u;
      v341 = 0u;
      sub_1C56466CC(&v340, &v337, &qword_1EC16E790, &unk_1C586A110);
      if (v339)
      {
        v186 = v317;
        v187 = v319;
        v188 = swift_dynamicCast();
        v189 = v320;
        (*(v320 + 56))(v186, v188 ^ 1u, 1, v187);
        if ((*(v189 + 48))(v186, 1, v187) != 1)
        {
          v190 = v295;
          sub_1C5743928(v186, v295, type metadata accessor for WebPlacecardBridgeReply);
          sub_1C5742CB4(&qword_1EC16D150, type metadata accessor for WebPlacecardBridgeReply, &unk_1C5872030);
          v191 = v297;
          v192 = sub_1C584F140();
          if (v191)
          {

            sub_1C57439F8(v190, type metadata accessor for WebPlacecardBridgeReply);
          }

          else
          {
            v254 = v192;
            v255 = v193;
            v256 = sub_1C584EAD0();
            v258 = v257;
            v259 = sub_1C566DD84(v254, v255);
            v339 = MEMORY[0x1E69E6158];
            v337 = v256;
            v338 = v258;
            (v125)(&v337, 0, 0, v259);
            sub_1C57439F8(v190, type metadata accessor for WebPlacecardBridgeReply);
            sub_1C5625230(&v337, &qword_1EC16E790, &unk_1C586A110);
          }

LABEL_82:

          sub_1C5625230(&v340, &qword_1EC16E790, &unk_1C586A110);
LABEL_83:
          v144 = v170;
          goto LABEL_84;
        }
      }

      else
      {
        sub_1C5625230(&v337, &qword_1EC16E790, &unk_1C586A110);
        v186 = v317;
        (*(v320 + 56))(v317, 1, 1, v319);
      }

      sub_1C5625230(v186, &qword_1EC170928, &unk_1C5878148);
      v125(&v340, 0, 0);
      goto LABEL_82;
    case 16:
      v145 = v129;

      sub_1C5741A94(v145, v321, v125, v128);
LABEL_51:

      v144 = v145;
      goto LABEL_84;
    case 17:
      sub_1C57439F8(v129, type metadata accessor for WebPlacecardBridge);

      return;
    case 18:
      v170 = v129;
      v225 = *v129;
      if (!*(v225 + 16))
      {
LABEL_46:
        v340 = 0u;
        v341 = 0u;
        sub_1C572942C(&v340, 1u, v125);
        sub_1C5625230(&v340, &qword_1EC16E790, &unk_1C586A110);
        goto LABEL_72;
      }

      v226 = v326;
      sub_1C5743990(v225 + ((*(v330 + 80) + 32) & ~*(v330 + 80)), v326, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      v227 = v311;
      sub_1C5691D2C(v311);
      sub_1C57439F8(v226, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      v228 = v227;
      v229 = v316;
      sub_1C5743928(v228, v316, type metadata accessor for WebPlacecardBridge.MUWebTextSelectionViewArgument);
      sub_1C5719754();
      v340 = 0u;
      v341 = 0u;
      sub_1C56466CC(&v340, &v337, &qword_1EC16E790, &unk_1C586A110);
      if (v339)
      {
        v230 = v306;
        v231 = v319;
        v232 = swift_dynamicCast();
        v233 = v320;
        (*(v320 + 56))(v230, v232 ^ 1u, 1, v231);
        if ((*(v233 + 48))(v230, 1, v231) != 1)
        {
          v234 = v299;
          sub_1C5743928(v230, v299, type metadata accessor for WebPlacecardBridgeReply);
          sub_1C5742CB4(&qword_1EC16D150, type metadata accessor for WebPlacecardBridgeReply, &unk_1C5872030);
          v235 = v297;
          v236 = sub_1C584F140();
          if (v235)
          {

            sub_1C57439F8(v234, type metadata accessor for WebPlacecardBridgeReply);
          }

          else
          {
            v281 = v236;
            v282 = v237;
            v283 = sub_1C584EAD0();
            v285 = v284;
            v286 = v281;
            v229 = v316;
            v287 = sub_1C566DD84(v286, v282);
            v339 = MEMORY[0x1E69E6158];
            v337 = v283;
            v338 = v285;
            (v125)(&v337, 0, 0, v287);
            sub_1C57439F8(v234, type metadata accessor for WebPlacecardBridgeReply);
            sub_1C5625230(&v337, &qword_1EC16E790, &unk_1C586A110);
          }

LABEL_70:
          sub_1C5625230(&v340, &qword_1EC16E790, &unk_1C586A110);
          v252 = type metadata accessor for WebPlacecardBridge.MUWebTextSelectionViewArgument;
          v253 = v229;
          goto LABEL_71;
        }
      }

      else
      {
        sub_1C5625230(&v337, &qword_1EC16E790, &unk_1C586A110);
        v230 = v306;
        (*(v320 + 56))(v306, 1, 1, v319);
      }

      sub_1C5625230(v230, &qword_1EC170928, &unk_1C5878148);
      v125(&v340, 0, 0);
      goto LABEL_70;
    default:
      v134 = v129;
      v135 = sub_1C584F8A0();
      (*(*(v135 - 8) + 56))(v107, 1, 1, v135);
      v136 = v296;
      sub_1C5743990(v134, v296, type metadata accessor for WebPlacecardBridge);
      v137 = (*(v115 + 80) + 40) & ~*(v115 + 80);
      v138 = (v116 + v137 + 7) & 0xFFFFFFFFFFFFFFF8;
      v139 = swift_allocObject();
      v139[2] = 0;
      v139[3] = 0;
      v140 = v321;
      v139[4] = v321;
      sub_1C5743928(v136, v139 + v137, type metadata accessor for WebPlacecardBridge);
      v141 = (v139 + v138);
      v142 = v334;
      *v141 = sub_1C5734C04;
      v141[1] = v142;
      v143 = v140;

      sub_1C5659C04(0, 0, v107, &unk_1C5878170, v139);

      v144 = v134;
      goto LABEL_84;
  }
}

uint64_t sub_1C572942C(uint64_t a1, unsigned __int8 a2, void (*a3)(uint64_t, unint64_t, unint64_t))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170928, &unk_1C5878148);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v30[-v8];
  v10 = type metadata accessor for WebPlacecardBridgeReply(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v30[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C56466CC(a1, v31, &qword_1EC16E790, &unk_1C586A110);
  if (!v32)
  {
    sub_1C5625230(v31, &qword_1EC16E790, &unk_1C586A110);
    (*(v11 + 56))(v9, 1, 1, v10);
    goto LABEL_5;
  }

  v15 = swift_dynamicCast();
  (*(v11 + 56))(v9, v15 ^ 1u, 1, v10);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
LABEL_5:
    sub_1C5625230(v9, &qword_1EC170928, &unk_1C5878148);
    if (a2 <= 2u)
    {
      if (a2)
      {
        if (a2 == 1)
        {
          v16 = 0xEF746E656D756772;
          v17 = 0x4164696C61766E69;
        }

        else
        {
          v16 = 0xE900000000000061;
          v17 = 0x7461447974706D65;
        }
      }

      else
      {
        v17 = 0xD000000000000012;
        v16 = 0x80000001C589A840;
      }
    }

    else if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v16 = 0xE700000000000000;
        v17 = 0x6E776F6E6B6E75;
      }

      else
      {
        v17 = 0;
        v16 = 0;
      }
    }

    else if (a2 == 3)
    {
      v16 = 0x80000001C589A870;
      v17 = 0xD000000000000013;
    }

    else
    {
      v16 = 0x80000001C589A890;
      v17 = 0xD000000000000016;
    }

    a3(a1, v17, v16);
  }

  sub_1C5743928(v9, v14, type metadata accessor for WebPlacecardBridgeReply);
  sub_1C5742CB4(&qword_1EC16D150, type metadata accessor for WebPlacecardBridgeReply, &unk_1C5872030);
  v18 = sub_1C584F140();
  v20 = v19;
  v21 = sub_1C584EAD0();
  v23 = v22;
  v24.n128_f64[0] = sub_1C566DD84(v18, v20);
  v32 = MEMORY[0x1E69E6158];
  v31[0] = v21;
  v31[1] = v23;
  if (a2 <= 2u)
  {
    v28 = 0xEF746E656D756772;
    v29 = 0x4164696C61766E69;
    if (a2 != 1)
    {
      v29 = 0x7461447974706D65;
      v28 = 0xE900000000000061;
    }

    if (a2)
    {
      v25 = v29;
    }

    else
    {
      v25 = 0xD000000000000012;
    }

    if (a2)
    {
      v26 = v28;
    }

    else
    {
      v26 = 0x80000001C589A840;
    }
  }

  else if (a2 > 4u)
  {
    v25 = 0;
    v26 = 0;
    if (a2 == 5)
    {
      v26 = 0xE700000000000000;
      v25 = 0x6E776F6E6B6E75;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v25 = 0xD000000000000013;
    }

    else
    {
      v25 = 0xD000000000000016;
    }

    if (a2 == 3)
    {
      v26 = 0x80000001C589A870;
    }

    else
    {
      v26 = 0x80000001C589A890;
    }
  }

  (a3)(v31, v25, v26, v24);

  sub_1C57439F8(v14, type metadata accessor for WebPlacecardBridgeReply);
  return sub_1C5625230(v31, &qword_1EC16E790, &unk_1C586A110);
}

Swift::Void __swiftcall MUWebBasedPlacecardSectionController.loadWebViewDidFail()()
{
  v1 = v0;
  v2 = sub_1C584EA90();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC17B020 != -1)
  {
    swift_once();
  }

  v7 = sub_1C584F2C0();
  __swift_project_value_buffer(v7, qword_1EC18FA38);
  v8 = sub_1C584F2A0();
  v9 = sub_1C584F9B0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1C5620000, v8, v9, "Web view load did fail", v10, 2u);
    MEMORY[0x1C694B7A0](v10, -1, -1);
  }

  v11 = OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_resourceManager;
  v12 = *(v1 + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_resourceManager);
  v13 = MEMORY[0x1E69E7D40];
  v14 = *((*MEMORY[0x1E69E7D40] & *v12) + 0x80);
  v15 = v12;
  LOBYTE(v14) = v14();

  if (v14)
  {
    v31 = sub_1C584F2A0();
    v16 = sub_1C584F9B0();
    if (os_log_type_enabled(v31, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "Built-in bundle has been loaded, but it still failed.";
LABEL_11:
      _os_log_impl(&dword_1C5620000, v31, v16, v18, v17, 2u);
      MEMORY[0x1C694B7A0](v17, -1, -1);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  BOOL = GEOConfigGetBOOL();
  v31 = sub_1C584F2A0();
  if (BOOL)
  {
    v16 = sub_1C584F9B0();
    if (os_log_type_enabled(v31, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "Built-in bundle fallback is diabled.";
      goto LABEL_11;
    }

LABEL_12:
    v20 = v31;

    return;
  }

  v21 = sub_1C584F990();
  if (os_log_type_enabled(v31, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_1C5620000, v31, v21, "start to load a built-in bundle as fallback", v22, 2u);
    MEMORY[0x1C694B7A0](v22, -1, -1);
  }

  v23 = *(v1 + v11);
  v24 = *((*v13 & *v23) + 0x88);
  v25 = v23;
  v24(1);

  v26 = *(v1 + v11);
  v27 = *((*v13 & *v26) + 0x78);
  v28 = *(v1 + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_bridge);
  v29 = v26;
  v27();

  sub_1C566B63C(v6);
  (*(v3 + 8))(v6, v2);
}

uint64_t sub_1C5729E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[63] = a6;
  v7[64] = a7;
  v7[61] = a4;
  v7[62] = a5;
  type metadata accessor for WebPlacecardBridgeReply.MUContext(0);
  v7[65] = swift_task_alloc();
  v7[66] = type metadata accessor for WebPlacecardBridgeReply(0);
  v7[67] = swift_task_alloc();
  v7[68] = type metadata accessor for WebPlacecardBridge(0);
  v7[69] = swift_task_alloc();
  v8 = swift_task_alloc();
  v7[70] = v8;
  *v8 = v7;
  v8[1] = sub_1C5729F40;

  return sub_1C572A570();
}

uint64_t sub_1C5729F40(uint64_t a1)
{
  *(*v1 + 568) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1C572A040, 0, 0);
}

uint64_t sub_1C572A040()
{
  v24 = v0;
  sub_1C572B15C(*(v0 + 568), *(v0 + 496), (v0 + 16));
  if (qword_1EC17B020 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 552);
  v2 = *(v0 + 496);
  v3 = sub_1C584F2C0();
  __swift_project_value_buffer(v3, qword_1EC18FA38);
  sub_1C5743990(v2, v1, type metadata accessor for WebPlacecardBridge);
  v4 = sub_1C584F2A0();
  v5 = sub_1C584F990();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 552);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = v9;
    *v8 = 136315138;
    sub_1C5742CB4(&qword_1EC16D460, type metadata accessor for WebPlacecardBridge, &unk_1C586D288);
    v10 = sub_1C584F160();
    v12 = v11;
    sub_1C57439F8(v7, type metadata accessor for WebPlacecardBridge);
    v13 = sub_1C5649518(v10, v12, &v23);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1C5620000, v4, v5, "Replying to JavaScript message %s with response context", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1C694B7A0](v9, -1, -1);
    MEMORY[0x1C694B7A0](v8, -1, -1);
  }

  else
  {

    sub_1C57439F8(v7, type metadata accessor for WebPlacecardBridge);
  }

  v14 = *(v0 + 568);
  v15 = *(v0 + 536);
  v16 = *(v0 + 528);
  v17 = *(v0 + 520);
  v18 = *(v0 + 504);
  v19 = *(v0 + 488);
  sub_1C569CA9C(v15);
  sub_1C576E77C(v17);
  sub_1C5696E6C(v17);
  [v19 postNotificationForContentLoadWithEvent_];
  *(v0 + 472) = v16;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 448));
  sub_1C5743990(v15, boxed_opaque_existential_1, type metadata accessor for WebPlacecardBridgeReply);
  v18(v0 + 448, 6);
  sub_1C57433D8(v0 + 16);

  sub_1C57439F8(v15, type metadata accessor for WebPlacecardBridgeReply);
  sub_1C5625230(v0 + 448, &qword_1EC16E790, &unk_1C586A110);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1C572A590()
{
  v59 = v0;
  v1 = [*(v0 + 56) mapItem];
  v2 = [v1 _geoMapItem];
  *(v0 + 64) = v2;

  if (!v2)
  {
    if (qword_1EC17B020 != -1)
    {
      swift_once();
    }

    v21 = *(v0 + 56);
    v22 = sub_1C584F2C0();
    __swift_project_value_buffer(v22, qword_1EC18FA38);
    v23 = v21;
    v24 = sub_1C584F2A0();
    v25 = sub_1C584F9B0();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = *(v0 + 56);
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v58 = v28;
      *v27 = 136315138;
      v29 = [v26 mapItem];
      v30 = [v29 name];

      if (v30)
      {
        v31 = sub_1C584F660();
        v33 = v32;
      }

      else
      {
        v31 = 0x64656D616E6E75;
        v33 = 0xE700000000000000;
      }

      v50 = sub_1C5649518(v31, v33, &v58);

      *(v27 + 4) = v50;
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x1C694B7A0](v28, -1, -1);
      MEMORY[0x1C694B7A0](v27, -1, -1);
    }

    v49 = [*(v0 + 56) mapItem];
    goto LABEL_24;
  }

  v3 = [v2 _placeDataAsData];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1C584EAE0();
    v7 = v6;

    sub_1C566DD84(v5, v7);
    if (qword_1EC17B020 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 56);
    v9 = sub_1C584F2C0();
    __swift_project_value_buffer(v9, qword_1EC18FA38);
    v10 = v8;
    v11 = sub_1C584F2A0();
    v12 = sub_1C584F990();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 56);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v58 = v15;
      *v14 = 136315138;
      v16 = [v13 mapItem];
      v17 = [v16 name];

      if (v17)
      {
        v18 = sub_1C584F660();
        v20 = v19;
      }

      else
      {
        v18 = 0x64656D616E6E75;
        v20 = 0xE700000000000000;
      }

      v47 = sub_1C5649518(v18, v20, &v58);

      *(v14 + 4) = v47;
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1C694B7A0](v15, -1, -1);
      MEMORY[0x1C694B7A0](v14, -1, -1);
    }

    v48 = [*(v0 + 56) mapItem];
    swift_unknownObjectRelease();
    v49 = v48;
LABEL_24:
    v51 = *(v0 + 8);

    return v51(v49);
  }

  if (qword_1EC17B020 != -1)
  {
    swift_once();
  }

  v34 = *(v0 + 56);
  v35 = sub_1C584F2C0();
  *(v0 + 72) = __swift_project_value_buffer(v35, qword_1EC18FA38);
  v36 = v34;
  v37 = sub_1C584F2A0();
  v38 = sub_1C584F990();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = *(v0 + 56);
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v58 = v41;
    *v40 = 136315138;
    v42 = [v39 mapItem];
    v43 = [v42 name];

    if (v43)
    {
      v44 = sub_1C584F660();
      v46 = v45;
    }

    else
    {
      v44 = 0x64656D616E6E75;
      v46 = 0xE700000000000000;
    }

    v53 = sub_1C5649518(v44, v46, &v58);

    *(v40 + 4) = v53;
    __swift_destroy_boxed_opaque_existential_1(v41);
    MEMORY[0x1C694B7A0](v41, -1, -1);
    MEMORY[0x1C694B7A0](v40, -1, -1);
  }

  v54 = *(v0 + 56);
  v55 = swift_task_alloc();
  *(v0 + 80) = v55;
  *(v55 + 16) = v54;
  v56 = swift_task_alloc();
  *(v0 + 88) = v56;
  v57 = sub_1C5626E40(0, &unk_1EC16CF70, 0x1E696F270);
  *v56 = v0;
  v56[1] = sub_1C572AC38;

  return MEMORY[0x1EEE6DE38](v0 + 40, 0, 0, 0x614D656E69666572, 0xEF29286D65744970, sub_1C57435B4, v55, v57);
}

uint64_t sub_1C572AC38()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1C572AF08;
  }

  else
  {

    v2 = sub_1C572AD54;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C572AD54()
{
  v15 = v0;
  v1 = *(v0 + 40);
  v2 = sub_1C584F2A0();
  v3 = sub_1C584F990();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315138;
    v6 = [v1 name];
    if (v6)
    {
      v7 = v6;
      v8 = sub_1C584F660();
      v10 = v9;
    }

    else
    {
      v10 = 0xE700000000000000;
      v8 = 0x64656D616E6E75;
    }

    v11 = sub_1C5649518(v8, v10, &v14);

    *(v4 + 4) = v11;
    _os_log_impl(&dword_1C5620000, v2, v3, "Successfully refined map item for %s.", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x1C694B7A0](v5, -1, -1);
    MEMORY[0x1C694B7A0](v4, -1, -1);
  }

  else
  {
  }

  swift_unknownObjectRelease();
  v12 = *(v0 + 8);

  return v12(v1);
}

uint64_t sub_1C572AF08()
{
  v24 = v0;
  v1 = *(v0 + 96);
  v2 = *(v0 + 56);

  v3 = v2;
  v4 = v1;
  v5 = sub_1C584F2A0();
  v6 = sub_1C584F9B0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 56);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = v9;
    *v8 = 136315394;
    v10 = [v7 mapItem];
    v11 = [v10 name];

    if (v11)
    {
      v12 = sub_1C584F660();
      v14 = v13;
    }

    else
    {
      v14 = 0xE700000000000000;
      v12 = 0x64656D616E6E75;
    }

    v15 = sub_1C5649518(v12, v14, &v23);

    *(v8 + 4) = v15;
    *(v8 + 12) = 2080;
    swift_getErrorValue();
    v16 = sub_1C584FE10();
    v18 = sub_1C5649518(v16, v17, &v23);

    *(v8 + 14) = v18;
    _os_log_impl(&dword_1C5620000, v5, v6, "Failed to refine map item: %s with error: %s. Proceeding with the original map item.", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C694B7A0](v9, -1, -1);
    MEMORY[0x1C694B7A0](v8, -1, -1);
  }

  v19 = *(v0 + 96);
  v20 = [*(v0 + 56) mapItem];

  swift_unknownObjectRelease();
  v21 = *(v0 + 8);

  return v21(v20);
}

void sub_1C572B15C(void *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = v3;
  v9 = type metadata accessor for WebPlacecardBridge(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v207 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MUVGVehicle(0);
  v273 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v277 = &v207 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v17);
  v274 = (&v207 - v18);
  v19 = sub_1C584EA90();
  v270 = *(v19 - 8);
  v271 = v19;
  MEMORY[0x1EEE9AC00](v19, v20);
  v265 = &v207 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E660, &unk_1C58685F0);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v266 = &v207 - v24;
  v264 = a1;
  v25 = [a1 _geoMapItem];
  v253 = a3;
  v254 = v4;
  v251 = a2;
  v252 = v12;
  v245 = v9;
  if (!v25)
  {
LABEL_5:
    if (qword_1EC17B020 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_102;
  }

  v26 = [v25 _placeDataAsData];
  if (!v26)
  {
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  v27 = v26;
  v28 = sub_1C584EAE0();
  v30 = v29;

  v250 = sub_1C584EAD0();
  v262 = v31;
  swift_unknownObjectRelease();
  v32.n128_f64[0] = sub_1C566DD84(v28, v30);
  while (1)
  {
    v37 = MEMORY[0x1E69E7D40];
    v38 = *((*MEMORY[0x1E69E7D40] & *v5) + 0xE0);
    v39 = (*MEMORY[0x1E69E7D40] & *v5) + 224;
    v40 = v38(v32);
    LODWORD(v278) = (*((*v37 & *v40) + 0x478))();

    v41 = (v38)();
    LODWORD(v276) = (*((*v37 & *v41) + 0x490))();

    v42 = (v38)();
    LODWORD(v275) = (*((*v37 & *v42) + 0x4A8))();

    v43 = (v38)();
    LODWORD(v272) = (*((*v37 & *v43) + 0x4C0))();

    v44 = (v38)();
    v45 = (*((*v37 & *v44) + 0x4D8))();

    v46 = (v38)();
    v47 = (*((*v37 & *v46) + 0x4F0))();

    v48 = (v38)();
    v49 = (*((*v37 & *v48) + 0x508))();

    v50 = (v38)();
    v51 = (*((*v37 & *v50) + 0x520))();
    v53 = v52;

    v54 = v51;
    v55 = v37;
    v56 = sub_1C5655254(v278 & 1, v276 & 1, v275 & 1, v272 & 1, v45 & 1, v54, v53, v282, v47, v49);
    v268 = v39;
    v269 = v38;
    v57 = (v38)(v56);
    v58 = (*((*v37 & *v57) + 0x328))();

    if (v58 && (v59 = UIImagePNGRepresentation(v58), v58, v59))
    {
      v263 = sub_1C584EAE0();
      v61 = v60;
    }

    else
    {
      v263 = 0;
      v61 = 0xF000000000000000;
    }

    v62 = v269;
    v63 = v269();
    v64 = (*((*v55 & *v63) + 0x220))();

    v65 = v62();
    v66 = (*((*v55 & *v65) + 0x3D0))();
    v260 = v67;

    v68 = v62();
    v261 = (*((*v55 & *v68) + 0x340))();

    v69 = v62();
    v70 = (*((*v55 & *v69) + 0x460))();

    if (v70)
    {
      v71 = [objc_opt_self() axIDStringForTransportType_];
      v249 = sub_1C584F660();
      v259 = v72;

      [v70 etaTravelTime];
      *&v73 = v73;
      v248 = LODWORD(v73);
      v74 = [v70 distanceString];
      if (v74)
      {
        v75 = v74;
        v247 = sub_1C584F660();
        v258 = v76;
      }

      else
      {
        v247 = 0;
        v258 = 0;
      }

      [v70 distance];
      v78 = v77;

      *&v79 = v78;
      v246 = v79;
    }

    else
    {
      v246 = 0;
      v247 = 0;
      v248 = 0;
      v249 = 0;
      v258 = 0;
      v259 = 0;
    }

    v80 = (*((*v55 & *v5) + 0xB0))();
    if (!v80)
    {

      sub_1C574342C(v282);

      sub_1C5743480();
      swift_allocError();
      *v87 = 4;
      swift_willThrow();
      sub_1C566DD70(v263, v61);

      return;
    }

    v81 = v80;
    v244 = v70;
    v240 = [v80 isInSupportedCustomRouteRegionWithSectionController_];
    v82 = v269();
    v83 = (*((*v55 & *v82) + 0x580))();

    v257 = v61;
    v241 = v66;
    if (v83)
    {
      [v83 downloadState];
      v84 = [v83 downloadProgress];
      GEOLocationCoordinate2DMake();
      v255 = v86;
      v256 = v85;
      swift_unknownObjectRelease();
    }

    else
    {
      v255 = 1;
      v256 = 0;
    }

    v88 = swift_allocObject();
    *(v88 + 16) = 0;
    v239 = (v88 + 16);
    v89 = swift_allocObject();
    *(v89 + 16) = 0;
    v90 = (v89 + 16);
    v91 = swift_allocObject();
    v91[2] = v89;
    v91[3] = v5;
    v91[4] = v88;
    v281[4] = sub_1C57434D4;
    v281[5] = v91;
    v281[0] = MEMORY[0x1E69E9820];
    v281[1] = 1107296256;
    v281[2] = sub_1C56444F8;
    v281[3] = &block_descriptor_263;
    v92 = _Block_copy(v281);
    v242 = v89;

    v93 = v5;
    v243 = v88;

    v267 = v93;
    [v93 runOnMainThread_];
    _Block_release(v92);
    v94 = [v264 _geoMapItem];
    if (v94)
    {
      v95 = [v94 addressObject];
      swift_unknownObjectRelease();
      v96 = v257;
      v97 = MEMORY[0x1E69E7D40];
      if (v95 && (v98 = [v95 locationAddress], v95, v98))
      {
        v99 = sub_1C584F660();
        v237 = v100;
        v238 = v99;
      }

      else
      {
        v237 = 0xE000000000000000;
        v238 = 0;
      }
    }

    else
    {
      v237 = 0xE000000000000000;
      v238 = 0;
      v96 = v257;
      v97 = MEMORY[0x1E69E7D40];
    }

    swift_beginAccess();
    if (!*v90)
    {
      __break(1u);
      return;
    }

    v235 = *v90;
    v101 = v269;
    v102 = v269();
    v234 = (*((*v97 & *v102) + 0x238))();

    v103 = v101();
    v233 = (*((*v97 & *v103) + 0x2C8))();

    v236 = v64;
    v209 = v81;
    if (v96 >> 60 == 15)
    {
      v231 = 0;
      v232 = 0;
    }

    else
    {
      v105 = v263;
      sub_1C566DCD4(v263, v96);
      v106 = sub_1C584EAD0();
      v231 = v107;
      v232 = v106;
      v104.n128_f64[0] = sub_1C566DD70(v105, v96);
    }

    v108 = v269;
    v109 = (v269)(v104);
    v110 = (*((*v97 & *v109) + 0x358))();
    v112 = v111;

    if (v112)
    {
      v113 = v110;
    }

    else
    {
      v113 = 0;
    }

    if (v112)
    {
      v114 = v112;
    }

    else
    {
      v114 = 0xE000000000000000;
    }

    v229 = v114;
    v230 = v113;
    v115 = v108();
    v228 = (*((*MEMORY[0x1E69E7D40] & *v115) + 0x280))();

    v116 = v108();
    v227 = (*((*MEMORY[0x1E69E7D40] & *v116) + 0x298))();

    v117 = v108();
    v226 = (*((*MEMORY[0x1E69E7D40] & *v117) + 0x250))();

    v118 = v108();
    v225 = (*((*MEMORY[0x1E69E7D40] & *v118) + 0x2B0))();

    v119 = v108();
    v224 = (*((*MEMORY[0x1E69E7D40] & *v119) + 0x3A0))();

    v120 = v108();
    v223 = (*((*MEMORY[0x1E69E7D40] & *v120) + 0x2E0))();

    v121 = v108();
    v222 = (*((*MEMORY[0x1E69E7D40] & *v121) + 0x2F8))();

    v122 = v108();
    v221 = (*((*MEMORY[0x1E69E7D40] & *v122) + 0x310))();

    v123 = v108();
    v124 = (*((*MEMORY[0x1E69E7D40] & *v123) + 0x3B8))();
    v126 = v125;

    if (v126)
    {
      v127 = v124;
    }

    else
    {
      v127 = 0;
    }

    if (v126)
    {
      v128 = v126;
    }

    else
    {
      v128 = 0xE000000000000000;
    }

    v218 = v128;
    v219 = v127;
    v129 = MEMORY[0x1E69E7D40];
    v130 = [v264 _coordinate];
    v132 = v131;
    v134 = v133;
    v135 = (v108)(v130);
    v220 = (*((*v129 & *v135) + 0x370))();

    v136 = v108();
    v217 = (*((*v129 & *v136) + 0x3E8))();

    v137 = v108();
    v216 = (*((*v129 & *v137) + 0x400))();

    v138 = v108();
    v215 = (*((*v129 & *v138) + 0x418))();

    v139 = v108();
    v214 = (*((*v129 & *v139) + 0x430))();

    v140 = v108();
    v213 = (*((*v129 & *v140) + 0x448))();

    v141 = v108();
    v212 = (*((*v129 & *v141) + 0x538))();

    v142 = v108();
    v143 = v266;
    (*((*v129 & *v142) + 0x388))();

    v145 = v270;
    v144 = v271;
    if ((*(v270 + 48))(v143, 1, v271))
    {
      sub_1C5625230(v143, &unk_1EC16E660, &unk_1C58685F0);
      v210 = 0xE000000000000000;
      v211 = 0;
    }

    else
    {
      v146 = v265;
      (*(v145 + 16))(v265, v143, v144);
      sub_1C5625230(v143, &unk_1EC16E660, &unk_1C58685F0);
      v147 = sub_1C584EA00();
      v210 = v148;
      v211 = v147;
      (*(v145 + 8))(v146, v144);
    }

    v149 = v274;
    v150 = *(v267 + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_evChargerAvailability);
    if (!v150)
    {
      v278 = 0;
      goto LABEL_106;
    }

    v151 = *&v150[OBJC_IVAR____TtC6MapsUI23MUEVChargerAvailability_vehicles];
    if (!(v151 >> 62))
    {
      v152 = *((v151 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v152)
      {
        break;
      }

      goto LABEL_52;
    }

    v152 = sub_1C584FB90();
    if (!v152)
    {
      break;
    }

LABEL_52:
    v272 = v151 & 0xC000000000000001;
    v270 = v151;
    v265 = (v151 + 32);
    v266 = (v151 & 0xFFFFFFFFFFFFFF8);
    v208 = v150;
    v153 = 0;
    v5 = MEMORY[0x1E69E7CC0];
    v271 = v152;
    while (1)
    {
      if (v272)
      {
        v154 = MEMORY[0x1C694A320](v153, v270);
      }

      else
      {
        if (v153 >= *(v266 + 2))
        {
          goto LABEL_101;
        }

        v154 = *&v265[8 * v153];
      }

      v155 = v154;
      if (__OFADD__(v153++, 1))
      {
        break;
      }

      v278 = v5;
      sub_1C569690C(v149);
      v157 = [v155 displayName];
      v158 = sub_1C584F660();
      v160 = v159;

      sub_1C56968F4(v158, v160);
      v276 = v155;
      v161 = [v155 supportedConnectors];
      v162 = sub_1C568FD94();
      v163 = *(v162 + 2);
      v275 = v162;
      if (v163)
      {
        v164 = (v162 + 32);
        v165 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          v167 = *v164++;
          v166 = v167;
          if (v167 > 4)
          {
            if (v166 <= 6)
            {
              if (v166 == 5)
              {
                if ((v161 & 0x10) != 0)
                {
                  goto LABEL_88;
                }
              }

              else if ((v161 & 0x20) != 0)
              {
                goto LABEL_88;
              }
            }

            else if (v166 == 7)
            {
              if ((v161 & 0x40) != 0)
              {
                goto LABEL_88;
              }
            }

            else if (v166 == 8)
            {
              if ((v161 & 0x80) != 0)
              {
                goto LABEL_88;
              }
            }

            else if ((v161 & 0x100) != 0)
            {
              goto LABEL_88;
            }
          }

          else if (v166 <= 1)
          {
            if (!v166 || (v161 & 1) != 0)
            {
LABEL_88:
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v165 = sub_1C5734178(0, *(v165 + 2) + 1, 1, v165);
              }

              v169 = *(v165 + 2);
              v168 = *(v165 + 3);
              if (v169 >= v168 >> 1)
              {
                v165 = sub_1C5734178((v168 > 1), v169 + 1, 1, v165);
              }

              *(v165 + 2) = v169 + 1;
              v165[v169 + 32] = v166;
            }
          }

          else if (v166 == 2)
          {
            if ((v161 & 2) != 0)
            {
              goto LABEL_88;
            }
          }

          else if (v166 == 3)
          {
            if ((v161 & 4) != 0)
            {
              goto LABEL_88;
            }
          }

          else if ((v161 & 8) != 0)
          {
            goto LABEL_88;
          }

          if (!--v163)
          {
            goto LABEL_93;
          }
        }
      }

      v165 = MEMORY[0x1E69E7CC0];
LABEL_93:

      v149 = v274;

      *v149 = v165;
      sub_1C5743990(v149, v277, type metadata accessor for MUVGVehicle);
      v5 = v278;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1C573426C(0, v5[2] + 1, 1, v5, &qword_1EC170A40, &qword_1C58783A8, type metadata accessor for MUVGVehicle);
      }

      v170 = v271;
      v172 = v5[2];
      v171 = v5[3];
      if (v172 >= v171 >> 1)
      {
        v5 = sub_1C573426C((v171 > 1), v172 + 1, 1, v5, &qword_1EC170A40, &qword_1C58783A8, type metadata accessor for MUVGVehicle);
      }

      v5[2] = v172 + 1;
      sub_1C5743928(v277, v5 + ((*(v273 + 80) + 32) & ~*(v273 + 80)) + *(v273 + 72) * v172, type metadata accessor for MUVGVehicle);
      sub_1C57439F8(v149, type metadata accessor for MUVGVehicle);
      if (v153 == v170)
      {

        v129 = MEMORY[0x1E69E7D40];
        goto LABEL_105;
      }
    }

    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    swift_once();
LABEL_6:
    v33 = sub_1C584F2C0();
    __swift_project_value_buffer(v33, qword_1EC18FA38);
    v34 = sub_1C584F2A0();
    v35 = sub_1C584F9B0();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_1C5620000, v34, v35, "placeDataAsData is still nil after attempted refinement. Sending empty base64 string placeItem.mapItem in the Context indicating web should use customName and coordinates to show minimal placecard.", v36, 2u);
      MEMORY[0x1C694B7A0](v36, -1, -1);
    }

    v250 = 0;
    v262 = 0xE000000000000000;
  }

  v5 = MEMORY[0x1E69E7CC0];
LABEL_105:
  v278 = v5;
LABEL_106:
  v276 = [v264 _geoAddress];
  v173 = v269;
  v174 = v269();
  v175 = v129;
  v176 = (*((*v129 & *v174) + 0x550))();

  v177 = v173();
  v178 = (*((*v129 & *v177) + 0x568))();

  v179 = v173();
  v180 = (*((*v175 & *v179) + 0x598))();

  if (v180)
  {
    v181 = [v180 getDevices];
    swift_unknownObjectRelease();
    v182 = v244;
    if (v181)
    {
      sub_1C5626E40(0, &unk_1EC170A78, off_1E82161A8);
      v180 = sub_1C584F770();
    }

    else
    {
      v180 = 0;
    }
  }

  else
  {
    v182 = v244;
  }

  v183 = sub_1C568F900();
  v185 = v255;
  v184 = v256;
  sub_1C5743594(v256, v255);
  v186 = v261;
  v277 = v261;
  v279[0] = v182 == 0;
  *&v205 = v210;
  *(&v204 + 1) = v211;
  *(&v203 + 1) = v260;
  *&v203 = v241;
  *(&v202 + 1) = v218;
  *&v202 = v219;
  *&v206 = v184;
  *(&v206 + 1) = v185;
  *(&v205 + 1) = v278;
  *&v204 = v212;
  *(&v201 + 1) = v231;
  *&v201 = v232;
  sub_1C5770A1C(v250, v262, v238, v237, v235, v236, v234 & 1, v233, v283, v201, v230, v229, v228 & 1, v227 & 1, v226, v225, v224 & 1, v240, v223 & 1, v222 & 1, v221 & 1, v202, v132, v134, 0, v203, v186, v220 & 1, v217 & 1, v216 & 1, v215 & 1, v214 & 1, v213 & 1, v249, v259, v248, (v248 | (v279[0] << 32)) >> 32, v247, v258, v246, (v246 | (v279[0] << 32)) >> 32, v282, v204, v205, v206, v276, v176, 0, v178 & 1, v180, v183 & 1);
  memcpy(v280, v283, sizeof(v280));
  v187 = v239;
  swift_beginAccess();
  v188 = *v187;
  if (qword_1EC17B020 != -1)
  {
    swift_once();
  }

  v189 = sub_1C584F2C0();
  __swift_project_value_buffer(v189, qword_1EC18FA38);
  v190 = v252;
  sub_1C5743990(v251, v252, type metadata accessor for WebPlacecardBridge);
  v191 = sub_1C584F2A0();
  v192 = sub_1C584F990();
  if (os_log_type_enabled(v191, v192))
  {
    v193 = swift_slowAlloc();
    v194 = swift_slowAlloc();
    v284 = v194;
    *v193 = 136315138;
    sub_1C5742CB4(&qword_1EC16D460, type metadata accessor for WebPlacecardBridge, &unk_1C586D288);
    v195 = sub_1C584F160();
    v196 = v190;
    v198 = v197;
    sub_1C57439F8(v196, type metadata accessor for WebPlacecardBridge);
    v199 = sub_1C5649518(v195, v198, &v284);

    *(v193 + 4) = v199;
    _os_log_impl(&dword_1C5620000, v191, v192, "Replying to JavaScript message %s with response context", v193, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v194);
    MEMORY[0x1C694B7A0](v194, -1, -1);
    MEMORY[0x1C694B7A0](v193, -1, -1);
    sub_1C566DD70(v263, v257);

    sub_1C57435A4(v256, v255);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C566DD70(v263, v257);
    sub_1C57435A4(v256, v255);

    swift_unknownObjectRelease();
    sub_1C57439F8(v190, type metadata accessor for WebPlacecardBridge);
  }

  v200 = v253;
  memcpy(v253, v280, 0x168uLL);
  v200[360] = v188;
}

void sub_1C572D0F8(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170A88, &qword_1C58783C8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = aBlock - v7;
  v9 = [objc_opt_self() sharedService];
  if (v9)
  {
    v10 = v9;
    v11 = [a2 mapItem];
    [v11 _coordinate];
    v13 = v12;
    v15 = v14;

    v16 = [v10 ticketForReverseGeocodeCoordinate:0 traits:{v13, v15}];
    if (v16)
    {
      (*(v5 + 16))(v8, a1, v4);
      v17 = (*(v5 + 80) + 16) & ~*(v5 + 80);
      v18 = swift_allocObject();
      (*(v5 + 32))(v18 + v17, v8, v4);
      aBlock[4] = sub_1C57435BC;
      aBlock[5] = v18;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C567AB00;
      aBlock[3] = &block_descriptor_270;
      v19 = _Block_copy(aBlock);
      swift_unknownObjectRetain();

      [v16 submitWithHandler:v19 networkActivity:0];
      swift_unknownObjectRelease_n();
      _Block_release(v19);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C572D35C(uint64_t a1, void (*a2)(__int128 *, uint64_t), uint64_t a3)
{
  v23 = a3;
  v24 = a2;
  v4 = type metadata accessor for WebPlacecardBridgeReply(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170A90, &unk_1C58783D0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v23 - v10;
  v12 = type metadata accessor for WebPlacecardBridgeReply.MUAmpArtwork(0);
  v13 = *(v12 - 8);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v23 - v19;
  sub_1C56466CC(a1, v11, &qword_1EC170A90, &unk_1C58783D0);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1C5625230(v11, &qword_1EC170A90, &unk_1C58783D0);
    v25 = 0u;
    v26 = 0u;
    v24(&v25, 2);
  }

  else
  {
    sub_1C5743928(v11, v20, type metadata accessor for WebPlacecardBridgeReply.MUAmpArtwork);
    sub_1C569CA9C(v7);
    sub_1C5743990(v20, v17, type metadata accessor for WebPlacecardBridgeReply.MUAmpArtwork);
    sub_1C5697094(v17);
    *(&v26 + 1) = v4;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v25);
    sub_1C5743990(v7, boxed_opaque_existential_1, type metadata accessor for WebPlacecardBridgeReply);
    v24(&v25, 6);
    sub_1C57439F8(v7, type metadata accessor for WebPlacecardBridgeReply);
    sub_1C57439F8(v20, type metadata accessor for WebPlacecardBridgeReply.MUAmpArtwork);
  }

  return sub_1C5625230(&v25, &qword_1EC16E790, &unk_1C586A110);
}

uint64_t sub_1C572D634(uint64_t a1, void (*a2)(__int128 *, uint64_t), uint64_t a3)
{
  v23 = a3;
  v24 = a2;
  v4 = type metadata accessor for WebPlacecardBridgeReply(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC170A60, &qword_1C586B0E0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v23 - v10;
  v12 = type metadata accessor for WebPlacecardBridgeReply.MUAttributionData(0);
  v13 = *(v12 - 8);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v23 - v19;
  sub_1C56466CC(a1, v11, &unk_1EC170A60, &qword_1C586B0E0);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1C5625230(v11, &unk_1EC170A60, &qword_1C586B0E0);
    v25 = 0u;
    v26 = 0u;
    v24(&v25, 2);
  }

  else
  {
    sub_1C5743928(v11, v20, type metadata accessor for WebPlacecardBridgeReply.MUAttributionData);
    sub_1C569CA9C(v7);
    sub_1C5743990(v20, v17, type metadata accessor for WebPlacecardBridgeReply.MUAttributionData);
    sub_1C5697274(v17);
    *(&v26 + 1) = v4;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v25);
    sub_1C5743990(v7, boxed_opaque_existential_1, type metadata accessor for WebPlacecardBridgeReply);
    v24(&v25, 6);
    sub_1C57439F8(v7, type metadata accessor for WebPlacecardBridgeReply);
    sub_1C57439F8(v20, type metadata accessor for WebPlacecardBridgeReply.MUAttributionData);
  }

  return sub_1C5625230(&v25, &qword_1EC16E790, &unk_1C586A110);
}

uint64_t sub_1C572D90C(char a1, void (*a2)(__int128 *, uint64_t))
{
  if (a1)
  {
    v9 = 0u;
    v10 = 0u;
    v3 = 6;
  }

  else
  {
    if (qword_1EC17B020 != -1)
    {
      swift_once();
    }

    v4 = sub_1C584F2C0();
    __swift_project_value_buffer(v4, qword_1EC18FA38);
    v5 = sub_1C584F2A0();
    v6 = sub_1C584F9B0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1C5620000, v5, v6, "Perform action failed", v7, 2u);
      MEMORY[0x1C694B7A0](v7, -1, -1);
    }

    v9 = 0u;
    v10 = 0u;
    v3 = 3;
  }

  a2(&v9, v3);
  return sub_1C5625230(&v9, &qword_1EC16E790, &unk_1C586A110);
}

id sub_1C572DA48(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = *a3;
    v11 = sub_1C5694DE4();
    v13 = v12;
    v14 = objc_opt_self();
    sub_1C5694E2C();
    v24 = a5;
    v15 = a4;
    v16 = sub_1C584F630();

    v17 = [v14 _mapsui_systemImageNamed_];

    v18 = sub_1C5646814(v10, v11, v13, v17, 0, -1);

    v19 = v18;
    sub_1C584FC50();

    MEMORY[0x1C6949D90](v15, v24);
    v20 = sub_1C584F630();

    [v19 setAccessibilityIdentifier_];

    v21 = sub_1C5695040();
    sub_1C572DC6C(0, 0xE000000000000000, v21, v22, 2);

    return v19;
  }

  else
  {
    sub_1C5626E40(0, &qword_1EC16DE20, 0x1E69DCC60);
    return sub_1C584FA70();
  }
}

uint64_t sub_1C572DC6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall(0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for WebPlacecardBridgeReply.MUMenuItemTapArgs(0);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v24 = &v30 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v25);
  v27 = &v30 - v26;
  sub_1C569B3C8(&v30 - v26);

  sub_1C569C488(a1, a2);

  sub_1C569C4A0(a3, a4);
  sub_1C569789C(v19);
  sub_1C569A8D8(4);
  sub_1C5743990(v27, v24, type metadata accessor for WebPlacecardBridgeReply.MUMenuItemTapArgs);
  sub_1C569A908(v15);
  sub_1C569B438(v24);
  sub_1C569AAB0(v15);
  sub_1C569A908(v15);
  sub_1C569B22C(v24);
  sub_1C569C4B8(a5);
  sub_1C569B438(v24);
  sub_1C569AAB0(v15);
  v28 = *(v6 + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_bridge);
  sub_1C566BB7C(v19, 0, 0);

  sub_1C57439F8(v19, type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall);
  return sub_1C57439F8(v27, type metadata accessor for WebPlacecardBridgeReply.MUMenuItemTapArgs);
}

void sub_1C572DED0(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = type metadata accessor for WebPlacecardBridge.MUActionBarItem(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    sub_1C56954CC(v11);
    v14 = [v13 mapItem];
    sub_1C5774F00(v14);
    v16 = v15;

    sub_1C57439F8(v11, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction);
    if (v16)
    {
      sub_1C5695114(v7);
      v17 = sub_1C5695040();
      v19 = v18;
      sub_1C57439F8(v7, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
      v20 = sub_1C56952EC();
      sub_1C572DC6C(v17, v19, v20, v21, 1);

      v22 = *&v13[OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_actionDispatcher];
      type metadata accessor for MUPlaceActionFeedbackEnvironment();
      v23 = a2;
      v24 = v22;
      v25 = sub_1C56433CC(a2);
      MUPlaceActionDispatcher.performAction(for:environment:completion:)();

      v13 = v25;
    }
  }
}

void sub_1C572E0F4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0xB0))();
    if (v4)
    {
      v5 = v4;
      sub_1C5696D18();
      sub_1C5696D48();
      sub_1C5696D78();
      sub_1C5696DA8();
      v11 = objc_allocWithZone(MUDevice);
      v6 = sub_1C584F630();

      v7 = sub_1C584F630();

      v8 = sub_1C584F630();

      v9 = sub_1C584F630();

      v10 = [v11 initWithName:v6 symbolName:v7 deviceID:v8 model:v9];

      [v5 sectionController:v3 didSelectSendToDevice:v10];
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_1C572E2AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v70 = a2;
  v73 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC170510, qword_1C5877770);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v72 = &v65 - v6;
  v7 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v71 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for WebPlacecardBridge.MUActionBarItem(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x1EEE9AC00](v10 - 8, v13);
  v15 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v65 - v17;
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1C5743990(a1, v18, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
  v20 = *(v11 + 80);
  v21 = (v20 + 24) & ~v20;
  v22 = swift_allocObject();
  *(v22 + 16) = v19;
  v69 = v18;
  sub_1C5743928(v18, v22 + v21, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1C5743990(a1, v15, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
  v68 = v12;
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  sub_1C5743928(v15, v24 + v21, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1C564898C(GEOLocationCoordinate2DMake, 0, sub_1C5742CFC, v22, sub_1C5742EDC, v24, sub_1C5742F9C, v25, v75);
  if (sub_1C5694E44())
  {
    v26 = sub_1C5695040();
    v66 = v27;
    v67 = v26;
    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v71 = *(&v75[0] + 1);
    v29 = v69;
    sub_1C5743990(a1, v69, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
    v30 = (v20 + 88) & ~v20;
    v31 = (v68 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
    v32 = swift_allocObject();
    *(v32 + 16) = v28;
    v33 = v75[1];
    *(v32 + 24) = v75[0];
    *(v32 + 40) = v33;
    v34 = v75[3];
    *(v32 + 56) = v75[2];
    *(v32 + 72) = v34;
    sub_1C5743928(v29, v32 + v30, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
    v35 = (v32 + v31);
    v36 = v66;
    *v35 = v67;
    v35[1] = v36;

    v37 = sub_1C5694E2C();
    v39 = v38;
    v40 = sub_1C5695040();
    v42 = v41;
    v43 = v72;
    sub_1C5716754(v44);
    v63 = v40;
    v45 = v73;
    sub_1C57163A4(v43, sub_1C5743F18, v32, 2, v37, v39, 0, 0, v73, v63, v42, 1970169165, 0xE400000000000000);

LABEL_5:
    v61 = type metadata accessor for PlaceActionBarLayoutItem(0);
    return (*(*(v61 - 8) + 56))(v45, 0, 1, v61);
  }

  v46 = v72;
  v47 = v73;
  v70 = sub_1C5694E2C();
  v49 = v48;
  sub_1C5694E98(v71);
  v50 = sub_1C5695040();
  v52 = v51;
  sub_1C5774F00(0);
  if (v53)
  {
    v54 = v53;
    v55 = *((*MEMORY[0x1E69E7D40] & *v53) + 0x50);
    v56 = v53;
    v55(&v74);
    v57 = MUPlaceActionDispatcher.ActionType.axID.getter();
    v59 = v58;
    sub_1C5716754(v60);
    v64 = v57;
    v45 = v47;
    sub_1C57163A4(v46, v54, 0, 0, v70, v49, 0, 0, v47, v50, v52, v64, v59);

    sub_1C57439F8(v71, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction);
    goto LABEL_5;
  }

  result = sub_1C584FD00();
  __break(1u);
  return result;
}

void sub_1C572E914(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_1C56954CC(v7);
    v10 = [v9 mapItem];
    sub_1C5774F00(v10);
    v12 = v11;

    sub_1C57439F8(v7, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction);
    if (v12)
    {
      v13 = sub_1C5695040();
      v15 = v14;
      v16 = sub_1C56952EC();
      sub_1C572DC6C(v13, v15, v16, v17, 1);

      v18 = *&v9[OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_actionDispatcher];
      type metadata accessor for MUPlaceActionFeedbackEnvironment();
      v19 = a2;
      v20 = v18;
      v21 = sub_1C56433CC(a2);
      MUPlaceActionDispatcher.performAction(for:environment:completion:)();

      v9 = v21;
    }
  }
}

id sub_1C572EAC4(unint64_t a1, void (*a2)(__int128 *, uint64_t), uint64_t a3)
{
  v6 = type metadata accessor for WebPlacecardBridgeReply.MURefreshedMapItem(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for WebPlacecardBridgeReply(0);
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = &v36 - v14;
  if (!a1)
  {
    v44 = 0u;
    v45 = 0u;
    a2(&v44, 6);
    return sub_1C5625230(&v44, &qword_1EC16E790, &unk_1C586A110);
  }

  v37 = v12;
  v40 = a3;
  sub_1C569CA9C(&v36 - v14);
  sub_1C5697574(v9);
  sub_1C569758C(v9);
  v16 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_25:
    v17 = sub_1C584FB90();
  }

  else
  {
    v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v38 = v9;
  v39 = v15;
  v41 = a2;
  if (!v17)
  {
    v43 = MEMORY[0x1E69E7CC0];
LABEL_21:
    v34 = v38;
    v33 = v39;
    sub_1C56973E0(v38);

    *v34 = v43;
    sub_1C569758C(v34);
    *(&v45 + 1) = v37;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v44);
    sub_1C5743990(v33, boxed_opaque_existential_1, type metadata accessor for WebPlacecardBridgeReply);
    v41(&v44, 6);
    sub_1C57439F8(v33, type metadata accessor for WebPlacecardBridgeReply);
    return sub_1C5625230(&v44, &qword_1EC16E790, &unk_1C586A110);
  }

  v18 = 0;
  v42 = a1 & 0xC000000000000001;
  v43 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v42)
    {
      v19 = MEMORY[0x1C694A320](v18, a1);
    }

    else
    {
      if (v18 >= *(v16 + 16))
      {
        goto LABEL_24;
      }

      v19 = *(a1 + 8 * v18 + 32);
    }

    v20 = v19;
    v21 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v22 = v16;
    result = [v19 _geoMapItem];
    if (!result)
    {
      break;
    }

    v24 = a1;
    v25 = [result _placeDataAsData];
    result = swift_unknownObjectRelease();
    if (!v25)
    {
      goto LABEL_27;
    }

    v26 = sub_1C584EAE0();
    v28 = v27;

    a2 = sub_1C584EAD0();
    v15 = v29;
    sub_1C566DD84(v26, v28);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v43 = sub_1C5638228(0, *(v43 + 2) + 1, 1, v43);
    }

    a1 = v24;
    v9 = *(v43 + 2);
    v30 = *(v43 + 3);
    v16 = v22;
    if (v9 >= v30 >> 1)
    {
      v43 = sub_1C5638228((v30 > 1), v9 + 1, 1, v43);
    }

    v31 = v43;
    *(v43 + 2) = v9 + 1;
    v32 = &v31[16 * v9];
    *(v32 + 4) = a2;
    *(v32 + 5) = v15;
    ++v18;
    if (v21 == v17)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1C572EE34(void *a1, uint64_t a2, void *a3, void *a4)
{
  v8 = sub_1C584F570();
  v26 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1C584F5B0();
  v12 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C5626E40(0, &qword_1EC16D010, 0x1E69E9610);
  v24 = sub_1C584F9F0();
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a1;
  v16[4] = a4;
  v16[5] = a2;
  aBlock[4] = sub_1C5742BB0;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C56444F8;
  aBlock[3] = &block_descriptor_223;
  v17 = _Block_copy(aBlock);
  v18 = a3;
  v19 = a1;
  v20 = a4;

  sub_1C584F590();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1C5742CB4(&qword_1EC16D0E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC170A30, &unk_1C5869B00);
  sub_1C5664E38();
  sub_1C584FB50();
  v21 = v24;
  MEMORY[0x1C694A0B0](0, v15, v11, v17);
  _Block_release(v17);

  (*(v26 + 8))(v11, v8);
  return (*(v12 + 8))(v15, v25);
}

id sub_1C572F11C(void *a1, void (*a2)(__int128 *, uint64_t))
{
  v4 = type metadata accessor for WebPlacecardBridgeReply.MURefreshedMapItem(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for WebPlacecardBridgeReply(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    v24 = 0u;
    v25 = 0u;
    a2(&v24, 6);
    return sub_1C5625230(&v24, &qword_1EC16E790, &unk_1C586A110);
  }

  v12 = a1;
  sub_1C569CA9C(v11);
  sub_1C5697574(v7);
  sub_1C569758C(v7);
  result = [v12 _geoMapItem];
  if (result)
  {
    v23 = a2;
    v14 = [result _placeDataAsData];
    result = swift_unknownObjectRelease();
    if (v14)
    {
      v15 = sub_1C584EAE0();
      v17 = v16;

      v18 = sub_1C584EAD0();
      v20 = v19;
      sub_1C566DD84(v15, v17);
      sub_1C56973E0(v7);
      sub_1C569A834(v18, v20);
      sub_1C569758C(v7);
      *(&v25 + 1) = v8;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v24);
      sub_1C5743990(v11, boxed_opaque_existential_1, type metadata accessor for WebPlacecardBridgeReply);
      v23(&v24, 6);

      sub_1C57439F8(v11, type metadata accessor for WebPlacecardBridgeReply);
      return sub_1C5625230(&v24, &qword_1EC16E790, &unk_1C586A110);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C572F370(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t))
{
  if (a2)
  {
    v5 = a1;
    if (qword_1EC17B020 != -1)
    {
      swift_once();
    }

    v6 = sub_1C584F2C0();
    __swift_project_value_buffer(v6, qword_1EC18FA38);
    v7 = a2;
    v8 = sub_1C584F2A0();
    v9 = sub_1C584F9B0();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = a2;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v13;
      *v11 = v13;
      _os_log_impl(&dword_1C5620000, v8, v9, "MapItem Fetching Error: %@", v10, 0xCu);
      sub_1C5625230(v11, &unk_1EC16E670, &qword_1C586A030);
      MEMORY[0x1C694B7A0](v11, -1, -1);
      MEMORY[0x1C694B7A0](v10, -1, -1);
    }

    a1 = v5;
  }

  return a3(a1);
}

uint64_t sub_1C572F4EC(void *a1, void *a2, uint64_t a3, uint64_t (*a4)(void *))
{
  if (a2)
  {
    if (qword_1EC17B020 != -1)
    {
      swift_once();
    }

    v7 = sub_1C584F2C0();
    __swift_project_value_buffer(v7, qword_1EC18FA38);
    v8 = a2;
    v9 = sub_1C584F2A0();
    v10 = sub_1C584F9B0();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      v13 = a2;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v14;
      *v12 = v14;
      _os_log_impl(&dword_1C5620000, v9, v10, "MapItem Fetching Error: %@", v11, 0xCu);
      sub_1C5625230(v12, &unk_1EC16E670, &qword_1C586A030);
      MEMORY[0x1C694B7A0](v12, -1, -1);
      MEMORY[0x1C694B7A0](v11, -1, -1);
    }
  }

  sub_1C5691FA0();
  sub_1C56F4950();
  sub_1C584F730();
  sub_1C584F730();
  if (v17 == v16)
  {
    [a1 _markTransitInfoUpdated];
  }

  return a4(a1);
}

id sub_1C572F6D8(void *a1, void *a2, void (*a3)(__int128 *, uint64_t))
{
  v6 = type metadata accessor for WebPlacecardBridgeReply(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 || !a1)
  {
    if (qword_1EC17B020 != -1)
    {
      swift_once();
    }

    v20 = sub_1C584F2C0();
    __swift_project_value_buffer(v20, qword_1EC18FA38);
    v21 = a2;
    v22 = sub_1C584F2A0();
    v23 = sub_1C584F9B0();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      if (a2)
      {
        v26 = a2;
        v27 = _swift_stdlib_bridgeErrorToNSError();
        v28 = v27;
      }

      else
      {
        v27 = 0;
        v28 = 0;
      }

      *(v24 + 4) = v27;
      *v25 = v28;
      _os_log_impl(&dword_1C5620000, v22, v23, "MapItem Fetching Error: %@", v24, 0xCu);
      sub_1C5625230(v25, &unk_1EC16E670, &qword_1C586A030);
      MEMORY[0x1C694B7A0](v25, -1, -1);
      MEMORY[0x1C694B7A0](v24, -1, -1);
    }

    v29 = 0u;
    v30 = 0u;
    a3(&v29, 2);
    return sub_1C5625230(&v29, &qword_1EC16E790, &unk_1C586A110);
  }

  v10 = a1;
  result = [v10 _geoMapItem];
  if (result)
  {
    v12 = [result _placeDataAsData];
    result = swift_unknownObjectRelease();
    if (v12)
    {
      v13 = sub_1C584EAE0();
      v15 = v14;

      v16 = sub_1C584EAD0();
      v18 = v17;
      sub_1C566DD84(v13, v15);
      sub_1C5697740(v16, v18);
      *(&v30 + 1) = v6;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v29);
      sub_1C5743990(v9, boxed_opaque_existential_1, type metadata accessor for WebPlacecardBridgeReply);
      a3(&v29, 6);

      sub_1C57439F8(v9, type metadata accessor for WebPlacecardBridgeReply);
      return sub_1C5625230(&v29, &qword_1EC16E790, &unk_1C586A110);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1C572F9EC(unint64_t a1, void *a2, void (*a3)(_OWORD *, uint64_t), uint64_t a4)
{
  if (a2 || !a1)
  {
    goto LABEL_12;
  }

  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
    v13 = a1;
    v14 = sub_1C584FB90();
    a1 = v13;
    if (v14)
    {
      goto LABEL_5;
    }

LABEL_12:
    if (qword_1EC17B020 != -1)
    {
      swift_once();
    }

    v15 = sub_1C584F2C0();
    __swift_project_value_buffer(v15, qword_1EC18FA38);
    v16 = a2;
    v17 = sub_1C584F2A0();
    v18 = sub_1C584F9B0();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      if (a2)
      {
        v21 = a2;
        v22 = _swift_stdlib_bridgeErrorToNSError();
        v23 = v22;
      }

      else
      {
        v22 = 0;
        v23 = 0;
      }

      *(v19 + 4) = v22;
      *v20 = v23;
      _os_log_impl(&dword_1C5620000, v17, v18, "Error while fetching mapItem: %@ or empty mapItem", v19, 0xCu);
      sub_1C5625230(v20, &unk_1EC16E670, &qword_1C586A030);
      MEMORY[0x1C694B7A0](v20, -1, -1);
      MEMORY[0x1C694B7A0](v19, -1, -1);
    }

    memset(v24, 0, sizeof(v24));
    a3(v24, 2);
    sub_1C5625230(v24, &qword_1EC16E790, &unk_1C586A110);
    return;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

LABEL_5:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x1C694A320](0, a1);
  }

  else
  {
    if (!*(v7 + 16))
    {
      __break(1u);
      return;
    }

    v8 = *(a1 + 32);
  }

  v9 = v8;
  v10 = *sub_1C5764F70();
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  v12 = *(*v10 + 128);

  v12(v9, sub_1C57433D0, v11);
}

uint64_t sub_1C572FCB4(uint64_t a1, uint64_t a2, void (*a3)(__int128 *, uint64_t))
{
  v6 = type metadata accessor for WebPlacecardBridgeReply(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {

    sub_1C569CA9C(v9);
    sub_1C5697854(a1, a2);
    *(&v17 + 1) = v6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v16);
    sub_1C5743990(v9, boxed_opaque_existential_1, type metadata accessor for WebPlacecardBridgeReply);
    a3(&v16, 6);
    sub_1C57439F8(v9, type metadata accessor for WebPlacecardBridgeReply);
  }

  else
  {
    if (qword_1EC17B020 != -1)
    {
      swift_once();
    }

    v11 = sub_1C584F2C0();
    __swift_project_value_buffer(v11, qword_1EC18FA38);
    v12 = sub_1C584F2A0();
    v13 = sub_1C584F9B0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1C5620000, v12, v13, "empty route snapshot", v14, 2u);
      MEMORY[0x1C694B7A0](v14, -1, -1);
    }

    v16 = 0u;
    v17 = 0u;
    a3(&v16, 2);
  }

  return sub_1C5625230(&v16, &qword_1EC16E790, &unk_1C586A110);
}

void sub_1C572FEB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_bridge);
  sub_1C566BB7C(a1, a2, a3);
}

Swift::Void __swiftcall MUWebBasedPlacecardSectionController.updatePlacecard()()
{
  v1 = type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C569789C(v4);
  sub_1C569A8D8(8);
  v5 = *(v0 + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_bridge);
  sub_1C566BB7C(v4, 0, 0);

  sub_1C5718EA0();
  sub_1C57439F8(v4, type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall);
}

Swift::Void __swiftcall MUWebBasedPlacecardSectionController.cleanPlacecard()()
{
  v1 = type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C569789C(v4);
  sub_1C569A8D8(9);
  v5 = *(v0 + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_bridge);
  sub_1C566BB7C(v4, 0, 0);

  sub_1C57439F8(v4, type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall);
}

uint64_t MUWebBasedPlacecardSectionController.handleNativeUITap(for:)(uint64_t a1)
{
  v3 = type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WebPlacecardBridgeReply.MUNativeUITapArgs(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C569789C(v14);
  sub_1C569A8D8(7);
  sub_1C569BA18(v10);
  sub_1C569A908(v6);
  sub_1C569BA34(v10);
  sub_1C569AAB0(v6);
  sub_1C569A908(v6);
  sub_1C569B894(v10);
  if (a1)
  {
    v15 = 2 * (a1 == 1);
  }

  else
  {
    v15 = 1;
  }

  sub_1C569C758(v15);
  sub_1C569BA34(v10);
  sub_1C569AAB0(v6);
  v16 = *(v1 + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_bridge);
  sub_1C566BB7C(v14, 0, 0);

  return sub_1C57439F8(v14, type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall);
}

Swift::Void __swiftcall MUWebBasedPlacecardSectionController.updateUserData()()
{
  v1 = v0;
  v2 = type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v147 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v157 = &v147 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WebPlacecardBridgeReply.MURapsInReview(0);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v13 = &v147 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v147 - v15;
  v17 = type metadata accessor for WebPlacecardBridgeReply.MUUserNote(0);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v151 = &v147 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v21);
  v159 = &v147 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E660, &unk_1C58685F0);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v153 = &v147 - v25;
  v26 = sub_1C584EA90();
  v155 = *(v26 - 8);
  v156 = v26;
  MEMORY[0x1EEE9AC00](v26, v27);
  v162 = (&v147 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = type metadata accessor for WebPlacecardBridgeReply.MUArpRating(0);
  v161 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29 - 8, v30);
  v32 = &v147 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions(0);
  v35 = MEMORY[0x1EEE9AC00](v33 - 8, v34);
  v37 = &v147 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35, v38);
  v40 = &v147 - v39;
  v41 = type metadata accessor for WebPlacecardBridgeReply.MUUserData(0);
  v43 = MEMORY[0x1EEE9AC00](v41 - 8, v42);
  v152 = &v147 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x1EEE9AC00](v43, v45);
  v48 = &v147 - v47;
  v49 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0x128))(v46))
  {
    if (qword_1EC17B020 != -1)
    {
      swift_once();
    }

    v50 = sub_1C584F2C0();
    __swift_project_value_buffer(v50, qword_1EC18FA38);
    v162 = sub_1C584F2A0();
    v51 = sub_1C584F990();
    if (os_log_type_enabled(v162, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_1C5620000, v162, v51, "Skip updating UserData because the webView is still loading", v52, 2u);
      MEMORY[0x1C694B7A0](v52, -1, -1);
    }

    v53 = v162;

    return;
  }

  v148 = v13;
  v149 = v16;
  v150 = v5;
  v54 = sub_1C5698000(v48);
  v55 = (*v49 & *v0) + 224;
  v154 = *((*v49 & *v0) + 0xE0);
  v160 = v55;
  v56 = v154(v54);
  v57 = (*((*v49 & *v56) + 0x2B0))();

  if (v57)
  {
    sub_1C57716F4(v57, v40);
    sub_1C5743990(v40, v37, type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions);
    sub_1C5699F04(v37);

    v58 = sub_1C57439F8(v40, type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions);
  }

  v59 = v154;
  v60 = (v154)(v58);
  v61 = MEMORY[0x1E69E7D40];
  v62 = (*((*MEMORY[0x1E69E7D40] & *v60) + 0x238))();

  v63 = sub_1C569997C(v62 & 1);
  v64 = (v59)(v63);
  v65 = (*((*v61 & *v64) + 0x538))();

  if (v65 >= 3)
  {
    v66 = 0;
  }

  else
  {
    v66 = v65;
  }

  v158 = v48;
  v67 = sub_1C569A100(v66);
  v68 = (v59)(v67);
  v69 = (*((*v61 & *v68) + 0x250))();

  v70 = v157;
  v71 = v159;
  v72 = v162;
  if (v69)
  {
    if (v69 >> 62)
    {
      v73 = sub_1C584FB90();
      if (v73)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v73 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v73)
      {
LABEL_17:
        v147 = v1;
        v163 = MEMORY[0x1E69E7CC0];
        sub_1C5734448(0, v73 & ~(v73 >> 63), 0);
        if (v73 < 0)
        {
          __break(1u);
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

        v74 = 0;
        v75 = v163;
        do
        {
          if ((v69 & 0xC000000000000001) != 0)
          {
            v76 = MEMORY[0x1C694A320](v74, v69);
          }

          else
          {
            v76 = *(v69 + 8 * v74 + 32);
          }

          v77 = v76;
          sub_1C569A368(v32);
          v78 = [v77 category];
          v79 = sub_1C584F660();
          v81 = v80;

          sub_1C569A318(v79, v81);
          v82 = [v77 value];
          LODWORD(v78) = sub_1C584FE60();

          sub_1C569A330(v78);
          v163 = v75;
          v84 = *(v75 + 16);
          v83 = *(v75 + 24);
          if (v84 >= v83 >> 1)
          {
            sub_1C5734448((v83 > 1), v84 + 1, 1);
            v75 = v163;
          }

          ++v74;
          *(v75 + 16) = v84 + 1;
          sub_1C5743928(v32, v75 + ((*(v161 + 80) + 32) & ~*(v161 + 80)) + *(v161 + 72) * v84, type metadata accessor for WebPlacecardBridgeReply.MUArpRating);
          v72 = v162;
        }

        while (v73 != v74);

        v1 = v147;
        v70 = v157;
        v71 = v159;
        goto LABEL_28;
      }
    }

    v75 = MEMORY[0x1E69E7CC0];
LABEL_28:
    sub_1C569A070(v75);
    v61 = MEMORY[0x1E69E7D40];
  }

  v85 = v154;
  v86 = (v154)();
  v87 = v153;
  (*((*v61 & *v86) + 0x268))();

  v89 = v155;
  v88 = v156;
  if ((*(v155 + 48))(v87, 1, v156) == 1)
  {
    v90 = sub_1C5625230(v87, &unk_1EC16E660, &unk_1C58685F0);
    v91 = v150;
  }

  else
  {
    (*(v89 + 32))(v72, v87, v88);
    v92 = sub_1C584EAA0();
    v94 = v93;
    v95 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
    sub_1C566DCD4(v92, v94);
    v96 = sub_1C584EAC0();
    v97 = [v95 initWithData_];

    v98 = sub_1C566DD84(v92, v94);
    if (v97)
    {
      v99 = UIImagePNGRepresentation(v97);
      v91 = v150;
      if (v99)
      {
        v100 = v99;
        v101 = sub_1C584EAE0();
        v103 = v102;

        v104 = sub_1C584EAD0();
        sub_1C569A0B8(v104, v105);

        v106 = v101;
        v61 = MEMORY[0x1E69E7D40];
        v107 = v103;
        v85 = v154;
        sub_1C566DD84(v106, v107);
        v108 = sub_1C566DD84(v92, v94);
        v90 = (*(v155 + 8))(v162, v156, v108);
      }

      else
      {
        (*(v155 + 8))(v162, v156);

        sub_1C566DD84(v92, v94);
      }

      v71 = v159;
    }

    else
    {
      (*(v155 + 8))(v162, v156, v98);
      sub_1C566DD84(v92, v94);
      v71 = v159;
      v91 = v150;
    }
  }

  v109 = (v85)(v90);
  v110 = (*((*v61 & *v109) + 0x358))();
  v112 = v111;

  if (v112)
  {
    sub_1C569A148(v71);
    v114 = sub_1C569A67C(v110, v112);
    v115 = (v85)(v114);
    v116 = (*((*v61 & *v115) + 0x328))();

    if (v116)
    {
      v117 = UIImagePNGRepresentation(v116);

      if (v117)
      {
        v118 = sub_1C584EAE0();
        v120 = v119;

        v121 = sub_1C584EAD0();
        sub_1C569A694(v121, v122);
        v123 = v120;
        v71 = v159;
        sub_1C566DD84(v118, v123);
      }
    }

    v124 = v151;
    sub_1C5743990(v71, v151, type metadata accessor for WebPlacecardBridgeReply.MUUserNote);
    sub_1C569A1AC(v124);
    v113 = sub_1C57439F8(v71, type metadata accessor for WebPlacecardBridgeReply.MUUserNote);
  }

  v125 = (v85)(v113);
  v126 = (*((*v61 & *v125) + 0x328))();

  if (!v126)
  {
    goto LABEL_49;
  }

  v128 = UIImagePNGRepresentation(v126);

  if (!v128)
  {
    goto LABEL_49;
  }

  v129 = sub_1C584EAE0();
  v131 = v130;

  v132 = v85();
  v133 = (*((*v61 & *v132) + 0x2C8))();

  if (v133 < 0)
  {
    v127.n128_f64[0] = sub_1C566DD84(v129, v131);
    goto LABEL_49;
  }

  sub_1C5699AB8(v149);
  v134 = sub_1C584EAD0();
  v136 = sub_1C569A464(v134, v135);
  v137 = (v85)(v136);
  v138 = (*((*v61 & *v137) + 0x2C8))();

  if ((v138 & 0x8000000000000000) != 0)
  {
    goto LABEL_53;
  }

  if (HIDWORD(v138))
  {
LABEL_54:
    __break(1u);
    return;
  }

  v139 = v149;
  sub_1C569A47C(v138);
  v140 = v148;
  sub_1C5743990(v139, v148, type metadata accessor for WebPlacecardBridgeReply.MURapsInReview);
  sub_1C5699B24(v140);
  sub_1C566DD84(v129, v131);
  sub_1C57439F8(v139, type metadata accessor for WebPlacecardBridgeReply.MURapsInReview);
LABEL_49:
  v141 = (v85)(v127);
  v142 = (*((*v61 & *v141) + 0x220))();

  v143 = v158;
  if (v142)
  {
    v144 = sub_1C5770BCC(v142);

    sub_1C5699A18(v144);
  }

  sub_1C569789C(v70);
  sub_1C569A8D8(2);
  v145 = v152;
  sub_1C5743990(v143, v152, type metadata accessor for WebPlacecardBridgeReply.MUUserData);
  sub_1C569A908(v91);
  sub_1C569AF54(v145);
  sub_1C569AAB0(v91);
  v146 = *(v1 + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_bridge);
  sub_1C566BB7C(v70, 0, 0);

  sub_1C57439F8(v70, type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall);
  sub_1C57439F8(v143, type metadata accessor for WebPlacecardBridgeReply.MUUserData);
}

Swift::Void __swiftcall MUWebBasedPlacecardSectionController.updateUserPreferences()()
{
  v1 = v0;
  v2 = type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for WebPlacecardBridgeReply.MUUserPreferencesArgs(0);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = &v23 - v17;
  v19 = MEMORY[0x1E69E7D40];
  v20 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xE0))(v16);
  v21 = (*((*v19 & *v20) + 0x550))();

  sub_1C5770BD0(v21, v18);
  sub_1C569789C(v9);
  sub_1C569A8D8(11);
  sub_1C5743990(v18, v14, type metadata accessor for WebPlacecardBridgeReply.MUUserPreferencesArgs);
  sub_1C569A908(v5);
  sub_1C569BDE8(v14);
  sub_1C569AAB0(v5);
  v22 = *(v1 + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_bridge);
  sub_1C566BB7C(v9, 0, 0);

  sub_1C57439F8(v9, type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall);
  sub_1C57439F8(v18, type metadata accessor for WebPlacecardBridgeReply.MUUserPreferencesArgs);
}

Swift::Void __swiftcall MUWebBasedPlacecardSectionController.updateDirectionsMetadata()()
{
  v1 = v0;
  v2 = type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata(0);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = &v52 - v17;
  v19 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0x128))(v16))
  {
    if (qword_1EC17B020 != -1)
    {
      swift_once();
    }

    v20 = sub_1C584F2C0();
    __swift_project_value_buffer(v20, qword_1EC18FA38);
    v53 = sub_1C584F2A0();
    v21 = sub_1C584F990();
    if (os_log_type_enabled(v53, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1C5620000, v53, v21, "Skip updating DirectionsMetadata because the webView is still loading", v22, 2u);
      MEMORY[0x1C694B7A0](v22, -1, -1);
    }

    v23 = v53;
  }

  else
  {
    v24 = sub_1C56984DC(v18);
    v25 = *((*v19 & *v0) + 0xE0);
    v26 = v25(v24);
    v27 = (*((*v19 & *v26) + 0x478))();

    v28 = sub_1C569C20C(v27 & 1);
    v29 = v25(v28);
    v30 = (*((*v19 & *v29) + 0x490))();

    v31 = sub_1C569C17C(v30 & 1);
    v32 = v25(v31);
    v33 = (*((*v19 & *v32) + 0x4A8))();

    v34 = sub_1C569C14C(v33 & 1);
    v35 = v25(v34);
    v36 = (*((*v19 & *v35) + 0x4C0))();

    v37 = sub_1C569C1AC(v36 & 1);
    v38 = v25(v37);
    v39 = (*((*v19 & *v38) + 0x4D8))();

    v40 = sub_1C569C1DC(v39 & 1);
    v41 = v25(v40);
    v42 = (*((*v19 & *v41) + 0x4F0))();

    v43 = sub_1C569C23C(v42);
    v44 = v25(v43);
    v45 = (*((*v19 & *v44) + 0x508))();

    v46 = sub_1C569C2D8(v45);
    v47 = v25(v46);
    v48 = (*((*v19 & *v47) + 0x520))();
    v50 = v49;

    if (v50)
    {
      sub_1C569C274(v48, v50);
    }

    sub_1C569789C(v9);
    sub_1C569A8D8(3);
    sub_1C5743990(v18, v14, type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata);
    sub_1C569A908(v5);
    sub_1C569B0C0(v14);
    sub_1C569AAB0(v5);
    v51 = *(v1 + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_bridge);
    sub_1C566BB7C(v9, 0, 0);

    sub_1C57439F8(v9, type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall);
    sub_1C57439F8(v18, type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata);
  }
}

void sub_1C5731EE8()
{
  v1 = v0;
  v2 = type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider(0);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = &v38 - v17;
  v19 = MEMORY[0x1E69E7D40];
  v20 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xE0))(v16);
  v21 = (*((*v19 & *v20) + 0x460))();

  if (v21)
  {
    if ([v21 hasFoundDistanceOrETA])
    {
      sub_1C5698308(v18);
      v22 = [objc_opt_self() axIDStringForTransportType_];
      v23 = sub_1C584F660();
      v25 = v24;

      sub_1C569A6AC(v23, v25);
      [v21 etaTravelTime];
      *&v26 = v26;
      sub_1C569A6C4(*&v26);
      v27 = [v21 distanceString];
      if (v27)
      {
        v28 = v27;
        v29 = sub_1C584F660();
        v31 = v30;
      }

      else
      {
        v29 = 0;
        v31 = 0xE000000000000000;
      }

      sub_1C569A6FC(v29, v31);
      [v21 distance];
      *&v36 = v36;
      sub_1C569A754(*&v36);
      sub_1C569789C(v9);
      sub_1C569A8D8(1);
      sub_1C5743990(v18, v14, type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider);
      sub_1C569A908(v5);
      sub_1C569ADE8(v14);
      sub_1C569AAB0(v5);
      v37 = *(v1 + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_bridge);
      sub_1C566BB7C(v9, 0, 0);

      sub_1C57439F8(v9, type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall);
      sub_1C57439F8(v18, type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider);
      return;
    }
  }

  if (qword_1EC17B020 != -1)
  {
    swift_once();
  }

  v32 = sub_1C584F2C0();
  __swift_project_value_buffer(v32, qword_1EC18FA38);
  v39 = sub_1C584F2A0();
  v33 = sub_1C584F990();
  if (os_log_type_enabled(v39, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_1C5620000, v39, v33, "Empty ETAProvider or distance not found", v34, 2u);
    MEMORY[0x1C694B7A0](v34, -1, -1);
  }

  v35 = v39;
}

Swift::Void __swiftcall MUWebBasedPlacecardSectionController.handleCardExpansion(progress:height:)(Swift::Float progress, Swift::Float height)
{
  v5 = type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for WebPlacecardBridgeReply.MUCardExpansionArgs(0);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v21 = &v23 - v20;
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x1B0))(v19, progress);
  sub_1C569AC64(v21);
  sub_1C569C0DC(progress);
  sub_1C569C114(height);
  sub_1C569789C(v12);
  sub_1C569A8D8(0);
  sub_1C5743990(v21, v17, type metadata accessor for WebPlacecardBridgeReply.MUCardExpansionArgs);
  sub_1C569A908(v8);
  sub_1C569AC7C(v17);
  sub_1C569AAB0(v8);
  v22 = *(v2 + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_bridge);
  sub_1C566BB7C(v12, 0, 0);

  sub_1C57439F8(v12, type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall);
  sub_1C57439F8(v21, type metadata accessor for WebPlacecardBridgeReply.MUCardExpansionArgs);
}

Swift::Void __swiftcall MUWebBasedPlacecardSectionController.handleCardExpansionForVerifiedHeader(progress:)(Swift::Float progress)
{
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1B0))();
  *&v3 = progress;

  [v1 callBridgeMethodForExpansionProgressWithProgress_];
}

uint64_t sub_1C5732754(uint64_t a1)
{
  v2 = type metadata accessor for MUVGVehicle(0);
  v63 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (&v51 - v8);
  v10 = type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v53 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v54 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for WebPlacecardBridgeReply.MUVGVehiclesArgs(0);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v51 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v20);
  v52 = &v51 - v21;
  sub_1C569B5A4((&v51 - v21));
  v22 = *(a1 + OBJC_IVAR____TtC6MapsUI23MUEVChargerAvailability_vehicles);
  if (v22 >> 62)
  {
    goto LABEL_52;
  }

  for (i = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C584FB90())
  {
    v24 = 0;
    v62 = v22 & 0xC000000000000001;
    v57 = v22 & 0xFFFFFFFFFFFFFF8;
    v58 = v22;
    v56 = v22 + 32;
    v25 = MEMORY[0x1E69E7CC0];
    v60 = v9;
    v61 = v6;
    v59 = i;
    while (1)
    {
      if (v62)
      {
        v26 = MEMORY[0x1C694A320](v24, v58);
      }

      else
      {
        if (v24 >= *(v57 + 16))
        {
          goto LABEL_51;
        }

        v26 = *(v56 + 8 * v24);
      }

      v27 = v26;
      if (__OFADD__(v24++, 1))
      {
        break;
      }

      sub_1C569690C(v9);
      v29 = [v27 displayName];
      v30 = sub_1C584F660();
      v32 = v31;

      sub_1C56968F4(v30, v32);
      v64 = v27;
      v33 = [v27 supportedConnectors];
      v34 = sub_1C568FD94();
      v35 = *(v34 + 2);
      if (v35)
      {
        v36 = (v34 + 32);
        v37 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          v39 = *v36++;
          v38 = v39;
          if (v39 > 4)
          {
            if (v38 <= 6)
            {
              if (v38 == 5)
              {
                if ((v33 & 0x10) != 0)
                {
                  goto LABEL_39;
                }
              }

              else if ((v33 & 0x20) != 0)
              {
                goto LABEL_39;
              }
            }

            else if (v38 == 7)
            {
              if ((v33 & 0x40) != 0)
              {
                goto LABEL_39;
              }
            }

            else if (v38 == 8)
            {
              if ((v33 & 0x80) != 0)
              {
                goto LABEL_39;
              }
            }

            else if ((v33 & 0x100) != 0)
            {
              goto LABEL_39;
            }
          }

          else if (v38 <= 1)
          {
            if (!v38 || (v33 & 1) != 0)
            {
LABEL_39:
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v37 = sub_1C5734178(0, *(v37 + 2) + 1, 1, v37);
              }

              v41 = *(v37 + 2);
              v40 = *(v37 + 3);
              if (v41 >= v40 >> 1)
              {
                v37 = sub_1C5734178((v40 > 1), v41 + 1, 1, v37);
              }

              *(v37 + 2) = v41 + 1;
              v37[v41 + 32] = v38;
            }
          }

          else if (v38 == 2)
          {
            if ((v33 & 2) != 0)
            {
              goto LABEL_39;
            }
          }

          else if (v38 == 3)
          {
            if ((v33 & 4) != 0)
            {
              goto LABEL_39;
            }
          }

          else if ((v33 & 8) != 0)
          {
            goto LABEL_39;
          }

          if (!--v35)
          {
            goto LABEL_44;
          }
        }
      }

      v37 = MEMORY[0x1E69E7CC0];
LABEL_44:

      v9 = v60;

      *v9 = v37;
      v6 = v61;
      sub_1C5743990(v9, v61, type metadata accessor for MUVGVehicle);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_1C573426C(0, v25[2] + 1, 1, v25, &qword_1EC170A40, &qword_1C58783A8, type metadata accessor for MUVGVehicle);
      }

      v42 = v64;
      v44 = v25[2];
      v43 = v25[3];
      v22 = v44 + 1;
      if (v44 >= v43 >> 1)
      {
        v25 = sub_1C573426C((v43 > 1), v44 + 1, 1, v25, &qword_1EC170A40, &qword_1C58783A8, type metadata accessor for MUVGVehicle);
      }

      v25[2] = v22;
      sub_1C5743928(v6, v25 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v44, type metadata accessor for MUVGVehicle);
      sub_1C57439F8(v9, type metadata accessor for MUVGVehicle);
      if (v24 == v59)
      {
        goto LABEL_54;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    ;
  }

  v25 = MEMORY[0x1E69E7CC0];
LABEL_54:
  v45 = v52;

  *v45 = v25;
  v46 = v54;
  sub_1C569789C(v54);
  sub_1C569A8D8(5);
  v47 = v51;
  sub_1C5743990(v45, v51, type metadata accessor for WebPlacecardBridgeReply.MUVGVehiclesArgs);
  v48 = v53;
  sub_1C569A908(v53);
  sub_1C569B5BC(v47);
  sub_1C569AAB0(v48);
  v49 = *(v55 + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_bridge);
  sub_1C566BB7C(v46, 0, 0);

  sub_1C57439F8(v46, type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall);
  return sub_1C57439F8(v45, type metadata accessor for WebPlacecardBridgeReply.MUVGVehiclesArgs);
}

Swift::Void __swiftcall MUWebBasedPlacecardSectionController.updateDownloadButton()()
{
  v1 = v0;
  v2 = type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider(0);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = &v41 - v17;
  v20 = MEMORY[0x1EEE9AC00](v16, v19);
  v22 = &v41 - v21;
  v23 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0x128))(v20))
  {
    if (qword_1EC17B020 != -1)
    {
      swift_once();
    }

    v24 = sub_1C584F2C0();
    __swift_project_value_buffer(v24, qword_1EC18FA38);
    v42 = sub_1C584F2A0();
    v25 = sub_1C584F990();
    if (os_log_type_enabled(v42, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1C5620000, v42, v25, "Skip updating offlineMapProvider because the webView is still loading", v26, 2u);
      MEMORY[0x1C694B7A0](v26, -1, -1);
    }

    v27 = v42;
  }

  else
  {
    v28 = *((*v23 & *v0) + 0xE0);
    v42 = ((*v23 & *v0) + 224);
    v29 = v28();
    v30 = (*((*v23 & *v29) + 0x580))();

    if (v30)
    {
      [v30 downloadState];
      v31 = [v30 downloadProgress];
      GEOLocationCoordinate2DMake();
      v33 = v32;
      v34 = v28;
      v36 = v35;
      swift_unknownObjectRelease();
      sub_1C5774BBC(v33, v36, v18);

      v37 = sub_1C5743928(v18, v22, type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider);
      v38 = (v34)(v37);
      v39 = (*((*MEMORY[0x1E69E7D40] & *v38) + 0x448))();

      sub_1C569C544(v39 & 1);
      sub_1C569789C(v9);
      sub_1C569A8D8(6);
      sub_1C5743990(v22, v14, type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider);
      sub_1C569A908(v5);
      sub_1C569B728(v14);
      sub_1C569AAB0(v5);
      v40 = *(v1 + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_bridge);
      sub_1C566BB7C(v9, 0, 0);

      sub_1C57439F8(v9, type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall);
      sub_1C57439F8(v22, type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider);
    }
  }
}

id MUWebBasedPlacecardSectionController.etaProviderUpdated(_:)(id result)
{
  if (result)
  {
    return [v1 updateETAProvider];
  }

  return result;
}

id MUWebBasedPlacecardSectionController.evChargerAvailabilityProvider(_:didUpdateAvailability:)(uint64_t a1, void *a2)
{
  v3 = *&v2[OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_evChargerAvailability];
  *&v2[OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_evChargerAvailability] = a2;
  v4 = a2;

  return [v2 updateEVChargerWithAvailability_];
}

void MUWebBasedPlacecardSectionController.didTapCloseButton(in:)()
{
  type metadata accessor for MUPlaceActionDispatcher.CloseAction();
  v0 = MUPlaceActionDispatcher.CloseAction.__allocating_init()();
  type metadata accessor for MUPlaceActionFeedbackEnvironment();
  v1 = sub_1C56433CC(0);
  MUPlaceActionDispatcher.performAction(for:environment:completion:)();
}

Swift::Void __swiftcall MUWebBasedPlacecardSectionController.didUpdateHeight()()
{
  v1 = [v0 delegate];
  if (v1)
  {
    [v1 placeSectionControllerRequestsLayoutChange_];

    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall MUWebBasedPlacecardSectionController.didSelectMenuItem(itemId:menuItemId:menuType:)(Swift::String itemId, Swift::String menuItemId, Swift::Int menuType)
{
  object = menuItemId._object;
  countAndFlagsBits = menuItemId._countAndFlagsBits;
  v5 = itemId._object;
  v6 = itemId._countAndFlagsBits;
  v7 = sub_1C57042D8(menuType);
  if (v7 == 3)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  sub_1C572DC6C(v6, v5, countAndFlagsBits, object, v8);
}

Swift::Void __swiftcall MUWebBasedPlacecardSectionController.webViewIsCurrent(_:)(Swift::Bool a1)
{
  v2 = v1;
  v4 = type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for WebPlacecardBridgeReply.MUWebViewVisibilityArgs(0);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v21 - v18;
  sub_1C569BBA0(&v21 - v18);
  sub_1C569C7E4(a1);
  sub_1C569789C(v11);
  sub_1C569A8D8(10);
  sub_1C5743990(v19, v16, type metadata accessor for WebPlacecardBridgeReply.MUWebViewVisibilityArgs);
  sub_1C569A908(v7);
  sub_1C569BBBC(v16);
  sub_1C569AAB0(v7);
  v20 = *(v2 + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_bridge);
  sub_1C566BB7C(v11, 0, 0);

  sub_1C57439F8(v11, type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall);
  sub_1C57439F8(v19, type metadata accessor for WebPlacecardBridgeReply.MUWebViewVisibilityArgs);
}

void *MUWebBasedPlacecardSectionController.webBasedPlacecardVC(_:didScroll:)(uint64_t a1, uint64_t a2)
{
  result = (*((*MEMORY[0x1E69E7D40] & *v2) + 0xB0))(a1);
  if (result)
  {
    [result sectionController:v2 didScroll:a2];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1C5733B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1C584F630();
  v8 = sub_1C584F630();
  [v5 didSelectMenuItemWithItemId:v7 menuItemId:v8 menuType:a5];
}

uint64_t sub_1C5733C20(uint64_t a1)
{
  sub_1C584F6C0();
}

unint64_t sub_1C5733D34@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C5742274(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1C5733D64(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF746E656D756772;
  v4 = 0x4164696C61766E69;
  v5 = 0x80000001C589A870;
  v6 = 0x80000001C589A890;
  v7 = 0xD000000000000016;
  if (v2 != 4)
  {
    v7 = 0x6E776F6E6B6E75;
    v6 = 0xE700000000000000;
  }

  if (v2 == 3)
  {
    v7 = 0xD000000000000013;
  }

  else
  {
    v5 = v6;
  }

  if (v2 != 1)
  {
    v4 = 0x7461447974706D65;
    v3 = 0xE900000000000061;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000012;
    v3 = 0x80000001C589A840;
  }

  if (*v1 <= 2u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v7;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

id MUWebBasedPlacecardSectionController.sectionView.getter()
{
  result = [*(v0 + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_webContentViewController) view];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

void *MUWebBasedPlacecardSectionController.sectionViewController.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_webContentViewController);
  v2 = v1;
  return v1;
}

Swift::OpaquePointer_optional __swiftcall MUWebBasedPlacecardSectionController.draggableContent()()
{
  v0 = 0;
  result.value._rawValue = v0;
  return result;
}

void sub_1C5733F8C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_debugPanelViewController;
  v3 = *(v0 + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_debugPanelViewController);
  if (v3)
  {
    [v3 dismissViewControllerAnimated:1 completion:0];
  }

  type metadata accessor for MUWebBasedDebugPanelViewController();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = sub_1C56540A4(sub_1C57422F4, v4);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  [*(v1 + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_webContentViewController) presentViewController:v5 animated:1 completion:0];
  v6 = *(v1 + v2);
  *(v1 + v2) = v5;
}

uint64_t sub_1C57340D4()
{
  v0 = sub_1C584F2C0();
  __swift_allocate_value_buffer(v0, qword_1EC18FA38);
  __swift_project_value_buffer(v0, qword_1EC18FA38);
  sub_1C5715FD8();
  swift_beginAccess();

  return sub_1C584F2B0();
}

char *sub_1C5734178(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170A48, &qword_1C58783B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1C573426C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x1E69E7CC0];
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

void *sub_1C5734448(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C5734468(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C5734468(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC170A20, &qword_1C58783A0);
  v10 = *(type metadata accessor for WebPlacecardBridgeReply.MUArpRating(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for WebPlacecardBridgeReply.MUArpRating(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_1C5734640(SEL *a1, void (*a2)(uint64_t))
{
  v5 = v2;
  v6 = OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_configuration;
  swift_beginAccess();
  v7 = *(v2 + v6);
  v8 = MEMORY[0x1E69E7D40];
  v9 = *((*MEMORY[0x1E69E7D40] & *v7) + 0x460);
  v10 = v7;
  v11 = v9();

  if (v11)
  {
    [v11 *a1];
  }

  v12 = *(v5 + v6);
  v13 = *((*v8 & *v12) + 0x1C0);
  v14 = v12;
  v15 = v13();

  if (v15)
  {
    a2(v5);
  }

  v16 = *(v5 + v6);
  v17 = *((*v8 & *v16) + 0x580);
  v18 = v16;
  v19 = v17();

  if (v19)
  {
    [v19 *a1];
    swift_unknownObjectRelease();
  }
}

void *sub_1C57347EC(void *a1, void *a2, void *a3, void *a4)
{
  v5 = v4;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_debugPanelViewController] = 0;
  v10 = OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_resourceManager;
  v11 = sub_1C5768270();
  v12 = *v11;
  *&v5[v10] = *v11;
  *&v5[OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_evChargerAvailability] = 0;
  *&v5[OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_topInset] = 0;
  *&v5[OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_bottomInset] = 0;
  v13 = &v5[OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController____lazy_storage___cardExpansionProgress];
  *v13 = 0;
  v13[4] = 1;
  *&v5[OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_actionDispatcher] = a2;
  *&v5[OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_bridge] = a3;
  *&v5[OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_configuration] = a4;
  *&v5[OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController__mapItem] = a1;
  type metadata accessor for MUWebBasedPlacecardViewController();
  v14 = v12;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a1;
  v19 = sub_1C566AF74();
  *&v5[OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_webContentViewController] = MUWebBasedPlacecardViewController.__allocating_init(webView:)(v19);
  v32.receiver = v5;
  v32.super_class = type metadata accessor for MUWebBasedPlacecardSectionController();
  v20 = objc_msgSendSuper2(&v32, sel_initWithMapItem_, v18);
  [v20 setupWebContentViewController];
  v21 = sub_1C566AEC8(v20);
  v22 = MEMORY[0x1E69E7D40];
  v23 = *((*MEMORY[0x1E69E7D40] & *v20) + 0xE0);
  v24 = (v23)(v21);
  v25 = (*((*v22 & *v24) + 0x460))();

  if (v25)
  {
    [v25 addObserver_];
  }

  v26 = v23();
  v27 = (*((*v22 & *v26) + 0x1C0))();

  if (v27)
  {
    MUEVChargerAvailabilityProvider.registerObserver(_:)(v20);
  }

  v28 = v23();
  v29 = (*((*v22 & *v28) + 0x580))();

  if (v29)
  {
    [v29 addObserver_];
    swift_unknownObjectRelease();
  }

  [v20 loadWebViewFromResourceURL];
  v30 = [objc_opt_self() defaultCenter];
  [v30 addObserver:v20 selector:sel_contentSizeDidChange name:*MEMORY[0x1E69DDC48] object:0];

  [v20 addTestingObserverIfNeeded];
  return v20;
}

void sub_1C5734B88()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_1C584EA20();
    [v1 loadPlaceCardWithUrl_];
  }
}

void sub_1C5734C0C(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170928, &unk_1C5878148);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v39[-1] - v8;
  v10 = type metadata accessor for WebPlacecardBridgeReply(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v39[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C56466CC(a1, v41, &qword_1EC16E790, &unk_1C586A110);
  if (v42)
  {
    v15 = swift_dynamicCast();
    (*(v11 + 56))(v9, v15 ^ 1u, 1, v10);
    if ((*(v11 + 48))(v9, 1, v10) != 1)
    {
      sub_1C5743928(v9, v14, type metadata accessor for WebPlacecardBridgeReply);
      sub_1C5742CB4(&qword_1EC16D150, type metadata accessor for WebPlacecardBridgeReply, &unk_1C5872030);
      v17 = sub_1C584F140();
      v19 = v18;
      v20 = sub_1C584EAD0();
      v22 = v21;
      sub_1C566DD84(v17, v19);
      v42 = MEMORY[0x1E69E6158];
      v41[0] = v20;
      v41[1] = v22;
      if (a2 > 3u)
      {
        if (a2 == 4)
        {
          v23 = 0x80000001C589A890;
        }

        else
        {
          v23 = 0;
          if (a2 == 5)
          {
            v23 = 0xE700000000000000;
          }
        }
      }

      else if (a2 == 1)
      {
        v23 = 0xEF746E656D756772;
      }

      else if (a2 == 2)
      {
        v23 = 0xE900000000000061;
      }

      else
      {
        v23 = 0x80000001C589A870;
      }

      sub_1C56466CC(v41, v39, &qword_1EC16E790, &unk_1C586A110);
      v31 = v40;
      if (v40)
      {
        v32 = __swift_project_boxed_opaque_existential_1(v39, v40);
        v33 = *(v31 - 8);
        MEMORY[0x1EEE9AC00](v32, v32);
        v35 = &v39[-1] - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v33 + 16))(v35);
        v36 = sub_1C584FDB0();
        (*(v33 + 8))(v35, v31);
        __swift_destroy_boxed_opaque_existential_1(v39);
        if (v23)
        {
LABEL_35:
          v37 = sub_1C584F630();
LABEL_38:
          (*(a3 + 16))(a3, v36, v37);

          swift_unknownObjectRelease();

          sub_1C57439F8(v14, type metadata accessor for WebPlacecardBridgeReply);
          sub_1C5625230(v41, &qword_1EC16E790, &unk_1C586A110);
          return;
        }
      }

      else
      {
        v36 = 0;
        if (v23)
        {
          goto LABEL_35;
        }
      }

      v37 = 0;
      goto LABEL_38;
    }
  }

  else
  {
    sub_1C5625230(v41, &qword_1EC16E790, &unk_1C586A110);
    (*(v11 + 56))(v9, 1, 1, v10);
  }

  sub_1C5625230(v9, &qword_1EC170928, &unk_1C5878148);
  if (a2 > 3u)
  {
    if (a2 == 4)
    {
      v16 = 0x80000001C589A890;
    }

    else if (a2 == 5)
    {
      v16 = 0xE700000000000000;
    }

    else
    {
      v16 = 0;
    }
  }

  else if (a2 == 1)
  {
    v16 = 0xEF746E656D756772;
  }

  else if (a2 == 2)
  {
    v16 = 0xE900000000000061;
  }

  else
  {
    v16 = 0x80000001C589A870;
  }

  sub_1C56466CC(a1, v41, &qword_1EC16E790, &unk_1C586A110);
  v24 = v42;
  if (!v42)
  {
    v29 = 0;
    if (v16)
    {
      goto LABEL_23;
    }

LABEL_25:
    v30 = 0;
    goto LABEL_26;
  }

  v25 = __swift_project_boxed_opaque_existential_1(v41, v42);
  v26 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v25, v25);
  v28 = &v39[-1] - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 16))(v28);
  v29 = sub_1C584FDB0();
  (*(v26 + 8))(v28, v24);
  __swift_destroy_boxed_opaque_existential_1(v41);
  if (!v16)
  {
    goto LABEL_25;
  }

LABEL_23:
  v30 = sub_1C584F630();
LABEL_26:
  (*(a3 + 16))(a3, v29, v30);

  swift_unknownObjectRelease();
}

void sub_1C5735318(uint64_t *a1, void *a2, const void *a3)
{
  v45 = a2;
  v5 = type metadata accessor for WebPlacecardBridge.MUAttributionArgument(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0);
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = &v44 - v17;
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &v44 - v20;
  v22 = swift_allocObject();
  *(v22 + 16) = a3;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1C5743EF8;
  *(v23 + 24) = v22;
  v24 = *a1;
  if (!*(*a1 + 16))
  {
    _Block_copy(a3);
    _Block_copy(a3);
    v32 = qword_1EC17B020;

    if (v32 != -1)
    {
      swift_once();
    }

    v33 = sub_1C584F2C0();
    __swift_project_value_buffer(v33, qword_1EC18FA38);
    v34 = sub_1C584F2A0();
    v35 = sub_1C584F9B0();
    if (!os_log_type_enabled(v34, v35))
    {
      goto LABEL_18;
    }

    v36 = swift_slowAlloc();
    *v36 = 0;
    v37 = "empty vendorId for getAttributionData bridge call";
    goto LABEL_17;
  }

  v25 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  sub_1C5743990(v24 + v25, v21, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
  _Block_copy(a3);
  _Block_copy(a3);

  sub_1C56907E0(v8);
  sub_1C57439F8(v21, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
  v44 = sub_1C5695B18();
  v27 = v26;
  sub_1C57439F8(v8, type metadata accessor for WebPlacecardBridge.MUAttributionArgument);
  if (!*(v24 + 16))
  {
LABEL_13:

    if (qword_1EC17B020 != -1)
    {
      swift_once();
    }

    v43 = sub_1C584F2C0();
    __swift_project_value_buffer(v43, qword_1EC18FA38);
    v34 = sub_1C584F2A0();
    v35 = sub_1C584F9B0();
    if (!os_log_type_enabled(v34, v35))
    {
      goto LABEL_18;
    }

    v36 = swift_slowAlloc();
    *v36 = 0;
    v37 = "invalid argument for getAttributionData bridge call";
LABEL_17:
    _os_log_impl(&dword_1C5620000, v34, v35, v37, v36, 2u);
    MEMORY[0x1C694B7A0](v36, -1, -1);
LABEL_18:

    memset(v46, 0, sizeof(v46));
    _Block_copy(a3);
    sub_1C5734C0C(v46, 1u, a3);
    _Block_release(a3);
    sub_1C5625230(v46, &qword_1EC16E790, &unk_1C586A110);

    goto LABEL_19;
  }

  sub_1C5743990(v24 + v25, v18, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
  sub_1C56907E0(v8);
  sub_1C57439F8(v18, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
  v28 = sub_1C5695B30();
  sub_1C57439F8(v8, type metadata accessor for WebPlacecardBridge.MUAttributionArgument);
  LOBYTE(v46[0]) = v28 & 1;
  v47 = 1;
  sub_1C56F5740();
  if ((sub_1C584F620() & 1) == 0)
  {
    if (*(v24 + 16))
    {
      sub_1C5743990(v24 + v25, v14, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      sub_1C56907E0(v8);
      sub_1C57439F8(v14, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      v38 = sub_1C5695B30();
      sub_1C57439F8(v8, type metadata accessor for WebPlacecardBridge.MUAttributionArgument);
      LOBYTE(v46[0]) = v38 & 1;
      v47 = 0;
      if (sub_1C584F620())
      {
        v39 = *sub_1C5764F70();

        v40 = [v45 mapItem];
        v41 = swift_allocObject();
        *(v41 + 16) = sub_1C5743EE0;
        *(v41 + 24) = v23;
        v42 = *(*v39 + 112);

        v42(v44, v27, v40, sub_1C5743F24, v41);

        goto LABEL_12;
      }
    }

    goto LABEL_13;
  }

  v29 = *sub_1C5764F70();
  v30 = swift_allocObject();
  *(v30 + 16) = sub_1C5743EE0;
  *(v30 + 24) = v23;
  v31 = *(*v29 + 120);

  v31(v44, v27, sub_1C5743F24, v30);

LABEL_12:

LABEL_19:
  _Block_release(a3);
}

double sub_1C57359D8(uint64_t *a1, void *a2, const void *a3)
{
  v37 = a2;
  v5 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v36 = &v36 - v12;
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v36 - v14;
  v16 = type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0);
  v38 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v36 - v22;
  v24 = swift_allocObject();
  *(v24 + 16) = a3;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1C5743EF8;
  *(v25 + 24) = v24;
  _Block_copy(a3);

  BOOL = GEOConfigGetBOOL();
  v27 = *a1;
  if (!BOOL || !*(v27 + 16) || (sub_1C5743990(v27 + ((*(v38 + 80) + 32) & ~*(v38 + 80)), v23, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument), sub_1C5690AF4(v15), sub_1C57439F8(v23, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument), v28 = sub_1C56921A8(), sub_1C57439F8(v15, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction), LOBYTE(v40[0]) = v28, v39 = 52, sub_1C56F4B10(), (sub_1C584F620() & 1) == 0))
  {
    if (*(v27 + 16))
    {
      sub_1C5743990(v27 + ((*(v38 + 80) + 32) & ~*(v38 + 80)), v20, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      sub_1C5690AF4(v9);
      sub_1C57439F8(v20, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      v29 = v36;
      sub_1C5743928(v9, v36, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction);
      v30 = [v37 mapItem];
      sub_1C5774F00(v30);
      v32 = v31;

      if (v32)
      {
        type metadata accessor for MUPlaceActionFeedbackEnvironment();
        v33 = sub_1C56433CC(0);
        v34 = swift_allocObject();
        *(v34 + 16) = sub_1C5743EE0;
        *(v34 + 24) = v25;

        MUPlaceActionDispatcher.performAction(for:environment:completion:)();

        sub_1C57439F8(v29, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction);
        goto LABEL_10;
      }

      sub_1C57439F8(v29, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction);
    }

    memset(v40, 0, sizeof(v40));
    _Block_copy(a3);
    sub_1C5734C0C(v40, 1u, a3);
    _Block_release(a3);
    sub_1C5625230(v40, &qword_1EC16E790, &unk_1C586A110);
    goto LABEL_10;
  }

  [v37 presentDebugPanel];
LABEL_10:

  return result;
}

void sub_1C5735E58(uint64_t *a1, const void *a2)
{
  v4 = type metadata accessor for WebPlacecardBridgeReply(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for WebPlacecardBridge.MUTransitLabelArgument(0);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v17 = (&v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v41 - v19;
  v21 = *a1;
  if (*(*a1 + 16))
  {
    v42 = v4;
    v43 = v7;
    sub_1C5743990(v21 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v12, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
    _Block_copy(a2);
    v44 = a2;
    _Block_copy(a2);
    sub_1C56911C4(v17);
    sub_1C57439F8(v12, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
    sub_1C5743928(v17, v20, type metadata accessor for WebPlacecardBridge.MUTransitLabelArgument);
    v41 = v20;
    v22 = *v20;
    v23 = *(*v20 + 16);
    if (v23)
    {
      v24 = v22 + 40;
      v25 = MEMORY[0x1E69E7CC0];
      do
      {

        v26 = sub_1C584EAB0();
        v28 = v27;

        if (v28 >> 60 != 15)
        {
          v29 = objc_allocWithZone(MEMORY[0x1E69A2660]);
          sub_1C566DCD4(v26, v28);
          v30 = sub_1C584EAC0();
          v31 = [v29 initWithEncodedData_];

          sub_1C566DD70(v26, v28);
          v32 = *(**sub_1C5764F70() + 96);

          v33 = v32(v31);
          v35 = v34;

          if (v35)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v25 = sub_1C5638228(0, *(v25 + 2) + 1, 1, v25);
            }

            v37 = *(v25 + 2);
            v36 = *(v25 + 3);
            if (v37 >= v36 >> 1)
            {
              v25 = sub_1C5638228((v36 > 1), v37 + 1, 1, v25);
            }

            sub_1C566DD70(v26, v28);
            *(v25 + 2) = v37 + 1;
            v38 = &v25[16 * v37];
            *(v38 + 4) = v33;
            *(v38 + 5) = v35;
          }

          else
          {
            sub_1C566DD70(v26, v28);
          }
        }

        v24 += 16;
        --v23;
      }

      while (v23);
    }

    else
    {
      v25 = MEMORY[0x1E69E7CC0];
    }

    v39 = v43;
    sub_1C569CA9C(v43);
    sub_1C56976F8(v25);
    *(&v46 + 1) = v42;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v45);
    sub_1C5743990(v39, boxed_opaque_existential_1, type metadata accessor for WebPlacecardBridgeReply);
    a2 = v44;
    _Block_copy(v44);
    sub_1C5734C0C(&v45, 6u, a2);
    _Block_release(a2);
    sub_1C57439F8(v39, type metadata accessor for WebPlacecardBridgeReply);
    sub_1C57439F8(v41, type metadata accessor for WebPlacecardBridge.MUTransitLabelArgument);
  }

  else
  {
    _Block_copy(a2);
    _Block_copy(a2);
    v45 = 0u;
    v46 = 0u;
    _Block_copy(a2);
    sub_1C5734C0C(&v45, 1u, a2);
    _Block_release(a2);
  }

  sub_1C5625230(&v45, &qword_1EC16E790, &unk_1C586A110);
  _Block_release(a2);
  _Block_release(a2);
}

void sub_1C57362FC(uint64_t *a1, void *a2, const void *a3)
{
  v6 = type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  refreshed = type metadata accessor for WebPlacecardBridge.MUMapItemRefreshArgument(0);
  v13 = MEMORY[0x1EEE9AC00](refreshed - 8, v12);
  v15 = (v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = (v58 - v17);
  v19 = swift_allocObject();
  v19[2] = a3;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1C5743EF8;
  *(v20 + 24) = v19;
  v21 = *a1;
  if (*(*a1 + 16))
  {
    v58[0] = a2;
    v59 = v20;
    sub_1C5743990(v21 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v10, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
    _Block_copy(a3);
    _Block_copy(a3);
    v60 = a3;
    _Block_copy(a3);
    v58[1] = v19;

    sub_1C5691024(v15);
    sub_1C57439F8(v10, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
    sub_1C5743928(v15, v18, type metadata accessor for WebPlacecardBridge.MUMapItemRefreshArgument);
    v22 = 0;
    v61 = v18;
    v23 = *v18;
    v24 = MEMORY[0x1E69E7CC0];
    *&v66 = MEMORY[0x1E69E7CC0];
    v25 = *(v23 + 16);
    v26 = v23 + 40;
    v62 = v23 + 40;
LABEL_3:
    v27 = v26 + 16 * v22;
    while (v25 != v22)
    {
      if (v22 >= *(v23 + 16))
      {
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      ++v22;
      v28 = v27 + 16;
      v29 = objc_allocWithZone(MEMORY[0x1E69A21C0]);

      v30 = sub_1C584F630();

      v31 = [v29 initWithEncodedMapsIdentifier_];

      v27 = v28;
      if (v31)
      {
        MEMORY[0x1C6949DF0]();
        if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C584F7A0();
        }

        sub_1C584F7E0();
        v24 = v66;
        v26 = v62;
        goto LABEL_3;
      }
    }

    *&v66 = MEMORY[0x1E69E7CC0];
    v23 = v24 & 0xFFFFFFFFFFFFFF8;
    if (!(v24 >> 62))
    {
      v32 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_12;
    }

LABEL_42:
    v32 = sub_1C584FB90();
LABEL_12:
    v33 = 0;
    v62 = MEMORY[0x1E69E7CC0];
    while (v32 != v33)
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v34 = MEMORY[0x1C694A320](v33, v24);
      }

      else
      {
        if (v33 >= *(v23 + 16))
        {
          goto LABEL_41;
        }

        v34 = *(v24 + 8 * v33 + 32);
      }

      v35 = v34;
      v36 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        goto LABEL_40;
      }

      v37 = [objc_allocWithZone(MEMORY[0x1E696F280]) initWithGEOMapItemIdentifier_];

      ++v33;
      if (v37)
      {
        MEMORY[0x1C6949DF0]();
        if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C584F7A0();
        }

        sub_1C584F7E0();
        v62 = v66;
        v33 = v36;
      }
    }

    v38 = v62;
    if (v62 >> 62)
    {
      v39 = sub_1C584FB90();
    }

    else
    {
      v39 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v41 = v59;
    v40 = v60;
    if (v39 < 1)
    {

      v66 = 0u;
      v67 = 0u;
      _Block_copy(v40);
      sub_1C5734C0C(&v66, 6u, v40);
      _Block_release(v40);
    }

    else
    {
      v42 = swift_allocObject();
      *(v42 + 16) = sub_1C5743EE0;
      *(v42 + 24) = v41;

      v65 = sub_1C5691FA0();
      v64 = 2;
      sub_1C56F4950();
      sub_1C584F730();
      sub_1C584F730();
      if (v66 != v63)
      {
        v55 = *sub_1C567A818();
        v56 = swift_allocObject();
        *(v56 + 16) = sub_1C5743F30;
        *(v56 + 24) = v42;
        v57 = *(*v55 + 80);

        v57(v38, sub_1C5743EEC, v56);

        goto LABEL_33;
      }

      v43 = v58[0];
      v44 = [v58[0] mapItem];
      v45 = [v44 identifier];

      if (v45)
      {
        v46 = MEMORY[0x1E69E7D40];
        v47 = (*((*MEMORY[0x1E69E7D40] & *v43) + 0xE0))();
        v48 = (*((*v46 & *v47) + 0x1F0))();

        if (v48)
        {
          v49 = *sub_1C567A818();
          v50 = swift_allocObject();
          *(v50 + 16) = v48;
          *(v50 + 24) = v45;
          v51 = *(*v49 + 104);

          v52 = v48;
          v53 = v45;
          v51();

LABEL_33:

LABEL_37:
          sub_1C57439F8(v61, type metadata accessor for WebPlacecardBridge.MUMapItemRefreshArgument);

          _Block_release(v40);
          v54 = v40;
          goto LABEL_38;
        }
      }

      v66 = 0u;
      v67 = 0u;
      _Block_copy(v40);
      sub_1C5734C0C(&v66, 6u, v40);
      _Block_release(v40);
    }

    sub_1C5625230(&v66, &qword_1EC16E790, &unk_1C586A110);
    goto LABEL_37;
  }

  _Block_copy(a3);
  _Block_copy(a3);
  _Block_copy(a3);

  v66 = 0u;
  v67 = 0u;
  _Block_copy(a3);
  sub_1C5734C0C(&v66, 6u, a3);
  _Block_release(a3);
  sub_1C5625230(&v66, &qword_1EC16E790, &unk_1C586A110);

  _Block_release(a3);
  v54 = a3;
LABEL_38:
  _Block_release(v54);
}

void sub_1C5736B28(uint64_t *a1, void *a2, const void *a3)
{
  v43 = a2;
  v5 = type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  refreshed = type metadata accessor for WebPlacecardBridge.MUMapItemRefreshArgument(0);
  v42 = *(refreshed - 8);
  v11 = *(v42 + 64);
  v13 = MEMORY[0x1EEE9AC00](refreshed - 8, v12);
  v14 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v18 = (&v40 - v17);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &v40 - v20;
  v22 = swift_allocObject();
  *(v22 + 16) = a3;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1C5743EF8;
  *(v23 + 24) = v22;
  if (*(*a1 + 16))
  {
    sub_1C5743990(*a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v9, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
    _Block_copy(a3);
    _Block_copy(a3);

    _Block_copy(a3);

    sub_1C5691024(v18);
    sub_1C57439F8(v9, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
    sub_1C5743928(v18, v21, type metadata accessor for WebPlacecardBridge.MUMapItemRefreshArgument);
    if (*(*v21 + 16))
    {
      _Block_copy(a3);

      sub_1C57362FC(a1, v43, a3);
      _Block_release(a3);
    }

    else
    {
      sub_1C5691F88();
      v24 = objc_allocWithZone(MEMORY[0x1E69A21C0]);
      v25 = sub_1C584F630();

      v26 = [v24 initWithEncodedMapsIdentifier_];

      if (v26)
      {
        v27 = objc_allocWithZone(MEMORY[0x1E696F280]);
        v43 = v26;
        v41 = [v27 initWithGEOMapItemIdentifier_];
        v28 = swift_allocObject();
        *(v28 + 16) = sub_1C5743EE0;
        *(v28 + 24) = v23;

        v46 = sub_1C5691FA0();
        v45 = 1;
        sub_1C56F4950();
        sub_1C584F730();
        sub_1C584F730();
        v29 = v47;
        v30 = v44;
        v31 = *sub_1C567A818();
        if (v29 == v30)
        {
          v32 = swift_allocObject();
          *(v32 + 16) = sub_1C5743F2C;
          *(v32 + 24) = v28;
          v33 = *(*v31 + 112);

          v34 = v41;
          v33(v41, sub_1C5743EE8, v32);
        }

        else
        {
          sub_1C5743990(v21, v14, type metadata accessor for WebPlacecardBridge.MUMapItemRefreshArgument);
          v35 = (*(v42 + 80) + 16) & ~*(v42 + 80);
          v36 = (v11 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
          v37 = swift_allocObject();
          sub_1C5743928(v14, v37 + v35, type metadata accessor for WebPlacecardBridge.MUMapItemRefreshArgument);
          v38 = (v37 + v36);
          *v38 = sub_1C5743F2C;
          v38[1] = v28;
          v39 = *(*v31 + 88);

          v34 = v41;
          v39(v41, sub_1C5743F10, v37);
        }
      }

      else
      {
        v47 = 0u;
        v48 = 0u;
        _Block_copy(a3);
        sub_1C5734C0C(&v47, 6u, a3);
        _Block_release(a3);
        sub_1C5625230(&v47, &qword_1EC16E790, &unk_1C586A110);
      }
    }

    sub_1C57439F8(v21, type metadata accessor for WebPlacecardBridge.MUMapItemRefreshArgument);
  }

  else
  {
    _Block_copy(a3);
    _Block_copy(a3);

    _Block_copy(a3);

    v47 = 0u;
    v48 = 0u;
    _Block_copy(a3);
    sub_1C5734C0C(&v47, 6u, a3);
    _Block_release(a3);
    sub_1C5625230(&v47, &qword_1EC16E790, &unk_1C586A110);
  }

  _Block_release(a3);
  _Block_release(a3);
}

double sub_1C5737160(uint64_t a1, const void *a2)
{
  v4 = type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WebPlacecardBridge.MURouteSnapshotArgument(0);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = v29 - v15;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1C5743EF8;
  *(v18 + 24) = v17;
  if (!*(*a1 + 16))
  {
    _Block_copy(a2);

LABEL_6:
    memset(v29, 0, sizeof(v29));
    _Block_copy(a2);
    sub_1C5734C0C(v29, 1u, a2);
    _Block_release(a2);
    sub_1C5625230(v29, &qword_1EC16E790, &unk_1C586A110);
    goto LABEL_7;
  }

  sub_1C5743990(*a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v8, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
  _Block_copy(a2);

  sub_1C56914DC(v13);
  sub_1C57439F8(v8, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
  sub_1C5743928(v13, v16, type metadata accessor for WebPlacecardBridge.MURouteSnapshotArgument);
  sub_1C56920A4();
  v19 = objc_allocWithZone(MEMORY[0x1E69A21C0]);
  v20 = sub_1C584F630();

  v21 = [v19 initWithEncodedMapsIdentifier_];

  if (!v21)
  {
    sub_1C57439F8(v16, type metadata accessor for WebPlacecardBridge.MURouteSnapshotArgument);
    goto LABEL_6;
  }

  v22 = [objc_allocWithZone(MEMORY[0x1E696F280]) initWithGEOMapItemIdentifier_];
  v23 = *sub_1C567A818();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DBD0, &unk_1C58682B0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1C5867970;
  *(v24 + 32) = v22;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1C5743EE0;
  *(v25 + 24) = v18;
  v26 = *(*v23 + 80);

  v27 = v22;

  v26(v24, sub_1C5743EF4, v25);

  sub_1C57439F8(v16, type metadata accessor for WebPlacecardBridge.MURouteSnapshotArgument);
LABEL_7:

  return result;
}

void sub_1C573754C(uint64_t a1, const void *a2)
{
  v4 = type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WebPlacecardBridge.MUAnalyticsArgument(0);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v13 = (&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v29 - v15;
  if (!*(*a1 + 16))
  {
    _Block_copy(a2);
    _Block_copy(a2);
    _Block_copy(a2);
    v29 = 0u;
    v30 = 0u;
    _Block_copy(a2);
    sub_1C5734C0C(&v29, 1u, a2);
    _Block_release(a2);
    sub_1C5625230(&v29, &qword_1EC16E790, &unk_1C586A110);
LABEL_16:
    _Block_release(a2);
    _Block_release(a2);
    _Block_release(a2);
    return;
  }

  sub_1C5743990(*a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v8, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
  _Block_copy(a2);
  _Block_copy(a2);
  _Block_copy(a2);
  sub_1C56916A0(v13);
  sub_1C57439F8(v8, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
  sub_1C5743928(v13, v16, type metadata accessor for WebPlacecardBridge.MUAnalyticsArgument);
  sub_1C5692164();
  v17 = sub_1C584EAB0();
  v19 = v18;

  if (v19 >> 60 == 15)
  {
    v29 = 0u;
    v30 = 0u;
    _Block_copy(a2);
    sub_1C5734C0C(&v29, 2u, a2);
    _Block_release(a2);
LABEL_15:
    sub_1C5625230(&v29, &qword_1EC16E790, &unk_1C586A110);
    sub_1C57439F8(v16, type metadata accessor for WebPlacecardBridge.MUAnalyticsArgument);
    goto LABEL_16;
  }

  v20 = sub_1C584EAC0();
  v21 = sub_1C569217C();
  if (!sub_1C568FFE4(v21))
  {
    goto LABEL_9;
  }

  v22 = sub_1C569217C();
  v23 = sub_1C568FFE4(v22);
  if (v23 < 0xFFFFFFFF80000000)
  {
    goto LABEL_18;
  }

  v24 = v23;
  if (v23 > 0x7FFFFFFF)
  {
    __break(1u);
LABEL_9:
    v24 = 6;
  }

  v25 = objc_opt_self();
  [v25 captureWebPlaceCardAnalyticEvent:v20 analyticSessionType:v24];

  v26 = *(*v16 + 16);
  if (!v26)
  {
LABEL_14:
    v29 = 0u;
    v30 = 0u;
    _Block_copy(a2);
    sub_1C5734C0C(&v29, 6u, a2);
    _Block_release(a2);
    sub_1C566DD70(v17, v19);
    goto LABEL_15;
  }

  v27 = (*v16 + 32);
  while (1)
  {
    v28 = *v27++;
    if (v28 < 0)
    {
      break;
    }

    [v25 captureWebPlaceCardFeatureUseCount_usageString_usageBool_];
    if (!--v26)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_1C57378E8(uint64_t a1, const void *a2)
{
  v4 = type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0);
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v22 - v11;
  if (*(*a1 + 16))
  {
    sub_1C5743990(*a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), &v22 - v11, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
    _Block_copy(a2);
    _Block_copy(a2);
    if (qword_1EC17B020 != -1)
    {
      swift_once();
    }

    v13 = sub_1C584F2C0();
    __swift_project_value_buffer(v13, qword_1EC18FA38);
    sub_1C5743990(v12, v8, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
    v14 = sub_1C584F2A0();
    v15 = sub_1C584F9B0();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *&v22 = v17;
      *v16 = 136315138;
      sub_1C5742CB4(&qword_1EC16D660, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument, &unk_1C586D5D0);
      v18 = sub_1C584F160();
      v20 = v19;
      sub_1C57439F8(v8, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      v21 = sub_1C5649518(v18, v20, &v22);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_1C5620000, v14, v15, "Received web bundle error: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x1C694B7A0](v17, -1, -1);
      MEMORY[0x1C694B7A0](v16, -1, -1);
    }

    else
    {

      sub_1C57439F8(v8, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
    }

    v22 = 0u;
    v23 = 0u;
    _Block_copy(a2);
    sub_1C5734C0C(&v22, 6u, a2);
    _Block_release(a2);
    sub_1C5625230(&v22, &qword_1EC16E790, &unk_1C586A110);
    sub_1C57439F8(v12, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
    _Block_release(a2);
    _Block_release(a2);
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
    sub_1C5734C0C(&v22, 1u, a2);
    sub_1C5625230(&v22, &qword_1EC16E790, &unk_1C586A110);
  }
}

void sub_1C5737C68(char *a1, void *a2, const void *a3)
{
  v181 = a2;
  v179 = a1;
  v4 = type metadata accessor for PlaceActionBarLayoutItem(0);
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v184 = &v157 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v9);
  v180 = &v157 - v10;
  v11 = type metadata accessor for PlaceActionBarLayout(0);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v176 = &v157 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v15);
  v177 = &v157 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC170510, qword_1C5877770);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v173 = &v157 - v19;
  v20 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v170 = &v157 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for WebPlacecardBridge.MUActionBarItem(0);
  v183 = *(v23 - 8);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v182 = &v157 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v25, v27);
  v166 = &v157 - v29;
  v31 = MEMORY[0x1EEE9AC00](v28, v30);
  v164 = &v157 - v32;
  v34 = MEMORY[0x1EEE9AC00](v31, v33);
  v163 = (&v157 - v35);
  v37 = MEMORY[0x1EEE9AC00](v34, v36);
  v169 = (&v157 - v38);
  v40 = MEMORY[0x1EEE9AC00](v37, v39);
  v168 = (&v157 - v41);
  v43 = MEMORY[0x1EEE9AC00](v40, v42);
  v165 = (&v157 - v44);
  MEMORY[0x1EEE9AC00](v43, v45);
  v178 = (&v157 - v46);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FE18, &unk_1C5877850);
  v49 = MEMORY[0x1EEE9AC00](v47 - 8, v48);
  v51 = &v157 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x1EEE9AC00](v49, v52);
  v175 = &v157 - v54;
  v56 = MEMORY[0x1EEE9AC00](v53, v55);
  v171 = &v157 - v57;
  v59 = MEMORY[0x1EEE9AC00](v56, v58);
  v167 = &v157 - v60;
  MEMORY[0x1EEE9AC00](v59, v61);
  v63 = &v157 - v62;
  v64 = type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0);
  v65 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64 - 8, v66);
  v68 = &v157 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for WebPlacecardBridge.MUActionBarArgument(0) - 8;
  v71 = MEMORY[0x1EEE9AC00](v69, v70);
  v73 = MEMORY[0x1EEE9AC00](v71, v72);
  v75 = &v157 - v74;
  MEMORY[0x1EEE9AC00](v73, v76);
  v80 = &v157 - v79;
  v81 = *v179;
  if (!*(*v179 + 16))
  {
    _Block_copy(a3);
    _Block_copy(a3);
    memset(v186, 0, sizeof(v186));
    _Block_copy(a3);
    sub_1C5734C0C(v186, 1u, a3);
    _Block_release(a3);
    sub_1C5625230(v186, &qword_1EC16E790, &unk_1C586A110);
    _Block_release(a3);
    v115 = a3;
    goto LABEL_29;
  }

  v159 = v78;
  v160 = v77;
  sub_1C5743990(v81 + ((*(v65 + 80) + 32) & ~*(v65 + 80)), v68, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
  _Block_copy(a3);
  v172 = a3;
  _Block_copy(a3);
  sub_1C5691840(v75);
  sub_1C57439F8(v68, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
  sub_1C5743928(v75, v80, type metadata accessor for WebPlacecardBridge.MUActionBarArgument);
  v82 = *(v5 + 56);
  v179 = v63;
  v162 = v5 + 56;
  v161 = v82;
  v82(v63, 1, 1, v4);
  v83 = v178;
  sub_1C5695114(v178);
  v84 = sub_1C5694E6C();
  sub_1C57439F8(v83, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
  v85 = v181;
  v86 = v4;
  v174 = v80;
  if (!v84)
  {
LABEL_14:
    v137 = *v80;
    v138 = *(*v80 + 16);
    if (v138)
    {
      v139 = 0;
      v140 = MEMORY[0x1E69E7CC0];
      while (v139 < *(v137 + 16))
      {
        v141 = v182;
        sub_1C5743990(v137 + ((*(v183 + 80) + 32) & ~*(v183 + 80)) + *(v183 + 72) * v139, v182, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
        sub_1C572E2AC(v141, v85, v51);
        sub_1C57439F8(v141, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
        if ((*(v5 + 48))(v51, 1, v86) == 1)
        {
          sub_1C5625230(v51, &qword_1EC16FE18, &unk_1C5877850);
        }

        else
        {
          v142 = v180;
          sub_1C5743928(v51, v180, type metadata accessor for PlaceActionBarLayoutItem);
          sub_1C5743928(v142, v184, type metadata accessor for PlaceActionBarLayoutItem);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v140 = sub_1C573426C(0, v140[2] + 1, 1, v140, &unk_1EC170A50, &unk_1C5878AF0, type metadata accessor for PlaceActionBarLayoutItem);
          }

          v144 = v140[2];
          v143 = v140[3];
          if (v144 >= v143 >> 1)
          {
            v140 = sub_1C573426C((v143 > 1), v144 + 1, 1, v140, &unk_1EC170A50, &unk_1C5878AF0, type metadata accessor for PlaceActionBarLayoutItem);
          }

          v140[2] = v144 + 1;
          sub_1C5743928(v184, v140 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v144, type metadata accessor for PlaceActionBarLayoutItem);
          v85 = v181;
        }

        if (v138 == ++v139)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
      goto LABEL_31;
    }

    v140 = MEMORY[0x1E69E7CC0];
LABEL_26:
    v145 = v179;
    v146 = v175;
    sub_1C56466CC(v179, v175, &qword_1EC16FE18, &unk_1C5877850);
    v147 = v177;
    sub_1C57162A0(v146, v140, v177);
    type metadata accessor for PlaceActionBarConfiguration(0);
    v148 = v176;
    sub_1C5743990(v147, v176, type metadata accessor for PlaceActionBarLayout);
    v149 = *(v85 + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_webContentViewController);
    v150 = *(v85 + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_actionDispatcher);
    v151 = v149;
    v152 = sub_1C5704684(v148, v150, v149, &off_1F44C6BB0);
    v153 = (*((*MEMORY[0x1E69E7D40] & *v85) + 0xB0))();
    if (v153)
    {
      [v153 sectionController:v85 updateWithActionBarConfiguration:v152];
      swift_unknownObjectRelease();
    }

    memset(v185, 0, sizeof(v185));
    v154 = v172;
    _Block_copy(v172);
    sub_1C5734C0C(v185, 6u, v154);
    _Block_release(v154);

    sub_1C5625230(v185, &qword_1EC16E790, &unk_1C586A110);
    sub_1C57439F8(v147, type metadata accessor for PlaceActionBarLayout);
    sub_1C5625230(v145, &qword_1EC16FE18, &unk_1C5877850);
    sub_1C57439F8(v174, type metadata accessor for WebPlacecardBridge.MUActionBarArgument);
    _Block_release(v154);
    v115 = v154;
LABEL_29:
    _Block_release(v115);
    return;
  }

  sub_1C5695114(v83);
  v87 = sub_1C5694E44();
  sub_1C57439F8(v83, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
  v158 = v4;
  if (v87)
  {
    v88 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v89 = v160;
    sub_1C5743990(v80, v160, type metadata accessor for WebPlacecardBridge.MUActionBarArgument);
    v90 = (*(v159 + 80) + 24) & ~*(v159 + 80);
    v91 = swift_allocObject();
    *(v91 + 16) = v88;
    v92 = v91 + v90;
    v80 = v174;
    sub_1C5743928(v89, v92, type metadata accessor for WebPlacecardBridge.MUActionBarArgument);
    v93 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1C564898C(GEOLocationCoordinate2DMake, 0, sub_1C5743F14, v91, GEOLocationCoordinate2DMake, 0, sub_1C5743F0C, v93, v186);
    sub_1C5695114(v83);
    v94 = *v83;

    sub_1C57439F8(v83, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
    v95 = v165;
    sub_1C5695114(v165);
    v170 = sub_1C5694DE4();
    v167 = v96;
    sub_1C57439F8(v95, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
    v97 = objc_opt_self();
    v98 = v168;
    sub_1C5695114(v168);
    sub_1C5694E2C();
    sub_1C57439F8(v98, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
    v99 = sub_1C584F630();

    v100 = [v97 _mapsui_systemImageNamed_];

    v101 = sub_1C5646814(v94, v170, v167, v100, 0, -1);

    v102 = v169;
    sub_1C5695114(v169);
    v168 = sub_1C5694E2C();
    v170 = v103;
    sub_1C57439F8(v102, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
    sub_1C5695114(v83);
    LOBYTE(v99) = sub_1C5694DFC();
    sub_1C57439F8(v83, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
    v104 = 0;
    v105 = 0;
    if (v99)
    {
      sub_1C5695114(v83);
      v104 = sub_1C5694DE4();
      v105 = v106;
      sub_1C57439F8(v83, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
    }

    sub_1C5695114(v83);
    v107 = sub_1C5695040();
    v109 = v108;
    sub_1C57439F8(v83, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
    v110 = v173;
    sub_1C5716754(v111);
    v112 = v101;
    v156 = v109;
    v113 = v171;
    sub_1C57163A4(v110, v101, 0, 1, v168, v170, v104, v105, v171, v107, v156, 1970169165, 0xE400000000000000);

    v114 = v179;
    sub_1C5625230(v179, &qword_1EC16FE18, &unk_1C5877850);
    goto LABEL_13;
  }

  sub_1C5695114(v83);
  v116 = sub_1C5694DFC();
  sub_1C57439F8(v83, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
  if (v116)
  {
    sub_1C5695114(v83);
    v171 = sub_1C5694DE4();
    v169 = v117;
    sub_1C57439F8(v83, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
  }

  else
  {
    v171 = 0;
    v169 = 0;
  }

  v118 = v170;
  v119 = v166;
  v120 = v164;
  v121 = v163;
  sub_1C5695114(v163);
  v178 = sub_1C5694E2C();
  v170 = v122;
  sub_1C57439F8(v121, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
  sub_1C5695114(v120);
  sub_1C5694E98(v118);
  sub_1C57439F8(v120, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
  sub_1C5695114(v119);
  v123 = sub_1C5695040();
  v168 = v124;
  sub_1C57439F8(v119, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
  sub_1C5774F00(0);
  if (v125)
  {
    v126 = v125;
    v127 = *((*MEMORY[0x1E69E7D40] & *v125) + 0x50);
    v128 = v125;
    v127(v186);
    v129 = MUPlaceActionDispatcher.ActionType.axID.getter();
    v131 = v130;
    v132 = v173;
    sub_1C5716754(v133);
    v134 = v167;
    sub_1C57163A4(v132, v126, 0, 0, v178, v170, v171, v169, v167, v123, v168, v129, v131);

    sub_1C57439F8(v118, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction);
    v114 = v179;
    sub_1C5625230(v179, &qword_1EC16FE18, &unk_1C5877850);
    v113 = v134;
    v80 = v174;
LABEL_13:
    v135 = v113;
    v136 = v113;
    v86 = v158;
    v161(v135, 0, 1, v158);
    sub_1C56534F4(v136, v114, &qword_1EC16FE18, &unk_1C5877850);
    v85 = v181;
    goto LABEL_14;
  }

LABEL_31:
  v155 = v172;
  _Block_release(v172);
  _Block_release(v155);
  _Block_release(v155);
  sub_1C584FD00();
  __break(1u);
}

void sub_1C5738E7C(uint64_t a1, void *a2, const void *a3)
{
  v6 = type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for WebPlacecardBridge.MUHeaderInsetsArgument(0);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v27 - v17;
  if (*(*a1 + 16))
  {
    sub_1C5743990(*a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v10, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
    _Block_copy(a3);
    _Block_copy(a3);
    sub_1C5691B90(v15);
    sub_1C57439F8(v10, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
    sub_1C5743928(v15, v18, type metadata accessor for WebPlacecardBridge.MUHeaderInsetsArgument);
    v19 = sub_1C5696784();
    v20 = 0.0;
    v21.n128_u64[0] = 0;
    if (v19)
    {
      v21.n128_f64[0] = sub_1C569676C();
    }

    v22 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & *a2) + 0x180))(v21);
    if (sub_1C56967CC())
    {
      v20 = sub_1C56967B4();
    }

    v23 = (*((*v22 & *a2) + 0x198))(v20);
    v24 = (*((*v22 & *a2) + 0xB0))(v23);
    if (v24)
    {
      v25 = v24;
      v26 = sub_1C569676C();
      [v25 sectionController:a2 updateInsetsForHeaderWithTopInset:v26 bottom:sub_1C56967B4()];
      swift_unknownObjectRelease();
    }

    v27 = 0u;
    v28 = 0u;
    _Block_copy(a3);
    sub_1C5734C0C(&v27, 6u, a3);
    _Block_release(a3);
    sub_1C5625230(&v27, &qword_1EC16E790, &unk_1C586A110);
    sub_1C57439F8(v18, type metadata accessor for WebPlacecardBridge.MUHeaderInsetsArgument);
  }

  else
  {
    _Block_copy(a3);
    _Block_copy(a3);
    v27 = 0u;
    v28 = 0u;
    _Block_copy(a3);
    sub_1C5734C0C(&v27, 1u, a3);
    _Block_release(a3);
    sub_1C5625230(&v27, &qword_1EC16E790, &unk_1C586A110);
  }

  _Block_release(a3);
  _Block_release(a3);
}

void sub_1C5739208(uint64_t a1, uint64_t a2, void *a3, const void *a4)
{
  v371 = a3;
  v383 = a2;
  v6 = type metadata accessor for WebPlacecardBridge.MUAmpArtworkArgument(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v381 = v343 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WebPlacecardBridge.MUStickyHeaderArgument(0);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v379 = v343 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v13);
  v354 = v343 - v14;
  v15 = type metadata accessor for WebPlacecardBridge.MUPageResizedArgument(0);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v361 = v343 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v19);
  v365 = v343 - v20;
  v21 = type metadata accessor for WebPlacecardBridge.MUWebTextSelectionViewArgument(0);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v360 = v343 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v25);
  v364 = v343 - v26;
  v27 = type metadata accessor for WebPlacecardBridge.MUWebMenuButton(0);
  v29 = MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v359 = v343 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v31);
  v363 = v343 - v32;
  v33 = type metadata accessor for WebPlacecardBridge.MUNearbyPlacesArgument(0);
  v35 = MEMORY[0x1EEE9AC00](v33 - 8, v34);
  v357 = v343 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35, v37);
  v368 = v343 - v38;
  v39 = type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0);
  v380 = *(v39 - 8);
  v41 = MEMORY[0x1EEE9AC00](v39 - 8, v40);
  v373 = v343 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x1EEE9AC00](v41, v43);
  v372 = v343 - v45;
  v47 = MEMORY[0x1EEE9AC00](v44, v46);
  v378 = v343 - v48;
  v50 = MEMORY[0x1EEE9AC00](v47, v49);
  v377 = v343 - v51;
  v53 = MEMORY[0x1EEE9AC00](v50, v52);
  v376 = v343 - v54;
  v56 = MEMORY[0x1EEE9AC00](v53, v55);
  v375 = v343 - v57;
  MEMORY[0x1EEE9AC00](v56, v58);
  v374 = v343 - v59;
  v60 = type metadata accessor for WebPlacecardBridge.MUIconArgument(0);
  v62 = MEMORY[0x1EEE9AC00](v60 - 8, v61);
  v352 = v343 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v62, v64);
  v362 = v343 - v65;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170928, &unk_1C5878148);
  v68 = MEMORY[0x1EEE9AC00](v66 - 8, v67);
  v358 = v343 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = MEMORY[0x1EEE9AC00](v68, v70);
  v356 = v343 - v72;
  v74 = MEMORY[0x1EEE9AC00](v71, v73);
  v353 = v343 - v75;
  v77 = MEMORY[0x1EEE9AC00](v74, v76);
  v355 = v343 - v78;
  v80 = MEMORY[0x1EEE9AC00](v77, v79);
  v350 = v343 - v81;
  MEMORY[0x1EEE9AC00](v80, v82);
  v367 = v343 - v83;
  v370 = type metadata accessor for WebPlacecardBridgeReply(0);
  v369 = *(v370 - 8);
  v85 = MEMORY[0x1EEE9AC00](v370, v84);
  v348 = v343 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = MEMORY[0x1EEE9AC00](v85, v87);
  v346 = v343 - v89;
  v91 = MEMORY[0x1EEE9AC00](v88, v90);
  v347 = v343 - v92;
  v94 = MEMORY[0x1EEE9AC00](v91, v93);
  v345 = v343 - v95;
  v97 = MEMORY[0x1EEE9AC00](v94, v96);
  v344 = v343 - v98;
  v100 = MEMORY[0x1EEE9AC00](v97, v99);
  v351 = v343 - v101;
  MEMORY[0x1EEE9AC00](v100, v102);
  v349 = v343 - v103;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170930, &qword_1C58695F0);
  MEMORY[0x1EEE9AC00](v104 - 8, v105);
  v366 = v343 - v106;
  v107 = sub_1C584F010();
  MEMORY[0x1EEE9AC00](v107 - 8, v108);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC170938, &unk_1C5878158);
  MEMORY[0x1EEE9AC00](v109 - 8, v110);
  v112 = v343 - v111;
  v113 = type metadata accessor for WebPlacecardBridge(0);
  v114 = *(v113 - 8);
  v115 = *(v114 + 64);
  v117 = MEMORY[0x1EEE9AC00](v113, v116);
  MEMORY[0x1EEE9AC00](v117, v118);
  v382 = (v343 - v119);
  _Block_copy(a4);
  _Block_copy(a4);
  _Block_copy(a4);
  _Block_copy(a4);
  _Block_copy(a4);
  _Block_copy(a4);
  _Block_copy(a4);
  _Block_copy(a4);
  _Block_copy(a4);
  _Block_copy(a4);
  _Block_copy(a4);
  _Block_copy(a4);
  _Block_copy(a4);
  _Block_copy(a4);
  v120 = swift_allocObject();
  *(v120 + 16) = a4;
  v121 = v383;
  v387 = a1;
  v388 = v383;
  v392 = 0;
  v390 = 0u;
  v391 = 0u;
  _Block_copy(a4);
  _Block_copy(a4);
  _Block_copy(a4);
  v384 = a4;
  _Block_copy(a4);
  sub_1C566DCD4(a1, v121);
  sub_1C584F000();
  sub_1C5742CB4(&qword_1EC16D460, type metadata accessor for WebPlacecardBridge, &unk_1C586D288);
  sub_1C584F150();
  v343[0] = v343 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = v372;
  v123 = v373;
  v383 = 0;
  v124 = v379;
  v125 = v381;
  (*(v114 + 56))(v112, 0, 1, v113);
  v126 = v382;
  sub_1C5743928(v112, v382, type metadata accessor for WebPlacecardBridge);
  v127 = swift_allocObject();
  *(v127 + 16) = sub_1C566EA18;
  *(v127 + 24) = v120;
  swift_retain_n();
  v128 = sub_1C568FE50();
  v343[1] = v120;
  v129 = v384;
  switch(v128)
  {
    case 1:
      _Block_copy(v384);

      sub_1C57359D8(v126, v371, v129);
      goto LABEL_51;
    case 2:
      v162 = *v126;
      if (!*(*v126 + 16))
      {
        goto LABEL_46;
      }

      v163 = v377;
      sub_1C5743990(v162 + ((*(v380 + 80) + 32) & ~*(v380 + 80)), v377, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      v164 = v359;
      sub_1C5690CC0(v359);
      sub_1C57439F8(v163, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      v165 = v363;
      sub_1C5743928(v164, v363, type metadata accessor for WebPlacecardBridge.MUWebMenuButton);
      v166 = *(v371 + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_actionDispatcher);
      v167 = [v371 mapItem];
      sub_1C57191B4(v165, v166, v167);

      v390 = 0u;
      v391 = 0u;
      sub_1C56466CC(&v390, &v387, &qword_1EC16E790, &unk_1C586A110);
      if (v389)
      {
        v168 = v355;
        v169 = v370;
        v170 = swift_dynamicCast();
        v171 = v369;
        (*(v369 + 56))(v168, v170 ^ 1u, 1, v169);
        if ((*(v171 + 48))(v168, 1, v169) != 1)
        {
          v172 = v345;
          sub_1C5743928(v168, v345, type metadata accessor for WebPlacecardBridgeReply);
          sub_1C5742CB4(&qword_1EC16D150, type metadata accessor for WebPlacecardBridgeReply, &unk_1C5872030);
          v173 = v383;
          v174 = sub_1C584F140();
          if (v173)
          {

            sub_1C57439F8(v172, type metadata accessor for WebPlacecardBridgeReply);
          }

          else
          {
            v299 = v174;
            v300 = v175;
            v301 = sub_1C584EAD0();
            v303 = v302;
            sub_1C566DD84(v299, v300);
            v389 = MEMORY[0x1E69E6158];
            v387 = v301;
            v388 = v303;
            sub_1C56466CC(&v387, &v385, &qword_1EC16E790, &unk_1C586A110);
            v304 = v386;
            if (v386)
            {
              v305 = __swift_project_boxed_opaque_existential_1(&v385, v386);
              v306 = *(v304 - 8);
              MEMORY[0x1EEE9AC00](v305, v305);
              v308 = v343 - ((v307 + 15) & 0xFFFFFFFFFFFFFFF0);
              (*(v306 + 16))(v308);
              v309 = sub_1C584FDB0();
              (*(v306 + 8))(v308, v304);
              __swift_destroy_boxed_opaque_existential_1(&v385);
            }

            else
            {
              v309 = 0;
            }

            (*(v129 + 2))(v129, v309, 0);
            swift_unknownObjectRelease();
            sub_1C57439F8(v172, type metadata accessor for WebPlacecardBridgeReply);
            sub_1C5625230(&v387, &qword_1EC16E790, &unk_1C586A110);
          }

          goto LABEL_78;
        }
      }

      else
      {
        sub_1C5625230(&v387, &qword_1EC16E790, &unk_1C586A110);
        v168 = v355;
        (*(v369 + 56))(v355, 1, 1, v370);
      }

      sub_1C5625230(v168, &qword_1EC170928, &unk_1C5878148);
      sub_1C56466CC(&v390, &v387, &qword_1EC16E790, &unk_1C586A110);
      v253 = v389;
      if (v389)
      {
        v254 = __swift_project_boxed_opaque_existential_1(&v387, v389);
        v255 = *(v253 - 8);
        MEMORY[0x1EEE9AC00](v254, v254);
        v257 = v343 - ((v256 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v255 + 16))(v257);
        v258 = sub_1C584FDB0();
        (*(v255 + 8))(v257, v253);
        __swift_destroy_boxed_opaque_existential_1(&v387);
      }

      else
      {
        v258 = 0;
      }

      (*(v129 + 2))(v129, v258, 0);
      swift_unknownObjectRelease();
LABEL_78:
      sub_1C5625230(&v390, &qword_1EC16E790, &unk_1C586A110);
      sub_1C57439F8(v165, type metadata accessor for WebPlacecardBridge.MUWebMenuButton);

      goto LABEL_79;
    case 3:
      v185 = *v126;
      if (!*(*v126 + 16))
      {
        goto LABEL_46;
      }

      v186 = v374;
      sub_1C5743990(v185 + ((*(v380 + 80) + 32) & ~*(v380 + 80)), v374, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      v187 = v352;
      sub_1C56905F4(v352);
      sub_1C57439F8(v186, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      v188 = v362;
      sub_1C5743928(v187, v362, type metadata accessor for WebPlacecardBridge.MUIconArgument);
      v189 = *(**sub_1C5764F70() + 88);

      v190 = v189(v188);
      v192 = v191;

      if (!v192)
      {
        v390 = 0u;
        v391 = 0u;
        _Block_copy(v129);
        sub_1C5734C0C(&v390, 2u, v129);
        _Block_release(v129);
        sub_1C5625230(&v390, &qword_1EC16E790, &unk_1C586A110);
        sub_1C57439F8(v188, type metadata accessor for WebPlacecardBridge.MUIconArgument);

        goto LABEL_83;
      }

      v193 = v351;
      sub_1C569CA9C(v351);
      sub_1C5696FD8(v190, v192);
      v194 = v370;
      *(&v391 + 1) = v370;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v390);
      sub_1C5743990(v193, boxed_opaque_existential_1, type metadata accessor for WebPlacecardBridgeReply);
      sub_1C56466CC(&v390, &v387, &qword_1EC16E790, &unk_1C586A110);
      if (v389)
      {
        v196 = v350;
        v197 = swift_dynamicCast();
        v198 = v369;
        (*(v369 + 56))(v196, v197 ^ 1u, 1, v194);
        if ((*(v198 + 48))(v196, 1, v194) != 1)
        {
          v199 = v344;
          sub_1C5743928(v196, v344, type metadata accessor for WebPlacecardBridgeReply);
          sub_1C5742CB4(&qword_1EC16D150, type metadata accessor for WebPlacecardBridgeReply, &unk_1C5872030);
          v200 = v383;
          v201 = sub_1C584F140();
          if (v200)
          {

            sub_1C57439F8(v199, type metadata accessor for WebPlacecardBridgeReply);
            v126 = v382;
          }

          else
          {
            v332 = v201;
            v333 = v202;
            v334 = sub_1C584EAD0();
            v336 = v335;
            sub_1C566DD84(v332, v333);
            v389 = MEMORY[0x1E69E6158];
            v387 = v334;
            v388 = v336;
            sub_1C56466CC(&v387, &v385, &qword_1EC16E790, &unk_1C586A110);
            v337 = v386;
            if (v386)
            {
              v338 = __swift_project_boxed_opaque_existential_1(&v385, v386);
              v339 = *(v337 - 8);
              MEMORY[0x1EEE9AC00](v338, v338);
              v341 = v343 - ((v340 + 15) & 0xFFFFFFFFFFFFFFF0);
              (*(v339 + 16))(v341);
              v342 = sub_1C584FDB0();
              (*(v339 + 8))(v341, v337);
              v193 = v351;
              __swift_destroy_boxed_opaque_existential_1(&v385);
            }

            else
            {
              v342 = 0;
            }

            v126 = v382;
            (*(v129 + 2))(v129, v342, 0);
            swift_unknownObjectRelease();
            sub_1C57439F8(v199, type metadata accessor for WebPlacecardBridgeReply);
            sub_1C5625230(&v387, &qword_1EC16E790, &unk_1C586A110);
          }

          goto LABEL_99;
        }
      }

      else
      {
        sub_1C5625230(&v387, &qword_1EC16E790, &unk_1C586A110);
        v196 = v350;
        (*(v369 + 56))(v350, 1, 1, v194);
      }

      sub_1C5625230(v196, &qword_1EC170928, &unk_1C5878148);
      sub_1C56466CC(&v390, &v387, &qword_1EC16E790, &unk_1C586A110);
      v271 = v389;
      if (v389)
      {
        v272 = __swift_project_boxed_opaque_existential_1(&v387, v389);
        v273 = *(v271 - 8);
        MEMORY[0x1EEE9AC00](v272, v272);
        v275 = v343 - ((v274 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v273 + 16))(v275);
        v276 = sub_1C584FDB0();
        (*(v273 + 8))(v275, v271);
        v193 = v351;
        __swift_destroy_boxed_opaque_existential_1(&v387);
      }

      else
      {
        v276 = 0;
      }

      v126 = v382;
      (*(v129 + 2))(v129, v276, 0);
      swift_unknownObjectRelease();
LABEL_99:
      sub_1C57439F8(v193, type metadata accessor for WebPlacecardBridgeReply);
      sub_1C57439F8(v188, type metadata accessor for WebPlacecardBridge.MUIconArgument);
      sub_1C5625230(&v390, &qword_1EC16E790, &unk_1C586A110);

      goto LABEL_88;
    case 4:
      if (!*(*v126 + 16))
      {
        goto LABEL_46;
      }

      v153 = v125;
      v154 = v375;
      sub_1C5743990(*v126 + ((*(v380 + 80) + 32) & ~*(v380 + 80)), v375, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      v155 = v126;
      sub_1C5690970(v125);
      sub_1C57439F8(v154, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      v156 = sub_1C5695BB4();
      v158 = v157;
      sub_1C57439F8(v153, type metadata accessor for WebPlacecardBridge.MUAmpArtworkArgument);
      v159 = *sub_1C5764F70();
      v160 = swift_allocObject();
      *(v160 + 16) = sub_1C5743EE0;
      *(v160 + 24) = v127;
      v161 = *(*v159 + 104);

      v161(v156, v158, sub_1C5743F20, v160);

      v126 = v155;

      goto LABEL_88;
    case 5:
      _Block_copy(v384);

      sub_1C5735318(v126, v371, v129);
      goto LABEL_51;
    case 6:
      if (!*(*v126 + 16))
      {
        goto LABEL_46;
      }

      sub_1C5743990(*v126 + ((*(v380 + 80) + 32) & ~*(v380 + 80)), v122, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      v203 = v361;
      sub_1C5690E98(v361);
      sub_1C57439F8(v122, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      v204 = v365;
      sub_1C5743928(v203, v365, type metadata accessor for WebPlacecardBridge.MUPageResizedArgument);
      v205 = sub_1C5695DC8();
      MUWebBasedPlacecardViewController.defaultHeight.setter(COERCE__INT64(v205), 0);
      v390 = 0u;
      v391 = 0u;
      sub_1C56466CC(&v390, &v387, &qword_1EC16E790, &unk_1C586A110);
      if (v389)
      {
        v206 = v356;
        v207 = v370;
        v208 = swift_dynamicCast();
        v209 = v369;
        (*(v369 + 56))(v206, v208 ^ 1u, 1, v207);
        if ((*(v209 + 48))(v206, 1, v207) != 1)
        {
          v210 = v346;
          sub_1C5743928(v206, v346, type metadata accessor for WebPlacecardBridgeReply);
          sub_1C5742CB4(&qword_1EC16D150, type metadata accessor for WebPlacecardBridgeReply, &unk_1C5872030);
          v211 = v383;
          v212 = sub_1C584F140();
          if (v211)
          {

            sub_1C57439F8(v210, type metadata accessor for WebPlacecardBridgeReply);
          }

          else
          {
            v310 = v212;
            v311 = v213;
            v312 = sub_1C584EAD0();
            v314 = v313;
            sub_1C566DD84(v310, v311);
            v389 = MEMORY[0x1E69E6158];
            v387 = v312;
            v388 = v314;
            sub_1C56466CC(&v387, &v385, &qword_1EC16E790, &unk_1C586A110);
            v315 = v386;
            if (v386)
            {
              v316 = __swift_project_boxed_opaque_existential_1(&v385, v386);
              v317 = *(v315 - 8);
              MEMORY[0x1EEE9AC00](v316, v316);
              v319 = v343 - ((v318 + 15) & 0xFFFFFFFFFFFFFFF0);
              (*(v317 + 16))(v319);
              v320 = sub_1C584FDB0();
              (*(v317 + 8))(v319, v315);
              __swift_destroy_boxed_opaque_existential_1(&v385);
            }

            else
            {
              v320 = 0;
            }

            (*(v129 + 2))(v129, v320, 0);
            swift_unknownObjectRelease();
            sub_1C57439F8(v210, type metadata accessor for WebPlacecardBridgeReply);
            sub_1C5625230(&v387, &qword_1EC16E790, &unk_1C586A110);
          }

          goto LABEL_82;
        }
      }

      else
      {
        sub_1C5625230(&v387, &qword_1EC16E790, &unk_1C586A110);
        v206 = v356;
        (*(v369 + 56))(v356, 1, 1, v370);
      }

      sub_1C5625230(v206, &qword_1EC170928, &unk_1C5878148);
      sub_1C56466CC(&v390, &v387, &qword_1EC16E790, &unk_1C586A110);
      v259 = v389;
      if (v389)
      {
        v260 = __swift_project_boxed_opaque_existential_1(&v387, v389);
        v261 = *(v259 - 8);
        MEMORY[0x1EEE9AC00](v260, v260);
        v263 = v343 - ((v262 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v261 + 16))(v263);
        v264 = sub_1C584FDB0();
        (*(v261 + 8))(v263, v259);
        __swift_destroy_boxed_opaque_existential_1(&v387);
      }

      else
      {
        v264 = 0;
      }

      (*(v129 + 2))(v129, v264, 0);
      swift_unknownObjectRelease();
LABEL_82:
      sub_1C5625230(&v390, &qword_1EC16E790, &unk_1C586A110);
      sub_1C57439F8(v204, type metadata accessor for WebPlacecardBridge.MUPageResizedArgument);

LABEL_83:

      v126 = v382;
      goto LABEL_89;
    case 7:
      _Block_copy(v384);

      sub_1C5736B28(v126, v371, v129);
      goto LABEL_51;
    case 8:
      _Block_copy(v384);

      sub_1C57378E8(v126, v129);
      goto LABEL_51;
    case 9:
      _Block_copy(v384);

      sub_1C5735E58(v126, v129);
      goto LABEL_51;
    case 10:
      v226 = *v126;
      if (!*(*v126 + 16))
      {
        goto LABEL_72;
      }

      v227 = v126;
      v228 = v127;
      v229 = v376;
      sub_1C5743990(v226 + ((*(v380 + 80) + 32) & ~*(v380 + 80)), v376, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      v230 = v357;
      sub_1C569134C(v357);
      sub_1C57439F8(v229, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      v231 = v368;
      sub_1C5743928(v230, v368, type metadata accessor for WebPlacecardBridge.MUNearbyPlacesArgument);
      sub_1C5691FCC();
      v232 = objc_allocWithZone(MEMORY[0x1E69A21C0]);
      v233 = sub_1C584F630();

      v234 = [v232 initWithEncodedMapsIdentifier_];

      if (!v234)
      {
        sub_1C57439F8(v231, type metadata accessor for WebPlacecardBridge.MUNearbyPlacesArgument);
        v126 = v227;
LABEL_72:
        v390 = 0u;
        v391 = 0u;
        _Block_copy(v129);
        sub_1C5734C0C(&v390, 1u, v129);
        _Block_release(v129);
        sub_1C5625230(&v390, &qword_1EC16E790, &unk_1C586A110);
        goto LABEL_87;
      }

      v235 = [objc_allocWithZone(MEMORY[0x1E696F280]) initWithGEOMapItemIdentifier_];
      v383 = sub_1C5691FE4();
      v237 = v236;
      v238 = *sub_1C567A818();
      v239 = swift_allocObject();
      *(v239 + 16) = sub_1C5743EE0;
      *(v239 + 24) = v228;
      v240 = *(*v238 + 120);

      v240(v235, v383, v237, sub_1C5743EE4, v239);

      sub_1C57439F8(v368, type metadata accessor for WebPlacecardBridge.MUNearbyPlacesArgument);

LABEL_79:

      v140 = v382;
      goto LABEL_90;
    case 11:
      _Block_copy(v384);

      sub_1C5737160(v126, v129);
      goto LABEL_51;
    case 12:
      _Block_copy(v384);

      sub_1C573754C(v126, v129);
      goto LABEL_51;
    case 13:
      _Block_copy(v384);

      sub_1C5737C68(v126, v371, v129);
      goto LABEL_51;
    case 14:
      if (!*(*v126 + 16))
      {
        goto LABEL_46;
      }

      sub_1C5743990(*v126 + ((*(v380 + 80) + 32) & ~*(v380 + 80)), v123, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      sub_1C5691A0C(v124);
      sub_1C57439F8(v123, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      v141 = v354;
      v142 = sub_1C5743928(v124, v354, type metadata accessor for WebPlacecardBridge.MUStickyHeaderArgument);
      v143 = v371;
      v144 = (*((*MEMORY[0x1E69E7D40] & *v371) + 0xB0))(v142);
      if (v144)
      {
        [v144 sectionController:v143 updateFixedHeaderWithShouldShow:sub_1C5696744() & 1];
        swift_unknownObjectRelease();
      }

      v390 = 0u;
      v391 = 0u;
      sub_1C56466CC(&v390, &v387, &qword_1EC16E790, &unk_1C586A110);
      v145 = v370;
      v146 = v369;
      if (v389)
      {
        v147 = v358;
        v148 = swift_dynamicCast();
        (*(v146 + 56))(v147, v148 ^ 1u, 1, v145);
        if ((*(v146 + 48))(v147, 1, v145) != 1)
        {
          v149 = v348;
          sub_1C5743928(v147, v348, type metadata accessor for WebPlacecardBridgeReply);
          sub_1C5742CB4(&qword_1EC16D150, type metadata accessor for WebPlacecardBridgeReply, &unk_1C5872030);
          v150 = v383;
          v151 = sub_1C584F140();
          if (v150)
          {

            sub_1C57439F8(v149, type metadata accessor for WebPlacecardBridgeReply);
            v126 = v382;
          }

          else
          {
            v288 = v151;
            v289 = v152;
            v290 = sub_1C584EAD0();
            v292 = v291;
            sub_1C566DD84(v288, v289);
            v389 = MEMORY[0x1E69E6158];
            v387 = v290;
            v388 = v292;
            sub_1C56466CC(&v387, &v385, &qword_1EC16E790, &unk_1C586A110);
            v293 = v386;
            if (v386)
            {
              v294 = __swift_project_boxed_opaque_existential_1(&v385, v386);
              v295 = *(v293 - 8);
              MEMORY[0x1EEE9AC00](v294, v294);
              v297 = v343 - ((v296 + 15) & 0xFFFFFFFFFFFFFFF0);
              (*(v295 + 16))(v297);
              v298 = sub_1C584FDB0();
              (*(v295 + 8))(v297, v293);
              __swift_destroy_boxed_opaque_existential_1(&v385);
            }

            else
            {
              v298 = 0;
            }

            v126 = v382;
            (*(v129 + 2))(v129, v298, 0);
            swift_unknownObjectRelease();
            sub_1C57439F8(v348, type metadata accessor for WebPlacecardBridgeReply);
            sub_1C5625230(&v387, &qword_1EC16E790, &unk_1C586A110);
          }

          goto LABEL_75;
        }
      }

      else
      {
        sub_1C5625230(&v387, &qword_1EC16E790, &unk_1C586A110);
        v147 = v358;
        (*(v146 + 56))(v358, 1, 1, v145);
      }

      sub_1C5625230(v147, &qword_1EC170928, &unk_1C5878148);
      sub_1C56466CC(&v390, &v387, &qword_1EC16E790, &unk_1C586A110);
      v247 = v389;
      if (v389)
      {
        v248 = __swift_project_boxed_opaque_existential_1(&v387, v389);
        v249 = *(v247 - 8);
        MEMORY[0x1EEE9AC00](v248, v248);
        v251 = v343 - ((v250 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v249 + 16))(v251);
        v252 = sub_1C584FDB0();
        (*(v249 + 8))(v251, v247);
        __swift_destroy_boxed_opaque_existential_1(&v387);
      }

      else
      {
        v252 = 0;
      }

      v126 = v382;
      (*(v129 + 2))(v129, v252, 0);
      swift_unknownObjectRelease();
LABEL_75:
      sub_1C5625230(&v390, &qword_1EC16E790, &unk_1C586A110);
      sub_1C57439F8(v141, type metadata accessor for WebPlacecardBridge.MUStickyHeaderArgument);

      goto LABEL_88;
    case 15:
      [v371 webViewFinishedLoading];
      v390 = 0u;
      v391 = 0u;
      sub_1C56466CC(&v390, &v387, &qword_1EC16E790, &unk_1C586A110);
      if (v389)
      {
        v176 = v126;
        v177 = v367;
        v178 = v370;
        v179 = swift_dynamicCast();
        v180 = v369;
        (*(v369 + 56))(v177, v179 ^ 1u, 1, v178);
        if ((*(v180 + 48))(v177, 1, v178) != 1)
        {
          v181 = v349;
          sub_1C5743928(v177, v349, type metadata accessor for WebPlacecardBridgeReply);
          sub_1C5742CB4(&qword_1EC16D150, type metadata accessor for WebPlacecardBridgeReply, &unk_1C5872030);
          v182 = v383;
          v183 = sub_1C584F140();
          if (v182)
          {

            sub_1C57439F8(v181, type metadata accessor for WebPlacecardBridgeReply);

            v126 = v176;
          }

          else
          {
            v277 = v183;
            v278 = v184;
            v279 = sub_1C584EAD0();
            v281 = v280;
            sub_1C566DD84(v277, v278);
            v389 = MEMORY[0x1E69E6158];
            v387 = v279;
            v388 = v281;
            sub_1C56466CC(&v387, &v385, &qword_1EC16E790, &unk_1C586A110);
            v282 = v386;
            if (v386)
            {
              v283 = __swift_project_boxed_opaque_existential_1(&v385, v386);
              v284 = *(v282 - 8);
              MEMORY[0x1EEE9AC00](v283, v283);
              v286 = v343 - ((v285 + 15) & 0xFFFFFFFFFFFFFFF0);
              (*(v284 + 16))(v286);
              v287 = sub_1C584FDB0();
              (*(v284 + 8))(v286, v282);
              v181 = v349;
              __swift_destroy_boxed_opaque_existential_1(&v385);
            }

            else
            {
              v287 = 0;
            }

            v126 = v176;
            (*(v129 + 2))(v129, v287, 0);
            swift_unknownObjectRelease();
            sub_1C57439F8(v181, type metadata accessor for WebPlacecardBridgeReply);
            sub_1C5625230(&v387, &qword_1EC16E790, &unk_1C586A110);
          }

          goto LABEL_57;
        }
      }

      else
      {
        v176 = v126;
        sub_1C5625230(&v387, &qword_1EC16E790, &unk_1C586A110);
        v177 = v367;
        (*(v369 + 56))(v367, 1, 1, v370);
      }

      sub_1C5625230(v177, &qword_1EC170928, &unk_1C5878148);
      sub_1C56466CC(&v390, &v387, &qword_1EC16E790, &unk_1C586A110);
      v241 = v389;
      if (v389)
      {
        v242 = __swift_project_boxed_opaque_existential_1(&v387, v389);
        v243 = *(v241 - 8);
        MEMORY[0x1EEE9AC00](v242, v242);
        v245 = v343 - ((v244 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v243 + 16))(v245);
        v246 = sub_1C584FDB0();
        (*(v243 + 8))(v245, v241);
        __swift_destroy_boxed_opaque_existential_1(&v387);
      }

      else
      {
        v246 = 0;
      }

      v126 = v176;
      (*(v129 + 2))(v129, v246, 0);

      swift_unknownObjectRelease();

LABEL_57:
      sub_1C5625230(&v390, &qword_1EC16E790, &unk_1C586A110);
      goto LABEL_89;
    case 16:
      _Block_copy(v384);

      sub_1C5738E7C(v126, v371, v129);
LABEL_51:
      _Block_release(v129);

      goto LABEL_89;
    case 17:
      sub_1C57439F8(v126, type metadata accessor for WebPlacecardBridge);

      goto LABEL_91;
    case 18:
      v214 = *v126;
      if (!*(*v126 + 16))
      {
LABEL_46:
        v390 = 0u;
        v391 = 0u;
        _Block_copy(v384);
        sub_1C5734C0C(&v390, 1u, v129);
        _Block_release(v129);
        sub_1C5625230(&v390, &qword_1EC16E790, &unk_1C586A110);
        goto LABEL_87;
      }

      v215 = v378;
      sub_1C5743990(v214 + ((*(v380 + 80) + 32) & ~*(v380 + 80)), v378, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      v216 = v360;
      sub_1C5691D2C(v360);
      sub_1C57439F8(v215, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      v217 = v364;
      sub_1C5743928(v216, v364, type metadata accessor for WebPlacecardBridge.MUWebTextSelectionViewArgument);
      sub_1C5719754();
      v390 = 0u;
      v391 = 0u;
      sub_1C56466CC(&v390, &v387, &qword_1EC16E790, &unk_1C586A110);
      if (v389)
      {
        v218 = v353;
        v219 = v370;
        v220 = swift_dynamicCast();
        v221 = v369;
        (*(v369 + 56))(v218, v220 ^ 1u, 1, v219);
        if ((*(v221 + 48))(v218, 1, v219) != 1)
        {
          v222 = v347;
          sub_1C5743928(v218, v347, type metadata accessor for WebPlacecardBridgeReply);
          sub_1C5742CB4(&qword_1EC16D150, type metadata accessor for WebPlacecardBridgeReply, &unk_1C5872030);
          v223 = v383;
          v224 = sub_1C584F140();
          if (v223)
          {

            sub_1C57439F8(v222, type metadata accessor for WebPlacecardBridgeReply);
            v126 = v382;
          }

          else
          {
            v321 = v224;
            v322 = v225;
            v323 = sub_1C584EAD0();
            v325 = v324;
            sub_1C566DD84(v321, v322);
            v389 = MEMORY[0x1E69E6158];
            v387 = v323;
            v388 = v325;
            sub_1C56466CC(&v387, &v385, &qword_1EC16E790, &unk_1C586A110);
            v326 = v386;
            if (v386)
            {
              v327 = __swift_project_boxed_opaque_existential_1(&v385, v386);
              v328 = *(v326 - 8);
              MEMORY[0x1EEE9AC00](v327, v327);
              v330 = v343 - ((v329 + 15) & 0xFFFFFFFFFFFFFFF0);
              (*(v328 + 16))(v330);
              v331 = sub_1C584FDB0();
              (*(v328 + 8))(v330, v326);
              v222 = v347;
              __swift_destroy_boxed_opaque_existential_1(&v385);
            }

            else
            {
              v331 = 0;
            }

            v126 = v382;
            (*(v129 + 2))(v129, v331, 0);
            swift_unknownObjectRelease();
            sub_1C57439F8(v222, type metadata accessor for WebPlacecardBridgeReply);
            sub_1C5625230(&v387, &qword_1EC16E790, &unk_1C586A110);
          }

          goto LABEL_86;
        }
      }

      else
      {
        sub_1C5625230(&v387, &qword_1EC16E790, &unk_1C586A110);
        v218 = v353;
        (*(v369 + 56))(v353, 1, 1, v370);
      }

      sub_1C5625230(v218, &qword_1EC170928, &unk_1C5878148);
      sub_1C56466CC(&v390, &v387, &qword_1EC16E790, &unk_1C586A110);
      v265 = v389;
      if (v389)
      {
        v266 = __swift_project_boxed_opaque_existential_1(&v387, v389);
        v267 = *(v265 - 8);
        MEMORY[0x1EEE9AC00](v266, v266);
        v269 = v343 - ((v268 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v267 + 16))(v269);
        v270 = sub_1C584FDB0();
        (*(v267 + 8))(v269, v265);
        __swift_destroy_boxed_opaque_existential_1(&v387);
      }

      else
      {
        v270 = 0;
      }

      v126 = v382;
      (*(v129 + 2))(v129, v270, 0);
      swift_unknownObjectRelease();
LABEL_86:
      sub_1C5625230(&v390, &qword_1EC16E790, &unk_1C586A110);
      sub_1C57439F8(v217, type metadata accessor for WebPlacecardBridge.MUWebTextSelectionViewArgument);
LABEL_87:

LABEL_88:

LABEL_89:
      v140 = v126;
LABEL_90:
      sub_1C57439F8(v140, type metadata accessor for WebPlacecardBridge);
LABEL_91:

      _Block_release(v129);
      _Block_release(v129);
      _Block_release(v129);
      _Block_release(v129);
      _Block_release(v129);
      _Block_release(v129);
      _Block_release(v129);
      _Block_release(v129);
      _Block_release(v129);
      _Block_release(v129);
      _Block_release(v129);
      _Block_release(v129);
      _Block_release(v129);
      _Block_release(v129);
      _Block_release(v129);
      _Block_release(v129);
      _Block_release(v129);
      return;
    default:
      v130 = sub_1C584F8A0();
      v131 = v366;
      (*(*(v130 - 8) + 56))(v366, 1, 1, v130);
      v132 = v343[0];
      sub_1C5743990(v126, v343[0], type metadata accessor for WebPlacecardBridge);
      v133 = (*(v114 + 80) + 40) & ~*(v114 + 80);
      v134 = v127;
      v135 = v126;
      v136 = swift_allocObject();
      v136[2] = 0;
      v136[3] = 0;
      v137 = v371;
      v136[4] = v371;
      sub_1C5743928(v132, v136 + v133, type metadata accessor for WebPlacecardBridge);
      v138 = (v136 + ((v115 + v133 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v138 = sub_1C5743EE0;
      v138[1] = v134;
      v139 = v137;

      sub_1C5659C04(0, 0, v131, &unk_1C5878398, v136);

      v140 = v135;
      goto LABEL_90;
  }
}

double sub_1C573C8B0(uint64_t *a1, void *a2, void (*a3)(uint64_t, unint64_t, unint64_t), uint64_t a4)
{
  v47 = a2;
  v7 = type metadata accessor for WebPlacecardBridge.MUAttributionArgument(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0);
  v12 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v20 = &v46 - v19;
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v46 - v22;
  v24 = swift_allocObject();
  *(v24 + 16) = a3;
  *(v24 + 24) = a4;
  v25 = *a1;
  if (!*(*a1 + 16))
  {
    v33 = qword_1EC17B020;

    if (v33 != -1)
    {
      swift_once();
    }

    v34 = sub_1C584F2C0();
    __swift_project_value_buffer(v34, qword_1EC18FA38);
    v35 = sub_1C584F2A0();
    v36 = sub_1C584F9B0();
    if (!os_log_type_enabled(v35, v36))
    {
      goto LABEL_18;
    }

    v37 = swift_slowAlloc();
    *v37 = 0;
    v38 = "empty vendorId for getAttributionData bridge call";
    goto LABEL_17;
  }

  v26 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  sub_1C5743990(v25 + v26, v23, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);

  sub_1C56907E0(v10);
  sub_1C57439F8(v23, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
  v46 = sub_1C5695B18();
  v28 = v27;
  sub_1C57439F8(v10, type metadata accessor for WebPlacecardBridge.MUAttributionArgument);
  if (*(v25 + 16))
  {
    sub_1C5743990(v25 + v26, v20, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
    sub_1C56907E0(v10);
    sub_1C57439F8(v20, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
    v29 = sub_1C5695B30();
    sub_1C57439F8(v10, type metadata accessor for WebPlacecardBridge.MUAttributionArgument);
    LOBYTE(v48[0]) = v29 & 1;
    v49 = 1;
    sub_1C56F5740();
    if (sub_1C584F620())
    {
      v30 = *sub_1C5764F70();
      v31 = swift_allocObject();
      *(v31 + 16) = sub_1C5743EE0;
      *(v31 + 24) = v24;
      v32 = *(*v30 + 120);

      v32(v46, v28, sub_1C5743F24, v31);

LABEL_12:

      return result;
    }

    if (*(v25 + 16))
    {
      sub_1C5743990(v25 + v26, v16, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      sub_1C56907E0(v10);
      sub_1C57439F8(v16, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      v39 = sub_1C5695B30();
      sub_1C57439F8(v10, type metadata accessor for WebPlacecardBridge.MUAttributionArgument);
      LOBYTE(v48[0]) = v39 & 1;
      v49 = 0;
      if (sub_1C584F620())
      {
        v40 = *sub_1C5764F70();

        v41 = [v47 mapItem];
        v42 = swift_allocObject();
        *(v42 + 16) = sub_1C5743EE0;
        *(v42 + 24) = v24;
        v43 = *(*v40 + 112);

        v43(v46, v28, v41, sub_1C5743F24, v42);

        goto LABEL_12;
      }
    }
  }

  if (qword_1EC17B020 != -1)
  {
    swift_once();
  }

  v45 = sub_1C584F2C0();
  __swift_project_value_buffer(v45, qword_1EC18FA38);
  v35 = sub_1C584F2A0();
  v36 = sub_1C584F9B0();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    v38 = "invalid argument for getAttributionData bridge call";
LABEL_17:
    _os_log_impl(&dword_1C5620000, v35, v36, v38, v37, 2u);
    MEMORY[0x1C694B7A0](v37, -1, -1);
  }

LABEL_18:

  memset(v48, 0, sizeof(v48));
  sub_1C572942C(v48, 1u, a3);
  sub_1C5625230(v48, &qword_1EC16E790, &unk_1C586A110);

  return result;
}

double sub_1C573CEFC(uint64_t *a1, void *a2, void (*a3)(uint64_t, unint64_t, unint64_t), uint64_t a4)
{
  v41 = a2;
  v7 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v40 = &v39 - v14;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v39 - v16;
  v18 = type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0);
  v19 = *(v18 - 8);
  v21 = MEMORY[0x1EEE9AC00](v18 - 8, v20);
  v23 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v24);
  v26 = &v39 - v25;
  v27 = swift_allocObject();
  v39 = a3;
  *(v27 + 16) = a3;
  *(v27 + 24) = a4;

  BOOL = GEOConfigGetBOOL();
  v29 = *a1;
  if (!BOOL || !*(v29 + 16) || (sub_1C5743990(v29 + ((*(v19 + 80) + 32) & ~*(v19 + 80)), v26, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument), sub_1C5690AF4(v17), sub_1C57439F8(v26, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument), v30 = sub_1C56921A8(), sub_1C57439F8(v17, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction), LOBYTE(v43[0]) = v30, v42 = 52, sub_1C56F4B10(), (sub_1C584F620() & 1) == 0))
  {
    if (*(v29 + 16))
    {
      sub_1C5743990(v29 + ((*(v19 + 80) + 32) & ~*(v19 + 80)), v23, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      sub_1C5690AF4(v11);
      sub_1C57439F8(v23, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      v31 = v11;
      v32 = v40;
      sub_1C5743928(v31, v40, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction);
      v33 = [v41 mapItem];
      sub_1C5774F00(v33);
      v35 = v34;

      if (v35)
      {
        type metadata accessor for MUPlaceActionFeedbackEnvironment();
        v36 = sub_1C56433CC(0);
        v37 = swift_allocObject();
        *(v37 + 16) = sub_1C5743EE0;
        *(v37 + 24) = v27;

        MUPlaceActionDispatcher.performAction(for:environment:completion:)();

        sub_1C57439F8(v32, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction);
        goto LABEL_10;
      }

      sub_1C57439F8(v32, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction);
    }

    memset(v43, 0, sizeof(v43));
    sub_1C572942C(v43, 1u, v39);
    sub_1C5625230(v43, &qword_1EC16E790, &unk_1C586A110);
    goto LABEL_10;
  }

  [v41 presentDebugPanel];
LABEL_10:

  return result;
}

uint64_t sub_1C573D334(uint64_t *a1, void (*a2)(uint64_t, unint64_t, unint64_t), uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170928, &unk_1C5878148);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v73 = &v65 - v8;
  v9 = type metadata accessor for WebPlacecardBridgeReply(0);
  v72 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v65 - v15;
  v17 = type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17 - 8, v19);
  v21 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for WebPlacecardBridge.MUTransitLabelArgument(0);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v26 = (&v65 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v24, v27);
  v29 = &v65 - v28;
  v30 = *a1;
  if (*(*a1 + 16))
  {
    v67 = a3;
    v68 = v9;
    v66 = v13;
    v70 = v16;
    v71 = a2;
    sub_1C5743990(v30 + ((*(v18 + 80) + 32) & ~*(v18 + 80)), v21, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
    sub_1C56911C4(v26);
    sub_1C57439F8(v21, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
    sub_1C5743928(v26, v29, type metadata accessor for WebPlacecardBridge.MUTransitLabelArgument);
    v69 = v29;
    v31 = *(*v29 + 16);
    if (v31)
    {
      v32 = *v29 + 40;
      v33 = MEMORY[0x1E69E7CC0];
      do
      {

        v34 = sub_1C584EAB0();
        v36 = v35;

        if (v36 >> 60 != 15)
        {
          v37 = objc_allocWithZone(MEMORY[0x1E69A2660]);
          sub_1C566DCD4(v34, v36);
          v38 = sub_1C584EAC0();
          v39 = [v37 initWithEncodedData_];

          sub_1C566DD70(v34, v36);
          v40 = *(**sub_1C5764F70() + 96);

          v41 = v40(v39);
          v43 = v42;

          if (v43)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v33 = sub_1C5638228(0, *(v33 + 2) + 1, 1, v33);
            }

            v45 = *(v33 + 2);
            v44 = *(v33 + 3);
            if (v45 >= v44 >> 1)
            {
              v33 = sub_1C5638228((v44 > 1), v45 + 1, 1, v33);
            }

            sub_1C566DD70(v34, v36);
            *(v33 + 2) = v45 + 1;
            v46 = &v33[16 * v45];
            *(v46 + 4) = v41;
            *(v46 + 5) = v43;
          }

          else
          {
            sub_1C566DD70(v34, v36);
          }
        }

        v32 += 16;
        --v31;
      }

      while (v31);
    }

    else
    {
      v33 = MEMORY[0x1E69E7CC0];
    }

    v47 = v70;
    sub_1C569CA9C(v70);
    sub_1C56976F8(v33);
    v48 = v68;
    *(&v77 + 1) = v68;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v76);
    sub_1C5743990(v47, boxed_opaque_existential_1, type metadata accessor for WebPlacecardBridgeReply);
    sub_1C56466CC(&v76, v74, &qword_1EC16E790, &unk_1C586A110);
    if (v75)
    {
      v50 = v73;
      v51 = swift_dynamicCast();
      v52 = v72;
      (*(v72 + 56))(v50, v51 ^ 1u, 1, v48);
      v53 = (*(v52 + 48))(v50, 1, v48);
      v54 = v71;
      v55 = v69;
      if (v53 != 1)
      {
        v56 = v66;
        sub_1C5743928(v50, v66, type metadata accessor for WebPlacecardBridgeReply);
        sub_1C5742CB4(&qword_1EC16D150, type metadata accessor for WebPlacecardBridgeReply, &unk_1C5872030);
        v58 = sub_1C584F140();
        v60 = v59;
        v61 = sub_1C584EAD0();
        v63 = v62;
        v64 = sub_1C566DD84(v58, v60);
        v75 = MEMORY[0x1E69E6158];
        v74[0] = v61;
        v74[1] = v63;
        (v54)(v74, 0, 0, v64);
        sub_1C57439F8(v56, type metadata accessor for WebPlacecardBridgeReply);
        sub_1C5625230(v74, &qword_1EC16E790, &unk_1C586A110);
LABEL_20:
        sub_1C57439F8(v47, type metadata accessor for WebPlacecardBridgeReply);
        sub_1C57439F8(v55, type metadata accessor for WebPlacecardBridge.MUTransitLabelArgument);
        return sub_1C5625230(&v76, &qword_1EC16E790, &unk_1C586A110);
      }
    }

    else
    {
      sub_1C5625230(v74, &qword_1EC16E790, &unk_1C586A110);
      v50 = v73;
      (*(v72 + 56))(v73, 1, 1, v48);
      v54 = v71;
      v55 = v69;
    }

    sub_1C5625230(v50, &qword_1EC170928, &unk_1C5878148);
    v54(&v76, 0, 0);
    goto LABEL_20;
  }

  v76 = 0u;
  v77 = 0u;
  sub_1C572942C(&v76, 1u, a2);
  return sub_1C5625230(&v76, &qword_1EC16E790, &unk_1C586A110);
}

double sub_1C573DA54(uint64_t *a1, void *a2, void (*a3)(uint64_t *, void, void, double), uint64_t a4)
{
  v123 = a2;
  v128 = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170928, &unk_1C5878148);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v122 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v130 = &v119 - v13;
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v119 - v15;
  v17 = type metadata accessor for WebPlacecardBridgeReply(0);
  v131 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17, v18);
  v120 = &v119 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v121 = &v119 - v23;
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = &v119 - v25;
  v27 = type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0);
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27 - 8, v29);
  v31 = &v119 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  refreshed = type metadata accessor for WebPlacecardBridge.MUMapItemRefreshArgument(0);
  v34 = MEMORY[0x1EEE9AC00](refreshed - 8, v33);
  v36 = (&v119 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v34, v37);
  v39 = (&v119 - v38);
  v40 = swift_allocObject();
  *(v40 + 16) = a3;
  *(v40 + 24) = a4;
  v41 = *a1;
  if (*(*a1 + 16))
  {
    v129 = v17;
    v126 = a3;
    v127 = v40;
    sub_1C5743990(v41 + ((*(v28 + 80) + 32) & ~*(v28 + 80)), v31, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
    v125 = a4;

    sub_1C5691024(v36);
    sub_1C57439F8(v31, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
    sub_1C5743928(v36, v39, type metadata accessor for WebPlacecardBridge.MUMapItemRefreshArgument);
    v42 = 0;
    v124 = v39;
    v43 = *v39;
    v44 = MEMORY[0x1E69E7CC0];
    *&v138 = MEMORY[0x1E69E7CC0];
    v45 = *(v43 + 16);
    v46 = v43 + 40;
    v132 = v43 + 40;
LABEL_3:
    v47 = v46 + 16 * v42;
    while (v45 != v42)
    {
      if (v42 >= *(v43 + 16))
      {
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      ++v42;
      v48 = v47 + 16;
      v49 = objc_allocWithZone(MEMORY[0x1E69A21C0]);

      v50 = sub_1C584F630();

      v51 = [v49 initWithEncodedMapsIdentifier_];

      v47 = v48;
      if (v51)
      {
        MEMORY[0x1C6949DF0]();
        if (*((v138 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v138 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C584F7A0();
        }

        sub_1C584F7E0();
        v44 = v138;
        v46 = v132;
        goto LABEL_3;
      }
    }

    *&v138 = MEMORY[0x1E69E7CC0];
    v42 = v44 & 0xFFFFFFFFFFFFFF8;
    if (!(v44 >> 62))
    {
      v52 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_12;
    }

LABEL_62:
    v52 = sub_1C584FB90();
LABEL_12:
    v53 = 0;
    v132 = MEMORY[0x1E69E7CC0];
    while (v52 != v53)
    {
      if ((v44 & 0xC000000000000001) != 0)
      {
        v54 = MEMORY[0x1C694A320](v53, v44);
      }

      else
      {
        if (v53 >= *(v42 + 16))
        {
          goto LABEL_61;
        }

        v54 = *(v44 + 8 * v53 + 32);
      }

      v55 = v54;
      v56 = v53 + 1;
      if (__OFADD__(v53, 1))
      {
        goto LABEL_60;
      }

      v57 = [objc_allocWithZone(MEMORY[0x1E696F280]) initWithGEOMapItemIdentifier_];

      ++v53;
      if (v57)
      {
        MEMORY[0x1C6949DF0]();
        if (*((v138 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v138 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C584F7A0();
        }

        sub_1C584F7E0();
        v132 = v138;
        v53 = v56;
      }
    }

    v58 = v132;
    if (v132 >> 62)
    {
      v59 = sub_1C584FB90();
    }

    else
    {
      v59 = *((v132 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v60 = v126;
    v61 = v127;
    v62 = v124;
    v63 = v129;
    v64 = v130;
    if (v59 < 1)
    {

      v138 = 0u;
      v139 = 0u;
      sub_1C56466CC(&v138, &v135, &qword_1EC16E790, &unk_1C586A110);
      if (v137)
      {
        v82 = swift_dynamicCast();
        v83 = v131;
        (*(v131 + 56))(v64, v82 ^ 1u, 1, v63);
        if ((*(v83 + 48))(v64, 1, v63) != 1)
        {
          v84 = v121;
          sub_1C5743928(v64, v121, type metadata accessor for WebPlacecardBridgeReply);
          sub_1C5742CB4(&qword_1EC16D150, type metadata accessor for WebPlacecardBridgeReply, &unk_1C5872030);
          v85 = v128;
          v86 = sub_1C584F140();
          if (v85)
          {

            sub_1C57439F8(v84, type metadata accessor for WebPlacecardBridgeReply);
          }

          else
          {
            v106 = v84;
            v107 = v86;
            v108 = v87;
            v109 = sub_1C584EAD0();
            v111 = v110;
            v112 = sub_1C566DD84(v107, v108);
            v137 = MEMORY[0x1E69E6158];
            v135 = v109;
            v136 = v111;
            v60(&v135, 0, 0, v112);
            sub_1C57439F8(v106, type metadata accessor for WebPlacecardBridgeReply);
            sub_1C5625230(&v135, &qword_1EC16E790, &unk_1C586A110);
          }

          goto LABEL_54;
        }
      }

      else
      {
        sub_1C5625230(&v135, &qword_1EC16E790, &unk_1C586A110);
        (*(v131 + 56))(v64, 1, 1, v63);
      }

      sub_1C5625230(v64, &qword_1EC170928, &unk_1C5878148);
      (v60)(&v138, 0, 0);
LABEL_54:
      sub_1C5625230(&v138, &qword_1EC16E790, &unk_1C586A110);
      goto LABEL_55;
    }

    v65 = swift_allocObject();
    *(v65 + 16) = sub_1C5743EE0;
    *(v65 + 24) = v61;

    v134 = sub_1C5691FA0();
    v133 = 2;
    sub_1C56F4950();
    sub_1C584F730();
    sub_1C584F730();
    if (v138 != v135)
    {
      v88 = *sub_1C567A818();
      v89 = swift_allocObject();
      *(v89 + 16) = sub_1C5743F30;
      *(v89 + 24) = v65;
      v90 = *(*v88 + 80);

      v90(v58, sub_1C5743EEC, v89);

      goto LABEL_39;
    }

    v66 = v123;
    v67 = [v123 mapItem];
    v68 = [v67 identifier];

    if (v68)
    {
      v69 = MEMORY[0x1E69E7D40];
      v70 = (*((*MEMORY[0x1E69E7D40] & *v66) + 0xE0))();
      v71 = (*((*v69 & *v70) + 0x1F0))();

      if (v71)
      {
        v72 = *sub_1C567A818();
        v73 = swift_allocObject();
        *(v73 + 16) = v71;
        *(v73 + 24) = v68;
        v74 = *(*v72 + 104);

        v75 = v71;
        v76 = v68;
        v74();

LABEL_39:

LABEL_55:
        sub_1C57439F8(v62, type metadata accessor for WebPlacecardBridge.MUMapItemRefreshArgument);
        goto LABEL_56;
      }
    }

    v138 = 0u;
    v139 = 0u;
    sub_1C56466CC(&v138, &v135, &qword_1EC16E790, &unk_1C586A110);
    if (v137)
    {
      v97 = v122;
      v98 = v129;
      v99 = swift_dynamicCast();
      v100 = v131;
      (*(v131 + 56))(v97, v99 ^ 1u, 1, v98);
      if ((*(v100 + 48))(v97, 1, v98) != 1)
      {
        v101 = v120;
        sub_1C5743928(v97, v120, type metadata accessor for WebPlacecardBridgeReply);
        sub_1C5742CB4(&qword_1EC16D150, type metadata accessor for WebPlacecardBridgeReply, &unk_1C5872030);
        v102 = v128;
        v103 = sub_1C584F140();
        if (v102)
        {

          sub_1C57439F8(v101, type metadata accessor for WebPlacecardBridgeReply);
        }

        else
        {
          v113 = v103;
          v114 = v104;
          v115 = sub_1C584EAD0();
          v117 = v116;
          v118 = sub_1C566DD84(v113, v114);
          v137 = MEMORY[0x1E69E6158];
          v135 = v115;
          v136 = v117;
          v60(&v135, 0, 0, v118);
          sub_1C57439F8(v101, type metadata accessor for WebPlacecardBridgeReply);
          sub_1C5625230(&v135, &qword_1EC16E790, &unk_1C586A110);
        }

        goto LABEL_53;
      }
    }

    else
    {
      sub_1C5625230(&v135, &qword_1EC16E790, &unk_1C586A110);
      v97 = v122;
      (*(v131 + 56))(v122, 1, 1, v129);
    }

    sub_1C5625230(v97, &qword_1EC170928, &unk_1C5878148);
    (v60)(&v138, 0, 0);
LABEL_53:

    goto LABEL_54;
  }

  v138 = 0u;
  v139 = 0u;
  sub_1C56466CC(&v138, &v135, &qword_1EC16E790, &unk_1C586A110);
  if (v137)
  {
    v77 = swift_dynamicCast();
    v78 = v131;
    (*(v131 + 56))(v16, v77 ^ 1u, 1, v17);
    if ((*(v78 + 48))(v16, 1, v17) != 1)
    {
      sub_1C5743928(v16, v26, type metadata accessor for WebPlacecardBridgeReply);
      sub_1C5742CB4(&qword_1EC16D150, type metadata accessor for WebPlacecardBridgeReply, &unk_1C5872030);
      v79 = v128;
      v80 = sub_1C584F140();
      if (v79)
      {

        sub_1C57439F8(v26, type metadata accessor for WebPlacecardBridgeReply);
      }

      else
      {
        v91 = v80;
        v92 = v81;
        v93 = sub_1C584EAD0();
        v95 = v94;
        v96 = sub_1C566DD84(v91, v92);
        v137 = MEMORY[0x1E69E6158];
        v135 = v93;
        v136 = v95;
        a3(&v135, 0, 0, v96);
        sub_1C57439F8(v26, type metadata accessor for WebPlacecardBridgeReply);
        sub_1C5625230(&v135, &qword_1EC16E790, &unk_1C586A110);
      }

      goto LABEL_42;
    }
  }

  else
  {
    sub_1C5625230(&v135, &qword_1EC16E790, &unk_1C586A110);
    (*(v131 + 56))(v16, 1, 1, v17);
  }

  sub_1C5625230(v16, &qword_1EC170928, &unk_1C5878148);
  (a3)(&v138, 0, 0);
LABEL_42:
  sub_1C5625230(&v138, &qword_1EC16E790, &unk_1C586A110);
LABEL_56:

  return result;
}

double sub_1C573E98C(uint64_t *a1, void *a2, void (*a3)(uint64_t *, void, void, double), void *a4)
{
  v81 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170928, &unk_1C5878148);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v80 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v77 - v12;
  v14 = type metadata accessor for WebPlacecardBridgeReply(0);
  v82 = *(v14 - 8);
  v83 = v14;
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v77 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v77 - v19;
  v21 = type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21 - 8, v23);
  v25 = &v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  refreshed = type metadata accessor for WebPlacecardBridge.MUMapItemRefreshArgument(0);
  v78 = *(refreshed - 8);
  v27 = *(v78 + 64);
  v29 = MEMORY[0x1EEE9AC00](refreshed - 8, v28);
  v79 = &v77 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29, v30);
  v33 = (&v77 - v32);
  MEMORY[0x1EEE9AC00](v31, v34);
  v36 = &v77 - v35;
  v37 = swift_allocObject();
  v84 = a3;
  *(v37 + 16) = a3;
  *(v37 + 24) = a4;
  v38 = v37;
  if (!*(*a1 + 16))
  {
    swift_retain_n();
    v90 = 0u;
    v91 = 0u;
    sub_1C56466CC(&v90, &v87, &qword_1EC16E790, &unk_1C586A110);
    if (v89)
    {
      v39 = v83;
      v40 = swift_dynamicCast();
      v41 = v82;
      (*(v82 + 56))(v13, v40 ^ 1u, 1, v39);
      if ((*(v41 + 48))(v13, 1, v39) != 1)
      {
        sub_1C5743928(v13, v20, type metadata accessor for WebPlacecardBridgeReply);
        sub_1C5742CB4(&qword_1EC16D150, type metadata accessor for WebPlacecardBridgeReply, &unk_1C5872030);
        v62 = sub_1C584F140();
        v64 = v63;
        v65 = sub_1C584EAD0();
        v67 = v66;
        v68 = sub_1C566DD84(v62, v64);
        v89 = MEMORY[0x1E69E6158];
        v87 = v65;
        v88 = v67;
        v84(&v87, 0, 0, v68);
        sub_1C57439F8(v20, type metadata accessor for WebPlacecardBridgeReply);
        sub_1C5625230(&v87, &qword_1EC16E790, &unk_1C586A110);
LABEL_12:
        sub_1C5625230(&v90, &qword_1EC16E790, &unk_1C586A110);
LABEL_21:

        goto LABEL_22;
      }
    }

    else
    {
      sub_1C5625230(&v87, &qword_1EC16E790, &unk_1C586A110);
      (*(v82 + 56))(v13, 1, 1, v83);
    }

    sub_1C5625230(v13, &qword_1EC170928, &unk_1C5878148);
    (v84)(&v90, 0, 0);
    goto LABEL_12;
  }

  sub_1C5743990(*a1 + ((*(v22 + 80) + 32) & ~*(v22 + 80)), v25, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
  swift_retain_n();
  sub_1C5691024(v33);
  sub_1C57439F8(v25, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
  sub_1C5743928(v33, v36, type metadata accessor for WebPlacecardBridge.MUMapItemRefreshArgument);
  if (!*(*v36 + 16))
  {
    v81 = a4;
    sub_1C5691F88();
    v42 = objc_allocWithZone(MEMORY[0x1E69A21C0]);
    v43 = sub_1C584F630();

    v44 = [v42 initWithEncodedMapsIdentifier_];

    if (v44)
    {
      v45 = [objc_allocWithZone(MEMORY[0x1E696F280]) initWithGEOMapItemIdentifier_];
      v46 = swift_allocObject();
      *(v46 + 16) = sub_1C5743EE0;
      *(v46 + 24) = v38;

      v86 = sub_1C5691FA0();
      v85 = 1;
      sub_1C56F4950();
      sub_1C584F730();
      sub_1C584F730();
      v47 = v90;
      v48 = v87;
      v49 = *sub_1C567A818();
      if (v47 == v48)
      {
        v50 = swift_allocObject();
        *(v50 + 16) = sub_1C5743F2C;
        *(v50 + 24) = v46;
        v51 = *(*v49 + 112);

        v51(v45, sub_1C5743EE8, v50);
      }

      else
      {
        v84 = v44;
        v57 = v79;
        sub_1C5743990(v36, v79, type metadata accessor for WebPlacecardBridge.MUMapItemRefreshArgument);
        v58 = (*(v78 + 80) + 16) & ~*(v78 + 80);
        v59 = swift_allocObject();
        sub_1C5743928(v57, v59 + v58, type metadata accessor for WebPlacecardBridge.MUMapItemRefreshArgument);
        v60 = (v59 + ((v27 + v58 + 7) & 0xFFFFFFFFFFFFFFF8));
        *v60 = sub_1C5743F2C;
        v60[1] = v46;
        v61 = *(*v49 + 88);

        v61(v45, sub_1C5743F10, v59);
      }

      sub_1C57439F8(v36, type metadata accessor for WebPlacecardBridge.MUMapItemRefreshArgument);
      goto LABEL_21;
    }

    v90 = 0u;
    v91 = 0u;
    sub_1C56466CC(&v90, &v87, &qword_1EC16E790, &unk_1C586A110);
    if (v89)
    {
      v52 = v80;
      v53 = v83;
      v54 = swift_dynamicCast();
      v55 = v82;
      (*(v82 + 56))(v52, v54 ^ 1u, 1, v53);
      if ((*(v55 + 48))(v52, 1, v53) != 1)
      {
        v56 = v77;
        sub_1C5743928(v52, v77, type metadata accessor for WebPlacecardBridgeReply);
        sub_1C5742CB4(&qword_1EC16D150, type metadata accessor for WebPlacecardBridgeReply, &unk_1C5872030);
        v70 = sub_1C584F140();
        v72 = v71;
        v73 = sub_1C584EAD0();
        v75 = v74;
        v76 = sub_1C566DD84(v70, v72);
        v89 = MEMORY[0x1E69E6158];
        v87 = v73;
        v88 = v75;
        v84(&v87, 0, 0, v76);
        sub_1C57439F8(v56, type metadata accessor for WebPlacecardBridgeReply);
        sub_1C5625230(&v87, &qword_1EC16E790, &unk_1C586A110);
LABEL_20:
        sub_1C5625230(&v90, &qword_1EC16E790, &unk_1C586A110);
        sub_1C57439F8(v36, type metadata accessor for WebPlacecardBridge.MUMapItemRefreshArgument);
        goto LABEL_21;
      }
    }

    else
    {
      sub_1C5625230(&v87, &qword_1EC16E790, &unk_1C586A110);
      v52 = v80;
      (*(v82 + 56))(v80, 1, 1, v83);
    }

    sub_1C5625230(v52, &qword_1EC170928, &unk_1C5878148);
    (v84)(&v90, 0, 0);
    goto LABEL_20;
  }

  sub_1C573DA54(a1, v81, v84, a4);

  sub_1C57439F8(v36, type metadata accessor for WebPlacecardBridge.MUMapItemRefreshArgument);

LABEL_22:

  return result;
}