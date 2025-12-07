uint64_t sub_1A4175170(id *a1)
{
  sub_1A3EE53E0(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  v9 = [*a1 artworkURL];
  if (v9)
  {
    v10 = v9;
    sub_1A5240DE4();

    v11 = sub_1A5240E64();
    (*(*(v11 - 8) + 56))(v8, 0, 1, v11);
  }

  else
  {
    v12 = sub_1A5240E64();
    (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  }

  type metadata accessor for MusicPickerRow(0);
  sub_1A4176D24(v8, v4, sub_1A3EE53E0);
  sub_1A4175800(0);
  sub_1A524B6B4();
  return sub_1A3C68780(v8, sub_1A3EE53E0);
}

char *sub_1A4175300(char *a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  result = sub_1A4176D94(a1, a2, a3, *v4, a4);
  *v4 = result;
  return result;
}

void sub_1A4175320()
{
  v1 = *(v0 + 24);
  v2 = swift_allocObject();
  v3 = *(v1 + 32);
  v4 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  *(v2 + 48) = v3;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4175428(uint64_t a1, __n128 a2)
{
  if (!qword_1EB133780)
  {
    sub_1A41754A8(255, a2);
    sub_1A41756E0(v2);
    v3 = sub_1A524A2D4();
    if (!v4)
    {
      atomic_store(v3, &qword_1EB133780);
    }
  }
}

void sub_1A41754A8(uint64_t a1, __n128 a2)
{
  if (!qword_1EB133788)
  {
    sub_1A4177624(255, &qword_1EB133790, &type metadata for FlexMusicListItem, MEMORY[0x1E69E62F8]);
    sub_1A4175564(255);
    sub_1A4175664(v2);
    v3 = sub_1A524B9D4();
    if (!v4)
    {
      atomic_store(v3, &qword_1EB133788);
    }
  }
}

void sub_1A4175564(uint64_t a1)
{
  if (!qword_1EB133798)
  {
    type metadata accessor for MusicPickerRow(255);
    sub_1A41757B8(&qword_1EB1337A0, type metadata accessor for MusicPickerRow, &unk_1A531F8A0);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB133798);
    }
  }
}

uint64_t type metadata accessor for MusicPickerRow(uint64_t a1)
{
  result = qword_1EB16E7F0;
  if (!qword_1EB16E7F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1A4175664(__n128 a1)
{
  result = qword_1EB1337A8;
  if (!qword_1EB1337A8)
  {
    sub_1A4177624(255, &qword_1EB133790, &type metadata for FlexMusicListItem, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1337A8);
  }

  return result;
}

unint64_t sub_1A41756E0(__n128 a1)
{
  result = qword_1EB1337B0;
  if (!qword_1EB1337B0)
  {
    sub_1A41754A8(255, a1);
    type metadata accessor for MusicPickerRow(255);
    sub_1A41757B8(&qword_1EB1337A0, type metadata accessor for MusicPickerRow, &unk_1A531F8A0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1337B0);
  }

  return result;
}

uint64_t sub_1A41757B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A4175834(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A4175898(uint64_t a1, uint64_t a2)
{
  sub_1A4175800(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1A41758FC(uint64_t a1)
{
  if (!qword_1EB1337C0)
  {
    sub_1A4175964(255);
    v1 = sub_1A52483B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1337C0);
    }
  }
}

void sub_1A4175998(uint64_t a1)
{
  if (!qword_1EB1337D0)
  {
    sub_1A4175A58(255);
    sub_1A40745F4(255);
    sub_1A4175834(255, &qword_1EB133830, sub_1A4175CA8, MEMORY[0x1E69E6720]);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB1337D0);
    }
  }
}

void sub_1A4175A78(uint64_t a1)
{
  if (!qword_1EB1337E0)
  {
    sub_1A4175B0C(255);
    sub_1A41757B8(&qword_1EB133818, sub_1A4175B0C, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B8B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1337E0);
    }
  }
}

void sub_1A4175B40(uint64_t a1)
{
  if (!qword_1EB1337F0)
  {
    sub_1A4175BB0(255);
    sub_1A4175C74(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB1337F0);
    }
  }
}

void sub_1A4175C18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A4175CA8(uint64_t a1, __n128 a2)
{
  if (!qword_1EB133838)
  {
    sub_1A4177624(255, &qword_1EB121CC0, MEMORY[0x1E6981748], MEMORY[0x1E69E6720]);
    v2 = sub_1A5249754();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB133838);
    }
  }
}

void sub_1A4175D2C(uint64_t a1)
{
  if (!qword_1EB133850)
  {
    sub_1A4175964(255);
    sub_1A41757B8(&qword_1EB133858, sub_1A4175964, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB133850);
    }
  }
}

void sub_1A4175DC0(uint64_t a1)
{
  if (!qword_1EB133860)
  {
    sub_1A4175C18(255, &qword_1EB133848, sub_1A4175D2C);
    sub_1A4175E7C(255, &qword_1EB127C70, sub_1A3D6F4A4, MEMORY[0x1E6981EF8], MEMORY[0x1E697FD48]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB133860);
    }
  }
}

void sub_1A4175E7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1A4175EE4(uint64_t a1)
{
  if (!qword_1EB133868)
  {
    sub_1A524D6B4();
    sub_1A4175DC0(255);
    sub_1A41757B8(&qword_1EB133870, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
    sub_1A4175FA0();
    v1 = sub_1A5248A54();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB133868);
    }
  }
}

unint64_t sub_1A4175FA0()
{
  result = qword_1EB133878;
  if (!qword_1EB133878)
  {
    sub_1A4175DC0(255);
    sub_1A4176020();
    sub_1A3F963C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133878);
  }

  return result;
}

unint64_t sub_1A4176020()
{
  result = qword_1EB133880;
  if (!qword_1EB133880)
  {
    sub_1A4175C18(255, &qword_1EB133848, sub_1A4175D2C);
    sub_1A41757B8(&unk_1EB133888, sub_1A4175D2C, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133880);
  }

  return result;
}

uint64_t sub_1A41760EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4176154()
{
  v1 = type metadata accessor for MusicPickerRow(0) - 8;
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));
  v3 = [objc_opt_self() sharedLibrary];
  [v3 downloadProgressForAsset:*v2 resourceType:2];

  sub_1A4177624(0, &qword_1EB121BF0, MEMORY[0x1E69E63B0], MEMORY[0x1E6981790]);
  return sub_1A524B6B4();
}

uint64_t sub_1A4176298()
{
  v1 = *(type metadata accessor for MusicPickerRow(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_1A4175170(v2);
}

void sub_1A4176334(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1A524D6B4();
    a3(255);
    sub_1A41757B8(&qword_1EB133870, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
    sub_1A41757B8(a4, a5, MEMORY[0x1E697C278]);
    v9 = sub_1A5248A54();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

id sub_1A4176424()
{
  v1 = type metadata accessor for MusicPickerRow(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = *(v2 + 16);
  if (!v3 || ![v3 currentAsset])
  {
LABEL_11:
    sub_1A4177624(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    return sub_1A524B6B4();
  }

  swift_unknownObjectRelease();
  result = [v3 currentAsset];
  if (result)
  {
    v5 = [result identifier];
    swift_unknownObjectRelease();
    v6 = sub_1A524C674();
    v8 = v7;

    v9 = [*v2 identifier];
    v10 = sub_1A524C674();
    v12 = v11;

    if (v6 != v10 || v8 != v12)
    {
      sub_1A524EAB4();
    }

    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t objectdestroyTm_30()
{
  v1 = type metadata accessor for MusicPickerRow(0);
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));

  v3 = v2 + *(v1 + 24);
  v4 = sub_1A5240E64();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v3, 1, v4))
  {
    (*(v5 + 8))(v3, v4);
  }

  sub_1A4175800(0);

  return swift_deallocObject();
}

uint64_t sub_1A41767B0()
{
  v1 = type metadata accessor for MusicPickerRow(0);
  v2 = *(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)) + 16);
  if (v2)
  {
    [v2 state];
  }

  sub_1A4177624(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  return sub_1A524B6B4();
}

unint64_t sub_1A4176894()
{
  result = qword_1EB1338C8;
  if (!qword_1EB1338C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1338C8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_So16PXFlexMusicAssetCIegg_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_1A4176990(uint64_t a1)
{
  sub_1A4175834(319, &qword_1EB133770, sub_1A4173638, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1A4175800(319);
    if (v2 <= 0x3F)
    {
      sub_1A4177624(319, &qword_1EB121BF0, MEMORY[0x1E69E63B0], MEMORY[0x1E6981790]);
      if (v3 <= 0x3F)
      {
        sub_1A4177624(319, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1A4176ADC(__n128 a1)
{
  result = qword_1EB133940;
  if (!qword_1EB133940)
  {
    sub_1A4176B90(255, a1);
    sub_1A41757B8(&qword_1EB1337B8, sub_1A4175428, MEMORY[0x1E697CD20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133940);
  }

  return result;
}

void sub_1A4176B90(uint64_t a1, __n128 a2)
{
  if (!qword_1EB133948)
  {
    sub_1A4175428(255, a2);
    v2 = sub_1A524BA74();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB133948);
    }
  }
}

void sub_1A4176BF4(uint64_t a1)
{
  if (!qword_1EB133958)
  {
    sub_1A4175B0C(255);
    v1 = sub_1A52483B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB133958);
    }
  }
}

unint64_t sub_1A4176C5C(__n128 a1)
{
  result = qword_1EB133960;
  if (!qword_1EB133960)
  {
    sub_1A4177624(255, &qword_1EB121CC0, MEMORY[0x1E6981748], MEMORY[0x1E69E6720]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133960);
  }

  return result;
}

double sub_1A4176CF4(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
    return j__swift_retain_0();
  }

  return result;
}

uint64_t sub_1A4176D0C(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
    return j__swift_release(a1);
  }

  return a1;
}

uint64_t sub_1A4176D24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

char *sub_1A4176D94(char *result, int64_t a2, char a3, char *a4, __n128 a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_1A4177624(0, &qword_1EB133970, &type metadata for FlexMusicListItem, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

void sub_1A4176EB8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  sub_1A4177624(0, &qword_1EB133790, &type metadata for FlexMusicListItem, MEMORY[0x1E69E62F8]);
  sub_1A4175564(0);
  sub_1A4175664(v6);
  type metadata accessor for MusicPickerRow(255);
  sub_1A41757B8(&qword_1EB1337A0, type metadata accessor for MusicPickerRow, &unk_1A531F8A0);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A417703C(void *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  return v2(v5);
}

unint64_t sub_1A4177078()
{
  result = qword_1EB133968;
  if (!qword_1EB133968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133968);
  }

  return result;
}

void sub_1A41770CC()
{
  v1 = *(v0 + 56);
  if (*(v0 + 48) == 1)
  {
    v2 = *(v0 + 24);
    if (v2)
    {
      v3 = *(v0 + 64);
      v4 = v2;
      if ([v4 currentAsset])
      {
        swift_unknownObjectRelease();
        v5 = [v4 currentAsset];
        if (!v5)
        {
          __break(1u);
          return;
        }

        v6 = [v5 identifier];
        swift_unknownObjectRelease();
        v7 = sub_1A524C674();
        v9 = v8;

        v10 = [v1 identifier];
        v11 = sub_1A524C674();
        v13 = v12;

        if (v7 == v11 && v9 == v13)
        {
        }

        else
        {
          v15 = sub_1A524EAB4();

          if ((v15 & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        if ([v4 state] == 3)
        {
          v24 = sub_1A4173E38;
          v25 = 0;
          v20 = MEMORY[0x1E69E9820];
          v21 = 1107296256;
          v22 = sub_1A3D59380;
          v23 = &block_descriptor_43;
          v16 = _Block_copy(&v20);
LABEL_14:
          [v4 performChanges_];

          _Block_release(v16);
          return;
        }
      }

LABEL_13:
      v17 = swift_allocObject();
      *(v17 + 16) = v1;
      *(v17 + 24) = v3;
      v24 = sub_1A4177364;
      v25 = v17;
      v20 = MEMORY[0x1E69E9820];
      v21 = 1107296256;
      v22 = sub_1A3D59380;
      v23 = &block_descriptor_113;
      v16 = _Block_copy(&v20);
      v18 = v3;
      v19 = v1;

      goto LABEL_14;
    }
  }

  v14 = *(v0 + 32);
  if (v14)
  {
    v14(v1);
  }
}

id sub_1A4177364(void *a1)
{
  [a1 setCurrentAsset_];

  return [a1 setDesiredPlayState_];
}

uint64_t sub_1A41773B4()
{
  v1 = *(v0 + 24);
  v2 = UIViewController.pxView.getter();
  sub_1A4177624(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1A531C940;
  v4 = [v2 topAnchor];
  v5 = [v1 safeAreaLayoutGuide];
  v6 = [v5 topAnchor];

  v7 = [v4 constraintEqualToAnchor_];
  *(v3 + 32) = v7;
  v8 = [v2 rightAnchor];
  v9 = [v1 safeAreaLayoutGuide];
  v10 = [v9 rightAnchor];

  v11 = [v8 constraintEqualToAnchor_];
  *(v3 + 40) = v11;
  v12 = [v2 leftAnchor];
  v13 = [v1 safeAreaLayoutGuide];
  v14 = [v13 leftAnchor];

  v15 = [v12 constraintEqualToAnchor_];
  *(v3 + 48) = v15;
  v16 = [v2 bottomAnchor];
  v17 = [v1 safeAreaLayoutGuide];
  v18 = [v17 bottomAnchor];

  v19 = [v16 constraintEqualToAnchor_];
  *(v3 + 56) = v19;

  return v3;
}

void sub_1A4177624(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A417767C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A5243F74();
  v40 = *(v2 - 8);
  v41 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v42 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5241F84();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1A5241FC4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v39 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4177FFC(0, &qword_1EB133978, sub_1A4177CCC, sub_1A4178698);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v37 - v10;
  sub_1A3E86CD0(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for GenerativeStoryEventSuggestion(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4965628(&v43);
  sub_1A3DB7F50();
  v19 = swift_dynamicCast();
  v20 = *(v16 + 56);
  if (v19)
  {
    v20(v14, 0, 1, v15);
    v21 = sub_1A4179BC8(v14, v18, type metadata accessor for GenerativeStoryEventSuggestion);
    v37[2] = v37;
    MEMORY[0x1EEE9AC00](v21);
    v38 = a1;
    MEMORY[0x1EEE9AC00](v22);
    sub_1A4177E40(0);
    v37[1] = v23;
    sub_1A4178254(0);
    v37[0] = v24;
    sub_1A4177F44(255);
    v26 = v25;
    v27 = sub_1A5248A14();
    sub_1A4177FC8(255);
    v29 = v28;
    v30 = sub_1A4178124();
    v43 = v29;
    v44 = v30;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v32 = sub_1A417820C(&qword_1EB128080, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAE0]);
    v43 = v26;
    v44 = v27;
    v45 = OpaqueTypeConformance2;
    v46 = v32;
    swift_getOpaqueTypeConformance2();
    sub_1A4178568(&qword_1EB1339E8, sub_1A4178254, sub_1A41785E8);
    sub_1A52428A4();
    KeyPath = swift_getKeyPath();
    sub_1A5241F74();
    sub_1A5241FA4();
    sub_1A5247B94();
    sub_1A5241F54();
    (*(v40 + 104))(v42, *MEMORY[0x1E69C2930], v41);
    v34 = &v11[*(v8 + 36)];
    sub_1A4178698(0);
    sub_1A5244034();
    *v34 = KeyPath;
    v35 = v38;
    sub_1A3CDFD30(v11, v38);
    (*(v9 + 56))(v35, 0, 1, v8);
    return sub_1A41796FC(v18, type metadata accessor for GenerativeStoryEventSuggestion);
  }

  else
  {
    v20(v14, 1, 1, v15);
    sub_1A41796FC(v14, sub_1A3E86CD0);
    return (*(v9 + 56))(a1, 1, 1, v8);
  }
}

void sub_1A4177CCC(uint64_t a1, double a2)
{
  if (!qword_1EB133980)
  {
    sub_1A4177E40(255);
    sub_1A4178254(255);
    sub_1A4177F44(255);
    sub_1A5248A14();
    sub_1A4177FC8(255);
    sub_1A4178124();
    swift_getOpaqueTypeConformance2();
    sub_1A417820C(&qword_1EB128080, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAE0]);
    swift_getOpaqueTypeConformance2();
    sub_1A4178568(&qword_1EB1339E8, sub_1A4178254, sub_1A41785E8);
    v2 = sub_1A52428B4();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB133980);
    }
  }
}

void sub_1A4177E40(uint64_t a1)
{
  if (!qword_1EB133988)
  {
    sub_1A4177F44(255);
    sub_1A5248A14();
    sub_1A4177FC8(255);
    sub_1A4178124();
    swift_getOpaqueTypeConformance2();
    sub_1A417820C(&qword_1EB128080, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAE0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB133988);
    }
  }
}

void sub_1A4177F44(uint64_t a1)
{
  if (!qword_1EB133990)
  {
    sub_1A4177FC8(255);
    sub_1A4178124();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB133990);
    }
  }
}

void sub_1A4177FFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
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

void sub_1A41780C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_1A4178124()
{
  result = qword_1EB1339A8;
  if (!qword_1EB1339A8)
  {
    sub_1A4177FC8(255);
    sub_1A4178568(&qword_1EB1339B0, sub_1A4178070, sub_1A3F97E3C);
    sub_1A417820C(&qword_1EB128A00, sub_1A3E42C88, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1339A8);
  }

  return result;
}

uint64_t sub_1A417820C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A41782A4(uint64_t a1)
{
  if (!qword_1EB1339C8)
  {
    sub_1A4177FFC(255, &qword_1EB13CFA0, sub_1A3EC43B0, sub_1A3EBB1B4);
    sub_1A4178378(255);
    sub_1A4178408();
    sub_1A41784E8();
    v1 = sub_1A5242DB4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1339C8);
    }
  }
}

void sub_1A4178378(uint64_t a1)
{
  if (!qword_1EB1339D0)
  {
    sub_1A4177FFC(255, &qword_1EB13CFA0, sub_1A3EC43B0, sub_1A3EBB1B4);
    v1 = sub_1A5249754();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1339D0);
    }
  }
}

unint64_t sub_1A4178408()
{
  result = qword_1EB1339D8;
  if (!qword_1EB1339D8)
  {
    sub_1A4177FFC(255, &qword_1EB13CFA0, sub_1A3EC43B0, sub_1A3EBB1B4);
    sub_1A3FF8F74();
    sub_1A417820C(&qword_1EB1277A0, sub_1A3EBB1B4, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1339D8);
  }

  return result;
}

unint64_t sub_1A41784E8()
{
  result = qword_1EB1339E0;
  if (!qword_1EB1339E0)
  {
    sub_1A4178378(255);
    sub_1A4178408();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1339E0);
  }

  return result;
}

uint64_t sub_1A4178568(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
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

unint64_t sub_1A41785E8()
{
  result = qword_1EB1339F0;
  if (!qword_1EB1339F0)
  {
    sub_1A417827C(255);
    sub_1A417820C(&qword_1EB1339F8, sub_1A41782A4, MEMORY[0x1E69C2270]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1339F0);
  }

  return result;
}

void sub_1A41786CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A4178730(uint64_t a2@<X8>)
{
  v10[4] = a2;
  v2 = sub_1A5248A14();
  MEMORY[0x1EEE9AC00](v2);
  v10[1] = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5243834();
  MEMORY[0x1EEE9AC00](v4);
  sub_1A41786CC(0, &unk_1EB129180, MEMORY[0x1E69C2060], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1A4177FC8(0);
  MEMORY[0x1EEE9AC00](v6);
  sub_1A4177F44(0);
  v8 = *(v7 - 8);
  v10[2] = v7;
  v10[3] = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10[0] = v10 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4892530();
}

void sub_1A4178CCC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v57 = a3;
  v58 = a2;
  v51 = a1;
  v5 = type metadata accessor for LemonadeGenerativeMemoriesEventDisambiguationCell(0);
  v6 = *(v5 - 8);
  v56 = v5 - 8;
  v7 = v6;
  v8 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v54 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v49 - v10;
  v50 = &v49 - v10;
  v12 = type metadata accessor for GenerativeStoryEventSuggestion(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v53 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v49 - v16;
  v18 = sub_1A5242DC4();
  v19 = MEMORY[0x1EEE9AC00](v18);
  v55 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 104))(v19);
  sub_1A4179B60(a1, v17, type metadata accessor for GenerativeStoryEventSuggestion);
  sub_1A4179B60(a2, v11, type metadata accessor for LemonadeGenerativeMemoriesEventDisambiguationCell);
  v22 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v23 = (v14 + *(v7 + 80) + v22) & ~*(v7 + 80);
  v24 = swift_allocObject();
  v52 = v24;
  sub_1A4179BC8(v17, v24 + v22, type metadata accessor for GenerativeStoryEventSuggestion);
  sub_1A4179BC8(v50, v24 + v23, type metadata accessor for LemonadeGenerativeMemoriesEventDisambiguationCell);
  v25 = v53;
  sub_1A4179B60(v51, v53, type metadata accessor for GenerativeStoryEventSuggestion);
  v26 = v54;
  sub_1A4179B60(v58, v54, type metadata accessor for LemonadeGenerativeMemoriesEventDisambiguationCell);
  v27 = swift_allocObject();
  sub_1A4179BC8(v25, v27 + v22, type metadata accessor for GenerativeStoryEventSuggestion);
  sub_1A4179BC8(v26, v27 + v23, type metadata accessor for LemonadeGenerativeMemoriesEventDisambiguationCell);
  sub_1A4177FFC(0, &qword_1EB13CFA0, sub_1A3EC43B0, sub_1A3EBB1B4);
  sub_1A4178378(0);
  sub_1A4178408();
  sub_1A41784E8();
  v28 = v57;
  sub_1A5242DA4();
  LOBYTE(v27) = sub_1A524A074();
  sub_1A5247BC4();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  sub_1A417827C(0);
  v38 = v28 + *(v37 + 36);
  *v38 = v27;
  *(v38 + 8) = v30;
  *(v38 + 16) = v32;
  *(v38 + 24) = v34;
  *(v38 + 32) = v36;
  *(v38 + 40) = 0;
  LOBYTE(v27) = sub_1A524A084();
  sub_1A5247BC4();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  sub_1A4178254(0);
  v48 = v28 + *(v47 + 36);
  *v48 = v27;
  *(v48 + 8) = v40;
  *(v48 + 16) = v42;
  *(v48 + 24) = v44;
  *(v48 + 32) = v46;
  *(v48 + 40) = 0;
}

void sub_1A41791AC()
{
  v3 = sub_1A524A204();
  MEMORY[0x1EEE9AC00](v3);
  sub_1A3D5F9DC();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

__n128 sub_1A41793FC@<Q0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_1A524A204();
  MEMORY[0x1EEE9AC00](v5);
  if (*(a1 + 40))
  {
    sub_1A3D5F9DC();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A4177FFC(0, &qword_1EB13CFA0, sub_1A3EC43B0, sub_1A3EBB1B4);
  sub_1A4178408();
  sub_1A5249744();
  *(a3 + 32) = v9;
  *(a3 + 48) = v10;
  *(a3 + 64) = v11;
  result = v8;
  *a3 = v7;
  *(a3 + 16) = v8;
  return result;
}

uint64_t sub_1A41796FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A417975C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A4179BC8(a1, a2, type metadata accessor for LemonadeGenerativeMemoriesEventDisambiguationItem);
  v3 = type metadata accessor for LemonadeGenerativeMemoriesEventDisambiguationCell(0);
  *(a2 + v3[5]) = 0x402E000000000000;
  *(a2 + v3[6]) = 0x4018000000000000;
  *(a2 + v3[7]) = 0x4028000000000000;
  v4 = v3[8];
  sub_1A524B404();
  v5 = sub_1A524B474();

  *(a2 + v4) = v5;
  *(a2 + v3[9]) = 0x4034000000000000;
  *(a2 + v3[10]) = 0x4020000000000000;
  *(a2 + v3[11]) = 1;
}

uint64_t type metadata accessor for LemonadeGenerativeMemoriesEventDisambiguationCell(uint64_t a1)
{
  result = qword_1EB1AB880;
  if (!qword_1EB1AB880)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A41798BC(uint64_t a1)
{
  result = type metadata accessor for LemonadeGenerativeMemoriesEventDisambiguationItem(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1A4179950()
{
  result = qword_1EB133A00;
  if (!qword_1EB133A00)
  {
    sub_1A41799C8(255);
    sub_1A4179A50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133A00);
  }

  return result;
}

void sub_1A41799C8(uint64_t a1)
{
  if (!qword_1EB133A08)
  {
    sub_1A4177FFC(255, &qword_1EB133978, sub_1A4177CCC, sub_1A4178698);
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB133A08);
    }
  }
}

unint64_t sub_1A4179A50()
{
  result = qword_1EB133A10;
  if (!qword_1EB133A10)
  {
    sub_1A4177FFC(255, &qword_1EB133978, sub_1A4177CCC, sub_1A4178698);
    sub_1A417820C(&qword_1EB133A18, sub_1A4177CCC, MEMORY[0x1E69C1FE8]);
    sub_1A417820C(&qword_1EB1279C8, sub_1A4178698, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133A10);
  }

  return result;
}

uint64_t sub_1A4179B60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4179BC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A4179C30()
{
  type metadata accessor for GenerativeStoryEventSuggestion(0);
  type metadata accessor for LemonadeGenerativeMemoriesEventDisambiguationCell(0);

  sub_1A41791AC();
}

void objectdestroyTm_31(double a1)
{
  type metadata accessor for GenerativeStoryEventSuggestion(0);
  type metadata accessor for LemonadeGenerativeMemoriesEventDisambiguationCell(0);

  sub_1A5246734();
}

double sub_1A4179EE0@<D0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for GenerativeStoryEventSuggestion(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  type metadata accessor for LemonadeGenerativeMemoriesEventDisambiguationCell(0);

  *&result = sub_1A41793FC(v2 + v5, a1).n128_u64[0];
  return result;
}

uint64_t (*sub_1A417A000(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A417A054;
}

uint64_t sub_1A417A054(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    v6 = (*(*v5 + 216))(result);
    v8 = v7;

    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v6 & 0xFFFFFFFFFFFFLL;
    }

    return (*(*v5 + 376))(v9 != 0);
  }

  return result;
}

void sub_1A417A110()
{
  swift_getKeyPath();
  (*(*v0 + 576))();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A417A1A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 216))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

double sub_1A417A254(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = v2[3] == a1 && v2[4] == a2;
  if (v5 || (sub_1A524EAB4() & 1) != 0)
  {
    v2[3] = a1;
    v2[4] = a2;

    v7 = (*(*v2 + 216))(v6);
    v9 = v8;

    v10 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = v7 & 0xFFFFFFFFFFFFLL;
    }

    (*(*v2 + 376))(v10 != 0);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v13.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v2 + 584))(v13);
  }

  return result;
}

uint64_t (*sub_1A417A40C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 576))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore34GenerativeStorySuggestionViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A417F264(&qword_1EB125328, type metadata accessor for GenerativeStorySuggestionViewModel, &protocol conformance descriptor for GenerativeStorySuggestionViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A417A000(v4);
  return sub_1A417A55C;
}

uint64_t sub_1A417A688(uint64_t a1, uint64_t a2)
{
  sub_1A3C487B8(0, &qword_1EB125798, type metadata accessor for GenerativeStorySuggestion, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - v5;
  sub_1A417F42C(a1, &v8 - v5, &qword_1EB125798, type metadata accessor for GenerativeStorySuggestion);
  return (*(**a2 + 280))(v6);
}

uint64_t sub_1A417A78C(uint64_t a1)
{
  sub_1A3C487B8(0, &qword_1EB125798, type metadata accessor for GenerativeStorySuggestion, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11[-v4];
  v6 = OBJC_IVAR____TtC12PhotosUICore34GenerativeStorySuggestionViewModel__selectedSuggestion;
  swift_beginAccess();
  sub_1A417F42C(v1 + v6, v5, &qword_1EB125798, type metadata accessor for GenerativeStorySuggestion);
  v7 = sub_1A417E740(v5, a1);
  sub_1A417F3BC(v5, &qword_1EB125798, type metadata accessor for GenerativeStorySuggestion);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    v9.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    *&v11[-16] = v1;
    *&v11[-8] = a1;
    (*(*v1 + 584))(v9);
  }

  else
  {
    sub_1A417F42C(a1, v5, &qword_1EB125798, type metadata accessor for GenerativeStorySuggestion);
    swift_beginAccess();
    sub_1A417EE10(v5, v1 + v6, &qword_1EB125798, type metadata accessor for GenerativeStorySuggestion);
    swift_endAccess();
  }

  return sub_1A417F3BC(a1, &qword_1EB125798, type metadata accessor for GenerativeStorySuggestion);
}

uint64_t (*sub_1A417A9B8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 576))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore34GenerativeStorySuggestionViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A417F264(&qword_1EB125328, type metadata accessor for GenerativeStorySuggestionViewModel, &protocol conformance descriptor for GenerativeStorySuggestionViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A417A5AC(v4);
  return sub_1A417AB08;
}

uint64_t sub_1A417ABA4@<X0>(uint64_t *a2@<X1>, unint64_t *a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X8>)
{
  swift_getKeyPath();
  (*(*v5 + 576))();

  v10 = *a2;
  swift_beginAccess();
  return sub_1A417F42C(v5 + v10, a5, a3, a4);
}

uint64_t sub_1A417AC9C(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1E6969530];
  sub_1A3C487B8(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v9 - v6;
  sub_1A417F42C(a1, &v9 - v6, &qword_1EB12AFE0, v4);
  return (*(**a2 + 328))(v7);
}

uint64_t sub_1A417ADA0(uint64_t a1)
{
  v3 = MEMORY[0x1E6969530];
  sub_1A3C487B8(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13[-v5];
  v7 = OBJC_IVAR____TtC12PhotosUICore34GenerativeStorySuggestionViewModel__lastSuggestionsFetchedDate;
  swift_beginAccess();
  sub_1A417F42C(v1 + v7, v6, &qword_1EB12AFE0, v3);
  v8 = sub_1A417EA90(v6, a1);
  sub_1A417F3BC(v6, &qword_1EB12AFE0, v3);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    v10.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    *&v13[-16] = v1;
    *&v13[-8] = a1;
    (*(*v1 + 584))(v10);
  }

  else
  {
    v11 = MEMORY[0x1E6969530];
    sub_1A417F42C(a1, v6, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
    swift_beginAccess();
    sub_1A417EE10(v6, v1 + v7, &qword_1EB12AFE0, v11);
    swift_endAccess();
  }

  return sub_1A417F3BC(a1, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
}

uint64_t sub_1A417AFCC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t *a5)
{
  sub_1A3C487B8(0, a3, a4, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v15 - v11;
  sub_1A417F42C(a2, &v15 - v11, a3, a4);
  v13 = *a5;
  swift_beginAccess();
  sub_1A417EE10(v12, a1 + v13, a3, a4);
  return swift_endAccess();
}

uint64_t (*sub_1A417B0B8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 576))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore34GenerativeStorySuggestionViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A417F264(&qword_1EB125328, type metadata accessor for GenerativeStorySuggestionViewModel, &protocol conformance descriptor for GenerativeStorySuggestionViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A417AB14(v4);
  return sub_1A417B208;
}

uint64_t sub_1A417B288@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 368))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1A417B358(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 576))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore34GenerativeStorySuggestionViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A417F264(&qword_1EB125328, type metadata accessor for GenerativeStorySuggestionViewModel, &protocol conformance descriptor for GenerativeStorySuggestionViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A417B214(v4);
  return sub_1A417B4A8;
}

uint64_t sub_1A417B514()
{
  swift_getKeyPath();
  (*(*v0 + 576))();

  v1 = v0 + OBJC_IVAR____TtC12PhotosUICore34GenerativeStorySuggestionViewModel__selectedIndex;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_1A417B5A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 416))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

double sub_1A417B65C(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC12PhotosUICore34GenerativeStorySuggestionViewModel__selectedIndex;
  swift_beginAccess();
  if ((*(v5 + 8) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *v5 != a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    *v5 = a1;
    *(v5 + 8) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
  (*(*v2 + 584))(v8);

  return result;
}

uint64_t (*sub_1A417B790(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 576))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore34GenerativeStorySuggestionViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A417F264(&qword_1EB125328, type metadata accessor for GenerativeStorySuggestionViewModel, &protocol conformance descriptor for GenerativeStorySuggestionViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A417B4B4(v4);
  return sub_1A417B8E0;
}

uint64_t sub_1A417B960@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 464))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1A417BA30(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 576))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore34GenerativeStorySuggestionViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A417F264(&qword_1EB125328, type metadata accessor for GenerativeStorySuggestionViewModel, &protocol conformance descriptor for GenerativeStorySuggestionViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A417B8EC(v4);
  return sub_1A417BB80;
}

uint64_t sub_1A417BC00(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  (*(*v2 + 576))();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

uint64_t sub_1A417BC88@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 512))();
  *a2 = result & 1;
  return result;
}

void sub_1A417BD58(char a1, uint64_t *a2, uint64_t a3)
{
  v4 = a1 & 1;
  v5 = *a2;
  swift_beginAccess();
  if (*(v3 + v5) == v4)
  {
    *(v3 + v5) = v4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v7.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v3 + 584))(v7);
  }
}

uint64_t (*sub_1A417BE54(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 576))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore34GenerativeStorySuggestionViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A417F264(&qword_1EB125328, type metadata accessor for GenerativeStorySuggestionViewModel, &protocol conformance descriptor for GenerativeStorySuggestionViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A417BB8C(v4);
  return sub_1A417BFA4;
}

uint64_t sub_1A417BFB0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A3C4A780();
  v3 = sub_1A5246F24();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v2, v3);
}

uint64_t sub_1A417C020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_1A417C078(a1, a2, a3);
  return v6;
}

char *sub_1A417C078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1A5246F24();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + 3) = 0;
  *(v4 + 4) = 0xE000000000000000;
  v12 = OBJC_IVAR____TtC12PhotosUICore34GenerativeStorySuggestionViewModel__selectedSuggestion;
  v13 = type metadata accessor for GenerativeStorySuggestion(0);
  (*(*(v13 - 8) + 56))(&v4[v12], 1, 1, v13);
  v14 = OBJC_IVAR____TtC12PhotosUICore34GenerativeStorySuggestionViewModel__lastSuggestionsFetchedDate;
  v15 = sub_1A5241144();
  (*(*(v15 - 8) + 56))(&v4[v14], 1, 1, v15);
  v4[OBJC_IVAR____TtC12PhotosUICore34GenerativeStorySuggestionViewModel__hideSuggestions] = 0;
  v16 = &v4[OBJC_IVAR____TtC12PhotosUICore34GenerativeStorySuggestionViewModel__selectedIndex];
  *v16 = 0;
  v16[8] = 1;
  v4[OBJC_IVAR____TtC12PhotosUICore34GenerativeStorySuggestionViewModel__forceSuggestionsVisibility] = 0;
  v4[OBJC_IVAR____TtC12PhotosUICore34GenerativeStorySuggestionViewModel__playedIntroAnimation] = 0;
  sub_1A5241604();
  *(v4 + 2) = a2;
  v17 = *(v9 + 16);
  v17(&v4[OBJC_IVAR____TtC12PhotosUICore34GenerativeStorySuggestionViewModel_logger], a3, v8);
  type metadata accessor for GenerativeStoryBackgroundAssetsManager(0);
  *(v4 + 5) = sub_1A4A071A0(a1);
  type metadata accessor for GenerativeStoryPromptSuggestionManager(0);
  *&v4[OBJC_IVAR____TtC12PhotosUICore34GenerativeStorySuggestionViewModel_promptSuggestionManager] = sub_1A45BD2B8(a1);
  type metadata accessor for GenerativeStoryInternalSuggestionViewModel(0);
  v17(v11, a3, v8);
  v18 = sub_1A3FABD08(a1, v11);
  (*(v9 + 8))(a3, v8);
  *&v4[OBJC_IVAR____TtC12PhotosUICore34GenerativeStorySuggestionViewModel_internalSuggestionViewModel] = v18;
  return v4;
}

uint64_t sub_1A417C2E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v22 = a1;
  v23 = a2;
  v4 = sub_1A52449C4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for GenerativeStorySuggestion(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1E69E85F0];
  sub_1A3C487B8(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v22 - v14;
  v16 = *(v3 + OBJC_IVAR____TtC12PhotosUICore34GenerativeStorySuggestionViewModel_promptSuggestionManager);
  sub_1A524CC74();
  v17 = sub_1A524CCB4();
  (*(*(v17 - 8) + 56))(v15, 0, 1, v17);
  sub_1A417EFA4(v22, v11);
  (*(v5 + 16))(v7, v23, v4);
  v18 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v19 = (v10 + *(v5 + 80) + v18) & ~*(v5 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = 0;
  *(v20 + 3) = 0;
  *(v20 + 4) = v16;
  sub_1A417F008(v11, &v20[v18]);
  (*(v5 + 32))(&v20[v19], v7, v4);

  sub_1A3DCD53C(0, 0, v15, &unk_1A531FC20, v20);

  return sub_1A417F3BC(v15, &qword_1EB12B270, v12);
}

uint64_t sub_1A417C5BC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a4;
  v6[3] = a6;
  v10 = sub_1A52449C4();
  v6[4] = v10;
  v6[5] = *(v10 - 8);
  v6[6] = swift_task_alloc();
  v13 = (*(*a4 + 408) + **(*a4 + 408));
  v11 = swift_task_alloc();
  v6[7] = v11;
  *v11 = v6;
  v11[1] = sub_1A417C760;

  return v13(a5, a6);
}

uint64_t sub_1A417C760()
{

  return MEMORY[0x1EEE6DFA0](sub_1A417C85C, 0, 0);
}

uint64_t sub_1A417C85C()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  (*(v2 + 104))(v1, *MEMORY[0x1E69C1070], v3);
  v4 = sub_1A52449B4();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v5 = *(v0 + 16);
    *(v0 + 72) = 2;
    v9 = (*(*v5 + 400) + **(*v5 + 400));
    v6 = swift_task_alloc();
    *(v0 + 64) = v6;
    *v6 = v0;
    v6[1] = sub_1A417CA38;

    return v9(v0 + 72);
  }

  else
  {

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_1A417CA38()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1A417CB48(char a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E6720];
  sub_1A3C487B8(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v19 - v6;
  sub_1A3C487B8(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], v4);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v19 - v9;
  v11 = sub_1A5246F04();
  v12 = sub_1A524D264();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109120;
    *(v13 + 4) = a1 & 1;
    _os_log_impl(&dword_1A3C1C000, v11, v12, "Updating prompt suggestions [preferNewSuggestions: %{BOOL}d]", v13, 8u);
    MEMORY[0x1A590EEC0](v13, -1, -1);
  }

  sub_1A5241104();
  v14 = sub_1A5241144();
  (*(*(v14 - 8) + 56))(v10, 0, 1, v14);
  (*(*v2 + 328))(v10);
  v15 = *(v2 + OBJC_IVAR____TtC12PhotosUICore34GenerativeStorySuggestionViewModel_promptSuggestionManager);
  sub_1A524CC74();
  v16 = sub_1A524CCB4();
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  *(v17 + 32) = v15;
  *(v17 + 40) = a1 & 1;

  sub_1A3DCD53C(0, 0, v7, &unk_1A531FC30, v17);

  return sub_1A417F3BC(v7, &qword_1EB12B270, MEMORY[0x1E69E85F0]);
}

uint64_t sub_1A417CE40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 24) = a5;
  v8 = (*(*a4 + 400) + **(*a4 + 400));
  v6 = swift_task_alloc();
  *(v5 + 16) = v6;
  *v6 = v5;
  v6[1] = sub_1A3D60150;

  return v8(v5 + 24);
}

uint64_t sub_1A417CF70()
{
  (*(*v0 + 552))(0);
  v1 = (*(*v0 + 376))(0);
  v2 = *((*(*v0 + 184))(v1) + 16);

  v3 = *(*v0 + 520);

  return v3(v2 != 0);
}

uint64_t sub_1A417D064()
{
  v1[8] = v0;
  v2 = sub_1A524E5E4();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  sub_1A524CC54();
  v1[12] = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  v1[13] = v4;
  v1[14] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A417D158, v4, v3);
}

uint64_t sub_1A417D158()
{
  sub_1A3C52C70(0, &qword_1EB126860, off_1E771E0D0);
  v1 = [swift_getObjCClassFromMetadata() sharedInstance];
  v0[15] = v1;
  sub_1A3C487B8(0, &unk_1EB120248, type metadata accessor for PXGenerativeStoryBackgroundMode, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52FC9F0;
  *(inited + 32) = [v1 entryPointBackgroundMode];
  v3 = [v1 fullScreenBackgroundMode];
  *(inited + 40) = v3;
  v4 = *(inited + 32);
  if (v4 != 1 && v3 != 1 && v4 != 0 && v3 != 0)
  {
    swift_setDeallocating();

LABEL_19:

    v14 = v0[1];

    return v14();
  }

  if (![v1 simulateSlowFetchForBackgroundAssets])
  {

    v1 = v0[15];
    (*(**(v0[8] + 40) + 304))(v13);
    goto LABEL_19;
  }

  v8 = sub_1A5246F04();
  v9 = sub_1A524D264();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1A3C1C000, v8, v9, "Simulating slow fetch for background assets", v10, 2u);
    MEMORY[0x1A590EEC0](v10, -1, -1);
  }

  sub_1A524EBB4();
  v11 = swift_task_alloc();
  v0[16] = v11;
  *v11 = v0;
  v11[1] = sub_1A417D428;

  return sub_1A3DCFAB0(0x8AC7230489E80000, 0, 0, 0, 1);
}

uint64_t sub_1A417D428()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[11];
  v5 = v2[10];
  v6 = v2[9];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[13];
    v8 = v3[14];
    v9 = sub_1A417F5E0;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[13];
    v8 = v3[14];
    v9 = sub_1A417D5BC;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1A417D5BC()
{

  v2 = v0[15];
  (*(**(v0[8] + 40) + 304))(v1);

  v3 = v0[1];

  return v3();
}

uint64_t GenerativeStorySuggestionViewModel.deinit()
{

  sub_1A417F3BC(v0 + OBJC_IVAR____TtC12PhotosUICore34GenerativeStorySuggestionViewModel__selectedSuggestion, &qword_1EB125798, type metadata accessor for GenerativeStorySuggestion);
  sub_1A417F3BC(v0 + OBJC_IVAR____TtC12PhotosUICore34GenerativeStorySuggestionViewModel__lastSuggestionsFetchedDate, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
  v1 = OBJC_IVAR____TtC12PhotosUICore34GenerativeStorySuggestionViewModel_logger;
  v2 = sub_1A5246F24();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC12PhotosUICore34GenerativeStorySuggestionViewModel___observationRegistrar;
  v4 = sub_1A5241614();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t GenerativeStorySuggestionViewModel.__deallocating_deinit()
{

  sub_1A417F3BC(v0 + OBJC_IVAR____TtC12PhotosUICore34GenerativeStorySuggestionViewModel__selectedSuggestion, &qword_1EB125798, type metadata accessor for GenerativeStorySuggestion);
  sub_1A417F3BC(v0 + OBJC_IVAR____TtC12PhotosUICore34GenerativeStorySuggestionViewModel__lastSuggestionsFetchedDate, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
  v1 = OBJC_IVAR____TtC12PhotosUICore34GenerativeStorySuggestionViewModel_logger;
  v2 = sub_1A5246F24();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC12PhotosUICore34GenerativeStorySuggestionViewModel___observationRegistrar;
  v4 = sub_1A5241614();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_1A417DA38()
{
  v1 = [*(v0 + 16) string];
  v2 = sub_1A524C674();

  return v2;
}

uint64_t sub_1A417DAEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  v15 = type metadata accessor for GenerativeStorySuggestion(0);
  v16 = v15[6];
  v17 = sub_1A5244A24();
  (*(*(v17 - 8) + 32))(&a9[v16], a4, v17);
  sub_1A417F2AC(a5, &a9[v15[7]], &qword_1EB124C68, MEMORY[0x1E69C10C8]);
  v18 = v15[8];
  v19 = sub_1A5244984();
  result = (*(*(v19 - 8) + 32))(&a9[v18], a6, v19);
  *&a9[v15[9]] = a7;
  *&a9[v15[10]] = a8;
  return result;
}

uint64_t sub_1A417DC08()
{
  v0 = sub_1A52411C4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A52411B4();
  v4 = sub_1A5241164();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_1A417DCE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  v15 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v16 = sub_1A524C634();

  v17 = [v15 initWithString_];

  *(a9 + 2) = v17;
  v18 = type metadata accessor for GenerativeStorySuggestion(0);
  v19 = v18[6];
  v20 = sub_1A5244A24();
  (*(*(v20 - 8) + 32))(&a9[v19], a5, v20);
  sub_1A417F2AC(a6, &a9[v18[7]], &qword_1EB124C68, MEMORY[0x1E69C10C8]);
  v21 = v18[8];
  v22 = sub_1A5244984();
  result = (*(*(v22 - 8) + 32))(&a9[v21], a7, v22);
  *&a9[v18[9]] = a8;
  *&a9[v18[10]] = a10;
  return result;
}

void sub_1A417DE58()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  swift_beginAccess();
  *(v2 + 24) = v4;
  *(v2 + 32) = v3;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A417DF48()
{
  sub_1A524EC94();
  sub_1A524C794();
  sub_1A524DC04();
  sub_1A5244A24();
  sub_1A417F264(&qword_1EB133A28, MEMORY[0x1E69C10B0], MEMORY[0x1E69C10B8]);
  sub_1A524C4B4();
  sub_1A5244984();
  sub_1A417F264(&qword_1EB133A30, MEMORY[0x1E69C1060], MEMORY[0x1E69C1068]);
  sub_1A524C4B4();
  return sub_1A524ECE4();
}

uint64_t sub_1A417E058(uint64_t a1)
{
  sub_1A524C794();
  sub_1A524DC04();
  sub_1A5244A24();
  sub_1A417F264(&qword_1EB133A28, MEMORY[0x1E69C10B0], MEMORY[0x1E69C10B8]);
  sub_1A524C4B4();
  sub_1A5244984();
  sub_1A417F264(&qword_1EB133A30, MEMORY[0x1E69C1060], MEMORY[0x1E69C1068]);
  return sub_1A524C4B4();
}

uint64_t sub_1A417E154(uint64_t a1)
{
  sub_1A524EC94();
  sub_1A524C794();
  sub_1A524DC04();
  sub_1A5244A24();
  sub_1A417F264(&qword_1EB133A28, MEMORY[0x1E69C10B0], MEMORY[0x1E69C10B8]);
  sub_1A524C4B4();
  sub_1A5244984();
  sub_1A417F264(&qword_1EB133A30, MEMORY[0x1E69C1060], MEMORY[0x1E69C1068]);
  sub_1A524C4B4();
  return sub_1A524ECE4();
}

uint64_t sub_1A417E264(void *a1, void *a2)
{
  v4 = sub_1A5244A54();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69C10C8];
  sub_1A3C487B8(0, &qword_1EB124C68, MEMORY[0x1E69C10C8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v37 - v10;
  sub_1A417F508(0, &qword_1EB124C60, &qword_1EB124C68, v8);
  v13 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v37 - v14;
  if (*a1 != *a2 && (sub_1A524EAB4() & 1) == 0)
  {
    return 0;
  }

  sub_1A3C52C70(0, &qword_1EB12B160, 0x1E69E58C0);
  if ((sub_1A524DBF4() & 1) == 0)
  {
    return 0;
  }

  v16 = type metadata accessor for GenerativeStorySuggestion(0);
  if ((sub_1A52449B4() & 1) == 0)
  {
    return 0;
  }

  v37 = v16;
  v38 = v5;
  v17 = *(v16 + 28);
  v18 = *(v13 + 48);
  v19 = MEMORY[0x1E69C10C8];
  sub_1A417F42C(a1 + v17, v15, &qword_1EB124C68, MEMORY[0x1E69C10C8]);
  v20 = a2 + v17;
  v21 = v38;
  sub_1A417F42C(v20, &v15[v18], &qword_1EB124C68, v19);
  v22 = *(v21 + 48);
  if (v22(v15, 1, v4) != 1)
  {
    sub_1A417F42C(v15, v11, &qword_1EB124C68, MEMORY[0x1E69C10C8]);
    if (v22(&v15[v18], 1, v4) != 1)
    {
      (*(v21 + 32))(v7, &v15[v18], v4);
      sub_1A417F264(&qword_1EB124C70, MEMORY[0x1E69C10C8], MEMORY[0x1E69C10D0]);
      v24 = sub_1A524C594();
      v25 = *(v21 + 8);
      v25(v7, v4);
      v25(v11, v4);
      sub_1A417F3BC(v15, &qword_1EB124C68, MEMORY[0x1E69C10C8]);
      if ((v24 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_12;
    }

    v23 = (*(v21 + 8))(v11, v4);
LABEL_10:
    sub_1A417F4AC(v15, &qword_1EB124C60, &qword_1EB124C68, MEMORY[0x1E69C10C8], v23);
    return 0;
  }

  if (v22(&v15[v18], 1, v4) != 1)
  {
    goto LABEL_10;
  }

  sub_1A417F3BC(v15, &qword_1EB124C68, MEMORY[0x1E69C10C8]);
LABEL_12:
  v26 = v37;
  if (sub_1A5244974())
  {
    v27 = *(v26 + 36);
    v28 = *(a2 + v27);
    if (*(a1 + v27))
    {
      if (!v28)
      {
        return 0;
      }

      v29 = sub_1A524B5A4();

      if ((v29 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v28)
    {
      return 0;
    }

    v30 = *(v26 + 40);
    v31 = *(a1 + v30);
    v32 = *(a2 + v30);
    if (v31)
    {
      if (v32)
      {
        sub_1A3C52C70(0, &qword_1EB1209D8, 0x1E6978A98);
        v33 = v32;
        v34 = v31;
        v35 = sub_1A524DBF4();

        if (v35)
        {
          return 1;
        }
      }
    }

    else if (!v32)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1A417E740(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativeStorySuggestion(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A3C487B8(0, &qword_1EB125798, type metadata accessor for GenerativeStorySuggestion, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v21 - v9);
  sub_1A417F508(0, &qword_1EB133A38, &qword_1EB125798, type metadata accessor for GenerativeStorySuggestion);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_1A417F42C(a1, &v21 - v12, &qword_1EB125798, type metadata accessor for GenerativeStorySuggestion);
  sub_1A417F42C(a2, &v13[v15], &qword_1EB125798, type metadata accessor for GenerativeStorySuggestion);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1A417F42C(v13, v10, &qword_1EB125798, type metadata accessor for GenerativeStorySuggestion);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      sub_1A417F008(&v13[v15], v7);
      v19 = sub_1A417E264(v10, v7);
      sub_1A417F580(v7);
      sub_1A417F580(v10);
      sub_1A417F3BC(v13, &qword_1EB125798, type metadata accessor for GenerativeStorySuggestion);
      v18 = v19 ^ 1;
      return v18 & 1;
    }

    sub_1A417F580(v10);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1A417F4AC(v13, &qword_1EB133A38, &qword_1EB125798, type metadata accessor for GenerativeStorySuggestion, v17);
    v18 = 1;
    return v18 & 1;
  }

  sub_1A417F3BC(v13, &qword_1EB125798, type metadata accessor for GenerativeStorySuggestion);
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_1A417EA90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5241144();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E6969530];
  sub_1A3C487B8(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v23 - v10;
  sub_1A417F508(0, &qword_1EB12AFD0, &qword_1EB12AFE0, v8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v23 - v13;
  v16 = *(v15 + 56);
  sub_1A417F42C(a1, &v23 - v13, &qword_1EB12AFE0, v8);
  sub_1A417F42C(a2, &v14[v16], &qword_1EB12AFE0, v8);
  v17 = *(v5 + 48);
  if (v17(v14, 1, v4) != 1)
  {
    sub_1A417F42C(v14, v11, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
    if (v17(&v14[v16], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v16], v4);
      sub_1A417F264(&unk_1EB12AFF0, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
      v20 = sub_1A524C594();
      v21 = *(v5 + 8);
      v21(v7, v4);
      v21(v11, v4);
      sub_1A417F3BC(v14, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
      v19 = v20 ^ 1;
      return v19 & 1;
    }

    v18 = (*(v5 + 8))(v11, v4);
    goto LABEL_6;
  }

  if (v17(&v14[v16], 1, v4) != 1)
  {
LABEL_6:
    sub_1A417F4AC(v14, &qword_1EB12AFD0, &qword_1EB12AFE0, MEMORY[0x1E6969530], v18);
    v19 = 1;
    return v19 & 1;
  }

  sub_1A417F3BC(v14, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_1A417EE10(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A3C487B8(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

void sub_1A417EF00()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16) + OBJC_IVAR____TtC12PhotosUICore34GenerativeStorySuggestionViewModel__selectedIndex;
  swift_beginAccess();
  *v3 = v1;
  *(v3 + 8) = v2;
}

uint64_t sub_1A417EFA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativeStorySuggestion(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A417F008(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativeStorySuggestion(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A417F06C()
{
  v2 = *(type metadata accessor for GenerativeStorySuggestion(0) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_1A52449C4() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 32);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1A3CA8098;

  return sub_1A417C5BC(v8, v9, v10, v7, v0 + v3, v0 + v6);
}

uint64_t sub_1A417F1A0()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3D60150;

  return sub_1A417CE40(v4, v5, v6, v2, v3);
}

uint64_t sub_1A417F264(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A417F2AC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A3C487B8(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A417F3BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A3C487B8(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A417F42C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A3C487B8(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A417F4AC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), double a5)
{
  sub_1A417F508(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1A417F508(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1A3C487B8(255, a3, a4, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1A417F580(uint64_t a1)
{
  v2 = type metadata accessor for GenerativeStorySuggestion(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A417F720()
{
  v1 = [v0 viewModel];
  v8[4] = sub_1A417F8B4;
  v8[5] = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1A3D7692C;
  v8[3] = &block_descriptor_114;
  v2 = _Block_copy(v8);
  [v1 performChanges_];
  _Block_release(v2);

  v3 = objc_opt_self();
  v4 = sub_1A524C634();
  sub_1A3E75770(MEMORY[0x1E69E7CC0]);
  sub_1A3C7B6A4(0, v5);
  v6 = sub_1A524C3D4();

  [v3 sendEvent:v4 withPayload:v6];

  v7 = [objc_opt_self() sharedSession];
  [v7 reportSearchButtonTappedWhenScoped_];
}

id PhotosGridSearchActionPerformer.__allocating_init(viewModel:actionType:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_allocWithZone(v3);
  v6 = sub_1A524C634();

  v7 = [v5 initWithViewModel:a1 actionType:v6];

  return v7;
}

id PhotosGridSearchActionPerformer.init(viewModel:actionType:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1A524C634();

  v10.receiver = v3;
  v10.super_class = type metadata accessor for PhotosGridSearchActionPerformer(v6, v7);
  v8 = objc_msgSendSuper2(&v10, sel_initWithViewModel_actionType_, a1, v5);

  return v8;
}

id PhotosGridSearchActionPerformer.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PhotosGridSearchActionPerformer(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_1A417FB34(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ContentSyndicationReviewUtilities(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1A417FB68@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v66 = a2;
  v65 = sub_1A5247BF4();
  v63 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v62 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v61 = &v55 - v5;
  sub_1A4180B7C(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v64 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v55 - v9;
  v56 = sub_1A5248964();
  v11 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v55 - v15;
  v17 = sub_1A5248984();
  v18 = *(v17 - 8);
  v57 = v17;
  v58 = v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41808DC(0, v19);
  v55 = v22;
  v23 = *(v22 - 8);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v55 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4180808(0, v24);
  v60 = v27;
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v59 = &v55 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v55 - v31;
  v67 = a1;
  sub_1A418095C(0);
  sub_1A4180B04();
  sub_1A524BA84();
  sub_1A5248954();
  v33 = v56;
  (*(v11 + 16))(v13, v16, v56);
  sub_1A5248974();
  (*(v11 + 8))(v16, v33);
  sub_1A4180F60(&qword_1EB133AA8, sub_1A41808DC, MEMORY[0x1E697D700]);
  v34 = v55;
  v35 = v57;
  sub_1A524A884();
  (*(v58 + 8))(v21, v35);
  (*(v23 + 8))(v26, v34);
  *v10 = sub_1A5249574();
  *(v10 + 1) = 0;
  v10[16] = 1;
  sub_1A4180E1C(0);
  v37 = &v10[*(v36 + 44)];
  v38 = v61;
  sub_1A5247BE4();
  v68 = 1;
  v40 = v62;
  v39 = v63;
  v41 = *(v63 + 16);
  v42 = v65;
  v41(v62, v38, v65);
  v43 = v68;
  *v37 = 0;
  v37[8] = v43;
  sub_1A4180C70(0);
  v41(&v37[*(v44 + 48)], v40, v42);
  v45 = *(v39 + 8);
  v45(v38, v42);
  v45(v40, v42);
  v46 = *(v28 + 16);
  v48 = v59;
  v47 = v60;
  v46(v59, v32, v60);
  v49 = v64;
  sub_1A4180EA0(v10, v64);
  v50 = v66;
  v51 = v46(v66, v48, v47);
  sub_1A4180798(0, v51);
  sub_1A4180EA0(v49, &v50[*(v52 + 48)]);
  sub_1A4180F04(v10);
  v53 = *(v28 + 8);
  v53(v32, v47);
  sub_1A4180F04(v49);
  return (v53)(v48, v47);
}

void sub_1A4180154(id *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  PXDisplayCollectionDetailedCountsMake();
  *a2 = v4;
}

uint64_t sub_1A4180184@<X0>(char *a2@<X8>)
{
  v4 = *v2;
  *a2 = sub_1A524BC74();
  *(a2 + 1) = v5;
  sub_1A4180714(0);
  return sub_1A417FB68(v4, &a2[*(v6 + 44)]);
}

uint64_t sub_1A41801C8(uint64_t a1, uint64_t a2)
{
  v29[1] = *MEMORY[0x1E69E9840];
  v29[0] = 0;
  v2 = [objc_opt_self() openPhotoLibraryWithWellKnownIdentifier:3 error:v29];
  if (v2)
  {
    v3 = v2;
    v4 = v29[0];
    v28 = PXContentSyndicationReviewFetchResultForPhotoLibrary(v3);
    v5 = [objc_allocWithZone(PXPhotosDataSourceConfiguration) initWithAssetFetchResult:v28 options:2];
    v6 = [objc_allocWithZone(PXPhotosDataSource) initWithPhotosDataSourceConfiguration_];
    v7 = [objc_allocWithZone(PXPhotoKitAssetsDataSourceManager) initWithPhotosDataSource_];
    v8 = [objc_allocWithZone(PXContentSyndicationReviewUIActionManager) initWithSelectionManager_];
    v9 = [v7 photoLibrary];
    v10 = [objc_opt_self() mediaProviderWithLibrary_];

    v11 = [objc_allocWithZone(off_1E7721830) initWithDataSourceManager:v7 mediaProvider:v10 selectionManager:0 assetActionManager:v8 assetCollectionActionManager:0];
    [v11 setFooterVisibilityStyle_];
    [v11 setAllowedActions_];
    [v11 setContentStartingPosition_];
    sub_1A3C52C70(0, &qword_1EB133A40, off_1E771D6F0);
    [v11 setDecorationViewClass_];
    [v11 setSectionBodyStyle_];
    sub_1A3C52C70(0, &unk_1EB133C50, off_1E771D718);
    v12 = [swift_getObjCClassFromMetadata() sharedInstance];
    v13 = [v12 photosGridViewContents];

    if (v13)
    {
      sub_1A3C52C70(0, &qword_1EB126850, &off_1E7721830);
      v14 = v11;
      v15 = sub_1A524CAC4();
      v16 = (v15 & 0xFFFFFFFFFFFFFF8);
      v16[2] = 3;
      v16[4] = v14;
      v16[5] = v14;
      v16[6] = v14;
      v29[0] = v15;
      sub_1A4180588(0);
      objc_allocWithZone(v17);
      v18 = v14;
      v19 = sub_1A5249624();
    }

    else
    {
      v22 = v11;
      PXDisplayCollectionDetailedCountsMake();
      v24 = v23;
      v29[0] = v23;
      sub_1A4180638(0);
      objc_allocWithZone(v25);
      v26 = v24;
      v19 = sub_1A5249624();
    }
  }

  else
  {
    v20 = v29[0];
    v21 = sub_1A5240B84();

    swift_willThrow();
    return 0;
  }

  return v19;
}

void sub_1A4180588(uint64_t a1)
{
  if (!qword_1EB133A48)
  {
    sub_1A41805E4();
    v1 = sub_1A5249654();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB133A48);
    }
  }
}

unint64_t sub_1A41805E4()
{
  result = qword_1EB1ABB10[0];
  if (!qword_1EB1ABB10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1ABB10);
  }

  return result;
}

void sub_1A4180638(uint64_t a1)
{
  if (!qword_1EB133A50)
  {
    sub_1A4180694();
    v1 = sub_1A5249654();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB133A50);
    }
  }
}

unint64_t sub_1A4180694()
{
  result = qword_1EB139060;
  if (!qword_1EB139060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB139060);
  }

  return result;
}

void sub_1A4180714(uint64_t a1)
{
  if (!qword_1EB133A58)
  {
    sub_1A4180C1C(255, &qword_1EB133A60, sub_1A4180798);
    v1 = sub_1A52483B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB133A58);
    }
  }
}

void sub_1A4180798(uint64_t a1, double a2)
{
  if (!qword_1EB133A68)
  {
    sub_1A4180808(255, a2);
    sub_1A4180B7C(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB133A68);
    }
  }
}

void sub_1A4180808(uint64_t a1, double a2)
{
  if (!qword_1EB133A70)
  {
    sub_1A41808DC(255, a2);
    sub_1A5248984();
    sub_1A4180F60(&qword_1EB133AA8, sub_1A41808DC, MEMORY[0x1E697D700]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB133A70);
    }
  }
}

void sub_1A41808DC(uint64_t a1, double a2)
{
  if (!qword_1EB133A78)
  {
    sub_1A418095C(255);
    sub_1A4180B04();
    v2 = sub_1A524BA94();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB133A78);
    }
  }
}

void sub_1A418095C(uint64_t a1)
{
  if (!qword_1EB133A80)
  {
    sub_1A4180A34(255);
    sub_1A3C52C70(255, &qword_1EB126850, &off_1E7721830);
    sub_1A4180F60(&qword_1EB133A90, sub_1A4180A34, MEMORY[0x1E69E6338]);
    sub_1A4180A9C();
    v1 = sub_1A524B9D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB133A80);
    }
  }
}

void sub_1A4180A34(uint64_t a1)
{
  if (!qword_1EB133A88)
  {
    sub_1A3C52C70(255, &qword_1EB126850, &off_1E7721830);
    v1 = sub_1A524CB74();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB133A88);
    }
  }
}

unint64_t sub_1A4180A9C()
{
  result = qword_1EB133A98;
  if (!qword_1EB133A98)
  {
    sub_1A3C52C70(255, &qword_1EB126850, &off_1E7721830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133A98);
  }

  return result;
}

unint64_t sub_1A4180B04()
{
  result = qword_1EB133AA0;
  if (!qword_1EB133AA0)
  {
    sub_1A418095C(255);
    sub_1A4180694();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133AA0);
  }

  return result;
}

void sub_1A4180B7C(uint64_t a1)
{
  if (!qword_1EB133AB0)
  {
    sub_1A4180C1C(255, &qword_1EB133AB8, sub_1A4180C70);
    sub_1A4180CD8(&qword_1EB133AC8, &qword_1EB133AB8, sub_1A4180C70);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB133AB0);
    }
  }
}

void sub_1A4180C1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A524BE24();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A4180C70(uint64_t a1)
{
  if (!qword_1EB133AC0)
  {
    sub_1A5247BF4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB133AC0);
    }
  }
}

uint64_t sub_1A4180CD8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A4180C1C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A4180D28()
{
  swift_getKeyPath();
  sub_1A4180A34(0);
  sub_1A4180F60(&qword_1EB133A90, sub_1A4180A34, MEMORY[0x1E69E6338]);
  sub_1A4180A9C();
  sub_1A4180694();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4180E1C(uint64_t a1)
{
  if (!qword_1EB133AD0)
  {
    sub_1A4180C1C(255, &qword_1EB133AB8, sub_1A4180C70);
    v1 = sub_1A52483B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB133AD0);
    }
  }
}

uint64_t sub_1A4180EA0(uint64_t a1, uint64_t a2)
{
  sub_1A4180B7C(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A4180F04(uint64_t a1)
{
  sub_1A4180B7C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A4180F60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A4180FA8(uint64_t a1)
{
  if (!qword_1EB133AE0)
  {
    sub_1A4180C1C(255, &qword_1EB133A60, sub_1A4180798);
    sub_1A4180CD8(&qword_1EB133AE8, &qword_1EB133A60, sub_1A4180798);
    v1 = sub_1A524B8B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB133AE0);
    }
  }
}

uint64_t sub_1A4181048@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t (*)(), void)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  sub_1A41810E4(a1, a5);
  type metadata accessor for PhotosViewBannerPreview(0, a3, a4, v9);
  a2(sub_1A4181204, 0);

  return sub_1A3E79250(a1);
}

uint64_t sub_1A41810E4(uint64_t a1, uint64_t a2)
{
  sub_1A4181148(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A4181148(uint64_t a1)
{
  if (!qword_1EB128D10)
  {
    sub_1A41811A0();
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB128D10);
    }
  }
}

unint64_t sub_1A41811A0()
{
  result = qword_1EB128D20;
  if (!qword_1EB128D20)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB128D20);
  }

  return result;
}

void sub_1A4181204()
{
  if (qword_1EB1ABBB0 != -1)
  {
    swift_once();
  }

  v0 = sub_1A5246F24();
  __swift_project_value_buffer(v0, qword_1EB15B628);
  oslog = sub_1A5246F04();
  v1 = sub_1A524D264();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v2 = 136315138;
    sub_1A4182130();
    v3 = sub_1A524EA44();
    sub_1A3C2EF94(v3, v4, &v6);
  }
}

void *sub_1A41813A4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1A41810E4(v2, v12);
  v5 = *(a1 + 36);
  v11 = *(a1 + 16);
  v9 = v11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, v2 + v5);
  result = PhotosDynamicHeaderPreview.init(titleModel:banner:)(v12, v10, v13);
  v8 = v13[1];
  *a2 = v13[0];
  a2[1] = v8;
  return result;
}

unint64_t sub_1A4181494()
{
  result = qword_1EB133AF0;
  if (!qword_1EB133AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133AF0);
  }

  return result;
}

double sub_1A4181504@<D0>(double *a1@<X8>)
{
  sub_1A524B694();
  result = v3;
  *a1 = v3;
  *(a1 + 1) = v4;
  return result;
}

uint64_t sub_1A4181558(uint64_t a1)
{
  v2 = sub_1A41820DC();

  return MEMORY[0x1EEDD9FE8](a1, v2);
}

uint64_t sub_1A41815A4(uint64_t a1)
{
  v2 = sub_1A41820DC();

  return MEMORY[0x1EEDD9FE0](a1, v2);
}

void sub_1A41815F0(uint64_t a1)
{
  sub_1A4181148(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1A4181678(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 40) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0x7FFFFFFE)
      {
        return (*(v4 + 48))((a1 + v6 + 40) & ~v6);
      }

      v15 = *(a1 + 3);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      if ((v15 + 1) >= 2)
      {
        return v15;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1A418180C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 40) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0x7FFFFFFE)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 40] & ~v9;

    v19(v20);
  }

  else if (a2 > 0x7FFFFFFE)
  {
    *(a1 + 4) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *a1 = a2 - 0x7FFFFFFF;
  }

  else
  {
    *(a1 + 3) = a2;
  }
}

unint64_t sub_1A4181A88()
{
  result = qword_1EB133AF8;
  if (!qword_1EB133AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133AF8);
  }

  return result;
}

unint64_t sub_1A4181ADC()
{
  result = qword_1EB172130[0];
  if (!qword_1EB172130[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB172130);
  }

  return result;
}

void sub_1A4181B5C(void *a1@<X8>)
{
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  sub_1A41810E4(v15, a1);
  sub_1A418232C(0, &qword_1EB1274D0, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
  sub_1A524B6C4();
  sub_1A3E79250(v15);
  a1[5] = v12;
  a1[6] = v13;
  a1[7] = v14;
  v2 = sub_1A524BC64();
  v4 = v3;
  sub_1A4181CF0(0);
  v6 = a1 + *(v5 + 36);
  sub_1A524B6C4();
  sub_1A3F93828();
  sub_1A524B834();
  v7 = sub_1A524A064();
  sub_1A4181E6C(0);
  v9 = &v6[*(v8 + 36)];
  *v9 = v7;
  *(v9 + 8) = 0u;
  *(v9 + 24) = 0u;
  v9[40] = 1;
  sub_1A4181E08(0);
  v11 = &v6[*(v10 + 36)];
  *v11 = v2;
  v11[1] = v4;
}

void sub_1A4181CF0(uint64_t a1)
{
  if (!qword_1EB133B00)
  {
    sub_1A4181D58(255);
    sub_1A4181E08(255);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB133B00);
    }
  }
}

void sub_1A4181D58(uint64_t a1)
{
  if (!qword_1EB133B08)
  {
    v2 = sub_1A4181DB4();
    v4 = type metadata accessor for PhotosViewBannerPreview(a1, &type metadata for MockBanner, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_1EB133B08);
    }
  }
}

unint64_t sub_1A4181DB4()
{
  result = qword_1EB170B10[0];
  if (!qword_1EB170B10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB170B10);
  }

  return result;
}

void sub_1A4181E08(uint64_t a1)
{
  if (!qword_1EB133B10)
  {
    sub_1A4181E6C(255);
    sub_1A4181ECC();
    v1 = sub_1A5248AE4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB133B10);
    }
  }
}

void sub_1A4181E6C(uint64_t a1)
{
  if (!qword_1EB130F28)
  {
    sub_1A406D684();
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB130F28);
    }
  }
}

unint64_t sub_1A4181ECC()
{
  result = qword_1EB133B18;
  if (!qword_1EB133B18)
  {
    sub_1A4181E6C(255);
    sub_1A4182274(&qword_1EB133B20, sub_1A406D684, MEMORY[0x1E697D698]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133B18);
  }

  return result;
}

double sub_1A4181F7C@<D0>(uint64_t a1@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  sub_1A524B424();
  sub_1A41822D8();
  v7 = sub_1A524B4F4();
  v14 = v4;
  v15 = v5;
  v16 = v6;
  sub_1A418232C(0, &qword_1EB12F3E0, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981948]);
  MEMORY[0x1A5906C60](&v13);
  sub_1A524BC74();
  sub_1A52481F4();
  v8 = v14;
  v9 = v15;
  v10 = v16;
  v11 = v17;
  *a1 = v7;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  result = *&v18;
  *(a1 + 40) = v18;
  return result;
}

uint64_t sub_1A4182080()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB15B628);
  __swift_project_value_buffer(v0, qword_1EB15B628);
  v1 = *sub_1A4843F98();
  return sub_1A5246F34();
}

unint64_t sub_1A41820DC()
{
  result = qword_1EB133B28;
  if (!qword_1EB133B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133B28);
  }

  return result;
}

unint64_t sub_1A4182130()
{
  result = qword_1EB133B30;
  if (!qword_1EB133B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133B30);
  }

  return result;
}

unint64_t sub_1A4182194()
{
  result = qword_1EB133B38;
  if (!qword_1EB133B38)
  {
    sub_1A4181CF0(255);
    sub_1A4182274(&qword_1EB133B40, sub_1A4181D58, &unk_1A531FF90);
    sub_1A4182274(&qword_1EB133B48, sub_1A4181E08, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133B38);
  }

  return result;
}

uint64_t sub_1A4182274(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A41822D8()
{
  result = qword_1EB133B50;
  if (!qword_1EB133B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133B50);
  }

  return result;
}

void sub_1A418232C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A418237C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69C2948];
  v8 = MEMORY[0x1E697DCB8];
  sub_1A3C6B614(0, &qword_1EB128A90, MEMORY[0x1E69C2948], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - v10;
  v12 = type metadata accessor for LemonadeImportSourceCell(0);
  sub_1A41843BC(v1 + *(v12 + 20), v11, &qword_1EB128A90, v7, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1A5244084();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = sub_1A524D254();
    v16 = sub_1A524A014();
    sub_1A5246DF4(v15, &dword_1A3C1C000, v16, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1A41825B0()
{
  v1 = sub_1A5249234();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for LemonadeImportSourceCell(0) + 24);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    v7 = sub_1A524D254();
    v8 = sub_1A524A014();
    sub_1A5246DF4(v7, &dword_1A3C1C000, v8, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v10[15];
  }

  return v6 & 1;
}

uint64_t sub_1A4182708@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E697DBD0];
  v8 = MEMORY[0x1E697DCB8];
  sub_1A3C6B614(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - v10;
  v12 = type metadata accessor for LemonadeImportSourceCell(0);
  sub_1A41843BC(v1 + *(v12 + 28), v11, &qword_1EB128A70, v7, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1A5247E04();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = sub_1A524D254();
    v16 = sub_1A524A014();
    sub_1A5246DF4(v15, &dword_1A3C1C000, v16, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

void LemonadeImportSourceCell.body.getter(uint64_t a1@<X8>)
{
  v12 = a1;
  v2 = sub_1A5247E04();
  v10 = *(v2 - 8);
  v11 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v3 = sub_1A5244084();
  MEMORY[0x1EEE9AC00](v3);
  sub_1A4182ECC(0, &qword_1EB133B58, &qword_1EB133B60, sub_1A4182CA0, MEMORY[0x1E697E048]);
  v9 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v8 - v5;
  *v6 = sub_1A5249314();
  *(v6 + 1) = 0x4018000000000000;
  v6[16] = 0;
  sub_1A41839D0(0);
  sub_1A4183220(v1, &v6[*(v7 + 44)]);
}

void sub_1A4182CA0(uint64_t a1)
{
  if (!qword_1EB133B68)
  {
    sub_1A418305C(255, &qword_1EB133B70, &qword_1EB133B78, sub_1A4182D2C, &qword_1EB133BD0);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB133B68);
    }
  }
}

void sub_1A4182D2C(uint64_t a1)
{
  if (!qword_1EB133B80)
  {
    sub_1A4182DA4(255);
    sub_1A4182E38(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB133B80);
    }
  }
}

void sub_1A4182DA4(uint64_t a1)
{
  if (!qword_1EB133B88)
  {
    sub_1A3EC43B0(255);
    sub_1A4183168(255, &qword_1EB127AE0, MEMORY[0x1E697FE80], MEMORY[0x1E697FE70], MEMORY[0x1E6980480]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB133B88);
    }
  }
}

void sub_1A4182E38(uint64_t a1)
{
  if (!qword_1EB133B90)
  {
    sub_1A4182ECC(255, &qword_1EB133B98, &qword_1EB133BA0, sub_1A4182FD0, MEMORY[0x1E697F578]);
    sub_1A3E42C88(255);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB133B90);
    }
  }
}

void sub_1A4182ECC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  if (!*a2)
  {
    sub_1A4182F6C(255, a3, a4, a5);
    sub_1A4183168(255, &qword_1EB127B10, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980460]);
    v6 = sub_1A5248804();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A4182F6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_1A4182FD0(uint64_t a1)
{
  if (!qword_1EB133BA8)
  {
    sub_1A418305C(255, &qword_1EB133BB0, &qword_1EB133BB8, sub_1A41830FC, &qword_1EB133BC8);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB133BA8);
    }
  }
}

void sub_1A418305C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), unint64_t *a5)
{
  if (!*a2)
  {
    sub_1A3C6B614(255, a3, a4, MEMORY[0x1E6981F40]);
    sub_1A41831BC(a5, a3, a4);
    v9 = sub_1A524B784();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A41830FC(uint64_t a1)
{
  if (!qword_1EB133BC0)
  {
    sub_1A3E33EB4(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB133BC0);
    }
  }
}

void sub_1A4183168(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t sub_1A41831BC(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A3C6B614(255, a2, a3, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A4183220(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v77 = a2;
  sub_1A4182E38(0);
  v74 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3 - 8);
  v76 = &v65[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v65[-v6];
  MEMORY[0x1EEE9AC00](v8);
  v75 = &v65[-v9];
  v10 = sub_1A524A204();
  v72 = *(v10 - 8);
  v73 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v65[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v71 = MEMORY[0x1E6980E30];
  v70 = MEMORY[0x1E69E6720];
  sub_1A3C6B614(0, &unk_1EB1276B0, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v65[-v14];
  v16 = sub_1A524A274();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v65[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v84 = (*(**a1 + 192))(v18);
  *(&v84 + 1) = v21;
  sub_1A3D5F9DC();
  v22 = sub_1A524A464();
  v68 = v23;
  v69 = v22;
  v66 = v24;
  v67 = v25;
  (*(v17 + 104))(v20, *MEMORY[0x1E6980EF8], v16);
  v26 = *MEMORY[0x1E6980E20];
  v27 = sub_1A524A154();
  v28 = *(v27 - 8);
  (*(v28 + 104))(v15, v26, v27);
  (*(v28 + 56))(v15, 0, 1, v27);
  sub_1A524A184();
  sub_1A524A1C4();
  sub_1A418442C(v15, &unk_1EB1276B0, v71, v70);
  (*(v17 + 8))(v20, v16);
  v30 = v72;
  v29 = v73;
  (*(v72 + 104))(v12, *MEMORY[0x1E6980EA8], v73);
  sub_1A524A234();

  (*(v30 + 8))(v12, v29);
  LOBYTE(v28) = v66;
  v32 = v68;
  v31 = v69;
  v33 = sub_1A524A3C4();
  v70 = v34;
  v71 = v33;
  LODWORD(v72) = v35;
  v73 = v36;

  sub_1A3E04DF4(v31, v32, v28 & 1);

  KeyPath = swift_getKeyPath();
  LODWORD(v69) = sub_1A52499F4();
  v68 = sub_1A5249314();
  v81 = 1;
  sub_1A4183D90(&v84);
  v95 = v88;
  v96 = v89;
  v97 = v90;
  v91 = v84;
  v92 = v85;
  v93 = v86;
  v94 = v87;
  v98[0] = v84;
  v98[1] = v85;
  v98[2] = v86;
  v98[3] = v87;
  v98[4] = v88;
  v98[5] = v89;
  v99 = v90;
  v38 = MEMORY[0x1E6981F40];
  sub_1A41843BC(&v91, &v78, &qword_1EB133BB8, sub_1A41830FC, MEMORY[0x1E6981F40]);
  sub_1A418442C(v98, &qword_1EB133BB8, sub_1A41830FC, v38);
  *&v80[55] = v94;
  *&v80[71] = v95;
  *&v80[87] = v96;
  *&v80[7] = v91;
  *&v80[23] = v92;
  v80[103] = v97;
  *&v80[39] = v93;
  LOBYTE(v31) = v81;
  sub_1A524BC74();
  sub_1A5248AD4();
  *&v82[55] = v87;
  *&v82[71] = v88;
  *&v82[87] = v89;
  *&v82[103] = v90;
  *&v82[7] = v84;
  *&v82[23] = v85;
  *&v82[39] = v86;
  v83 = 0;
  v39 = sub_1A524B294();
  LOBYTE(v38) = sub_1A524A064();
  v40 = &v7[*(v74 + 44)];
  v41 = *(sub_1A5248A14() + 20);
  v42 = *MEMORY[0x1E697F468];
  v43 = sub_1A52494A4();
  (*(*(v43 - 8) + 104))(&v40[v41], v42, v43);
  __asm { FMOV            V0.2D, #8.0 }

  *v40 = _Q0;
  sub_1A3E42C88(0);
  *&v40[*(v49 + 36)] = 256;
  v50 = *&v80[32];
  *(v7 + 65) = *&v80[48];
  v51 = *&v80[80];
  *(v7 + 81) = *&v80[64];
  *(v7 + 97) = v51;
  v52 = *&v80[16];
  *(v7 + 17) = *v80;
  *(v7 + 33) = v52;
  *(v7 + 49) = v50;
  v53 = *&v82[32];
  *(v7 + 169) = *&v82[48];
  *(v7 + 153) = v53;
  v54 = *v82;
  *(v7 + 137) = *&v82[16];
  *(v7 + 121) = v54;
  *(v7 + 29) = *&v82[111];
  *(v7 + 30) = 0x3FF0000000000000;
  v55 = *&v82[80];
  *(v7 + 217) = *&v82[96];
  v56 = *&v82[64];
  *(v7 + 201) = v55;
  *v7 = v68;
  *(v7 + 1) = 0;
  v7[16] = v31;
  *(v7 + 113) = *&v80[96];
  *(v7 + 185) = v56;
  *(v7 + 124) = 0;
  *(v7 + 250) = v78;
  *(v7 + 127) = v79;
  *(v7 + 32) = v39;
  v7[264] = v38;
  v57 = v7;
  v58 = v75;
  sub_1A4184488(v57, v75);
  v59 = v76;
  sub_1A41844EC(v58, v76, sub_1A4182E38);
  v60 = v77;
  v62 = v70;
  v61 = v71;
  *v77 = v71;
  v60[1] = v62;
  LOBYTE(v42) = v72 & 1;
  *(v60 + 16) = v72 & 1;
  v60[3] = v73;
  v60[4] = KeyPath;
  *(v60 + 40) = 0;
  *(v60 + 11) = v69;
  v60[6] = 0;
  *(v60 + 56) = 1;
  v63 = v60;
  sub_1A4182D2C(0);
  sub_1A41844EC(v59, v63 + *(v64 + 64), sub_1A4182E38);
  sub_1A3E75E68(v61, v62, v42);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A41839D0(uint64_t a1)
{
  if (!qword_1EB133BD8)
  {
    sub_1A3C6B614(255, &qword_1EB133B78, sub_1A4182D2C, MEMORY[0x1E6981F40]);
    v1 = sub_1A52483B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB133BD8);
    }
  }
}

uint64_t type metadata accessor for LemonadeImportSourceCell(uint64_t a1)
{
  result = qword_1EB168C60;
  if (!qword_1EB168C60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1A4183AB4()
{
  result = qword_1EB133BE0;
  if (!qword_1EB133BE0)
  {
    sub_1A4182ECC(255, &qword_1EB133B58, &qword_1EB133B60, sub_1A4182CA0, MEMORY[0x1E697E048]);
    sub_1A4183B60();
    sub_1A3D6D4B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133BE0);
  }

  return result;
}

unint64_t sub_1A4183B60()
{
  result = qword_1EB133BE8;
  if (!qword_1EB133BE8)
  {
    sub_1A4182F6C(255, &qword_1EB133B60, sub_1A4182CA0, MEMORY[0x1E697E048]);
    sub_1A4183C04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133BE8);
  }

  return result;
}

unint64_t sub_1A4183C04()
{
  result = qword_1EB133BF0;
  if (!qword_1EB133BF0)
  {
    sub_1A4182CA0(255);
    sub_1A4183C84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133BF0);
  }

  return result;
}

unint64_t sub_1A4183C84()
{
  result = qword_1EB133BF8;
  if (!qword_1EB133BF8)
  {
    sub_1A418305C(255, &qword_1EB133B70, &qword_1EB133B78, sub_1A4182D2C, &qword_1EB133BD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133BF8);
  }

  return result;
}

uint64_t sub_1A4183D08(uint64_t a1)
{
  sub_1A4182ECC(0, &qword_1EB133B58, &qword_1EB133B60, sub_1A4182CA0, MEMORY[0x1E697E048]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A4183D90@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A524B554();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1A5242264();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v10 = 0xD000000000000013;
  v10[1] = 0x80000001A53C9EB0;
  (*(v7 + 104))(v10, *MEMORY[0x1E69C1D38], v6, v8);
  sub_1A5242B94();
  (*(v7 + 8))(v10, v6);
  (*(v3 + 104))(v5, *MEMORY[0x1E6981630], v2);
  v11 = sub_1A524B5C4();

  (*(v3 + 8))(v5, v2);
  sub_1A524BC74();
  sub_1A52481F4();
  *&v19[19] = v20;
  *&v19[11] = *&v19[35];
  *&v19[3] = *&v19[27];
  v18 = 1;
  v21[0] = v11;
  v21[1] = 0;
  *v22 = 1;
  *&v22[48] = *(&v20 + 1);
  *&v22[34] = *&v19[16];
  *&v22[18] = *&v19[8];
  *&v22[2] = *v19;
  *(v17 + 7) = v11;
  *(&v17[4] + 7) = *&v22[48];
  *(&v17[3] + 7) = *&v22[32];
  *(&v17[2] + 7) = *&v22[16];
  *(&v17[1] + 7) = *v22;
  v16[72] = 1;
  *a1 = 0;
  *(a1 + 8) = 1;
  v12 = v17[1];
  *(a1 + 9) = v17[0];
  v13 = v17[2];
  v14 = v17[3];
  *(a1 + 72) = *(&v17[3] + 15);
  *(a1 + 57) = v14;
  *(a1 + 41) = v13;
  *(a1 + 25) = v12;
  *(a1 + 88) = 0;
  *(a1 + 96) = 1;
  v23[0] = v11;
  v23[1] = 0;
  v24 = 1;
  *&v27[14] = *&v19[23];
  *v27 = *&v19[16];
  v26 = *&v19[8];
  v25 = *v19;
  sub_1A41844EC(v21, v16, sub_1A3E33EB4);
  return sub_1A4184554(v23, sub_1A3E33EB4);
}

double sub_1A41840CC@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = type metadata accessor for LemonadeImportSourceCell(0);
  v4 = v3[5];
  *(a2 + v4) = swift_getKeyPath();
  v5 = MEMORY[0x1E697DCB8];
  sub_1A3C6B614(0, &qword_1EB128A90, MEMORY[0x1E69C2948], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v6 = a2 + v3[6];
  *v6 = swift_getKeyPath();
  v6[8] = 0;
  v7 = v3[7];
  *(a2 + v7) = swift_getKeyPath();
  sub_1A3C6B614(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], v5);
  swift_storeEnumTagMultiPayload();
  v8 = (a2 + v3[8]);
  result = 12.0;
  __asm { FMOV            V1.2D, #12.0 }

  *v8 = xmmword_1A53201E0;
  v8[1] = _Q1;
  return result;
}

void sub_1A418422C(uint64_t a1)
{
  type metadata accessor for LemonadeImportSourceModel(319);
  if (v1 <= 0x3F)
  {
    sub_1A3C6B614(319, &qword_1EB124840, MEMORY[0x1E69C2948], MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      sub_1A418436C(319, &qword_1EB1246E0, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        sub_1A3C6B614(319, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1A418436C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A41843BC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_1A3C6B614(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1A418442C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_1A3C6B614(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1A4184488(uint64_t a1, uint64_t a2)
{
  sub_1A4182E38(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A41844EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4184554(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_1A41845B4(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v21 = a2;
  sub_1A41849C8(0, &qword_1EB128B08, sub_1A418478C, MEMORY[0x1E695C070]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = objc_allocWithZone(v5);
  v16 = OBJC_IVAR____TtC12PhotosUICore40PhotosDetailsVisualLookupWidgetViewModel__visualLookupData;
  v23 = 0;
  sub_1A418478C(0);
  sub_1A52479A4();
  (*(v12 + 32))(&v15[v16], v14, v11);
  v17 = [a3 visualLookupData];
  swift_beginAccess();
  (*(v12 + 8))(&v15[v16], v11);
  v22 = v17;
  sub_1A52479A4();
  swift_endAccess();
  v18 = &v15[OBJC_IVAR____TtC12PhotosUICore40PhotosDetailsVisualLookupWidgetViewModel_onTappedAction];
  *v18 = a4;
  *(v18 + 1) = a5;
  return sub_1A4467460(a1, v21, a3);
}

void sub_1A418478C(uint64_t a1)
{
  if (!qword_1EB1267C8)
  {
    sub_1A3C52C70(255, &unk_1EB1267D0, off_1E771F078);
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1267C8);
    }
  }
}

uint64_t sub_1A41847F4(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return sub_1A52479F4();
}

uint64_t sub_1A4184860()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  return v1;
}

void sub_1A41848D4(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  *a2 = v3;
}

uint64_t sub_1A4184954(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return sub_1A52479F4();
}

void sub_1A41849C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A4184A2C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  if (v3)
  {
    v0 = [v3 visualDomain];
    if (v0)
    {
      v1 = v0;
      v2 = [v0 px:3 stringByApplyingCapitalization:?];

      sub_1A524C674();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1A4184B24(SEL *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  if (v3)
  {
    v2 = [v3 *a1];

    if (v2)
    {
      sub_1A524C674();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1A4184BE4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  if (v10)
  {
    v0 = [v10 visualDomain];
    if (v0)
    {
      v1 = v0;
      v2 = sub_1A524C674();
      v4 = v3;

      v5 = sub_1A524C634();
      v6 = PXLocalizedString(v5);

      sub_1A524C674();
      sub_1A41849C8(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1A52F8E10;
      *(v7 + 56) = MEMORY[0x1E69E6158];
      *(v7 + 64) = sub_1A3D710E8();
      *(v7 + 32) = v2;
      *(v7 + 40) = v4;
      v8 = sub_1A524C644();

      return v8;
    }
  }

  return 0;
}

uint64_t sub_1A4184D8C(__n128 a1)
{
  v1 = sub_1A446803C();
  v2 = sub_1A4467CD8();
  if (v1 == 5)
  {
    type metadata accessor for PhotosDetailsPeopleWidgetViewModel(0);
    v3 = sub_1A3F7469C(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

unint64_t sub_1A4184DF0(char a1, void *a2)
{
  if ((a1 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for PhotosDetailsPeopleWidgetViewModel(0);
  return sub_1A3F7469C(a2) & 1;
}

uint64_t sub_1A4184E34()
{
  v0 = sub_1A4467CD8();
  v1 = sub_1A446803C();
  v2 = sub_1A4185000(v0, v1);

  return v2 & 1;
}

uint64_t sub_1A4184EA4()
{

  v1 = OBJC_IVAR____TtC12PhotosUICore40PhotosDetailsVisualLookupWidgetViewModel__visualLookupData;
  sub_1A41849C8(0, &qword_1EB128B08, sub_1A418478C, MEMORY[0x1E695C070]);
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id sub_1A4185000(void *a1, uint64_t a2)
{
  result = [a1 visualLookupData];
  if (!result)
  {
    return result;
  }

  v5 = result;
  v6 = [result visualDomain];
  if (!v6)
  {

    return 0;
  }

  v7 = v6;
  v8 = sub_1A524C674();
  v10 = v9;

  v11 = [v5 glyphImageName];
  if (!v11)
  {

LABEL_15:

    return 0;
  }

  v12 = v11;
  v13 = sub_1A524C674();
  v15 = v14;

  v16 = [a1 firstAsset];
  if (!v16)
  {

    goto LABEL_15;
  }

  v17 = v16;
  v18 = [v16 isSpatialPresentation];
  sub_1A3C52C70(0, &qword_1EB1268C8, off_1E771F050);
  v19 = [swift_getObjCClassFromMetadata() sharedInstance];
  v20 = [v19 showVisualLookUpWidget];

  if ((v10 & 0x2000000000000000) != 0)
  {
    v21 = HIBYTE(v10) & 0xF;
  }

  else
  {
    v21 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v21)
  {
    return 0;
  }

  v22 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v22 = v13 & 0xFFFFFFFFFFFFLL;
  }

  return ((v22 != 0) & v20 & ((a2 != 5) | v18 ^ 1));
}

uint64_t type metadata accessor for PhotosDetailsVisualLookupWidgetViewModel(uint64_t a1)
{
  result = qword_1EB18ECB8;
  if (!qword_1EB18ECB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A4185214(uint64_t a1)
{
  sub_1A41849C8(319, &qword_1EB128B08, sub_1A418478C, MEMORY[0x1E695C070]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1A41852E4(uint64_t a2@<X8>)
{
  *(a2 + 24) = 0u;
  *(a2 + 8) = 0u;
  sub_1A41854A8(v8);
  v3 = v8[6];
  *(a2 + 168) = v8[7];
  v4 = v8[9];
  *(a2 + 184) = v8[8];
  *(a2 + 200) = v4;
  *(a2 + 216) = v8[10];
  v5 = v8[2];
  *(a2 + 104) = v8[3];
  v6 = v8[5];
  *(a2 + 120) = v8[4];
  *(a2 + 136) = v6;
  *(a2 + 152) = v3;
  v7 = v8[1];
  *(a2 + 56) = v8[0];
  *(a2 + 72) = v7;
  *(a2 + 88) = v5;
  sub_1A52458F4();
}

double sub_1A41854A8(_OWORD *a1)
{
  result = 0.0;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_1A41854C8@<X0>(unint64_t result@<X0>, _OWORD *a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(*v2 + 16) > result)
  {
    v3 = (*v2 + 176 * result);
    v4 = v3[2];
    v5 = v3[4];
    v18[1] = v3[3];
    v18[2] = v5;
    v18[0] = v4;
    v6 = v3[5];
    v7 = v3[6];
    v8 = v3[8];
    v18[5] = v3[7];
    v18[6] = v8;
    v18[3] = v6;
    v18[4] = v7;
    v9 = v3[9];
    v10 = v3[10];
    v11 = v3[12];
    v18[9] = v3[11];
    v18[10] = v11;
    v18[7] = v9;
    v18[8] = v10;
    v12 = v3[11];
    a2[8] = v3[10];
    a2[9] = v12;
    a2[10] = v3[12];
    v13 = v3[7];
    a2[4] = v3[6];
    a2[5] = v13;
    v14 = v3[9];
    a2[6] = v3[8];
    a2[7] = v14;
    v15 = v3[3];
    *a2 = v3[2];
    a2[1] = v15;
    v16 = v3[5];
    a2[2] = v3[4];
    a2[3] = v16;
    return sub_1A41855E8(v18, &v17);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A4185584(uint64_t a1, uint64_t a2)
{
  sub_1A3DB7EF8(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A4185648()
{
  result = qword_1EB12A3C8;
  if (!qword_1EB12A3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A3C8);
  }

  return result;
}

unint64_t sub_1A41856A0()
{
  result = qword_1EB12A630;
  if (!qword_1EB12A630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A630);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12PhotosUICore21iCloudLinkParticipantVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t get_enum_tag_for_layout_string_12PhotosUICore14iCloudLinkItemVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy240_8(uint64_t a1, __int128 *a2)
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
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[14];
  *(a1 + 208) = a2[13];
  *(a1 + 224) = v12;
  *(a1 + 176) = result;
  *(a1 + 192) = v11;
  return result;
}

uint64_t sub_1A4185774(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 240))
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

uint64_t sub_1A41857BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 240) = 1;
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

    *(result + 240) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void makePhotosCollectionTitleModel(for:displayIntent:)()
{
  sub_1A5246044();
}

{
  sub_1A418747C(0, &qword_1EB124AC0, off_1E7721130);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1A5246044();
}

uint64_t type metadata accessor for PHAssetCollectionTitleModel(uint64_t a1)
{
  result = qword_1EB180270;
  if (!qword_1EB180270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A4186158(void *a1, uint64_t a2)
{
  sub_1A418747C(0, &qword_1EB124AC0, off_1E7721130);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1A3D9D024(0, v3);
  PXDisplayAssetCollection.photosCollectionTitleInfo.getter(&v4);
  sub_1A52467F4();
}

double sub_1A41862E8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 16) == a1 && v5 == a2;
      if (v6 || (sub_1A524EAB4() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A418735C(&qword_1EB180288, &unk_1A5320688);
    sub_1A52415C4();

    return result;
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  return result;
}

double sub_1A4186444(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 32) == a1 && v5 == a2;
      if (v6 || (sub_1A524EAB4() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A418735C(&qword_1EB180288, &unk_1A5320688);
    sub_1A52415C4();

    return result;
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;

  return result;
}

double sub_1A41865A0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 48) == a1 && v5 == a2;
      if (v6 || (sub_1A524EAB4() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A418735C(&qword_1EB180288, &unk_1A5320688);
    sub_1A52415C4();

    return result;
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;

  return result;
}

void sub_1A41866FC()
{
  swift_getKeyPath();
  sub_1A418735C(&qword_1EB180288, &unk_1A5320688);
  sub_1A52415D4();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4186798(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A418735C(&qword_1EB180288, &unk_1A5320688);
  sub_1A52415D4();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4186848()
{
  swift_getKeyPath();
  sub_1A418735C(&qword_1EB180288, &unk_1A5320688);
  sub_1A52415D4();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A41868E4(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A418735C(&qword_1EB180288, &unk_1A5320688);
  sub_1A52415D4();

  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4186994()
{
  swift_getKeyPath();
  sub_1A418735C(&qword_1EB180288, &unk_1A5320688);
  sub_1A52415D4();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4186A30(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A418735C(&qword_1EB180288, &unk_1A5320688);
  sub_1A52415D4();

  v4 = *(v3 + 56);
  *a2 = *(v3 + 48);
  a2[1] = v4;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4186EB0()
{

  sub_1A4187420(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_89EA7250520E0A8DD3D007A4813848C827PHAssetCollectionTitleModel_additionalInfo, &qword_1EB124AC0, off_1E7721130);

  sub_1A5246044();
}

void sub_1A4187014(uint64_t a1)
{
  sub_1A418747C(319, &qword_1EB124AC0, off_1E7721130);
  if (v1 <= 0x3F)
  {
    sub_1A5246044();
  }
}

void sub_1A4187160()
{
  swift_getKeyPath();
  sub_1A418735C(&qword_1EB180288, &unk_1A5320688);
  sub_1A52415D4();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A41871FC()
{
  swift_getKeyPath();
  sub_1A418735C(&qword_1EB180288, &unk_1A5320688);
  sub_1A52415D4();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4187298()
{
  swift_getKeyPath();
  sub_1A418735C(&qword_1EB180288, &unk_1A5320688);
  sub_1A52415D4();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A418735C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PHAssetCollectionTitleModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A41873A0()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 48) = v0[3];
  *(v1 + 56) = v2;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A41873E0()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 16) = v0[3];
  *(v1 + 24) = v2;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4187420(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A418747C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1A418747C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A524DF24();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

double sub_1A41874D0()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1A4186B28();
  }

  return result;
}

void sub_1A4187540(char *a1@<X8>, double a2@<D0>)
{
  if (a2 >= 375.0)
  {
    if (a2 >= 461.0)
    {
      if (a2 >= 1211.0)
      {
        v2 = 6;
      }

      else
      {
        v2 = 5;
      }

      if (a2 >= 982.0)
      {
        v3 = v2;
      }

      else
      {
        v3 = 4;
      }

      if (a2 >= 727.0)
      {
        v4 = v3;
      }

      else
      {
        v4 = 1;
      }

      if (a2 < 550.0)
      {
        v4 = 0;
      }

      *a1 = v4;
    }

    else
    {
      *a1 = 3;
    }
  }

  else
  {
    *a1 = 2;
  }
}

uint64_t sub_1A41875F0(void (*a1)(uint64_t *__return_ptr), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A5242D14();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v37 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v32 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v32 - v15;
  sub_1A3C52C70(0, &unk_1EB120978, off_1E771FA50);
  v17 = [swift_getObjCClassFromMetadata() sharedInstance];
  v18 = [v17 useNewMainViewLayout];

  if (v18)
  {
    goto LABEL_19;
  }

  v33 = a1;
  v34 = a4;
  v32[1] = a2;
  v35 = *(v9 + 16);
  v36 = a3;
  v35(v16, a3, v8);
  v19 = *(v9 + 88);
  v20 = v19(v16, v8);
  v21 = *MEMORY[0x1E69C21F8];
  if (v20 == *MEMORY[0x1E69C21F8])
  {
    sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
    v22 = [swift_getObjCClassFromMetadata() sharedInstance];
    v23 = [v22 enableShelfIPadLayout];

    if (!v23)
    {
LABEL_19:
      v28 = 0;
      return v28 & 1;
    }

    v24 = *MEMORY[0x1E69C2210];
  }

  else
  {
    v24 = v20;
    if (v20 != *MEMORY[0x1E69C2210])
    {
      (*(v9 + 8))(v16, v8);
      goto LABEL_19;
    }
  }

  v35(v13, v36, v8);
  v25 = v19(v13, v8);
  if (v25 != v21 && v25 != v24)
  {
    (*(v9 + 8))(v13, v8);
    goto LABEL_19;
  }

  v27 = v37;
  (*(v9 + 104))(v37, v24, v8);
  v28 = sub_1A5242D04();
  (*(v9 + 8))(v27, v8);
  sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
  v29 = [swift_getObjCClassFromMetadata() sharedInstance];
  v30 = [v29 enableShelfIPadLayout];

  if (v30 && (sub_1A5248684() & 1) == 0)
  {
    v33(&v38);
    if (v38 <= 3u)
    {
      goto LABEL_19;
    }

    if (v38 == 4)
    {
      v28 = PLIsPadMini() ^ 1;
      return v28 & 1;
    }

    if (v38 != 5 && v38 != 6)
    {
      goto LABEL_19;
    }

    v28 = 1;
  }

  return v28 & 1;
}

uint64_t LemonadeVerticalSizeClass.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

uint64_t LemonadeRootViewOrientation.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

uint64_t sub_1A4187AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A4188618(&unk_1EB126C68, type metadata accessor for UIEdgeInsets, MEMORY[0x1E69DC3C0]);

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

double sub_1A4187B38()
{
  sub_1A4188154();
  sub_1A5249244();
  return v1;
}

uint64_t sub_1A4187BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A4188618(&qword_1EB126710, type metadata accessor for CGSize, MEMORY[0x1E695EF98]);

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

double sub_1A4187C54()
{
  sub_1A41881A8();
  sub_1A5249244();
  return v1;
}

uint64_t sub_1A4187CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A3F17D14();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

void *sub_1A4187D30()
{
  sub_1A41881FC();

  return sub_1A5249244();
}

uint64_t sub_1A4187DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A4188350();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

void *sub_1A4187E1C()
{
  sub_1A4188250();

  return sub_1A5249244();
}

_BYTE *sub_1A4187E84@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A44DAFD8();
  *a1 = *result;
  return result;
}

uint64_t sub_1A4187EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A4188660();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

void *sub_1A4187F14()
{
  sub_1A41882A4();

  return sub_1A5249244();
}

uint64_t sub_1A4187FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A41883A8();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

void *sub_1A418802C()
{
  sub_1A41882F8();

  return sub_1A5249244();
}

BOOL _s12PhotosUICore27LemonadeHorizontalSizeClassO2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 <= 3)
  {
    if (v2 == 2)
    {
      if (v3 == 2)
      {
        return 1;
      }
    }

    else
    {
      if (v2 != 3)
      {
        goto LABEL_17;
      }

      if (v3 == 3)
      {
        return 1;
      }
    }

    return 0;
  }

  switch(v2)
  {
    case 4u:
      return v3 == 4;
    case 5u:
      return v3 == 5;
    case 6u:
      return v3 == 6;
  }

LABEL_17:
  if ((v3 - 2) < 5)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

unint64_t sub_1A4188154()
{
  result = qword_1EB15A7A0[0];
  if (!qword_1EB15A7A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB15A7A0);
  }

  return result;
}

unint64_t sub_1A41881A8()
{
  result = qword_1EB15ADD8[0];
  if (!qword_1EB15ADD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB15ADD8);
  }

  return result;
}

unint64_t sub_1A41881FC()
{
  result = qword_1EB15AA70;
  if (!qword_1EB15AA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB15AA70);
  }

  return result;
}

unint64_t sub_1A4188250()
{
  result = qword_1EB15AB98[0];
  if (!qword_1EB15AB98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB15AB98);
  }

  return result;
}

unint64_t sub_1A41882A4()
{
  result = qword_1EB15AD40[0];
  if (!qword_1EB15AD40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB15AD40);
  }

  return result;
}

unint64_t sub_1A41882F8()
{
  result = qword_1EB15A9E8[0];
  if (!qword_1EB15A9E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB15A9E8);
  }

  return result;
}

unint64_t sub_1A4188350()
{
  result = qword_1EB129D00;
  if (!qword_1EB129D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129D00);
  }

  return result;
}

unint64_t sub_1A41883A8()
{
  result = qword_1EB129AE0;
  if (!qword_1EB129AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129AE0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LemonadeHorizontalSizeClass(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_19;
  }

  v2 = a2 + 6;
  if (a2 + 6 >= 0xFFFF00)
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

    return (*a1 | (v5 << 8)) - 6;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 6;
    }
  }

LABEL_19:
  v7 = *a1;
  if (v7 < 2)
  {
    return 0;
  }

  v8 = (v7 + 2147483646) & 0x7FFFFFFF;
  result = v8 - 4;
  if (v8 <= 4)
  {
    return 0;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for LemonadeHorizontalSizeClass(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 6;
  if (a3 + 6 >= 0xFFFF00)
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

  if (a3 < 0xFA)
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1A4188554(unsigned __int8 *a1)
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

_BYTE *sub_1A4188570(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_1A4188618(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A4188660()
{
  result = qword_1EB12A1E8;
  if (!qword_1EB12A1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A1E8);
  }

  return result;
}

uint64_t sub_1A41886B4()
{
  v1 = v0;
  v2 = type metadata accessor for NotificationsPhotosItem(0);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v53 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TestNotificationPhotosItem(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v51 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v50 = &v45 - v8;
  v9 = type metadata accessor for InvitationsItem(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v46 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v47 = &v45 - v12;
  sub_1A418B828(0);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for NotificationsPhotosItem.NotificationType(0);
  MEMORY[0x1EEE9AC00](v54);
  v49 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v48 = &v45 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v45 - v21;
  swift_getKeyPath();
  v23 = OBJC_IVAR____TtC12PhotosUICore26LemonadeNotificationsModel___observationRegistrar;
  v57 = v0;
  sub_1A418A5FC(&qword_1EB133C00, type metadata accessor for LemonadeNotificationsModel, &unk_1A5320DA8);
  sub_1A52415D4();

  v24 = v0 + OBJC_IVAR____TtC12PhotosUICore26LemonadeNotificationsModel__item;
  swift_beginAccess();
  sub_1A418B8F8(v24 + *(v3 + 28), v22, type metadata accessor for NotificationsPhotosItem.NotificationType);
  swift_getKeyPath();
  v56 = v0;
  v52 = v23;
  sub_1A52415D4();

  v25 = OBJC_IVAR____TtC12PhotosUICore26LemonadeNotificationsModel__notificationType;
  swift_beginAccess();
  v26 = *(v1 + v25);
  v27 = *(v14 + 56);
  v28 = v16;
  sub_1A418B890(v22, v16, type metadata accessor for NotificationsPhotosItem.NotificationType);
  *&v16[v27] = v26;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 7)
  {
    v35 = v50;
    v34 = v51;
    v36 = v49;
    sub_1A418B8F8(v16, v49, type metadata accessor for NotificationsPhotosItem.NotificationType);
    if (v26 >> 61 == 7)
    {
      sub_1A418B890(v36, v35, type metadata accessor for TestNotificationPhotosItem);
      sub_1A418B8F8(v35, v34, type metadata accessor for TestNotificationPhotosItem);
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v45 - 2) = v26 & 0x1FFFFFFFFFFFFFFFLL;
      *(&v45 - 1) = v34;
      v55 = v26 & 0x1FFFFFFFFFFFFFFFLL;
      sub_1A418A5FC(&qword_1EB133C08, type metadata accessor for LemonadeTestNotificationsModel, &unk_1A5320DC4);

      sub_1A52415C4();

      sub_1A418B960(v35, type metadata accessor for TestNotificationPhotosItem);
      sub_1A418B960(v34, type metadata accessor for TestNotificationPhotosItem);
      goto LABEL_7;
    }

    v39 = type metadata accessor for TestNotificationPhotosItem;
    v40 = v36;
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload)
  {

LABEL_12:
    swift_getKeyPath();
    v55 = v1;
    sub_1A52415D4();

    v41 = v53;
    sub_1A418B8F8(v24, v53, type metadata accessor for NotificationsPhotosItem);
    v42 = sub_1A418AB18(v41);
    v43 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v43);
    *(&v45 - 2) = v1;
    *(&v45 - 1) = v42;
    v55 = v1;
    sub_1A52415C4();

    v38 = sub_1A418B828;
    return sub_1A418B960(v28, v38);
  }

  v30 = v16;
  v31 = v48;
  sub_1A418B8F8(v30, v48, type metadata accessor for NotificationsPhotosItem.NotificationType);
  if (v26 >> 61)
  {

    v39 = type metadata accessor for InvitationsItem;
    v40 = v31;
LABEL_11:
    sub_1A418B960(v40, v39);
    goto LABEL_12;
  }

  v32 = v47;
  sub_1A418B890(v31, v47, type metadata accessor for InvitationsItem);
  v33 = v46;
  sub_1A418B8F8(v32, v46, type metadata accessor for InvitationsItem);

  sub_1A4604BCC(v33);
  sub_1A418B960(v32, type metadata accessor for InvitationsItem);
LABEL_7:

  v38 = type metadata accessor for NotificationsPhotosItem.NotificationType;
  return sub_1A418B960(v28, v38);
}

uint64_t sub_1A4188DC0@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1A418A5FC(&qword_1EB133C00, type metadata accessor for LemonadeNotificationsModel, &unk_1A5320DA8);
  sub_1A52415D4();

  v3 = OBJC_IVAR____TtC12PhotosUICore26LemonadeNotificationsModel__item;
  swift_beginAccess();
  return sub_1A418B8F8(v5 + v3, a1, type metadata accessor for NotificationsPhotosItem);
}

uint64_t sub_1A4188E9C()
{
  swift_getKeyPath();
  v4 = v0;
  sub_1A418A5FC(&qword_1EB133C00, type metadata accessor for LemonadeNotificationsModel, &unk_1A5320DA8);
  sub_1A52415D4();

  v1 = OBJC_IVAR____TtC12PhotosUICore26LemonadeNotificationsModel__notificationType;
  swift_beginAccess();
  v2 = *(v4 + v1);

  return v2;
}

uint64_t (*sub_1A4188F64(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A4188FC8;
}

uint64_t sub_1A4188FC8(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1A41886B4();
  }

  return result;
}

uint64_t sub_1A4188FFC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A418A5FC(&qword_1EB133C00, type metadata accessor for LemonadeNotificationsModel, &unk_1A5320DA8);
  sub_1A52415D4();

  v4 = OBJC_IVAR____TtC12PhotosUICore26LemonadeNotificationsModel__item;
  swift_beginAccess();
  return sub_1A418B8F8(v3 + v4, a2, type metadata accessor for NotificationsPhotosItem);
}

uint64_t sub_1A41890D8(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for NotificationsPhotosItem(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A418B8F8(a1, v6, type metadata accessor for NotificationsPhotosItem);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_1A418A5FC(&qword_1EB133C00, type metadata accessor for LemonadeNotificationsModel, &unk_1A5320DA8);
  sub_1A52415C4();

  return sub_1A418B960(v6, type metadata accessor for NotificationsPhotosItem);
}

uint64_t sub_1A4189248(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotificationsPhotosItem(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A418B8F8(a2, v6, type metadata accessor for NotificationsPhotosItem);
  v7 = OBJC_IVAR____TtC12PhotosUICore26LemonadeNotificationsModel__item;
  swift_beginAccess();
  sub_1A418B9C0(v6, a1 + v7, type metadata accessor for NotificationsPhotosItem);
  swift_endAccess();
  sub_1A41886B4();
  return sub_1A418B960(v6, type metadata accessor for NotificationsPhotosItem);
}

uint64_t (*sub_1A4189344(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC12PhotosUICore26LemonadeNotificationsModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1A418A5FC(&qword_1EB133C00, type metadata accessor for LemonadeNotificationsModel, &unk_1A5320DA8);
  sub_1A52415D4();

  *v4 = v1;
  swift_getKeyPath();
  sub_1A52415F4();

  v4[7] = sub_1A4188F64(v4);
  return sub_1A418947C;
}

void sub_1A418947C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1A52415E4();

  free(v1);
}

void sub_1A4189510()
{
  swift_getKeyPath();
  sub_1A418A5FC(&qword_1EB133C00, type metadata accessor for LemonadeNotificationsModel, &unk_1A5320DA8);
  sub_1A52415D4();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A41895E8@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A418A5FC(&qword_1EB133C00, type metadata accessor for LemonadeNotificationsModel, &unk_1A5320DA8);
  sub_1A52415D4();

  v4 = OBJC_IVAR____TtC12PhotosUICore26LemonadeNotificationsModel__notificationType;
  swift_beginAccess();
  *a2 = *(v3 + v4);

  return result;
}

double sub_1A41896B4(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1A418A5FC(&qword_1EB133C00, type metadata accessor for LemonadeNotificationsModel, &unk_1A5320DA8);
  sub_1A52415C4();

  return result;
}

double sub_1A4189780(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12PhotosUICore26LemonadeNotificationsModel__notificationType;
  swift_beginAccess();
  *(a1 + v4) = a2;

  return result;
}

uint64_t sub_1A41897E8(uint64_t a1)
{
  v2 = type metadata accessor for NotificationsPhotosItem(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = swift_allocObject();
  sub_1A5241604();
  sub_1A418B8F8(a1, v5 + OBJC_IVAR____TtC12PhotosUICore26LemonadeNotificationsModel__item, type metadata accessor for NotificationsPhotosItem);
  sub_1A418B8F8(a1, v4, type metadata accessor for NotificationsPhotosItem);
  v6 = sub_1A418AB18(v4);
  sub_1A418B960(a1, type metadata accessor for NotificationsPhotosItem);
  *(v5 + OBJC_IVAR____TtC12PhotosUICore26LemonadeNotificationsModel__notificationType) = v6;
  return v5;
}

uint64_t sub_1A41898F0(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1A5241604();
  sub_1A418B890(a1, v2 + OBJC_IVAR____TtC12PhotosUICore30LemonadeTestNotificationsModel__item, type metadata accessor for TestNotificationPhotosItem);
  return v2;
}

uint64_t sub_1A4189960()
{
  v1 = v0;
  v2 = type metadata accessor for TestNotificationPhotosItem(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v13 = v0;
  sub_1A418A5FC(&qword_1EB133C00, type metadata accessor for LemonadeNotificationsModel, &unk_1A5320DA8);
  sub_1A52415D4();

  v5 = OBJC_IVAR____TtC12PhotosUICore26LemonadeNotificationsModel__notificationType;
  swift_beginAccess();
  v6 = *(v1 + v5);
  v7 = v6 >> 61;
  result = 1;
  if ((v6 >> 61) > 4)
  {
    if (v7 == 5)
    {
      return 0;
    }

    else if (v7 != 6)
    {
      v9 = v6 & 0x1FFFFFFFFFFFFFFFLL;
      swift_getKeyPath();
      v12 = v9;
      sub_1A418A5FC(&qword_1EB133C08, type metadata accessor for LemonadeTestNotificationsModel, &unk_1A5320DC4);

      sub_1A52415D4();

      v10 = OBJC_IVAR____TtC12PhotosUICore30LemonadeTestNotificationsModel__item;
      swift_beginAccess();
      sub_1A418B8F8(v9 + v10, v4, type metadata accessor for TestNotificationPhotosItem);

      v11 = v4[40];
      sub_1A418B960(v4, type metadata accessor for TestNotificationPhotosItem);
      return v11;
    }
  }

  return result;
}

uint64_t sub_1A4189B78@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1A418A5FC(&qword_1EB133C08, type metadata accessor for LemonadeTestNotificationsModel, &unk_1A5320DC4);
  sub_1A52415D4();

  v3 = OBJC_IVAR____TtC12PhotosUICore30LemonadeTestNotificationsModel__item;
  swift_beginAccess();
  return sub_1A418B8F8(v5 + v3, a1, type metadata accessor for TestNotificationPhotosItem);
}

uint64_t sub_1A4189C54()
{
  v1 = v0;
  v2 = type metadata accessor for TestNotificationPhotosItem(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for InvitationsItem(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v22 = v0;
  sub_1A418A5FC(&qword_1EB133C00, type metadata accessor for LemonadeNotificationsModel, &unk_1A5320DA8);
  sub_1A52415D4();

  v8 = OBJC_IVAR____TtC12PhotosUICore26LemonadeNotificationsModel__notificationType;
  swift_beginAccess();
  v9 = *(v1 + v8);
  v10 = v9 >> 61;
  if ((v9 >> 61) <= 3)
  {
    if (v10 <= 1)
    {
      if (!v10)
      {

        sub_1A4604CB0(v7);
        sub_1A3F644C8();
      }

      v13 = *(*(v9 & 0x1FFFFFFFFFFFFFFFLL) + 328);

      v13(v14);
      goto LABEL_14;
    }

    if (v10 == 2)
    {
      PXPreferencesSetCameraSharingPreferencesState(2);
      return 0;
    }

LABEL_13:
    v15 = *(*(v9 & 0x1FFFFFFFFFFFFFFFLL) + 216);

    v15(v16);
LABEL_14:

    return 0;
  }

  if (v10 > 5)
  {
    if (v10 != 6)
    {
      swift_getKeyPath();
      v21[0] = v9 & 0x1FFFFFFFFFFFFFFFLL;
      sub_1A418A5FC(&qword_1EB133C08, type metadata accessor for LemonadeTestNotificationsModel, &unk_1A5320DC4);

      sub_1A52415D4();

      v19 = OBJC_IVAR____TtC12PhotosUICore30LemonadeTestNotificationsModel__item;
      swift_beginAccess();
      sub_1A418B8F8((v9 & 0x1FFFFFFFFFFFFFFFLL) + v19, v4, type metadata accessor for TestNotificationPhotosItem);
      v17 = sub_1A405696C(v20);

      sub_1A418B960(v4, type metadata accessor for TestNotificationPhotosItem);
      return v17;
    }

    v11 = *(*(v9 & 0x1FFFFFFFFFFFFFFFLL) + 480);

    v11(v12);
    goto LABEL_14;
  }

  if (v10 == 4)
  {
    goto LABEL_13;
  }

  return 0;
}

uint64_t sub_1A418A02C(__n128 a1)
{
  sub_1A418B960(v1 + OBJC_IVAR____TtC12PhotosUICore26LemonadeNotificationsModel__item, type metadata accessor for NotificationsPhotosItem);

  v2 = OBJC_IVAR____TtC12PhotosUICore26LemonadeNotificationsModel___observationRegistrar;
  v3 = sub_1A5241614();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);

  return swift_deallocClassInstance();
}

uint64_t sub_1A418A100(uint64_t a1)
{
  swift_getKeyPath();
  sub_1A418A5FC(&qword_1EB133C00, type metadata accessor for LemonadeNotificationsModel, &unk_1A5320DA8);
  sub_1A52415C4();

  return sub_1A418B960(a1, type metadata accessor for NotificationsPhotosItem);
}

void (*sub_1A418A1E4(uint64_t **a1))(void *a1)
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
  v2[4] = sub_1A4189344(v2);
  return sub_1A3E62A10;
}

void sub_1A418A258(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_1A418A5FC(&qword_1EB133C00, type metadata accessor for LemonadeNotificationsModel, &unk_1A5320DA8);
  sub_1A52415D4();

  v4 = v3 + OBJC_IVAR____TtC12PhotosUICore26LemonadeNotificationsModel__item;
  swift_beginAccess();
  v6 = *(v4 + 8);
  v5 = *(v4 + 16);
  *a1 = *v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v5;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A418A32C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A418A5FC(&qword_1EB133C08, type metadata accessor for LemonadeTestNotificationsModel, &unk_1A5320DC4);
  sub_1A52415D4();

  v4 = OBJC_IVAR____TtC12PhotosUICore30LemonadeTestNotificationsModel__item;
  swift_beginAccess();
  return sub_1A418B8F8(v3 + v4, a2, type metadata accessor for TestNotificationPhotosItem);
}

uint64_t sub_1A418A408(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for TestNotificationPhotosItem(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A418B8F8(a1, v6, type metadata accessor for TestNotificationPhotosItem);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_1A418A5FC(&qword_1EB133C08, type metadata accessor for LemonadeTestNotificationsModel, &unk_1A5320DC4);
  sub_1A52415C4();

  return sub_1A418B960(v6, type metadata accessor for TestNotificationPhotosItem);
}

uint64_t sub_1A418A558(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12PhotosUICore30LemonadeTestNotificationsModel__item;
  swift_beginAccess();
  sub_1A418B9C0(a2, a1 + v4, type metadata accessor for TestNotificationPhotosItem);
  return swift_endAccess();
}

uint64_t sub_1A418A5FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t (*sub_1A418A664(uint64_t *a1))()
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC12PhotosUICore30LemonadeTestNotificationsModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1A418A5FC(&qword_1EB133C08, type metadata accessor for LemonadeTestNotificationsModel, &unk_1A5320DC4);
  sub_1A52415D4();

  *v4 = v1;
  swift_getKeyPath();
  sub_1A52415F4();

  swift_beginAccess();
  return sub_1A418A7AC;
}

void sub_1A418A7B8(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  swift_endAccess();
  *v3 = v3[3];
  swift_getKeyPath();
  sub_1A52415E4();

  free(v3);
}

uint64_t sub_1A418A83C(__n128 a1)
{
  sub_1A418B960(v1 + OBJC_IVAR____TtC12PhotosUICore30LemonadeTestNotificationsModel__item, type metadata accessor for TestNotificationPhotosItem);
  v2 = OBJC_IVAR____TtC12PhotosUICore30LemonadeTestNotificationsModel___observationRegistrar;
  v3 = sub_1A5241614();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);

  return swift_deallocClassInstance();
}

uint64_t sub_1A418A8FC(uint64_t a1)
{
  swift_getKeyPath();
  sub_1A418A5FC(&qword_1EB133C08, type metadata accessor for LemonadeTestNotificationsModel, &unk_1A5320DC4);
  sub_1A52415C4();

  return sub_1A418B960(a1, type metadata accessor for TestNotificationPhotosItem);
}

void (*sub_1A418A9E0(uint64_t **a1))(void *a1)
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
  v2[4] = sub_1A418A664(v2);
  return sub_1A3E658B0;
}

void sub_1A418AA54(void *a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_1A418A5FC(&qword_1EB133C08, type metadata accessor for LemonadeTestNotificationsModel, &unk_1A5320DC4);
  sub_1A52415D4();

  v4 = OBJC_IVAR____TtC12PhotosUICore30LemonadeTestNotificationsModel__item;
  swift_beginAccess();
  *a1 = *(v3 + v4);
}

uint64_t sub_1A418AB18(uint64_t a1)
{
  v2 = type metadata accessor for TestNotificationPhotosItem(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v57 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v56 = &v53 - v5;
  v6 = type metadata accessor for CloudQuotaNotificationItem(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v54 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v55 = &v53 - v9;
  v10 = type metadata accessor for MacSyncedAssetsNotificationItem(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v53 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v53 - v13;
  v15 = type metadata accessor for AssetsRecoveryNotificationItem(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v53 - v19;
  v21 = type metadata accessor for LemonadeSharedLibraryCameraSharingItem(0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v53 - v25;
  v27 = type metadata accessor for InvitationsItem(0);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &v53 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v53 - v31;
  v33 = type metadata accessor for NotificationsPhotosItem.NotificationType(0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v53 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *(type metadata accessor for NotificationsPhotosItem(0) + 20);
  v58 = a1;
  sub_1A418B8F8(a1 + v36, v35, type metadata accessor for NotificationsPhotosItem.NotificationType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v42 = *v35;
        sub_1A3E05888(0);
        v59 = v42;
        v43 = sub_1A4226B64(&v59);
        sub_1A418B960(v58, type metadata accessor for NotificationsPhotosItem);
        return v43 | 0xC000000000000000;
      }

      else
      {
        v50 = v56;
        sub_1A418B890(v35, v56, type metadata accessor for TestNotificationPhotosItem);
        v51 = v57;
        sub_1A418B8F8(v50, v57, type metadata accessor for TestNotificationPhotosItem);
        type metadata accessor for LemonadeTestNotificationsModel(0);
        v52 = swift_allocObject();
        sub_1A5241604();
        sub_1A418B960(v58, type metadata accessor for NotificationsPhotosItem);
        sub_1A418B960(v50, type metadata accessor for TestNotificationPhotosItem);
        sub_1A418B890(v51, v52 + OBJC_IVAR____TtC12PhotosUICore30LemonadeTestNotificationsModel__item, type metadata accessor for TestNotificationPhotosItem);
        return v52 | 0xE000000000000000;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        sub_1A418B890(v35, v14, type metadata accessor for MacSyncedAssetsNotificationItem);
        type metadata accessor for MacSyncedAssetsNotificationModel(0);
        v40 = v53;
        sub_1A418B8F8(v14, v53, type metadata accessor for MacSyncedAssetsNotificationItem);
        sub_1A4A59AD0(v40);
      }

      v47 = v55;
      sub_1A418B890(v35, v55, type metadata accessor for CloudQuotaNotificationItem);
      type metadata accessor for LemonadeCloudQuotaNotificationModel(0);
      v48 = v54;
      sub_1A418B8F8(v47, v54, type metadata accessor for CloudQuotaNotificationItem);
      v49 = sub_1A444BF98(v48);
      sub_1A418B960(v58, type metadata accessor for NotificationsPhotosItem);
      sub_1A418B960(v47, type metadata accessor for CloudQuotaNotificationItem);
      return v49 | 0xA000000000000000;
    }
  }

  else if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      sub_1A418B890(v35, v20, type metadata accessor for AssetsRecoveryNotificationItem);
      type metadata accessor for LemonadeAssetsRecoveryNotificationModel(0);
      sub_1A418B8F8(v20, v17, type metadata accessor for AssetsRecoveryNotificationItem);
      sub_1A4968410(v17);
    }

    sub_1A418B890(v35, v26, type metadata accessor for LemonadeSharedLibraryCameraSharingItem);
    type metadata accessor for LemonadeSharedLibraryCameraSharingModel(0);
    sub_1A418B8F8(v26, v23, type metadata accessor for LemonadeSharedLibraryCameraSharingItem);
    v41 = sub_1A48DCE28(v23);
    sub_1A418B960(v58, type metadata accessor for NotificationsPhotosItem);
    sub_1A418B960(v26, type metadata accessor for LemonadeSharedLibraryCameraSharingItem);
    return v41 | 0x4000000000000000;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v44 = *v35;
      v45 = v35[8];
      sub_1A3DB1E58(0);
      type metadata accessor for LemonadeSharedLibrarySuggestionModel(0);
      v59 = v44;
      v60 = v45;
      v46 = *(v35 + 2);
      v61 = *(v35 + 1);
      v62 = v46;
      sub_1A3E928AC(&v59);
    }

    sub_1A418B890(v35, v32, type metadata accessor for InvitationsItem);
    type metadata accessor for LemonadeInvitationModel(0);
    sub_1A418B8F8(v32, v29, type metadata accessor for InvitationsItem);
    v38 = sub_1A4604AFC(v29);
    sub_1A418B960(v58, type metadata accessor for NotificationsPhotosItem);
    sub_1A418B960(v32, type metadata accessor for InvitationsItem);
    return v38;
  }
}

uint64_t sub_1A418B594(uint64_t a1)
{
  result = type metadata accessor for NotificationsPhotosItem(319);
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

uint64_t sub_1A418B674(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x79 && *(a1 + 8))
  {
    return (*a1 + 121);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x78)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1A418B6D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x78)
  {
    *result = a2 - 121;
    if (a3 >= 0x79)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x79)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1A418B75C(uint64_t a1)
{
  result = type metadata accessor for TestNotificationPhotosItem(319);
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

void sub_1A418B828(uint64_t a1)
{
  if (!qword_1EB133C30)
  {
    type metadata accessor for NotificationsPhotosItem.NotificationType(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB133C30);
    }
  }
}

uint64_t sub_1A418B890(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A418B8F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A418B960(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A418B9C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

void sub_1A418BAD8(void *a1, void *a2, void *a3, void *a4, double a5)
{
  v88 = a4;
  v77 = a3;
  v76 = a2;
  v87 = a1;
  v6 = MEMORY[0x1E695C070];
  sub_1A418C3FC(0, &qword_1EB1249D0, &qword_1EB121CC0, MEMORY[0x1E6981748], MEMORY[0x1E695C070], a5);
  v85 = *(v7 - 8);
  v86 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v84 = &v75 - v8;
  sub_1A418C330(0);
  v82 = *(v9 - 8);
  v83 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v81 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F31320(0);
  v80 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v79 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v75 - v14;
  sub_1A418C3C8(0);
  v78 = v16;
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1E69E6158];
  sub_1A418C3FC(0, &qword_1EB128B38, &qword_1EB126FA0, MEMORY[0x1E69E6158], v6, v18);
  v23 = v22;
  v24 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v75 - v25;
  v27 = OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedWithYouWidgetViewModel__syndicationContactName;
  v28 = v21;
  v29 = MEMORY[0x1E69E6720];
  sub_1A418E190(0, &qword_1EB126FA0, v28, MEMORY[0x1E69E6720]);
  v91 = 0;
  v92 = 0;
  sub_1A52479A4();
  (*(v24 + 32))(v5 + v27, v26, v23);
  v30 = v87;
  v31 = OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedWithYouWidgetViewModel__syndicationContactImage;
  v91 = 0;
  sub_1A4102970(0);
  sub_1A52479A4();
  (*(v17 + 32))(v5 + v31, v20, v78);
  v32 = OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedWithYouWidgetViewModel__syndicationSharedInAttributedTitle;
  v33 = sub_1A52407E4();
  (*(*(v33 - 8) + 56))(v15, 1, 1, v33);
  sub_1A418C478(v15, v79);
  v34 = v81;
  sub_1A52479A4();
  sub_1A418C4DC(v15);
  (*(v82 + 32))(v5 + v32, v34, v83);
  v35 = OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedWithYouWidgetViewModel__messagesAppIcon;
  v91 = 0;
  sub_1A418E190(0, &qword_1EB121CC0, MEMORY[0x1E6981748], v29);
  v36 = v84;
  sub_1A52479A4();
  (*(v85 + 32))(v5 + v35, v36, v86);
  swift_unknownObjectWeakInit();
  v37 = (v5 + OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedWithYouWidgetViewModel_attributionIdentifier);
  *v37 = 0;
  v37[1] = 0xE000000000000000;
  v38 = (v5 + OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedWithYouWidgetViewModel_senderAppName);
  *v38 = 0;
  v38[1] = 0;
  v39 = (v5 + OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedWithYouWidgetViewModel_axDescriptionForContactImage);
  *v39 = 0;
  v39[1] = 0;
  v40 = (v5 + OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedWithYouWidgetViewModel_axDescriptionForTextLabels);
  *v40 = 0;
  v40[1] = 0;
  v41 = (v5 + OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedWithYouWidgetViewModel_axDescriptionForReplyButton);
  *v41 = 0;
  v41[1] = 0;
  v42 = (v5 + OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedWithYouWidgetViewModel_axHint);
  *v42 = 0;
  v42[1] = 0;
  v43 = [objc_allocWithZone(PXContentSyndicationAttributionInfo) initWithAsset_];
  v44 = OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedWithYouWidgetViewModel_attributionInfo;
  *(v5 + OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedWithYouWidgetViewModel_attributionInfo) = v43;
  LOBYTE(v35) = [v43 syndicationAttributionInfoIsLoading];
  swift_beginAccess();
  v90 = v35;
  sub_1A52479A4();
  swift_endAccess();
  LOBYTE(v36) = [*(v5 + v44) hasSyndicationAttributionInfo];
  swift_beginAccess();
  v90 = v36;
  sub_1A52479A4();
  swift_endAccess();
  v45 = [*(v5 + v44) axDescriptionForSyndicationLoadingIndicator];
  v46 = sub_1A524C674();
  v48 = v47;

  v49 = (v5 + OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedWithYouWidgetViewModel_axDescriptionForLoadingIndicator);
  *v49 = v46;
  v49[1] = v48;
  v50 = [*(v5 + v44) senderAppName];
  if (v50)
  {
    v51 = v50;
    v52 = sub_1A524C674();
    v54 = v53;
  }

  else
  {
    v52 = 0;
    v54 = 0;
  }

  swift_beginAccess();
  *v38 = v52;
  v38[1] = v54;

  v55 = v88;
  if (v88 || (v56 = sub_1A524D244(), v57 = sub_1A475874C(), swift_beginAccess(), v58 = *v57, !os_log_type_enabled(v58, v56)))
  {
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    type metadata accessor for PhotosDetailsSavedFromAppsWidgetViewModel(0);
    v66 = v30;
    v67 = v76;
    v68 = v77;
    *(v5 + OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedWithYouWidgetViewModel_appAttributionModel) = sub_1A4406828(v66, v67, v68);
    v69 = v66;
    v70 = v67;
    v71 = v68;
    v72 = sub_1A4467460(v69, v70, v71);
    v73 = *&v72[OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedWithYouWidgetViewModel_attributionInfo];
    v74 = v72;
    [v73 setChangeDelegate_];
  }

  else
  {
    v59 = v58;
    v60 = v30;
    v61 = swift_slowAlloc();
    v89[0] = swift_slowAlloc();
    *v61 = 136315138;
    v62 = [v60 uuid];

    if (v62)
    {
      v63 = sub_1A524C674();
      v65 = v64;

      sub_1A3C2EF94(v63, v65, v89);
    }

    __break(1u);
  }
}

void sub_1A418C364(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A418C3FC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), double a6)
{
  if (!*a2)
  {
    sub_1A418E190(255, a3, a4, MEMORY[0x1E69E6720]);
    v10 = a5(a1, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1A418C478(uint64_t a1, uint64_t a2)
{
  sub_1A3F31320(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A418C4DC(uint64_t a1)
{
  sub_1A3F31320(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A418C538()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  return v1;
}

double sub_1A418C5AC@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  result = *&v4;
  *a2 = v4;
  return result;
}

void sub_1A418C62C(uint64_t *a1, void **a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A418C6D4(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return sub_1A52479F4();
}

double sub_1A418C748()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  return result;
}

double sub_1A418C7C0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  return result;
}

uint64_t sub_1A418C83C(uint64_t a1, void **a2)
{
  sub_1A3F31320(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  sub_1A418C478(a1, &v13 - v8);
  v10 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A418C478(v9, v6);
  v11 = v10;
  sub_1A52479F4();
  return sub_1A418C4DC(v9);
}

uint64_t sub_1A418C984(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  return v3;
}

void sub_1A418CA04(_BYTE *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  *a4 = v5;
}

uint64_t sub_1A418CA94(char *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v6;
  return sub_1A52479F4();
}

uint64_t sub_1A418CB14(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  return v3;
}

void sub_1A418CB94(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  *a4 = v5;
}

uint64_t sub_1A418CC10(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_1A52479F4();
}

void sub_1A418CC88()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  if (!v4)
  {
    sub_1A3D72BFC();
    v0 = sub_1A524C674();
    v2 = v1;
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_1A3D72C4C(v0, v2, sub_1A418DE20, v3, 30.0, 30.0);
  }
}

uint64_t sub_1A418CDB0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1A3F31320(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  if (v13[15] == 1)
  {
    v7 = [*(v2 + OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedWithYouWidgetViewModel_attributionInfo) syndicationSharedWithInMessagesAttributedTitle];
    swift_getKeyPath();
    sub_1A52406B4();
    sub_1A418DEB4();
    sub_1A5240804();
    v9 = sub_1A52407E4();
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    v11(v6, 0, 1, v9);
    (*(v10 + 32))(a1, v6, v9);
    return v11(a1, 0, 1, v9);
  }

  else
  {
    v8 = sub_1A52407E4();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

uint64_t sub_1A418D044@<X0>(uint64_t *a1@<X8>)
{
  sub_1A52406C4();
  result = sub_1A52406B4();
  *a1 = result;
  return result;
}

void sub_1A418D074(void *a1)
{
  sub_1A3F31320(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = v56 - v8;
  v10 = [a1 syndicationAttributionInfoIsLoading];
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v57) = v10;
  v11 = v1;
  sub_1A52479F4();
  v12 = [a1 hasSyndicationAttributionInfo];
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v57) = v12;
  v13 = v11;
  sub_1A52479F4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  if ((v57 & 1) == 0)
  {
    v14 = [a1 syndicationSenderDisplayName];
    if (v14)
    {
      v15 = v14;
      v16 = sub_1A524C674();
      v18 = v17;
    }

    else
    {
      v16 = 0;
      v18 = 0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v57 = v16;
    v58 = v18;
    v19 = v13;
    sub_1A52479F4();
    v20 = [a1 senderThumbnailImage];
    swift_getKeyPath();
    swift_getKeyPath();
    v57 = v20;
    v21 = v19;
    sub_1A52479F4();
    v22 = [a1 syndicationSharedWithInMessagesAttributedTitle];
    sub_1A5240834();
    v23 = sub_1A52407E4();
    (*(*(v23 - 8) + 56))(v9, 0, 1, v23);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1A418C478(v9, v5);
    v24 = v21;
    sub_1A52479F4();
    sub_1A418C4DC(v9);
    v25 = [a1 syndicationAttributionIdentifier];
    if (v25)
    {
      v26 = v25;
      v27 = sub_1A524C674();
      v29 = v28;
    }

    else
    {
      v27 = 0;
      v29 = 0xE000000000000000;
    }

    v30 = &v24[OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedWithYouWidgetViewModel_attributionIdentifier];
    swift_beginAccess();
    *v30 = v27;
    v30[1] = v29;

    v31 = [a1 axDescriptionForSyndicationContactImage];
    if (v31)
    {
      v32 = v31;
      v33 = sub_1A524C674();
      v35 = v34;
    }

    else
    {
      v33 = 0;
      v35 = 0;
    }

    v36 = &v24[OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedWithYouWidgetViewModel_axDescriptionForContactImage];
    swift_beginAccess();
    *v36 = v33;
    v36[1] = v35;

    v37 = [a1 axDescriptionForSyndicationReplyButton];
    if (v37)
    {
      v38 = v37;
      v39 = sub_1A524C674();
      v41 = v40;
    }

    else
    {
      v39 = 0;
      v41 = 0;
    }

    v42 = &v24[OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedWithYouWidgetViewModel_axDescriptionForTextLabels];
    swift_beginAccess();
    *v42 = v39;
    v42[1] = v41;

    v43 = [a1 axDescriptionForSyndicationReplyButton];
    if (v43)
    {
      v44 = v43;
      v45 = sub_1A524C674();
      v47 = v46;
    }

    else
    {
      v45 = 0;
      v47 = 0;
    }

    v48 = &v24[OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedWithYouWidgetViewModel_axDescriptionForReplyButton];
    swift_beginAccess();
    *v48 = v45;
    v48[1] = v47;

    v49 = [a1 axHintForSyndicationButton];
    if (v49)
    {
      v50 = v49;
      v51 = sub_1A524C674();
      v53 = v52;
    }

    else
    {
      v51 = 0;
      v53 = 0;
    }

    if ((v54 = &v24[OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedWithYouWidgetViewModel_axHint], swift_beginAccess(), *v54 = v51, v54[1] = v53, , swift_getKeyPath(), swift_getKeyPath(), sub_1A52479E4(), , , (v56[0] & 1) == 0) && (v55 = &v24[OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedWithYouWidgetViewModel_senderAppName], swift_beginAccess(), !*(v55 + 1)) || sub_1A446803C() == 5)
    {
      sub_1A4468130();
    }
  }
}

uint64_t sub_1A418D68C(void *a1)
{
  v1 = [a1 firstAsset];
  if (v1)
  {
    v2 = v1;
    if ([v1 px_isMomentSharedAsset])
    {
      goto LABEL_10;
    }

    if ([v2 px_wasSavedThroughSyndication])
    {
      sub_1A3C52C70(0, &unk_1EB133C50, off_1E771D718);
      v3 = [swift_getObjCClassFromMetadata() sharedInstance];
      v4 = [v3 showSyndicatedContentWidgetForSavedAssets];

      if (v4)
      {
LABEL_7:
        v7 = [objc_opt_self() sharedInstance];
        if ([v7 isSocialLayerHighlightCachedForAsset_])
        {
          v8 = [v7 cachedSocialLayerHighlightForAsset_];
          if (v8)
          {
            v9 = v2;
          }

          else
          {
            v8 = [v2 syndicatedAppDisplayName];
            if (!v8)
            {
              v6 = 0;
              v9 = v7;
              v7 = v2;
              goto LABEL_16;
            }

            v9 = v7;
            v7 = v2;
          }

          v6 = 1;
        }

        else
        {
          v6 = 1;
          v9 = v2;
        }

LABEL_16:

        v2 = v7;
        goto LABEL_17;
      }
    }

    if (![v2 px_isUnsavedSyndicatedAsset])
    {
LABEL_10:
      v6 = 0;
    }

    else
    {
      sub_1A3C52C70(0, &unk_1EB133C50, off_1E771D718);
      v5 = [swift_getObjCClassFromMetadata() sharedInstance];
      v6 = [v5 showSyndicatedContentWidgetForGuestAssets];

      if (v6)
      {
        goto LABEL_7;
      }
    }

LABEL_17:

    return v6;
  }

  return 0;
}

double sub_1A418D894()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedWithYouWidgetViewModel__syndicationContactName;
  v2 = MEMORY[0x1E695C070];
  sub_1A418C3FC(0, &qword_1EB128B38, &qword_1EB126FA0, MEMORY[0x1E69E6158], MEMORY[0x1E695C070], v3);
  (*(*(v4 - 8) + 8))(v0 + v1, v4);
  v5 = OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedWithYouWidgetViewModel__syndicationContactImage;
  sub_1A418C3C8(0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedWithYouWidgetViewModel__syndicationSharedInAttributedTitle;
  sub_1A418C330(0);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedWithYouWidgetViewModel__syndicationAttributionInfoIsLoading;
  sub_1A418E190(0, &qword_1EB128B30, MEMORY[0x1E69E6370], MEMORY[0x1E695C070]);
  v11 = v10;
  v12 = *(*(v10 - 8) + 8);
  v12(v0 + v9, v10);
  v13 = v12(v0 + OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedWithYouWidgetViewModel__hasSyndicationAttributionInfo, v11);
  v14 = OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedWithYouWidgetViewModel__messagesAppIcon;
  sub_1A418C3FC(0, &qword_1EB1249D0, &qword_1EB121CC0, MEMORY[0x1E6981748], v2, v13);
  (*(*(v15 - 8) + 8))(v0 + v14, v15);
  MEMORY[0x1A590F020](v0 + OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedWithYouWidgetViewModel_viewControllerForPresenting);

  return result;
}

uint64_t sub_1A418DE20(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return sub_1A52479F4();
  }

  return result;
}

unint64_t sub_1A418DEB4()
{
  result = qword_1EB13FA70;
  if (!qword_1EB13FA70)
  {
    sub_1A52406B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FA70);
  }

  return result;
}

uint64_t type metadata accessor for PhotosDetailsSharedWithYouWidgetViewModel(uint64_t a1)
{
  result = qword_1EB18EC30;
  if (!qword_1EB18EC30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A418DF60(uint64_t a1, double a2)
{
  sub_1A418C3FC(319, &qword_1EB128B38, &qword_1EB126FA0, MEMORY[0x1E69E6158], MEMORY[0x1E695C070], a2);
  if (v2 <= 0x3F)
  {
    sub_1A418C3C8(319);
    if (v3 <= 0x3F)
    {
      sub_1A418C330(319);
      if (v4 <= 0x3F)
      {
        sub_1A418E190(319, &qword_1EB128B30, MEMORY[0x1E69E6370], MEMORY[0x1E695C070]);
        if (v6 <= 0x3F)
        {
          sub_1A418C3FC(319, &qword_1EB1249D0, &qword_1EB121CC0, MEMORY[0x1E6981748], MEMORY[0x1E695C070], v5);
          if (v7 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_1A418E190(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A418E1E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeNavigationDestination(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL sub_1A418E244()
{
  v1 = type metadata accessor for LemonadeNavigationDestination(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A418E1E0(v0, v3);
  v4 = swift_getEnumCaseMultiPayload() != 27;
  sub_1A4192C4C(v3, type metadata accessor for LemonadeNavigationDestination);
  return v4;
}

void sub_1A418E2F8(BOOL *a2@<X8>)
{
  v3 = [objc_opt_self() currentDevice];
  v4 = [v3 userInterfaceIdiom];

  sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
  v5 = [swift_getObjCClassFromMetadata() sharedInstance];
  v6 = [v5 defaultPhoneFeedNavigationType];

  if (v4 == 1)
  {
    v7 = 0;
  }

  else if (v4)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6 != 1;
  }

  *a2 = v7;
}

void sub_1A418E3C8(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for LemonadeNavigationDestination(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && (, v9 = sub_1A4654080(), , v9))
  {
    *a2 = 0;
  }

  else
  {
    sub_1A418E1E0(v3, v8);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0xBu:
        sub_1A4192C4C(v8, type metadata accessor for LemonadeNavigationDestination);
        *a2 = 0;
        return;
      case 0xCu:
      case 0xDu:
      case 0xEu:
      case 0xFu:
      case 0x10u:
      case 0x11u:
      case 0x12u:
      case 0x13u:
      case 0x14u:
        sub_1A4192C4C(v8, type metadata accessor for LemonadeNavigationDestination);
        if (!a1 || (sub_1A4655B34() & 1) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_8;
      case 0x15u:
      case 0x16u:
      case 0x21u:
      case 0x22u:
      case 0x24u:
      case 0x26u:
        sub_1A4192C4C(v8, type metadata accessor for LemonadeNavigationDestination);
        goto LABEL_10;
      case 0x18u:
      case 0x1Cu:
      case 0x1Du:
        sub_1A4192C4C(v8, type metadata accessor for LemonadeNavigationDestination);
        goto LABEL_12;
      case 0x1Au:
        *a2 = 2;
        sub_1A4192C4C(v8, type metadata accessor for LemonadeNavigationDestination);
        return;
      case 0x1Eu:
      case 0x25u:
        sub_1A4192C4C(v8, type metadata accessor for LemonadeNavigationDestination);
        v10 = 3;
        goto LABEL_14;
      case 0x1Fu:
        sub_1A4192C4C(v8, type metadata accessor for LemonadeNavigationDestination);
        if (!a1 || (sub_1A4655B34() & 1) == 0)
        {
          goto LABEL_10;
        }

LABEL_8:
        v10 = 0;
        goto LABEL_14;
      case 0x27u:
LABEL_12:
        v10 = 1;
        goto LABEL_14;
      case 0x28u:
LABEL_10:
        v10 = 2;
LABEL_14:
        *a2 = v10;
        break;
      default:
        sub_1A4192C4C(v8, type metadata accessor for LemonadeNavigationDestination);
        sub_1A418E2F8(a2);
        break;
    }
  }
}

BOOL sub_1A418E5F0()
{
  v1 = type metadata accessor for LemonadeNavigationDestination(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A418E1E0(v0, v3);
  v4 = swift_getEnumCaseMultiPayload() != 11;
  sub_1A4192C4C(v3, type metadata accessor for LemonadeNavigationDestination);
  return v4;
}

uint64_t sub_1A418E6A4()
{
  v1 = type metadata accessor for LemonadeNavigationDestination(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A418E1E0(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 0x23 || ((1 << EnumCaseMultiPayload) & 0x9088007F7) == 0)
  {
    v7 = sub_1A524B414();
    sub_1A4192C4C(v3, type metadata accessor for LemonadeNavigationDestination);
    return v7;
  }

  else
  {
    sub_1A4192C4C(v3, type metadata accessor for LemonadeNavigationDestination);
    return sub_1A524B414();
  }
}

uint64_t sub_1A418E7A4()
{
  sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [ObjCClassFromMetadata sharedInstance];
  v2 = [v1 preferNewPlayerForFeeds];

  if (v2 && ((sub_1A418E3C8(0, &v11), v3 = [objc_opt_self() currentDevice], v4 = objc_msgSend(v3, sel_userInterfaceIdiom), v3, v5 = objc_msgSend(ObjCClassFromMetadata, sel_sharedInstance), v6 = objc_msgSend(v5, sel_defaultPhoneFeedNavigationType), v5, v4 == 1) ? (v7 = 0) : v4 ? (v7 = 1) : (v7 = v6 != 1), v10 = v7, static LemonadeDetailsNavigationType.== infix(_:_:)(&v11, &v10)))
  {
    sub_1A418EA00(0, &unk_1EB126290, MEMORY[0x1E69E6F90]);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1A52F8E10;
    *(v8 + 32) = *sub_1A3E5C914();
    v11 = v8;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  sub_1A3D43BC8();
  sub_1A418EA00(0, &unk_1EB126F60, MEMORY[0x1E69E62F8]);
  sub_1A418E98C();
  return sub_1A524E224();
}

unint64_t sub_1A418E98C()
{
  result = qword_1EB126F58;
  if (!qword_1EB126F58)
  {
    sub_1A418EA00(255, &unk_1EB126F60, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB126F58);
  }

  return result;
}

void sub_1A418EA00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for PhotosCollectionPreviewPlayer.Options);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1A418EA54()
{
  v1 = type metadata accessor for LemonadeNavigationDestination(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A418E1E0(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x7974706D45;
  switch(EnumCaseMultiPayload)
  {
    case 1:
    case 3:
    case 15:
    case 18:
    case 19:
      sub_1A4192C4C(v3, type metadata accessor for LemonadeNavigationDestination);
      return 0xD000000000000011;
    case 2:
      sub_1A4192C4C(v3, type metadata accessor for LemonadeNavigationDestination);
      return 0x6F65505F64656546;
    case 4:
      sub_1A4192C4C(v3, type metadata accessor for LemonadeNavigationDestination);
      return 0x6576455F64656546;
    case 5:
      sub_1A4192C4C(v3, type metadata accessor for LemonadeNavigationDestination);
      return 0x6972545F64656546;
    case 6:
      sub_1A4192C4C(v3, type metadata accessor for LemonadeNavigationDestination);
      v6 = 1684366662;
      goto LABEL_18;
    case 7:
      sub_1A4192C4C(v3, type metadata accessor for LemonadeNavigationDestination);
      return 0x64654D5F64656546;
    case 8:
      sub_1A4192C4C(v3, type metadata accessor for LemonadeNavigationDestination);
      return 0x6974555F64656546;
    case 9:
      sub_1A4192C4C(v3, type metadata accessor for LemonadeNavigationDestination);
      return 0x6C61575F64656546;
    case 10:
      sub_1A4192C4C(v3, type metadata accessor for LemonadeNavigationDestination);
      return 0x6F6F425F64656546;
    case 11:
      sub_1A4192C4C(v3, type metadata accessor for LemonadeNavigationDestination);
      return 0x6165535F64656546;
    case 12:
      sub_1A4192C4C(v3, type metadata accessor for LemonadeNavigationDestination);
      return 0x6F68505F64697247;
    case 13:
      sub_1A4192C4C(v3, type metadata accessor for LemonadeNavigationDestination);
      return 0xD00000000000001CLL;
    case 14:
      sub_1A4192C4C(v3, type metadata accessor for LemonadeNavigationDestination);
      return 0xD00000000000001ALL;
    case 16:
      sub_1A4192C4C(v3, type metadata accessor for LemonadeNavigationDestination);
      v6 = 1684632135;
LABEL_18:
      result = v6 | 0x6D654D5F00000000;
      break;
    case 17:
      sub_1A4192C4C(v3, type metadata accessor for LemonadeNavigationDestination);
      result = 0x7265505F64697247;
      break;
    case 20:
      sub_1A4192C4C(v3, type metadata accessor for LemonadeNavigationDestination);
      result = 0xD000000000000017;
      break;
    case 21:
      sub_1A4192C4C(v3, type metadata accessor for LemonadeNavigationDestination);
      result = 0x7055656E4FLL;
      break;
    case 22:
      sub_1A4192C4C(v3, type metadata accessor for LemonadeNavigationDestination);
      result = 0x6C5079726F6D654DLL;
      break;
    case 23:
      sub_1A4192C4C(v3, type metadata accessor for LemonadeNavigationDestination);
      result = 0xD000000000000019;
      break;
    case 24:
      sub_1A4192C4C(v3, type metadata accessor for LemonadeNavigationDestination);
      sub_1A47E3C0C();
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    case 25:
      sub_1A4192C4C(v3, type metadata accessor for LemonadeNavigationDestination);
      result = 7364941;
      break;
    case 26:
      sub_1A47E510C();
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    case 27:
    case 34:
      sub_1A4192C4C(v3, type metadata accessor for LemonadeNavigationDestination);
      result = 0xD000000000000010;
      break;
    case 28:
      sub_1A4192C4C(v3, type metadata accessor for LemonadeNavigationDestination);
      result = 0x6C43695F64697247;
      break;
    case 29:
      sub_1A4192C4C(v3, type metadata accessor for LemonadeNavigationDestination);
      result = 0x425F726F74696445;
      break;
    case 30:
      sub_1A4192C4C(v3, type metadata accessor for LemonadeNavigationDestination);
      result = 0xD000000000000015;
      break;
    case 31:
    case 32:
      sub_1A4192C4C(v3, type metadata accessor for LemonadeNavigationDestination);
      result = 0xD000000000000012;
      break;
    case 33:
      sub_1A4192C4C(v3, type metadata accessor for LemonadeNavigationDestination);
      result = 0x706D495F64697247;
      break;
    case 35:
    case 36:
      sub_1A4192C4C(v3, type metadata accessor for LemonadeNavigationDestination);
      result = 0xD000000000000014;
      break;
    case 37:
      sub_1A4192C4C(v3, type metadata accessor for LemonadeNavigationDestination);
      result = 0xD00000000000001BLL;
      break;
    case 38:
      sub_1A4192C4C(v3, type metadata accessor for LemonadeNavigationDestination);
      result = 0x69566D6F74737543;
      break;
    case 39:
      return result;
    case 40:
      result = 0x697463656C6C6F43;
      break;
    default:
      sub_1A4192C4C(v3, type metadata accessor for LemonadeNavigationDestination);
      result = 0x626C415F64656546;
      break;
  }

  return result;
}

void sub_1A418F3D8(uint64_t a1)
{
  v105 = a1;
  v104 = type metadata accessor for LemonadeGenerativeMemoriesConfiguration(0);
  MEMORY[0x1EEE9AC00](v104);
  v103 = &v101 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for LemonadeMemoryPlayerConfiguration(0);
  MEMORY[0x1EEE9AC00](v102);
  v101 = &v101 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for LemonadePhotosPagingMemoryGridConfiguration(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v101 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LemonadeEventsPhotosPagingGridConfiguration(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LemonadePhotosPagingAssetCollectionGridConfiguration(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LemonadePhotosPagingPhotoKitContainerGridConfiguration(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for LemonadeNavigationDestination(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A418E1E0(v106, v17);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v19 = *v17;
      v62 = *(v17 + 1);
      v64 = *(v17 + 2);
      v63 = *(v17 + 3);
      MEMORY[0x1A590A010](1);
      *&v111 = v19;
      *(&v111 + 1) = v62;
      *&v112 = v64;
      *(&v112 + 1) = v63;
      sub_1A4192A48();
      goto LABEL_25;
    case 2u:
      v48 = *v17;
      v49 = *(v17 + 1);
      v50 = *(v17 + 2);
      v51 = v17[24];
      MEMORY[0x1A590A010](2);
      *&v111 = v48;
      *(&v111 + 1) = v49;
      *&v112 = v50;
      BYTE8(v112) = v51;
      sub_1A3C3682C(0);
      v52 = &unk_1EB133DA0;
      v53 = sub_1A3C3682C;
      goto LABEL_22;
    case 3u:
      v55 = *v17;
      v56 = *(v17 + 1);
      v57 = *(v17 + 2);
      v58 = v17[24];
      MEMORY[0x1A590A010](3);
      *&v111 = v55;
      *(&v111 + 1) = v56;
      *&v112 = v57;
      BYTE8(v112) = v58;
      sub_1A3C47924(0);
      v52 = &unk_1EB133D98;
      v53 = sub_1A3C47924;
LABEL_22:
      sub_1A3C36C5C(v52, v53, &unk_1A531E4C0);
      goto LABEL_37;
    case 4u:
      v31 = *v17;
      v32 = v17[8];
      v34 = *(v17 + 2);
      v33 = *(v17 + 3);
      v35 = *(v17 + 4);
      v36 = *(v17 + 5);
      v37 = *(v17 + 6);
      MEMORY[0x1A590A010](4);
      *&v111 = v31;
      BYTE8(v111) = v32;
      *&v112 = v34;
      *(&v112 + 1) = v33;
      *&v113 = v35;
      *(&v113 + 1) = v36;
      *v114 = v37;
      sub_1A41929F4();
      goto LABEL_30;
    case 5u:
      v72 = *v17;
      v73 = v17[8];
      v75 = *(v17 + 2);
      v74 = *(v17 + 3);
      v76 = *(v17 + 4);
      v77 = *(v17 + 5);
      v78 = *(v17 + 6);
      MEMORY[0x1A590A010](5);
      *&v111 = v72;
      BYTE8(v111) = v73;
      *&v112 = v75;
      *(&v112 + 1) = v74;
      *&v113 = v76;
      *(&v113 + 1) = v77;
      *v114 = v78;
      sub_1A41929A0();
LABEL_30:
      sub_1A524C4B4();

      goto LABEL_38;
    case 6u:
      v80 = *(v17 + 3);
      v113 = *(v17 + 2);
      *v114 = v80;
      *&v114[9] = *(v17 + 57);
      v81 = *(v17 + 1);
      v111 = *v17;
      v112 = v81;
      MEMORY[0x1A590A010](6);
      v109 = v113;
      *v110 = *v114;
      *&v110[9] = *&v114[9];
      v108 = v112;
      v107 = v111;
      sub_1A41928F8();
      sub_1A524C4B4();
      sub_1A419294C(&v111);
      return;
    case 7u:
      v59 = *v17;
      v60 = *(v17 + 1);
      v61 = *(v17 + 2);
      MEMORY[0x1A590A010](7);
      *&v111 = v59;
      *(&v111 + 1) = v60;
      *&v112 = v61;
      sub_1A41928A4();
      goto LABEL_37;
    case 8u:
      v87 = *v17;
      v88 = *(v17 + 1);
      v89 = *(v17 + 2);
      MEMORY[0x1A590A010](8);
      *&v111 = v87;
      *(&v111 + 1) = v88;
      *&v112 = v89;
      sub_1A4192850();
      goto LABEL_37;
    case 9u:
      v41 = *v17;
      v42 = *(v17 + 1);
      v43 = *(v17 + 2);
      MEMORY[0x1A590A010](9);
      *&v111 = v41;
      *(&v111 + 1) = v42;
      *&v112 = v43;
      sub_1A41927FC();
      goto LABEL_37;
    case 0xAu:
      v84 = *v17;
      v85 = *(v17 + 1);
      v86 = *(v17 + 2);
      MEMORY[0x1A590A010](10);
      *&v111 = v84;
      *(&v111 + 1) = v85;
      *&v112 = v86;
      sub_1A41927A8();
LABEL_37:
      sub_1A524C4B4();
LABEL_38:

      goto LABEL_52;
    case 0xBu:
      v29 = *(v17 + 3);
      v113 = *(v17 + 2);
      *v114 = v29;
      *&v114[16] = *(v17 + 4);
      v30 = *(v17 + 1);
      v111 = *v17;
      v112 = v30;
      MEMORY[0x1A590A010](11);
      v109 = v113;
      *v110 = *v114;
      *&v110[16] = *&v114[16];
      v108 = v112;
      v107 = v111;
      sub_1A4192700();
      sub_1A524C4B4();
      sub_1A4192754(&v111);
      return;
    case 0xCu:
      v39 = *(v17 + 3);
      v113 = *(v17 + 2);
      *v114 = v39;
      *&v114[16] = *(v17 + 4);
      *&v115 = *(v17 + 10);
      v40 = *(v17 + 1);
      v111 = *v17;
      v112 = v40;
      MEMORY[0x1A590A010](12);
      sub_1A41926AC();
      sub_1A524C4B4();
      sub_1A3EEDCF8(&v111);
      return;
    case 0xDu:
      sub_1A4192644(v17, v14, type metadata accessor for LemonadePhotosPagingPhotoKitContainerGridConfiguration);
      MEMORY[0x1A590A010](13);
      sub_1A3C36C5C(&unk_1EB125FB0, type metadata accessor for LemonadePhotosPagingPhotoKitContainerGridConfiguration, &protocol conformance descriptor for LemonadePhotosPagingPhotoKitContainerGridConfiguration);
      sub_1A524C4B4();
      sub_1A4192C4C(v14, type metadata accessor for LemonadePhotosPagingPhotoKitContainerGridConfiguration);
      return;
    case 0xEu:
      sub_1A4192644(v17, v11, type metadata accessor for LemonadePhotosPagingAssetCollectionGridConfiguration);
      MEMORY[0x1A590A010](14);
      sub_1A3C36C5C(&unk_1EB12AD38, type metadata accessor for LemonadePhotosPagingAssetCollectionGridConfiguration, &protocol conformance descriptor for LemonadePhotosPagingAssetCollectionGridConfiguration);
      sub_1A524C4B4();
      sub_1A4192C4C(v11, type metadata accessor for LemonadePhotosPagingAssetCollectionGridConfiguration);
      return;
    case 0xFu:
      sub_1A4192644(v17, v8, type metadata accessor for LemonadeEventsPhotosPagingGridConfiguration);
      MEMORY[0x1A590A010](15);
      sub_1A3C36C5C(&qword_1EB133D48, type metadata accessor for LemonadeEventsPhotosPagingGridConfiguration, &unk_1A534298C);
      sub_1A524C4B4();
      v54 = type metadata accessor for LemonadeEventsPhotosPagingGridConfiguration;
      goto LABEL_56;
    case 0x10u:
      sub_1A4192644(v17, v5, type metadata accessor for LemonadePhotosPagingMemoryGridConfiguration);
      MEMORY[0x1A590A010](16);
      sub_1A3C36C5C(&qword_1EB12AD58, type metadata accessor for LemonadePhotosPagingMemoryGridConfiguration, &protocol conformance descriptor for LemonadePhotosPagingMemoryGridConfiguration);
      sub_1A524C4B4();
      sub_1A4192C4C(v5, type metadata accessor for LemonadePhotosPagingMemoryGridConfiguration);
      return;
    case 0x11u:
      v66 = *v17;
      v67 = v17[8];
      MEMORY[0x1A590A010](17);
      *&v111 = v66;
      BYTE8(v111) = v67;
      sub_1A41925F0();
      sub_1A524C4B4();

      return;
    case 0x12u:
      v82 = *(v17 + 3);
      v113 = *(v17 + 2);
      *v114 = v82;
      *&v114[16] = *(v17 + 8);
      v83 = *(v17 + 1);
      v111 = *v17;
      v112 = v83;
      MEMORY[0x1A590A010](18);
      sub_1A419259C();
      sub_1A524C4B4();
      sub_1A3EEDBFC(&v111);
      return;
    case 0x13u:
      v94 = *v17;
      v93 = *(v17 + 1);
      v95 = *(v17 + 2);
      v71 = *(v17 + 3);
      MEMORY[0x1A590A010](19);
      *&v111 = v94;
      *(&v111 + 1) = v93;
      *&v112 = v95;
      *(&v112 + 1) = v71;
      sub_1A4192548();
      sub_1A524C4B4();

      goto LABEL_45;
    case 0x14u:
      v68 = *v17;
      v69 = *(v17 + 1);
      v70 = *(v17 + 2);
      v71 = *(v17 + 3);
      MEMORY[0x1A590A010](20);
      *&v111 = v68;
      *(&v111 + 1) = v69;
      *&v112 = v70;
      *(&v112 + 1) = v71;
      sub_1A41924F4();
      sub_1A524C4B4();

LABEL_45:

      return;
    case 0x15u:
      v79 = *(v17 + 1);
      v111 = *v17;
      v112 = v79;
      *&v113 = *(v17 + 4);
      MEMORY[0x1A590A010](21);
      v107 = v111;
      v108 = v112;
      *&v109 = v113;
      sub_1A41924A0();
      sub_1A524C4B4();
      sub_1A3EED05C(&v111);
      return;
    case 0x16u:
      v8 = v101;
      sub_1A4192644(v17, v101, type metadata accessor for LemonadeMemoryPlayerConfiguration);
      MEMORY[0x1A590A010](22);
      sub_1A3C36C5C(&qword_1EB133D20, type metadata accessor for LemonadeMemoryPlayerConfiguration, &protocol conformance descriptor for LemonadeMemoryPlayerConfiguration);
      sub_1A524C4B4();
      v54 = type metadata accessor for LemonadeMemoryPlayerConfiguration;
      goto LABEL_56;
    case 0x17u:
      v96 = *v17;
      v97 = *(v17 + 1);
      v98 = v17[16];
      MEMORY[0x1A590A010](23);
      *&v111 = v96;
      *(&v111 + 1) = v97;
      LOBYTE(v112) = v98;
      sub_1A419244C();
      sub_1A524C4B4();
      sub_1A4030DDC(v96, v97, v98);
      return;
    case 0x18u:
      v47 = *v17;
      MEMORY[0x1A590A010](24);
      *&v111 = v47;
      sub_1A41923F8();
      goto LABEL_51;
    case 0x19u:
      v44 = *(v17 + 5);
      *&v114[16] = *(v17 + 4);
      v115 = v44;
      v116[0] = *(v17 + 6);
      *(v116 + 11) = *(v17 + 107);
      v45 = *(v17 + 1);
      v111 = *v17;
      v112 = v45;
      v46 = *(v17 + 3);
      v113 = *(v17 + 2);
      *v114 = v46;
      MEMORY[0x1A590A010](25);
      sub_1A41923A4();
      sub_1A524C4B4();
      sub_1A3EED784(&v111);
      return;
    case 0x1Au:
      v8 = v103;
      sub_1A4192644(v17, v103, type metadata accessor for LemonadeGenerativeMemoriesConfiguration);
      MEMORY[0x1A590A010](26);
      sub_1A3C36C5C(&qword_1EB133D00, type metadata accessor for LemonadeGenerativeMemoriesConfiguration, &protocol conformance descriptor for LemonadeGenerativeMemoriesConfiguration);
      sub_1A524C4B4();
      v54 = type metadata accessor for LemonadeGenerativeMemoriesConfiguration;
LABEL_56:
      sub_1A4192C4C(v8, v54);
      return;
    case 0x1Bu:
      v27 = *v17;
      MEMORY[0x1A590A010](28);
      *&v111 = v27;
      sub_1A4192350();
      goto LABEL_51;
    case 0x1Cu:
      v99 = *v17;
      MEMORY[0x1A590A010](29);
      *&v111 = v99;
      sub_1A41922FC();
      goto LABEL_48;
    case 0x1Du:
      v90 = *v17;
      v91 = 30;
      goto LABEL_50;
    case 0x1Eu:
      v90 = *v17;
      v91 = 31;
LABEL_50:
      MEMORY[0x1A590A010](v91);
      *&v111 = v90;
      sub_1A41922A8();
      goto LABEL_51;
    case 0x1Fu:
      v65 = *v17;
      MEMORY[0x1A590A010](32);
      *&v111 = v65;
      sub_1A4192254();
      goto LABEL_48;
    case 0x20u:
      v92 = *v17;
      MEMORY[0x1A590A010](33);
      *&v111 = v92;
      sub_1A4192200();
LABEL_51:
      sub_1A524C4B4();
LABEL_52:

      return;
    case 0x21u:
      v22 = *v17;
      v23 = 34;
      goto LABEL_11;
    case 0x22u:
      v28 = *v17;
      MEMORY[0x1A590A010](35);
      *&v111 = v28;
      sub_1A41921AC();
LABEL_48:
      sub_1A524C4B4();
      swift_unknownObjectRelease();
      return;
    case 0x23u:
      v19 = *v17;
      v24 = *(v17 + 1);
      v26 = *(v17 + 2);
      v25 = *(v17 + 3);
      MEMORY[0x1A590A010](36);
      *&v111 = v19;
      *(&v111 + 1) = v24;
      *&v112 = v26;
      *(&v112 + 1) = v25;
      sub_1A4192158();
      goto LABEL_25;
    case 0x24u:
      v22 = *v17;
      v23 = 37;
      goto LABEL_11;
    case 0x25u:
      v22 = *v17;
      v23 = 38;
LABEL_11:
      MEMORY[0x1A590A010](v23);
      sub_1A524DC04();

      return;
    case 0x26u:
      v100 = *(v17 + 1);
      v111 = *v17;
      v112 = v100;
      v113 = *(v17 + 2);
      *v114 = *(v17 + 6);
      MEMORY[0x1A590A010](39);
      sub_1A4192104();
      sub_1A524C4B4();
      sub_1A3EED4A4(&v111);
      return;
    case 0x27u:
      v38 = 27;
      goto LABEL_43;
    case 0x28u:
      v38 = 40;
LABEL_43:
      MEMORY[0x1A590A010](v38);
      break;
    default:
      v19 = *v17;
      v18 = *(v17 + 1);
      v21 = *(v17 + 2);
      v20 = *(v17 + 3);
      MEMORY[0x1A590A010](0);
      *&v111 = v19;
      *(&v111 + 1) = v18;
      *&v112 = v21;
      *(&v112 + 1) = v20;
      sub_1A4192A9C();
LABEL_25:
      sub_1A524C4B4();

      break;
  }
}

uint64_t sub_1A419036C()
{
  sub_1A524EC94();
  sub_1A418F3D8(v1);
  return sub_1A524ECE4();
}

uint64_t sub_1A41903B0(uint64_t a1)
{
  sub_1A524EC94();
  sub_1A418F3D8(v2);
  return sub_1A524ECE4();
}

uint64_t sub_1A41903FC@<X0>(void *a1@<X8>)
{
  if ([v1 px_isBookmarksFolder] || objc_msgSend(v1, sel_px_isUtilitiesFolder) || objc_msgSend(v1, sel_px_isMediaTypesFolder))
  {

    PXDisplayCollectionDetailedCountsMake();
    *a1 = v3;
    a1[1] = v4;
    a1[2] = v5;
    type metadata accessor for LemonadeNavigationDestination(0);
  }

  else
  {
    if (![v1 px_isSharedAlbumsFolder] && (objc_msgSend(v1, sel_px_isAllMacSyncedAlbumsFolder) & 1) == 0 && (objc_msgSend(v1, sel_px_isMacSyncedFacesFolder) & 1) == 0)
    {
      [v1 px_isMacSyncedEventsFolder];
    }

    v6 = v1;
    PXDisplayCollectionDetailedCountsMake();
    *a1 = v7;
    a1[1] = v8;
    a1[2] = v9;
    a1[3] = v10;
    type metadata accessor for LemonadeNavigationDestination(0);
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A419061C(uint64_t a1, uint64_t *a2)
{
  v295 = a1;
  v296 = a2;
  v2 = type metadata accessor for LemonadeGenerativeMemoriesConfiguration(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v261 = &v251 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for LemonadeMemoryPlayerConfiguration(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v260 = &v251 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v259 = type metadata accessor for LemonadePhotosPagingMemoryGridConfiguration(0);
  MEMORY[0x1EEE9AC00](v259);
  v258 = &v251 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v257 = type metadata accessor for LemonadeEventsPhotosPagingGridConfiguration(0);
  MEMORY[0x1EEE9AC00](v257);
  v256 = &v251 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v255 = type metadata accessor for LemonadePhotosPagingAssetCollectionGridConfiguration(0);
  MEMORY[0x1EEE9AC00](v255);
  v254 = &v251 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v253 = type metadata accessor for LemonadePhotosPagingPhotoKitContainerGridConfiguration(0);
  MEMORY[0x1EEE9AC00](v253);
  v252 = &v251 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v294 = type metadata accessor for LemonadeNavigationDestination(0);
  MEMORY[0x1EEE9AC00](v294);
  v293 = (&v251 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v292 = (&v251 - v12);
  MEMORY[0x1EEE9AC00](v13);
  v290 = (&v251 - v14);
  MEMORY[0x1EEE9AC00](v15);
  v291 = &v251 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v289 = (&v251 - v18);
  MEMORY[0x1EEE9AC00](v19);
  v288 = (&v251 - v20);
  MEMORY[0x1EEE9AC00](v21);
  v287 = (&v251 - v22);
  MEMORY[0x1EEE9AC00](v23);
  v285 = (&v251 - v24);
  MEMORY[0x1EEE9AC00](v25);
  v283 = (&v251 - v26);
  MEMORY[0x1EEE9AC00](v27);
  v282 = (&v251 - v28);
  MEMORY[0x1EEE9AC00](v29);
  v281 = (&v251 - v30);
  MEMORY[0x1EEE9AC00](v31);
  v279 = (&v251 - v32);
  MEMORY[0x1EEE9AC00](v33);
  v286 = &v251 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v284 = &v251 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v277 = (&v251 - v38);
  MEMORY[0x1EEE9AC00](v39);
  v276 = &v251 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v280 = &v251 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v278 = &v251 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v272 = (&v251 - v46);
  MEMORY[0x1EEE9AC00](v47);
  v270 = (&v251 - v48);
  MEMORY[0x1EEE9AC00](v49);
  v274 = (&v251 - v50);
  MEMORY[0x1EEE9AC00](v51);
  v268 = &v251 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v275 = &v251 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v273 = &v251 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v271 = &v251 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v269 = &v251 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v267 = &v251 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v266 = (&v251 - v64);
  MEMORY[0x1EEE9AC00](v65);
  v265 = (&v251 - v66);
  MEMORY[0x1EEE9AC00](v67);
  v264 = (&v251 - v68);
  MEMORY[0x1EEE9AC00](v69);
  v263 = (&v251 - v70);
  MEMORY[0x1EEE9AC00](v71);
  v262 = (&v251 - v72);
  MEMORY[0x1EEE9AC00](v73);
  v75 = (&v251 - v74);
  MEMORY[0x1EEE9AC00](v76);
  v78 = &v251 - v77;
  MEMORY[0x1EEE9AC00](v79);
  v81 = &v251 - v80;
  MEMORY[0x1EEE9AC00](v82);
  v84 = &v251 - v83;
  MEMORY[0x1EEE9AC00](v85);
  v87 = &v251 - v86;
  MEMORY[0x1EEE9AC00](v88);
  v90 = &v251 - v89;
  MEMORY[0x1EEE9AC00](v91);
  v93 = &v251 - v92;
  sub_1A4192BE8(0);
  MEMORY[0x1EEE9AC00](v94 - 8);
  v96 = &v251 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = &v96[*(v97 + 56)];
  sub_1A418E1E0(v295, v96);
  v99 = v296;
  v296 = v98;
  sub_1A418E1E0(v99, v98);
  v100 = v96;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1A418E1E0(v96, v90);
      v174 = *v90;
      v175 = *(v90 + 1);
      v176 = *(v90 + 3);
      v177 = v296;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v178 = *(v90 + 2);
        v101 = *v177;
        v108 = sub_1A4244FF4(v174, v175, v178, v176, *v177, v177[1], v177[2], v177[3]);

        goto LABEL_50;
      }

      goto LABEL_116;
    case 2u:
      sub_1A418E1E0(v96, v87);
      v153 = *v87;
      v154 = *(v87 + 2);
      v155 = v296;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_69;
      }

      v156 = v87[24];
      v157 = *(v87 + 1);
      v159 = *v155;
      v158 = v155[1];
      v160 = v155[2];
      v161 = *(v155 + 24);
      *&v301 = v153;
      *(&v301 + 1) = v157;
      *&v302 = v154;
      BYTE8(v302) = v156;
      *&v307 = v159;
      *(&v307 + 1) = v158;
      *&v308 = v160;
      BYTE8(v308) = v161;
      sub_1A3C36888();
      goto LABEL_41;
    case 3u:
      sub_1A418E1E0(v96, v84);
      v164 = *v84;
      v165 = *(v84 + 2);
      v166 = v296;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_69;
      }

      v167 = v84[24];
      v168 = *(v84 + 1);
      v170 = *v166;
      v169 = v166[1];
      v171 = v166[2];
      v172 = *(v166 + 24);
      *&v301 = v164;
      *(&v301 + 1) = v168;
      *&v302 = v165;
      BYTE8(v302) = v167;
      *&v307 = v170;
      *(&v307 + 1) = v169;
      *&v308 = v171;
      BYTE8(v308) = v172;
      type metadata accessor for LemonadeSocialGroupsShelfProvider(0);
      sub_1A3C36C5C(&qword_1EB125368, type metadata accessor for LemonadeSocialGroupsShelfProvider, &unk_1A537F178);
LABEL_41:
      v173 = sub_1A414D090(&v301, &v307);
      goto LABEL_68;
    case 4u:
      sub_1A418E1E0(v96, v81);
      v134 = *(v81 + 1);
      v307 = *v81;
      v308 = v134;
      v309 = *(v81 + 2);
      *v310 = *(v81 + 6);
      v135 = v296;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v136 = *(v135 + 1);
        v301 = *v135;
        v302 = v136;
        v303 = *(v135 + 2);
        *&v304[0] = v135[6];
        v108 = sub_1A4333B0C(&v307, &v301);
        sub_1A4192D00(&v301);
        sub_1A4192D00(&v307);
        goto LABEL_97;
      }

      sub_1A4192D00(&v307);
      goto LABEL_116;
    case 5u:
      sub_1A418E1E0(v96, v78);
      v198 = *(v78 + 1);
      v307 = *v78;
      v308 = v198;
      v309 = *(v78 + 2);
      *v310 = *(v78 + 6);
      v199 = v296;
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v200 = *(v199 + 1);
        v301 = *v199;
        v302 = v200;
        v303 = *(v199 + 2);
        *&v304[0] = v199[6];
        v108 = sub_1A4333B0C(&v307, &v301);
        sub_1A4192CAC(&v301);
        sub_1A4192CAC(&v307);
        goto LABEL_97;
      }

      sub_1A4192CAC(&v307);
      goto LABEL_116;
    case 6u:
      sub_1A418E1E0(v96, v75);
      v209 = v75[3];
      v309 = v75[2];
      *v310 = v209;
      *&v310[9] = *(v75 + 57);
      v210 = v75[1];
      v307 = *v75;
      v308 = v210;
      v211 = v296;
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v212 = *(v211 + 3);
        v303 = *(v211 + 2);
        v304[0] = v212;
        *(v304 + 9) = *(v211 + 57);
        v213 = *(v211 + 1);
        v301 = *v211;
        v302 = v213;
        v108 = sub_1A45A422C(&v307, &v301);
        sub_1A419294C(&v301);
        sub_1A419294C(&v307);
        goto LABEL_97;
      }

      sub_1A419294C(&v307);
      goto LABEL_116;
    case 7u:
      v141 = v262;
      sub_1A418E1E0(v96, v262);
      v142 = *v141;
      v143 = v141[2];
      v144 = v296;
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        goto LABEL_67;
      }

      goto LABEL_69;
    case 8u:
      v141 = v263;
      sub_1A418E1E0(v96, v263);
      v142 = *v141;
      v143 = v141[2];
      v144 = v296;
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        goto LABEL_67;
      }

      goto LABEL_69;
    case 9u:
      v141 = v264;
      sub_1A418E1E0(v96, v264);
      v142 = *v141;
      v143 = v141[2];
      v144 = v296;
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        goto LABEL_67;
      }

      goto LABEL_69;
    case 0xAu:
      v141 = v265;
      sub_1A418E1E0(v96, v265);
      v142 = *v141;
      v143 = v141[2];
      v144 = v296;
      if (swift_getEnumCaseMultiPayload() == 10)
      {
LABEL_67:
        v173 = sub_1A3D66174(v142, v141[1], v143, *v144, v144[1], v144[2]);
LABEL_68:
        v108 = v173;

        goto LABEL_97;
      }

LABEL_69:

LABEL_70:

      goto LABEL_116;
    case 0xBu:
      v128 = v266;
      sub_1A418E1E0(v96, v266);
      v129 = v128[3];
      v309 = v128[2];
      *v310 = v129;
      *&v310[16] = v128[4];
      v130 = v128[1];
      v307 = *v128;
      v308 = v130;
      v131 = v296;
      if (swift_getEnumCaseMultiPayload() == 11)
      {
        v132 = *(v131 + 3);
        v303 = *(v131 + 2);
        v304[0] = v132;
        v304[1] = *(v131 + 4);
        v133 = *(v131 + 1);
        v301 = *v131;
        v302 = v133;
        v108 = sub_1A3F3A748();
        sub_1A4192754(&v301);
        sub_1A4192754(&v307);
        goto LABEL_97;
      }

      sub_1A4192754(&v307);
      goto LABEL_116;
    case 0xCu:
      v137 = v267;
      sub_1A418E1E0(v96, v267);
      v138 = v296;
      if (swift_getEnumCaseMultiPayload() == 12)
      {
        v139 = *(v138 + 3);
        v303 = *(v138 + 2);
        v304[0] = v139;
        v304[1] = *(v138 + 4);
        *&v305 = v138[10];
        v140 = *(v138 + 1);
        v301 = *v138;
        v302 = v140;
        v108 = static LemonadePhotosGridConfiguration.== infix(_:_:)(v137, &v301);
        sub_1A3EEDCF8(&v301);
        sub_1A3EEDCF8(v137);
        goto LABEL_97;
      }

      sub_1A3EEDCF8(v137);
      goto LABEL_116;
    case 0xDu:
      v119 = v269;
      sub_1A418E1E0(v96, v269);
      v207 = v296;
      if (swift_getEnumCaseMultiPayload() == 13)
      {
        v121 = v252;
        sub_1A4192644(v207, v252, type metadata accessor for LemonadePhotosPagingPhotoKitContainerGridConfiguration);
        v208 = sub_1A3C36C5C(&qword_1EB125FA0, type metadata accessor for LemonadePhotosPagingPhotoKitContainerGridConfiguration, &protocol conformance descriptor for LemonadePhotosPagingPhotoKitContainerGridConfiguration);
        v108 = static LemonadePhotosPagingGridConfiguration.== infix(_:_:)(v119, v121, v253, v208);
        v123 = type metadata accessor for LemonadePhotosPagingPhotoKitContainerGridConfiguration;
        goto LABEL_96;
      }

      v249 = type metadata accessor for LemonadePhotosPagingPhotoKitContainerGridConfiguration;
      goto LABEL_115;
    case 0xEu:
      v119 = v271;
      sub_1A418E1E0(v96, v271);
      v124 = v296;
      if (swift_getEnumCaseMultiPayload() == 14)
      {
        v121 = v254;
        sub_1A4192644(v124, v254, type metadata accessor for LemonadePhotosPagingAssetCollectionGridConfiguration);
        v125 = sub_1A3C36C5C(&unk_1EB12AD20, type metadata accessor for LemonadePhotosPagingAssetCollectionGridConfiguration, &protocol conformance descriptor for LemonadePhotosPagingAssetCollectionGridConfiguration);
        v108 = static LemonadePhotosPagingGridConfiguration.== infix(_:_:)(v119, v121, v255, v125);
        v123 = type metadata accessor for LemonadePhotosPagingAssetCollectionGridConfiguration;
        goto LABEL_96;
      }

      v249 = type metadata accessor for LemonadePhotosPagingAssetCollectionGridConfiguration;
      goto LABEL_115;
    case 0xFu:
      v119 = v273;
      sub_1A418E1E0(v96, v273);
      v162 = v296;
      if (swift_getEnumCaseMultiPayload() == 15)
      {
        v121 = v256;
        sub_1A4192644(v162, v256, type metadata accessor for LemonadeEventsPhotosPagingGridConfiguration);
        v163 = sub_1A3C36C5C(&qword_1EB12E448, type metadata accessor for LemonadeEventsPhotosPagingGridConfiguration, &unk_1A5342948);
        v108 = static LemonadePhotosPagingGridConfiguration.== infix(_:_:)(v119, v121, v257, v163);
        v123 = type metadata accessor for LemonadeEventsPhotosPagingGridConfiguration;
        goto LABEL_96;
      }

      v249 = type metadata accessor for LemonadeEventsPhotosPagingGridConfiguration;
      goto LABEL_115;
    case 0x10u:
      v119 = v275;
      sub_1A418E1E0(v96, v275);
      v120 = v296;
      if (swift_getEnumCaseMultiPayload() == 16)
      {
        v121 = v258;
        sub_1A4192644(v120, v258, type metadata accessor for LemonadePhotosPagingMemoryGridConfiguration);
        v122 = sub_1A3C36C5C(&qword_1EB12AD48, type metadata accessor for LemonadePhotosPagingMemoryGridConfiguration, &protocol conformance descriptor for LemonadePhotosPagingMemoryGridConfiguration);
        v108 = static LemonadePhotosPagingGridConfiguration.== infix(_:_:)(v119, v121, v259, v122);
        v123 = type metadata accessor for LemonadePhotosPagingMemoryGridConfiguration;
        goto LABEL_96;
      }

      v249 = type metadata accessor for LemonadePhotosPagingMemoryGridConfiguration;
      goto LABEL_115;
    case 0x11u:
      v183 = v268;
      sub_1A418E1E0(v96, v268);
      v101 = *v183;
      v184 = v296;
      if (swift_getEnumCaseMultiPayload() != 17)
      {
        goto LABEL_51;
      }

      v185 = *(v183 + 8);
      v186 = *v184;
      v187 = *(v184 + 8);
      *&v301 = v101;
      BYTE8(v301) = v185;
      *&v307 = v186;
      BYTE8(v307) = v187;
      v108 = static LemonadePhotosPersonGridConfiguration.== infix(_:_:)(&v301, &v307);

      goto LABEL_50;
    case 0x12u:
      v214 = v274;
      sub_1A418E1E0(v96, v274);
      v215 = v296;
      if (swift_getEnumCaseMultiPayload() == 18)
      {
        v216 = *(v215 + 3);
        v303 = *(v215 + 2);
        v304[0] = v216;
        *&v304[1] = v215[8];
        v217 = *(v215 + 1);
        v301 = *v215;
        v302 = v217;
        v108 = static LemonadePeoplePhotosPagingGridConfiguration.== infix(_:_:)(v214, &v301);
        sub_1A3EEDBFC(&v301);
        sub_1A3EEDBFC(v214);
        goto LABEL_97;
      }

      sub_1A3EEDBFC(v214);
      goto LABEL_116;
    case 0x13u:
      v223 = v270;
      sub_1A418E1E0(v96, v270);
      v225 = v223[1];
      v224 = v223[2];
      v191 = v223[3];
      v226 = v296;
      if (swift_getEnumCaseMultiPayload() != 19)
      {
        goto LABEL_82;
      }

      v227 = *v223;
      v228 = *v226;
      v229 = v226[1];
      v230 = v226[2];
      v197 = v226[3];
      *&v301 = v227;
      *(&v301 + 1) = v225;
      *&v302 = v224;
      *(&v302 + 1) = v191;
      *&v307 = v228;
      *(&v307 + 1) = v229;
      *&v308 = v230;
      *(&v308 + 1) = v197;
      v108 = static LemonadeUserAlbumsPhotosPagingGridConfiguration.== infix(_:_:)(&v301, &v307);

      goto LABEL_81;
    case 0x14u:
      v188 = v272;
      sub_1A418E1E0(v96, v272);
      v189 = *v188;
      v190 = v188[2];
      v191 = v188[3];
      v192 = v296;
      if (swift_getEnumCaseMultiPayload() != 20)
      {
LABEL_82:

        goto LABEL_116;
      }

      v193 = v188[1];
      v195 = *v192;
      v194 = v192[1];
      v196 = v192[2];
      v197 = v192[3];
      *&v301 = v189;
      *(&v301 + 1) = v193;
      *&v302 = v190;
      *(&v302 + 1) = v191;
      *&v307 = v195;
      *(&v307 + 1) = v194;
      *&v308 = v196;
      *(&v308 + 1) = v197;
      v108 = static LemonadeSharedAlbumsPhotosPagingGridConfiguration.== infix(_:_:)(&v301, &v307);

LABEL_81:

      goto LABEL_97;
    case 0x15u:
      v201 = v278;
      sub_1A418E1E0(v96, v278);
      v202 = *(v201 + 16);
      v301 = *v201;
      v302 = v202;
      *&v303 = *(v201 + 32);
      v203 = v296;
      if (swift_getEnumCaseMultiPayload() == 21)
      {
        v204 = *(v203 + 1);
        v307 = *v203;
        v308 = v204;
        *&v309 = v203[4];
        v205 = *(v201 + 16);
        v299[0] = *v201;
        v299[1] = v205;
        v300 = *(v201 + 32);
        v206 = *(v203 + 1);
        v297[0] = *v203;
        v297[1] = v206;
        v298 = v203[4];
        v108 = static LemonadeOneUpConfiguration.== infix(_:_:)(v299, v297);
        sub_1A3EED05C(&v307);
        sub_1A3EED05C(&v301);
        goto LABEL_97;
      }

      sub_1A3EED05C(&v301);
      goto LABEL_116;
    case 0x16u:
      v119 = v280;
      sub_1A418E1E0(v96, v280);
      v222 = v296;
      if (swift_getEnumCaseMultiPayload() == 22)
      {
        v121 = v260;
        sub_1A4192644(v222, v260, type metadata accessor for LemonadeMemoryPlayerConfiguration);
        v108 = static LemonadeMemoryPlayerConfiguration.== infix(_:_:)(v119, v121);
        v123 = type metadata accessor for LemonadeMemoryPlayerConfiguration;
        goto LABEL_96;
      }

      v249 = type metadata accessor for LemonadeMemoryPlayerConfiguration;
      goto LABEL_115;
    case 0x17u:
      v231 = v276;
      sub_1A418E1E0(v96, v276);
      v233 = *v231;
      v232 = *(v231 + 8);
      v234 = *(v231 + 16);
      v235 = v296;
      if (swift_getEnumCaseMultiPayload() == 23)
      {
        v236 = *v235;
        v237 = v235[1];
        v238 = *(v235 + 16);
        *&v301 = v233;
        *(&v301 + 1) = v232;
        LOBYTE(v302) = v234;
        *&v307 = v236;
        *(&v307 + 1) = v237;
        LOBYTE(v308) = v238;
        v108 = static LemonadeSharedAlbumsActivityFeedConfiguration.== infix(_:_:)();
        sub_1A4030DDC(v236, v237, v238);
        sub_1A4030DDC(v233, v232, v234);
        goto LABEL_97;
      }

      sub_1A4030DDC(v233, v232, v234);
      goto LABEL_116;
    case 0x18u:
      v150 = v277;
      sub_1A418E1E0(v96, v277);
      v151 = *v150;
      v152 = v296;
      if (swift_getEnumCaseMultiPayload() != 24)
      {
        goto LABEL_70;
      }

      v113 = sub_1A49C55A8(v151, *v152);
      goto LABEL_91;
    case 0x19u:
      v145 = v284;
      sub_1A418E1E0(v96, v284);
      v146 = v296;
      if (swift_getEnumCaseMultiPayload() == 25)
      {
        v147 = *(v146 + 5);
        v304[1] = *(v146 + 4);
        v305 = v147;
        v306[0] = *(v146 + 6);
        *(v306 + 11) = *(v146 + 107);
        v148 = *(v146 + 1);
        v301 = *v146;
        v302 = v148;
        v149 = *(v146 + 3);
        v303 = *(v146 + 2);
        v304[0] = v149;
        v108 = static LemonadeMapConfiguration.== infix(_:_:)();
        sub_1A3EED784(&v301);
        sub_1A3EED784(v145);
        goto LABEL_97;
      }

      sub_1A3EED784(v145);
      goto LABEL_116;
    case 0x1Au:
      v119 = v286;
      sub_1A418E1E0(v96, v286);
      v247 = v296;
      if (swift_getEnumCaseMultiPayload() == 26)
      {
        v121 = v261;
        sub_1A4192644(v247, v261, type metadata accessor for LemonadeGenerativeMemoriesConfiguration);
        v108 = static LemonadeGenerativeMemoriesConfiguration.== infix(_:_:)(v119, v121);
        v123 = type metadata accessor for LemonadeGenerativeMemoriesConfiguration;
LABEL_96:
        v248 = v123;
        sub_1A4192C4C(v121, v123);
        sub_1A4192C4C(v119, v248);
        goto LABEL_97;
      }

      v249 = type metadata accessor for LemonadeGenerativeMemoriesConfiguration;
LABEL_115:
      sub_1A4192C4C(v119, v249);
      goto LABEL_116;
    case 0x1Bu:
      v110 = v279;
      sub_1A418E1E0(v96, v279);
      v111 = *v110;
      v112 = v296;
      if (swift_getEnumCaseMultiPayload() == 27)
      {
        goto LABEL_12;
      }

      goto LABEL_70;
    case 0x1Cu:
      v239 = v281;
      sub_1A418E1E0(v96, v281);
      v240 = *v239;
      v241 = v296;
      if (swift_getEnumCaseMultiPayload() != 28)
      {
        goto LABEL_88;
      }

      v242 = *v241;
      *&v301 = v240;
      *&v307 = v242;
      v118 = static LemonadeICloudLinkGridConfiguration.== infix(_:_:)(&v301, &v307);
      goto LABEL_87;
    case 0x1Du:
      v243 = v282;
      sub_1A418E1E0(v96, v282);
      v219 = *v243;
      v220 = v296;
      if (swift_getEnumCaseMultiPayload() == 29)
      {
        goto LABEL_90;
      }

      goto LABEL_70;
    case 0x1Eu:
      v218 = v283;
      sub_1A418E1E0(v96, v283);
      v219 = *v218;
      v220 = v296;
      if (swift_getEnumCaseMultiPayload() != 30)
      {
        goto LABEL_70;
      }

LABEL_90:
      v113 = sub_1A411FEF4(v219, *v220);
      goto LABEL_91;
    case 0x1Fu:
      v179 = v285;
      sub_1A418E1E0(v96, v285);
      v180 = *v179;
      v181 = v296;
      if (swift_getEnumCaseMultiPayload() != 31)
      {
        goto LABEL_88;
      }

      v182 = *v181;
      *&v301 = v180;
      *&v307 = v182;
      v118 = static LemonadeSharedWithYouGridConfiguration.== infix(_:_:)(&v301, &v307);
      goto LABEL_87;
    case 0x20u:
      v221 = v287;
      sub_1A418E1E0(v96, v287);
      v111 = *v221;
      v112 = v296;
      if (swift_getEnumCaseMultiPayload() != 32)
      {
        goto LABEL_70;
      }

LABEL_12:
      v113 = sub_1A43C8984(v111, *v112);
LABEL_91:
      v108 = v113;

      goto LABEL_97;
    case 0x21u:
      v126 = v288;
      sub_1A418E1E0(v96, v288);
      v101 = *v126;
      v106 = v296;
      if (swift_getEnumCaseMultiPayload() == 33)
      {
        goto LABEL_20;
      }

      goto LABEL_51;
    case 0x22u:
      v114 = v289;
      sub_1A418E1E0(v96, v289);
      v115 = *v114;
      v116 = v296;
      if (swift_getEnumCaseMultiPayload() != 34)
      {
LABEL_88:
        swift_unknownObjectRelease();
        goto LABEL_116;
      }

      v117 = *v116;
      *&v301 = v115;
      *&v307 = v117;
      v118 = static LemonadeWallpaperEditorConfiguration.== infix(_:_:)(&v301, &v307);
LABEL_87:
      v108 = v118;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      goto LABEL_97;
    case 0x23u:
      v93 = v291;
      sub_1A418E1E0(v96, v291);
      v101 = *v93;
      v102 = *(v93 + 1);
      v103 = *(v93 + 3);
      v104 = v296;
      if (swift_getEnumCaseMultiPayload() == 35)
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    case 0x24u:
      v109 = v290;
      sub_1A418E1E0(v96, v290);
      v101 = *v109;
      v106 = v296;
      if (swift_getEnumCaseMultiPayload() == 36)
      {
        goto LABEL_20;
      }

      goto LABEL_51;
    case 0x25u:
      v105 = v292;
      sub_1A418E1E0(v96, v292);
      v101 = *v105;
      v106 = v296;
      if (swift_getEnumCaseMultiPayload() == 37)
      {
LABEL_20:
        v127 = *v106;
        sub_1A3C52C70(0, &qword_1EB12B160, 0x1E69E58C0);
        v108 = sub_1A524DBF4();

        goto LABEL_97;
      }

LABEL_51:

      goto LABEL_116;
    case 0x26u:
      v244 = v293;
      sub_1A418E1E0(v96, v293);
      v245 = v296;
      if (swift_getEnumCaseMultiPayload() == 38)
      {
        v246 = *(v245 + 1);
        v301 = *v245;
        v302 = v246;
        v303 = *(v245 + 2);
        *&v304[0] = v245[6];
        v108 = sub_1A43F82E4(v244, &v301);
        sub_1A3EED4A4(&v301);
        sub_1A3EED4A4(v244);
        goto LABEL_97;
      }

      sub_1A3EED4A4(v244);
      goto LABEL_116;
    case 0x27u:
      if (swift_getEnumCaseMultiPayload() == 39)
      {
        goto LABEL_78;
      }

      goto LABEL_116;
    case 0x28u:
      if (swift_getEnumCaseMultiPayload() != 40)
      {
        goto LABEL_116;
      }

LABEL_78:
      sub_1A4192C4C(v96, type metadata accessor for LemonadeNavigationDestination);
      v108 = 1;
      return v108 & 1;
    default:
      sub_1A418E1E0(v96, v93);
      v101 = *v93;
      v102 = *(v93 + 1);
      v103 = *(v93 + 3);
      v104 = v296;
      if (swift_getEnumCaseMultiPayload())
      {
LABEL_8:

LABEL_116:
        sub_1A4192C4C(v100, sub_1A4192BE8);
        v108 = 0;
      }

      else
      {
LABEL_7:
        v107 = *v104;
        v108 = sub_1A43D906C(v101, v102, *(v93 + 2), v103, *v104, v104[1], v104[2], v104[3]);

LABEL_50:
LABEL_97:
        sub_1A4192C4C(v100, type metadata accessor for LemonadeNavigationDestination);
      }

      return v108 & 1;
  }
}

unint64_t sub_1A4192104()
{
  result = qword_1EB133CC0;
  if (!qword_1EB133CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133CC0);
  }

  return result;
}

unint64_t sub_1A4192158()
{
  result = qword_1EB133CC8;
  if (!qword_1EB133CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133CC8);
  }

  return result;
}

unint64_t sub_1A41921AC()
{
  result = qword_1EB133CD0;
  if (!qword_1EB133CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133CD0);
  }

  return result;
}

unint64_t sub_1A4192200()
{
  result = qword_1EB133CD8;
  if (!qword_1EB133CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133CD8);
  }

  return result;
}

unint64_t sub_1A4192254()
{
  result = qword_1EB133CE0;
  if (!qword_1EB133CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133CE0);
  }

  return result;
}

unint64_t sub_1A41922A8()
{
  result = qword_1EB133CE8;
  if (!qword_1EB133CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133CE8);
  }

  return result;
}

unint64_t sub_1A41922FC()
{
  result = qword_1EB133CF0;
  if (!qword_1EB133CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133CF0);
  }

  return result;
}

unint64_t sub_1A4192350()
{
  result = qword_1EB133CF8;
  if (!qword_1EB133CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133CF8);
  }

  return result;
}

unint64_t sub_1A41923A4()
{
  result = qword_1EB133D08;
  if (!qword_1EB133D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133D08);
  }

  return result;
}

unint64_t sub_1A41923F8()
{
  result = qword_1EB133D10;
  if (!qword_1EB133D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133D10);
  }

  return result;
}

unint64_t sub_1A419244C()
{
  result = qword_1EB133D18;
  if (!qword_1EB133D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133D18);
  }

  return result;
}

unint64_t sub_1A41924A0()
{
  result = qword_1EB133D28;
  if (!qword_1EB133D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133D28);
  }

  return result;
}

unint64_t sub_1A41924F4()
{
  result = qword_1EB133D30;
  if (!qword_1EB133D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133D30);
  }

  return result;
}

unint64_t sub_1A4192548()
{
  result = qword_1EB12AE80;
  if (!qword_1EB12AE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12AE80);
  }

  return result;
}

unint64_t sub_1A419259C()
{
  result = qword_1EB133D38;
  if (!qword_1EB133D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133D38);
  }

  return result;
}

unint64_t sub_1A41925F0()
{
  result = qword_1EB133D40;
  if (!qword_1EB133D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133D40);
  }

  return result;
}

uint64_t sub_1A4192644(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A41926AC()
{
  result = qword_1EB133D50;
  if (!qword_1EB133D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133D50);
  }

  return result;
}

unint64_t sub_1A4192700()
{
  result = qword_1EB133D58;
  if (!qword_1EB133D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133D58);
  }

  return result;
}

unint64_t sub_1A41927A8()
{
  result = qword_1EB133D60;
  if (!qword_1EB133D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133D60);
  }

  return result;
}

unint64_t sub_1A41927FC()
{
  result = qword_1EB133D68;
  if (!qword_1EB133D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133D68);
  }

  return result;
}

unint64_t sub_1A4192850()
{
  result = qword_1EB133D70;
  if (!qword_1EB133D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133D70);
  }

  return result;
}

unint64_t sub_1A41928A4()
{
  result = qword_1EB133D78;
  if (!qword_1EB133D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133D78);
  }

  return result;
}

unint64_t sub_1A41928F8()
{
  result = qword_1EB133D80;
  if (!qword_1EB133D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133D80);
  }

  return result;
}

unint64_t sub_1A41929A0()
{
  result = qword_1EB133D88;
  if (!qword_1EB133D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133D88);
  }

  return result;
}

unint64_t sub_1A41929F4()
{
  result = qword_1EB133D90;
  if (!qword_1EB133D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133D90);
  }

  return result;
}

unint64_t sub_1A4192A48()
{
  result = qword_1EB133DA8;
  if (!qword_1EB133DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133DA8);
  }

  return result;
}

unint64_t sub_1A4192A9C()
{
  result = qword_1EB133DB0;
  if (!qword_1EB133DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133DB0);
  }

  return result;
}

unint64_t sub_1A4192B84()
{
  result = qword_1EB133DB8;
  if (!qword_1EB133DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133DB8);
  }

  return result;
}