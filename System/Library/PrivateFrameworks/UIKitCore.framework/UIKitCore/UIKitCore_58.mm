double sub_1890A9D24()
{
  swift_getKeyPath();
  sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel, &unk_18A663EE8);
  sub_18A4A2C08();

  return *(v0 + 136);
}

void sub_1890A9DC4(double a1)
{
  if (*(v1 + 136) == a1)
  {
    *(v1 + 136) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel, &unk_18A663EE8);
    sub_18A4A2BF8();
  }
}

void sub_1890A9EDC(double a1)
{
  if (*(v1 + 144) == a1)
  {
    *(v1 + 144) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel, &unk_18A663EE8);
    sub_18A4A2BF8();
  }
}

void sub_1890A9FF4(double a1)
{
  if (*(v1 + 152) == a1)
  {
    *(v1 + 152) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel, &unk_18A663EE8);
    sub_18A4A2BF8();
  }
}

void sub_1890AA10C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188BAD1EC(&qword_1EA930D28, _s4ItemCMa, &unk_18A663B20);
  sub_18A4A2C08();

  *a2 = *(v3 + OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item__requiresOwnSection);
}

uint64_t sub_1890AA1E4@<X0>(uint64_t *a2@<X8>)
{
  swift_getKeyPath();
  sub_188BAD1EC(&qword_1EA930D28, _s4ItemCMa, &unk_18A663B20);
  sub_18A4A2C08();

  result = swift_weakLoadStrong();
  *a2 = result;
  return result;
}

double sub_1890AA298(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_188BAD1EC(&qword_1EA930D28, _s4ItemCMa, &unk_18A663B20);
  sub_18A4A2BF8();

  return result;
}

double sub_1890AA364()
{
  swift_getKeyPath();
  sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel, &unk_18A663EE8);
  sub_18A4A2C08();

  return result;
}

void sub_1890AA408(unsigned __int8 *a1)
{
  swift_beginAccess();
  if (*(v1 + 32) == *a1 && ((*(v1 + 33) ^ a1[1]) & 1) == 0 && *(v1 + 34) == (a1[2] & 1) && ((*(v1 + 35) ^ a1[3]) & 1) == 0 && *(v1 + 36) == a1[4] && (sub_18A4A43B8() & 1) != 0 && (sub_18A4A43B8() & 1) != 0)
  {
    v3 = *(a1 + 3);
    *(v1 + 64) = *(a1 + 2);
    *(v1 + 80) = v3;
    *(v1 + 96) = *(a1 + 8);
    v4 = *(a1 + 1);
    *(v1 + 32) = *a1;
    *(v1 + 48) = v4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel, &unk_18A663EE8);
    sub_18A4A2BF8();
  }
}

uint64_t sub_1890AA5D4()
{
  swift_getKeyPath();
  sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel, &unk_18A663EE8);
  sub_18A4A2C08();

  return *(v0 + 104);
}

void sub_1890AA674(char a1)
{
  if (*(v1 + 104) == (a1 & 1))
  {
    *(v1 + 104) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel, &unk_18A663EE8);
    sub_18A4A2BF8();
  }
}

uint64_t sub_1890AA794()
{
  swift_getKeyPath();
  sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel, &unk_18A663EE8);
  sub_18A4A2C08();

  return *(v0 + 128);
}

double sub_1890AA84C()
{
  swift_getKeyPath();
  sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel, &unk_18A663EE8);
  sub_18A4A2C08();

  return *(v0 + 144);
}

double sub_1890AA8F4()
{
  swift_getKeyPath();
  sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel, &unk_18A663EE8);
  sub_18A4A2C08();

  return *(v0 + 152);
}

void *sub_1890AA99C()
{
  swift_getKeyPath();
  v6 = v0;
  sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel, &unk_18A663EE8);
  sub_18A4A2C08();

  v1 = *(v0 + 160);
  v2 = *(v6 + 168);
  v3 = v1;
  v4 = v2;
  return v1;
}

void sub_1890AAA54(void *a1, void *a2, void *a3, uint64_t a4)
{
  v5 = a1[20];
  v6 = a1[21];
  a1[20] = a2;
  a1[21] = a3;
  a1[22] = a4;
  v7 = a2;
  v8 = a3;
}

double sub_1890AAAA0@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v9 = v1;
  sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel, &unk_18A663EE8);
  sub_18A4A2C08();

  v3 = *(v1 + 184);
  v4 = *(v1 + 192);
  v5 = *(v9 + 216);
  v6 = *(v9 + 224);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(v9 + 200);
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  v7 = v3;

  return result;
}

double sub_1890AAB88@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v9 = v1;
  sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel, &unk_18A663EE8);
  sub_18A4A2C08();

  v3 = *(v1 + 232);
  v4 = *(v1 + 240);
  v5 = *(v9 + 264);
  v6 = *(v9 + 272);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(v9 + 248);
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  v7 = v3;

  return result;
}

void *sub_1890AAC70()
{
  swift_getKeyPath();
  sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel, &unk_18A663EE8);
  sub_18A4A2C08();

  v1 = *(v0 + 320);
  v2 = v1;
  return v1;
}

uint64_t sub_1890AAD18()
{
  swift_getKeyPath();
  sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel, &unk_18A663EE8);
  sub_18A4A2C08();

  return *(v0 + 280);
}

void sub_1890AADB8(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel, &unk_18A663EE8);
  sub_18A4A2C08();

  *a2 = *(v3 + 280);
}

void sub_1890AAE60(char a1)
{
  if (*(v1 + 280) == (a1 & 1))
  {
    *(v1 + 280) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel, &unk_18A663EE8);
    sub_18A4A2BF8();
  }
}

double sub_1890AAF70()
{
  swift_getKeyPath();
  sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel, &unk_18A663EE8);
  sub_18A4A2C08();

  swift_beginAccess();

  return result;
}

double sub_1890AB028@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel, &unk_18A663EE8);
  sub_18A4A2C08();

  swift_beginAccess();
  *a2 = *(v3 + 296);

  return result;
}

double sub_1890AB114(unint64_t a1)
{
  swift_beginAccess();

  v4 = sub_189015950(v3, a1);

  if (v4)
  {
    *(v1 + 296) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel, &unk_18A663EE8);
    sub_18A4A2BF8();
  }

  return result;
}

void sub_1890AB25C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 296) = a2;
}

double sub_1890AB2C4()
{
  swift_getKeyPath();
  sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel, &unk_18A663EE8);
  sub_18A4A2C08();

  return result;
}

double sub_1890AB368@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel, &unk_18A663EE8);
  sub_18A4A2C08();

  *a2 = *(v3 + 304);

  return result;
}

double sub_1890AB414(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel, &unk_18A663EE8);
  sub_18A4A2BF8();

  return result;
}

double sub_1890AB4D0()
{
  swift_getKeyPath();
  sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel, &unk_18A663EE8);
  sub_18A4A2C08();

  return result;
}

double sub_1890AB574@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel, &unk_18A663EE8);
  sub_18A4A2C08();

  *a2 = *(v3 + 312);

  return result;
}

void sub_1890AB620(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 320);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel, &unk_18A663EE8);
    sub_18A4A2BF8();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  _s4ItemCMa(0);
  v5 = v4;
  v6 = a1;
  v7 = sub_18A4A7C88();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 320);
LABEL_8:
  *(v2 + 320) = a1;
}

uint64_t sub_1890AB7A0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = a1;
  v6 = MEMORY[0x1E69E7CC0];
  *(v3 + 16) = MEMORY[0x1E69E7CC0];
  *(v3 + 104) = 0;
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  *(v3 + 128) = 0;
  *(v3 + 136) = 0;
  *(v3 + 144) = 0;
  *(v3 + 152) = 0x3FF0000000000000;
  *(v3 + 176) = 0u;
  *(v3 + 192) = 0u;
  *(v3 + 208) = 0u;
  *(v3 + 224) = 0u;
  *(v3 + 240) = 0u;
  *(v3 + 256) = 0u;
  *(v3 + 160) = 0u;
  *(v3 + 265) = 0u;
  *(v3 + 288) = 0;
  *(v3 + 296) = v6;
  *(v3 + 304) = v6;
  *(v3 + 312) = v6;
  *(v3 + 320) = 0;
  sub_18A4A2C38();
  *(v3 + 24) = v5 & 1;
  *(v3 + 32) = v5 & 1;
  *(v3 + 33) = a2 & 1;
  *(v3 + 34) = 0;
  *(v3 + 36) = 1;
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 88) = 0u;
  v7 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:12 primaryAction:0 menu:0];
  v8 = _s4ItemCMa(0);
  v9 = objc_allocWithZone(v8);
  *(v3 + 328) = sub_188AEFB04(v7);
  v10 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:24 primaryAction:0 menu:0];
  v11 = objc_allocWithZone(v8);
  v12 = sub_188AEFB04(v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0, &unk_18A64BA50);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_18A64E3F0;
  v14 = [objc_opt_self() fixedSpaceItem];
  v15 = objc_allocWithZone(v8);
  *(v13 + 32) = sub_188AEFB04(v14);
  *(v13 + 40) = v12;
  *(v3 + 336) = v13;
  v16 = *(*(v3 + 328) + OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item_barButtonItem);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = objc_allocWithZone(UIAction);
  v19 = v12;
  v20 = v16;

  v21 = sub_18A4A7258();
  v39 = sub_1890ACE64;
  v40 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v36 = 1107296256;
  v37 = sub_188BFF280;
  v38 = &block_descriptor_102;
  v22 = _Block_copy(&aBlock);

  v23 = [v18 initWithTitle:v21 image:0 identifier:0 discoverabilityTitle:0 attributes:0 state:0 handler:v22];
  _Block_release(v22);

  v24 = v23;
  [v24 setSubtitle_];
  [v24 setSelectedImage_];

  [v20 setPrimaryAction_];
  v25 = *&v19[OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item_barButtonItem];
  v26 = v19;
  v27 = swift_allocObject();
  swift_weakInit();
  v28 = v25;

  v29 = objc_allocWithZone(UIAction);

  v30 = sub_18A4A7258();
  v39 = sub_1890ACE6C;
  v40 = v27;
  aBlock = MEMORY[0x1E69E9820];
  v36 = 1107296256;
  v37 = sub_188BFF280;
  v38 = &block_descriptor_67_0;
  v31 = _Block_copy(&aBlock);

  v32 = [v29 initWithTitle:v30 image:0 identifier:0 discoverabilityTitle:0 attributes:0 state:0 handler:v31];
  _Block_release(v31);

  v33 = v32;
  [v33 setSubtitle_];
  [v33 setSelectedImage_];

  [v28 setPrimaryAction_];
  sub_188AEFC0C();

  return v3;
}

void sub_1890ABC80(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_getKeyPath();
    sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel, &unk_18A663EE8);
    sub_18A4A2C08();

    v4 = *(v3 + 320);
    v5 = v4;

    if (v4)
    {
      v6 = *&v5[OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item_barButtonItem];

      v7 = [v6 _associatedSearchController];
      if (v7)
      {
        v8 = [v7 searchBar];

        v9 = [v8 searchTextField];
        [v9 becomeFirstResponder];
      }
    }
  }
}

void sub_1890ABDEC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_getKeyPath();
    sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel, &unk_18A663EE8);
    sub_18A4A2C08();

    v4 = *(v3 + 320);
    v5 = v4;

    if (v4)
    {
      v6 = *&v5[OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item_barButtonItem];

      v7 = [v6 _associatedSearchController];
      if (v7)
      {
        v8 = [v7 searchBar];

        [v8 _performCancelAction];
      }
    }
  }
}

uint64_t sub_1890ABF38(void *a1)
{
  swift_getKeyPath();
  sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel, &unk_18A663EE8);
  sub_18A4A2C08();

  if (*(v1 + 280) == 1)
  {
    swift_getKeyPath();
    sub_18A4A2C08();

    if (*(v1 + 128) == 1 && *(*(v1 + 328) + OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item_barButtonItem) == a1)
    {
      return 1;
    }

    swift_getKeyPath();
    sub_18A4A2C08();

    if (*(v1 + 128) & 1) == 0 && ([a1 _isSearchBarPlacementItem])
    {
      return 0;
    }
  }

  return 2;
}

unint64_t sub_1890AC0D0()
{
  result = qword_1EA93BBD8;
  if (!qword_1EA93BBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93BBD8);
  }

  return result;
}

uint64_t sub_1890AC124()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 24);
  v4 = *(v0 + 16);
  sub_18A4A8888();
  sub_188C18FD0(v6, v1, v2, v4);
  MEMORY[0x18CFE37E0](v3);
  return sub_18A4A88E8();
}

__n128 sub_1890AC190()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  *(v2 + 32) = *v1;
  result = *(v1 + 16);
  v4 = *(v1 + 32);
  v5 = *(v1 + 48);
  *(v2 + 96) = *(v1 + 64);
  *(v2 + 64) = v4;
  *(v2 + 80) = v5;
  *(v2 + 48) = result;
  return result;
}

void *sub_1890AC21C(unint64_t a1, uint64_t a2)
{
  v100 = type metadata accessor for ToolbarModel.PlacedItem(0);
  v94 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v84 = (v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  KeyPath = v80 - v6;
  v105 = sub_18A4A29D8();
  v81 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v93 = v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v104 = v80 - v10;
  sub_18A4A29C8();
  v11 = sub_188AF0AF0(MEMORY[0x1E69E7CC0]);
  v12 = a1;
  v13 = v11;
  if (a1 >> 62)
  {
    goto LABEL_60;
  }

  v95 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v95)
  {
    do
    {
      v14 = 0;
      v85 = 0;
      v92 = v12 & 0xC000000000000001;
      v86 = v12 & 0xFFFFFFFFFFFFFF8;
      v91 = (v81 + 8);
      v90 = (v81 + 32);
      v99 = (v81 + 16);
      v110 = MEMORY[0x1E69E7CC0];
      v83 = xmmword_18A663BE0;
      v102 = a2;
      v88 = v12;
      v101 = OBJC_IVAR____TtC5UIKit12ToolbarModel___observationRegistrar;
      v89 = KeyPath;
      while (1)
      {
        if (v92)
        {
          v15 = sub_188E4B00C(v14, v12);
        }

        else
        {
          if (v14 >= *(v86 + 16))
          {
            goto LABEL_59;
          }

          v15 = *(v12 + 8 * v14 + 32);
        }

        v16 = v15;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        v17 = sub_188C1908C(*&v15[OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item_barButtonItem]);
        v20 = v13[2];
        v108 = v19;
        v111 = v18;
        v112 = v17;
        v103 = v14 + 1;
        if (v20 && (v21 = sub_188C18F44(v17, v18, v19), (v22 & 1) != 0))
        {
          v109 = *(v13[7] + 8 * v21);
        }

        else
        {
          v109 = 0;
        }

        swift_getKeyPath();
        v113 = v16;
        sub_188BAD1EC(&qword_1EA930D28, _s4ItemCMa, &unk_18A663B20);
        sub_18A4A2C08();

        v106 = OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item__requiresOwnSection;
        if (v16[OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item__requiresOwnSection] == 1)
        {
          v23 = v93;
          sub_18A4A29C8();
          v25 = v104;
          v24 = v105;
          (*v91)(v104, v105);
          (*v90)(v25, v23, v24);
        }

        v26 = v100;
        v27 = KeyPath + *(v100 + 20);
        v98 = *v99;
        v98(v27, v104, v105);
        *KeyPath = v16;
        v28 = KeyPath + *(v26 + 24);
        v29 = v111;
        v30 = v112;
        *v28 = v112;
        *(v28 + 8) = v29;
        LOBYTE(v26) = v108;
        *(v28 + 16) = v108;
        *(v28 + 24) = v109;
        v107 = v16;
        sub_188BB395C(v30, v29, v26);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v110 = sub_188C193E8(0, v110[2] + 1, 1, v110);
        }

        v32 = v110[2];
        v31 = v110[3];
        if (v32 >= v31 >> 1)
        {
          v110 = sub_188C193E8((v31 > 1), v32 + 1, 1, v110);
        }

        v33 = v110;
        v110[2] = v32 + 1;
        v97 = (*(v94 + 80) + 32) & ~*(v94 + 80);
        v96 = *(v94 + 72);
        sub_188C19410(KeyPath, v33 + v97 + v96 * v32);
        KeyPath = swift_getKeyPath();
        v34 = v102;
        v113 = v102;
        sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel, &unk_18A663EE8);
        sub_18A4A2C08();

        v35 = *(v34 + 320);
        v36 = v107;
        if (!v35 || v107 != v35)
        {
          goto LABEL_39;
        }

        swift_getKeyPath();
        v113 = v36;
        v37 = v35;
        sub_18A4A2C08();

        v38 = v16[v106] == 1;
        v87 = v37;
        if (v38)
        {
          v39 = v102;
          v40 = 1;
          if (*(v102 + 280))
          {
            goto LABEL_28;
          }
        }

        else
        {
          v43 = [*&v37[OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item_barButtonItem] _prefersCollapsedRepresentationInToolbar];
          v40 = v43;
          v39 = v102;
          if (v43 == *(v102 + 280))
          {
LABEL_28:
            v39[280] = v40;
            goto LABEL_29;
          }
        }

        v41 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v41);
        v80[-2] = v102;
        LOBYTE(v80[-1]) = v40;
        v113 = v102;
        v42 = v85;
        sub_18A4A2BF8();
        v85 = v42;

        v39 = v102;
LABEL_29:
        swift_getKeyPath();
        v113 = v39;
        sub_18A4A2C08();

        v44 = v39;
        if (v39[280] == 1)
        {
          v45 = [*&v87[OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item_barButtonItem] _associatedSearchController];
          if (v45)
          {
            v46 = v45;
            v47 = [v45 isActive];
            v82 = v46;
            if (v47)
            {
              v39 = [v46 searchBar];
              v48 = [v39 searchTextField];

              LODWORD(v39) = [v48 _hasContent];
              LODWORD(v39) = v39 ^ 1;
              v49 = v44;
              if (v44[280] == v39)
              {
                goto LABEL_33;
              }
            }

            else
            {
              v49 = v39;
              v73 = v39[280];
              LOBYTE(v39) = 1;
              if (v73)
              {
LABEL_33:

                v49[280] = v39;
                goto LABEL_34;
              }
            }

            v74 = swift_getKeyPath();
            v80[1] = v80;
            MEMORY[0x1EEE9AC00](v74);
            v80[-2] = v102;
            LOBYTE(v80[-1]) = v39;
            v113 = v102;
            v75 = v85;
            sub_18A4A2BF8();
            v85 = v75;

            v44 = v102;
          }
        }

LABEL_34:
        KeyPath = swift_getKeyPath();
        v113 = v44;
        sub_18A4A2C08();

        if (v44[280] != 1)
        {

LABEL_39:
          a2 = v108;
          goto LABEL_40;
        }

        v50 = *(v44 + 41);
        v51 = v100;
        v52 = v84;
        v98(v84 + *(v100 + 20), v104, v105);
        *v52 = v50;
        v53 = v52 + *(v51 + 24);
        *v53 = v83;
        v53[16] = 1;
        *(v53 + 3) = v109;
        v54 = v110[2];
        KeyPath = v110[3];
        v55 = v50;
        if (v54 >= KeyPath >> 1)
        {
          v110 = sub_188C193E8((KeyPath > 1), v54 + 1, 1, v110);
        }

        a2 = v108;

        v56 = v110;
        v110[2] = v54 + 1;
        sub_188C19410(v84, v56 + v97 + v54 * v96);
LABEL_40:
        v57 = v109 + 1;
        if (__OFADD__(v109, 1))
        {
          goto LABEL_56;
        }

        KeyPath = swift_isUniquelyReferenced_nonNull_native();
        v113 = v13;
        v58 = sub_188C18F44(v112, v111, a2);
        v59 = v13[2];
        v60 = (v12 & 1) == 0;
        v61 = __OFADD__(v59, v60);
        v62 = v59 + v60;
        if (v61)
        {
          goto LABEL_57;
        }

        v63 = v12;
        if (v13[3] >= v62)
        {
          if ((KeyPath & 1) == 0)
          {
            v76 = v58;
            sub_188FA6B20();
            v58 = v76;
          }
        }

        else
        {
          sub_188C19474(v62, KeyPath);
          v58 = sub_188C18F44(v112, v111, a2);
          if ((v63 & 1) != (v64 & 1))
          {
            result = sub_18A4A87A8();
            __break(1u);
            return result;
          }
        }

        KeyPath = v89;
        v12 = v111;
        if (v63)
        {
          v65 = v58;
          sub_188BB3988(v112, v111, a2);
          v13 = v113;
          *(v113[7] + 8 * v65) = v57;
        }

        else
        {
          v13 = v113;
          v113[(v58 >> 6) + 8] |= 1 << v58;
          v66 = v13[6] + 24 * v58;
          *v66 = v112;
          *(v66 + 8) = v12;
          *(v66 + 16) = a2;
          *(v13[7] + 8 * v58) = v57;
          v67 = v13[2];
          v61 = __OFADD__(v67, 1);
          v68 = v67 + 1;
          if (v61)
          {
            goto LABEL_58;
          }

          v13[2] = v68;
        }

        swift_getKeyPath();
        v69 = v107;
        v113 = v107;
        sub_18A4A2C08();

        if (v16[v106] == 1)
        {
          v70 = v93;
          sub_18A4A29C8();

          v72 = v104;
          v71 = v105;
          (*v91)(v104, v105);
          (*v90)(v72, v70, v71);
        }

        else
        {
        }

        v12 = v88;
        ++v14;
        if (v103 == v95)
        {
          goto LABEL_62;
        }
      }

      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      v77 = v12;
      v78 = sub_18A4A7F68();
      v12 = v77;
      v95 = v78;
    }

    while (v78);
  }

  v110 = MEMORY[0x1E69E7CC0];
LABEL_62:
  (*(v81 + 8))(v104, v105);

  return v110;
}

double sub_1890ACE74()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 136) = result;
  return result;
}

double sub_1890ACE84()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 152) = result;
  return result;
}

double sub_1890ACE94()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 144) = result;
  return result;
}

double sub_1890ACEA4()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 112) = result;
  return result;
}

unint64_t sub_1890ACEC8()
{
  result = qword_1EA93BBE0;
  if (!qword_1EA93BBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93BBE0);
  }

  return result;
}

double sub_1890ACFAC@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188AF0C98();
  sub_18A4A2C08();

  *a2 = *(v3 + 16);

  return result;
}

void sub_1890AD054(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188AF0C98();
  sub_18A4A2C08();

  *a2 = *(v3 + 104);
}

_UIFloatingBarContainerProvider __swiftcall _UIFloatingBarContainerProvider.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

double sub_1890AD30C()
{
  sub_1890AC0A8();
  v1 = 0.0;
  if (*(sub_188BAC8D4() + 16))
  {
    sub_188C629E8(v8);
    if ((v9 & 1) == 0)
    {
      v3 = *&v8[2];
      v2 = *&v8[3];
      v5 = *v8;
      v4 = *&v8[1];
      [v0 bounds];
      MaxY = CGRectGetMaxY(v10);
      v11.origin.x = v5;
      v11.origin.y = v4;
      v11.size.width = v3;
      v11.size.height = v2;
      return MaxY - CGRectGetMinY(v11);
    }
  }

  return v1;
}

void *sub_1890AD3C4(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x1E69E7D40];
  swift_unknownObjectWeakInit();
  *(v2 + *((*v5 & *v2) + 0x100)) = a1;

  v6 = sub_188AF1564(a2);
  v7 = *(v6 + *((*v5 & *v6) + 0x60));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = v6;
    v11 = v7;
  }

  else
  {
    swift_unknownObjectWeakAssign();
    v12 = v6;
    v13 = v7;
  }

  if (sub_18A4A46F8())
  {

    swift_unknownObjectRelease();
  }

  else
  {
    sub_1890AD778();
    v14 = v6;
    sub_18A4A4708();
  }

  v15 = &v7[OBJC_IVAR____TtC5UIKit17UIHostingViewBase_delegate];
  swift_beginAccess();
  *(v15 + 1) = &off_1EFABE140;
  swift_unknownObjectWeakAssign();

  return v6;
}

void sub_1890AD5A8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_189091178();
  }
}

void sub_1890AD62C()
{

  JUMPOUT(0x18CFEA6E0);
}

id sub_1890AD6D4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item_barButtonItem);
  *a2 = v2;
  return v2;
}

void sub_1890AD6FC()
{
  swift_unknownObjectWeakInit();
  sub_18A4A8398();
  __break(1u);
}

unint64_t sub_1890AD778()
{
  result = qword_1EA93BC90;
  if (!qword_1EA93BC90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93BC98, &qword_18A664368);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93BC90);
  }

  return result;
}

unint64_t sub_1890AD844()
{
  result = qword_1EA9306D8;
  if (!qword_1EA9306D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93BCC0, &qword_18A664550);
    sub_188C01C2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9306D8);
  }

  return result;
}

unint64_t sub_1890AD8D0()
{
  result = qword_1ED48CC88;
  if (!qword_1ED48CC88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93BCF8, &qword_18A6646E8);
    sub_188BAF540();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48CC88);
  }

  return result;
}

unint64_t sub_1890AD95C()
{
  result = qword_1EA9306B8;
  if (!qword_1EA9306B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93BD10, &qword_18A664700);
    sub_188C02640();
    sub_188C026CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9306B8);
  }

  return result;
}

uint64_t sub_1890AD9E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  sub_188BAD234(&qword_1ED48E310, type metadata accessor for ToolbarModel, &unk_18A663EE8);
  sub_18A4A2C08();

  swift_beginAccess();
  v4 = *(a1 + 296);
  swift_getKeyPath();

  sub_18A4A2C08();

  swift_beginAccess();
  v10 = *(a1 + 64);
  v11 = *(a1 + 80);
  v12 = *(a1 + 96);
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  swift_getKeyPath();
  sub_18A4A2C08();

  v5 = *(a1 + 288);
  *(a2 + 32) = v10;
  *(a2 + 48) = v11;
  *(a2 + 64) = v12;
  *a2 = v8;
  *(a2 + 16) = v9;
  *(a2 + 72) = v5;
  *(a2 + 80) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BD18, &qword_18A6647F8);
  swift_getKeyPath();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  *(v6 + 64) = v10;
  *(v6 + 80) = v11;
  *(v6 + 32) = v8;
  *(v6 + 48) = v9;
  *(v6 + 96) = v12;
  *(v6 + 104) = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BD20, &qword_18A664828);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BD28, &qword_18A664830);
  sub_188A34360(&qword_1EA9304E8, &qword_1EA93BD20, &qword_18A664828, MEMORY[0x1E69E6338]);
  sub_1890AEBC8();
  return sub_18A4A6198();
}

unint64_t sub_1890ADCA8@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v11 = *result;
  v12 = OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item_barButtonItem;
  v13 = *(*result + OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item_barButtonItem);
  if (!(a2 >> 62))
  {
    v14 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_32:
    if ((*a3 & 1) == 0)
    {
      v23 = -2.0;
      a6 = 2.0;
LABEL_48:
      v33 = sub_1890ABF38(*&v11[v12]);
      swift_getKeyPath();
      sub_188BAD234(&qword_1ED48E310, type metadata accessor for ToolbarModel, &unk_18A663EE8);
      v26 = v11;
      sub_18A4A2C08();

      swift_beginAccess();
      v36 = *(a4 + 64);
      v37 = *(a4 + 80);
      v38 = *(a4 + 96);
      v34 = *(a4 + 32);
      v35 = *(a4 + 48);
      swift_getKeyPath();
      sub_18A4A2C08();

      v28 = *(a4 + 160);
      v27 = *(a4 + 168);
      v29 = *(a4 + 176);
      swift_getKeyPath();
      v30 = v27;
      v31 = v28;
      sub_18A4A2C08();

      v32 = *(a4 + 34);
      sub_1890AF174();
      result = sub_18A4A45E8();
      *(a5 + 24) = v35;
      *(a5 + 40) = v36;
      *(a5 + 56) = v37;
      *a5 = v26;
      *(a5 + 8) = v34;
      *(a5 + 72) = v38;
      *(a5 + 80) = v28;
      *(a5 + 88) = v27;
      *(a5 + 96) = v29;
      *(a5 + 104) = 0;
      *(a5 + 112) = v23;
      *(a5 + 120) = 0;
      *(a5 + 128) = -a6;
      *(a5 + 136) = v32;
      *(a5 + 137) = 0;
      *(a5 + 138) = v33;
      *(a5 + 144) = result;
      return result;
    }

    if (!a3[4])
    {
      v23 = -0.0;
LABEL_47:
      a6 = 0.0;
      goto LABEL_48;
    }

    v24 = -4.0;
    if (a3[4] == 2)
    {
      v24 = -2.0;
    }

    if (a3[3])
    {
      v23 = -3.0;
    }

    else
    {
      v23 = v24;
    }

LABEL_39:
    if (a3[4])
    {
      v25 = 4.0;
      if (a3[4] == 2)
      {
        v25 = 2.0;
      }

      if (a3[3])
      {
        a6 = 3.0;
      }

      else
      {
        a6 = v25;
      }

      goto LABEL_48;
    }

    goto LABEL_47;
  }

  result = sub_18A4A7F68();
  v14 = result;
  if (!result)
  {
    goto LABEL_32;
  }

LABEL_3:
  if ((a2 & 0xC000000000000001) != 0)
  {
    v15 = sub_188E4B00C(0, a2);
  }

  else
  {
    if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v15 = *(a2 + 32);
  }

  v16 = *&v15[OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item_barButtonItem];

  result = v14 - 1;
  if (__OFSUB__(v14, 1))
  {
    __break(1u);
    goto LABEL_51;
  }

  v17 = *&v11[v12];
  if ((a2 & 0xC000000000000001) != 0)
  {
    v18 = sub_188E4B00C(result, a2);
    goto LABEL_12;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_52;
  }

  if (result < *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v18 = *(a2 + 8 * result + 32);
LABEL_12:
    v19 = *&v18[OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item_barButtonItem];

    if (v13 == v16)
    {
      v23 = -a6;
      if (v17 == v19)
      {
        goto LABEL_48;
      }

      a6 = 2.0;
      if (*a3 != 1)
      {
        goto LABEL_48;
      }

      goto LABEL_39;
    }

    v20 = *a3;
    v21 = 2.0;
    if (v20 == 1)
    {
      if (a3[4])
      {
        v22 = -4.0;
        if (a3[4] == 2)
        {
          v22 = -2.0;
        }

        if (a3[3])
        {
          v23 = -3.0;
        }

        else
        {
          v23 = v22;
        }

        if (v17 == v19)
        {
          goto LABEL_48;
        }

        goto LABEL_39;
      }

      v21 = 0.0;
    }

    v23 = -v21;
    if (v17 == v19)
    {
      LOBYTE(v20) = 0;
    }

    else
    {
      a6 = 2.0;
    }

    if ((v20 & 1) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_39;
  }

LABEL_53:
  __break(1u);
  return result;
}

uint64_t sub_1890AE07C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(a1 + 48);
  *(a5 + 32) = *(a1 + 32);
  *(a5 + 48) = v10;
  v11 = *(a1 + 64);
  v12 = *(a1 + 16);
  *a5 = *a1;
  *(a5 + 16) = v12;
  *(a5 + 64) = v11;
  *(a5 + 72) = 0;
  *(a5 + 80) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BD38, &qword_18A664868);
  v18 = sub_188BAC8D4();
  swift_getKeyPath();
  v13 = swift_allocObject();
  *(v13 + 16) = v18;
  *(v13 + 24) = a2;
  *(v13 + 32) = a3;
  *(v13 + 40) = a4;
  v14 = *(a1 + 48);
  *(v13 + 80) = *(a1 + 32);
  *(v13 + 96) = v14;
  *(v13 + 112) = *(a1 + 64);
  v15 = *(a1 + 16);
  *(v13 + 48) = *a1;
  *(v13 + 64) = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1890AF7C4;
  *(v16 + 24) = v13;
  swift_bridgeObjectRetain_n();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BDA8, &qword_18A664918);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BD50, &qword_18A664880);
  sub_1890AF83C();
  sub_188BAF5D4();
  sub_1890AF2B4();
  return sub_18A4A6198();
}

uint64_t sub_1890AE220@<X0>(uint64_t a1@<X0>, char **a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unsigned __int8 *a7@<X6>, uint64_t a8@<X8>)
{
  v61 = a7;
  v62 = a5;
  v63 = a6;
  v60 = a4;
  v74 = a8;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BD60, &qword_18A6648A0);
  MEMORY[0x1EEE9AC00](v73);
  v64 = &v58 - v11;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BDC0, &qword_18A664930);
  MEMORY[0x1EEE9AC00](v71);
  v72 = &v58 - v12;
  v13 = type metadata accessor for BarLayoutElement(0);
  v66 = *(v13 - 8);
  v67 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v65 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BD58, &qword_18A664888);
  MEMORY[0x1EEE9AC00](v70);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v68 = &v58 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BDC8, &qword_18A664938);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v69 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v58 - v22;
  v59 = a2;
  v24 = *a2;
  swift_getKeyPath();
  *&v79[0] = v24;
  sub_188BAD234(&qword_1EA930D28, _s4ItemCMa, &unk_18A663B20);
  sub_18A4A2C08();

  v25 = OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item_barButtonItem;
  v26 = *&v24[OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item_barButtonItem];
  v27 = a1 - 1;
  v75 = v23;
  if (a1 < 1)
  {
    v31 = type metadata accessor for ToolbarModel.PlacedItem(0);
    (*(*(v31 - 8) + 56))(v23, 1, 1, v31);
  }

  else
  {
    if (*(a3 + 16) < a1)
    {
      __break(1u);
      goto LABEL_18;
    }

    v28 = type metadata accessor for ToolbarModel.PlacedItem(0);
    v29 = *(v28 - 8);
    v30 = a3 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v27;
    v27 = v75;
    sub_188C5FEFC(v30, v75);
    (*(v29 + 56))(v27, 0, 1, v28);
  }

  v32 = *(a3 + 16);
  if ((v32 - 1) > a1)
  {
    if (++a1 < v32)
    {
      v33 = type metadata accessor for ToolbarModel.PlacedItem(0);
      v34 = *(v33 - 8);
      v35 = a3 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * a1;
      a3 = v69;
      sub_188C5FEFC(v35, v69);
      (*(v34 + 56))(a3, 0, 1, v33);
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    sub_18A4A7988();
    v57 = sub_18A4A5B28();
    sub_18A4A42D8();

    goto LABEL_14;
  }

  v36 = type metadata accessor for ToolbarModel.PlacedItem(0);
  a3 = v69;
  (*(*(v36 - 8) + 56))(v69, 1, 1, v36);
LABEL_9:
  v37 = [v26 isSpaceItem];
  v27 = v70;
  if (v37)
  {
    a1 = v77;
    v26 = *&v24[v25];
    if ([v26 systemItem] == 5)
    {
      sub_18A4A6C08();
      sub_18A4A4EA8();

      *&v76[55] = v79[3];
      *&v76[71] = v79[4];
      *&v76[87] = v79[5];
      *&v76[103] = v79[6];
      *&v76[7] = v79[0];
      *&v76[23] = v79[1];
      v78 = 1;
      *&v76[39] = v79[2];
      v38 = type metadata accessor for BarLayoutElement.ItemConfig(0);
      v39 = v65;
      (*(*(v38 - 8) + 56))(v65, 1, 2, v38);
      v40 = *(v27 + 36);
      sub_1890AF8EC(v39, &v16[v40], type metadata accessor for BarLayoutElement);
      (*(v66 + 56))(&v16[v40], 0, 1, v67);
      v41 = *&v76[80];
      *(v16 + 73) = *&v76[64];
      *(v16 + 89) = v41;
      *(v16 + 105) = *&v76[96];
      v42 = *&v76[16];
      *(v16 + 9) = *v76;
      *(v16 + 25) = v42;
      v43 = *&v76[48];
      *(v16 + 41) = *&v76[32];
      *v16 = 0;
      v16[8] = 1;
      v44 = *&v76[111];
LABEL_15:
      *(v16 + 15) = v44;
      *(v16 + 57) = v43;
      v55 = v68;
      sub_188A3F704(v16, v68, &qword_1EA93BD58, &qword_18A664888);
      sub_188A3F29C(v55, v72, &qword_1EA93BD58, &qword_18A664888);
      swift_storeEnumTagMultiPayload();
      sub_188BAD4FC();
      sub_1890AF3C4();
      sub_18A4A5598();
      sub_188A3F5FC(v55, &qword_1EA93BD58, &qword_18A664888);
      v46 = v75;
      goto LABEL_16;
    }

    [v26 _width];
    sub_18A4A6C08();
LABEL_14:
    sub_18A4A4EA8();

    v47 = *(a1 + 160);
    *(a1 + 55) = *(a1 + 176);
    v48 = *(a1 + 208);
    *(a1 + 71) = *(a1 + 192);
    *(a1 + 87) = v48;
    *(a1 + 103) = *(a1 + 224);
    v49 = *(a1 + 144);
    *(v77 + 7) = *(a1 + 128);
    *(a1 + 23) = v49;
    v78 = 1;
    *(a1 + 39) = v47;
    v50 = type metadata accessor for BarLayoutElement.ItemConfig(0);
    v51 = v65;
    (*(*(v50 - 8) + 56))(v65, 2, 2, v50);
    v52 = *(v27 + 36);
    sub_1890AF8EC(v51, &v16[v52], type metadata accessor for BarLayoutElement);
    (*(v66 + 56))(&v16[v52], 0, 1, v67);
    v43 = *(a1 + 48);
    *(v16 + 73) = *(a1 + 64);
    v53 = *(a1 + 96);
    *(v16 + 89) = *(a1 + 80);
    *(v16 + 105) = v53;
    *(v16 + 9) = v77[0];
    v54 = *(a1 + 32);
    *(v16 + 25) = *(a1 + 16);
    *(v16 + 41) = v54;
    *v16 = 0;
    v16[8] = 1;
    v44 = *(a1 + 111);
    goto LABEL_15;
  }

  v45 = v64;
  v46 = v75;
  sub_188C60080(v59, v75, a3, v61, v60, v62, v64);
  sub_188A3F29C(v45, v72, &qword_1EA93BD60, &qword_18A6648A0);
  swift_storeEnumTagMultiPayload();
  sub_188BAD4FC();
  sub_1890AF3C4();
  sub_18A4A5598();
  sub_188A3F5FC(v45, &qword_1EA93BD60, &qword_18A6648A0);
LABEL_16:
  sub_188A3F5FC(a3, &qword_1EA93BDC8, &qword_18A664938);
  return sub_188A3F5FC(v46, &qword_1EA93BDC8, &qword_18A664938);
}

unint64_t sub_1890AEBC8()
{
  result = qword_1EA930518;
  if (!qword_1EA930518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93BD28, &qword_18A664830);
    sub_1890AEC80();
    sub_188A34360(&qword_1EA931258, &qword_1EA93BD30, &qword_18A664838, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA930518);
  }

  return result;
}

unint64_t sub_1890AEC80()
{
  result = qword_1EA9305C8;
  if (!qword_1EA9305C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9305C8);
  }

  return result;
}

uint64_t sub_1890AECD4@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BDE8, &qword_18A664B10);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BDF0, &qword_18A664B18);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - v11;
  v13 = 0.0;
  if (sub_18A4A4D28())
  {
    v14 = 1.0;
  }

  else
  {
    v14 = 0.0;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BDF8, &qword_18A664B20);
  (*(*(v15 - 8) + 16))(v8, a1, v15);
  *&v8[*(v6 + 44)] = v14;
  if ((sub_18A4A4D28() & 1) == 0)
  {
    v13 = 7.0;
  }

  sub_188A3F704(v8, v12, &qword_1EA93BDE8, &qword_18A664B10);
  v16 = &v12[*(v10 + 44)];
  *v16 = v13;
  v16[8] = 0;
  if (sub_18A4A4D28())
  {
    v17 = 1.0;
  }

  else
  {
    v17 = 0.7;
  }

  sub_18A4A6D08();
  v19 = v18;
  v21 = v20;
  sub_188A3F704(v12, a3, &qword_1EA93BDF0, &qword_18A664B18);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BE00, &unk_18A664B28);
  v23 = a3 + *(result + 36);
  *v23 = v17;
  *(v23 + 8) = v17;
  *(v23 + 16) = v19;
  *(v23 + 24) = v21;
  return result;
}

uint64_t sub_1890AEEEC(uint64_t a1, char a2, double a3, uint64_t a4, char a5)
{
  v7 = sub_18A4A4618();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18A4A4C88();
  sub_188BAD234(&qword_1ED48E060, MEMORY[0x1E697E3C0], MEMORY[0x1E697E3D8]);
  sub_18A4A7818();
  sub_18A4A7878();
  result = sub_18A4A7868();
  if (result == 1)
  {
    sub_18A4A4C98();
    LOBYTE(v13) = a2 & 1;
    LOBYTE(v12) = a5 & 1;
    sub_18A4A45F8();
    return (*(v8 + 8))(v10, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void (*sub_1890AF0EC(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_18A4A4398();
  return sub_188E263E8;
}

unint64_t sub_1890AF174()
{
  result = qword_1EA9305C0;
  if (!qword_1EA9305C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9305C0);
  }

  return result;
}

uint64_t sub_1890AF1D4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_188A34360(&qword_1ED48E068, &qword_1EA93BD40, &qword_18A664870, MEMORY[0x1E697DDD0]);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1890AF2B4()
{
  result = qword_1ED48CC80;
  if (!qword_1ED48CC80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93BD50, &qword_18A664880);
    sub_188BAD4FC();
    sub_1890AF3C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48CC80);
  }

  return result;
}

unint64_t sub_1890AF340()
{
  result = qword_1ED48D5B8[0];
  if (!qword_1ED48D5B8[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93C090, &unk_18A664890);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED48D5B8);
  }

  return result;
}

unint64_t sub_1890AF3C4()
{
  result = qword_1ED48CC98;
  if (!qword_1ED48CC98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93BD60, &qword_18A6648A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93BD68, &qword_18A6648A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93BD70, &qword_18A6648B0);
    sub_18A4A29D8();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93BD78, &qword_18A6648B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93BD80, &qword_18A6648C0);
    sub_18A4A6188();
    sub_1890AF628();
    sub_188BAD234(&unk_1ED48D010, MEMORY[0x1E6981998], MEMORY[0x1E6981990]);
    swift_getOpaqueTypeConformance2();
    sub_188BAF5D4();
    swift_getOpaqueTypeConformance2();
    sub_188BAD234(&qword_1ED48CEF0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_188A34360(&qword_1ED48CC70, &qword_1EA93BDA0, &qword_18A6648E0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48CC98);
  }

  return result;
}

unint64_t sub_1890AF628()
{
  result = qword_1ED48CCA0;
  if (!qword_1ED48CCA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93BD80, &qword_18A6648C0);
    sub_1890AF6E0();
    sub_188A34360(&qword_1ED48E058, &qword_1EA93C070, &qword_18A6652E0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48CCA0);
  }

  return result;
}

unint64_t sub_1890AF6E0()
{
  result = qword_1ED48CCB8;
  if (!qword_1ED48CCB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93BD88, &qword_18A6648C8);
    sub_188A34360(qword_1ED48CCC0, &qword_1EA93BD90, &qword_18A6648D0, MEMORY[0x1E697DDD0]);
    sub_188A34360(&qword_1ED48D5A8, &qword_1EA93BD98, &qword_18A6648D8, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48CCB8);
  }

  return result;
}

uint64_t sub_1890AF7D4(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BDB8, &qword_18A664928);
  return v3(v4, &a1[*(v5 + 48)]);
}

unint64_t sub_1890AF83C()
{
  result = qword_1ED48CC08;
  if (!qword_1ED48CC08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93BDA8, &qword_18A664918);
    sub_188A34360(&qword_1ED48CC60, &qword_1EA93BDB0, &qword_18A664920, MEMORY[0x1E69E6338]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48CC08);
  }

  return result;
}

uint64_t sub_1890AF8EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1890AF954(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1890AFA04(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1890AFA84()
{
  result = qword_1ED48CD88[0];
  if (!qword_1ED48CD88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED48CD88);
  }

  return result;
}

uint64_t sub_1890AFAF4(uint64_t a1, char a2, uint64_t a3, char a4, double a5, double a6, double a7)
{
  v12 = sub_18A4A4618();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18A4A4C88();
  sub_188BAD234(&qword_1ED48E060, MEMORY[0x1E697E3C0], MEMORY[0x1E697E3D8]);
  sub_18A4A7818();
  sub_18A4A7878();
  result = sub_18A4A7868();
  if (result == 1)
  {
    sub_18A4A4C98();
    UIRectGetCenter(a5, a6, a7);
    sub_18A4A6D08();
    LOBYTE(v18) = a2 & 1;
    LOBYTE(v17) = a4 & 1;
    sub_18A4A4608();
    return (*(v13 + 8))(v15, v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1890AFCE0()
{
  result = qword_1EA930500;
  if (!qword_1EA930500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93BE00, &unk_18A664B28);
    sub_1890AFD6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA930500);
  }

  return result;
}

unint64_t sub_1890AFD6C()
{
  result = qword_1EA930508;
  if (!qword_1EA930508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93BDF0, &qword_18A664B18);
    sub_1890AFDF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA930508);
  }

  return result;
}

unint64_t sub_1890AFDF8()
{
  result = qword_1EA930510;
  if (!qword_1EA930510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93BDE8, &qword_18A664B10);
    sub_188A34360(&qword_1EA9304F8, &qword_1EA93BDF8, &qword_18A664B20, MEMORY[0x1E697FEC8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA930510);
  }

  return result;
}

__n128 sub_1890AFEB0@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188AF0C98();
  sub_18A4A2C08();

  swift_beginAccess();
  v4 = *(v3 + 80);
  *(a2 + 32) = *(v3 + 64);
  *(a2 + 48) = v4;
  *(a2 + 64) = *(v3 + 96);
  result = *(v3 + 48);
  *a2 = *(v3 + 32);
  *(a2 + 16) = result;
  return result;
}

__n128 sub_1890AFF4C(uint64_t a1)
{
  v1 = *(a1 + 48);
  v4[2] = *(a1 + 32);
  v4[3] = v1;
  v5 = *(a1 + 64);
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  sub_1890AA408(v4);
  return result;
}

id sub_1890AFF94@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188AF0C98();
  sub_18A4A2C08();

  v4 = *(v3 + 320);
  *a2 = v4;

  return v4;
}

void sub_1890B001C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1890AB620(v1);
}

double sub_1890B004C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_18A4A5438();
  v23 = 1;
  sub_1890B0200(a1, &v14);
  v28 = v18;
  v29 = v19;
  v30 = v20;
  v31 = v21;
  v24 = v14;
  v25 = v15;
  v26 = v16;
  v27 = v17;
  v32[0] = v14;
  v32[1] = v15;
  v32[2] = v16;
  v32[3] = v17;
  v32[4] = v18;
  v32[5] = v19;
  v32[6] = v20;
  v33 = v21;
  sub_188A3F29C(&v24, &v13, &qword_1EA93BE08, &qword_18A664BF8);
  sub_188A3F5FC(v32, &qword_1EA93BE08, &qword_18A664BF8);
  *(&v22[4] + 7) = v28;
  *(&v22[5] + 7) = v29;
  *(&v22[6] + 7) = v30;
  *(v22 + 7) = v24;
  *(&v22[1] + 7) = v25;
  *(&v22[2] + 7) = v26;
  *(&v22[7] + 7) = v31;
  *(&v22[3] + 7) = v27;
  v5 = v23;
  v6 = sub_18A4A4D18();
  v7 = sub_18A4A5BE8();
  v8 = sub_18A4A5C08();
  sub_18A4A5C08();
  if (sub_18A4A5C08() != v7)
  {
    v8 = sub_18A4A5C08();
  }

  v9 = v22[5];
  *(a2 + 81) = v22[4];
  *(a2 + 97) = v9;
  *(a2 + 113) = v22[6];
  *(a2 + 128) = *(&v22[6] + 15);
  v10 = v22[1];
  *(a2 + 17) = v22[0];
  *(a2 + 33) = v10;
  result = *&v22[2];
  v12 = v22[3];
  *(a2 + 49) = v22[2];
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  *(a2 + 65) = v12;
  *(a2 + 144) = v6;
  *(a2 + 152) = v8;
  return result;
}

uint64_t sub_1890B0200@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  v32 = a1;
  sub_188AF0C98();
  sub_18A4A2C08();

  swift_beginAccess();
  v4 = a1[10];
  v19 = a1[11];
  v20 = a1[9];
  v18 = a1[12];
  v5 = sub_18A4A5BC8();
  v6 = sub_18A4A5EF8();
  v45 = 0;
  swift_getKeyPath();
  v32 = a1;

  sub_18A4A2C08();

  v7 = a1[40];
  if (v7 && (v8 = [*(v7 + OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item_barButtonItem) _associatedSearchController]) != 0)
  {
    v9 = v8;
    v10 = [v8 _trackableState];
    v11 = [v10 isActive];
  }

  else
  {
    v11 = 0;
  }

  v23 = 1;
  *&v24 = a1;
  BYTE8(v24) = v5;
  *&v25 = v20;
  *(&v25 + 1) = v4;
  *&v26 = v19;
  *(&v26 + 1) = v18;
  LOBYTE(v27) = 0;
  *(&v27 + 1) = v6;
  v28 = sub_188C62704;
  v29 = 0;
  LOBYTE(v30) = v11;
  *(&v30 + 1) = sub_1890B049C;
  v31 = 0;
  *&v22[39] = v26;
  *&v22[23] = v25;
  *&v22[7] = v24;
  *&v22[103] = 0;
  *&v22[87] = v30;
  *&v22[71] = sub_188C62704;
  *&v22[55] = v27;
  *a2 = 0;
  *(a2 + 8) = 1;
  v12 = *v22;
  v13 = *&v22[16];
  v14 = *&v22[48];
  *(a2 + 41) = *&v22[32];
  *(a2 + 25) = v13;
  *(a2 + 9) = v12;
  v15 = *&v22[64];
  v16 = *&v22[80];
  *(a2 + 104) = *&v22[95];
  *(a2 + 89) = v16;
  *(a2 + 73) = v15;
  *(a2 + 57) = v14;
  v32 = a1;
  v33 = v5;
  v34 = v20;
  v35 = v4;
  v36 = v19;
  v37 = v18;
  v38 = 0;
  v39 = v6;
  v40 = sub_188C62704;
  v41 = 0;
  v42 = v11;
  v43 = sub_1890B049C;
  v44 = 0;
  sub_188A3F29C(&v24, &v21, &qword_1EA93BE10, &qword_18A664C50);
  return sub_188A3F5FC(&v32, &qword_1EA93BE10, &qword_18A664C50);
}

void *sub_1890B049C(uint64_t *a1)
{
  v1 = sub_18A4A4A58();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v6[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1890A4F10();
  result = sub_18A4A44B8();
  if (v6[15] == 1)
  {
    sub_188FB7DAC();
    sub_188FB7A3C(v4);
    return (*(v2 + 8))(v4, v1);
  }

  return result;
}

unint64_t sub_1890B05A4()
{
  result = qword_1EA93BE18;
  if (!qword_1EA93BE18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93BE20, &qword_18A664C58);
    sub_1890B0630();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93BE18);
  }

  return result;
}

unint64_t sub_1890B0630()
{
  result = qword_1EA93BE28;
  if (!qword_1EA93BE28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93BE30, &unk_18A664C60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93BE28);
  }

  return result;
}

uint64_t sub_1890B0694(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t sub_1890B06F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_5UIKit23BarBackgroundAppearanceVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1890B07A0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 104))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_1890B0808(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1890B088C@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 1);
  v45 = *v1;
  v46 = v3;
  v47 = *(v1 + 2);
  v4 = v45;
  if (v45 == 1)
  {
    v22 = 0;
    v23 = 0;
    v5 = 0;
    v20 = 0uLL;
    v21 = 0;
    v6 = 0.0;
  }

  else
  {
    v20 = v47;
    v5 = *(&v46 + 1);
    v22 = *(&v45 + 1);
    v23 = v46;
    KeyPath = swift_getKeyPath();
    LOBYTE(v37[0]) = 0;
    v6 = 1.0 - v1[12];
    v21 = KeyPath;
  }

  v8 = *(v1 + 4);
  v42 = *(v1 + 3);
  v43 = v8;
  v44 = *(v1 + 5);
  v9 = v42;
  if (v42 == 1)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
  }

  else
  {
    v14 = *(&v44 + 1);
    v13 = v44;
    v12 = *(&v43 + 1);
    v11 = v43;
    v10 = *(&v42 + 1);
    v15 = swift_getKeyPath();
    LOBYTE(v37[0]) = 0;
    v16 = *(v1 + 12);
  }

  *&v25 = v45;
  *(&v25 + 1) = v22;
  *&v26 = v23;
  *(&v26 + 1) = v5;
  v27 = v20;
  v28 = v21;
  v29 = v6;
  *v24 = v6;
  *&v30 = v42;
  *(&v30 + 1) = v10;
  *&v31 = v11;
  *(&v31 + 1) = v12;
  *&v32 = v13;
  *(&v32 + 1) = v14;
  v33 = v15;
  v34 = 0;
  v35 = v16;
  *&v24[8] = v30;
  *&v24[72] = v16;
  *&v24[56] = v15;
  *&v24[40] = v32;
  *&v24[24] = v31;
  v17 = v25;
  v18 = v26;
  a1[2] = v20;
  a1[3] = v21;
  *a1 = v17;
  a1[1] = v18;
  a1[7] = *&v24[48];
  a1[8] = *&v24[64];
  a1[5] = *&v24[16];
  a1[6] = *&v24[32];
  a1[4] = *v24;
  v36[0] = v9;
  v36[1] = v10;
  v36[2] = v11;
  v36[3] = v12;
  v36[4] = v13;
  v36[5] = v14;
  v36[6] = v15;
  v36[7] = 0;
  v36[8] = v16;
  sub_188A3F29C(&v45, v37, &qword_1EA93BE38, &qword_18A664DD0);
  sub_188A3F29C(&v42, v37, &qword_1EA93BE38, &qword_18A664DD0);
  sub_188A3F29C(&v25, v37, &qword_1EA93BE40, &qword_18A664DD8);
  sub_188A3F29C(&v30, v37, &qword_1EA93BE40, &qword_18A664DD8);
  sub_188A3F5FC(v36, &qword_1EA93BE40, &qword_18A664DD8);
  v37[0] = v4;
  v37[1] = v22;
  v37[2] = v23;
  v37[3] = v5;
  v38 = v20;
  v39 = v21;
  v40 = 0;
  v41 = v6;
  return sub_188A3F5FC(v37, &qword_1EA93BE40, &qword_18A664DD8);
}

void *sub_1890B0B20@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_18A4A6BF8();
  v6 = v5;
  sub_1890B0BF4(v2, __src);
  memcpy(__dst, __src, 0x159uLL);
  memcpy(v11, __src, 0x159uLL);
  sub_188A3F29C(__dst, &v9, &qword_1EA93BE58, &qword_18A664F18);
  sub_188A3F5FC(v11, &qword_1EA93BE58, &qword_18A664F18);
  memcpy(__src, __dst, 0x159uLL);
  v7 = sub_18A4A5BB8();
  *a1 = v4;
  *(a1 + 8) = v6;
  result = memcpy((a1 + 16), __src, 0x159uLL);
  *(a1 + 361) = v7;
  return result;
}

void sub_1890B0BF4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_18A4A5E78();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v10 = *(a1 + 8);
  v13 = *(a1 + 16);
  v12 = *(a1 + 24);
  v14 = *(a1 + 32);
  v40 = *(a1 + 40);
  v41 = a2;
  v122 = v10;
  v123[0] = v11;
  v121 = v13;
  v42 = v10;
  v43 = v11;
  v38 = a1;
  v39 = v14;
  if (v13)
  {
    if ((v12 - 3) >= 0xA)
    {
      if (v12 == 2)
      {
        v36 = v6;
        (*(v5 + 104))(v9, *MEMORY[0x1E6981630], v6, v7);
        sub_188A3F29C(v123, &v101, &qword_1EA93BB40, &unk_18A664140);
        sub_188A3F29C(&v122, &v101, &qword_1EA93BB48, &unk_18A6634D0);
        sub_188A3F29C(v123, &v101, &qword_1EA93BB40, &unk_18A664140);
        sub_188A3F29C(&v122, &v101, &qword_1EA93BB48, &unk_18A6634D0);
        sub_188A3F29C(&v121, &v101, &unk_1EA93BB50, &qword_18A664150);
        v37 = sub_18A4A5E88();
        (*(v5 + 8))(v9, v36);
        v94 = v37;
        LOWORD(v95) = 257;
        sub_1890B2BD8(&v94);
        v105 = v98;
        v106 = v99;
        v107[0] = v100[0];
        *(v107 + 9) = *(v100 + 9);
        v101 = v94;
        v102 = v95;
        v103 = v96;
        v104 = v97;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BED8, &qword_18A664F68);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BEF8, &qword_18A664F78);
        sub_1890B2B48(&qword_1EA93BED0, &qword_1EA93BED8, &qword_18A664F68);
        sub_1890B2B48(&qword_1EA93BEF0, &qword_1EA93BEF8, &qword_18A664F78);
        sub_18A4A5598();
        v48 = v86;
        v49 = v87;
        v50[0] = v88[0];
        *(v50 + 9) = *(v88 + 9);
        v47[0] = v82;
        v47[1] = v83;
        v47[2] = v84;
        v47[3] = v85;
        sub_1890B2BC4(v47);
        v105 = v48;
        v106 = v49;
        v107[0] = v50[0];
        *(v107 + 10) = *(v50 + 10);
        v101 = v47[0];
        v102 = v47[1];
        v103 = v47[2];
        v104 = v47[3];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BEC8, &qword_18A664F60);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BEE8, &qword_18A664F70);
        sub_1890B29D0();
        sub_1890B2A7C();
        sub_18A4A5598();
        v86 = v117;
        v87 = v118;
        v88[0] = *v119;
        *(v88 + 10) = *(&v119[1] + 2);
        v82 = v113;
        v83 = v114;
        v84 = v115;
        v85 = v116;
        sub_1890B2BD0(&v82);
        v105 = v86;
        v106 = v87;
        v107[0] = v88[0];
        *(v107 + 11) = *(v88 + 11);
        v101 = v82;
        v102 = v83;
        v103 = v84;
        v104 = v85;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BEB0, &qword_18A664F58);
        sub_1890B2944();
        sub_18A4A5598();
        sub_188A3F5FC(&v121, &unk_1EA93BB50, &qword_18A664150);
      }

      else
      {
        if (v12 != 1)
        {
          if (v12)
          {
            *&v82 = v13;
            sub_1890B2938(&v82);
            v74 = v86;
            v75 = v87;
            v76[0] = v88[0];
            *(v76 + 11) = *(v88 + 11);
            v70 = v82;
            v71 = v83;
            v72 = v84;
            v73 = v85;
            sub_188A3F29C(v123, &v101, &qword_1EA93BB40, &unk_18A664140);
            sub_188A3F29C(&v122, &v101, &qword_1EA93BB48, &unk_18A6634D0);
            sub_188A3F29C(v123, &v101, &qword_1EA93BB40, &unk_18A664140);
            sub_188A3F29C(&v122, &v101, &qword_1EA93BB48, &unk_18A6634D0);
            sub_188A3F29C(&v121, &v101, &unk_1EA93BB50, &qword_18A664150);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BEB0, &qword_18A664F58);
            sub_1890B2944();
            sub_18A4A5598();
            goto LABEL_6;
          }

          v32 = v6;
          (*(v5 + 104))(v9, *MEMORY[0x1E6981630], v6, v7);
          sub_188A3F29C(v123, &v101, &qword_1EA93BB40, &unk_18A664140);
          sub_188A3F29C(&v122, &v101, &qword_1EA93BB48, &unk_18A6634D0);
          sub_188A3F29C(v123, &v101, &qword_1EA93BB40, &unk_18A664140);
          sub_188A3F29C(&v122, &v101, &qword_1EA93BB48, &unk_18A6634D0);
          sub_188A3F29C(&v121, &v101, &unk_1EA93BB50, &qword_18A664150);
          v33 = sub_18A4A5E88();
          (*(v5 + 8))(v9, v32);
          v82 = v33;
          LOWORD(v83) = 0;
          BYTE2(v83) = 0;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BED8, &qword_18A664F68);
          sub_1890B2B48(&qword_1EA93BED0, &qword_1EA93BED8, &qword_18A664F68);
          sub_18A4A5598();
          v47[0] = v101;
          LOWORD(v47[1]) = v102;
          BYTE2(v47[1]) = BYTE2(v102);
          sub_1890B2BE0(v47);
          v105 = v48;
          v106 = v49;
          v107[0] = v50[0];
          *(v107 + 10) = *(v50 + 10);
          v101 = v47[0];
          v102 = v47[1];
          v103 = v47[2];
          v104 = v47[3];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BEC8, &qword_18A664F60);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BEE8, &qword_18A664F70);
          sub_1890B29D0();
          sub_1890B2A7C();
          sub_18A4A5598();
          v86 = v117;
          v87 = v118;
          v88[0] = *v119;
          *(v88 + 10) = *(&v119[1] + 2);
          v82 = v113;
          v83 = v114;
          v84 = v115;
          v85 = v116;
          sub_1890B2BD0(&v82);
          v105 = v86;
          v106 = v87;
          v107[0] = v88[0];
          *(v107 + 11) = *(v88 + 11);
          v101 = v82;
          v102 = v83;
          v103 = v84;
          v104 = v85;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BEB0, &qword_18A664F58);
          sub_1890B2944();
          sub_18A4A5598();
          sub_188A3F5FC(&v121, &unk_1EA93BB50, &qword_18A664150);

          v105 = v74;
          v106 = v75;
          v15 = v76[0];
LABEL_5:
          v107[0] = v15;
          *(v107 + 11) = *(v76 + 11);
          v101 = v70;
          v102 = v71;
          v103 = v72;
          v104 = v73;
LABEL_6:
          v86 = v105;
          v87 = v106;
          v88[0] = v107[0];
          *(v88 + 11) = *(v107 + 11);
          v82 = v101;
          v83 = v102;
          v84 = v103;
          v85 = v104;
          signpost_c2_entryLock_start();
          v117 = v86;
          v118 = v87;
          *v119 = v88[0];
          *(&v119[1] + 3) = *(v88 + 11);
          v113 = v82;
          v114 = v83;
          v115 = v84;
          v116 = v85;
          goto LABEL_8;
        }

        v34 = v6;
        (*(v5 + 104))(v9, *MEMORY[0x1E6981630], v6, v7);
        sub_188A3F29C(v123, &v101, &qword_1EA93BB40, &unk_18A664140);
        sub_188A3F29C(&v122, &v101, &qword_1EA93BB48, &unk_18A6634D0);
        sub_188A3F29C(v123, &v101, &qword_1EA93BB40, &unk_18A664140);
        sub_188A3F29C(&v122, &v101, &qword_1EA93BB48, &unk_18A6634D0);
        sub_188A3F29C(&v121, &v101, &unk_1EA93BB50, &qword_18A664150);
        v35 = sub_18A4A5E88();
        (*(v5 + 8))(v9, v34);
        v82 = v35;
        LOWORD(v83) = 1;
        BYTE2(v83) = 1;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BED8, &qword_18A664F68);
        sub_1890B2B48(&qword_1EA93BED0, &qword_1EA93BED8, &qword_18A664F68);
        sub_18A4A5598();
        v47[0] = v101;
        LOWORD(v47[1]) = v102;
        BYTE2(v47[1]) = BYTE2(v102);
        sub_1890B2BE0(v47);
        v105 = v48;
        v106 = v49;
        v107[0] = v50[0];
        *(v107 + 10) = *(v50 + 10);
        v101 = v47[0];
        v102 = v47[1];
        v103 = v47[2];
        v104 = v47[3];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BEC8, &qword_18A664F60);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BEE8, &qword_18A664F70);
        sub_1890B29D0();
        sub_1890B2A7C();
        sub_18A4A5598();
        v86 = v117;
        v87 = v118;
        v88[0] = *v119;
        *(v88 + 10) = *(&v119[1] + 2);
        v82 = v113;
        v83 = v114;
        v84 = v115;
        v85 = v116;
        sub_1890B2BD0(&v82);
        v105 = v86;
        v106 = v87;
        v107[0] = v88[0];
        *(v107 + 11) = *(v88 + 11);
        v101 = v82;
        v102 = v83;
        v103 = v84;
        v104 = v85;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BEB0, &qword_18A664F58);
        sub_1890B2944();
        sub_18A4A5598();
        sub_188A3F5FC(&v121, &unk_1EA93BB50, &qword_18A664150);
      }
    }

    else
    {
      sub_188A3F29C(v123, &v101, &qword_1EA93BB40, &unk_18A664140);
      sub_188A3F29C(&v122, &v101, &qword_1EA93BB48, &unk_18A6634D0);
      sub_188A3F29C(v123, &v101, &qword_1EA93BB40, &unk_18A664140);
      sub_188A3F29C(&v122, &v101, &qword_1EA93BB48, &unk_18A6634D0);
      sub_188A3F29C(&v121, &v101, &unk_1EA93BB50, &qword_18A664150);
      sub_18A4A6C08();
      sub_18A4A4EA8();
      *&v63 = v13;
      v98 = v67;
      v99 = v68;
      v100[0] = v69[0];
      *&v100[1] = *&v69[1];
      v96 = v65;
      v97 = v66;
      v94 = v63;
      v95 = v64;
      sub_1890B2BB8(&v94);
      v105 = v98;
      v106 = v99;
      v107[0] = v100[0];
      *(v107 + 9) = *(v100 + 9);
      v101 = v94;
      v102 = v95;
      v103 = v96;
      v104 = v97;
      sub_188A3F29C(&v121, &v82, &unk_1EA93BB50, &qword_18A664150);
      sub_188A3F29C(&v63, &v82, &qword_1EA93BEF8, &qword_18A664F78);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BED8, &qword_18A664F68);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BEF8, &qword_18A664F78);
      sub_1890B2B48(&qword_1EA93BED0, &qword_1EA93BED8, &qword_18A664F68);
      sub_1890B2B48(&qword_1EA93BEF0, &qword_1EA93BEF8, &qword_18A664F78);
      sub_18A4A5598();
      v48 = v86;
      v49 = v87;
      v50[0] = v88[0];
      *(v50 + 9) = *(v88 + 9);
      v47[0] = v82;
      v47[1] = v83;
      v47[2] = v84;
      v47[3] = v85;
      sub_1890B2BC4(v47);
      v105 = v48;
      v106 = v49;
      v107[0] = v50[0];
      *(v107 + 10) = *(v50 + 10);
      v101 = v47[0];
      v102 = v47[1];
      v103 = v47[2];
      v104 = v47[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BEC8, &qword_18A664F60);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BEE8, &qword_18A664F70);
      sub_1890B29D0();
      sub_1890B2A7C();
      sub_18A4A5598();
      v86 = v117;
      v87 = v118;
      v88[0] = *v119;
      *(v88 + 10) = *(&v119[1] + 2);
      v82 = v113;
      v83 = v114;
      v84 = v115;
      v85 = v116;
      sub_1890B2BD0(&v82);
      v105 = v86;
      v106 = v87;
      v107[0] = v88[0];
      *(v107 + 11) = *(v88 + 11);
      v101 = v82;
      v102 = v83;
      v103 = v84;
      v104 = v85;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BEB0, &qword_18A664F58);
      sub_1890B2944();
      sub_18A4A5598();
      sub_188A3F5FC(&v121, &unk_1EA93BB50, &qword_18A664150);
      sub_188A3F5FC(&v63, &qword_1EA93BEF8, &qword_18A664F78);
    }

    v105 = v74;
    v106 = v75;
    v15 = v76[0];
    goto LABEL_5;
  }

  sub_1890B2408(&v101);
  sub_188A3F29C(v123, &v82, &qword_1EA93BB40, &unk_18A664140);
  sub_188A3F29C(&v122, &v82, &qword_1EA93BB48, &unk_18A6634D0);
  sub_188A3F29C(v123, &v82, &qword_1EA93BB40, &unk_18A664140);
  sub_188A3F29C(&v122, &v82, &qword_1EA93BB48, &unk_18A6634D0);
  v117 = v105;
  v118 = v106;
  *v119 = v107[0];
  *(&v119[1] + 3) = *(v107 + 11);
  v113 = v101;
  v114 = v102;
  v115 = v103;
  v116 = v104;
LABEL_8:
  if (v40)
  {
    *&v70 = v40;
    sub_1890B2930(&v70);
    v91 = v79;
    v92 = v80;
    v93 = v81;
    v88[0] = v76[0];
    v88[1] = v76[1];
    v89 = v77;
    v90 = v78;
    v84 = v72;
    v85 = v73;
    v86 = v74;
    v87 = v75;
    v82 = v70;
    v83 = v71;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BE70, &qword_18A664F30);
    sub_1890B2760();
    sub_18A4A5598();
  }

  else
  {
    v16 = v39;
    if (!v39)
    {
      sub_1890B2430(&v101);
      goto LABEL_13;
    }

    v17 = *(v38 + 48);
    v18 = *(v38 + 56);
    swift_retain_n();
    sub_1891E133C(v17, v18, v19);
    sub_18A4A6C08();
    sub_18A4A45B8();
    *&v44[6] = *&v119[5];
    *&v44[22] = *&v119[7];
    *&v44[38] = v120;
    v20 = -sub_1891E133C(v17, v18, *&v120);
    sub_18A4A6BF8();
    sub_18A4A4EA8();
    *&v47[0] = v16;
    WORD4(v47[0]) = 256;
    *(&v47[3] + 1) = *&v44[46];
    *(&v47[2] + 10) = *&v44[32];
    *(&v47[1] + 10) = *&v44[16];
    *(v47 + 10) = *v44;
    *&v48 = 0;
    *(&v48 + 1) = v20;
    v72 = v47[2];
    v73 = v47[3];
    v70 = v47[0];
    v71 = v47[1];
    v76[0] = v50[0];
    v76[1] = v50[1];
    v74 = v48;
    v75 = v49;
    v79 = v53;
    v80 = v54;
    v77 = v51;
    v78 = v52;
    sub_1890B2754(&v70);
    v91 = v79;
    v92 = v80;
    v93 = v81;
    v88[0] = v76[0];
    v88[1] = v76[1];
    v89 = v77;
    v90 = v78;
    v84 = v72;
    v85 = v73;
    v86 = v74;
    v87 = v75;
    v82 = v70;
    v83 = v71;
    sub_188A3F29C(v47, &v101, &qword_1EA93BE70, &qword_18A664F30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BE70, &qword_18A664F30);
    sub_1890B2760();
    sub_18A4A5598();

    sub_188A3F5FC(v47, &qword_1EA93BE70, &qword_18A664F30);
  }

  v91 = v110;
  v92 = v111;
  v93 = v112;
  v88[0] = v107[0];
  v88[1] = v107[1];
  v89 = v108;
  v90 = v109;
  v84 = v103;
  v85 = v104;
  v86 = v105;
  v87 = v106;
  v82 = v101;
  v83 = v102;
  signpost_c2_entryLock_start();
  v110 = v91;
  v111 = v92;
  v112 = v93;
  v107[0] = v88[0];
  v107[1] = v88[1];
  v108 = v89;
  v109 = v90;
  v103 = v84;
  v104 = v85;
  v105 = v86;
  v106 = v87;
  v101 = v82;
  v102 = v83;
LABEL_13:
  v60 = v117;
  v61 = v118;
  v62[0] = *v119;
  *(v62 + 11) = *(&v119[1] + 3);
  v56 = v113;
  v57 = v114;
  v58 = v115;
  v59 = v116;
  v53 = v110;
  v54 = v111;
  v50[0] = v107[0];
  v50[1] = v107[1];
  v51 = v108;
  v52 = v109;
  v47[2] = v103;
  v47[3] = v104;
  v48 = v105;
  v49 = v106;
  v47[0] = v101;
  v47[1] = v102;
  *&v46[6] = v113;
  v63 = v113;
  v64 = v114;
  *&v46[22] = v114;
  *&v46[38] = v115;
  v65 = v115;
  v66 = v116;
  *&v46[54] = v116;
  *&v46[70] = v117;
  v67 = v117;
  v68 = v118;
  *&v46[86] = v118;
  v69[0] = *v119;
  *&v46[102] = *v119;
  *(v69 + 11) = *(&v119[1] + 3);
  *&v46[113] = *(&v119[1] + 3);
  v79 = v110;
  v80 = v111;
  v76[0] = v107[0];
  v76[1] = v107[1];
  v21 = v42;
  LODWORD(v39) = (v42 != 0) << 8;
  v55 = v112;
  v81 = v112;
  v77 = v108;
  v78 = v109;
  v72 = v103;
  v73 = v104;
  v74 = v105;
  v75 = v106;
  v70 = v101;
  v71 = v102;
  sub_188A3F29C(&v113, &v82, &qword_1EA93BE60, &qword_18A664F20);
  sub_188A3F29C(&v101, &v82, &qword_1EA93BE68, &qword_18A664F28);
  v40 = v43;

  sub_188A3F29C(&v63, &v82, &qword_1EA93BE60, &qword_18A664F20);
  sub_188A3F29C(&v70, &v82, &qword_1EA93BE68, &qword_18A664F28);
  sub_188A3F5FC(&v122, &qword_1EA93BB48, &unk_18A6634D0);
  sub_188A3F5FC(v123, &qword_1EA93BB40, &unk_18A664140);
  sub_188A3F5FC(&v101, &qword_1EA93BE68, &qword_18A664F28);
  sub_188A3F5FC(&v113, &qword_1EA93BE60, &qword_18A664F20);
  *&v45[149] = v78;
  *&v45[165] = v79;
  *&v45[181] = v80;
  *&v45[85] = v75;
  *&v45[101] = v76[0];
  *&v45[117] = v76[1];
  *&v45[133] = v77;
  *&v45[21] = v71;
  *&v45[37] = v72;
  *&v45[53] = v73;
  *&v45[69] = v74;
  *&v45[5] = v70;
  v22 = *&v46[64];
  v23 = v41;
  *(v41 + 98) = *&v46[80];
  v24 = *&v46[112];
  *(v23 + 114) = *&v46[96];
  *(v23 + 130) = v24;
  v25 = *v46;
  *(v23 + 34) = *&v46[16];
  v26 = *&v46[48];
  *(v23 + 50) = *&v46[32];
  v45[197] = v81;
  *(v23 + 66) = v26;
  *(v23 + 82) = v22;
  *(v23 + 18) = v25;
  v27 = *&v45[160];
  *(v23 + 291) = *&v45[144];
  *(v23 + 307) = v27;
  *(v23 + 323) = *&v45[176];
  v28 = *&v45[96];
  *(v23 + 227) = *&v45[80];
  *(v23 + 243) = v28;
  v29 = *&v45[128];
  *(v23 + 259) = *&v45[112];
  *(v23 + 275) = v29;
  v30 = *v45;
  *(v23 + 163) = *&v45[16];
  v31 = *&v45[48];
  *(v23 + 179) = *&v45[32];
  *v23 = v43;
  *(v23 + 8) = v21;
  *(v23 + 16) = v39;
  *(v23 + 146) = v46[128];
  *(v23 + 337) = *&v45[190];
  *(v23 + 195) = v31;
  *(v23 + 211) = *&v45[64];
  *(v23 + 147) = v30;
  v91 = v53;
  v92 = v54;
  v93 = v55;
  v88[0] = v50[0];
  v88[1] = v50[1];
  v89 = v51;
  v90 = v52;
  v84 = v47[2];
  v85 = v47[3];
  v86 = v48;
  v87 = v49;
  v82 = v47[0];
  v83 = v47[1];
  sub_188A3F5FC(&v82, &qword_1EA93BE68, &qword_18A664F28);
  v98 = v60;
  v99 = v61;
  v100[0] = v62[0];
  *(v100 + 11) = *(v62 + 11);
  v94 = v56;
  v95 = v57;
  v96 = v58;
  v97 = v59;
  sub_188A3F5FC(&v94, &qword_1EA93BE60, &qword_18A664F20);
}

uint64_t sub_1890B22D8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 57))
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

uint64_t sub_1890B2334(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

double sub_1890B2408(uint64_t a1)
{
  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 122) = -1;
  *(a1 + 120) = 0;
  return result;
}

double sub_1890B2430(uint64_t a1)
{
  result = 0.0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 192) = -1;
  return result;
}

id sub_1890B2458()
{
  v1 = *v0;
  v2 = objc_allocWithZone(UIVisualEffectView);

  return [v2 initWithEffect_];
}

uint64_t sub_1890B24B0(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BF38, &qword_18A665038);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  result = AGTypeGetKind();
  if ((result - 6) < 0xFFFFFFFC)
  {
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BF28, &qword_18A665030);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BF40, &unk_18A665040);
    sub_18A4A44D8();
    AGGraphCreateOffsetAttribute2();
    sub_18A4A44F8();
    sub_188A34360(&qword_1EA93BF30, &qword_1EA93BF28, &qword_18A665030, &unk_18A674048);
    sub_18A4A5608();
    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_1890B2644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BF28, &qword_18A665030);
  sub_188A34360(&qword_1EA93BF30, &qword_1EA93BF28, &qword_18A665030, &unk_18A674048);
  return sub_18A4A5618();
}

unint64_t sub_1890B2760()
{
  result = qword_1EA93BE78;
  if (!qword_1EA93BE78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93BE70, &qword_18A664F30);
    sub_1890B27EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93BE78);
  }

  return result;
}

unint64_t sub_1890B27EC()
{
  result = qword_1EA93BE80;
  if (!qword_1EA93BE80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93BE88, &qword_18A664F38);
    sub_1890B2878();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93BE80);
  }

  return result;
}

unint64_t sub_1890B2878()
{
  result = qword_1EA93BE90;
  if (!qword_1EA93BE90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93BE98, &qword_18A664F40);
    sub_188A34360(&qword_1EA93BEA0, &qword_1EA93BEA8, &unk_18A664F48, MEMORY[0x1E697DB78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93BE90);
  }

  return result;
}

unint64_t sub_1890B2944()
{
  result = qword_1EA93BEB8;
  if (!qword_1EA93BEB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93BEB0, &qword_18A664F58);
    sub_1890B29D0();
    sub_1890B2A7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93BEB8);
  }

  return result;
}

unint64_t sub_1890B29D0()
{
  result = qword_1EA93BEC0;
  if (!qword_1EA93BEC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93BEC8, &qword_18A664F60);
    sub_1890B2B48(&qword_1EA93BED0, &qword_1EA93BED8, &qword_18A664F68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93BEC0);
  }

  return result;
}

unint64_t sub_1890B2A7C()
{
  result = qword_1EA93BEE0;
  if (!qword_1EA93BEE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93BEE8, &qword_18A664F70);
    sub_1890B2B48(&qword_1EA93BED0, &qword_1EA93BED8, &qword_18A664F68);
    sub_1890B2B48(&qword_1EA93BEF0, &qword_1EA93BEF8, &qword_18A664F78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93BEE0);
  }

  return result;
}

uint64_t sub_1890B2B48(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1890B2BF8()
{
  result = qword_1EA93BF00;
  if (!qword_1EA93BF00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93BF08, &qword_18A664FB0);
    sub_188A34360(&qword_1EA93BF10, &qword_1EA93BF18, &qword_18A664FB8, MEMORY[0x1E6981880]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93BF00);
  }

  return result;
}

unint64_t sub_1890B2CB0(uint64_t a1)
{
  result = sub_1890B2CD8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1890B2CD8()
{
  result = qword_1EA93BF20;
  if (!qword_1EA93BF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93BF20);
  }

  return result;
}

id sub_1890B2D2C(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_18A4A7258();
  v4 = sub_18A4A7258();
  v5 = [v2 _defineNSIntegerTraitWithName_identifier_defaultValue_affectsColorAppearance_defaultValueRepresentsUnspecified_isPrivate_placeholderToken_];

  return v5;
}

id sub_1890B2DF4(uint64_t a1)
{
  v2 = objc_opt_self();
  result = [v2 respondsToSelector_];
  if ((result & 1) == 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v4 = [v2 name];
  if (!v4)
  {
    sub_18A4A7288();
    v4 = sub_18A4A7258();
  }

  result = [v2 respondsToSelector_];
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v5 = [v2 identifier];
  if (!v5)
  {
    sub_18A4A7288();
    v5 = sub_18A4A7258();
  }

  result = [v2 respondsToSelector_];
  if ((result & 1) == 0)
  {
    goto LABEL_13;
  }

  v6 = [v2 affectsColorAppearance];
  result = [v2 respondsToSelector_];
  if ((result & 1) == 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = [v2 defaultValueRepresentsUnspecified];
  result = [v2 respondsToSelector_];
  if (result)
  {
    v8 = [objc_opt_self() _defineNSIntegerTraitWithName_identifier_defaultValue_affectsColorAppearance_defaultValueRepresentsUnspecified_isPrivate_placeholderToken_];

    return v8;
  }

LABEL_15:
  __break(1u);
  return result;
}

id sub_1890B2FB8(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_18A4A7258();
  v4 = sub_18A4A7258();
  v5 = [v2 _defineNSIntegerTraitWithName_identifier_defaultValue_affectsColorAppearance_defaultValueRepresentsUnspecified_isPrivate_placeholderToken_];

  return v5;
}

double sub_1890B30E8(char a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = [(_UITraitOverrides *)*(*v4 + 16) _swiftImplCopy];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210, &unk_18A64BB60);
    v10 = swift_allocObject();
    *(v10 + 16) = v9;

    *v4 = v10;
  }

  v11 = *(*v4 + 16);
  v12 = qword_1ED491B40;
  v13 = v11;
  if (v12 != -1)
  {
    swift_once();
  }

  if (qword_1ED491AF0 != -1)
  {
    swift_once();
  }

  v14 = off_1ED491B48;
  os_unfair_lock_lock(*(off_1ED491B48 + 2));
  a4(a2, a3, 0);
  os_unfair_lock_unlock(v14[2]);
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA934860, &qword_18A65FA90);
  v15 = sub_188A74A44();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  [v13 _setNSIntegerValue_forTraitToken_];

  swift_unknownObjectRelease();
  return result;
}

void sub_1890B32B4()
{
  v1 = *&v0[OBJC_IVAR____TtC5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8717CustomViewWrapper_wrapped];
  if (v1)
  {
    v20 = v1;
    v2 = [v20 superview];
    if (v2 && (v3 = v2, v2, v3 == v0))
    {
      v19 = v20;
    }

    else
    {
      [v20 removeFromSuperview];
      [v0 addSubview_];
      v4 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0, &unk_18A64BA50);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_18A64B810;
      v6 = [v0 widthAnchor];
      v7 = [v20 widthAnchor];
      v8 = [v6 constraintEqualToAnchor_];

      *(v5 + 32) = v8;
      v9 = [v0 heightAnchor];
      v10 = [v20 heightAnchor];
      v11 = [v9 constraintEqualToAnchor_];

      *(v5 + 40) = v11;
      v12 = [v0 centerXAnchor];
      v13 = [v20 centerXAnchor];
      v14 = [v12 constraintEqualToAnchor_];

      *(v5 + 48) = v14;
      v15 = [v0 centerYAnchor];
      v16 = [v20 centerYAnchor];
      v17 = [v15 constraintEqualToAnchor_];

      *(v5 + 56) = v17;
      sub_188A34624(0, &qword_1ED48CFF0, 0x1E69977A0);
      v18 = sub_18A4A7518();

      [v4 activateConstraints_];

      v19 = v18;
    }
  }
}

id sub_1890B358C(uint64_t a1, char a2, uint64_t a3, char a4)
{
  sub_18A4A4E38();
  LOBYTE(v26) = v9 & 1;
  LOBYTE(v25) = v10 & 1;
  if (sub_18A4A4E18())
  {
    LODWORD(v11) = 1112014848;
  }

  else
  {
    sub_18A4A4E08();
    LOBYTE(v22) = v12 & 1;
    LOBYTE(v21) = v13 & 1;
    LOBYTE(v20) = a2 & 1;
    LOBYTE(v19) = a4 & 1;
    if (sub_18A4A4E18())
    {
      *&v11 = 50.0;
    }

    else
    {
      *&v11 = 750.0;
    }
  }

  v14 = *&a3;
  v15 = 10.0;
  if (a4)
  {
    v14 = 10.0;
  }

  if (v14 == INFINITY)
  {
    v16 = 10000.0;
  }

  else
  {
    v16 = v14;
  }

  v17 = *&a1;
  if (a2)
  {
    v17 = 10.0;
  }

  if (v17 == INFINITY)
  {
    v17 = 10000.0;
  }

  LODWORD(v15) = LODWORD(v11);
  LOBYTE(v23) = a4 & 1;
  LOBYTE(v24) = a2 & 1;
  return [v4 systemLayoutSizeFittingSize:v17 withHorizontalFittingPriority:v16 verticalFittingPriority:{v11, v15, v19, v20, v21, v22, v23, v24, v25, v26}];
}

void sub_1890B3744()
{
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, sel_didMoveToWindow);
  v1 = [v0 window];
  if (v1)
  {
  }

  else
  {
    v2 = *&v0[OBJC_IVAR____TtC5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8717CustomViewWrapper_wrapped];
    if (v2)
    {
      v3 = v2;
      v4 = [(UIView *)v3 _typedStorage];
      v5 = sub_18902B930();

      sub_1890A2BD8();
      if (v6)
      {
        v7 = v6;
        while (1)
        {
          v8 = [v7 window];
          if (v8)
          {
            break;
          }

          sub_1890A2BD8();
          v7 = v9;
          if (!v9)
          {
            goto LABEL_8;
          }
        }

        v10 = v8;

        sub_188E036A4(v5);
        sub_1890B32B4();
      }

      else
      {
LABEL_8:

        sub_188E036A4(v5);
      }
    }
  }
}

unint64_t sub_1890B3A28()
{
  result = sub_1890B42A0(MEMORY[0x1E69E7CC0]);
  qword_1EA92FB30 = result;
  return result;
}

double sub_1890B3A50@<D0>(void *a1@<X8>)
{
  if (qword_1EA92FB20 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1EA92FB30;

  return result;
}

id sub_1890B3B1C@<X0>(void *a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  v5 = a2;
  sub_18A4A6C08();
  sub_18A4A4EA8();
  v6 = 0.0;
  if (v5 == 2)
  {
    v6 = 1.0;
  }

  *(a3 + 56) = v12;
  *(a3 + 72) = v13;
  *(a3 + 88) = v14;
  *(a3 + 104) = v15;
  *(a3 + 8) = v9;
  *(a3 + 24) = v10;
  *a3 = a1;
  *(a3 + 40) = v11;
  *(a3 + 120) = v6;

  return a1;
}

__n128 __swift_memcpy146_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1890B3EEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 146) = 1;
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

    *(result + 146) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t *sub_1890B3F54(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v6 = v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_1890B40B4(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_1890B4228(v8, v4, v2);
  result = MEMORY[0x18CFEA5B0](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *sub_1890B40B4(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v18 = result;
  v4 = 0;
  v5 = 0;
  v6 = a3 + 64;
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
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    sub_188A3F29C(*(a3 + 56) + 8 * v14, v19, &qword_1EA936E70, &unk_18A64E880);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {

      result = sub_188A3F5FC(v19, &qword_1EA936E70, &unk_18A64E880);
      *(v18 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_18914CAD0(v18, a2, v4, a3);
      }
    }

    else
    {
      result = sub_188A3F5FC(v19, &qword_1EA936E70, &unk_18A64E880);
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return sub_18914CAD0(v18, a2, v4, a3);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1890B4228(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_1890B40B4(result, a2, a3);

    return v6;
  }

  return result;
}

unint64_t sub_1890B42A0(uint64_t a1)
{
  v2 = sub_188E8D1D8(MEMORY[0x1E69E7CC0]);
  v3 = v2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    return v2;
  }

  v5 = (a1 + 32);
  v6 = v2;
  while (1)
  {
    v8 = *v5++;
    v7 = v8;
    if (!v8)
    {
      goto LABEL_5;
    }

    v9 = *(v6 + 16);
    v10 = v7;
    if (v9 > 5)
    {
      v3 = sub_1890B3F54(v6);
    }

    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    sub_188A3F704(v25, v24, &qword_1EA936E70, &unk_18A64E880);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = sub_188A403F4(v10);
    v14 = v3[2];
    v15 = (v13 & 1) == 0;
    v16 = __OFADD__(v14, v15);
    v17 = v14 + v15;
    if (v16)
    {
      break;
    }

    v18 = v13;
    if (v3[3] < v17)
    {
      sub_1890BA640(v17, isUniquelyReferenced_nonNull_native);
      v12 = sub_188A403F4(v10);
      if ((v18 & 1) != (v19 & 1))
      {
        goto LABEL_23;
      }

LABEL_14:
      if ((v18 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_3;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_14;
    }

    v22 = v12;
    sub_188FA080C();
    v12 = v22;
    if ((v18 & 1) == 0)
    {
LABEL_15:
      v3[(v12 >> 6) + 8] |= 1 << v12;
      *(v3[6] + 8 * v12) = v10;
      sub_188A3F704(v24, v3[7] + 8 * v12, &qword_1EA936E70, &unk_18A64E880);
      v20 = v3[2];
      v16 = __OFADD__(v20, 1);
      v21 = v20 + 1;
      if (v16)
      {
        goto LABEL_22;
      }

      v3[2] = v21;
      goto LABEL_4;
    }

LABEL_3:
    sub_1890B44A4(v24, v3[7] + 8 * v12);
LABEL_4:

    v6 = v3;
LABEL_5:
    if (!--v4)
    {
      return v6;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_18A4A87A8();
  __break(1u);
  return result;
}

uint64_t sub_1890B44A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936E70, &unk_18A64E880);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1890B4524(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 139))
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

uint64_t sub_1890B456C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 138) = 0;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 139) = 1;
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

    *(result + 139) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1890B45D4()
{
  result = qword_1EA930AE0;
  if (!qword_1EA930AE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA93C078, &qword_18A6652E8);
    sub_1890B4660();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA930AE0);
  }

  return result;
}

unint64_t sub_1890B4660()
{
  result = qword_1EA930AF0;
  if (!qword_1EA930AF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93C088, &unk_18A6652F0);
    sub_188C65A5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA930AF0);
  }

  return result;
}

unint64_t sub_1890B46EC()
{
  result = qword_1EA930AB0;
  if (!qword_1EA930AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93C020, &qword_18A665280);
    sub_188BAD470();
    sub_1890B47A4(&unk_1EA930AD0, &qword_1EA93C008, &qword_18A665268, sub_1890B4854);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA930AB0);
  }

  return result;
}

uint64_t sub_1890B47A4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_188A34360(&qword_1ED48E058, &qword_1EA93C070, &qword_18A6652E0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1890B4854()
{
  result = qword_1EA930AE8;
  if (!qword_1EA930AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA93C0A0, &qword_18A665308);
    sub_1890B48E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA930AE8);
  }

  return result;
}

unint64_t sub_1890B48E0()
{
  result = qword_1EA930AF8;
  if (!qword_1EA930AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA930AF8);
  }

  return result;
}

unint64_t sub_1890B4934()
{
  result = qword_1EA930AC0;
  if (!qword_1EA930AC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93BFF8, &qword_18A665258);
    sub_1890B47A4(&qword_1EA930BB0, &qword_1EA93C000, &qword_18A665260, sub_188C659A4);
    sub_1890B47A4(&qword_1EA930AC8, &qword_1EA93BFE8, &qword_18A665248, sub_1890B45D4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA930AC0);
  }

  return result;
}

uint64_t sub_1890B4A18(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
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

uint64_t sub_1890B4A60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1890B4ACC()
{
  result = qword_1EA930AA8;
  if (!qword_1EA930AA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93C0B0, &qword_18A6653A0);
    sub_1890B46EC();
    sub_1890B4934();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA930AA8);
  }

  return result;
}

unint64_t sub_1890B4B74()
{
  result = qword_1EA930230;
  if (!qword_1EA930230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA93C0E8, &qword_18A665488);
    sub_1890B4C00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA930230);
  }

  return result;
}

unint64_t sub_1890B4C00()
{
  result = qword_1EA930250[0];
  if (!qword_1EA930250[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93C0F8, &qword_18A665490);
    sub_188CC538C();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EA930250);
  }

  return result;
}

void sub_1890B4CAC(uint64_t a1)
{
  sub_18A4A2AD8();
  sub_1890C8578(&qword_1EA92F728, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
  sub_18A4A7EA8();
  v2 = 0;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  if (v5)
  {
    goto LABEL_9;
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
      do
      {
LABEL_9:
        v5 &= v5 - 1;
        sub_18A4A7E58();
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
}

unint64_t sub_1890B4E34()
{
  result = qword_1EA93C100;
  if (!qword_1EA93C100)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA93C100);
  }

  return result;
}

void UICollectionView._intelligenceCollectSubelements(in:using:transformToRoot:)(char *a1, char *a2, char *a3, double a4, double a5, double a6, double a7)
{
  v486 = a3;
  v480 = a2;
  v481 = a1;
  v383 = sub_18A4A3678();
  v382 = *(v383 - 8);
  MEMORY[0x1EEE9AC00](v383);
  v372 = &v372 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v386 = &v372 - v15;
  v385 = sub_18A4A3688();
  v384 = *(v385 - 8);
  MEMORY[0x1EEE9AC00](v385);
  v391 = &v372 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v395 = sub_18A4A2A88();
  v379 = *(v395 - 8);
  MEMORY[0x1EEE9AC00](v395);
  v394 = &v372 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v378 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93C108, &qword_18A665498);
  MEMORY[0x1EEE9AC00](v378);
  v390 = &v372 - v18;
  v392 = sub_18A4A2AD8();
  v393 = *(v392 - 8);
  MEMORY[0x1EEE9AC00](v392);
  v376 = &v372 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v375 = &v372 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v377 = &v372 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v387 = &v372 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v388 = &v372 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v374 = &v372 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v389 = &v372 - v31;
  v444 = sub_18A4A3BC8();
  v380 = *(v444 - 8);
  MEMORY[0x1EEE9AC00](v444);
  v443 = &v372 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v442 = &v372 - v34;
  v448 = sub_18A4A3BF8();
  v373 = *(v448 - 8);
  MEMORY[0x1EEE9AC00](v448);
  v456 = &v372 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C110, &qword_18A64BD20);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v415 = &v372 - v37;
  v424 = sub_18A4A4258();
  v482 = *(v424 - 8);
  MEMORY[0x1EEE9AC00](v424);
  v414 = &v372 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v405 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9340B0, &qword_18A64BD28);
  MEMORY[0x1EEE9AC00](v405);
  v404 = &v372 - v39;
  v413 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C120, &qword_18A64BD30);
  MEMORY[0x1EEE9AC00](v413);
  v403 = &v372 - v40;
  v447 = sub_18A4A3D18();
  v491 = *(v447 - 8);
  MEMORY[0x1EEE9AC00](v447);
  v412 = &v372 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v421 = &v372 - v43;
  v402 = sub_18A4A3E48();
  v406 = *(v402 - 8);
  MEMORY[0x1EEE9AC00](v402);
  v401 = &v372 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v400 = &v372 - v46;
  v473 = sub_18A4A3BA8();
  v483 = *(v473 - 8);
  MEMORY[0x1EEE9AC00](v473);
  v435 = &v372 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v472 = &v372 - v49;
  v454 = sub_18A4A3888();
  v475 = *(v454 - 1);
  MEMORY[0x1EEE9AC00](v454);
  v477 = &v372 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA934040, &qword_18A64BCC8);
  MEMORY[0x1EEE9AC00](v51 - 8);
  v427 = &v372 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v436 = &v372 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v441 = &v372 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v446 = &v372 - v58;
  MEMORY[0x1EEE9AC00](v59);
  *&v453 = &v372 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v479 = &v372 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v487 = (&v372 - v64);
  v489 = sub_18A4A3CC8();
  v485 = *(v489 - 8);
  MEMORY[0x1EEE9AC00](v489);
  v381 = &v372 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v66);
  v459 = &v372 - v67;
  MEMORY[0x1EEE9AC00](v68);
  v426 = &v372 - v69;
  MEMORY[0x1EEE9AC00](v70);
  v425 = &v372 - v71;
  MEMORY[0x1EEE9AC00](v72);
  v440 = &v372 - v73;
  MEMORY[0x1EEE9AC00](v74);
  v458 = &v372 - v75;
  MEMORY[0x1EEE9AC00](v76);
  v476 = &v372 - v77;
  MEMORY[0x1EEE9AC00](v78);
  v423 = &v372 - v79;
  MEMORY[0x1EEE9AC00](v80);
  v434 = &v372 - v81;
  MEMORY[0x1EEE9AC00](v82);
  v493 = &v372 - v83;
  v490 = sub_18A4A2B48();
  v471 = *(v490 - 8);
  MEMORY[0x1EEE9AC00](v490);
  v474 = &v372 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v85);
  v439 = &v372 - v86;
  MEMORY[0x1EEE9AC00](v87);
  v452 = &v372 - v88;
  MEMORY[0x1EEE9AC00](v89);
  v494 = &v372 - v90;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C130, qword_18A66CFF0);
  MEMORY[0x1EEE9AC00](v91 - 8);
  v420 = &v372 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v93);
  v438 = &v372 - v94;
  MEMORY[0x1EEE9AC00](v95);
  v455 = &v372 - v96;
  isa = sub_18A4A4168();
  length = isa[-1].length;
  MEMORY[0x1EEE9AC00](isa);
  v465 = &v372 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v98);
  v466 = (&v372 - v99);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9340C0, &qword_18A64BD38);
  MEMORY[0x1EEE9AC00](v100 - 8);
  v488 = &v372 - v101;
  v484 = sub_18A4A3E68();
  v478 = *(v484 - 1);
  MEMORY[0x1EEE9AC00](v484);
  v460 = (&v372 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v103);
  v470 = (&v372 - v104);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C140, &qword_18A6654A0);
  MEMORY[0x1EEE9AC00](v105 - 8);
  v419 = &v372 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v107);
  v457 = &v372 - v108;
  MEMORY[0x1EEE9AC00](v109);
  v111 = &v372 - v110;
  v418 = sub_18A4A4088();
  v112 = *(v418 - 8);
  MEMORY[0x1EEE9AC00](v418);
  v114 = &v372 - ((v113 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = MEMORY[0x1EEE9AC00](v115);
  v118 = &v372 - v117;
  v464 = [v7 _collectionViewData];
  if (!v464)
  {
    goto LABEL_131;
  }

  v462 = [v7 collectionViewLayout];
  sub_18A4A3448();
  __swift_project_boxed_opaque_existential_0(&v497, v498);
  sub_18A4A3E88();
  sub_1890B8D28(v118);
  v468 = v119;
  v120 = *(v112 + 8);
  v410 = v118;
  v121 = v118;
  v122 = v418;
  v120(v121, v418);
  v123 = __swift_destroy_boxed_opaque_existential_0Tm(&v497);
  v124 = v482[7];
  v463 = v111;
  v417 = v482 + 7;
  v416 = v124;
  (v124)(v111, 1, 1, v424, v123);
  sub_18A4A3448();
  __swift_project_boxed_opaque_existential_0(&v497, v498);
  sub_18A4A3E88();
  v125 = v488;
  sub_18A4A3E98();
  v409 = v120;
  v120(v114, v122);
  v126 = v478;
  v127 = v484;
  v128 = (*(v478 + 6))(v125, 1, v484);
  v492 = v7;
  v411 = v112 + 8;
  if (v128 == 1)
  {
    sub_188A3F5FC(v125, &unk_1EA9340C0, &qword_18A64BD38);
    __swift_destroy_boxed_opaque_existential_0Tm(&v497);
    v461 = 0;
    v129 = v7;
    v130 = v489;
    v131 = v455;
  }

  else
  {
    v132 = v470;
    (*(v126 + 4))(v470, v125, v127);
    __swift_destroy_boxed_opaque_existential_0Tm(&v497);
    v133 = UICollectionView._appIntentsDataSourcePayloadProvider.getter(&v501);
    v131 = v455;
    if (AssociatedTypeWitness)
    {
      sub_188A5EBAC(&v501, &v497);

      v135 = v466;
      sub_1890E6534(v134, v466);
      __swift_project_boxed_opaque_existential_0(&v497, v498);
      v136 = sub_18A4A4268();
      __swift_project_boxed_opaque_existential_0(&v497, v498);
      v137 = sub_18A4A4278();
      v461 = v136;
      if (v137)
      {
        (*(v126 + 2))(v460, v132, v127);
        sub_188A53994(&v497, &v501);
        v138 = length;
        length[2](v465, v135, isa);

        v139 = v457;
        sub_18A4A4228();
        (v138[1])(v135, isa);
        (*(v126 + 1))(v132, v127);
        v416(v139, 0, 1, v424);
        sub_1890C3D9C(v139, v463);
      }

      else
      {
        (length[1])(v135, isa);
        (*(v126 + 1))(v132, v127);
      }

      v130 = v489;
      v140 = v491;
      __swift_destroy_boxed_opaque_existential_0Tm(&v497);
      v129 = v492;
      goto LABEL_11;
    }

    (*(v126 + 1))(v132, v127, v133);
    sub_188A3F5FC(&v501, &unk_1EA93C160, &qword_18A6654A8);
    v461 = 0;
    v129 = v492;
    v130 = v489;
  }

  v140 = v491;
LABEL_11:
  v141 = __swift_project_boxed_opaque_existential_0(v468 + 5, v468[8]);
  v142 = MEMORY[0x1EEE9AC00](v141);
  (*(v144 + 16))(&v372 - ((v143 + 15) & 0xFFFFFFFFFFFFFFF0), v142);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(&v501);
  sub_18A4A7458();
  v478 = 0;
  length = (v471 + 6);
  v460 = (v471 + 4);
  v466 = (v485 + 56);
  v470 = (v471 + 2);
  v484 = (v485 + 48);
  v145 = (v485 + 32);
  v433 = *MEMORY[0x1E69DBBC0];
  v488 = (v483 + 13);
  v432 = v483 + 1;
  v483 = (v485 + 8);
  v451 = (v475 + 2);
  v450 = *MEMORY[0x1E69DBBA8];
  v449 = v475 + 1;
  v437 = (v471 + 7);
  v431 = *MEMORY[0x1E69DBC38];
  v430 = (v140 + 104);
  v399 = v406 + 16;
  v429 = (v140 + 8);
  v398 = v406 + 32;
  v397 = v406 + 56;
  v396 = v406 + 8;
  v422 = (v482 + 6);
  v408 = (v482 + 4);
  v407 = "14AA6B49FCAFC5A54255A118E1D87).";
  v475 = (v471 + 1);
  v482 = MEMORY[0x1E69E7CC8];
  v471 = (v485 + 16);
  v428 = xmmword_18A64BFB0;
  v146 = v490;
  v491 = (v485 + 32);
  while (1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(&v501, AssociatedTypeWitness);
    sub_18A4A7D78();
    v147 = *length;
    v148 = (*length)(v131, 1, v146);
    v149 = v494;
    if (v148 == 1)
    {
      break;
    }

    v465 = v147;
    v457 = *v460;
    (v457)(v494, v131, v146);
    v150 = v487;
    (*v466)(v487, 1, 1, v130);
    v151 = sub_18A4A2B08();
    v152 = [v129 _cellForItemAtIndexPath_];

    v154 = v479;
    if (v152)
    {
      MEMORY[0x1EEE9AC00](v153);
      *(&v372 - 10) = v129;
      *(&v372 - 9) = v152;
      *(&v372 - 8) = a4;
      *(&v372 - 7) = a5;
      *(&v372 - 6) = a6;
      *(&v372 - 5) = a7;
      v155 = v480;
      *(&v372 - 4) = v481;
      *(&v372 - 3) = v155;
      *(&v372 - 2) = v486;
      sub_18A4A33C8();

      v149 = v494;
      sub_188A3F5FC(v150, &unk_1EA934040, &qword_18A64BCC8);
      sub_188A3F704(v154, v150, &unk_1EA934040, &qword_18A64BCC8);
    }

    sub_18907FBC8(v149, v468[3]);
    v156 = sub_18A4A2B08();
    [v129 _globalIndexPathForItemAtIndexPath_];

    isa = v470->isa;
    (isa)(v452, v149, v490);
    v157 = v487;
    sub_18A4A3878();
    v158 = v453;
    sub_188A3F29C(v157, v453, &unk_1EA934040, &qword_18A64BCC8);
    v159 = *v484;
    if ((*v484)(v158, 1, v130) == 1)
    {
      sub_188A3F5FC(v158, &unk_1EA934040, &qword_18A64BCC8);
    }

    else
    {
      v160 = v434;
      v445 = *v145;
      v445(v434, v158, v130);
      v161 = v472;
      sub_18A4A3C08();
      v162 = *v488;
      v163 = v435;
      v164 = v473;
      (*v488)(v435, v433, v473);
      v165 = MEMORY[0x18CFDEAE0](v161, v163);
      v166 = *v432;
      (*v432)(v163, v164);
      v166(v161, v164);
      if (v165)
      {
        v167 = v477;
        v168 = v454;
        (*v451)(v161, v477, v454);
        v162(v161, v450, v164);
        sub_18A4A3C18();
        (*v449)(v167, v168);
        sub_188A3F5FC(v487, &unk_1EA934040, &qword_18A64BCC8);
        v130 = v489;
        v445(v493, v160, v489);
        v169 = v463;
        goto LABEL_24;
      }

      v130 = v489;
      (*v483)(v160, v489);
      v157 = v487;
    }

    v170 = sub_18A4A2B08();
    v171 = [(UICollectionViewData *)v464 rectForItemAtIndexPath:v170];
    v173 = v172;
    v175 = v174;
    v177 = v176;

    (v480)(v492, v171, v173, v175, v177);
    v178 = v446;
    sub_188A3F29C(v157, v446, &unk_1EA934040, &qword_18A64BCC8);
    v179 = v159(v178, 1, v130);
    v169 = v463;
    if (v179 == 1)
    {
      sub_188A3F5FC(v178, &unk_1EA934040, &qword_18A64BCC8);
    }

    else
    {
      v180 = v485;
      v181 = *(v485 + 32);
      v182 = v423;
      v181(v423, v178, v130);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C150, &unk_18A66CB10);
      v183 = (*(v180 + 80) + 32) & ~*(v180 + 80);
      v184 = swift_allocObject();
      *(v184 + 16) = v428;
      v185 = v182;
      v169 = v463;
      v181((v184 + v183), v185, v130);
    }

    v186 = v472;
    v187 = v477;
    v188 = v454;
    (*v451)(v472, v477, v454);
    (*v488)(v186, v450, v473);
    sub_18A4A3748();
    (*v449)(v187, v188);
    sub_188A3F5FC(v157, &unk_1EA934040, &qword_18A64BCC8);
LABEL_24:
    v8 = v494;
    v146 = v490;
    if (v461)
    {
      v189 = sub_1890E6F70(&v497);
      if (v497)
      {
        v190 = v438;
        (isa)(v438, v8, v146, v189);
        (*v437)(v190, 0, 1, v146);
        v191 = v465;
      }

      else
      {
        v192 = v500;
        v193 = sub_18A4A2B08();
        v194 = [v192 dataSourceIndexPathForPresentationIndexPath_];

        if (v194)
        {
          v195 = v420;
          sub_18A4A2B18();

          v196 = 0;
        }

        else
        {
          v196 = 1;
          v195 = v420;
        }

        v191 = v465;
        (*v437)(v195, v196, 1, v146);
        v197 = v195;
        v190 = v438;
        sub_188A3F704(v197, v438, &unk_1EA93C130, qword_18A66CFF0);
      }

      sub_1890C3D10(&v497);
      if ((v191)(v190, 1, v146) == 1)
      {
        sub_188A3F5FC(v190, &unk_1EA93C130, qword_18A66CFF0);
      }

      else
      {
        v198 = v439;
        (v457)(v439, v190, v146);
        v199 = v421;
        (isa)(v421, v198, v146);
        v200 = *v430;
        (*v430)(v199, v431, v447);
        v201 = v461;
        if (*(v461 + 16) && (v202 = sub_188E8BD28(v199), (v203 & 1) != 0))
        {
          v204 = v406;
          v205 = *(v201 + 56) + *(v406 + 72) * v202;
          v206 = *(v406 + 16);
          v207 = v401;
          v208 = v402;
          v206(v401, v205, v402);
          v465 = *v429;
          (v465)(v199, v447);
          v209 = v400;
          (*(v204 + 32))(v400, v207, v208);
          v210 = v404;
          v206(v404, v209, v208);
          (*(v204 + 56))(v210, 0, 1, v208);
          sub_18A4A3848();
          sub_18A4A3978();
          v211 = v209;
          v146 = v490;
          v212 = v208;
          v8 = v494;
          (*(v204 + 8))(v211, v212);
        }

        else
        {
          v465 = *v429;
          (v465)(v199, v447);
        }

        v213 = v419;
        sub_188A3F29C(v169, v419, &unk_1EA93C140, &qword_18A6654A0);
        v214 = v424;
        if ((*v422)(v213, 1, v424) == 1)
        {
          (*v475)(v439, v146);
          sub_188A3F5FC(v213, &unk_1EA93C140, &qword_18A6654A0);
        }

        else
        {
          v457 = *v408;
          v445 = v200;
          v215 = v169;
          v216 = v414;
          (v457)(v414, v213, v214);
          sub_18A4A3448();
          __swift_project_boxed_opaque_existential_0(v496, v496[3]);
          v217 = v410;
          sub_18A4A3E88();
          v218 = sub_18A4A6E88();
          v219 = v415;
          (*(*(v218 - 8) + 56))(v415, 1, 1, v218);
          v220 = sub_18A4A3958();
          sub_18A4A3838();
          sub_188A3F5FC(v219, &unk_1EA93C110, &qword_18A64BD20);
          v221 = v217;
          v146 = v490;
          v409(v221, v418);
          v220(v495, 0);
          v222 = __swift_destroy_boxed_opaque_existential_0Tm(v496);
          v223 = v412;
          v224 = v439;
          (isa)(v412, v439, v146, v222);
          v225 = v447;
          v445(v223, v431, v447);
          sub_18A4A4248();
          (v465)(v223, v225);
          v226 = __swift_destroy_boxed_opaque_existential_0Tm(&v497);
          (*v475)(v224, v146, v226);
          sub_188A3F5FC(v215, &unk_1EA93C140, &qword_18A6654A0);
          (v457)(v215, v216, v214);
          v8 = v494;
          v416(v215, 0, 1, v214);
        }

        v130 = v489;
      }
    }

    if (sub_18A4A2B28() < 1)
    {
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
      sub_18A4A87A8();
      __break(1u);

      __break(1u);
      return;
    }

    v227 = sub_18A4A2B58();
    (*v471)(v476, v493, v130);
    sub_188A55B8C(v478, 0);
    v228 = v482;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v497 = v228;
    v231 = sub_188C4585C(v227);
    v232 = v228[2];
    v233 = (v230 & 1) == 0;
    v234 = v232 + v233;
    if (__OFADD__(v232, v233))
    {
      goto LABEL_127;
    }

    v235 = v230;
    if (v228[3] >= v234)
    {
      v129 = v492;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_188FA6DF4();
        v228 = v497;
      }

      v130 = v489;
      if (v235)
      {
        goto LABEL_52;
      }
    }

    else
    {
      sub_1890C10CC(v234, isUniquelyReferenced_nonNull_native);
      v236 = v497;
      v237 = sub_188C4585C(v227);
      v129 = v492;
      if ((v235 & 1) != (v238 & 1))
      {
        goto LABEL_132;
      }

      v231 = v237;
      v130 = v489;
      v228 = v236;
      if (v235)
      {
        goto LABEL_52;
      }
    }

    v228[(v231 >> 6) + 8] |= 1 << v231;
    *(v228[6] + 8 * v231) = v227;
    *(v228[7] + 8 * v231) = MEMORY[0x1E69E7CC0];
    v239 = v228[2];
    v240 = __OFADD__(v239, 1);
    v241 = v239 + 1;
    if (v240)
    {
      goto LABEL_128;
    }

    v228[2] = v241;
LABEL_52:
    v482 = v228;
    v242 = v228[7];
    v243 = *(v242 + 8 * v231);
    v244 = swift_isUniquelyReferenced_nonNull_native();
    *(v242 + 8 * v231) = v243;
    if ((v244 & 1) == 0)
    {
      v243 = sub_188DFA260(0, v243[2] + 1, 1, v243);
      *(v242 + 8 * v231) = v243;
    }

    v246 = v243[2];
    v245 = v243[3];
    if (v246 >= v245 >> 1)
    {
      *(v242 + 8 * v231) = sub_188DFA260((v245 > 1), v246 + 1, 1, v243);
    }

    v247 = v485;
    (*(v485 + 8))(v493, v130);
    (*v475)(v494, v146);
    v248 = *(v242 + 8 * v231);
    *(v248 + 16) = v246 + 1;
    v145 = v491;
    (*(v247 + 32))(v248 + ((*(v247 + 80) + 32) & ~*(v247 + 80)) + *(v247 + 72) * v246, v476, v130);
    v478 = sub_188F49350;
    v131 = v455;
  }

  v249 = __swift_destroy_boxed_opaque_existential_0Tm(&v501);
  if (!(*v422)(v463, 1, v424, v249))
  {
    sub_18A4A4238();
  }

  v250 = v482;
  v251 = v482[2];
  if (v251)
  {
    v252 = sub_1890BA4EC(v482[2], 0);
    v253 = sub_1890BA164(&v497, v252 + 4, v251, v250);
    v254 = v497;
    v8 = v499;

    sub_188E036A4(v254);
    if (v253 != v251)
    {
      goto LABEL_130;
    }

    v130 = v489;
  }

  else
  {
    v252 = MEMORY[0x1E69E7CC0];
  }

  *&v497 = v252;
  sub_1890B9A14(&v497);
  v255 = *(v497 + 16);
  if (!v255)
  {

    v318 = [(UICollectionViewData *)v464 numberOfSections];
    v494 = 0;
    v258 = 1;
    goto LABEL_104;
  }

  v494 = 0;
  v470 = @"UICollectionElementKindSectionHeader";
  isa = @"UICollectionElementKindSectionFooter";
  LODWORD(length) = *MEMORY[0x1E69DBC18];
  v465 = (v380 + 104);
  LODWORD(v461) = *MEMORY[0x1E69DBC10];
  v460 = (v380 + 32);
  v457 = (v373 + 16);
  LODWORD(v455) = *MEMORY[0x1E69DBBF8];
  v454 = (v373 + 8);
  v452 = v497;
  v256 = v497 + 40;
  v257 = MEMORY[0x1E69E7CC0];
  v258 = 1;
  v453 = xmmword_18A64BFA0;
  v259 = 1;
  while (2)
  {
    v477 = v255;
    v487 = v257;
    v260 = *(v256 - 8);

    v261 = [v462 _layoutTypeForSection_];
    v262 = v261;
    v263 = v258 | ~v259;
    v264 = v494;
    v265 = v494 == v261;
    if (v494 == v261)
    {
      v266 = v494;
    }

    else
    {
      v266 = 0;
    }

    if (v258)
    {
      v266 = v261;
    }

    if (v259)
    {
      v264 = v266;
    }

    v494 = v264;
    if (v259)
    {
      v258 = (v258 | v265) ^ 1;
    }

    LODWORD(v493) = v258;
    if ((v263 & 1) == 0)
    {
      v259 = v265;
    }

    LODWORD(v476) = v259;
    [(UICollectionViewData *)v464 numberOfItemsInSection:v260];
    if (v262 == 2)
    {
      v267 = v461;
    }

    else
    {
      v267 = length;
    }

    v268 = v443;
    v269 = v444;
    (*v465)(v443, v267, v444);
    (*v460)(v442, v268, v269);
    v270 = *v466;
    (*v466)(v479, 1, 1, v130);
    v270(v441, 1, 1, v130);
    v271 = v456;
    sub_18A4A3BB8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937BF0, &qword_18A6617E0);
    v272 = swift_allocObject();
    *(v272 + 16) = v453;
    *(v272 + 32) = v260;
    *(v272 + 40) = 0;
    MEMORY[0x18CFDDA80]();
    v273 = v470;
    v274 = sub_18A4A2B08();
    v275 = v492;
    v276 = [v492 _visibleSupplementaryViewOfKind_atIndexPath_];

    v278 = v480;
    if (v276)
    {
      MEMORY[0x1EEE9AC00](v277);
      *(&v372 - 10) = v275;
      *(&v372 - 9) = v276;
      *(&v372 - 8) = a4;
      *(&v372 - 7) = a5;
      *(&v372 - 6) = a6;
      *(&v372 - 5) = a7;
      *(&v372 - 4) = v481;
      *(&v372 - 3) = v278;
      *(&v372 - 2) = v486;
      sub_18A4A33C8();
      sub_18A4A3BE8();
    }

    v279 = isa;
    v280 = sub_18A4A2B08();
    v281 = [v275 _visibleSupplementaryViewOfKind_atIndexPath_];

    v283 = v486;
    if (v281)
    {
      MEMORY[0x1EEE9AC00](v282);
      *(&v372 - 10) = v275;
      *(&v372 - 9) = v281;
      *(&v372 - 8) = a4;
      *(&v372 - 7) = a5;
      *(&v372 - 6) = a6;
      *(&v372 - 5) = a7;
      *(&v372 - 4) = v481;
      *(&v372 - 3) = v278;
      *(&v372 - 2) = v283;
      sub_18A4A33C8();
      sub_18A4A3BD8();
    }

    [v462 _layoutFrameForSection_];
    x = v504.origin.x;
    y = v504.origin.y;
    width = v504.size.width;
    height = v504.size.height;
    if (CGRectIsNull(v504))
    {
      v288 = v492;
      [v492 contentSize];
      width = v289;
      height = v290;
      x = 0.0;
      y = 0.0;
    }

    else
    {
      v288 = v492;
    }

    v291 = v440;
    (v278)(v288, x, y, width, height);
    v292 = v472;
    v293 = v278;
    v294 = v448;
    (*v457)(v472, v271, v448);
    (*v488)(v292, v455, v473);
    sub_18A4A3748();
    v295 = [v288 _orthogonalScrollViewForSectionIndex_];
    v296 = v271;
    v130 = v489;
    if (v295)
    {
      v297 = v295;
      MEMORY[0x1EEE9AC00](v295);
      *(&v372 - 10) = v288;
      *(&v372 - 9) = v298;
      *(&v372 - 8) = a4;
      *(&v372 - 7) = a5;
      *(&v372 - 6) = a6;
      *(&v372 - 5) = a7;
      *(&v372 - 4) = v481;
      *(&v372 - 3) = v293;
      *(&v372 - 2) = v283;
      v299 = v436;
      sub_18A4A33C8();
      v300 = v427;
      sub_188A3F29C(v299, v427, &unk_1EA934040, &qword_18A64BCC8);
      if ((*v484)(v300, 1, v130) == 1)
      {

        sub_188A3F5FC(v299, &unk_1EA934040, &qword_18A64BCC8);
        (*v475)(v474, v490);
        (*v454)(v456, v294);
        sub_188A3F5FC(v300, &unk_1EA934040, &qword_18A64BCC8);
        goto LABEL_90;
      }

      v302 = *v491;
      (*v491)(v425, v300, v130);
      (*v471)(v426, v291, v130);
      v303 = sub_18A4A3778();
      v305 = v304;
      v306 = *v304;
      v307 = swift_isUniquelyReferenced_nonNull_native();
      *v305 = v306;
      if ((v307 & 1) == 0)
      {
        v306 = sub_188DFA260(0, *(v306 + 2) + 1, 1, v306);
        *v305 = v306;
      }

      v309 = *(v306 + 2);
      v308 = *(v306 + 3);
      if (v309 >= v308 >> 1)
      {
        v306 = sub_188DFA260((v308 > 1), v309 + 1, 1, v306);
        *v305 = v306;
      }

      *(v306 + 2) = v309 + 1;
      v310 = v485;
      v130 = v489;
      v301 = v491;
      v302(&v306[((*(v310 + 80) + 32) & ~*(v310 + 80)) + *(v485 + 72) * v309], v426, v489);
      v303(&v497, 0);

      sub_188A3F5FC(v436, &unk_1EA934040, &qword_18A64BCC8);
      (*(v310 + 8))(v291, v130);
      (*v475)(v474, v490);
      (*v454)(v456, v448);
      v302(v291, v425, v130);
    }

    else
    {
      (*v475)(v474, v490);
      (*v454)(v296, v294);
LABEL_90:
      v301 = v491;
    }

    v257 = v487;
    v311 = *v301;
    v312 = v458;
    (*v301)(v458, v291, v130);
    (*v471)(v459, v312, v130);
    v313 = swift_isUniquelyReferenced_nonNull_native();
    v314 = v488;
    if ((v313 & 1) == 0)
    {
      v257 = sub_188DFA260(0, (v257[2] + 1), 1, v257);
    }

    v258 = v493;
    v316 = v257[2];
    v315 = v257[3];
    if (v316 >= v315 >> 1)
    {
      v257 = sub_188DFA260((v315 > 1), v316 + 1, 1, v257);
    }

    v317 = v485;
    (*(v485 + 8))(v458, v130);
    v257[2] = (v316 + 1);
    v311(v257 + ((*(v317 + 80) + 32) & ~*(v317 + 80)) + *(v317 + 72) * v316, v459, v130);
    v256 += 16;
    v255 = v477 - 1;
    v259 = v476;
    if (v477 != 1)
    {
      continue;
    }

    break;
  }

  v318 = [(UICollectionViewData *)v464 numberOfSections];
  if ((v259 & 1) == 0)
  {

    v319 = v486;
    v320 = v492;
    v321 = v480;
    goto LABEL_116;
  }

LABEL_104:
  v8 = v392;
  if (v318 < 0)
  {
    goto LABEL_129;
  }

  LODWORD(v493) = v258;
  v322 = v374;
  v484 = v318;
  sub_18A4A2A98();
  v323 = v388;
  sub_1890B4CAC(v482);
  v324 = v393;
  v325 = *(v393 + 16);
  v325(v387, v322, v8);
  v325(v375, v322, v8);
  v325(v376, v323, v8);
  v491 = MEMORY[0x1E6969B50];
  sub_1890C8578(&qword_1EA92F728, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
  v326 = v377;
  sub_18A4A7E48();
  sub_18A4A7E38();
  v327 = *(v324 + 8);
  (v327)(v326, v8);
  (v327)(v388, v8);
  v393 = v324 + 8;
  v487 = v327;
  (v327)(v322, v8);
  sub_18A4A2AA8();
  sub_1890C8578(&qword_1EA92F730, v491, MEMORY[0x1E6969B88]);
  v328 = v394;
  sub_18A4A7878();
  v329 = sub_1890C8578(&qword_1EA92F738, MEMORY[0x1E6969B18], MEMORY[0x1E6969B28]);
  v330 = v395;
  v491 = v329;
  LOBYTE(v325) = sub_18A4A7248();
  v331 = (v379 + 8);
  v332 = *(v379 + 8);
  v332(v328, v330);
  if (v325)
  {
    v333 = v494;
    v321 = v480;
    v334 = v493;
    goto LABEL_119;
  }

  v490 = v331 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v335 = sub_18A4A78C8();
  v337 = *v336;
  v335(&v497, 0);
  sub_18A4A7888();
  v338 = [v462 _layoutTypeForSection_];
  v333 = v338;
  if ((v493 & 1) == 0)
  {
LABEL_112:
    v345 = v392;
    v346 = v390;
    if (v494 == v338)
    {
      while (1)
      {
        v347 = v394;
        sub_18A4A7878();
        v348 = v395;
        v349 = sub_18A4A7248();
        v332(v347, v348);
        if (v349)
        {
          break;
        }

        v350 = sub_18A4A78C8();
        v352 = *v351;
        v350(&v497, 0);
        sub_18A4A7888();
        v353 = [v462 _layoutTypeForSection_];
        if (v494 != v353)
        {
          goto LABEL_115;
        }
      }

      v334 = 0;
      v333 = v494;
      goto LABEL_118;
    }

LABEL_115:
    sub_188A3F5FC(v346, &qword_1EA93C108, &qword_18A665498);
    (v487)(v389, v345);
    v321 = v480;
    v319 = v486;
    v320 = v492;
    v130 = v489;
    v314 = v488;
LABEL_116:
    [(UICollectionViewData *)v464 numberOfItems];
    v354 = v386;
LABEL_121:
    (*(v382 + 104))(v354, *MEMORY[0x1E69DBA90], v383);
    goto LABEL_125;
  }

  v339 = v394;
  sub_18A4A7878();
  v340 = sub_1890C8578(&qword_1EA92F738, MEMORY[0x1E6969B18], MEMORY[0x1E6969B28]);
  v341 = v395;
  v491 = v340;
  v342 = sub_18A4A7248();
  v332 = *v331;
  (*v331)(v339, v341);
  if ((v342 & 1) == 0)
  {
    v343 = sub_18A4A78C8();
    v494 = *v344;
    v343(&v497, 0);
    sub_18A4A7888();
    v338 = [v462 _layoutTypeForSection_];
    v494 = v333;
    goto LABEL_112;
  }

  v334 = 0;
LABEL_118:
  v321 = v480;
  v130 = v489;
LABEL_119:
  sub_188A3F5FC(v390, &qword_1EA93C108, &qword_18A665498);
  (v487)(v389, v392);
  [(UICollectionViewData *)v464 numberOfItems];
  v319 = v486;
  v354 = v386;
  v314 = v488;
  if (v334)
  {
    v320 = v492;
    goto LABEL_121;
  }

  v355 = MEMORY[0x1E69DBC10];
  if (v333 != 2)
  {
    v355 = MEMORY[0x1E69DBC18];
  }

  v356 = v372;
  (*(v380 + 104))(v372, *v355, v444);
  v357 = v382;
  v358 = v321;
  v359 = v383;
  (*(v382 + 104))(v356, *MEMORY[0x1E69DBA98], v383);
  v360 = v359;
  v321 = v358;
  (*(v357 + 32))(v354, v356, v360);
  v320 = v492;
LABEL_125:
  v361 = v391;
  v362 = sub_18A4A3668();
  MEMORY[0x1EEE9AC00](v362);
  *(&v372 - 8) = v320;
  *(&v372 - 7) = a4;
  *(&v372 - 6) = a5;
  *(&v372 - 5) = a6;
  *(&v372 - 4) = a7;
  *(&v372 - 3) = v481;
  *(&v372 - 2) = v321;
  *(&v372 - 1) = v319;
  sub_18A4A33D8();
  [v320 contentSize];
  (v321)(v320, 0.0, 0.0, v363, v364);
  v365 = v384;
  v366 = v472;
  v367 = v385;
  (*(v384 + 16))(v472, v361, v385);
  (*v314)(v366, *MEMORY[0x1E69DBB90], v473);
  v368 = v381;
  sub_18A4A3748();
  sub_18A4A3988();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C150, &unk_18A66CB10);
  v369 = v485;
  v370 = (*(v485 + 80) + 32) & ~*(v485 + 80);
  v371 = swift_allocObject();
  *(v371 + 16) = v428;
  (*(v369 + 16))(v371 + v370, v368, v130);
  sub_18A4A3438();

  (*(v369 + 8))(v368, v130);
  (*(v365 + 8))(v391, v367);
  sub_188A3F5FC(v463, &unk_1EA93C140, &qword_18A6654A0);
  sub_188A55B8C(v478, 0);
}

void sub_1890B8D28(uint64_t a1)
{
  v11 = MEMORY[0x1E69E7CC0];
  v12 = MEMORY[0x1E69E7CC0];
  v3 = swift_allocObject();
  v3[2] = v1;
  v3[3] = &v12;
  v3[4] = &v11;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1890C856C;
  *(v4 + 24) = v3;
  v10[4] = sub_188A4B574;
  v10[5] = v4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_188A4A968;
  v10[3] = &block_descriptor_42_1;
  v5 = _Block_copy(v10);
  v6 = v1;

  [v6 performUsingPresentationValues_];
  _Block_release(v5);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  else
  {
    v8 = v11;
    v7 = v12;

    sub_18911E524(v6, v7, v8, a1, v9);
  }
}

double UICollectionView._appIntentsDataSourcePayloadProvider.getter@<D0>(uint64_t a1@<X8>)
{
  if ([v1 _internalAppIntentsDataSourcePayloadProvider])
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (!*(&v5 + 1))
  {
    sub_188A3F5FC(v6, &qword_1EA934050, qword_18A64CA10);
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C170, &qword_18A6654B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

void sub_1890B8FC0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  aBlock[4] = sub_188DFA228;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_188DFA16C;
  aBlock[3] = &block_descriptor_33_2;
  v17 = _Block_copy(aBlock);

  v18.receiver = a1;
  v18.super_class = UICollectionView;
  objc_msgSendSuper2(&v18, sel__intelligenceCollectSubelementsIn_using_transformToRoot_, a2, v17, a5, a6, a7, a8);
  _Block_release(v17);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }
}

void sub_1890B91E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, unsigned int a13)
{
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  v27[4] = a7;
  v27[5] = v24;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 1107296256;
  v27[2] = sub_188DFA16C;
  v27[3] = a8;
  v25 = _Block_copy(v27);

  [a1 _intelligenceCollectElementFor_in_using_transformToRoot_];
  _Block_release(v25);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

void sub_1890B9348(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  *(v18 + 24) = a5;
  v20[4] = sub_188DFA228;
  v20[5] = v18;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 1107296256;
  v20[2] = sub_188DFA16C;
  v20[3] = &block_descriptor_26_8;
  v19 = _Block_copy(v20);

  [a1 _intelligenceCollectElementFor_in_using_transformToRoot_];
  _Block_release(v19);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }
}

void sub_1890B94AC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  *(v18 + 24) = a5;
  v20[4] = sub_188DFA1F8;
  v20[5] = v18;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 1107296256;
  v20[2] = sub_188DFA16C;
  v20[3] = &block_descriptor_104;
  v19 = _Block_copy(v20);

  [a1 _intelligenceCollectElementFor_in_using_transformToRoot_];
  _Block_release(v19);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }
}

double sub_1890B9610(void *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = [a1 indexPathsForSelectedItems];
  if (v6)
  {
    v7 = v6;
    sub_18A4A2B48();
    v8 = sub_18A4A7548();

    *a2 = v8;
  }

  v9 = [a1 indexPathsForVisibleItems];
  sub_18A4A2B48();
  v10 = sub_18A4A7548();

  *a3 = v10;

  return result;
}

void (*UICollectionView._appIntentsDataSourcePayloadProvider.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xA8uLL);
  }

  *a1 = v3;
  *(v3 + 160) = v1;
  UICollectionView._appIntentsDataSourcePayloadProvider.getter(v3);
  return sub_1890B9754;
}

void sub_1890B9754(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_188A3F29C(*a1, v2 + 40, &unk_1EA93C160, &qword_18A6654A8);
    sub_188A3F29C(v2 + 40, v2 + 80, &unk_1EA93C160, &qword_18A6654A8);
    v4 = *(v2 + 104);
    if (v4)
    {
      v5 = __swift_project_boxed_opaque_existential_0((v2 + 80), *(v2 + 104));
      v6 = *(v4 - 8);
      v7 = MEMORY[0x1EEE9AC00](v5);
      v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v6 + 16))(v9, v7);
      v10 = sub_18A4A86A8();
      (*(v6 + 8))(v9, v4);
      v3 = __swift_destroy_boxed_opaque_existential_0Tm((v2 + 80));
    }

    else
    {
      v10 = 0;
    }

    [*(v2 + 160) _setInternalAppIntentsDataSourcePayloadProvider_];
    swift_unknownObjectRelease();
    sub_188A3F5FC(v2 + 40, &unk_1EA93C160, &qword_18A6654A8);
  }

  else
  {
    sub_188A3F29C(*a1, v2 + 120, &unk_1EA93C160, &qword_18A6654A8);
    v12 = *(v2 + 144);
    if (v12)
    {
      v13 = __swift_project_boxed_opaque_existential_0((v2 + 120), *(v2 + 144));
      v14 = *(v12 - 8);
      v15 = MEMORY[0x1EEE9AC00](v13);
      v17 = &v19 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v14 + 16))(v17, v15);
      v18 = sub_18A4A86A8();
      (*(v14 + 8))(v17, v12);
      v11 = __swift_destroy_boxed_opaque_existential_0Tm((v2 + 120));
    }

    else
    {
      v18 = 0;
    }

    [*(v2 + 160) _setInternalAppIntentsDataSourcePayloadProvider_];
    swift_unknownObjectRelease();
  }

  sub_188A3F5FC(v2, &unk_1EA93C160, &qword_18A6654A8);
  free(v2);
}

void sub_1890B9A14(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_18917F09C(v2);
  }

  v3 = v2[2];
  v18[0] = (v2 + 4);
  v18[1] = v3;
  v4 = sub_18A4A85F8();
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 4;
      do
      {
        v11 = v2[2 * v9 + 4];
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = v13[3];
          *(v13 + 1) = *v13;
          *v13 = v11;
          v13[1] = v14;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 2;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C320, &unk_18A64D490);
      v7 = sub_18A4A75D8();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = (v7 + 32);
    v16[1] = v6;
    sub_1890C3E0C(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
}

uint64_t sub_1890B9B68(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = result;
  v5 = a4 + 64;
  v6 = -1 << *(a4 + 32);
  v7 = ~v6;
  v8 = -v6;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a4 + 64);
  v35 = a4;
  v36 = a4 + 64;
  v37 = v7;
  v38 = v10;
  v11 = v7;
  if (!a2)
  {
LABEL_13:
    v12 = 0;
    goto LABEL_17;
  }

  v12 = a3;
  if (!a3)
  {
LABEL_17:
    *v4 = a4;
    *(v4 + 8) = v5;
    *(v4 + 16) = v11;
    *(v4 + 32) = v10;
    return v12;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v13 = a2;
    v14 = 1;
    while (1)
    {
      sub_188A813A8(&v21);
      if (!v21)
      {
        sub_188A3F5FC(&v21, &qword_1EA936EE0, &qword_18A651C00);
        a4 = v35;
        v5 = v36;
        v11 = v37;
        v12 = v14 - 1;
        goto LABEL_16;
      }

      v11 = v25;
      v15 = v26;
      v32 = v25;
      v33 = v26;
      v5 = v27;
      v34 = v27;
      v16 = v21;
      v17 = v22;
      v28 = v21;
      v29 = v22;
      v18 = v24;
      v19 = v23;
      v30 = v23;
      v31 = v24;
      *(v13 + 64) = v25;
      *(v13 + 80) = v15;
      *(v13 + 96) = v5;
      *v13 = v16;
      *(v13 + 16) = v17;
      *(v13 + 32) = v19;
      *(v13 + 48) = v18;
      if (v12 == v14)
      {
        break;
      }

      v13 += 104;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_13;
      }
    }

    a4 = v35;
    v5 = v36;
    v11 = v37;
LABEL_16:
    v10 = v38;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

void *sub_1890B9CC0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_1890B9DC0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void sub_1890B9EC0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_18A4A2B48();
  v42 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v41 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v9);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40, v10);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *sub_1890BA164(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (v12 << 9) | (8 * __clz(__rbit64(v9)));
      v18 = *(*(a4 + 56) + v17);
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 48) + v17);
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1890BA2D0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9341F0, &qword_18A64BE28);
  v4 = *(sub_18A4A2B48() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1890BA3E0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 25;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 3);
  return result;
}

void *sub_1890BA45C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C280, &qword_18A64BE68);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *sub_1890BA4EC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934978, &qword_18A64D488);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void sub_1890BA664(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA935770, &qword_18A64F2D0);
  v36 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v38 = &v34 - v6;
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C230, &qword_18A656FC8);
  v37 = v4;
  v8 = sub_18A4A8468();
  v9 = v8;
  if (*(v7 + 16))
  {
    v35 = v2;
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
    v16 = v8 + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + v21);
      v23 = *(v36 + 72);
      v24 = *(v7 + 56) + v23 * v21;
      if (v37)
      {
        sub_188A3F704(v24, v38, &unk_1EA935770, &qword_18A64F2D0);
      }

      else
      {
        sub_188A3F29C(v24, v38, &unk_1EA935770, &qword_18A64F2D0);
      }

      sub_18A4A8888();
      MEMORY[0x18CFE37E0](v22);
      v25 = sub_18A4A88E8();
      v26 = -1 << *(v9 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v16 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v16 + 8 * v28);
          if (v32 != -1)
          {
            v17 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v27) & ~*(v16 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + v17) = v22;
      sub_188A3F704(v38, *(v9 + 56) + v23 * v17, &unk_1EA935770, &qword_18A64F2D0);
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v7 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
}

void sub_1890BAA00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938BD0, &unk_18A657020);
  v31 = v4;
  v6 = sub_18A4A8468();
  v7 = v6;
  if (*(v5 + 16))
  {
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
      if ((v31 & 1) == 0)
      {
      }

      sub_18A4A8888();
      MEMORY[0x18CFE37E0](v20);
      v22 = sub_18A4A88E8();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
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

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1890BACA4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938BE0, &unk_18A657030);
  v6 = sub_18A4A8468();
  v7 = v6;
  if (*(v5 + 16))
  {
    v36 = v2;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v39 = *(v23 + 32);
        v37 = v24;
        v38 = v25;
        v26 = *(*(v5 + 56) + 8 * v22);
      }

      else
      {
        sub_188C46270(v23, &v37);
        v26 = *(*(v5 + 56) + 8 * v22);
      }

      sub_18A4A8888();
      sub_18A4A8038();
      v27 = sub_18A4A88E8();
      v28 = -1 << *(v7 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v37;
      v18 = v38;
      *(v16 + 32) = v39;
      *v16 = v17;
      *(v16 + 16) = v18;
      *(*(v7 + 56) + 8 * v15) = v26;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_1890BAF68(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934E08, &qword_18A64E860);
  v6 = sub_18A4A8468();
  v7 = v6;
  if (*(v5 + 16))
  {
    v37 = v2;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(*(v5 + 48) + 8 * v22);
      v24 = *(v5 + 56) + 40 * v22;
      if (v4)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v40 = *(v24 + 32);
        v38 = v25;
        v39 = v26;
      }

      else
      {
        sub_188C46270(v24, &v38);
        v27 = v23;
      }

      v28 = sub_18A4A7C78();
      v29 = -1 << *(v7 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v23;
      v16 = *(v7 + 56) + 40 * v15;
      v17 = v38;
      v18 = v39;
      *(v16 + 32) = v40;
      *v16 = v17;
      *(v16 + 16) = v18;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v36 = 1 << *(v5 + 32);
      if (v36 >= 64)
      {
        bzero((v5 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v36;
      }

      *(v5 + 16) = 0;
    }

    v3 = v37;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_1890BB1FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C260, &qword_18A64E828);
  v6 = sub_18A4A8468();
  v7 = v6;
  if (*(v5 + 16))
  {
    v36 = v2;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v39 = *(v23 + 32);
        v37 = v24;
        v38 = v25;
        v26 = *(*(v5 + 56) + 8 * v22);
      }

      else
      {
        sub_188C46270(v23, &v37);
        v26 = *(*(v5 + 56) + 8 * v22);
      }

      sub_18A4A8888();
      sub_18A4A8038();
      v27 = sub_18A4A88E8();
      v28 = -1 << *(v7 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v37;
      v18 = v38;
      *(v16 + 32) = v39;
      *v16 = v17;
      *(v16 + 16) = v18;
      *(*(v7 + 56) + 8 * v15) = v26;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_1890BB4C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938D90, &qword_18A657168);
  v6 = sub_18A4A8468();
  v7 = v6;
  if (*(v5 + 16))
  {
    v32 = v4;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + (v20 << 8));
      v45 = v22[12];
      v46 = v22[13];
      *v47 = v22[14];
      *&v47[9] = *(v22 + 233);
      v41 = v22[8];
      v42 = v22[9];
      v43 = v22[10];
      v44 = v22[11];
      v37 = v22[4];
      v38 = v22[5];
      v39 = v22[6];
      v40 = v22[7];
      v33 = *v22;
      v34 = v22[1];
      v35 = v22[2];
      v36 = v22[3];
      sub_18A4A8888();
      MEMORY[0x18CFE37E0](v21);
      v23 = sub_18A4A88E8();
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

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + (v15 << 8));
      v16[12] = v45;
      v16[13] = v46;
      v16[14] = *v47;
      *(v16 + 233) = *&v47[9];
      v16[8] = v41;
      v16[9] = v42;
      v16[10] = v43;
      v16[11] = v44;
      v16[4] = v37;
      v16[5] = v38;
      v16[6] = v39;
      v16[7] = v40;
      *v16 = v33;
      v16[1] = v34;
      v16[2] = v35;
      v16[3] = v36;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
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

LABEL_31:
  *v3 = v7;
}

void sub_1890BB7D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938D88, &qword_18A657160);
  v6 = sub_18A4A8468();
  v7 = v6;
  if (*(v5 + 16))
  {
    v32 = v4;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 216 * v20;
      v43 = *(v22 + 160);
      v44 = *(v22 + 176);
      v45 = *(v22 + 192);
      v46 = *(v22 + 208);
      v39 = *(v22 + 96);
      v40 = *(v22 + 112);
      v41 = *(v22 + 128);
      v42 = *(v22 + 144);
      v35 = *(v22 + 32);
      v36 = *(v22 + 48);
      v37 = *(v22 + 64);
      v38 = *(v22 + 80);
      v33 = *v22;
      v34 = *(v22 + 16);
      sub_18A4A8888();
      MEMORY[0x18CFE37E0](v21);
      v23 = sub_18A4A88E8();
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

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 216 * v15;
      *(v16 + 160) = v43;
      *(v16 + 176) = v44;
      *(v16 + 192) = v45;
      *(v16 + 208) = v46;
      *(v16 + 96) = v39;
      *(v16 + 112) = v40;
      *(v16 + 128) = v41;
      *(v16 + 144) = v42;
      *(v16 + 32) = v35;
      *(v16 + 48) = v36;
      *(v16 + 64) = v37;
      *(v16 + 80) = v38;
      *v16 = v33;
      *(v16 + 16) = v34;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
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

LABEL_31:
  *v3 = v7;
}

void sub_1890BBAE0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938D80, &qword_18A657158);
  v6 = sub_18A4A8468();
  v7 = v6;
  if (*(v5 + 16))
  {
    v32 = v4;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 160 * v20);
      v39 = v22[6];
      v40 = v22[7];
      v41 = v22[8];
      v42 = v22[9];
      v35 = v22[2];
      v36 = v22[3];
      v37 = v22[4];
      v38 = v22[5];
      v33 = *v22;
      v34 = v22[1];
      sub_18A4A8888();
      MEMORY[0x18CFE37E0](v21);
      v23 = sub_18A4A88E8();
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

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 160 * v15);
      v16[6] = v39;
      v16[7] = v40;
      v16[8] = v41;
      v16[9] = v42;
      v16[2] = v35;
      v16[3] = v36;
      v16[4] = v37;
      v16[5] = v38;
      *v16 = v33;
      v16[1] = v34;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
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

LABEL_31:
  *v3 = v7;
}

void sub_1890BBDBC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938E38, &unk_18A657210);
  v6 = sub_18A4A8468();
  v7 = v6;
  if (*(v5 + 16))
  {
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
      v30 = *(*(v5 + 48) + 16 * v19);
      v20 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      sub_18A4A8888();
      MEMORY[0x18CFE37E0](v30);
      v21 = sub_18A4A88E8();
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
      *(*(v7 + 48) + 16 * v15) = v30;
      *(*(v7 + 56) + 8 * v15) = v20;
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

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
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

LABEL_33:
  *v3 = v7;
}

void sub_1890BC04C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938B30, &qword_18A64E740);
  v6 = sub_18A4A8468();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v3;
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
      v21 = *(v5 + 56) + 16 * v19;
      if (v4)
      {
        sub_188E8FC60(v21, v32);
      }

      else
      {
        sub_188F8EA58(v21, v32);
      }

      v22 = sub_18A4A8878();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      sub_188E8FC60(v32, *(v7 + 56) + 16 * v15);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
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
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_1890BC2C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C190, &qword_18A64E718);
  v35 = v4;
  v6 = sub_18A4A8468();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 48) + 16 * v20;
      v22 = *v21;
      v23 = *(v21 + 8);
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
      }

      sub_18A4A8888();
      MEMORY[0x18CFE37E0](v22);
      MEMORY[0x18CFE37E0](v23);
      v25 = sub_18A4A88E8();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 16 * v15;
      *v16 = v22;
      *(v16 + 8) = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1890BC574(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938BB0, &unk_18A657000);
  v50 = v4;
  v6 = sub_18A4A8468();
  v7 = v6;
  v54 = v5;
  if (*(v5 + 16))
  {
    v47 = v2;
    v8 = 0;
    v49 = (v5 + 64);
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v48 = (v9 + 63) >> 6;
    v12 = v6 + 64;
    while (v11)
    {
      v19 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = (*(v54 + 48) + 48 * v22);
      if (v50)
      {
        v24 = *v23;
        v25 = v23[1];
        *(v61 + 9) = *(v23 + 25);
        v60 = v24;
        v61[0] = v25;
        v26 = *(v54 + 56) + 48 * v22;
        v28 = *v26;
        v27 = *(v26 + 8);
        v29 = *(v26 + 16);
        v52 = *(v26 + 32);
        v53 = *(v26 + 24);
        v51 = *(v26 + 40);
      }

      else
      {
        sub_188C46604(v23, &v60);
        v30 = *(v54 + 56) + 48 * v22;
        v28 = *v30;
        v27 = *(v30 + 8);
        v29 = *(v30 + 16);
        v31 = *(v30 + 24);
        v32 = *(v30 + 32);
        v33 = *(v30 + 40);
        sub_188EC22E0(*v30, v27, v29);
        v51 = v33;
        v34 = v33;
        v53 = v31;
        v35 = v31;
        v52 = v32;
        v36 = v32;
      }

      sub_18A4A8888();
      sub_188C46604(&v60, v57);
      if (v59)
      {
        v55[0] = v57[0];
        v55[1] = v57[1];
        v56 = v58;
        MEMORY[0x18CFE37E0](1);
        sub_18A4A8038();
        sub_188BBA15C(v55);
      }

      else
      {
        v37 = *&v57[0];
        MEMORY[0x18CFE37E0](0);
        MEMORY[0x18CFE37E0](v37);
      }

      v38 = sub_18A4A88E8();
      v39 = -1 << *(v7 + 32);
      v40 = v38 & ~v39;
      v41 = v40 >> 6;
      if (((-1 << v40) & ~*(v12 + 8 * (v40 >> 6))) == 0)
      {
        v42 = 0;
        v43 = (63 - v39) >> 6;
        while (++v41 != v43 || (v42 & 1) == 0)
        {
          v44 = v41 == v43;
          if (v41 == v43)
          {
            v41 = 0;
          }

          v42 |= v44;
          v45 = *(v12 + 8 * v41);
          if (v45 != -1)
          {
            v13 = __clz(__rbit64(~v45)) + (v41 << 6);
            goto LABEL_7;
          }
        }

LABEL_40:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v40) & ~*(v12 + 8 * (v40 >> 6)))) | v40 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = 48 * v13;
      v15 = (*(v7 + 48) + v14);
      v16 = v60;
      v17 = v61[0];
      *(v15 + 25) = *(v61 + 9);
      *v15 = v16;
      v15[1] = v17;
      v18 = *(v7 + 56) + v14;
      *v18 = v28;
      *(v18 + 8) = v27;
      *(v18 + 16) = v29;
      *(v18 + 24) = v53;
      *(v18 + 32) = v52;
      *(v18 + 40) = v51;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_40;
      }

      if (v8 >= v48)
      {
        break;
      }

      v21 = v49[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v11 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v50 & 1) == 0)
    {

      v3 = v47;
      goto LABEL_38;
    }

    v46 = 1 << *(v54 + 32);
    v3 = v47;
    if (v46 >= 64)
    {
      bzero(v49, ((v46 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v49 = -1 << v46;
    }

    *(v54 + 16) = 0;
  }

LABEL_38:
  *v3 = v7;
}

void sub_1890BC958(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for UITextEffectView.EffectID(0);
  v36 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934E68, &qword_18A64E900);
  v37 = v4;
  v9 = sub_18A4A8468();
  v10 = v9;
  if (*(v8 + 16))
  {
    v34 = v2;
    v35 = v8;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = v9 + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(v36 + 72);
      v24 = *(v8 + 48) + v23 * v22;
      if (v37)
      {
        sub_1890C8504(v24, v7, type metadata accessor for UITextEffectView.EffectID);
        sub_188A5EBAC((*(v8 + 56) + 40 * v22), v38);
      }

      else
      {
        sub_1890C849C(v24, v7, type metadata accessor for UITextEffectView.EffectID);
        sub_188A53994(*(v8 + 56) + 40 * v22, v38);
      }

      sub_18A4A8888();
      sub_18A4A29D8();
      sub_1890C8578(&qword_1ED48CEF0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_18A4A71A8();
      v25 = sub_18A4A88E8();
      v26 = -1 << *(v10 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v8 = v35;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v8 = v35;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      sub_1890C8504(v7, *(v10 + 48) + v23 * v18, type metadata accessor for UITextEffectView.EffectID);
      sub_188A5EBAC(v38, *(v10 + 56) + 40 * v18);
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v8 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
}

void sub_1890BCD54(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = sub_18A4A8468();
  v9 = v8;
  if (*(v7 + 16))
  {
    v34 = v4;
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
    v16 = v8 + 64;
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
        v24 = v22;
      }

      v25 = sub_18A4A7C78();
      v26 = -1 << *(v9 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v16 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v16 + 8 * v28);
          if (v32 != -1)
          {
            v17 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v27) & ~*(v16 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
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

      v5 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v7 + 32);
    v5 = v34;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
}

void sub_1890BCFE4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = sub_18A4A8468();
  v9 = v8;
  if (*(v7 + 16))
  {
    v34 = v4;
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
    v16 = v8 + 64;
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
        v24 = v22;
      }

      v25 = sub_18A4A7C78();
      v26 = -1 << *(v9 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v16 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v16 + 8 * v28);
          if (v32 != -1)
          {
            v17 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v27) & ~*(v16 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
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

      v5 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v7 + 32);
    v5 = v34;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
}

void sub_1890BD260(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C2A0, &qword_18A64EA70);
  v6 = sub_18A4A8468();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v3;
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
      }

      v22 = sub_18A4A8878();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
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

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1890BD4E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938D60, &qword_18A64E970);
  v6 = sub_18A4A8468();
  v7 = v6;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = 8 * (v17 | (v8 << 6));
      v21 = *(*(v5 + 48) + v20);
      v22 = *(v5 + 56) + v20;
      if (v4)
      {
        sub_188E904EC(v22, v33);
      }

      else
      {
        sub_188F48C58(v22, v33);
      }

      v23 = sub_18A4A8878();
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

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 8 * v15;
      *(*(v7 + 48) + v16) = v21;
      sub_188E904EC(v33, *(v7 + 56) + v16);
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v31 = 1 << *(v5 + 32);
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

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_1890BD778(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938B50, &unk_18A656FB0);
  v36 = v4;
  v6 = sub_18A4A8468();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v5;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = (*(v5 + 48) + 32 * v20);
      v23 = v22[1];
      v38 = *v22;
      v24 = v22[3];
      v37 = v22[2];
      v25 = *(v21 + 8 * v20);
      if ((v36 & 1) == 0)
      {
      }

      sub_18A4A8888();
      sub_18A4A7348();
      sub_18A4A7348();
      v26 = sub_18A4A88E8();
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 32 * v15);
      *v16 = v38;
      v16[1] = v23;
      v16[2] = v37;
      v16[3] = v24;
      *(*(v7 + 56) + 8 * v15) = v25;
      ++*(v7 + 16);
      v5 = v35;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1890BDA48(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938E30, &qword_18A64E958);
  v32 = v4;
  v6 = sub_18A4A8468();
  v7 = v6;
  if (*(v5 + 16))
  {
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
      if ((v32 & 1) == 0)
      {
        v22 = v21;
      }

      sub_18A4A8888();
      MEMORY[0x18CFE3810](v20);
      v23 = sub_18A4A88E8();
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

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
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

void sub_1890BDCD4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v10 = a2;
  v11 = *v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v39 = v10;
  v12 = sub_18A4A8468();
  v13 = v12;
  if (*(v11 + 16))
  {
    v38 = v9;
    v14 = 0;
    v15 = (v11 + 64);
    v16 = 1 << *(v11 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v11 + 64);
    v19 = (v16 + 63) >> 6;
    v20 = v12 + 64;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = 8 * (v23 | (v14 << 6));
      v27 = *(v11 + 56);
      v28 = *(*(v11 + 48) + v26);
      if (v39)
      {
        sub_188A3F704(v27 + v26, v40, a5, a6);
      }

      else
      {
        sub_188A3F29C(v27 + v26, v40, a5, a6);
      }

      v29 = sub_18A4A8878();
      v30 = -1 << *(v13 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v20 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v20 + 8 * v32);
          if (v36 != -1)
          {
            v21 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v21 = __clz(__rbit64((-1 << v31) & ~*(v20 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v22 = 8 * v21;
      *(*(v13 + 48) + v22) = v28;
      sub_188A3F704(v40, *(v13 + 56) + v22, a5, a6);
      ++*(v13 + 16);
    }

    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v14 >= v19)
      {
        break;
      }

      v25 = v15[v14];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v9 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v11 + 32);
    v9 = v38;
    if (v37 >= 64)
    {
      bzero((v11 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_34:
  *v9 = v13;
}

void sub_1890BDF88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938E20, &qword_18A64EAB8);
  v6 = sub_18A4A8468();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v3;
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
      v21 = (*(v5 + 56) + 32 * v19);
      if (v4)
      {
        sub_188A55538(v21, v32);
      }

      else
      {
        sub_188A55598(v21, v32);
      }

      v22 = sub_18A4A8878();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      sub_188A55538(v32, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
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
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_1890BE228(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934E80, &unk_18A657120);
  v35 = v4;
  v6 = sub_18A4A8468();
  v7 = v6;
  if (*(v5 + 16))
  {
    v33 = v2;
    v34 = v5;
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
      v36 = (v12 - 1) & v12;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = *(v20 + 8 * v19);
      if ((v35 & 1) == 0)
      {
        v23 = v21;
      }

      sub_18A4A7288();
      sub_18A4A8888();
      sub_18A4A7348();
      v24 = sub_18A4A88E8();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
      v5 = v34;
      v12 = v36;
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
        v36 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}