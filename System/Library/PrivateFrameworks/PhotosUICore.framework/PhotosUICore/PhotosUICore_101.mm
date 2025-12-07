uint64_t sub_1A492EC54(uint64_t a1, uint64_t a2)
{
  sub_1A492ECD4(0, &qword_1EB1452E0, MEMORY[0x1E697F948]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A492ECD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    sub_1A492E314(255, &qword_1EB145250, &type metadata for TitleDetailRow, &type metadata for TitleDetailRow, MEMORY[0x1E697F960]);
    v7 = a3(a1, v6, MEMORY[0x1E6981148]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1A492ED64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void))
{
  sub_1A492ECD4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1A492EDC0()
{
  result = qword_1EB139550;
  if (!qword_1EB139550)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB139550);
  }

  return result;
}

void sub_1A492EE0C(uint64_t a1)
{
  if (!qword_1EB1452E8)
  {
    sub_1A492E000(255, &qword_1EB1452F0, sub_1A492EEA8, sub_1A492F0A4, MEMORY[0x1E697F960]);
    v1 = sub_1A524B514();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1452E8);
    }
  }
}

void sub_1A492EEA8(uint64_t a1)
{
  if (!qword_1EB1452F8)
  {
    sub_1A492EF40(255);
    sub_1A492A990(&qword_1EB145318, 255, sub_1A492EF40, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1452F8);
    }
  }
}

void sub_1A492EF74(uint64_t a1)
{
  if (!qword_1EB145308)
  {
    sub_1A492EFDC(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB145308);
    }
  }
}

void sub_1A492EFDC(uint64_t a1)
{
  if (!qword_1EB145310)
  {
    sub_1A3DF14C0(255);
    sub_1A405D614();
    v1 = sub_1A5247D04();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB145310);
    }
  }
}

void sub_1A492F040(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_1A5248804();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A492F114(uint64_t a1)
{
  if (!qword_1EB145330)
  {
    sub_1A3DF1428(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB145330);
    }
  }
}

unint64_t sub_1A492F18C()
{
  result = qword_1EB145348;
  if (!qword_1EB145348)
  {
    sub_1A492E000(255, &qword_1EB1452F0, sub_1A492EEA8, sub_1A492F0A4, MEMORY[0x1E697F960]);
    sub_1A492A990(&qword_1EB145350, 255, sub_1A492EEA8, MEMORY[0x1E6981870]);
    sub_1A492A990(&qword_1EB145358, 255, sub_1A492F0A4, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145348);
  }

  return result;
}

unint64_t sub_1A492F35C()
{
  result = qword_1EB145360;
  if (!qword_1EB145360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145360);
  }

  return result;
}

void sub_1A492F3F4(uint64_t a1)
{
  sub_1A492FC70(319, &qword_1EB1246E8, sub_1A3EBE398, MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1A492F4D8(uint64_t a1)
{
  sub_1A52411C4();
  if (v1 <= 0x3F)
  {
    sub_1A492F5AC(319);
    if (v2 <= 0x3F)
    {
      sub_1A492FC70(319, &qword_1EB1201F0, sub_1A3C3637C, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A492F5AC(uint64_t a1)
{
  if (!qword_1EB145368)
  {
    sub_1A492DF30(255, &qword_1EB145218, MEMORY[0x1E69E62F8]);
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB145368);
    }
  }
}

void sub_1A492F620(uint64_t a1)
{
  sub_1A52411C4();
  if (v1 <= 0x3F)
  {
    sub_1A524DF24();
    if (v2 <= 0x3F)
    {
      sub_1A492FC70(319, &qword_1EB145370, sub_1A492FCD4, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1A492FE58(319, &qword_1EB127340, MEMORY[0x1E6981910], MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1A492F73C(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1A52411C4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(*(v6 - 8) + 64);
  v13 = *(v9 + 80);
  v14 = *(v9 + 64);
  if (v8 <= v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = *(v7 + 84);
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = 7;
  if (!v10)
  {
    v17 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v16 < a2)
  {
    v18 = ((((v17 + v14 + ((v13 + ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
    if (v18 <= 3)
    {
      v19 = ((a2 - v16 + 255) >> 8) + 1;
    }

    else
    {
      v19 = 2;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v22 = *&a1[v18];
        if (*&a1[v18])
        {
          goto LABEL_28;
        }
      }

      else
      {
        v22 = *&a1[v18];
        if (v22)
        {
          goto LABEL_28;
        }
      }
    }

    else if (v21)
    {
      v22 = a1[v18];
      if (a1[v18])
      {
LABEL_28:
        v23 = (v22 - 1) << (8 * v18);
        if (v18 <= 3)
        {
          v24 = *a1;
        }

        else
        {
          v23 = 0;
          v24 = *a1;
        }

        return v16 + (v24 | v23) + 1;
      }
    }
  }

  if (v8 == v16)
  {
    v25 = *(v7 + 48);

    return v25(a1, v8, v6);
  }

  v27 = &a1[v12 + 7] & 0xFFFFFFFFFFFFFFF8;
  if ((v15 & 0x80000000) != 0)
  {
    if (v10 >= 2)
    {
      v29 = (*(*(*(a3 + 16) - 8) + 48))((v27 + v13 + 16) & ~v13);
      if (v29 >= 2)
      {
        return v29 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v28 = *(v27 + 8);
  if (v28 >= 0xFFFFFFFF)
  {
    LODWORD(v28) = -1;
  }

  return (v28 + 1);
}

void sub_1A492F9A8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_1A52411C4();
  v9 = 0;
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  v12 = *(*(a4 + 16) - 8);
  v13 = *(v12 + 84);
  v14 = *(v10 + 64);
  v15 = *(v12 + 80);
  v16 = *(v12 + 64);
  v17 = v13 - 1;
  if (!v13)
  {
    v17 = 0;
  }

  if (v11 > v17)
  {
    v17 = *(v10 + 84);
  }

  if (v17 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  else
  {
    v18 = v17;
  }

  if (!v13)
  {
    ++v16;
  }

  v19 = ((((v16 + ((v15 + ((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v15) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v18 < a3)
  {
    if (v19 <= 3)
    {
      v20 = ((a3 - v18 + 255) >> 8) + 1;
    }

    else
    {
      v20 = 2;
    }

    if (v20 >= 0x10000)
    {
      v21 = 4;
    }

    else
    {
      v21 = 2;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    if (v20 >= 2)
    {
      v9 = v21;
    }

    else
    {
      v9 = 0;
    }
  }

  if (v18 >= a2)
  {
    if (v9 > 1)
    {
      if (v9 != 2)
      {
        *&a1[v19] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_40;
      }

      *&a1[v19] = 0;
    }

    else if (v9)
    {
      a1[v19] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_40;
    }

    if (!a2)
    {
      return;
    }

LABEL_40:
    if (v11 == v18)
    {
      v24 = *(v10 + 56);

      v24(a1, a2, v11, v8);
    }

    else
    {
      v25 = (&a1[v14 + 7] & 0xFFFFFFFFFFFFFFF8);
      if ((v17 & 0x80000000) != 0)
      {
        if (v13 >= 2)
        {
          v26 = *(v12 + 56);

          v26((v25 + v15 + 16) & ~v15, (a2 + 1));
        }
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *v25 = a2 & 0x7FFFFFFF;
        v25[1] = 0;
      }

      else
      {
        v25[1] = (a2 - 1);
      }
    }

    return;
  }

  v22 = ~v18 + a2;
  bzero(a1, v19);
  if (v19 <= 3)
  {
    v23 = (v22 >> 8) + 1;
  }

  else
  {
    v23 = 1;
  }

  if (v19 <= 3)
  {
    *a1 = v22;
    if (v9 > 1)
    {
LABEL_28:
      if (v9 == 2)
      {
        *&a1[v19] = v23;
      }

      else
      {
        *&a1[v19] = v23;
      }

      return;
    }
  }

  else
  {
    *a1 = v22;
    if (v9 > 1)
    {
      goto LABEL_28;
    }
  }

  if (v9)
  {
    a1[v19] = v23;
  }
}

void sub_1A492FC70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1A492FCD4()
{
  result = qword_1EB145378;
  if (!qword_1EB145378)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB145378);
  }

  return result;
}

unint64_t sub_1A492FD54()
{
  result = qword_1EB145388;
  if (!qword_1EB145388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145388);
  }

  return result;
}

uint64_t objectdestroy_3Tm_0()
{

  return swift_deallocObject();
}

uint64_t sub_1A492FDF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A492FE58(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A492FEA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
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

void *sub_1A492FFB0(void *result, int64_t a2, char a3, void *a4)
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

  v10 = MEMORY[0x1E69E7CA0];
  if (!v9)
  {
    v14 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A492DF30(0, &qword_1EB139440, MEMORY[0x1E69E6F90]);
  sub_1A492FE58(0, &unk_1EB139448, v10 + 8, type metadata accessor for DebugRow);
  v12 = *(*(v11 - 8) + 72);
  v13 = (*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80);
  v14 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v14);
  if (!v12)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v13) == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_29;
  }

  v14[2] = v8;
  v14[3] = 2 * ((result - v13) / v12);
LABEL_19:
  sub_1A492FE58(0, &unk_1EB139448, v10 + 8, type metadata accessor for DebugRow);
  v17 = *(v16 - 8);
  if (v5)
  {
    if (v14 < a4 || (v18 = (*(v17 + 80) + 32) & ~*(v17 + 80), v14 + v18 >= a4 + v18 + *(v17 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v14 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v14;
}

void sub_1A49301E0()
{
  v1 = MEMORY[0x1E69E7CA0];
  sub_1A492FE58(0, &unk_1EB139448, MEMORY[0x1E69E7CA0] + 8, type metadata accessor for DebugRow);
  v3 = v2 - 8;
  v4 = (*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80);
  v5 = [objc_opt_self() generalPasteboard];
  v6 = v0 + *(v3 + 40);
  v7 = MEMORY[0x1E69E6720];
  sub_1A492AA18(v6 + v4, &v9, &qword_1EB126130, v1 + 8, MEMORY[0x1E69E6720]);
  sub_1A492FE58(0, &qword_1EB126130, v1 + 8, v7);
  sub_1A524C714();
  v8 = sub_1A524C634();

  [v5 setString_];
}

uint64_t objectdestroy_64Tm_0()
{
  sub_1A492FE58(0, &unk_1EB139448, MEMORY[0x1E69E7CA0] + 8, type metadata accessor for DebugRow);
  v2 = v1;
  v3 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v4 = sub_1A52411C4();
  (*(*(v4 - 8) + 8))(v3, v4);

  v5 = (v3 + *(v2 + 32));
  if (v5[3])
  {
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void sub_1A493046C()
{
  sub_1A492FE58(0, &unk_1EB139448, MEMORY[0x1E69E7CA0] + 8, type metadata accessor for DebugRow);
  v2 = v1 - 8;
  v3 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v4 = [objc_opt_self() generalPasteboard];
  v5 = (v3 + *(v2 + 36));
  v6 = v5[1];
  v7 = *v5;
  v8 = v6;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A49305F4(uint64_t a1)
{
  sub_1A4929CD8();
  type metadata accessor for DebugSection(0);
  sub_1A3D5F9DC();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A493072C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  sub_1A492DF30(0, &qword_1EB145218, MEMORY[0x1E69E62F8]);
  sub_1A52411C4();
  sub_1A492E000(0, &qword_1EB145220, sub_1A492DFB8, sub_1A492E190, MEMORY[0x1E697F960]);
  sub_1A492E6E4();
  sub_1A492E898();
  sub_1A4930888();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

unint64_t sub_1A4930888()
{
  result = qword_1EB1453B0;
  if (!qword_1EB1453B0)
  {
    sub_1A492FE58(255, &unk_1EB139448, MEMORY[0x1E69E7CA0] + 8, type metadata accessor for DebugRow);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1453B0);
  }

  return result;
}

void sub_1A4930908(uint64_t a1)
{
  if (!qword_1EB1453B8)
  {
    sub_1A492E314(255, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
    v1 = sub_1A52483B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1453B8);
    }
  }
}

uint64_t sub_1A493099C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4930A04()
{
  type metadata accessor for DebugInfoPanel(0);

  return sub_1A4928D44();
}

uint64_t objectdestroy_77Tm_0()
{
  v1 = (type metadata accessor for DebugInfoPanel(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);

  v3 = v0 + v2 + v1[7];
  sub_1A492FC70(0, &qword_1EB128A38, sub_1A3EBE398, MEMORY[0x1E697DCB8]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    sub_1A3EBE398(0);
    v6 = *(v5 + 32);
    v7 = sub_1A52489C4();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  return swift_deallocObject();
}

double sub_1A4930BBC()
{
  v1 = *(type metadata accessor for DebugInfoPanel(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0xE000000000000000;
  v4 = *(*(v2 + 8) + 24);
  v5 = swift_unknownObjectRetain();
  sub_1A4929370(v5, v4, 0, v3);
  swift_unknownObjectRelease();
  v6 = [objc_opt_self() generalPasteboard];
  swift_beginAccess();
  v7 = sub_1A524C634();
  [v6 setString_];

  return result;
}

void sub_1A4930CE0()
{
  v1 = *(type metadata accessor for DebugInfoPanel(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = [objc_allocWithZone(PXRadarConfiguration) init];
  [v3 addDiagnosticProvider_];
  PXFileRadarWithConfiguration(v3);
}

id sub_1A4930F28(void *a1)
{
  v2 = [a1 isFaceModeEnabled] ^ 1;

  return [a1 setFaceModeEnabled_];
}

uint64_t sub_1A49310A0()
{
  v1 = [v0 viewModel];
  v2 = [v1 currentDataSource];

  v3 = [v2 container];
  if (v3)
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = v4;
      v6 = objc_opt_self();
      swift_unknownObjectRetain_n();
      v7 = sub_1A524C634();
      v8 = [v6 locKeyForPersonOrPet:v5 key:v7];
      swift_unknownObjectRelease();

      sub_1A524C674();
      swift_unknownObjectRelease();
    }
  }

  v9 = sub_1A524C634();

  v10 = PXLocalizedString(v9);

  v11 = sub_1A524C674();
  swift_unknownObjectRelease();

  return v11;
}

id sub_1A49313FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v4 = v3;
  v5 = sub_1A5240E64();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  sub_1A3F9ADFC(0, v12);
  type metadata accessor for PeopleUtilities(0, v13);
  sub_1A3D78594();
  v14 = sub_1A524DBD4();
  result = [objc_opt_self() px_systemPhotoLibrary];
  if (result)
  {
    v16 = result;
    v17 = [result px_localDefaults];

    [v17 setNumber:v14 forKey:@"PXPeopleHomeSortingType"];
    lemonadePeopleShelfIdentifier.getter(&v23);
    static LemonadeShelfUtilities.navigationURLForDetailsOfShelf(withIdentifier:)(&v23, v11);
    (*(v6 + 16))(v8, v11, v5);
    v18 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = v4;
    (*(v6 + 32))(v19 + v18, v8, v5);
    v20 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x58);
    v21 = v4;
    v20(v22, v19);

    return (*(v6 + 8))(v11, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1A493176C(uint64_t a1, uint64_t (*a2)(char *))
{
  sub_1A3F9ADFC(0, a2);
  type metadata accessor for PeopleUtilities(0, v3);
  sub_1A3D78594();
  v4 = sub_1A524DBD4();
  result = [objc_opt_self() px_systemPhotoLibrary];
  if (result)
  {
    v6 = result;
    v7 = [result px_localDefaults];

    [v7 setNumber:v4 forKey:@"PXPeopleHomeSortingType"];
    lemonadePeopleShelfIdentifier.getter(&v8);
    return a2(&v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1A493187C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  sub_1A3F9ADFC(0, a2);
  type metadata accessor for PeopleUtilities(0, v6);
  v11 = a1;
  sub_1A3D78594();
  v7 = sub_1A524DBD4();
  v8 = [objc_opt_self() px_systemPhotoLibrary];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 px_localDefaults];

    [v10 setNumber:v7 forKey:@"PXPeopleHomeSortingType"];
    lemonadePeopleShelfIdentifier.getter(&v12);
    a4(&v12);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1A4931CE4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1A5240E64();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17[-v10];
  v18 = *sub_1A45EF990();
  static LemonadeShelfUtilities.navigationURLForDetailsOfShelf(withIdentifier:)(&v18, v11);
  (*(v6 + 16))(v8, v11, v5);
  v12 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  (*(v6 + 32))(v13 + v12, v8, v5);
  v14 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x58);
  v15 = a1;
  v14(a3, v13);

  return (*(v6 + 8))(v11, v5);
}

uint64_t sub_1A493225C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1A5240E64();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17[-v10];
  v18 = 15;
  static LemonadeShelfUtilities.navigationURLForDetailsOfShelf(withIdentifier:)(&v18, &v17[-v10]);
  (*(v6 + 16))(v8, v11, v5);
  v12 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  (*(v6 + 32))(v13 + v12, v8, v5);
  v14 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x58);
  v15 = a1;
  v14(a3, v13);

  return (*(v6 + 8))(v11, v5);
}

void sub_1A4932440(void *a1, uint64_t a2, char a3, void (*a4)(void))
{
  v6 = a3;
  v5 = a1;
  testWithAlbumCellStyle(_:action:)(&v6, a4);
}

uint64_t sub_1A49328E4(uint64_t (*a1)(double), uint64_t a2, uint64_t a3)
{
  v6 = sub_1A5240E64();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v19[-v12];
  v20 = *a1(v11);
  static LemonadeShelfUtilities.navigationURLForDetailsOfShelf(withIdentifier:)(&v20, v13);
  (*(v7 + 16))(v9, v13, v6);
  v14 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v3;
  (*(v7 + 32))(v15 + v14, v9, v6);
  v16 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x58);
  v17 = v3;
  v16(a3, v15);

  return (*(v7 + 8))(v13, v6);
}

uint64_t sub_1A4932AE4(void *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  v8 = sub_1A5240E64();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21[-v13];
  v15 = a1;
  v22 = *a3();
  static LemonadeShelfUtilities.navigationURLForDetailsOfShelf(withIdentifier:)(&v22, v14);
  (*(v9 + 16))(v11, v14, v8);
  v16 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  (*(v9 + 32))(v17 + v16, v11, v8);
  v18 = *((*MEMORY[0x1E69E7D40] & *v15) + 0x58);
  v19 = v15;
  v18(a5, v17);

  return (*(v9 + 8))(v14, v8);
}

void sub_1A4932DB8(void *a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(char *))
{
  v6 = a1;
  v7 = *a3();
  a4(&v7);
}

uint64_t sub_1A4932E20(_BYTE *a1)
{
  sub_1A3C4D338(0, &qword_1EB136EA0, MEMORY[0x1E69C2610]);
  v34 = *(v3 - 8);
  v4 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v30 - v6;
  v8 = sub_1A5240E64();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v30 - v13;
  LOBYTE(a1) = *a1;
  v36 = a1;
  static LemonadeShelfUtilities.navigationURL(shelfIdentifier:)(&v36, &v30 - v13);
  v35 = a1;
  v15 = static LemonadeShelfUtilities.scrollViewAccessibilityIdentifier(shelfIdentifier:)();
  v31 = v16;
  v32 = v15;
  v17 = sub_1A5243724();
  v18 = *(*(v17 - 8) + 56);
  v33 = v7;
  v18(v7, 1, 1, v17);
  (*(v9 + 16))(v11, v14, v8);
  v19 = v7;
  v20 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4936F2C(v19, v20);
  v21 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v22 = (v10 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (*(v34 + 80) + v22 + 16) & ~*(v34 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v1;
  (*(v9 + 32))(v24 + v21, v11, v8);
  v25 = (v24 + v22);
  v26 = v31;
  *v25 = v32;
  v25[1] = v26;
  sub_1A4936FAC(v20, v24 + v23);
  v27 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x58);
  v28 = v1;
  v27(&unk_1A5374CA8, v24);

  sub_1A49371A0(v33);
  return (*(v9 + 8))(v14, v8);
}

uint64_t sub_1A4933148(uint64_t a1)
{
  v1[2] = a1;
  sub_1A3C4D338(0, &qword_1EB136EA0, MEMORY[0x1E69C2610]);
  v1[3] = swift_task_alloc();
  v1[4] = sub_1A524CC54();
  v1[5] = sub_1A524CC44();
  v2 = swift_task_alloc();
  v1[6] = v2;
  *v2 = v1;
  v2[1] = sub_1A4933240;

  return sub_1A49362BC();
}

uint64_t sub_1A4933240()
{
  v2 = *v1;
  v2[7] = v0;

  v4 = sub_1A524CBC4();
  v2[8] = v4;
  v2[9] = v3;
  if (v0)
  {
    v5 = sub_1A4933768;
  }

  else
  {
    v5 = sub_1A49333A0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

void sub_1A49333A0()
{
  v1 = *(v0 + 24);
  *(v0 + 80) = *(sub_1A4470A48() + 1);
  v2 = *MEMORY[0x1E69C2600];
  v3 = sub_1A5243724();
  v4 = *(v3 - 8);
  (*(v4 + 104))(v1, v2, v3);
  (*(v4 + 56))(v1, 0, 1, v3);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A493357C()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  *(*v1 + 96) = v0;

  sub_1A49371A0(v3);

  v4 = *(v2 + 72);
  v5 = *(v2 + 64);
  if (v0)
  {
    v6 = sub_1A49337D8;
  }

  else
  {
    v6 = sub_1A49336F8;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, v4);
}

uint64_t sub_1A49336F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A4933768()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A49337D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A4933848()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3CA8098;

  return sub_1A4933148(v2);
}

uint64_t sub_1A49338DC(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = sub_1A524CC54();
  v1[4] = sub_1A524CC44();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_1A493398C;

  return sub_1A49362BC();
}

uint64_t sub_1A493398C()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {
    v4 = sub_1A524CBC4();

    return MEMORY[0x1EEE6DFA0](sub_1A3DDF060, v4, v3);
  }

  else
  {
    v7 = (*((*MEMORY[0x1E69E7D40] & **(v2 + 16)) + 0x78) + **((*MEMORY[0x1E69E7D40] & **(v2 + 16)) + 0x78));
    v5 = swift_task_alloc();
    *(v2 + 56) = v5;
    *v5 = v2;
    v5[1] = sub_1A4933BB4;

    return v7();
  }
}

uint64_t sub_1A4933BB4()
{
  *(*v1 + 64) = v0;

  v3 = sub_1A524CBC4();
  if (v0)
  {
    v4 = sub_1A3DDF0C4;
  }

  else
  {
    v4 = sub_1A3DDC7D0;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1A4933D10()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3CA8098;

  return sub_1A49338DC(v2);
}

uint64_t sub_1A4933DA4(void *a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = sub_1A524CC54();
  v2[5] = sub_1A524CC44();
  v4 = *((*MEMORY[0x1E69E7D40] & *a1) + 0xA0);
  v8 = (v4 + *v4);
  v5 = swift_task_alloc();
  v2[6] = v5;
  *v5 = v2;
  v5[1] = sub_1A4933EF4;
  v6.n128_u64[0] = 2.0;

  return v8(v6);
}

uint64_t sub_1A4933EF4()
{
  v2 = *v1;
  v2[7] = v0;

  v4 = sub_1A524CBC4();
  v2[8] = v4;
  v2[9] = v3;
  if (v0)
  {
    v5 = sub_1A47CF778;
  }

  else
  {
    v5 = sub_1A4934054;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A4934054()
{
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  v2 = *(v0 + 16);
  *(v1 + 16) = v2;
  v3 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x80);
  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = sub_1A49341BC;

  return (v6)(0, 1, &unk_1A5374CB8, v1);
}

uint64_t sub_1A49341BC()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1A47CF7DC;
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1A49375A8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A49342D8()
{
  v2 = *(sub_1A5240E64() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A3CA8098;

  return sub_1A4933DA4(v4, v0 + v3);
}

uint64_t sub_1A49343B0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_1A524CC54();
  v2[4] = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A4934448, v4, v3);
}

uint64_t sub_1A4934448()
{
  v1 = v0[2];
  v2 = sub_1A3C6E9EC();
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  v7 = (v3 + *v3);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_1A493458C;
  v5 = v0[3];

  return (v7)(v5, v2, 0);
}

uint64_t sub_1A493458C(void *a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = *(v4 + 40);
    v6 = *(v4 + 48);
    v7 = sub_1A446DC90;
  }

  else
  {

    v5 = *(v4 + 40);
    v6 = *(v4 + 48);
    v7 = sub_1A3DE1864;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1A49346B4(_BYTE *a1)
{
  sub_1A3C4D338(0, &qword_1EB136EA0, MEMORY[0x1E69C2610]);
  v36 = *(v3 - 8);
  v4 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v35 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v30 - v6;
  v31 = sub_1A5240E64();
  v8 = *(v31 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - v12;
  LOBYTE(a1) = *a1;
  v38 = a1;
  v34 = &v30 - v12;
  static LemonadeShelfUtilities.navigationURLForDetailsOfShelf(withIdentifier:)(&v38, &v30 - v12);
  v37 = a1;
  v14 = static LemonadeShelfUtilities.scrollViewAccessibilityIdentifierForDetailsOfShelf(withIdentifier:)();
  v32 = v15;
  v33 = v14;
  v16 = *MEMORY[0x1E69C25F8];
  v17 = sub_1A5243724();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v7, v16, v17);
  (*(v18 + 56))(v7, 0, 1, v17);
  v19 = v31;
  (*(v8 + 16))(v10, v13, v31);
  v20 = v35;
  sub_1A4936F2C(v7, v35);
  v21 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v22 = (v9 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (*(v36 + 80) + v22 + 16) & ~*(v36 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v1;
  (*(v8 + 32))(v24 + v21, v10, v19);
  v25 = (v24 + v22);
  v26 = v32;
  *v25 = v33;
  v25[1] = v26;
  sub_1A4936FAC(v20, v24 + v23);
  v27 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x58);
  v28 = v1;
  v27(&unk_1A5374CA0, v24);

  sub_1A49371A0(v7);
  return (*(v8 + 8))(v34, v19);
}

uint64_t sub_1A4934D38(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = sub_1A524CC54();
  v5[8] = sub_1A524CC44();
  v7 = *((*MEMORY[0x1E69E7D40] & *a1) + 0xA0);
  v11 = (*MEMORY[0x1E69E7D40] & *a1) + 160;
  v5[9] = v7;
  v5[10] = v11 & 0xFFFFFFFFFFFFLL | 0xA51D000000000000;
  v12 = (v7 + *v7);
  v8 = swift_task_alloc();
  v5[11] = v8;
  *v8 = v5;
  v8[1] = sub_1A4934E9C;
  v9.n128_u64[0] = 2.0;

  return v12(v9);
}

uint64_t sub_1A4934E9C()
{
  v2 = *v1;
  v2[12] = v0;

  v4 = sub_1A524CBC4();
  v2[13] = v4;
  v2[14] = v3;
  if (v0)
  {
    v5 = sub_1A4935674;
  }

  else
  {
    v5 = sub_1A4934FFC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A4934FFC()
{
  v1 = v0[2];
  v2 = sub_1A3C6E9EC();
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  v7 = (v3 + *v3);
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_1A4935140;
  v5 = v0[3];

  return v7(v5, v2, 1);
}

uint64_t sub_1A4935140(void *a1)
{
  v4 = *v2;
  v4[16] = v1;

  if (v1)
  {
    v5 = v4[13];
    v6 = v4[14];

    return MEMORY[0x1EEE6DFA0](sub_1A49356D8, v5, v6);
  }

  else
  {
    v7 = v4[9];

    v11 = (v7 + *v7);
    v8 = swift_task_alloc();
    v4[17] = v8;
    *v8 = v4;
    v8[1] = sub_1A4935320;
    v9.n128_u64[0] = 1.0;

    return v11(v9);
  }
}

uint64_t sub_1A4935320()
{
  v2 = *v1;
  *(v2 + 144) = v0;

  if (v0)
  {
    v3 = *(v2 + 104);
    v4 = *(v2 + 112);

    return MEMORY[0x1EEE6DFA0](sub_1A493573C, v3, v4);
  }

  else
  {
    v10 = (*((*MEMORY[0x1E69E7D40] & **(v2 + 16)) + 0x68) + **((*MEMORY[0x1E69E7D40] & **(v2 + 16)) + 0x68));
    v5 = swift_task_alloc();
    *(v2 + 152) = v5;
    *v5 = v2;
    v5[1] = sub_1A4935538;
    v6 = *(v2 + 40);
    v7 = *(v2 + 48);
    v8 = *(v2 + 32);

    return v10(v8, v6, v7);
  }
}

uint64_t sub_1A4935538()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 112);
  v4 = *(v2 + 104);
  if (v0)
  {
    v5 = sub_1A49357A0;
  }

  else
  {
    v5 = sub_1A3FC0550;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A4935674()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A49356D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A493573C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A49357A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A4935804(void *a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = sub_1A524CC54();
  v2[5] = sub_1A524CC44();
  v4 = *((*MEMORY[0x1E69E7D40] & *a1) + 0xA0);
  v8 = (*MEMORY[0x1E69E7D40] & *a1) + 160;
  v2[6] = v4;
  v2[7] = v8 & 0xFFFFFFFFFFFFLL | 0xA51D000000000000;
  v9 = (v4 + *v4);
  v5 = swift_task_alloc();
  v2[8] = v5;
  *v5 = v2;
  v5[1] = sub_1A4935960;
  v6.n128_u64[0] = 2.0;

  return v9(v6);
}

uint64_t sub_1A4935960()
{
  v2 = *v1;
  v2[9] = v0;

  v4 = sub_1A524CBC4();
  v2[10] = v4;
  v2[11] = v3;
  if (v0)
  {
    v5 = sub_1A493612C;
  }

  else
  {
    v5 = sub_1A4935AC0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A4935AC0()
{
  v1 = v0[2];
  v2 = sub_1A3C6E9EC();
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  v7 = (v3 + *v3);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1A4935C04;
  v5 = v0[3];

  return v7(v5, v2, 1);
}

uint64_t sub_1A4935C04(void *a1)
{
  v4 = *v2;
  v4[13] = v1;

  if (v1)
  {
    v5 = v4[10];
    v6 = v4[11];

    return MEMORY[0x1EEE6DFA0](sub_1A4936190, v5, v6);
  }

  else
  {
    v7 = v4[6];

    v11 = (v7 + *v7);
    v8 = swift_task_alloc();
    v4[14] = v8;
    *v8 = v4;
    v8[1] = sub_1A4935DE4;
    v9.n128_u64[0] = 1.0;

    return v11(v9);
  }
}

uint64_t sub_1A4935DE4()
{
  v2 = *v1;
  *(v2 + 120) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = *(v2 + 88);

    return MEMORY[0x1EEE6DFA0](sub_1A49361F4, v3, v4);
  }

  else
  {
    v7 = (*((*MEMORY[0x1E69E7D40] & **(v2 + 16)) + 0x78) + **((*MEMORY[0x1E69E7D40] & **(v2 + 16)) + 0x78));
    v5 = swift_task_alloc();
    *(v2 + 128) = v5;
    *v5 = v2;
    v5[1] = sub_1A4935FF0;

    return v7();
  }
}

uint64_t sub_1A4935FF0()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);
  if (v0)
  {
    v5 = sub_1A4936258;
  }

  else
  {
    v5 = sub_1A3DEB9FC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A493612C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A4936190()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A49361F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A4936258()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A49362BC()
{
  v1[2] = v0;
  sub_1A3C4D338(0, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  v1[3] = swift_task_alloc();
  v1[4] = sub_1A524CC54();
  v1[5] = sub_1A524CC44();
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xA0);
  v6 = (*MEMORY[0x1E69E7D40] & *v0) + 160;
  v1[6] = v2;
  v1[7] = v6 & 0xFFFFFFFFFFFFLL | 0xA51D000000000000;
  v7 = (v2 + *v2);
  v3 = swift_task_alloc();
  v1[8] = v3;
  *v3 = v1;
  v3[1] = sub_1A4936460;
  v4.n128_u64[0] = 2.0;

  return v7(v4);
}

uint64_t sub_1A4936460()
{
  v2 = *v1;
  v2[9] = v0;

  v4 = sub_1A524CBC4();
  v2[10] = v4;
  v2[11] = v3;
  if (v0)
  {
    v5 = sub_1A4936ADC;
  }

  else
  {
    v5 = sub_1A49365C0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A49365C0()
{
  v1 = v0[3];
  sub_1A5240E34();
  v2 = sub_1A5240E64();
  v0[12] = v2;
  v3 = *(v2 - 8);
  v0[13] = v3;
  result = (*(v3 + 48))(v1, 1, v2);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v5 = v0[2];
    v6 = sub_1A3C6E9EC();
    v7 = sub_1A3C5A374();
    v8 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x60);
    v11 = (v8 + *v8);
    v9 = swift_task_alloc();
    v0[14] = v9;
    *v9 = v0;
    v9[1] = sub_1A4936790;
    v10 = v0[3];

    return (v11)(v10, v6, v7 & 1);
  }

  return result;
}

uint64_t sub_1A4936790(void *a1)
{
  v4 = *v2;
  v4[15] = v1;

  if (v1)
  {
    v5 = v4[10];
    v6 = v4[11];

    return MEMORY[0x1EEE6DFA0](sub_1A4936B48, v5, v6);
  }

  else
  {
    v7 = v4[12];
    v8 = v4[13];
    v9 = v4[6];
    v10 = v4[3];

    (*(v8 + 8))(v10, v7);
    v14 = (v9 + *v9);
    v11 = swift_task_alloc();
    v4[16] = v11;
    *v11 = v4;
    v11[1] = sub_1A49369A0;
    v12.n128_u64[0] = 1.0;

    return v14(v12);
  }
}

uint64_t sub_1A49369A0()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);
  if (v0)
  {
    v5 = sub_1A4936BDC;
  }

  else
  {
    v5 = sub_1A4937484;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A4936ADC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A4936B48()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[3];

  (*(v2 + 8))(v3, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A4936BDC()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_1A4936C48(uint64_t a1)
{
  v3 = type metadata accessor for PhotosPPTTestRunner(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_allocWithZone(v1);
  sub_1A3DE0CA0(a1, v5);
  v7 = sub_1A3FA4E54(v5);
  sub_1A3DE0D04(a1);
  return v7;
}

id sub_1A4936CE8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LemonadeShelvesPPTTests(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for LemonadeShelvesPPTTests(uint64_t a1)
{
  result = qword_1EB1E0C88;
  if (!qword_1EB1E0C88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A4936DC0()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return sub_1A49338DC(v2);
}

uint64_t sub_1A4936E54()
{
  v2 = *(sub_1A5240E64() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A3CA8098;

  return sub_1A4935804(v4, v0 + v3);
}

uint64_t sub_1A4936F2C(uint64_t a1, uint64_t a2)
{
  sub_1A3C4D338(0, &qword_1EB136EA0, MEMORY[0x1E69C2610]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A4936FAC(uint64_t a1, uint64_t a2)
{
  sub_1A3C4D338(0, &qword_1EB136EA0, MEMORY[0x1E69C2610]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A493702C()
{
  v2 = *(sub_1A5240E64() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1A3C4D338(0, &qword_1EB136EA0, MEMORY[0x1E69C2610]);
  v6 = (v4 + *(*(v5 - 8) + 80) + 16) & ~*(*(v5 - 8) + 80);
  v7 = *(v0 + 16);
  v8 = v0 + v4;
  v9 = *(v0 + v4);
  v10 = *(v8 + 8);
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_1A3CA8098;

  return sub_1A4934D38(v7, v0 + v3, v9, v10, v0 + v6);
}

uint64_t sub_1A49371A0(uint64_t a1)
{
  sub_1A3C4D338(0, &qword_1EB136EA0, MEMORY[0x1E69C2610]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_178Tm()
{
  v1 = sub_1A5240E64();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1A3C4D338(0, &qword_1EB136EA0, MEMORY[0x1E69C2610]);
  v6 = (v4 + *(*(v5 - 8) + 80) + 16) & ~*(*(v5 - 8) + 80);

  (*(v2 + 8))(v0 + v3, v1);

  v7 = sub_1A5243724();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v6, 1, v7))
  {
    (*(v8 + 8))(v0 + v6, v7);
  }

  return swift_deallocObject();
}

uint64_t sub_1A49373EC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3CA8098;

  return sub_1A49343B0(v2, v3);
}

uint64_t sub_1A4937AEC()
{
  sub_1A4938BAC(*(v0 + 16));

  return swift_deallocClassInstance();
}

unint64_t sub_1A4937B40()
{
  result = sub_1A4938AA8(MEMORY[0x1E69E7CC0]);
  qword_1EB17BCA8 = result;
  return result;
}

void sub_1A4937B70(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1A435B4C4(0, &qword_1EB1263C0, MEMORY[0x1E69E69B8], MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E69C0]);
    sub_1A524E794();
  }

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4937E3C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1A49388EC(v5);
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
    v9 = *(type metadata accessor for TestNotificationPhotosItem(0) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_1A493B3D0(v11, a2);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

void sub_1A4938108(uint64_t a1, uint64_t a2)
{
  sub_1A4938900(0);
  sub_1A4938C94(&qword_1EB128D98, 255, sub_1A4938900, off_1E7721070);

  sub_1A5245C54();
}

void *sub_1A49381D0(void *result, int64_t a2, char a3, void *a4)
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

  sub_1A3C7D258(0, &unk_1EB1453E0, type metadata accessor for TestNotificationPhotosItem, MEMORY[0x1E69E6F90]);
  v10 = *(type metadata accessor for TestNotificationPhotosItem(0) - 8);
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
  v15 = *(type metadata accessor for TestNotificationPhotosItem(0) - 8);
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

void sub_1A49383CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1A4938E28(0);
  v6 = sub_1A524E774();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v3;
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
      v31 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {
      }

      v21 = sub_1A524EC84();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v31;
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

    if (v4)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_1A4938634(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1A3CAB9BC(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1A49383CC(v16, a4 & 1);
      v11 = sub_1A3CAB9BC(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        sub_1A524EB84();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1A4938794();
      v11 = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(v11 >> 6) + 8] |= 1 << v11;
    *(v21[6] + 8 * v11) = a3;
    v23 = (v21[7] + 16 * v11);
    *v23 = a1;
    v23[1] = a2;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return;
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * v11);
  *v22 = a1;
  v22[1] = a2;
}

void sub_1A4938794()
{
  v1 = v0;
  sub_1A4938E28(0);
  v2 = *v0;
  v3 = sub_1A524E764();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void sub_1A4938920(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for TestNotificationPhotosItem(255);
    v7 = sub_1A4938C94(&qword_1EB12AE90, 255, type metadata accessor for TestNotificationPhotosItem, &unk_1A5315090);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

double sub_1A49389C0()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1A4938900(0);
    sub_1A4938C94(&qword_1EB1453D8, 255, sub_1A4938900, off_1E7721078);

    sub_1A5245F44();
  }

  return result;
}

unint64_t sub_1A4938AA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1A4938E28(0);
  v3 = sub_1A524E794();
  v4 = *(a1 + 32);
  v13 = *(a1 + 40);
  result = sub_1A3CAB9BC(v4);
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v7 = (a1 + 64);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 16 * result) = v13;
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v11 = (v7 + 24);
    v4 = *(v7 - 1);
    v13 = *v7;

    result = sub_1A3CAB9BC(v4);
    v7 = v11;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A4938BAC(uint64_t a1)
{
  if (qword_1EB17BCA0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = sub_1A3CAB9BC(a1);
  if (v3)
  {
    v4 = v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = qword_1EB17BCA8;
    v9 = qword_1EB17BCA8;
    qword_1EB17BCA8 = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1A4938794();
      v6 = v9;
    }

    sub_1A3DBD0B0(v4, v6, v7);
    qword_1EB17BCA8 = v6;
  }

  return swift_endAccess();
}

uint64_t sub_1A4938C94(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A4938E28(uint64_t a1)
{
  if (!qword_1EB126408)
  {
    sub_1A3C3637C();
    v1 = sub_1A524E7A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB126408);
    }
  }
}

unint64_t sub_1A4938E90(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1A435B4C4(0, qword_1EB120420, MEMORY[0x1E69E6158], MEMORY[0x1E69E6530], MEMORY[0x1E69E6168]);
    sub_1A524E794();

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return MEMORY[0x1E69E7CC8];
}

uint64_t sub_1A4938FA0()
{
  v0 = sub_1A5246F24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TestNotificationPhotosItem(0);
  v77 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v69 - v8;
  sub_1A3C7D258(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v69 - v11;
  v13 = sub_1A5241144();
  v78 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v69 - v17;
  v19 = sub_1A5240554();
  if (v19)
  {
    v20 = v19;
    v79 = sub_1A524C674();
    v80 = v21;
    sub_1A524E384();
    if (*(v20 + 16) && (v22 = sub_1A3D5C0BC(v81), (v23 & 1) != 0))
    {
      sub_1A3C2F0BC(*(v20 + 56) + 32 * v22, &v82);
      sub_1A3D5FAFC(v81);
      sub_1A3DAF588();
      if (swift_dynamicCast())
      {
        v24 = v79;
        v79 = 0x656C746974;
        v80 = 0xE500000000000000;
        sub_1A524E384();
        if (*(v20 + 16) && (v25 = sub_1A3D5C0BC(v81), (v26 & 1) != 0))
        {
          sub_1A3C2F0BC(*(v20 + 56) + 32 * v25, &v82);
          sub_1A3D5FAFC(v81);
          if (swift_dynamicCast())
          {
            v27 = v80;
            v75 = v79;
            v28 = &v87;
LABEL_16:
            *(v28 - 32) = v27;
            v79 = 0x7470697263736564;
            v80 = 0xEB000000006E6F69;
            sub_1A524E384();
            if (*(v20 + 16) && (v34 = sub_1A3D5C0BC(v81), (v35 & 1) != 0))
            {
              sub_1A3C2F0BC(*(v20 + 56) + 32 * v34, &v82);
              sub_1A3D5FAFC(v81);
              if (swift_dynamicCast())
              {
                v36 = v80;
                v74 = v79;
                v37 = &v84;
LABEL_22:
                *(v37 - 32) = v36;
                v82 = 0x656C746974627573;
                v83 = 0xE800000000000000;
                sub_1A524E384();
                if (*(v20 + 16) && (v38 = sub_1A3D5C0BC(v81), (v39 & 1) != 0))
                {
                  sub_1A3C2F0BC(*(v20 + 56) + 32 * v38, &v82);
                  sub_1A3D5FAFC(v81);
                  v40 = swift_dynamicCast();
                  if (v40)
                  {
                    v41 = v79;
                  }

                  else
                  {
                    v41 = 0;
                  }

                  if (v40)
                  {
                    v42 = v80;
                  }

                  else
                  {
                    v42 = 0;
                  }
                }

                else
                {
                  sub_1A3D5FAFC(v81);
                  v41 = 0;
                  v42 = 0;
                }

                v79 = 0x7463617265746E69;
                v80 = 0xEF657079546E6F69;
                sub_1A524E384();
                v43 = *(v20 + 16);
                v72 = v41;
                if (v43 && (v44 = sub_1A3D5C0BC(v81), (v45 & 1) != 0))
                {
                  sub_1A3C2F0BC(*(v20 + 56) + 32 * v44, &v82);
                  sub_1A3D5FAFC(v81);
                  swift_dynamicCast();
                }

                else
                {
                  sub_1A3D5FAFC(v81);
                }

                v46 = sub_1A4057DE0();
                if (v46 == 3)
                {
                  v47 = 0;
                }

                else
                {
                  v47 = v46;
                }

                LODWORD(v70) = v47;
                v79 = 0x6C7974536E6F6369;
                v80 = 0xE900000000000065;
                sub_1A524E384();
                v48 = *(v20 + 16);
                v69 = v24;
                v71 = v42;
                if (v48 && (v49 = sub_1A3D5C0BC(v81), (v50 & 1) != 0))
                {
                  sub_1A3C2F0BC(*(v20 + 56) + 32 * v49, &v82);
                  sub_1A3D5FAFC(v81);
                  swift_dynamicCast();
                }

                else
                {
                  sub_1A3D5FAFC(v81);
                }

                v51 = sub_1A405810C();
                if (v51 == 3)
                {
                  v52 = 0;
                }

                else
                {
                  v52 = v51;
                }

                v82 = 0x697373696D736964;
                v83 = 0xEB00000000656C62;
                sub_1A524E384();
                if (*(v20 + 16) && (v53 = sub_1A3D5C0BC(v81), (v54 & 1) != 0))
                {
                  sub_1A3C2F0BC(*(v20 + 56) + 32 * v53, &v82);
                  sub_1A3D5FAFC(v81);
                  if (swift_dynamicCast())
                  {
                    v55 = v79;
LABEL_51:
                    v82 = 0x646165726E75;
                    v83 = 0xE600000000000000;
                    sub_1A524E384();
                    if (*(v20 + 16) && (v56 = sub_1A3D5C0BC(v81), (v57 & 1) != 0))
                    {
                      sub_1A3C2F0BC(*(v20 + 56) + 32 * v56, &v82);
                      sub_1A3D5FAFC(v81);
                      if (swift_dynamicCast())
                      {
                        v58 = v79;
LABEL_57:
                        v79 = 1702125924;
                        v80 = 0xE400000000000000;
                        sub_1A524E384();
                        if (*(v20 + 16) && (v59 = sub_1A3D5C0BC(v81), (v60 & 1) != 0))
                        {
                          sub_1A3C2F0BC(*(v20 + 56) + 32 * v59, &v82);
                          sub_1A3D5FAFC(v81);

                          v61 = swift_dynamicCast();
                          v62 = v78;
                          (*(v78 + 56))(v12, v61 ^ 1u, 1, v13);
                          if ((*(v62 + 48))(v12, 1, v13) != 1)
                          {
                            (*(v62 + 32))(v18, v12, v13);
                            goto LABEL_64;
                          }
                        }

                        else
                        {

                          sub_1A3D5FAFC(v81);
                          v62 = v78;
                          (*(v78 + 56))(v12, 1, 1, v13);
                        }

                        sub_1A5241104();
                        if ((*(v62 + 48))(v12, 1, v13) != 1)
                        {
                          sub_1A493B30C(v12, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1A3C7D258);
                        }

LABEL_64:
                        v63 = qword_1EB1E0C98++;
                        (*(v62 + 16))(v15, v18, v13);
                        v68 = v70;
                        v70 = v63;
                        sub_1A4057D00(v63, v75, v76, v74, v73, v55, v72, v71, v9, v68, v52, v58, v15);
                        if (qword_1EB17BC90 != -1)
                        {
                          swift_once();
                        }

                        sub_1A493B24C(v9, v6);
                        swift_beginAccess();
                        v64 = qword_1EB17BC98;
                        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                        qword_1EB17BC98 = v64;
                        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                        {
                          v64 = sub_1A49381D0(0, v64[2] + 1, 1, v64);
                          qword_1EB17BC98 = v64;
                        }

                        v67 = v64[2];
                        v66 = v64[3];
                        if (v67 >= v66 >> 1)
                        {
                          v64 = sub_1A49381D0((v66 > 1), v67 + 1, 1, v64);
                        }

                        v64[2] = v67 + 1;
                        sub_1A493B3D0(v6, v64 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v67);
                        qword_1EB17BC98 = v64;
                        swift_endAccess();
                        if (qword_1EB17BCA0 != -1)
                        {
                          swift_once();
                        }

                        swift_beginAccess();
                        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
                      }
                    }

                    else
                    {
                      sub_1A3D5FAFC(v81);
                    }

                    v58 = 0;
                    goto LABEL_57;
                  }
                }

                else
                {
                  sub_1A3D5FAFC(v81);
                }

                v55 = 0;
                goto LABEL_51;
              }
            }

            else
            {
              sub_1A3D5FAFC(v81);
            }

            v73 = 0x80000001A53F35C0;
            v36 = 0xD000000000000013;
            v37 = &v85;
            goto LABEL_22;
          }
        }

        else
        {
          sub_1A3D5FAFC(v81);
        }

        v76 = 0xED0000656C746954;
        v27 = 0x20676E697373694DLL;
        v28 = &v86;
        goto LABEL_16;
      }
    }

    else
    {

      sub_1A3D5FAFC(v81);
    }
  }

  v29 = sub_1A45350E8();
  (*(v1 + 16))(v3, v29, v0);
  v30 = sub_1A524D244();
  v31 = sub_1A5246F04();
  if (os_log_type_enabled(v31, v30))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_1A3C1C000, v31, v30, "Failed to get reply handle for post notification", v32, 2u);
    MEMORY[0x1A590EEC0](v32, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

void sub_1A4939E44()
{
  v0 = sub_1A5246F24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C7D258(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v33 - v5;
  v7 = sub_1A5241144();
  MEMORY[0x1EEE9AC00](v7);
  v33[13] = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v33[15] = v33 - v10;
  v11 = type metadata accessor for TestNotificationPhotosItem(0);
  MEMORY[0x1EEE9AC00](v11);
  v33[14] = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v33[16] = v33 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v16 = sub_1A5240554();
  if (v16)
  {
    v17 = v16;
    v34 = sub_1A524C674();
    v35 = v18;
    sub_1A524E384();
    if (*(v17 + 16) && (v19 = sub_1A3D5C0BC(&v36), (v20 & 1) != 0))
    {
      sub_1A3C2F0BC(*(v17 + 56) + 32 * v19, &v38);
      sub_1A3D5FAFC(&v36);
      sub_1A3DAF588();
      if (swift_dynamicCast())
      {
        v21 = v34;
        v34 = 0x696669746E656469;
        v35 = 0xEA00000000007265;
        v22 = MEMORY[0x1E69E6158];
        sub_1A524E384();
        if (*(v17 + 16) && (v23 = sub_1A3D5C0BC(&v36), (v24 & 1) != 0))
        {
          sub_1A3C2F0BC(*(v17 + 56) + 32 * v23, &v38);
          sub_1A3D5FAFC(&v36);
          if (swift_dynamicCast())
          {
            v33[8] = v11;
            v33[9] = v6;
            v33[10] = v21;
            v33[12] = v34;
            if (qword_1EB17BC90 != -1)
            {
              swift_once();
            }

            swift_beginAccess();
            _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
          }
        }

        else
        {

          sub_1A3D5FAFC(&v36);
        }

        v29 = MEMORY[0x1E69E69B8];
        v30 = MEMORY[0x1E69E7CA0];
        sub_1A493B1F0(0, &qword_1EB1261A0, &qword_1EB126530, MEMORY[0x1E69E69B8], MEMORY[0x1E69E7CA0] + 8);
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_1A52FC9F0;
        v36 = 0x73736563637573;
        v37 = 0xE700000000000000;
        sub_1A524E384();
        *(v31 + 96) = MEMORY[0x1E69E6370];
        *(v31 + 72) = 0;
        v36 = 0x726F727265;
        v37 = 0xE500000000000000;
        sub_1A524E384();
        *(v31 + 168) = v22;
        *(v31 + 144) = 0xD000000000000012;
        *(v31 + 152) = 0x80000001A53F3580;
        sub_1A3DAED90(v31);
        swift_setDeallocating();
        sub_1A435B310(0, &qword_1EB126530, v29, v30 + 8);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v32 = sub_1A524C3D4();

        [v21 replyWithInfo_];
        swift_unknownObjectRelease();

        return;
      }
    }

    else
    {

      sub_1A3D5FAFC(&v36);
    }
  }

  v25 = sub_1A45350E8();
  (*(v1 + 16))(v3, v25, v0);
  v26 = sub_1A524D244();
  v27 = sub_1A5246F04();
  if (os_log_type_enabled(v27, v26))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_1A3C1C000, v27, v26, "Failed to get reply handle for update notification", v28, 2u);
    MEMORY[0x1A590EEC0](v28, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
}

void sub_1A493B1F0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_1A435B310(255, a3, a4, a5);
    v6 = sub_1A524EA54();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1A493B24C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TestNotificationPhotosItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A493B2B0(uint64_t a1)
{
  v2 = type metadata accessor for TestNotificationPhotosItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A493B30C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1A493B36C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TestNotificationPhotosItem(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A493B3D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TestNotificationPhotosItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1A493B43C()
{
  sub_1A3E75D84(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A524A274();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C52C70(0, &qword_1EB126910, off_1E771F6E8);
  v7 = [swift_getObjCClassFromMetadata() sharedInstance];
  v8 = [v7 showParticipantCountBadges];

  (*(v4 + 104))(v6, *MEMORY[0x1E6980F28], v3);
  v9 = sub_1A524A154();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  v10 = sub_1A524A1C4();
  sub_1A4943CD4(v2, sub_1A3E75D84);
  (*(v4 + 8))(v6, v3);
  v11 = sub_1A524B434();
  qword_1EB1EC030 = MEMORY[0x1E69815C0];
  unk_1EB1EC038 = MEMORY[0x1E6981568];
  word_1EB1EBFF0 = 0;
  byte_1EB1EBFF2 = v8;
  result = 0.0;
  unk_1EB1EBFF8 = xmmword_1A5374DC0;
  qword_1EB1EC008 = v10;
  qword_1EB1EC010 = 0x4000000000000000;
  unk_1EB1EC018 = v11;
  return result;
}

__int16 *sub_1A493B664()
{
  if (qword_1EB1E0CA0 != -1)
  {
    swift_once();
  }

  return &word_1EB1EBFF0;
}

double sub_1A493B6B4()
{
  sub_1A3E75D84(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A524A274();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C52C70(0, &qword_1EB126910, off_1E771F6E8);
  v7 = [swift_getObjCClassFromMetadata() sharedInstance];
  v8 = [v7 showParticipantCountBadges];

  (*(v4 + 104))(v6, *MEMORY[0x1E6980F28], v3);
  v9 = sub_1A524A154();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  v10 = sub_1A524A1C4();
  sub_1A4943CD4(v2, sub_1A3E75D84);
  (*(v4 + 8))(v6, v3);
  v11 = sub_1A524B434();
  qword_1EB1EC080 = MEMORY[0x1E69815C0];
  unk_1EB1EC088 = MEMORY[0x1E6981568];
  word_1EB1EC040 = 257;
  byte_1EB1EC042 = v8;
  result = 0.0;
  unk_1EB1EC048 = xmmword_1A5374DC0;
  qword_1EB1EC058 = v10;
  qword_1EB1EC060 = 0x4000000000000000;
  unk_1EB1EC068 = v11;
  return result;
}

__int16 *sub_1A493B8E0()
{
  if (qword_1EB1E0CA8 != -1)
  {
    swift_once();
  }

  return &word_1EB1EC040;
}

double sub_1A493B930()
{
  sub_1A3E75D84(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A524A274();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C52C70(0, &qword_1EB126910, off_1E771F6E8);
  v7 = [swift_getObjCClassFromMetadata() sharedInstance];
  v8 = [v7 showParticipantCountBadges];

  (*(v4 + 104))(v6, *MEMORY[0x1E6980F28], v3);
  v9 = sub_1A524A154();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  sub_1A524A164();
  v10 = sub_1A524A1C4();
  sub_1A4943CD4(v2, sub_1A3E75D84);
  (*(v4 + 8))(v6, v3);
  v11 = sub_1A524B434();
  qword_1EB1EC0D0 = MEMORY[0x1E69815C0];
  unk_1EB1EC0D8 = MEMORY[0x1E6981568];
  word_1EB1EC090 = 0;
  byte_1EB1EC092 = v8;
  result = 0.0;
  unk_1EB1EC098 = xmmword_1A5321AC0;
  qword_1EB1EC0A8 = v10;
  qword_1EB1EC0B0 = 0x4000000000000000;
  unk_1EB1EC0B8 = v11;
  return result;
}

__int16 *sub_1A493BB5C()
{
  if (qword_1EB1E0CB0 != -1)
  {
    swift_once();
  }

  return &word_1EB1EC090;
}

double sub_1A493BBAC()
{
  sub_1A3E75D84(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A524A274();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C52C70(0, &qword_1EB126910, off_1E771F6E8);
  v7 = [swift_getObjCClassFromMetadata() sharedInstance];
  v8 = [v7 showParticipantCountBadges];

  (*(v4 + 104))(v6, *MEMORY[0x1E6980F28], v3);
  v9 = sub_1A524A154();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  sub_1A524A164();
  v10 = sub_1A524A1C4();
  sub_1A4943CD4(v2, sub_1A3E75D84);
  (*(v4 + 8))(v6, v3);
  v11 = sub_1A524B434();
  qword_1EB1EC120 = MEMORY[0x1E69815C0];
  unk_1EB1EC128 = MEMORY[0x1E6981568];
  word_1EB1EC0E0 = 257;
  byte_1EB1EC0E2 = v8;
  result = 0.0;
  unk_1EB1EC0E8 = xmmword_1A5321AC0;
  qword_1EB1EC0F8 = v10;
  qword_1EB1EC100 = 0x4000000000000000;
  unk_1EB1EC108 = v11;
  return result;
}

__int16 *sub_1A493BDDC()
{
  if (qword_1EB1E0CB8 != -1)
  {
    swift_once();
  }

  return &word_1EB1EC0E0;
}

uint64_t sub_1A493BE50@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  v8 = type metadata accessor for LemonadeSharedAlbumsAvatarView(0);
  v9 = v8[5];
  *(a3 + v9) = swift_getKeyPath();
  sub_1A493D238(0, &qword_1EB1248A0, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCB8]);
  result = swift_storeEnumTagMultiPayload();
  *(a3 + v8[6]) = a4;
  *(a3 + v8[7]) = a1;
  if (*(a1 + 16))
  {
    v11 = (a3 + v8[8]);
    v12 = a2[3];
    v11[2] = a2[2];
    v11[3] = v12;
    v11[4] = a2[4];
    v13 = a2[1];
    *v11 = *a2;
    v11[1] = v13;
  }

  else
  {
    result = sub_1A524E6E4();
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for LemonadeSharedAlbumsAvatarView(uint64_t a1)
{
  result = qword_1EB1E0ED0;
  if (!qword_1EB1E0ED0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A493BFE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v102 = a2;
  sub_1A49435B0(0, &qword_1EB1454D0, sub_1A493D6A8, MEMORY[0x1E697E278]);
  v98 = *(v3 - 8);
  v99 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v84[2] = v84 - v4;
  sub_1A493D62C(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v101 = v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v100 = v84 - v8;
  v105 = sub_1A5241F84();
  v97 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v84[1] = v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v95 = v84 - v11;
  v103 = sub_1A52429A4();
  v12 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v14 = v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ShareParticipantImageConfiguration(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4942B7C(0, &qword_1EB145450, sub_1A493D168, &type metadata for ShareParticipantImageProvider, MEMORY[0x1E69C1ED0]);
  v19 = v18;
  v88 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = v84 - v21;
  sub_1A493D09C(0, v20);
  v86 = v23;
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = v84 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A493CFFC(0, v24);
  v85 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v29 = v84 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A493CFC8(0);
  v106 = v30;
  v31 = MEMORY[0x1EEE9AC00](v30);
  v107 = v84 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A493CF28(0, v31);
  v91 = *(v33 - 8);
  v92 = v33;
  MEMORY[0x1EEE9AC00](v33);
  v90 = v84 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A493CF00(0);
  v89 = v35;
  MEMORY[0x1EEE9AC00](v35);
  v104 = v84 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A493CED8(0);
  v93 = v37;
  MEMORY[0x1EEE9AC00](v37);
  v96 = v84 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v94 = v84 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v108 = v84 - v42;
  PXDisplayCollectionDetailedCountsMake();
  sub_1A493D97C(v17);
  (*(v12 + 104))(v14, *MEMORY[0x1E69C2050], v103);
  v43 = a1;
  sub_1A493D168();
  v87 = v22;
  sub_1A5242594();
  v103 = type metadata accessor for LemonadeSharedAlbumsAvatarView(0);
  v44 = a1 + *(v103 + 32);
  if (*v44 == 1)
  {
    v45 = *(v44 + 64);
    v84[0] = *(v44 + 72);
    v46 = __swift_project_boxed_opaque_existential_1((v44 + 40), v45);
    v47 = MEMORY[0x1EEE9AC00](v46);
    (*(v49 + 16))(v84 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0), v47);
  }

  else
  {
    *&v114 = sub_1A524B414();
  }

  v50 = sub_1A5248204();
  v51 = sub_1A524A064();
  (*(v88 + 32))(v26, v87, v19);
  v52 = &v26[*(v86 + 36)];
  *v52 = v50;
  v52[8] = v51;
  sub_1A4943944(v26, v29, sub_1A493D09C);
  *&v29[*(v85 + 36)] = 256;
  v53 = sub_1A524BC74();
  v55 = v54;
  sub_1A493DC28(v43, &v109);
  v117 = v111;
  v118 = v112;
  v115 = v109;
  v116 = v110;
  *&v119 = v113;
  *(&v119 + 1) = v53;
  v120 = v55;
  v56 = v29;
  v57 = v107;
  sub_1A4943944(v56, v107, sub_1A493CFFC);
  v58 = v57 + *(v106 + 36);
  v59 = v118;
  *(v58 + 32) = v117;
  *(v58 + 48) = v59;
  *(v58 + 64) = v119;
  *(v58 + 80) = v120;
  v60 = v116;
  *v58 = v115;
  *(v58 + 16) = v60;
  v121[2] = v111;
  v121[3] = v112;
  v121[0] = v109;
  v121[1] = v110;
  v122 = v113;
  v123 = v53;
  v124 = v55;
  sub_1A4943C6C(&v115, &v114, sub_1A493D1BC);
  sub_1A4943CD4(v121, sub_1A493D1BC);
  v61 = v97;
  v62 = v44;
  v63 = v95;
  if (*(v44 + 1) == 1)
  {
    sub_1A5241F64();
  }

  else
  {
    sub_1A5241F54();
  }

  v64 = v105;
  v65 = v103;
  sub_1A493D3D4();
  v66 = sub_1A3FA9580();
  v67 = v90;
  v106 = v66;
  v68 = v107;
  sub_1A524A504();
  (*(v61 + 8))(v63, v64);
  sub_1A4943CD4(v68, sub_1A493CFC8);
  sub_1A524BC74();
  sub_1A52481F4();
  v69 = v104;
  (*(v91 + 32))(v104, v67, v92);
  v70 = (v69 + *(v89 + 36));
  v71 = v126;
  *v70 = v125;
  v70[1] = v71;
  v70[2] = v127;
  sub_1A524BC74();
  sub_1A5248AD4();
  v72 = v94;
  sub_1A4943B3C(v69, v94, sub_1A493CF00);
  v73 = (v72 + *(v93 + 36));
  v74 = v133;
  v73[4] = v132;
  v73[5] = v74;
  v73[6] = v134;
  v75 = v129;
  *v73 = v128;
  v73[1] = v75;
  v76 = v131;
  v73[2] = v130;
  v73[3] = v76;
  sub_1A4943B3C(v72, v108, sub_1A493CED8);
  if ((*(v62 + 2) & 1) != 0 && *(*(v43 + *(v65 + 28)) + 16) != 1)
  {
    sub_1A5249574();
    sub_1A5249314();
    sub_1A493DDB8(v43, &v114);
  }

  v77 = v100;
  (*(v98 + 56))(v100, 1, 1, v99);
  v78 = v108;
  v79 = v96;
  sub_1A4943BA4(v108, v96, sub_1A493CED8);
  v80 = v101;
  sub_1A4943BA4(v77, v101, sub_1A493D62C);
  v81 = v102;
  sub_1A4943BA4(v79, v102, sub_1A493CED8);
  sub_1A4942A68(0, &qword_1EB145418, sub_1A493CED8, sub_1A493D62C);
  sub_1A4943BA4(v80, v81 + *(v82 + 48), sub_1A493D62C);
  sub_1A4943C0C(v77, sub_1A493D62C);
  sub_1A4943C0C(v78, sub_1A493CED8);
  sub_1A4943C0C(v80, sub_1A493D62C);
  return sub_1A4943C0C(v79, sub_1A493CED8);
}

void sub_1A493CE7C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1A4942A68(255, a3, a4, a5);
    v6 = sub_1A524BE24();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A493CF28(uint64_t a1, double a2)
{
  if (!qword_1EB145430)
  {
    sub_1A493CFC8(255);
    sub_1A493D3D4();
    sub_1A3FA9580();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB145430);
    }
  }
}

void sub_1A493CFFC(uint64_t a1, double a2)
{
  if (!qword_1EB145440)
  {
    sub_1A493D09C(255, a2);
    sub_1A4942B7C(255, &qword_1EB1289E0, sub_1A3FA9580, MEMORY[0x1E69817E8], MEMORY[0x1E697DDA0]);
    v2 = sub_1A5248804();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB145440);
    }
  }
}

void sub_1A493D09C(uint64_t a1, double a2)
{
  if (!qword_1EB145448)
  {
    sub_1A4942B7C(255, &qword_1EB145450, sub_1A493D168, &type metadata for ShareParticipantImageProvider, MEMORY[0x1E69C1ED0]);
    sub_1A4942478(255, &qword_1EB145460, MEMORY[0x1E697E0B8], MEMORY[0x1E697E0A8], MEMORY[0x1E6980460]);
    v2 = sub_1A5248804();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB145448);
    }
  }
}

unint64_t sub_1A493D168()
{
  result = qword_1EB145458;
  if (!qword_1EB145458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145458);
  }

  return result;
}

void sub_1A493D238(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A493D29C(uint64_t a1)
{
  if (!qword_1EB145478)
  {
    sub_1A3FA9580();
    v1 = sub_1A52488F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB145478);
    }
  }
}

unint64_t sub_1A493D32C()
{
  result = qword_1EB145480;
  if (!qword_1EB145480)
  {
    sub_1A493D204(255);
    sub_1A49436A8(&qword_1EB145488, sub_1A493D29C, MEMORY[0x1E697E8C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145480);
  }

  return result;
}

unint64_t sub_1A493D3D4()
{
  result = qword_1EB145490;
  if (!qword_1EB145490)
  {
    sub_1A493CFC8(255);
    sub_1A493D4C8(&qword_1EB145498, sub_1A493CFFC, sub_1A493D554, sub_1A40708E8);
    sub_1A49436A8(&qword_1EB1454C0, sub_1A493D1BC, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145490);
  }

  return result;
}

uint64_t sub_1A493D4C8(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A493D59C(double a1)
{
  result = qword_1EB1454A8;
  if (!qword_1EB1454A8)
  {
    sub_1A4942B7C(255, &qword_1EB145450, sub_1A493D168, &type metadata for ShareParticipantImageProvider, MEMORY[0x1E69C1ED0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1454A8);
  }

  return result;
}

void sub_1A493D62C(uint64_t a1)
{
  if (!qword_1EB1454C8)
  {
    sub_1A49435B0(255, &qword_1EB1454D0, sub_1A493D6A8, MEMORY[0x1E697E278]);
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1454C8);
    }
  }
}

void sub_1A493D6A8(uint64_t a1)
{
  if (!qword_1EB1454D8)
  {
    sub_1A493D778(255);
    sub_1A49436A8(&qword_1EB145510, sub_1A493D778, MEMORY[0x1E6981880]);
    sub_1A3FA9580();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1454D8);
    }
  }
}

void sub_1A493D778(uint64_t a1)
{
  if (!qword_1EB1454E0)
  {
    sub_1A493D80C(255);
    sub_1A49436A8(&qword_1EB145508, sub_1A493D80C, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B8B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1454E0);
    }
  }
}

void sub_1A493D840(uint64_t a1)
{
  if (!qword_1EB1454F0)
  {
    sub_1A47EB7C8(255);
    sub_1A493D8E8(255, &unk_1EB1454F8, sub_1A400F530, &qword_1EB127AD0, MEMORY[0x1E6980480]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB1454F0);
    }
  }
}

void sub_1A493D8E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A4942478(255, a4, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], a5);
    v8 = sub_1A5248804();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1A493D97C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5248714();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A5249234();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for LemonadeSharedAlbumsAvatarView(0);
  v12 = *(v1 + *(result + 28));
  if (*(v12 + 16))
  {
    v24 = v8;
    v25 = result;
    v13 = type metadata accessor for ShareParticipantImageConfiguration(0);
    sub_1A4943C6C(v12 + ((*(*(v13 - 8) + 80) + 32) & ~*(*(v13 - 8) + 80)), a1, type metadata accessor for ShareParticipantImageConfiguration);
    v14 = *v1;
    if (*(v1 + 8) == 1)
    {
      v15 = *v1;
    }

    else
    {

      v16 = sub_1A524D254();
      v23 = v7;
      v17 = v4;
      v18 = a1;
      v19 = v3;
      v20 = v16;
      v21 = sub_1A524A014();
      v22 = v20;
      v3 = v19;
      a1 = v18;
      v4 = v17;
      sub_1A5246DF4(v22, &dword_1A3C1C000, v21, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

      sub_1A5249224();
      swift_getAtKeyPath();
      sub_1A3DD15BC(v14, 0);
      (*(v24 + 8))(v10, v23);
      v15 = v26;
    }

    *(a1 + *(v13 + 36)) = v15;
    sub_1A401DA00(v6);
    return (*(v4 + 40))(a1 + *(v13 + 32), v6, v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A493DC28@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for LemonadeSharedAlbumsAvatarView(0);
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  result = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = a1 + *(v4 + 32);
  if (*v14 == 1)
  {
    v15 = __swift_project_boxed_opaque_existential_1((v14 + 40), *(v14 + 64));
    v16 = MEMORY[0x1EEE9AC00](v15);
    (*(v18 + 16))(v19 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v16);
    v9 = sub_1A5248204();
    sub_1A5247EE4();
    v5 = v19[1];
    v13 = v19[2];
    v6 = v19[3];
    v7 = v19[4];
    v8 = v19[5];
    result = sub_1A524BC74();
    v12 = 256;
  }

  *a2 = v5;
  a2[1] = v13;
  a2[2] = v6;
  a2[3] = v7;
  a2[4] = v8;
  a2[5] = v9;
  a2[6] = v12;
  a2[7] = result;
  a2[8] = v11;
  return result;
}

void sub_1A493DDB8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A5249424();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1A524B3D4();
  v6 = type metadata accessor for LemonadeSharedAlbumsAvatarView(0);
  sub_1A524BC74();
  sub_1A52481F4();
  *&v24[6] = v25;
  *&v24[22] = v26;
  *&v24[38] = v27;
  sub_1A5249414();
  sub_1A5249404();
  v29 = *(*(a1 + *(v6 + 28)) + 16);
  sub_1A52493B4();
  sub_1A5249404();
  sub_1A5249444();
  v7 = sub_1A524A444();
  v9 = v8;
  v11 = v10;
  v12 = sub_1A524A3C4();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_1A3E04DF4(v7, v9, v11 & 1);

  KeyPath = swift_getKeyPath();
  v20 = sub_1A524B434();
  *v28 = v5;
  *&v28[8] = 256;
  *&v28[10] = *v24;
  *&v28[26] = *&v24[16];
  *&v28[42] = *&v24[32];
  *&v28[56] = *(&v27 + 1);
  v21 = *v28;
  v22 = *&v28[16];
  v23 = *&v28[48];
  *(a2 + 32) = *&v28[32];
  *(a2 + 48) = v23;
  *a2 = v21;
  *(a2 + 16) = v22;
  *(a2 + 64) = v12;
  *(a2 + 72) = v14;
  *(a2 + 80) = v16 & 1;
  *(a2 + 88) = v18;
  *(a2 + 96) = KeyPath;
  *(a2 + 104) = 0x3FD3333333333333;
  *(a2 + 112) = v20;
  sub_1A4943C6C(v28, &v29, sub_1A47EB7C8);
  sub_1A3E75E68(v12, v14, v16 & 1);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A493E0F0@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1A5249594();
  v4 = sub_1A5249304();
  *a1 = v3;
  a1[1] = v4;
  sub_1A4943A48(0, &qword_1EB145408, sub_1A493CE40, MEMORY[0x1E697E330], MEMORY[0x1E697E320]);
  return sub_1A493BFE8(v1, a1 + *(v5 + 44));
}

uint64_t sub_1A493E16C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v5 = a4;
  if (*a1 != -1)
  {
    swift_once();
    v5 = a4;
  }

  return sub_1A4207508(a2, v5);
}

__n128 sub_1A493E1C4@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, __int128 *a4@<X4>, uint64_t a5@<X8>)
{
  v5 = *a4;
  *(a5 + 40) = a4[1];
  v6 = a4[3];
  *(a5 + 56) = a4[2];
  *(a5 + 72) = v6;
  result = a4[4];
  *(a5 + 88) = result;
  *(a5 + 16) = a3;
  *(a5 + 24) = v5;
  *a5 = a1;
  *(a5 + 8) = a2 & 1;
  return result;
}

__n128 sub_1A493E1F8@<Q0>(uint64_t a1@<X8>)
{
  sub_1A44B3B70(v1, &v10);
  v3 = swift_allocObject();
  v4 = v15;
  *(v3 + 80) = v14;
  *(v3 + 96) = v4;
  *(v3 + 112) = v16;
  v5 = v11;
  *(v3 + 16) = v10;
  *(v3 + 32) = v5;
  v6 = v13;
  *(v3 + 48) = v12;
  *(v3 + 64) = v6;
  sub_1A524BC74();
  sub_1A5248AD4();
  *a1 = sub_1A493E610;
  *(a1 + 8) = v3;
  v7 = v15;
  *(a1 + 80) = v14;
  *(a1 + 96) = v7;
  *(a1 + 112) = v16;
  v8 = v11;
  *(a1 + 16) = v10;
  *(a1 + 32) = v8;
  result = v13;
  *(a1 + 48) = v12;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1A493E37C(void x0_0, uint64_t a1)
{
  v3 = type metadata accessor for LemonadeSharedAlbumsAvatarView(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v21 - v7;
  sub_1A52482B4();
  v10 = v9;
  sub_1A52482B4();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = *a1;
  if (*(a1 + 8))
  {
    v13 = 1.79769313e308;
  }

  if (v13 >= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(a1 + 16);
  sub_1A4207508(a1 + 24, v21);
  *v5 = swift_getKeyPath();
  v5[8] = 0;
  v16 = v3[5];
  *&v5[v16] = swift_getKeyPath();
  sub_1A493D238(0, &qword_1EB1248A0, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  *&v5[v3[6]] = v14;
  *&v5[v3[7]] = v15;
  if (*(v15 + 16))
  {
    v17 = &v5[v3[8]];
    v18 = v21[3];
    *(v17 + 2) = v21[2];
    *(v17 + 3) = v18;
    *(v17 + 4) = v21[4];
    v19 = v21[1];
    *v17 = v21[0];
    *(v17 + 1) = v19;
    sub_1A4943944(v5, v8, type metadata accessor for LemonadeSharedAlbumsAvatarView);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

uint64_t sub_1A493E61C@<X0>(uint64_t a1@<X8>)
{
  v181[6] = a1;
  sub_1A4942D78(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v181[4] = v181 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v220 = v181 - v4;
  sub_1A4942BE4(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v181[5] = v181 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v221 = v181 - v9;
  sub_1A4942AE4(0, v8);
  v189 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v191 = v181 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v190 = v181 - v13;
  sub_1A4942904(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v192 = v181 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v223 = v181 - v17;
  sub_1A49427C0(0);
  v209 = v18;
  v222 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v181[1] = v181 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v187 = v181 - v21;
  sub_1A4942798(0);
  v231 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v181[0] = v181 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v188 = v181 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v184 = v181 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v186 = v181 - v29;
  sub_1A49426D0(0);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v185 = v181 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v208 = v181 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v207 = v181 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v206 = v181 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v212 = v181 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v213 = v181 - v41;
  sub_1A4942588(0);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v210 = v181 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v211 = v181 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v228 = v181 - v47;
  sub_1A49424CC(0);
  MEMORY[0x1EEE9AC00](v48 - 8);
  v181[3] = v181 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v224 = v181 - v51;
  v230 = type metadata accessor for LemonadeSharedAlbumsAvatarView(0);
  MEMORY[0x1EEE9AC00](v230);
  v199 = v181 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  *&v216 = v181 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v218 = v181 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v200 = v181 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v215 = v181 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v198 = (v181 - v62);
  MEMORY[0x1EEE9AC00](v63);
  v214 = v181 - v64;
  sub_1A4942238(0);
  v217 = v65;
  MEMORY[0x1EEE9AC00](v65);
  v202 = v181 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v67);
  v201 = v181 - v68;
  MEMORY[0x1EEE9AC00](v69);
  v225 = v181 - v70;
  MEMORY[0x1EEE9AC00](v71);
  v219 = (v181 - v72);
  sub_1A4942150(0);
  MEMORY[0x1EEE9AC00](v73 - 8);
  v203 = v181 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v75);
  v229 = (v181 - v76);
  sub_1A4942020(0);
  MEMORY[0x1EEE9AC00](v77 - 8);
  v181[2] = v181 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v79);
  v227 = (v181 - v80);
  v81 = sub_1A5248714();
  v196 = *(v81 - 8);
  v197 = v81;
  MEMORY[0x1EEE9AC00](v81);
  v195 = v181 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A493D238(0, &qword_1EB145710, sub_1A4943744, MEMORY[0x1E69E6F90]);
  v83 = swift_allocObject();
  v84 = objc_opt_self();
  v85 = [v84 redColor];
  v83[4] = v85;
  v193 = v83 + 4;
  isEscapingClosureAtFileLocation = [v84 greenColor];
  v83[5] = isEscapingClosureAtFileLocation;
  v87 = [v84 blueColor];
  v83[6] = v87;
  v232 = [v84 cyanColor];
  v83[7] = v232;
  v226 = [v84 orangeColor];
  v83[8] = v226;
  v205 = [v84 purpleColor];
  v83[9] = v205;
  v88 = [v84 magentaColor];
  v194 = v83;
  v204 = v88;
  v83[10] = v88;
  v237[0] = MEMORY[0x1E69E7CC0];
  sub_1A524E554();
  v233[2] = v85;
  v89 = objc_allocWithZone(off_1E77218F8);
  v90 = swift_allocObject();
  *(v90 + 16) = sub_1A49437AC;
  *(v90 + 24) = v233;
  v242 = sub_1A3D78DD0;
  v243 = v90;
  v238 = MEMORY[0x1E69E9820];
  v239 = 1107296256;
  v240 = sub_1A3D77CC4;
  v241 = &block_descriptor_306;
  v91 = _Block_copy(&v238);
  v92 = v85;

  v93 = [v89 initWithConfiguration_];
  _Block_release(v91);

  LOBYTE(v91) = swift_isEscapingClosureAtFileLocation();

  if (v91)
  {
    __break(1u);
    goto LABEL_14;
  }

  sub_1A524E514();
  sub_1A524E564();
  sub_1A524E574();
  v94 = sub_1A524E524();
  MEMORY[0x1EEE9AC00](v94);
  v179 = isEscapingClosureAtFileLocation;
  v95 = objc_allocWithZone(off_1E77218F8);
  v96 = swift_allocObject();
  *(v96 + 16) = sub_1A4943D34;
  *(v96 + 24) = &v178;
  v242 = sub_1A3D7B4F8;
  v243 = v96;
  v238 = MEMORY[0x1E69E9820];
  v239 = 1107296256;
  v240 = sub_1A3D77CC4;
  v241 = &block_descriptor_32_5;
  v97 = _Block_copy(&v238);
  v93 = isEscapingClosureAtFileLocation;

  isEscapingClosureAtFileLocation = [v95 initWithConfiguration_];
  _Block_release(v97);

  LOBYTE(v95) = swift_isEscapingClosureAtFileLocation();

  if (v95)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_1A524E514();
  sub_1A524E564();
  sub_1A524E574();
  v98 = sub_1A524E524();
  MEMORY[0x1EEE9AC00](v98);
  v179 = v87;
  v99 = objc_allocWithZone(off_1E77218F8);
  v100 = swift_allocObject();
  *(v100 + 16) = sub_1A4943D34;
  *(v100 + 24) = &v178;
  v242 = sub_1A3D7B4F8;
  v243 = v100;
  v238 = MEMORY[0x1E69E9820];
  v239 = 1107296256;
  v240 = sub_1A3D77CC4;
  v241 = &block_descriptor_40_4;
  v101 = _Block_copy(&v238);
  v93 = v87;

  isEscapingClosureAtFileLocation = [v99 initWithConfiguration_];
  _Block_release(v101);

  LOBYTE(v99) = swift_isEscapingClosureAtFileLocation();

  if (v99)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_1A524E514();
  sub_1A524E564();
  sub_1A524E574();
  v102 = sub_1A524E524();
  MEMORY[0x1EEE9AC00](v102);
  v103 = v232;
  v179 = v232;
  v104 = objc_allocWithZone(off_1E77218F8);
  v105 = swift_allocObject();
  *(v105 + 16) = sub_1A4943D34;
  *(v105 + 24) = &v178;
  v242 = sub_1A3D7B4F8;
  v243 = v105;
  v238 = MEMORY[0x1E69E9820];
  v239 = 1107296256;
  v240 = sub_1A3D77CC4;
  v241 = &block_descriptor_48_2;
  v106 = _Block_copy(&v238);
  v107 = v103;

  [v104 initWithConfiguration_];
  _Block_release(v106);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1A524E514();
  sub_1A524E564();
  sub_1A524E574();
  v108 = sub_1A524E524();
  MEMORY[0x1EEE9AC00](v108);
  v109 = v226;
  v179 = v226;
  v110 = objc_allocWithZone(off_1E77218F8);
  v111 = swift_allocObject();
  *(v111 + 16) = sub_1A4943D34;
  *(v111 + 24) = &v178;
  v242 = sub_1A3D7B4F8;
  v243 = v111;
  v238 = MEMORY[0x1E69E9820];
  v239 = 1107296256;
  v93 = &v240;
  v240 = sub_1A3D77CC4;
  v241 = &block_descriptor_56_3;
  v112 = _Block_copy(&v238);
  v113 = v109;

  [v110 initWithConfiguration_];
  _Block_release(v112);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1A524E514();
  sub_1A524E564();
  sub_1A524E574();
  v114 = sub_1A524E524();
  MEMORY[0x1EEE9AC00](v114);
  v115 = v205;
  v179 = v205;
  v116 = objc_allocWithZone(off_1E77218F8);
  v117 = swift_allocObject();
  *(v117 + 16) = sub_1A4943D34;
  *(v117 + 24) = &v178;
  v242 = sub_1A3D7B4F8;
  v243 = v117;
  v238 = MEMORY[0x1E69E9820];
  v239 = 1107296256;
  v240 = sub_1A3D77CC4;
  v241 = &block_descriptor_64_6;
  v118 = _Block_copy(&v238);
  v119 = v115;

  [v116 initWithConfiguration_];
  _Block_release(v118);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_1A524E514();
  sub_1A524E564();
  sub_1A524E574();
  v120 = sub_1A524E524();
  MEMORY[0x1EEE9AC00](v120);
  v121 = v204;
  v179 = v204;
  v122 = objc_allocWithZone(off_1E77218F8);
  v123 = swift_allocObject();
  *(v123 + 16) = sub_1A4943D34;
  *(v123 + 24) = &v178;
  v242 = sub_1A3D7B4F8;
  v243 = v123;
  v238 = MEMORY[0x1E69E9820];
  v239 = 1107296256;
  v240 = sub_1A3D77CC4;
  v241 = &block_descriptor_72_1;
  v124 = _Block_copy(&v238);
  v125 = v121;

  [v122 initWithConfiguration_];
  _Block_release(v124);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    sub_1A524E514();
    sub_1A524E564();
    sub_1A524E574();
    sub_1A524E524();
    swift_setDeallocating();
    sub_1A4943744(0);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    isEscapingClosureAtFileLocation = v237[0];
    sub_1A493D238(0, &qword_1EB13B1F0, type metadata accessor for ShareParticipantImageConfiguration, MEMORY[0x1E69E6F90]);
    v126 = *(type metadata accessor for ShareParticipantImageConfiguration(0) - 8);
    v127 = *(v126 + 72);
    v128 = (*(v126 + 80) + 32) & ~*(v126 + 80);
    v93 = swift_allocObject();
    *(v93 + 1) = xmmword_1A52FC9F0;
    v129 = v93 + v128;
    v130 = *MEMORY[0x1E697E7D0];
    v131 = v195;
    v132 = *(v196 + 104);
    v133 = v197;
    v132(v195, v130, v197);
    sub_1A481E150(0, 0, 0, 0, 0x796E6E686F4ALL, 0xE600000000000000, 0x656573656C707041, 0xE900000000000064, v129, 2.0, v131);
    v132(v131, v130, v133);
    sub_1A481E150(0, 0, 0, 0, 1634627137, 0xE400000000000000, 1869766984, 0xE400000000000000, &v129[v127], 2.0, v131);
    if (qword_1EB1E0CA0 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  __break(1u);
LABEL_20:
  swift_once();
LABEL_9:
  sub_1A4207508(&word_1EB1EBFF0, &v238);
  sub_1A4207508(&word_1EB1EBFF0, v237);
  LOWORD(v237[0]) = 257;
  v134 = v215;
  if (qword_1EB1E0CB0 != -1)
  {
    swift_once();
  }

  v226 = isEscapingClosureAtFileLocation;
  sub_1A4207508(&word_1EB1EC090, v236);
  sub_1A4207508(&word_1EB1EC090, v235);
  v235[0] = 257;
  v135 = sub_1A5249574();
  v136 = v227;
  *v227 = v135;
  v136[1] = 0;
  *(v136 + 16) = 1;
  sub_1A5249434();
  LOWORD(v180) = 256;
  v179 = 0;
  v137 = sub_1A524A444();
  v139 = v138;
  v141 = v140;
  sub_1A524A264();
  v204 = sub_1A524A3C4();
  v205 = v142;
  v197 = v143;
  LODWORD(v196) = v144;

  sub_1A3E04DF4(v137, v139, v141 & 1);

  v145 = sub_1A5249314();
  v146 = v229;
  *v229 = v145;
  v146[1] = 0x4020000000000000;
  *(v146 + 16) = 0;
  v147 = sub_1A5249574();
  v148 = v219;
  *v219 = v147;
  v148[1] = 0;
  *(v148 + 16) = 1;
  sub_1A4207508(&v238, v234);
  KeyPath = swift_getKeyPath();
  v150 = v198;
  *v198 = KeyPath;
  *(v150 + 8) = 0;
  v151 = v230;
  v152 = *(v230 + 20);
  *(v150 + v152) = swift_getKeyPath();
  sub_1A493D238(0, &qword_1EB1248A0, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCB8]);
  v154 = v153;
  swift_storeEnumTagMultiPayload();
  *(v150 + v151[6]) = 0x4046000000000000;
  *(v150 + v151[7]) = v93;
  if (v93[2])
  {
    sub_1A4943A48(0, &qword_1EB145790, sub_1A49423D8, MEMORY[0x1E697E300], MEMORY[0x1E697E2F8]);
    v156 = *(v155 + 44);
    v157 = (v150 + v151[8]);
    v158 = v234[1];
    v159 = v234[3];
    v160 = v234[4];
    v157[2] = v234[2];
    v157[3] = v159;
    v193 = (v148 + v156);
    v194 = v155;
    v157[4] = v160;
    *v157 = v234[0];
    v157[1] = v158;
    v161 = v150;
    v162 = v214;
    sub_1A4943944(v161, v214, type metadata accessor for LemonadeSharedAlbumsAvatarView);
    sub_1A4207508(v236, v134 + v151[8]);
    *v134 = swift_getKeyPath();
    *(v134 + 8) = 0;
    v163 = v151[5];
    *(v134 + v163) = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    *(v134 + v151[6]) = 0x404E000000000000;
    *(v134 + v151[7]) = v93;
    swift_bridgeObjectRetain_n();
    sub_1A5249434();
    LOWORD(v180) = 256;
    v179 = 0;
    v164 = sub_1A524A444();
    v232 = v93;
    v165 = v164;
    v167 = v166;
    v182 = v168;
    v198 = v154;
    v183 = v169;
    v170 = v200;
    sub_1A4943C6C(v162, v200, type metadata accessor for LemonadeSharedAlbumsAvatarView);
    v171 = v218;
    sub_1A4943C6C(v134, v218, type metadata accessor for LemonadeSharedAlbumsAvatarView);
    v172 = v193;
    sub_1A4943C6C(v170, v193, type metadata accessor for LemonadeSharedAlbumsAvatarView);
    sub_1A494240C(0);
    v174 = v173;
    sub_1A4943C6C(v171, v172 + *(v173 + 12), type metadata accessor for LemonadeSharedAlbumsAvatarView);
    v195 = v174;
    v175 = v172 + *(v174 + 16);
    *v175 = v165;
    *(v175 + 8) = v167;
    v176 = v182;
    *(v175 + 16) = v182 & 1;
    *(v175 + 24) = v183;
    sub_1A3E75E68(v165, v167, v176 & 1);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v180 = 0;
  v179 = 43;
  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

void sub_1A4941F98(uint64_t a1, double a2)
{
  if (!qword_1EB145528)
  {
    sub_1A4942020(255);
    sub_1A49424CC(255);
    sub_1A4942BE4(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB145528);
    }
  }
}

void sub_1A4942020(uint64_t a1)
{
  if (!qword_1EB145530)
  {
    sub_1A49420B4(255);
    sub_1A49436A8(&qword_1EB1455A8, sub_1A49420B4, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB145530);
    }
  }
}

void sub_1A49420E8(uint64_t a1, double a2)
{
  if (!qword_1EB145540)
  {
    sub_1A4942150(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB145540);
    }
  }
}

void sub_1A4942150(uint64_t a1)
{
  if (!qword_1EB145548)
  {
    sub_1A49421E4(255);
    sub_1A49436A8(&qword_1EB1455A0, sub_1A49421E4, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB145548);
    }
  }
}

void sub_1A494226C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
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

void sub_1A4942344(uint64_t a1)
{
  if (!qword_1EB145578)
  {
    sub_1A49423D8(255);
    sub_1A49436A8(&unk_1EB145590, sub_1A49423D8, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB145578);
    }
  }
}

void sub_1A494240C(uint64_t a1)
{
  if (!qword_1EB145588)
  {
    type metadata accessor for LemonadeSharedAlbumsAvatarView(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB145588);
    }
  }
}

void sub_1A4942478(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void sub_1A49424CC(uint64_t a1)
{
  if (!qword_1EB1455B0)
  {
    sub_1A4942560(255);
    sub_1A49436A8(&qword_1EB145660, sub_1A4942560, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1455B0);
    }
  }
}

void sub_1A4942588(uint64_t a1)
{
  if (!qword_1EB1455C8)
  {
    sub_1A494261C(255);
    sub_1A49436A8(&qword_1EB145610, sub_1A494261C, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1455C8);
    }
  }
}

void sub_1A4942670(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A4942718(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1A49427C0(uint64_t a1)
{
  if (!qword_1EB1455F0)
  {
    type metadata accessor for LemonadeSharedAlbumsAvatarView(255);
    sub_1A49436A8(&qword_1EB134E00, type metadata accessor for LemonadeSharedAlbumsAvatarView, &unk_1A5374E30);
    v1 = sub_1A5242D24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1455F0);
    }
  }
}

unint64_t sub_1A4942854()
{
  result = qword_1EB145600;
  if (!qword_1EB145600)
  {
    sub_1A4942798(255);
    sub_1A49436A8(&qword_1EB145608, sub_1A49427C0, MEMORY[0x1E69C2230]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145600);
  }

  return result;
}

void sub_1A4942904(uint64_t a1)
{
  if (!qword_1EB145618)
  {
    sub_1A4942998(255);
    sub_1A49436A8(&qword_1EB145658, sub_1A4942998, MEMORY[0x1E6981870]);
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB145618);
    }
  }
}

void sub_1A4942998(uint64_t a1)
{
  if (!qword_1EB145620)
  {
    sub_1A4942A2C(255);
    sub_1A49436A8(&qword_1EB145650, sub_1A4942A2C, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB145620);
    }
  }
}

void sub_1A4942A68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
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

void sub_1A4942AE4(uint64_t a1, double a2)
{
  if (!qword_1EB145638)
  {
    sub_1A4942B7C(255, &unk_1EB145640, sub_1A44B3B1C, &type metadata for LemonadeSharedAlbumsExpandingAvatarView, MEMORY[0x1E69C2228]);
    v2 = sub_1A5248804();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB145638);
    }
  }
}

void sub_1A4942B7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1A4942BE4(uint64_t a1)
{
  if (!qword_1EB145668)
  {
    sub_1A4942C78(255);
    sub_1A49436A8(&qword_1EB145690, sub_1A4942C78, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB145668);
    }
  }
}

void sub_1A4942CA0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1A4942CF8(255, a3, a4);
    v5 = sub_1A524BE24();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A4942CF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_1A4942588(255);
    a3(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

void sub_1A4942D78(uint64_t a1)
{
  if (!qword_1EB145680)
  {
    sub_1A49426D0(255);
    sub_1A49436A8(&qword_1EB145688, sub_1A49426D0, MEMORY[0x1E6981870]);
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB145680);
    }
  }
}

void sub_1A4942E0C(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v12 = type metadata accessor for LemonadeSharedAlbumsAvatarView(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v15 = a3;
  }

  else
  {
    v15 = a4;
  }

  sub_1A4207508(v15, v20);
  *v14 = swift_getKeyPath();
  v14[8] = 0;
  v16 = v12[5];
  *&v14[v16] = swift_getKeyPath();
  sub_1A493D238(0, &qword_1EB1248A0, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  *&v14[v12[6]] = a6;
  *&v14[v12[7]] = a2;
  if (*(a2 + 16))
  {
    v17 = &v14[v12[8]];
    v18 = v20[3];
    *(v17 + 2) = v20[2];
    *(v17 + 3) = v18;
    *(v17 + 4) = v20[4];
    v19 = v20[1];
    *v17 = v20[0];
    *(v17 + 1) = v19;
    sub_1A4943944(v14, a5, type metadata accessor for LemonadeSharedAlbumsAvatarView);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A524E6E4();
  __break(1u);
}

unint64_t sub_1A4943024()
{
  result = qword_1EB145698;
  if (!qword_1EB145698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145698);
  }

  return result;
}

uint64_t sub_1A4943094@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1A5249574();
  *(a1 + 8) = 0x4038000000000000;
  *(a1 + 16) = 0;
  sub_1A4943A48(0, &qword_1EB145518, sub_1A4941F64, MEMORY[0x1E697E300], MEMORY[0x1E697E2F8]);
  return sub_1A493E61C(a1 + *(v3 + 44));
}

uint64_t sub_1A4943104(uint64_t a1)
{
  v2 = sub_1A49436F0();

  return MEMORY[0x1EEDD9FE8](a1, v2);
}

uint64_t sub_1A4943150(uint64_t a1)
{
  v2 = sub_1A49436F0();

  return MEMORY[0x1EEDD9FE0](a1, v2);
}

void sub_1A49431D4(uint64_t a1)
{
  sub_1A49437BC(319, &qword_1EB124830, MEMORY[0x1E69E7DE0], MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_1A493D238(319, &qword_1EB124710, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      sub_1A493D238(319, &qword_1EB135B58, type metadata accessor for ShareParticipantImageConfiguration, MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1A4943300(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_1A4943348(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1A49433C0(uint64_t a1)
{
  if (!qword_1EB1456B0)
  {
    sub_1A493CE40(255);
    sub_1A49436A8(&qword_1EB1456B8, sub_1A493CE40, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B8B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1456B0);
    }
  }
}

unint64_t sub_1A4943454()
{
  result = qword_1EB1456C0;
  if (!qword_1EB1456C0)
  {
    sub_1A49435B0(255, &qword_1EB1456C8, sub_1A4943528, MEMORY[0x1E697EC00]);
    sub_1A49436A8(&qword_1EB1456E8, sub_1A4943528, MEMORY[0x1E697E378]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1456C0);
  }

  return result;
}

void sub_1A4943528(uint64_t a1)
{
  if (!qword_1EB1456D0)
  {
    sub_1A49435B0(255, &qword_1EB1355C0, type metadata accessor for LemonadeSharedAlbumsAvatarView, MEMORY[0x1E697E278]);
    sub_1A4205ACC();
    v1 = sub_1A5248414();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1456D0);
    }
  }
}

void sub_1A49435B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_1A5248804();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A4943614(uint64_t a1)
{
  if (!qword_1EB1456F8)
  {
    sub_1A4941F64(255);
    sub_1A49436A8(&qword_1EB145700, sub_1A4941F64, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1456F8);
    }
  }
}

uint64_t sub_1A49436A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A49436F0()
{
  result = qword_1EB145708;
  if (!qword_1EB145708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145708);
  }

  return result;
}

void sub_1A4943744(uint64_t a1)
{
  if (!qword_1EB145718)
  {
    sub_1A3C52C70(255, &qword_1EB1205C0, 0x1E69DC888);
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB145718);
    }
  }
}

void sub_1A49437BC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A494380C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
        sub_1A3C52C70(0, &qword_1EB13D178, &off_1E77218F8);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_1A49437BC(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
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

uint64_t sub_1A4943944(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A49439AC(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = 112;
  if (a1)
  {
    v6 = 32;
  }

  sub_1A4207508(v2 + v6, v9);
  v10 = 0;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  v7 = v9[0];
  *(a2 + 40) = v9[1];
  v8 = v9[3];
  *(a2 + 56) = v9[2];
  *(a2 + 72) = v8;
  *(a2 + 88) = v9[4];
  *(a2 + 24) = v7;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4943A48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
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

uint64_t objectdestroy_74Tm_0()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 72));

  __swift_destroy_boxed_opaque_existential_0((v0 + 152));

  return swift_deallocObject();
}

uint64_t sub_1A4943B3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4943BA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4943C0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A4943C6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4943CD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_1A4943D64()
{
  v1 = [v0 presentingViewController];
  v2 = [v1 view];

  if (v2)
  {
    [v2 px_screenScale];
    v4 = v3;

    return v4;
  }

  else
  {
    v6 = sub_1A524D244();
    v7 = *sub_1A3CAA3FC();
    sub_1A5246DF4(v6, &dword_1A3C1C000, v7, "People model: using physical screen scale because displayScale is nil", 69, 2, MEMORY[0x1E69E7CC0]);

    PLPhysicalScreenScale();
  }

  return result;
}

uint64_t sub_1A4943E48@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  sub_1A5248464();
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  swift_getOpaqueTypeMetadata2();
  v21 = v5;
  v22 = v6;
  swift_getOpaqueTypeConformance2();
  sub_1A5247D04();
  swift_getWitnessTable();
  v7 = sub_1A5248834();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17[-v12];
  v18 = v5;
  v19 = v6;
  v20 = v2;
  sub_1A5248824();
  swift_getWitnessTable();
  v14 = *(v8 + 16);
  v14(v13, v10, v7);
  v15 = *(v8 + 8);
  v15(v10, v7);
  v14(a2, v13, v7);
  return (v15)(v13, v7);
}

uint64_t sub_1A4944070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  swift_getOpaqueTypeMetadata2();
  v22 = a2;
  v23 = a3;
  swift_getOpaqueTypeConformance2();
  v8 = sub_1A5247D04();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v18[-v13];
  v19 = a2;
  v20 = a3;
  v21 = a1;
  sub_1A524A044();
  sub_1A5247D14();
  swift_getWitnessTable();
  v15 = *(v9 + 16);
  v15(v14, v11, v8);
  v16 = *(v9 + 8);
  v16(v11, v8);
  v15(a4, v14, v8);
  return (v16)(v14, v8);
}

uint64_t sub_1A4944270@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v14[0] = a1;
  v14[1] = a2;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v5 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v14 - v9;
  sub_1A524A024();
  sub_1A524BC74();
  sub_1A524AE64();
  v11 = *(v5 + 16);
  v11(v10, v7, OpaqueTypeMetadata2);
  v12 = *(v5 + 8);
  v12(v7, OpaqueTypeMetadata2);
  v11(a3, v10, OpaqueTypeMetadata2);
  return (v12)(v10, OpaqueTypeMetadata2);
}

uint64_t sub_1A4944418@<X0>(uint64_t *a1@<X8>)
{
  sub_1A4944708(0);
  a1[3] = v2;
  a1[4] = sub_1A4944918(&qword_1EB145810, sub_1A4944708, &unk_1A5375090);
  __swift_allocate_boxed_opaque_existential_1(a1);
  swift_getKeyPath();
  sub_1A3D868AC();
  sub_1A4944804();
  sub_1A3DE77C8();
  sub_1A4944918(&qword_1EB145808, sub_1A4944804, MEMORY[0x1E697C090]);
  return sub_1A524B9B4();
}

uint64_t sub_1A4944550(uint64_t *a1, __n128 a2)
{
  v2 = sub_1A524EA44();
  MEMORY[0x1A5907B60](v2);

  return sub_1A5248444();
}

void sub_1A4944708(uint64_t a1)
{
  if (!qword_1EB1457E8)
  {
    sub_1A494476C(255);
    v3 = v2;
    v4 = sub_1A4944870();
    v6 = type metadata accessor for ProtoRootScrollView(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EB1457E8);
    }
  }
}

void sub_1A494476C(uint64_t a1)
{
  if (!qword_1EB1457F0)
  {
    sub_1A3D868AC();
    sub_1A4944804();
    sub_1A3DE77C8();
    v1 = sub_1A524B9D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1457F0);
    }
  }
}

void sub_1A4944804()
{
  if (!qword_1EB1457F8)
  {
    v0 = sub_1A5248454();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1457F8);
    }
  }
}

unint64_t sub_1A4944870()
{
  result = qword_1EB145800;
  if (!qword_1EB145800)
  {
    sub_1A494476C(255);
    sub_1A4944918(&qword_1EB145808, sub_1A4944804, MEMORY[0x1E697C090]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145800);
  }

  return result;
}

uint64_t sub_1A4944918(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A4944960(uint64_t a1@<X8>)
{
  v3 = sub_1A524EA44();
  MEMORY[0x1A5907B60](v3);

  *a1 = 0x23206D657449;
  *(a1 + 8) = 0xE600000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
}

char *sub_1A49449FC(void *a1, void *a2, void *a3)
{
  v4 = v3;
  sub_1A4944CB4(0, &qword_1EB128B08, sub_1A418478C, MEMORY[0x1E695C070]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v16 - v11;
  v13 = objc_allocWithZone(v4);
  v14 = OBJC_IVAR____TtC12PhotosUICore42PhotosDetailsKnowledgeGraphWidgetViewModel__visualLookupData;
  v16[1] = 0;
  sub_1A418478C(0);
  sub_1A52479A4();
  (*(v10 + 32))(&v13[v14], v12, v9);
  return sub_1A4467460(a1, a2, a3);
}

uint64_t sub_1A4944B4C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  return v1;
}

void sub_1A4944BC0(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  *a2 = v3;
}

uint64_t sub_1A4944C40(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return sub_1A52479F4();
}

void sub_1A4944CB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A4944D6C()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore42PhotosDetailsKnowledgeGraphWidgetViewModel__visualLookupData;
  sub_1A4944CB4(0, &qword_1EB128B08, sub_1A418478C, MEMORY[0x1E695C070]);
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t type metadata accessor for PhotosDetailsKnowledgeGraphWidgetViewModel(uint64_t a1)
{
  result = qword_1EB171100;
  if (!qword_1EB171100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A4944EF4(uint64_t a1)
{
  sub_1A4944CB4(319, &qword_1EB128B08, sub_1A418478C, MEMORY[0x1E695C070]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

__n128 sub_1A4944FB4@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v45 = a1;
  v46 = a2;
  v44 = sub_1A524A204();
  v2 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v4 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4945CC0(0, &unk_1EB1276B0, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v43 - v6;
  v8 = sub_1A524A274();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4947068(0, v10);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4947040(0);
  v18 = v17 - 8;
  MEMORY[0x1EEE9AC00](v17);
  v43 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5249BD4();
  (*(v9 + 104))(v12, *MEMORY[0x1E6980EF8], v8);
  v20 = sub_1A524A154();
  (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
  sub_1A524A1C4();
  sub_1A441183C(v7);
  (*(v9 + 8))(v12, v8);
  v21 = v44;
  (*(v2 + 104))(v4, *MEMORY[0x1E6980EA8], v44);
  v22 = sub_1A524A234();

  (*(v2 + 8))(v4, v21);
  KeyPath = swift_getKeyPath();
  sub_1A4946F2C(0, v24);
  v26 = &v16[*(v25 + 36)];
  *v26 = KeyPath;
  v26[1] = v22;
  v27 = swift_getKeyPath();
  sub_1A49470E8(0, v28);
  v30 = &v16[*(v29 + 36)];
  *v30 = v27;
  v30[8] = 0;
  v31 = swift_getKeyPath();
  v32 = &v16[*(v14 + 44)];
  *v32 = v31;
  *(v32 + 1) = 3;
  v32[16] = 0;
  v33 = qword_1A53757D0[v45];
  v34 = qword_1A53757F0[v45];
  LOBYTE(v27) = sub_1A524A064();
  v35 = v43;
  sub_1A49497F4(v16, v43, sub_1A4947068);
  v36 = v35 + *(v18 + 44);
  *v36 = v27;
  *(v36 + 8) = v33;
  *(v36 + 16) = v34;
  *(v36 + 24) = v33;
  *(v36 + 32) = v34;
  *(v36 + 40) = 0;
  sub_1A524BC74();
  sub_1A5248AD4();
  v37 = v46;
  sub_1A49497F4(v35, v46, sub_1A4947040);
  sub_1A4947018(0);
  v39 = v37 + *(v38 + 36);
  v40 = v52;
  *(v39 + 64) = v51;
  *(v39 + 80) = v40;
  *(v39 + 96) = v53;
  v41 = v48;
  *v39 = v47;
  *(v39 + 16) = v41;
  result = v50;
  *(v39 + 32) = v49;
  *(v39 + 48) = result;
  return result;
}

double sub_1A4945474@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v56 = a1;
  v57 = a2;
  v2 = sub_1A5242D14();
  v54 = *(v2 - 8);
  v55 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v53 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A524A204();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4945CC0(0, &unk_1EB1276B0, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v52 - v9;
  v11 = sub_1A524A274();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4946E5C(0);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5249BD4();
  (*(v12 + 104))(v14, *MEMORY[0x1E6980EF8], v11);
  v19 = sub_1A524A154();
  (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
  sub_1A524A1C4();
  sub_1A441183C(v10);
  (*(v12 + 8))(v14, v11);
  (*(v5 + 104))(v7, *MEMORY[0x1E6980EA8], v4);
  v20 = sub_1A524A234();

  (*(v5 + 8))(v7, v4);
  KeyPath = swift_getKeyPath();
  sub_1A4946F2C(0, v22);
  v24 = &v18[*(v23 + 36)];
  *v24 = KeyPath;
  v24[1] = v20;
  v25 = swift_getKeyPath();
  sub_1A4946EAC(0, v26);
  v28 = &v18[*(v27 + 36)];
  *v28 = v25;
  *(v28 + 1) = 1;
  v28[16] = 0;
  LOBYTE(v25) = sub_1A524A054();
  sub_1A5247BC4();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  sub_1A4946E84(0);
  v38 = &v18[*(v37 + 36)];
  *v38 = v25;
  *(v38 + 1) = v30;
  *(v38 + 2) = v32;
  *(v38 + 3) = v34;
  *(v38 + 4) = v36;
  v38[40] = 0;
  LOBYTE(v25) = sub_1A524A0C4();
  sub_1A5247BC4();
  v39 = &v18[*(v16 + 44)];
  *v39 = v25;
  *(v39 + 1) = v40;
  *(v39 + 2) = v41;
  *(v39 + 3) = v42;
  *(v39 + 4) = v43;
  v39[40] = 0;
  v45 = v53;
  v44 = v54;
  v46 = v55;
  (*(v54 + 104))(v53, *MEMORY[0x1E69C2200], v55);
  sub_1A5242D04();
  (*(v44 + 8))(v45, v46);
  sub_1A524BC74();
  sub_1A52481F4();
  v47 = v57;
  sub_1A49497F4(v18, v57, sub_1A4946E5C);
  sub_1A4946E34(0);
  v49 = (v47 + *(v48 + 36));
  v50 = v59;
  *v49 = v58;
  v49[1] = v50;
  result = *&v60;
  v49[2] = v60;
  return result;
}

uint64_t sub_1A4945980()
{
  sub_1A49459BC();
  sub_1A5249244();
  return v1;
}

unint64_t sub_1A49459BC()
{
  result = qword_1EB15C798[0];
  if (!qword_1EB15C798[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB15C798);
  }

  return result;
}

uint64_t sub_1A4945A4C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E697DBD0];
  sub_1A4945CC0(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  v11 = type metadata accessor for GenerativeStoryCommonButtonStyle(0);
  sub_1A49499A8(v1 + *(v11 + 24), v10, &qword_1EB128A70, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1A5247E04();
    return (*(*(v12 - 8) + 32))(a1, v10, v12);
  }

  else
  {
    v14 = sub_1A524D254();
    v15 = sub_1A524A014();
    sub_1A5246DF4(v14, &dword_1A3C1C000, v15, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

void sub_1A4945CC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A4945D24(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v4 = sub_1A5249234();
  v56 = *(v4 - 8);
  v57 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v55 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1A5248A14();
  MEMORY[0x1EEE9AC00](v60);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A494985C(0, &qword_1EB122738, sub_1A4946E34, sub_1A4947018, MEMORY[0x1E697F960]);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v54 - v10;
  sub_1A4947174(0, v9);
  v13 = v12;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4947238(0, v14);
  v18 = v17;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A494741C(0, v19);
  v58 = *(v22 - 8);
  v59 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = a1;
  sub_1A49462E0(a1, v11);
  if (*v2 == 1)
  {
    v25 = sub_1A524B4A4();
  }

  else
  {
    v25 = sub_1A524B484();
  }

  v26 = v25;
  KeyPath = swift_getKeyPath();
  sub_1A4948D88(v11, v16, &qword_1EB122738, sub_1A4946E34, sub_1A4947018, MEMORY[0x1E697F960], v28);
  v29 = &v16[*(v13 + 36)];
  *v29 = KeyPath;
  v29[1] = v26;
  v30 = sub_1A524BC74();
  v32 = v31;
  v33 = &v21[*(v18 + 36)];
  sub_1A494682C(v2, v33);
  sub_1A4947280(0, v34);
  v36 = (v33 + *(v35 + 36));
  *v36 = v30;
  v36[1] = v32;
  sub_1A49497F4(v16, v21, sub_1A4947174);
  v37 = *(v2 + 8);
  if (*(v2 + 16) != 1)
  {

    v38 = sub_1A524D254();
    v39 = sub_1A524A014();
    sub_1A5246DF4(v38, &dword_1A3C1C000, v39, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    v40 = v55;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v37, 0);
    (*(v56 + 8))(v40, v57);
    LOBYTE(v37) = v63;
  }

  v41 = qword_1A5375830[v37];
  v42 = *(v60 + 20);
  v43 = *MEMORY[0x1E697F468];
  v44 = sub_1A52494A4();
  v45 = (*(*(v44 - 8) + 104))(&v7[v42], v43, v44);
  *v7 = v41;
  *(v7 + 1) = v41;
  sub_1A49474F0(v45);
  sub_1A4949644(&qword_1EB128080, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAE0]);
  sub_1A524A5B4();
  sub_1A4949948(v7, MEMORY[0x1E697EAF0]);
  sub_1A4949948(v21, sub_1A4947238);
  if (sub_1A5249BE4())
  {
    v46 = 0.95;
  }

  else
  {
    v46 = 1.0;
  }

  sub_1A524BE94();
  v48 = v47;
  v50 = v49;
  v51 = v62;
  (*(v58 + 32))(v62, v24, v59);
  sub_1A4948B50(0, &qword_1EB123FC8, sub_1A494741C, MEMORY[0x1E697E080]);
  v53 = v51 + *(v52 + 36);
  *v53 = v46;
  *(v53 + 8) = v46;
  *(v53 + 16) = v48;
  *(v53 + 24) = v50;
}

uint64_t sub_1A49462E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a1;
  v31 = a2;
  v3 = sub_1A5249234();
  v28 = *(v3 - 8);
  v29 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4947018(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A494985C(0, &qword_1EB122C00, sub_1A4946E34, sub_1A4947018, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - v10;
  v12 = sub_1A5242D14();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4946E34(0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v2 == 1)
  {
    type metadata accessor for GenerativeStoryCommonButtonStyle(0);
    sub_1A4947BA4(&qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E69C2218], v15);
    v20 = sub_1A4945474(v15, v19);
    (*(v13 + 8))(v15, v12, v20);
    sub_1A49498E0(v19, v11, sub_1A4946E34);
    swift_storeEnumTagMultiPayload();
    sub_1A49493F8(&qword_1EB1230E8, sub_1A4946E34, sub_1A4947774);
    sub_1A49493F8(&qword_1EB1230F8, sub_1A4947018, sub_1A49479E4);
    sub_1A5249744();
    v21 = sub_1A4946E34;
    v22 = v19;
  }

  else
  {
    v27 = v17;
    v23 = *(v2 + 8);
    if (*(v2 + 16) != 1)
    {

      v24 = sub_1A524D254();
      v25 = sub_1A524A014();
      sub_1A5246DF4(v24, &dword_1A3C1C000, v25, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0], v27);

      sub_1A5249224();
      swift_getAtKeyPath();
      sub_1A3C53AEC(v23, 0);
      (*(v28 + 8))(v5, v29);
      v23 = v32;
    }

    sub_1A4944FB4(v23, v8);
    sub_1A49498E0(v8, v11, sub_1A4947018);
    swift_storeEnumTagMultiPayload();
    sub_1A49493F8(&qword_1EB1230E8, sub_1A4946E34, sub_1A4947774);
    sub_1A49493F8(&qword_1EB1230F8, sub_1A4947018, sub_1A49479E4);
    sub_1A5249744();
    v21 = sub_1A4947018;
    v22 = v8;
  }

  return sub_1A4949948(v22, v21);
}

uint64_t sub_1A494682C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = sub_1A5248A14();
  MEMORY[0x1EEE9AC00](v3);
  v56 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A524BBF4();
  v54 = *(v5 - 8);
  v55 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v53 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A5249234();
  v52 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v51 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A5247E04();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v48 - v14;
  sub_1A3E42C60(0);
  v17 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v58 = (&v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*a1 == 1)
  {
    sub_1A4945A4C(v15);
    (*(v10 + 104))(v12, *MEMORY[0x1E697DBA8], v9);
    v19 = sub_1A5247DF4();
    v20 = *(v10 + 8);
    v20(v12, v9);
    v20(v15, v9);
    if (v19)
    {
      sub_1A524B404();
    }

    else
    {
      sub_1A524B434();
    }
  }

  else
  {
    sub_1A524B414();
  }

  v50 = sub_1A524B474();

  v21 = *(a1 + 8);
  v22 = *(a1 + 16);
  v49 = v7;
  if (v22 == 1)
  {
    v23 = v21;
  }

  else
  {

    v24 = sub_1A524D254();
    v25 = sub_1A524A014();
    sub_1A5246DF4(v24, &dword_1A3C1C000, v25, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    v26 = v51;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v21, 0);
    (*(v52 + 8))(v26, v7);
    v23 = v60;
  }

  v27 = qword_1A5375830[v23];
  v28 = v58;
  v29 = v58 + *(v17 + 36);
  v30 = v3;
  v31 = *(v3 + 20);
  v32 = *MEMORY[0x1E697F468];
  v33 = sub_1A52494A4();
  v34 = *(*(v33 - 8) + 104);
  v34(&v29[v31], v32, v33);
  *v29 = v27;
  *(v29 + 1) = v27;
  sub_1A3E42C88(0);
  *&v29[*(v35 + 36)] = 256;
  *v28 = v50;
  v36 = v53;
  sub_1A524BBE4();
  if (!v22)
  {

    v37 = sub_1A524D254();
    v38 = sub_1A524A014();
    sub_1A5246DF4(v37, &dword_1A3C1C000, v38, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    v39 = v51;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v21, 0);
    (*(v52 + 8))(v39, v49);
    LOBYTE(v21) = v59;
  }

  v40 = qword_1A5375830[v21];
  v41 = v56;
  v34(&v56[*(v30 + 20)], v32, v33);
  *v41 = v40;
  v41[1] = v40;
  sub_1A494985C(0, &qword_1EB123748, sub_1A3E42C60, sub_1A41CD0B0, MEMORY[0x1E697E830]);
  v43 = v57;
  v44 = v57 + *(v42 + 36);
  (*(v54 + 32))(v44, v36, v55);
  sub_1A41CD0B0(0);
  v46 = v45;
  sub_1A49497F4(v41, v44 + *(v45 + 52), MEMORY[0x1E697EAF0]);
  *(v44 + *(v46 + 56)) = 256;
  return sub_1A49497F4(v58, v43, sub_1A3E42C60);
}

void sub_1A4946EAC(uint64_t a1, double a2)
{
  if (!qword_1EB123878)
  {
    sub_1A4946F2C(255, a2);
    sub_1A4946FAC(255, &qword_1EB127790, &qword_1EB126D60, MEMORY[0x1E69E6530]);
    v2 = sub_1A5248804();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB123878);
    }
  }
}

void sub_1A4946F2C(uint64_t a1, double a2)
{
  if (!qword_1EB124090)
  {
    sub_1A5249BC4();
    sub_1A4946FAC(255, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50]);
    v2 = sub_1A5248804();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB124090);
    }
  }
}

void sub_1A4946FAC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1A4949138(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = sub_1A5249F44();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A4947068(uint64_t a1, double a2)
{
  if (!qword_1EB123448)
  {
    sub_1A49470E8(255, a2);
    sub_1A4946FAC(255, &qword_1EB127790, &qword_1EB126D60, MEMORY[0x1E69E6530]);
    v2 = sub_1A5248804();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB123448);
    }
  }
}

void sub_1A49470E8(uint64_t a1, double a2)
{
  if (!qword_1EB123888)
  {
    sub_1A4946F2C(255, a2);
    sub_1A4949138(255, &unk_1EB127840, MEMORY[0x1E697E1E0], MEMORY[0x1E6980A08]);
    v2 = sub_1A5248804();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB123888);
    }
  }
}

void sub_1A4947174(uint64_t a1, double a2)
{
  if (!qword_1EB124140)
  {
    sub_1A494985C(255, &qword_1EB122738, sub_1A4946E34, sub_1A4947018, MEMORY[0x1E697F960]);
    sub_1A4946FAC(255, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    v2 = sub_1A5248804();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB124140);
    }
  }
}

void sub_1A4947280(uint64_t a1, double a2)
{
  if (!qword_1EB122D50)
  {
    sub_1A494985C(255, &qword_1EB123748, sub_1A3E42C60, sub_1A41CD0B0, MEMORY[0x1E697E830]);
    sub_1A4947328(v2);
    v3 = sub_1A5249724();
    if (!v4)
    {
      atomic_store(v3, &qword_1EB122D50);
    }
  }
}

unint64_t sub_1A4947328(double a1)
{
  result = qword_1EB123750;
  if (!qword_1EB123750)
  {
    sub_1A494985C(255, &qword_1EB123748, sub_1A3E42C60, sub_1A41CD0B0, MEMORY[0x1E697E830]);
    sub_1A3E43048();
    sub_1A4949644(&qword_1EB122098, sub_1A41CD0B0, MEMORY[0x1E6980BA8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123750);
  }

  return result;
}

void sub_1A494741C(uint64_t a1, double a2)
{
  if (!qword_1EB121FD8)
  {
    sub_1A4947238(255, a2);
    sub_1A5248A14();
    sub_1A49474F0(v2);
    sub_1A4949644(&qword_1EB128080, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAE0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v4)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121FD8);
    }
  }
}

unint64_t sub_1A49474F0(double a1)
{
  result = qword_1EB1238B0;
  if (!qword_1EB1238B0)
  {
    sub_1A4947238(255, a1);
    sub_1A49475A0(v2);
    sub_1A4949644(&unk_1EB122D58, sub_1A4947280, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1238B0);
  }

  return result;
}

unint64_t sub_1A49475A0(double a1)
{
  result = qword_1EB124148;
  if (!qword_1EB124148)
  {
    sub_1A4947174(255, a1);
    sub_1A4947640(v2);
    sub_1A4947994(&qword_1EB127800, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB124148);
  }

  return result;
}

unint64_t sub_1A4947640(double a1)
{
  result = qword_1EB122740;
  if (!qword_1EB122740)
  {
    sub_1A494985C(255, &qword_1EB122738, sub_1A4946E34, sub_1A4947018, MEMORY[0x1E697F960]);
    sub_1A49493F8(&qword_1EB1230E8, sub_1A4946E34, sub_1A4947774);
    sub_1A49493F8(&qword_1EB1230F8, sub_1A4947018, sub_1A49479E4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122740);
  }

  return result;
}

uint64_t sub_1A4947820(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    sub_1A4947994(&qword_1EB1277A0, &qword_1EB127790, &qword_1EB126D60, MEMORY[0x1E69E6530]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A49478C4(double a1)
{
  result = qword_1EB124098;
  if (!qword_1EB124098)
  {
    sub_1A4946F2C(255, a1);
    sub_1A4949644(&qword_1EB122220, MEMORY[0x1E697C8D0], MEMORY[0x1E697C8C8]);
    sub_1A4947994(&qword_1EB127830, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB124098);
  }

  return result;
}

uint64_t sub_1A4947994(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A4946FAC(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A4947A54(double a1)
{
  result = qword_1EB123890;
  if (!qword_1EB123890)
  {
    sub_1A49470E8(255, a1);
    sub_1A49478C4(v2);
    sub_1A3FF8FF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123890);
  }

  return result;
}

uint64_t sub_1A4947AD4@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1 & 1;
  *(a3 + 8) = swift_getKeyPath();
  *(a3 + 16) = 0;
  v5 = type metadata accessor for GenerativeStoryCommonButtonStyle(0);
  sub_1A4948BB4(a2, a3 + *(v5 + 24));
  v6 = *(v5 + 28);
  *(a3 + v6) = swift_getKeyPath();
  sub_1A4945CC0(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A4947BA4@<X0>(unint64_t *a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_1A5249234();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4945CC0(0, a1, a2, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v21 - v15;
  sub_1A49499A8(v8, &v21 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(a4, v16, v17);
  }

  else
  {
    v19 = sub_1A524D254();
    v20 = sub_1A524A014();
    sub_1A5246DF4(v19, &dword_1A3C1C000, v20, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

void sub_1A4947DBC(uint64_t a1@<X8>)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A494985C(0, &qword_1EB122FF0, sub_1A4948C48, sub_1A4948CC8, MEMORY[0x1E697E830]);
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36 - v9;
  v11 = v1 + *(type metadata accessor for GenerativeStoryIntelligenceSuggestionButtonStyle(0) + 20);
  v12 = *v11;
  if (*(v11 + 8) != 1)
  {

    v13 = sub_1A524D254();
    v36 = v3;
    v14 = a1;
    v15 = v13;
    v16 = sub_1A524A014();
    v17 = v15;
    a1 = v14;
    sub_1A5246DF4(v17, &dword_1A3C1C000, v16, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v12, 0);
    (*(v4 + 8))(v6, v36);
    v12 = v37;
  }

  sub_1A4944FB4(v12, v10);
  v18 = sub_1A524B484();
  KeyPath = swift_getKeyPath();
  sub_1A4948C48(0);
  v21 = &v10[*(v20 + 36)];
  *v21 = KeyPath;
  v21[1] = v18;
  v22 = &v10[*(v8 + 36)];
  type metadata accessor for GenerativeStorySuggestionLightingView(0);
  sub_1A49480F8();
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  v23 = sub_1A524BC74();
  v25 = v24;
  sub_1A4948CC8(0);
  v27 = &v22[*(v26 + 36)];
  *v27 = v23;
  v27[1] = v25;
  if (sub_1A5249BE4())
  {
    v28 = 0.95;
  }

  else
  {
    v28 = 1.0;
  }

  sub_1A524BE94();
  v30 = v29;
  v32 = v31;
  sub_1A4948D88(v10, a1, &qword_1EB122FF0, sub_1A4948C48, sub_1A4948CC8, MEMORY[0x1E697E830], v29);
  sub_1A4948DFC(0, v33);
  v35 = a1 + *(v34 + 36);
  *v35 = v28;
  *(v35 + 8) = v28;
  *(v35 + 16) = v30;
  *(v35 + 24) = v32;
}

uint64_t sub_1A49480F8()
{
  v0 = sub_1A5247E04();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15 - v5;
  v7 = sub_1A52472E4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A5247294();
  sub_1A4947BA4(&qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DBD0], v6);
  (*(v1 + 104))(v3, *MEMORY[0x1E697DBA8], v0);
  v11 = sub_1A5247DF4();
  v12 = *(v1 + 8);
  v12(v3, v0);
  v12(v6, v0);
  v13 = 7;
  if (v11)
  {
    v13 = 8;
  }

  *v10 = v13;
  (*(v8 + 104))(v10, *MEMORY[0x1E69DC088], v7);
  return sub_1A52472A4();
}

uint64_t sub_1A4948330@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_1A4945CC0(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v2 = a1 + *(type metadata accessor for GenerativeStoryIntelligenceSuggestionButtonStyle(0) + 20);
  result = swift_getKeyPath();
  *v2 = result;
  v2[8] = 0;
  return result;
}

uint64_t sub_1A49483CC@<X0>(unint64_t *a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  sub_1A4945CC0(0, a2, a3, MEMORY[0x1E697DCB8]);

  return swift_storeEnumTagMultiPayload();
}

id sub_1A4948574(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for GenerativeStoryIntelligenceSuggestionView();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

char *sub_1A49485B8()
{
  v1 = sub_1A5249234();
  v26 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A52472B4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for GenerativeStorySuggestionLightingView(0);
  v12 = *(v5 + 16);
  v12(v10, v0 + *(v11 + 20), v4);
  v13 = *v0;
  if (*(v0 + 8) != 1)
  {

    v14 = sub_1A524D254();
    v15 = sub_1A524A014();
    v25 = v1;
    v16 = v4;
    v17 = v15;
    sub_1A5246DF4(v14, &dword_1A3C1C000, v15, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    v4 = v16;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v13, 0);
    (*(v26 + 8))(v3, v25);
    LOBYTE(v13) = v28;
  }

  v18 = qword_1A5375830[v13];
  v19 = type metadata accessor for GenerativeStoryIntelligenceSuggestionView();
  v20 = objc_allocWithZone(v19);
  v12(v7, v10, v4);
  v21 = objc_allocWithZone(sub_1A52472F4());
  *&v20[OBJC_IVAR____TtC12PhotosUICoreP33_A9C40A4A464D1AF98F1002330EE5183541GenerativeStoryIntelligenceSuggestionView_backdropView] = sub_1A52472C4();
  *&v20[OBJC_IVAR____TtC12PhotosUICoreP33_A9C40A4A464D1AF98F1002330EE5183541GenerativeStoryIntelligenceSuggestionView_cornerRadius] = v18;
  v27.receiver = v20;
  v27.super_class = v19;
  v22 = objc_msgSendSuper2(&v27, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v22 addSubview_];
  (*(v5 + 8))(v10, v4);
  return v22;
}

uint64_t sub_1A49488A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A49497B0(&qword_1EB15F1D0, &unk_1A5375620);

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1A4948928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A49497B0(&qword_1EB15F1D0, &unk_1A5375620);

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1A49489A8(uint64_t a1)
{
  sub_1A49497B0(&qword_1EB15F1D0, &unk_1A5375620);
  sub_1A52496F4();
  __break(1u);
}

uint64_t sub_1A49489EC(uint64_t a1)
{
  v2 = sub_1A5242D14();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 88))(a1, v2);
  if (v4 == *MEMORY[0x1E69C21F8])
  {
    return 1;
  }

  if (v4 == *MEMORY[0x1E69C21F0])
  {
    return 2;
  }

  if (v4 == *MEMORY[0x1E69C2210])
  {
    return 3;
  }

  (*(v3 + 8))(a1, v2);
  return 0;
}

uint64_t sub_1A4948AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A4948F34();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

void sub_1A4948B50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_1A5248804();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1A4948BB4(uint64_t a1, uint64_t a2)
{
  sub_1A4945CC0(0, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A4948C48(uint64_t a1)
{
  if (!qword_1EB123060)
  {
    sub_1A4947018(255);
    sub_1A4946FAC(255, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB123060);
    }
  }
}

void sub_1A4948CC8(uint64_t a1)
{
  if (!qword_1EB122D78)
  {
    type metadata accessor for GenerativeStorySuggestionLightingView(255);
    sub_1A49497B0(qword_1EB15F1D8, &unk_1A53756B0);
    v1 = sub_1A5249724();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB122D78);
    }
  }
}

uint64_t sub_1A4948D88(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t), double a7)
{
  sub_1A494985C(0, a3, a4, a5, a6);
  (*(*(v9 - 8) + 32))(a2, a1, v9);
  return a2;
}

void sub_1A4948DFC(uint64_t a1, double a2)
{
  if (!qword_1EB122F98)
  {
    sub_1A494985C(255, &qword_1EB122FF0, sub_1A4948C48, sub_1A4948CC8, MEMORY[0x1E697E830]);
    v2 = sub_1A5248804();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB122F98);
    }
  }
}

unint64_t sub_1A4948EA4()
{
  result = qword_1EB145818;
  if (!qword_1EB145818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145818);
  }

  return result;
}

unint64_t sub_1A4948F34()
{
  result = qword_1EB1252A0;
  if (!qword_1EB1252A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1252A0);
  }

  return result;
}

unint64_t sub_1A4948F8C()
{
  result = qword_1EB145820;
  if (!qword_1EB145820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145820);
  }

  return result;
}

void sub_1A4949008(uint64_t a1)
{
  sub_1A4949138(319, &qword_1EB124750, &type metadata for GenerativeStorySuggestionsStyleSpec, MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_1A4945CC0(319, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      sub_1A4945CC0(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A4949138(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A49491C0(uint64_t a1)
{
  sub_1A4945CC0(319, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_1A4949138(319, &qword_1EB124750, &type metadata for GenerativeStorySuggestionsStyleSpec, MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1A49492D4()
{
  result = qword_1EB123FD0;
  if (!qword_1EB123FD0)
  {
    sub_1A4948B50(255, &qword_1EB123FC8, sub_1A494741C, MEMORY[0x1E697E080]);
    sub_1A4947238(255, v1);
    sub_1A5248A14();
    sub_1A49474F0(v2);
    sub_1A4949644(&qword_1EB128080, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAE0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123FD0);
  }

  return result;
}

uint64_t sub_1A49493F8(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A4949478(double a1)
{
  result = qword_1EB122FF8;
  if (!qword_1EB122FF8)
  {
    sub_1A494985C(255, &qword_1EB122FF0, sub_1A4948C48, sub_1A4948CC8, MEMORY[0x1E697E830]);
    sub_1A494956C();
    sub_1A4949644(&unk_1EB122D80, sub_1A4948CC8, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122FF8);
  }

  return result;
}

unint64_t sub_1A494956C()
{
  result = qword_1EB123068;
  if (!qword_1EB123068)
  {
    sub_1A4948C48(255);
    sub_1A49493F8(&qword_1EB1230F8, sub_1A4947018, sub_1A49479E4);
    sub_1A4947994(&qword_1EB127800, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123068);
  }

  return result;
}

uint64_t sub_1A4949644(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A49496C4(uint64_t a1)
{
  sub_1A4949138(319, &qword_1EB124750, &type metadata for GenerativeStorySuggestionsStyleSpec, MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_1A52472B4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1A49497B0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GenerativeStorySuggestionLightingView(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A49497F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A494985C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_1A49498E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4949948(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A49499A8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A4945CC0(0, a3, a4, MEMORY[0x1E697DCB8]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A4949A2C@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v2 = *v1;
  sub_1A3DBD9A0();
  v3 = sub_1A524ECF4();
  v4 = sub_1A524DF24();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v18 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - v8;
  v10 = (v1 + *(v2 + 88));
  os_unfair_lock_lock(v10);
  v11 = sub_1A5241C54();
  v12 = *(v5 + 16);
  v16 = *(v11 + 28);
  v17 = v12;
  v12(v9, v10 + v16, v4);
  os_unfair_lock_unlock(v10);
  v13 = *(v3 - 8);
  v14 = *(v13 + 48);
  if (v14(v9, 1, v3) != 1)
  {
    return (*(v13 + 32))(v19, v9, v3);
  }

  (*(v5 + 8))(v9, v4);
  sub_1A524D3D4();
  os_unfair_lock_lock(v10);
  v9 = v18;
  v17(v18, v10 + v16, v4);
  os_unfair_lock_unlock(v10);
  result = (v14)(v9, 1, v3);
  if (result != 1)
  {
    return (*(v13 + 32))(v19, v9, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A4949CA0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_1A4949CF8(a1, a2, a3);
  return v6;
}

void *sub_1A4949CF8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v47 = a2;
  v48 = a3;
  v6 = *v3;
  v7 = sub_1A524BEE4();
  v8 = *(v7 - 8);
  v52 = v7;
  v53 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v51 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A524D464();
  v45 = *(v10 - 8);
  v46 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v44 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A524D414();
  MEMORY[0x1EEE9AC00](v12);
  v43 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A524BF64();
  v49 = *(v14 - 8);
  v50 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v6 + 80);
  sub_1A3DBD9A0();
  v41 = v17;
  v18 = sub_1A524ECF4();
  v19 = sub_1A524DF24();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v40 - v22;
  v24 = v4 + *(v6 + 88);
  (*(*(v18 - 8) + 56))(&v40 - v22, 1, 1, v18, v21);
  *v24 = 0;
  v25 = *(sub_1A5241C54() + 28);
  v26 = sub_1A5241C64();
  bzero(&v24[v25], *(*(v26 - 8) + 64));
  (*(v20 + 32))(&v24[v25], v23, v19);
  v27 = *(*v4 + 104);
  *(v4 + v27) = dispatch_group_create();
  v40 = sub_1A3C29A58(0, v28);
  aBlock = 0;
  v56 = 0xE000000000000000;
  sub_1A524E404();

  aBlock = 0xD000000000000019;
  v56 = 0x80000001A53F38C0;
  swift_getMetatypeMetadata();
  v29 = sub_1A524EEF4();
  MEMORY[0x1A5907B60](v29);

  v42 = a1;
  sub_1A524BF14();
  aBlock = MEMORY[0x1E69E7CC0];
  v30 = MEMORY[0x1E69E8030];
  sub_1A3D75A78(&qword_1EB126AD0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  sub_1A3DC59A0(0, &qword_1EB126E40, v30);
  sub_1A3C9AB70(&qword_1EB126E30, &qword_1EB126E40, v30);
  sub_1A524E224();
  (*(v45 + 104))(v44, *MEMORY[0x1E69E8090], v46);
  *(v4 + *(*v4 + 96)) = sub_1A524D4B4();
  dispatch_group_enter(*(v4 + *(*v4 + 104)));
  v46 = *(v4 + *(*v4 + 96));
  v31 = swift_allocObject();
  swift_weakInit();
  v32 = swift_allocObject();
  v33 = v47;
  v34 = v48;
  v32[2] = v41;
  v32[3] = v33;
  v32[4] = v34;
  v32[5] = v31;
  v59 = sub_1A494AAEC;
  v60 = v32;
  aBlock = MEMORY[0x1E69E9820];
  v56 = 1107296256;
  v57 = sub_1A3C2E0D0;
  v58 = &block_descriptor_307;
  v35 = _Block_copy(&aBlock);

  sub_1A524BF14();
  v54 = MEMORY[0x1E69E7CC0];
  v36 = MEMORY[0x1E69E7F60];
  sub_1A3D75A78(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1A3DC59A0(0, &qword_1EB12B1C0, v36);
  sub_1A3C9AB70(&qword_1EB12B1B0, &qword_1EB12B1C0, v36);
  v37 = v51;
  v38 = v52;
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v16, v37, v35);
  _Block_release(v35);

  (*(v53 + 8))(v37, v38);
  (*(v49 + 8))(v16, v50);

  return v4;
}

void sub_1A494A404(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a3;
  v6 = sub_1A524DF24();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - v12;
  v22 = 0;
  v14 = *(*(a4 - 8) + 56);
  v15 = v14(&v21 - v12, 1, 1, a4, v11);
  a1(v15);
  (v14)(v9, 0, 1, a4);
  (*(v7 + 40))(v13, v9, v6);
  v16 = v6;
  v17 = v21;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v19 = (Strong + *(*Strong + 88));
    os_unfair_lock_lock(v19);
    sub_1A3DBD9A0();
    sub_1A524ECF4();
    sub_1A524DF24();
    v20 = sub_1A5241C54();
    sub_1A494A660((&v19->_os_unfair_lock_opaque + *(v20 + 28)), &v22, v13, v17, a4);
    sub_1A3F5E528();
    os_unfair_lock_unlock(v19);
  }

  (*(v7 + 8))(v13, v16);
}

void sub_1A494A660(void *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a3;
  v25 = a4;
  v8 = sub_1A524DF24();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - v10;
  sub_1A3DBD9A0();
  v12 = sub_1A524ECF4();
  v13 = sub_1A524DF24();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v23 - v16;
  v18 = *a2;
  if (v18)
  {
    v19 = v18;
    (*(v14 + 8))(a1, v13);
    *a1 = v18;
    swift_storeEnumTagMultiPayload();
    (*(*(v12 - 8) + 56))(a1, 0, 1, v12);
  }

  else
  {
    (*(v9 + 16))(v11, v24, v8, v15);
    v20 = *(a5 - 8);
    if ((*(v20 + 48))(v11, 1, a5) == 1)
    {
      __break(1u);
      return;
    }

    (*(v14 + 8))(a1, v13);
    (*(v20 + 32))(v17, v11, a5);
    swift_storeEnumTagMultiPayload();
    (*(*(v12 - 8) + 56))(v17, 0, 1, v12);
    (*(v14 + 32))(a1, v17, v13);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v22 = *(Strong + *(*Strong + 104));

    dispatch_group_leave(v22);
  }
}

uint64_t sub_1A494A9A8()
{
  sub_1A3DBD9A0();
  sub_1A524ECF4();
  sub_1A524DF24();
  sub_1A5241C54();
  sub_1A5241C64();
  sub_1A524DF04();

  return v0;
}

uint64_t sub_1A494AA94()
{
  sub_1A494A9A8();

  return swift_deallocClassInstance();
}

uint64_t sub_1A494AAF8(uint64_t a1)
{
  sub_1A3DBD9A0();
  sub_1A524ECF4();
  sub_1A524DF24();
  result = sub_1A5241C54();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

PXLemonadeSearchViewControllerFactory __swiftcall PXLemonadeSearchViewControllerFactory.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for PXLemonadeSearchViewControllerFactory()
{
  result = qword_1EB1E1360[0];
  if (!qword_1EB1E1360[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EB1E1360);
  }

  return result;
}

id sub_1A494AD14(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR___PXPhotosZoomableOverlayController_overlayLayoutProvider];
  *v3 = 0;
  v3[1] = 0;
  *&v1[OBJC_IVAR___PXPhotosZoomableOverlayController_photosViewModel] = 0;
  *&v1[OBJC_IVAR___PXPhotosZoomableOverlayController_currentLens] = 0;
  swift_unknownObjectWeakInit();
  v4 = &v1[OBJC_IVAR___PXPhotosZoomableOverlayController_observation];
  *v4 = 0;
  v4[1] = 0;
  v1[OBJC_IVAR___PXPhotosZoomableOverlayController_isSwitchingLens] = 0;
  *&v1[OBJC_IVAR___PXPhotosZoomableOverlayController_currentZoomStep] = 0;
  *&v1[OBJC_IVAR___PXPhotosZoomableOverlayController_photoLibrary] = a1;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for PhotosZoomableOverlayController();
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_1A494AEEC()
{
  v1 = (v0 + OBJC_IVAR___PXPhotosZoomableOverlayController_overlayLayoutProvider);
  swift_beginAccess();
  v2 = *v1;
  sub_1A3C66EE8(*v1, v1[1]);
  return v2;
}

uint64_t sub_1A494B008(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___PXPhotosZoomableOverlayController_overlayLayoutProvider);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1A3C33378(v6, v7);
}

uint64_t sub_1A494B068@<X0>(void **a1@<X0>, uint64_t (**a2)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x98))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = sub_1A45C4D98;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t sub_1A494B108(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A47F9E7C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xA0);
  v8 = sub_1A3C66EE8(v3, v4);
  return v7(v6, v5, v8);
}

double sub_1A494B260(uint64_t (*a1)(void))
{
  a1();
  swift_beginAccess();
  swift_unknownObjectRetain();
  return result;
}

uint64_t sub_1A494B3A4()
{
  sub_1A3C4ED78(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A52F9DE0;
  v1 = sub_1A47BCE58();
  swift_beginAccess();
  *(v0 + 32) = *v1;
  swift_unknownObjectRetain();
  v2 = sub_1A47BCEA8();
  swift_beginAccess();
  *(v0 + 40) = *v2;
  swift_unknownObjectRetain();
  return v0;
}

void *sub_1A494B4AC()
{
  v1 = OBJC_IVAR___PXPhotosZoomableOverlayController_photosViewModel;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1A494B578(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___PXPhotosZoomableOverlayController_photosViewModel;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
  if (!v5)
  {
    if (!a1)
    {
      return;
    }

    goto LABEL_6;
  }

  if (v5 != a1)
  {
    if (!a1)
    {
      v6 = 0;
      v7 = (v2 + OBJC_IVAR___PXPhotosZoomableOverlayController_observation);
      *v7 = 0;
      v7[1] = 0;

      swift_unknownObjectRelease();
      a1 = v5;
      goto LABEL_7;
    }

LABEL_6:
    swift_allocObject();
    swift_unknownObjectWeakInit();
    a1;

    sub_1A524D1A4();
  }

LABEL_7:
}

uint64_t sub_1A494B69C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xB8))();
  *a2 = result;
  return result;
}

uint64_t sub_1A494B6F8(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xC0);
  v4 = *a1;
  return v3(v2);
}

double sub_1A494B760(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___PXPhotosZoomableOverlayController_photosViewModel;
  swift_beginAccess();
  v6 = *(v2 + v4);
  if (a1)
  {
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
        v8 = (v2 + OBJC_IVAR___PXPhotosZoomableOverlayController_observation);
        *v8 = 0;
        v8[1] = 0;
        swift_unknownObjectRelease();
        return result;
      }

LABEL_9:
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v6;

      sub_1A524D1A4();
    }
  }

  else if (v6)
  {
    goto LABEL_9;
  }

  return result;
}

void sub_1A494B860(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PXPhotosViewModelChanged(0);
  sub_1A494CEE4(&qword_1EB145888, &unk_1A5375A8C);
  sub_1A524EE54();
}

void (*sub_1A494B918(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR___PXPhotosZoomableOverlayController_photosViewModel;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_1A494B9B4;
}

void sub_1A494B9B4(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = (*a1 + 24);
  v4 = *v5;
  v7 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  v8 = *(v7 + v6);
  *(v7 + v6) = *v5;
  v9 = v4;
  v10 = v9;
  if (a2)
  {
    v11 = v9;
    sub_1A494B760(v8);

    v8 = *v5;
  }

  else
  {
    sub_1A494B760(v8);
  }

  free(v3);
}

double sub_1A494BAAC()
{
  swift_beginAccess();
  swift_unknownObjectRetain();
  return result;
}

double sub_1A494BB7C(uint64_t a1)
{
  v3 = OBJC_IVAR___PXPhotosZoomableOverlayController_currentLens;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  swift_unknownObjectRetain();
  sub_1A494BCB0(v4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_1A494BBF0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xD0))();
  *a2 = result;
  return result;
}

uint64_t sub_1A494BC4C(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xD8);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

double sub_1A494BCB0(void *a1)
{
  if (a1)
  {
    v2 = [a1 identifier];
    v3 = sub_1A524C674();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = OBJC_IVAR___PXPhotosZoomableOverlayController_currentLens;
  swift_beginAccess();
  v8 = *(v1 + v6);
  if (!v8)
  {
    if (!v5)
    {
      return result;
    }

    goto LABEL_16;
  }

  v9 = [v8 identifier];
  v10 = sub_1A524C674();
  v12 = v11;

  if (!v5)
  {
    if (!v12)
    {
      return result;
    }

    goto LABEL_16;
  }

  if (!v12)
  {
LABEL_16:

LABEL_17:
    sub_1A494C614();
    return result;
  }

  if (v3 == v10 && v5 == v12)
  {

    return result;
  }

  v14 = sub_1A524EAB4();

  if ((v14 & 1) == 0)
  {
    goto LABEL_17;
  }

  return result;
}

void (*sub_1A494BDDC(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR___PXPhotosZoomableOverlayController_currentLens;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  swift_unknownObjectRetain();
  return sub_1A494BE78;
}

void sub_1A494BE78(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v6 = *(v5 + v4);
  *(v5 + v4) = *(*a1 + 24);
  swift_unknownObjectRetain();
  if (a2)
  {
    swift_unknownObjectRetain();
    sub_1A494BCB0(v6);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1A494BCB0(v6);
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  free(v3);
}

double sub_1A494C024(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_1A494C084@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xE8))();
  *a2 = result;
  return result;
}

uint64_t sub_1A494C0E0(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xF0);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

void (*sub_1A494C144(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR___PXPhotosZoomableOverlayController_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1A3DA46A0;
}

void sub_1A494C230()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xB8))();
  if (v1)
  {
    v2 = v1;
    [v1 zoomStep];
    v4 = v3;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = round(v4);
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v6 = *(v0 + OBJC_IVAR___PXPhotosZoomableOverlayController_currentZoomStep);
  *(v0 + OBJC_IVAR___PXPhotosZoomableOverlayController_currentZoomStep) = v5;
  if (v6 != v5)
  {

    sub_1A494C330();
  }
}

void sub_1A494C330()
{
  v1 = OBJC_IVAR___PXPhotosZoomableOverlayController_isSwitchingLens;
  if ((*(v0 + OBJC_IVAR___PXPhotosZoomableOverlayController_isSwitchingLens) & 1) == 0)
  {
    v2 = *(v0 + OBJC_IVAR___PXPhotosZoomableOverlayController_currentZoomStep);
    v3 = MEMORY[0x1E69E7D40];
    v4 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xB8);
    v5 = v4();
    if (v5 && (v6 = v5, v7 = [v5 yearsMonthsZoomStepRange], v9 = v8, v6, v9 == 2) && (v7 == 0x7FFFFFFFFFFFFFFFLL ? (v10 = 0x7FFFFFFFFFFFFFFFLL) : (v10 = v7 + 1), v10 == v2))
    {
      v11 = sub_1A47BCEA8();
    }

    else
    {
      v12 = v4();
      if (!v12 || ((v13 = v12, v14 = [v12 yearsMonthsZoomStepRange], v16 = v15, v13, v16 >= 1) ? (v17 = v14 == v2) : (v17 = 0), !v17))
      {
        v18 = 0;
        v19 = 0;
        v20 = 0;
        *(v0 + v1) = 1;
        goto LABEL_19;
      }

      v11 = sub_1A47BCE58();
    }

    v21 = v11;
    swift_beginAccess();
    v18 = *v21;
    swift_unknownObjectRetain_n();
    *(v0 + v1) = 1;
    if (v18)
    {
      v22 = [v18 identifier];
      swift_unknownObjectRelease();
      v19 = sub_1A524C674();
      v20 = v23;
    }

    else
    {
      v19 = 0;
      v20 = 0;
    }

LABEL_19:
    v24 = (*((*v3 & *v0) + 0xD0))();
    if (v24)
    {
      v25 = [v24 identifier];
      swift_unknownObjectRelease();
      v26 = sub_1A524C674();
      v28 = v27;

      if (v20)
      {
        if (v28)
        {
          if (v19 == v26 && v20 == v28)
          {
            swift_unknownObjectRelease();

            goto LABEL_35;
          }

          v30 = sub_1A524EAB4();

          if (v30)
          {
LABEL_34:
            swift_unknownObjectRelease();
LABEL_35:
            *(v0 + v1) = 0;
            return;
          }

LABEL_32:
          v32 = (*((*v3 & *v0) + 0xE8))(v31);
          if (v32)
          {
            [v32 photosOverlayController:v0 didChangeCurrentLens:v18];
            swift_unknownObjectRelease();
          }

          goto LABEL_34;
        }
      }

      else if (!v28)
      {
        goto LABEL_34;
      }
    }

    else if (!v20)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }
}

void sub_1A494C614()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xB8);
  v3 = v2();
  if (!v3)
  {
    return;
  }

  v4 = OBJC_IVAR___PXPhotosZoomableOverlayController_isSwitchingLens;
  if ((*(v0 + OBJC_IVAR___PXPhotosZoomableOverlayController_isSwitchingLens) & 1) == 0)
  {
    v36 = v3;
    v5 = (*((*v1 & *v0) + 0xD0))();
    if (v5)
    {
      v6 = [v5 identifier];
      swift_unknownObjectRelease();
      v7 = sub_1A524C674();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = sub_1A47BCEA8();
    swift_beginAccess();
    v11 = [*v10 identifier];
    v12 = sub_1A524C674();
    v14 = v13;

    if (v9)
    {
      if (v12 == v7 && v9 == v14)
      {

LABEL_22:

        v24 = (v2)(v23);
        if (v24)
        {
          v25 = v24;
          v26 = [v24 yearsMonthsZoomStepRange];
          v28 = v27;

          if (v28 == 2)
          {
            if (v26 != 0x7FFFFFFFFFFFFFFFLL)
            {
              ++v26;
            }

            goto LABEL_34;
          }
        }

        v29 = v2();
        if (!v29)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      }

      v16 = sub_1A524EAB4();

      if (v16)
      {
        goto LABEL_22;
      }
    }

    else
    {
    }

    v17 = sub_1A47BCE58();
    swift_beginAccess();
    v18 = [*v17 identifier];
    v19 = sub_1A524C674();
    v21 = v20;

    if (!v9)
    {

      goto LABEL_33;
    }

    if (v19 == v7 && v9 == v21)
    {
    }

    else
    {
      v30 = sub_1A524EAB4();

      if ((v30 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    v29 = (v2)(v22);
    if (!v29)
    {
      goto LABEL_33;
    }

LABEL_32:
    v31 = v29;
    v26 = [v29 yearsMonthsZoomStepRange];
    v33 = v32;

    if (v33 > 0)
    {
LABEL_34:
      *(v0 + v4) = 1;
      v34 = swift_allocObject();
      *(v34 + 16) = v26;
      aBlock[4] = sub_1A494CE68;
      aBlock[5] = v34;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A3D7692C;
      aBlock[3] = &block_descriptor_308;
      v35 = _Block_copy(aBlock);

      [v36 performChanges_];

      _Block_release(v35);
      *(v0 + v4) = 0;
      return;
    }

LABEL_33:
    v26 = [v36 defaultZoomStep];
    goto LABEL_34;
  }
}

id PhotosZoomableOverlayController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PhotosZoomableOverlayController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosZoomableOverlayController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A494CEE4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PXPhotosViewModelChanged(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t LemonadePresentationContext.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

uint64_t sub_1A494D06C()
{
  v0 = sub_1A5240BA4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1A5240BB4();
  __swift_allocate_value_buffer(v6, qword_1EB1EC130);
  __swift_project_value_buffer(v6, qword_1EB1EC130);
  sub_1A524C5B4();
  sub_1A5241244();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1A5240BC4();
}

unint64_t sub_1A494D258()
{
  result = qword_1EB1458C8;
  if (!qword_1EB1458C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1458C8);
  }

  return result;
}

void sub_1A494D2AC(uint64_t a1)
{
  if (!qword_1EB1458D8)
  {
    sub_1A494EC84(255, &qword_1EB1427A8, sub_1A420E4B0, &type metadata for DestinationAppEnum, MEMORY[0x1E695A1A0]);
    v1 = sub_1A524ED44();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1458D8);
    }
  }
}

uint64_t sub_1A494D344(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  sub_1A524CC54();
  v2[5] = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  v2[6] = v4;
  v2[7] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A494D3DC, v4, v3);
}

uint64_t sub_1A494D3DC()
{
  *(v0 + 16) = *(v0 + 32);
  sub_1A523FF44();
  v1 = sub_1A420D290(*(v0 + 88));
  v3 = v2;
  *(v0 + 64) = v2;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  sub_1A494D258();
  *v4 = v0;
  v4[1] = sub_1A446D80C;
  v5 = *(v0 + 24);

  return AppIntent.px_performWithLoggingAndAnalytics(intentName:category:count:_:)(v5, 0, 0, v1, v3, 0, 1, &unk_1A5375BB0);
}

uint64_t sub_1A494D4F0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_1A524CC54();
  v2[4] = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A494D588, v4, v3);
}

uint64_t sub_1A494D588()
{
  sub_1A523FF44();
  v1 = *(v0 + 72);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_1A446DAE4;

  return sub_1A494E178(v1);
}

uint64_t sub_1A494D63C(uint64_t a1)
{
  v2 = a1;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3CA8098;

  return sub_1A494E178(v2);
}

void *sub_1A494D6E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A523FF44();
  *a1 = v3;
  return result;
}

void (*sub_1A494D758(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A523FF34();
  return sub_1A3DB6E78;
}

uint64_t sub_1A494D7CC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB1E1670 != -1)
  {
    swift_once();
  }

  v3 = sub_1A5240BB4();
  v4 = __swift_project_value_buffer(v3, qword_1EB1EC130);
  swift_beginAccess();
  return (*(*(v3 - 8) + 16))(a1, v4, v3);
}

uint64_t sub_1A494D88C(uint64_t a1, uint64_t a2)
{
  sub_1A494EC84(0, &qword_1EB1458C0, sub_1A494D258, &type metadata for OpenDestinationIntent, MEMORY[0x1E695A4A8]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1A494EC84(0, &qword_1EB1458D0, sub_1A494D258, &type metadata for OpenDestinationIntent, MEMORY[0x1E695A4A0]);
  MEMORY[0x1EEE9AC00](v3);
  sub_1A5240314();
  sub_1A5240304();
  swift_getKeyPath();
  sub_1A494D2AC(0);
  sub_1A52402F4();

  sub_1A5240304();
  sub_1A5240324();
  return sub_1A52402E4();
}

uint64_t sub_1A494DA74(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A3D60150;

  return sub_1A494D344(a1, v4);
}

uint64_t sub_1A494DB14@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A494DB78();
  *a1 = result;
  return result;
}

uint64_t sub_1A494DB3C(uint64_t a1)
{
  v2 = sub_1A494D258();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1A494DB78()
{
  v0 = sub_1A5240334();
  v27 = *(v0 - 8);
  v28 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v26 = v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DB7B48(0, &qword_1EB1260E8, MEMORY[0x1E6959F70]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v25 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v24 = v22 - v5;
  sub_1A3DB7B48(0, &qword_1EB12B008, MEMORY[0x1E6968E10]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v23 = v22 - v7;
  v8 = sub_1A5240BA4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v22[0] = sub_1A5240BB4();
  v14 = *(v22[0] - 8);
  MEMORY[0x1EEE9AC00](v22[0]);
  sub_1A494EC84(0, &qword_1EB1427A8, sub_1A420E4B0, &type metadata for DestinationAppEnum, MEMORY[0x1E695A1A0]);
  v22[1] = v15;
  sub_1A524C5B4();
  sub_1A5241244();
  v16 = *MEMORY[0x1E6968DF0];
  v17 = *(v9 + 104);
  v17(v11, v16, v8);
  sub_1A5240BC4();
  sub_1A524C5B4();
  sub_1A5241244();
  v17(v11, v16, v8);
  v18 = v23;
  sub_1A5240BC4();
  (*(v14 + 56))(v18, 0, 1, v22[0]);
  v29[0] = 30;
  v19 = sub_1A523FDB4();
  v20 = *(*(v19 - 8) + 56);
  v20(v24, 1, 1, v19);
  v20(v25, 1, 1, v19);
  (*(v27 + 104))(v26, *MEMORY[0x1E695A500], v28);
  sub_1A420E65C();
  sub_1A524E414();
  sub_1A420E5AC();
  return sub_1A523FF84();
}

uint64_t sub_1A494E0DC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A3D60150;

  return sub_1A494D4F0(a1, v1);
}

uint64_t sub_1A494E178(char a1)
{
  *(v1 + 112) = a1;
  sub_1A3DB7B48(0, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  *(v1 + 16) = swift_task_alloc();
  v2 = sub_1A5240E64();
  *(v1 + 24) = v2;
  *(v1 + 32) = *(v2 - 8);
  *(v1 + 40) = swift_task_alloc();
  v3 = sub_1A5246F24();
  *(v1 + 48) = v3;
  *(v1 + 56) = *(v3 - 8);
  *(v1 + 64) = swift_task_alloc();
  sub_1A524CC54();
  *(v1 + 72) = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  *(v1 + 80) = v5;
  *(v1 + 88) = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A494E310, v5, v4);
}

uint64_t sub_1A494E310()
{
  v26 = v0;
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = sub_1A3CB648C();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_1A5246F04();
  v6 = sub_1A524D264();
  v7 = os_log_type_enabled(v5, v6);
  v9 = *(v0 + 56);
  v8 = *(v0 + 64);
  v10 = *(v0 + 48);
  if (v7)
  {
    v11 = *(v0 + 112);
    v12 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v12 = 136446210;
    v13 = sub_1A420D290(v11);
    sub_1A3C2EF94(v13, v14, &v25);
  }

  (*(v9 + 8))(v8, v10);
  v15 = *(v0 + 24);
  v16 = *(v0 + 32);
  v17 = *(v0 + 16);
  sub_1A5240E34();
  result = (*(v16 + 48))(v17, 1, v15);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v20 = *(v0 + 32);
    v19 = *(v0 + 40);
    v22 = *(v0 + 16);
    v21 = *(v0 + 24);

    (*(v20 + 32))(v19, v22, v21);
    v23 = swift_task_alloc();
    *(v0 + 96) = v23;
    *v23 = v0;
    v23[1] = sub_1A494E824;
    v24 = *(v0 + 40);

    return sub_1A489B910(v24);
  }

  return result;
}

uint64_t sub_1A494E824()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);
  if (v0)
  {
    v5 = sub_1A494EA0C;
  }

  else
  {
    v5 = sub_1A494E960;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A494E960()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A494EA0C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

unint64_t sub_1A494EABC()
{
  result = qword_1EB1458E0;
  if (!qword_1EB1458E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1458E0);
  }

  return result;
}

unint64_t sub_1A494EB1C()
{
  result = qword_1EB1458E8;
  if (!qword_1EB1458E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1458E8);
  }

  return result;
}

unint64_t sub_1A494EB74()
{
  result = qword_1EB1458F0;
  if (!qword_1EB1458F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1458F0);
  }

  return result;
}

unint64_t sub_1A494EBF4()
{
  result = qword_1EB1458F8;
  if (!qword_1EB1458F8)
  {
    sub_1A494EC84(255, &qword_1EB145900, sub_1A494D258, &type metadata for OpenDestinationIntent, MEMORY[0x1E695A488]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1458F8);
  }

  return result;
}

void sub_1A494EC84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t PhotosDynamicHeaderPreview.init(titleModel:banner:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1A3F1B4DC(a1, v10, &qword_1EB128D10, &qword_1EB128D20, off_1E7721088);
  v6 = MEMORY[0x1E6981170];
  sub_1A3F1B4DC(a2, v9, &qword_1EB13FB90, &qword_1EB13FCC0, MEMORY[0x1E6981170]);
  type metadata accessor for PhotosDynamicHeaderPreviewModel(0);
  v7 = swift_allocObject();
  sub_1A494FF10(v10, v9);
  sub_1A3EA8D18(a2, &qword_1EB13FB90, &qword_1EB13FCC0, v6);
  result = sub_1A3EA8D18(a1, &qword_1EB128D10, &qword_1EB128D20, off_1E7721088);
  *a3 = v7;
  a3[1] = 0;
  return result;
}

uint64_t type metadata accessor for PhotosDynamicHeaderPreviewModel(uint64_t a1)
{
  result = qword_1EB1E1AB0;
  if (!qword_1EB1E1AB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A494F054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v95 = a3;
  sub_1A4950368(0);
  v93 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5 - 8);
  v94 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v98 = &v81 - v8;
  sub_1A49501C0(0, &qword_1EB129018, MEMORY[0x1E69C27F8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v89 = &v81 - v10;
  sub_1A49502E8(0);
  v92 = v11;
  v100 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v91 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v101 = &v81 - v14;
  v15 = type metadata accessor for PhotosDynamicHeaderLegibilityOverlay(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v90 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v81 - v18;
  v96 = &v81 - v18;
  sub_1A49502C0(0);
  v21 = v20 - 8;
  MEMORY[0x1EEE9AC00](v20);
  v97 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v81 - v24;
  v99 = &v81 - v24;
  sub_1A52441A4();
  v26 = sub_1A5248874();
  v27 = sub_1A524A064();
  v28 = &v25[*(v21 + 44)];
  *v28 = v26;
  v28[8] = v27;
  v29 = a1;
  *&v133 = a1;
  *(&v133 + 1) = a2;
  v88 = type metadata accessor for PhotosDynamicHeaderPreviewModel;
  sub_1A49501C0(0, &qword_1EB145940, type metadata accessor for PhotosDynamicHeaderPreviewModel, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v30 = v102;
  swift_getKeyPath();
  *&v133 = v30;
  sub_1A49509B0();
  sub_1A52415D4();

  v31 = *(v30 + 16);

  *(&v134 + 1) = type metadata accessor for PhotosDynamicHeaderMockGeometryModel(0);
  *&v135 = &protocol witness table for PhotosDynamicHeaderMockGeometryModel;
  *&v133 = v31;
  PhotosDynamicHeaderLegibilityOverlay.init(geometryModel:)(&v133, v19);
  *&v133 = v29;
  *(&v133 + 1) = a2;
  sub_1A524B6A4();
  v32 = v102;
  swift_getKeyPath();
  *&v133 = v32;
  sub_1A52415D4();

  v33 = *(v32 + 32);

  *&v133 = v29;
  *(&v133 + 1) = a2;
  sub_1A524B6A4();
  v34 = v102;
  swift_getKeyPath();
  *&v133 = v34;
  sub_1A52415D4();

  v35 = sub_1A5243B84();
  (*(*(v35 - 8) + 56))(v89, 1, 1, v35);
  sub_1A5243A94();
  sub_1A52430B4();
  v102 = v29;
  v103 = a2;
  sub_1A524B6C4();
  v36 = v133;
  v37 = v134;
  swift_getKeyPath();
  v131 = v36;
  v132 = v37;
  v85 = MEMORY[0x1E6981948];
  sub_1A49501C0(0, &qword_1EB1459C8, v88, MEMORY[0x1E6981948]);
  sub_1A524B914();

  v88 = v130;
  v89 = v129;

  *&v81 = v29;
  v102 = v29;
  v103 = a2;
  *&v82 = a2;
  sub_1A524B6C4();
  v38 = v133;
  v39 = v134;
  swift_getKeyPath();
  v127 = v38;
  v128 = v39;
  sub_1A524B914();

  v86 = v126;
  v87 = v125;

  v102 = v29;
  v103 = a2;
  sub_1A524B6C4();
  v40 = v133;
  v41 = v134;
  swift_getKeyPath();
  v123 = v40;
  v124 = v41;
  sub_1A524B914();

  v43 = v120;
  v42 = v121;
  v44 = v122;

  swift_getKeyPath();
  v117 = v43;
  v118 = v42;
  v119 = v44;
  sub_1A49501C0(0, &qword_1EB13B798, type metadata accessor for PhotosDynamicHeaderMockGeometryModel, v85);
  sub_1A524B914();

  v84 = v115;
  v85 = v114;
  v83 = v116;

  v102 = v81;
  v103 = v82;
  sub_1A524B6C4();
  v45 = v133;
  v46 = v134;
  swift_getKeyPath();
  v112 = v45;
  v113 = v46;
  sub_1A524B914();

  v47 = v109;
  v48 = v110;
  v49 = v111;

  swift_getKeyPath();
  v106 = v47;
  v107 = v48;
  v108 = v49;
  sub_1A524B914();

  v50 = v102;
  v51 = v103;
  v81 = v105;
  v82 = v104;

  *&v133 = v50;
  *(&v133 + 1) = v51;
  v134 = v82;
  v135 = v81;
  v52 = v98;
  sub_1A5243044();
  v53 = sub_1A524BC64();
  v55 = v54;
  sub_1A524A224();
  v56 = sub_1A524A3C4();
  v58 = v57;
  LOBYTE(v46) = v59;
  v61 = v60;

  sub_1A4950A08(0, &qword_1EB145938, MEMORY[0x1E69C2370], sub_1A46026D8);
  v63 = v52 + *(v62 + 36);
  *v63 = v56;
  *(v63 + 8) = v58;
  *(v63 + 16) = v46 & 1;
  *(v63 + 24) = v61;
  *(v63 + 32) = v53;
  *(v63 + 40) = v55;
  v64 = sub_1A5248874();
  v65 = sub_1A524A064();
  v66 = v52 + *(v93 + 44);
  v67 = v52;
  *v66 = v64;
  *(v66 + 8) = v65;
  v68 = v97;
  sub_1A4951824(v99, v97, sub_1A49502C0);
  v69 = v90;
  sub_1A4951824(v96, v90, type metadata accessor for PhotosDynamicHeaderLegibilityOverlay);
  v93 = *(v100 + 16);
  v71 = v91;
  v70 = v92;
  (v93)(v91, v101, v92);
  v72 = v67;
  v73 = v94;
  sub_1A4951824(v72, v94, sub_1A4950368);
  v74 = v68;
  v75 = v95;
  sub_1A4951824(v74, v95, sub_1A49502C0);
  sub_1A4950224(0, v76);
  v78 = v77;
  sub_1A4951824(v69, v75 + v77[12], type metadata accessor for PhotosDynamicHeaderLegibilityOverlay);
  *(v75 + v78[16]) = v33;
  (v93)(v75 + v78[20], v71, v70);
  sub_1A4951824(v73, v75 + v78[24], sub_1A4950368);
  sub_1A495188C(v98, sub_1A4950368);
  v79 = *(v100 + 8);
  v79(v101, v70);
  sub_1A495188C(v96, type metadata accessor for PhotosDynamicHeaderLegibilityOverlay);
  sub_1A495188C(v99, sub_1A49502C0);
  sub_1A495188C(v73, sub_1A4950368);
  v79(v71, v70);
  sub_1A495188C(v69, type metadata accessor for PhotosDynamicHeaderLegibilityOverlay);
  return sub_1A495188C(v97, sub_1A49502C0);
}

double sub_1A494FB14@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A49509B0();
  sub_1A52415D4();

  result = *(v3 + 32);
  *a2 = result;
  return result;
}

double sub_1A494FBB4@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A49509B0();
  sub_1A52415D4();

  result = *(v3 + 40);
  *a2 = result;
  return result;
}

double sub_1A494FC54@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A49509B0();
  sub_1A52415D4();

  *a2 = *(v3 + 16);

  return result;
}

void sub_1A494FD00(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1A524B414();
  sub_1A41822D8();
  v3 = sub_1A524B4F4();
  v4 = sub_1A524BC64();
  v6 = v5;
  sub_1A4951544(0);
  v8 = (a2 + *(v7 + 36));
  *&v28 = sub_1A524B454();
  v9 = sub_1A524B4F4();
  sub_1A3E42C60(0);
  v11 = v8 + *(v10 + 36);
  v12 = *(sub_1A5248A14() + 20);
  v13 = *MEMORY[0x1E697F468];
  v14 = sub_1A52494A4();
  (*(*(v14 - 8) + 104))(&v11[v12], v13, v14);
  __asm { FMOV            V0.2D, #10.0 }

  *v11 = _Q0;
  sub_1A3E42C88(0);
  *&v11[*(v20 + 36)] = 256;
  *v8 = v9;
  sub_1A524BC74();
  sub_1A52481F4();
  sub_1A4951658(0, &qword_1EB1459A8, sub_1A3E42C60, MEMORY[0x1E697E048]);
  v22 = (v8 + *(v21 + 36));
  *v22 = v28;
  v22[1] = v29;
  v22[2] = v30;
  sub_1A49515D0(0);
  v24 = (v8 + *(v23 + 36));
  *v24 = v4;
  v24[1] = v6;
  *a2 = v3;
  v25 = sub_1A5248874();
  LOBYTE(v4) = sub_1A524A064();
  sub_1A4951658(0, &qword_1EB1459B8, sub_1A4951544, MEMORY[0x1E6980A38]);
  v27 = a2 + *(v26 + 36);
  *v27 = v25;
  v27[8] = v4;
}

uint64_t sub_1A494FF10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1A49501C0(0, &qword_1EB1459D0, MEMORY[0x1E69C2748], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14[-v7 - 8];
  type metadata accessor for PhotosDynamicHeaderMockGeometryModel(0);
  *(v2 + 16) = PhotosDynamicHeaderMockGeometryModel.__allocating_init()();
  *(v2 + 32) = xmmword_1A53503F0;
  sub_1A5241604();
  sub_1A3F1B4DC(a1, v14, &qword_1EB128D10, &qword_1EB128D20, off_1E7721088);
  v9 = *MEMORY[0x1E69C2738];
  v10 = sub_1A52439B4();
  v11 = *(v10 - 8);
  (*(v11 + 104))(v8, v9, v10);
  (*(v11 + 56))(v8, 0, 1, v10);
  sub_1A5243A94();
  swift_allocObject();
  *(v3 + 24) = sub_1A5243A54();
  sub_1A4950C10();
  sub_1A3EA8D18(a2, &qword_1EB13FB90, &qword_1EB13FCC0, MEMORY[0x1E6981170]);
  sub_1A3EA8D18(a1, &qword_1EB128D10, &qword_1EB128D20, off_1E7721088);
  return v3;
}

void sub_1A4950128(uint64_t a1)
{
  if (!qword_1EB145908)
  {
    sub_1A49501C0(255, &qword_1EB145910, sub_1A4950224, MEMORY[0x1E6981F40]);
    v1 = sub_1A52483B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB145908);
    }
  }
}

void sub_1A49501C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A4950224(uint64_t a1, double a2)
{
  if (!qword_1EB145918)
  {
    sub_1A49502C0(255);
    type metadata accessor for PhotosDynamicHeaderLegibilityOverlay(255);
    sub_1A49502E8(255);
    sub_1A4950368(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB145918);
    }
  }
}

void sub_1A49502E8(uint64_t a1)
{
  if (!qword_1EB145928)
  {
    sub_1A5243A94();
    v1 = sub_1A52430C4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB145928);
    }
  }
}

void sub_1A4950368(uint64_t a1)
{
  if (!qword_1EB145930)
  {
    sub_1A4950A08(255, &qword_1EB145938, MEMORY[0x1E69C2370], sub_1A46026D8);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB145930);
    }
  }
}

double sub_1A49503F8(uint64_t a1)
{
  if (*(v1 + 16) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A49509B0();
    sub_1A52415C4();
  }

  return result;
}

void sub_1A49504FC(double a1)
{
  if (*(v1 + 32) == a1)
  {
    *(v1 + 32) = a1;

    sub_1A4950C10();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A49509B0();
    sub_1A52415C4();
  }
}

void sub_1A495060C(double a1)
{
  if (*(v1 + 40) == a1)
  {
    *(v1 + 40) = a1;

    sub_1A4950C10();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A49509B0();
    sub_1A52415C4();
  }
}

double sub_1A495071C(uint64_t a1)
{
  if (*(v1 + 24) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A49509B0();
    sub_1A52415C4();
  }

  return result;
}

double sub_1A4950820()
{
  swift_getKeyPath();
  sub_1A49509B0();
  sub_1A52415D4();

  return result;
}

double sub_1A4950894()
{
  swift_getKeyPath();
  sub_1A49509B0();
  sub_1A52415D4();

  return result;
}

double sub_1A4950908@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A49509B0();
  sub_1A52415D4();

  *a2 = *(v3 + 24);

  return result;
}

unint64_t sub_1A49509B0()
{
  result = qword_1EB1E1920[0];
  if (!qword_1EB1E1920[0])
  {
    type metadata accessor for PhotosDynamicHeaderPreviewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1E1920);
  }

  return result;
}

void sub_1A4950A08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
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

void sub_1A4950A7C(uint64_t a1)
{
  if (!qword_1EB145950)
  {
    sub_1A49501C0(255, &qword_1EB145910, sub_1A4950224, MEMORY[0x1E6981F40]);
    sub_1A4951428(&qword_1EB145958, &qword_1EB145910, sub_1A4950224);
    v1 = sub_1A524B8B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB145950);
    }
  }
}

double sub_1A4950B30()
{
  swift_getKeyPath();
  sub_1A49509B0();
  sub_1A52415D4();

  return *(v0 + 32);
}

double sub_1A4950BA0()
{
  swift_getKeyPath();
  sub_1A49509B0();
  sub_1A52415D4();

  return *(v0 + 40);
}

double sub_1A4950C10()
{
  swift_getKeyPath();
  sub_1A49509B0();
  sub_1A52415D4();

  v1 = *(v0 + 16);
  swift_getKeyPath();

  sub_1A52415D4();

  v3.n128_u64[0] = *(v0 + 32);
  (*(*v1 + 304))(v2, v3);

  swift_getKeyPath();
  sub_1A52415D4();

  swift_getKeyPath();

  sub_1A52415D4();

  sub_1A5243A64();

  swift_getKeyPath();
  sub_1A52415D4();

  swift_getKeyPath();

  sub_1A52415D4();

  sub_1A5243A74();

  return result;
}

uint64_t sub_1A4950E14()
{

  v1 = OBJC_IVAR____TtC12PhotosUICoreP33_E38DBB66FFC9A000078576E6CA29014031PhotosDynamicHeaderPreviewModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

double sub_1A4950EC0@<D0>(uint64_t a1@<X8>)
{
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  sub_1A3F1B4DC(&v11, v7, &qword_1EB128D10, &qword_1EB128D20, off_1E7721088);
  v2 = MEMORY[0x1E6981170];
  sub_1A3F1B4DC(&v8, v6, &qword_1EB13FB90, &qword_1EB13FCC0, MEMORY[0x1E6981170]);
  type metadata accessor for PhotosDynamicHeaderPreviewModel(0);
  v3 = swift_allocObject();
  sub_1A494FF10(v7, v6);
  sub_1A3EA8D18(&v8, &qword_1EB13FB90, &qword_1EB13FCC0, v2);
  sub_1A3EA8D18(&v11, &qword_1EB128D10, &qword_1EB128D20, off_1E7721088);
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  *(&v9 + 1) = sub_1A5241E94();
  v10 = sub_1A49513E0(&qword_1EB145960, MEMORY[0x1E69C1C80], MEMORY[0x1E69C1C78]);
  __swift_allocate_boxed_opaque_existential_1(&v8);
  sub_1A5241E84();
  sub_1A3F1B4DC(&v11, v7, &qword_1EB128D10, &qword_1EB128D20, off_1E7721088);
  sub_1A3F1B4DC(&v8, v6, &qword_1EB13FB90, &qword_1EB13FCC0, v2);
  v4 = swift_allocObject();
  sub_1A494FF10(v7, v6);
  sub_1A3EA8D18(&v11, &qword_1EB128D10, &qword_1EB128D20, off_1E7721088);
  sub_1A3EA8D18(&v8, &qword_1EB13FB90, &qword_1EB13FCC0, v2);
  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 16) = v4;
  result = 0.0;
  *(a1 + 24) = xmmword_1A5375D70;
  *(a1 + 40) = 0xEB0000000072656ELL;
  return result;
}

unint64_t sub_1A49510EC()
{
  result = qword_1EB145968;
  if (!qword_1EB145968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145968);
  }

  return result;
}

uint64_t sub_1A4951160(uint64_t a1)
{
  v2 = sub_1A49517D0();

  return MEMORY[0x1EEDD9FE8](a1, v2);
}

uint64_t sub_1A49511AC(uint64_t a1)
{
  v2 = sub_1A49517D0();

  return MEMORY[0x1EEDD9FE0](a1, v2);
}

uint64_t sub_1A4951210(uint64_t a1)
{
  result = sub_1A5241614();
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

unint64_t sub_1A49512D0()
{
  result = qword_1EB145970;
  if (!qword_1EB145970)
  {
    sub_1A4950A08(255, &qword_1EB145948, sub_1A4950A7C, MEMORY[0x1E6980270]);
    sub_1A49513E0(&qword_1EB145978, sub_1A4950A7C, MEMORY[0x1E6981880]);
    sub_1A49513E0(&qword_1EB130608, MEMORY[0x1E6980270], MEMORY[0x1E6980268]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145970);
  }

  return result;
}

uint64_t sub_1A49513E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A4951428(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A49501C0(255, a2, a3, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A495148C(uint64_t a1)
{
  if (!qword_1EB145990)
  {
    sub_1A495156C(255, &qword_1EB13EC58, sub_1A4005524, &type metadata for PhotosDynamicHeaderPreview);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB145990);
    }
  }
}

void sub_1A495156C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_1A5248804();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A49515D0(uint64_t a1)
{
  if (!qword_1EB1459A0)
  {
    sub_1A4951658(255, &qword_1EB1459A8, sub_1A3E42C60, MEMORY[0x1E697E048]);
    sub_1A49516BC();
    v1 = sub_1A5248AE4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1459A0);
    }
  }
}

void sub_1A4951658(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_1A5248804();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1A49516BC()
{
  result = qword_1EB1459B0;
  if (!qword_1EB1459B0)
  {
    sub_1A4951658(255, &qword_1EB1459A8, sub_1A3E42C60, MEMORY[0x1E697E048]);
    sub_1A3E43048();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1459B0);
  }

  return result;
}

unint64_t sub_1A49517D0()
{
  result = qword_1EB1459C0;
  if (!qword_1EB1459C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1459C0);
  }

  return result;
}

uint64_t sub_1A4951824(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A495188C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1A49518EC()
{
  result = qword_1EB1459D8;
  if (!qword_1EB1459D8)
  {
    sub_1A4951658(255, &qword_1EB1459B8, sub_1A4951544, MEMORY[0x1E6980A38]);
    sub_1A4951990();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1459D8);
  }

  return result;
}

unint64_t sub_1A4951990()
{
  result = qword_1EB1459E0;
  if (!qword_1EB1459E0)
  {
    sub_1A4951544(255);
    sub_1A49513E0(&qword_1EB1459E8, sub_1A49515D0, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1459E0);
  }

  return result;
}

uint64_t sub_1A4951B60()
{
  v1 = OBJC_IVAR___PXStoryExceptionThrowingSongsProducer_logContext;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A4951BF8(uint64_t a1)
{
  v3 = OBJC_IVAR___PXStoryExceptionThrowingSongsProducer_logContext;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id sub_1A4951CF4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoryExceptionThrowingSongsProducer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A4951D80()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  return v1;
}

void sub_1A4951DF4(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  *a2 = v3;
}

uint64_t sub_1A4951E74(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1A52479F4();
}

uint64_t sub_1A4951EE8(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1A52479F4();
}

uint64_t sub_1A4951F58(uint64_t a1, uint64_t a2)
{
  sub_1A4370038(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A4951FBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A4952020(void *a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_1A4952570(a1, a2);

  return v4;
}

double sub_1A4952078(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  if (v4 != a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong chooseMapViewDidTapCardForMapStyle_];
      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1A495213C()
{
  sub_1A4370038(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = (&v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A3EE53E0(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A5240E64();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4951F58(v0 + OBJC_IVAR____TtC12PhotosUICore28MapOptionsChooseMapViewModel_mapAttribution, v3);
  sub_1A437006C(0);
  v12 = v11;
  if ((*(*(v11 - 8) + 48))(v3, 1, v11) == 1)
  {
    sub_1A49529A8(v3, sub_1A4370038);
    (*(v8 + 56))(v6, 1, 1, v7);
    return sub_1A49529A8(v6, sub_1A3EE53E0);
  }

  sub_1A408A03C(v3 + *(v12 + 48), v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_1A49529A8(v6, sub_1A3EE53E0);
  }

  (*(v8 + 32))(v10, v6, v7);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = sub_1A5240D44();
    [v15 chooseMapViewDidTapAttributionWithURL_];
    swift_unknownObjectRelease();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1A4952404()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore28MapOptionsChooseMapViewModel__availableStyles;
  v2 = MEMORY[0x1E695C070];
  sub_1A4951FBC(0, &qword_1EB145A60, sub_1A4951D4C, MEMORY[0x1E695C070]);
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = OBJC_IVAR____TtC12PhotosUICore28MapOptionsChooseMapViewModel__mapStyle;
  sub_1A4951FBC(0, &qword_1EB145A68, type metadata accessor for MapOptionsMapStyle, v2);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  sub_1A49529A8(v0 + OBJC_IVAR____TtC12PhotosUICore28MapOptionsChooseMapViewModel_mapAttribution, sub_1A4370038);
  sub_1A3D35A10(v0 + OBJC_IVAR____TtC12PhotosUICore28MapOptionsChooseMapViewModel_delegate);

  return swift_deallocClassInstance();
}

uint64_t sub_1A4952570(void *a1, uint64_t a2)
{
  v37 = a2;
  sub_1A3EE53E0(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v10 = sub_1A5240E64();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v36 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4951FBC(0, &qword_1EB145A60, sub_1A4951D4C, MEMORY[0x1E695C070]);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v34 - v16;
  v18 = OBJC_IVAR____TtC12PhotosUICore28MapOptionsChooseMapViewModel__availableStyles;
  v39 = &unk_1F172F3F8;
  sub_1A4951D4C(0);
  sub_1A52479A4();
  (*(v15 + 32))(v2 + v18, v17, v14);
  swift_unknownObjectWeakInit();
  if (a1)
  {
    v19 = [a1 string];
    if (v19)
    {
      v20 = v19;
      v21 = [a1 url];
      if (v21)
      {
        v22 = v21;
        sub_1A5240DE4();

        v23 = 0;
      }

      else
      {
        v23 = 1;
      }

      v24 = *(v11 + 56);
      v24(v6, v23, 1, v10);
      sub_1A408A03C(v6, v9);
      if ((*(v11 + 48))(v9, 1, v10) != 1)
      {
        v35 = v24;
        v28 = *(v11 + 32);
        v29 = v36;
        v28(v36, v9, v10);
        v30 = (v2 + OBJC_IVAR____TtC12PhotosUICore28MapOptionsChooseMapViewModel_mapAttribution);
        sub_1A437006C(0);
        v32 = v31;
        v33 = *(v31 + 48);
        *v30 = v20;
        v28(&v30[v33], v29, v10);
        v35(&v30[v33], 0, 1, v10);
        (*(*(v32 - 8) + 56))(v30, 0, 1, v32);
        goto LABEL_9;
      }

      sub_1A49529A8(v9, sub_1A3EE53E0);
    }
  }

  v25 = OBJC_IVAR____TtC12PhotosUICore28MapOptionsChooseMapViewModel_mapAttribution;
  sub_1A437006C(0);
  (*(*(v26 - 8) + 56))(v2 + v25, 1, 1, v26);
LABEL_9:
  swift_beginAccess();
  v38 = v37;
  type metadata accessor for MapOptionsMapStyle(0);
  sub_1A52479A4();
  swift_endAccess();
  return v2;
}

uint64_t sub_1A49529A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for MapOptionsChooseMapViewModel(uint64_t a1)
{
  result = qword_1EB1E1C90;
  if (!qword_1EB1E1C90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A4952A5C(uint64_t a1)
{
  sub_1A4951FBC(319, &qword_1EB145A60, sub_1A4951D4C, MEMORY[0x1E695C070]);
  if (v1 <= 0x3F)
  {
    sub_1A4951FBC(319, &qword_1EB145A68, type metadata accessor for MapOptionsMapStyle, MEMORY[0x1E695C070]);
    if (v2 <= 0x3F)
    {
      sub_1A4370038(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_1A4952BC8()
{
  v0 = sub_1A5240BA4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1A5240BB4();
  __swift_allocate_value_buffer(v6, qword_1EB1E1CA8);
  __swift_project_value_buffer(v6, qword_1EB1E1CA8);
  sub_1A524C5B4();
  sub_1A5241244();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1A5240BC4();
}

uint64_t (*static RenamePersonIntent.title.modify(uint64_t a1, double a2))(uint64_t a1)
{
  if (qword_1EB1E1CA0 != -1)
  {
    swift_once();
  }

  v2 = sub_1A5240BB4();
  __swift_project_value_buffer(v2, qword_1EB1E1CA8);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1A4952EB8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB1E1CA0 != -1)
  {
    swift_once();
  }

  v3 = sub_1A5240BB4();
  v4 = __swift_project_value_buffer(v3, qword_1EB1E1CA8);
  swift_beginAccess();
  return (*(*(v3 - 8) + 16))(a1, v4, v3);
}

uint64_t sub_1A4952F78(uint64_t a1, double a2)
{
  if (qword_1EB1E1CA0 != -1)
  {
    swift_once();
  }

  v3 = sub_1A5240BB4();
  v4 = __swift_project_value_buffer(v3, qword_1EB1E1CA8);
  swift_beginAccess();
  (*(*(v3 - 8) + 24))(v4, a1, v3);
  return swift_endAccess();
}