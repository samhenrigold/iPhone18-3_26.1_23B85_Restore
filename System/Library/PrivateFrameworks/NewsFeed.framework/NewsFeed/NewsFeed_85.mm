uint64_t sub_1D62D5F0C()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_1D62D64A4;
  }

  else
  {
    v2 = sub_1D62D6020;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D62D6020()
{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 152);
  v5 = *(v0 + 136);
  v4 = *(v0 + 144);
  v6 = *(v0 + 120);
  v7 = *(v0 + 128);
  v9 = *(v0 + 104);
  v8 = *(v0 + 112);
  v24 = v8[5];
  v25 = *(v0 + 160);
  v22 = v8[6];
  __swift_project_boxed_opaque_existential_1(v8 + 2, v24);
  sub_1D725894C();
  v23 = sub_1D725893C();
  v11 = v10;
  *(v0 + 200) = v10;
  (*(v7 + 8))(v5, v6);
  (*(v3 + 16))(v2, v1, v4);
  *(v0 + 16) = *v9;
  *(v0 + 32) = *(v9 + 16);
  *(v0 + 80) = *(v9 + 32);
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = swift_allocObject();
  *(v0 + 208) = v13;
  (*(v3 + 32))(v13 + v12, v2, v4);
  v14 = v13 + ((v25 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
  v15 = *(v9 + 32);
  v16 = *(v9 + 16);
  *v14 = *v9;
  *(v14 + 16) = v16;
  *(v14 + 32) = v15;
  v17 = *(v22 + 8);
  sub_1D5E422A8(v0 + 16, v0 + 48);
  sub_1D5E422A8(v0 + 32, v0 + 64);
  sub_1D62D75AC(v0 + 80, v0 + 88);
  v21 = (v17 + *v17);
  v18 = swift_task_alloc();
  *(v0 + 216) = v18;
  *v18 = v0;
  v18[1] = sub_1D62D62A4;
  v19 = *(v0 + 96);

  return (v21)(v19, v23, v11, sub_1D62D7510, v13, v24, v22);
}

uint64_t sub_1D62D62A4()
{
  *(*v1 + 224) = v0;

  if (v0)
  {

    v2 = sub_1D62D6524;
  }

  else
  {

    v2 = sub_1D62D6408;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D62D6408()
{
  (*(v0[19] + 8))(v0[22], v0[18]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D62D64A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D62D6524()
{
  (*(v0[19] + 8))(v0[22], v0[18]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D62D65BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D62D65E0, 0, 0);
}

uint64_t sub_1D62D65E0()
{
  v1 = v0[4];
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  if (v3 == sub_1D726207C() && v2 == v4)
  {
  }

  else
  {
    v6 = sub_1D72646CC();

    if ((v6 & 1) == 0)
    {
      v7 = v0[5];
      v8 = v7[10];
      v9 = v7[11];
      __swift_project_boxed_opaque_existential_1(v7 + 7, v8);
      v0[6] = (*(v9 + 8))(v3, v2, v8, v9);
      v10 = swift_task_alloc();
      v0[7] = v10;
      *v10 = v0;
      v10[1] = sub_1D62D67A4;

      return MEMORY[0x1EEE44EE0](v0 + 2);
    }
  }

  v11 = v0[3];
  v12 = *MEMORY[0x1E69B4088];
  v13 = sub_1D72607EC();
  (*(*(v13 - 8) + 104))(v11, v12, v13);
  v14 = v0[1];

  return v14();
}

uint64_t sub_1D62D67A4()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1D5E792F8;
  }

  else
  {

    v2 = sub_1D62D68C0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D62D68C0()
{
  v1 = v0[3];
  *v1 = v0[2];
  v2 = *MEMORY[0x1E69B4080];
  v3 = sub_1D72607EC();
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  v4 = v0[1];

  return v4();
}

uint64_t sub_1D62D696C(void *a1, uint64_t a2, uint64_t a3)
{
  v37 = a3;
  v35 = a2;
  v36 = sub_1D7260BFC();
  v34 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v4);
  v31 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D72607EC();
  v29 = *(v6 - 8);
  v30 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v28 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D726080C();
  v10 = *(v9 - 8);
  v32 = v9;
  v33 = v10;
  MEMORY[0x1EEE9AC00](v9, v11);
  v27 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D726068C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D72606AC();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  (*(v14 + 104))(v17, *MEMORY[0x1E69B4010], v13);
  sub_1D726069C();
  sub_1D62D7610(&qword_1EDF3AA20, MEMORY[0x1E69B4028], MEMORY[0x1E69B4020]);
  sub_1D72609FC();
  (*(v19 + 8))(v22, v18);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  (*(v29 + 16))(v28, v35, v30);
  (*(v34 + 104))(v31, *MEMORY[0x1E69B4308], v36);

  v23 = v27;
  sub_1D72607FC();
  sub_1D62D7610(&qword_1EDF168B8, MEMORY[0x1E69B40A0], MEMORY[0x1E69B4098]);
  v24 = v32;
  sub_1D72609FC();
  return (*(v33 + 8))(v23, v24);
}

uint64_t sub_1D62D6DBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v35 = sub_1D725ABEC();
  v33 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v3);
  v36 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72608BC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v29 - v12;
  sub_1D62D74AC(0, &unk_1EDF43A30, MEMORY[0x1E69B40B8], MEMORY[0x1E69D6C08]);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v32 = &v29 - v17;
  v18 = *(v6 + 16);
  v18(v13, a1, v5, v16);
  (v18)(v9, v13, v5);
  v19 = sub_1D726084C();
  v29 = v20;
  v30 = v19;
  v21 = sub_1D726087C();
  v23 = v22;
  v24 = sub_1D72608AC();
  v25 = *(v6 + 8);
  v34 = v6 + 8;
  v31 = v25;
  v25(v9, v5);
  v38 = v30;
  v39 = v29;
  v40 = v21;
  v41 = v23;
  v42 = v24;
  v30 = v13;
  (v18)(v9, v13, v5);
  if (qword_1EDF17DA0 != -1)
  {
    swift_once();
  }

  v26 = v35;
  v27 = __swift_project_value_buffer(v35, qword_1EDF17DA8);
  (*(v33 + 16))(v36, v27, v26);
  sub_1D62D713C();

  sub_1D725BF4C();
  v31(v30, v5);
  return sub_1D725A9AC();
}

uint64_t sub_1D62D713C()
{
  v1 = v0[1];
  v23 = *v0;
  v22 = v1;
  v17 = v23;
  v18 = v1;
  v21 = *(v0 + 4);
  v16[2] = v21;
  sub_1D5E422A8(&v23, v16);
  sub_1D5E422A8(&v22, v16);
  sub_1D62D75AC(&v21, v16);
  sub_1D5BBE0A8();
  sub_1D62D7610(&qword_1EDF3C840, sub_1D5BBE0A8, MEMORY[0x1E69E6310]);
  v2 = sub_1D7261F3C();
  v4 = v3;
  sub_1D62D7658(&v21);
  v19 = v2;
  v20 = v4;
  v16[0] = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 3, 0);
  v5 = v16[0];
  v6 = v17;
  v8 = *(v16[0] + 16);
  v7 = *(v16[0] + 24);
  v9 = v8 + 1;

  if (v8 >= v7 >> 1)
  {
    sub_1D5BFC364((v7 > 1), v8 + 1, 1);
    v5 = v16[0];
  }

  *(v5 + 16) = v9;
  *(v5 + 16 * v8 + 32) = v6;
  v10 = *(v5 + 24);
  v11 = v8 + 2;

  if (v9 >= v10 >> 1)
  {
    sub_1D5BFC364((v10 > 1), v8 + 2, 1);
    v5 = v16[0];
  }

  *(v5 + 16) = v11;
  *(v5 + 16 * v9 + 32) = v22;
  v12 = *(v5 + 24);

  if ((v8 + 3) > (v12 >> 1))
  {
    sub_1D5BFC364((v12 > 1), v8 + 3, 1);
    v5 = v16[0];
  }

  *(v5 + 16) = v8 + 3;
  v13 = v5 + 16 * v11;
  *(v13 + 32) = v2;
  *(v13 + 40) = v4;
  swift_arrayDestroy();
  v16[0] = v5;
  v14 = sub_1D7261F3C();

  return v14;
}

uint64_t sub_1D62D7398(uint64_t a1)
{
  v4 = *(v1 + 56);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D5B64684;

  return sub_1D62D5D88(a1, v1 + 16, v4);
}

void sub_1D62D74AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D62D7510(void *a1)
{
  v3 = *(sub_1D72607EC() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_1D62D696C(a1, v1 + v4, v5);
}

uint64_t sub_1D62D75AC(uint64_t a1, uint64_t a2)
{
  sub_1D5BBE0A8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D62D7610(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D62D7658(uint64_t a1)
{
  sub_1D5BBE0A8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for DebugFormatWorkspace(uint64_t a1)
{
  result = qword_1EC8857B8;
  if (!qword_1EC8857B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D62D7738(uint64_t a1)
{
  type metadata accessor for DebugFormatWorkspaceKind(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for FeedContext(319);
    if (v2 <= 0x3F)
    {
      sub_1D62D786C();
      if (v3 <= 0x3F)
      {
        sub_1D62DBE68(319, &qword_1EC8857D0, type metadata accessor for DebugFormatPackageInventory, MEMORY[0x1E69E62F8]);
        if (v4 <= 0x3F)
        {
          sub_1D62DBE68(319, &qword_1EC8857D8, type metadata accessor for DebugFormatWorkspaceGroup, MEMORY[0x1E69E62F8]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1D62D786C()
{
  if (!qword_1EDF34BC0[0])
  {
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, qword_1EDF34BC0);
    }
  }
}

id sub_1D62D78BC(uint64_t a1)
{
  v3 = v1[9];
  v2 = v1[10];
  if (v1[11])
  {
    v4 = *(a1 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_cloudContext);

    v5 = [v4 tagController];

    v6 = sub_1D726203C();

    v7 = [v5 slowCachedTagForID_];

    if (v7)
    {
      v8 = swift_allocObject();
      *(v8 + 16) = v7;
      v9 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v26[4] = sub_1D62D8018;
      v26[5] = v8;
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 1107296256;
      v26[2] = sub_1D6E0CD34;
      v26[3] = &block_descriptor_33;
      v10 = _Block_copy(v26);
      swift_unknownObjectRetain();
      v11 = [v9 initWithDynamicProvider_];
      swift_unknownObjectRelease();

      _Block_release(v10);

      return v11;
    }

    else
    {

      v15._countAndFlagsBits = v3;
      v15._object = v2;
      FeedKind.init(rawValue:)(v15);
      v16 = objc_opt_self();
      if (LOBYTE(v26[0]) == 28 || LOBYTE(v26[0]) == 27)
      {
        v22 = [v16 systemBackgroundColor];
      }

      else
      {
        v23 = v16;
        v24 = [v16 secondarySystemBackgroundColor];
        v25 = [v23 systemBackgroundColor];
        v22 = [v23 ts:v24 dynamicColor:v25 withDarkStyleVariant:?];
      }

      return v22;
    }
  }

  else
  {

    v13._countAndFlagsBits = v3;
    v13._object = v2;
    FeedKind.init(rawValue:)(v13);
    v14 = objc_opt_self();
    if (LOBYTE(v26[0]) == 28 || LOBYTE(v26[0]) == 27)
    {
      v17 = [v14 systemBackgroundColor];

      return v17;
    }

    else
    {
      v18 = v14;
      v19 = [v14 secondarySystemBackgroundColor];
      v20 = [v18 systemBackgroundColor];
      v21 = [v18 ts:v19 dynamicColor:v20 withDarkStyleVariant:?];

      return v21;
    }
  }
}

uint64_t sub_1D62D7C2C()
{
  v1 = type metadata accessor for DebugFormatWorkspaceKind(0);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D62DAA70(v0, v4, type metadata accessor for DebugFormatWorkspaceKind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload < 2)
  {
    sub_1D62DAA14(v4);
    if (*(v0 + *(type metadata accessor for DebugFormatWorkspace(0) + 20) + 48) == 1)
    {
      v14 = &unk_1F50FBD80;
    }

    else
    {
      v14 = &unk_1F50FBDA8;
    }
  }

  else if (EnumCaseMultiPayload - 3 >= 2)
  {
    v16 = v0 + *(type metadata accessor for DebugFormatWorkspace(0) + 28);
    v17 = *(v16 + 208);
    v36 = *(v16 + 192);
    v37 = v17;
    v38 = *(v16 + 224);
    v39 = *(v16 + 240);
    v18 = *(v16 + 144);
    v32 = *(v16 + 128);
    v33 = v18;
    v19 = *(v16 + 176);
    v34 = *(v16 + 160);
    v35 = v19;
    v20 = *(v16 + 80);
    v28 = *(v16 + 64);
    v29 = v20;
    v21 = *(v16 + 112);
    v30 = *(v16 + 96);
    v31 = v21;
    v22 = *(v16 + 48);
    v26 = *(v16 + 32);
    v27 = v22;
    v23 = *(v16 + 16);
    v24 = *v16;
    v25 = v23;
    if (sub_1D5DEA380(&v24) == 1)
    {
      v14 = &unk_1F50FBD08;
    }

    else
    {
      v14 = &unk_1F50FBD30;
    }
  }

  else
  {
    v6 = v0 + *(type metadata accessor for DebugFormatWorkspace(0) + 28);
    v7 = *(v6 + 208);
    v36 = *(v6 + 192);
    v37 = v7;
    v38 = *(v6 + 224);
    v39 = *(v6 + 240);
    v8 = *(v6 + 144);
    v32 = *(v6 + 128);
    v33 = v8;
    v9 = *(v6 + 176);
    v34 = *(v6 + 160);
    v35 = v9;
    v10 = *(v6 + 80);
    v28 = *(v6 + 64);
    v29 = v10;
    v11 = *(v6 + 112);
    v30 = *(v6 + 96);
    v31 = v11;
    v12 = *(v6 + 48);
    v26 = *(v6 + 32);
    v27 = v12;
    v13 = *(v6 + 16);
    v24 = *v6;
    v25 = v13;
    if (sub_1D5DEA380(&v24) != 1)
    {
      return MEMORY[0x1E69E7CD0];
    }

    v14 = &unk_1F50FBD58;
  }

  return sub_1D5E28560(v14);
}

uint64_t sub_1D62D7E20(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 20));

  return v2;
}

id sub_1D62D7E58(void *a1, void *a2)
{
  v3 = [a1 userInterfaceStyle];
  v4 = [a2 theme];
  if (v3 != 2)
  {
    if (v4)
    {
      v5 = [v4 feedBackgroundColor];
      swift_unknownObjectRelease();
      if (v5)
      {
        goto LABEL_7;
      }
    }

LABEL_8:
    v7 = objc_opt_self();
    v8 = [v7 secondarySystemBackgroundColor];
    v5 = [v7 systemBackgroundColor];
    v6 = [v7 ts:v8 dynamicColor:v5 withDarkStyleVariant:?];

    goto LABEL_9;
  }

  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = [v4 darkStyleFeedBackgroundColor];
  swift_unknownObjectRelease();
  if (!v5)
  {
    goto LABEL_8;
  }

LABEL_7:
  v6 = [v5 ne_color];
LABEL_9:

  return v6;
}

uint64_t sub_1D62D8020(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D62D8040, 0, 0);
}

uint64_t sub_1D62D8040()
{
  v1 = v0[11];
  if (*(*(v1 + *(type metadata accessor for DebugFormatWorkspace(0) + 36)) + 16))
  {
    type metadata accessor for DebugFormatWorkspaceGroup(0);

    sub_1D725B77C();

    v2 = v0[7];
    v0[12] = v2;
    v3 = swift_task_alloc();
    v0[13] = v3;
    v4 = type metadata accessor for DebugFormatBindingResult(0);
    v5 = sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
    *v3 = v0;
    v3[1] = sub_1D62D81E4;
    v6 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA10](v0 + 8, v2, v4, v5, v6);
  }

  else
  {
    v7 = v0[10];
    *v7 = 0;
    v7[1] = 0;
    *(v0[10] + 16) = -1;
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1D62D81E4()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1D62D8464;
  }

  else
  {
    v2 = sub_1D62D8314;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D62D8314()
{
  v1 = *(v0[8] + OBJC_IVAR____TtC8NewsFeed24DebugFormatBindingResult_bindings + 64);
  v2 = *(v1 + 16);

  if (v2 && (v3 = sub_1D5B69D90(0x6373654464656546, 0xEE00726F74706972), (v4 & 1) != 0))
  {
    sub_1D5B68374(*(v1 + 56) + 40 * v3, (v0 + 2));
    sub_1D5B49474(0, qword_1EDF431A0, &protocol descriptor for FeedGroupItemType);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v0[9] = 0;
    }

    v5 = v0[9];
    if (v5)
    {
      v6 = 0;
      v7 = v0[10];
      *v7 = v5;
      v7[1] = 0;
      goto LABEL_9;
    }
  }

  else
  {
  }

  v8 = v0[10];
  *v8 = 0;
  v8[1] = 0;
  v6 = -1;
LABEL_9:
  *(v0[10] + 16) = v6;
  v9 = v0[1];

  return v9();
}

uint64_t sub_1D62D847C(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D62D849C, 0, 0);
}

uint64_t sub_1D62D849C()
{
  v1 = v0[11];
  if (*(*(v1 + *(type metadata accessor for DebugFormatWorkspace(0) + 36)) + 16))
  {
    type metadata accessor for DebugFormatWorkspaceGroup(0);

    sub_1D725B77C();

    v2 = v0[7];
    v0[12] = v2;
    v3 = swift_task_alloc();
    v0[13] = v3;
    v4 = type metadata accessor for DebugFormatBindingResult(0);
    v5 = sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
    *v3 = v0;
    v3[1] = sub_1D62D8640;
    v6 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA10](v0 + 8, v2, v4, v5, v6);
  }

  else
  {
    v7 = v0[10];
    *v7 = 0;
    v7[1] = 0;
    *(v0[10] + 16) = -1;
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1D62D8640()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1D62D8998;
  }

  else
  {
    v2 = sub_1D62D8774;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D62D8774()
{
  v1 = *(*(v0 + 64) + OBJC_IVAR____TtC8NewsFeed24DebugFormatBindingResult_bindings + 64);
  v2 = *(v1 + 16);

  if (!v2 || (v3 = sub_1D5B69D90(0x6373654464656546, 0xEE00726F74706972), (v4 & 1) == 0))
  {

LABEL_9:

    v9 = *(v0 + 80);
    *v9 = 0;
    v9[1] = 0;
    v8 = -1;
    goto LABEL_10;
  }

  sub_1D5B68374(*(v1 + 56) + 40 * v3, v0 + 16);
  sub_1D5B49474(0, qword_1EDF431A0, &protocol descriptor for FeedGroupItemType);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 72) = 0;
  }

  v5 = *(v0 + 72);
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = [objc_msgSend(*(v0 + 72) backingTag)];
  swift_unknownObjectRelease();
  if (v6)
  {
    v7 = *(v0 + 80);

    *v7 = v5;
    v7[1] = v6;
    v8 = 1;
LABEL_10:
    *(*(v0 + 80) + 16) = v8;
    v10 = *(v0 + 8);
    goto LABEL_11;
  }

  type metadata accessor for FormatLayoutError(0);
  sub_1D5B57390(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  v10 = *(v0 + 8);
LABEL_11:

  return v10();
}

void sub_1D62D89B0(_BYTE *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = type metadata accessor for DebugFormatWorkspace(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  if (v13 > 2)
  {
    if (v13 == 3)
    {
      if (*(a2 + *(v11 + 20) + 152))
      {
        sub_1D62DAA70(a2, &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DebugFormatWorkspace);
        v43 = (*(v8 + 80) + 16) & ~*(v8 + 80);
        v15 = swift_allocObject();
        sub_1D62DBECC(v12, v15 + v43, type metadata accessor for DebugFormatWorkspace);
        v16 = &unk_1D72B6608;
        goto LABEL_16;
      }
    }

    else if (v13 == 4)
    {
      v17 = (a2 + *(v11 + 28));
      v18 = v17[13];
      v19 = v17[11];
      v65 = v17[12];
      v66 = v18;
      v20 = v17[13];
      v67 = v17[14];
      v21 = v17[9];
      v22 = v17[7];
      v61 = v17[8];
      v62 = v21;
      v23 = v17[9];
      v24 = v17[11];
      v63 = v17[10];
      v64 = v24;
      v25 = v17[5];
      v26 = v17[3];
      v57 = v17[4];
      v58 = v25;
      v27 = v17[5];
      v28 = v17[7];
      v59 = v17[6];
      v60 = v28;
      v29 = v17[1];
      v53 = *v17;
      v54 = v29;
      v30 = v17[3];
      v32 = *v17;
      v31 = v17[1];
      v55 = v17[2];
      v56 = v30;
      v81 = v65;
      v82 = v20;
      v83 = v17[14];
      v77 = v61;
      v78 = v23;
      v79 = v63;
      v80 = v19;
      v73 = v57;
      v74 = v27;
      v75 = v59;
      v76 = v22;
      v69 = v32;
      v70 = v31;
      v68 = *(v17 + 30);
      v84 = *(v17 + 30);
      v71 = v55;
      v72 = v26;
      if (sub_1D5DEA380(&v69) != 1)
      {
        v33 = swift_allocObject();
        v34 = v82;
        *(v33 + 208) = v81;
        *(v33 + 224) = v34;
        *(v33 + 240) = v83;
        *(v33 + 256) = v84;
        v35 = v78;
        *(v33 + 144) = v77;
        *(v33 + 160) = v35;
        v36 = v80;
        *(v33 + 176) = v79;
        *(v33 + 192) = v36;
        v37 = v74;
        *(v33 + 80) = v73;
        *(v33 + 96) = v37;
        v38 = v76;
        *(v33 + 112) = v75;
        *(v33 + 128) = v38;
        v39 = v70;
        *(v33 + 16) = v69;
        *(v33 + 32) = v39;
        v40 = v72;
        *(v33 + 48) = v71;
        *(v33 + 64) = v40;
        v41 = swift_allocObject();
        *(v41 + 16) = &unk_1D72B65E8;
        *(v41 + 24) = v33;
        *a3 = &unk_1D72B65F8;
        a3[1] = v41;
        v51[12] = v65;
        v51[13] = v66;
        v51[14] = v67;
        v52 = v68;
        v51[8] = v61;
        v51[9] = v62;
        v51[10] = v63;
        v51[11] = v64;
        v51[4] = v57;
        v51[5] = v58;
        v51[6] = v59;
        v51[7] = v60;
        v51[0] = v53;
        v51[1] = v54;
        v51[2] = v55;
        v51[3] = v56;
        sub_1D62DAD08(v51, &v50);
        return;
      }
    }

    else if (*(a2 + *(v11 + 20) + 88))
    {
      v85 = v3;
      v45 = objc_opt_self();

      v46 = sub_1D726203C();

      LODWORD(v45) = [v45 isSportsEventIdentifier_];

      if (v45)
      {
        sub_1D62DAA70(a2, &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DebugFormatWorkspace);
        v47 = (*(v8 + 80) + 16) & ~*(v8 + 80);
        v48 = swift_allocObject();
        sub_1D62DBECC(&v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v48 + v47, type metadata accessor for DebugFormatWorkspace);
        *a3 = &unk_1D72B65D8;
        a3[1] = v48;
        return;
      }
    }
  }

  else if (*a1)
  {
    if (v13 == 1)
    {
      if (*(a2 + *(v11 + 20) + 136))
      {
        sub_1D62DAA70(a2, &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DebugFormatWorkspace);
        v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
        v15 = swift_allocObject();
        sub_1D62DBECC(v12, v15 + v14, type metadata accessor for DebugFormatWorkspace);
        v16 = &unk_1D72B6628;
LABEL_16:
        *a3 = v16;
        a3[1] = v15;
        return;
      }
    }

    else if (*(a2 + *(v11 + 20) + 120))
    {
      sub_1D62DAA70(a2, &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DebugFormatWorkspace);
      v44 = (*(v8 + 80) + 16) & ~*(v8 + 80);
      v15 = swift_allocObject();
      sub_1D62DBECC(v12, v15 + v44, type metadata accessor for DebugFormatWorkspace);
      v16 = &unk_1D72B6618;
      goto LABEL_16;
    }
  }

  else if (*(a2 + *(v11 + 20) + 104))
  {
    sub_1D62DAA70(a2, &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DebugFormatWorkspace);
    v42 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v15 = swift_allocObject();
    sub_1D62DBECC(v12, v15 + v42, type metadata accessor for DebugFormatWorkspace);
    v16 = &unk_1D72B6638;
    goto LABEL_16;
  }

  *a3 = 0;
  a3[1] = 0;
}

uint64_t sub_1D62D8F58(uint64_t a1, uint64_t a2)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D62D8F78, 0, 0);
}

uint64_t sub_1D62D8F78()
{
  v1 = v0[13];
  if (*(*(v1 + *(type metadata accessor for DebugFormatWorkspace(0) + 36)) + 16))
  {
    type metadata accessor for DebugFormatWorkspaceGroup(0);

    sub_1D725B77C();

    v2 = v0[10];
    v0[14] = v2;
    v3 = swift_task_alloc();
    v0[15] = v3;
    v4 = type metadata accessor for DebugFormatBindingResult(0);
    v5 = sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
    *v3 = v0;
    v3[1] = sub_1D62D9118;
    v6 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA10](v0 + 11, v2, v4, v5, v6);
  }

  else
  {
    v7 = v0[12];
    *(v7 + 32) = 0;
    *v7 = 0u;
    *(v7 + 16) = 0u;
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1D62D9118()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1D62D9454;
  }

  else
  {
    v2 = sub_1D62D9248;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D62D9248()
{
  v1 = *(*(v0 + 88) + OBJC_IVAR____TtC8NewsFeed24DebugFormatBindingResult_bindings + 64);
  v2 = *(v1 + 16);

  if (v2 && (v3 = sub_1D5B69D90(0x756F724764656546, 0xEC00000067615470), (v4 & 1) != 0))
  {
    sub_1D5B68374(*(v1 + 56) + 40 * v3, v0 + 16);
    sub_1D5B49474(0, qword_1EDF431A0, &protocol descriptor for FeedGroupItemType);
    if ((swift_dynamicCast() & 1) == 0)
    {
      *(v0 + 56) = 0;
      *(v0 + 64) = 0;
      *(v0 + 72) = 0;
    }

    v5 = *(v0 + 56);
    if (v5)
    {
      v6 = *(v0 + 64);
      v7 = *(v0 + 96);
      v7[3] = &type metadata for FeedTag;
      v7[4] = sub_1D5EE5BA8();
      v8 = swift_allocObject();
      *v7 = v8;
      v9 = [swift_unknownObjectRetain() identifier];
      v10 = sub_1D726207C();
      v12 = v11;

      *(v8 + 96) = xmmword_1D7279980;
      *(v8 + 112) = 0u;
      *(v8 + 128) = 0u;
      *(v8 + 144) = 0u;
      *(v8 + 160) = 0;
      sub_1D5F587AC(v5, v6);

      *(v8 + 16) = v10;
      *(v8 + 24) = v12;
      *(v8 + 32) = v5;
      *(v8 + 40) = 0;
      *(v8 + 64) = 0;
      *(v8 + 72) = 0xE000000000000000;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      v13 = MEMORY[0x1E69E7CD0];
      *(v8 + 80) = 0;
      *(v8 + 88) = v13;
      goto LABEL_9;
    }
  }

  else
  {
  }

  v14 = *(v0 + 96);
  *(v14 + 32) = 0;
  *v14 = 0u;
  *(v14 + 16) = 0u;
LABEL_9:
  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1D62D946C(uint64_t a1, uint64_t a2)
{
  *(v2 + 656) = a2;
  *(v2 + 648) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D62D9490, 0, 0);
}

uint64_t sub_1D62D9490()
{
  v1 = v0[82];
  if (*(*(v1 + *(type metadata accessor for DebugFormatWorkspace(0) + 36)) + 16))
  {
    type metadata accessor for DebugFormatWorkspaceGroup(0);

    sub_1D725B77C();

    v2 = v0[79];
    v0[83] = v2;
    v3 = swift_task_alloc();
    v0[84] = v3;
    v4 = type metadata accessor for DebugFormatBindingResult(0);
    v5 = sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
    *v3 = v0;
    v3[1] = sub_1D62D9630;
    v6 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA10](v0 + 80, v2, v4, v5, v6);
  }

  else
  {
    v7 = v0[81];
    *(v7 + 32) = 0;
    *v7 = 0u;
    *(v7 + 16) = 0u;
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1D62D9630()
{
  *(*v1 + 680) = v0;

  if (v0)
  {
    v2 = sub_1D62D9964;
  }

  else
  {
    v2 = sub_1D62D9760;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D62D9760()
{
  v1 = (v0 + 304);
  v2 = *(*(v0 + 640) + OBJC_IVAR____TtC8NewsFeed24DebugFormatBindingResult_bindings + 64);
  v3 = *(v2 + 16);

  if (v3 && (v4 = sub_1D5B69D90(0x7573734964656546, 0xE900000000000065), (v5 & 1) != 0))
  {
    sub_1D5B68374(*(v2 + 56) + 40 * v4, v0 + 592);
    sub_1D5B49474(0, qword_1EDF431A0, &protocol descriptor for FeedGroupItemType);
    if (swift_dynamicCast())
    {
      nullsub_1();
      goto LABEL_7;
    }

    v6 = (v0 + 448);
  }

  else
  {
    v6 = (v0 + 160);
  }

  sub_1D5D62850(v6);
  v7 = v6[7];
  *(v0 + 112) = v6[6];
  *(v0 + 128) = v7;
  *(v0 + 137) = *(v6 + 121);
  v8 = v6[3];
  *(v0 + 48) = v6[2];
  *(v0 + 64) = v8;
  v9 = v6[5];
  *(v0 + 80) = v6[4];
  *(v0 + 96) = v9;
  v10 = v6[1];
  *(v0 + 16) = *v6;
  *(v0 + 32) = v10;
LABEL_7:

  v11 = *(v0 + 128);
  *(v0 + 400) = *(v0 + 112);
  *(v0 + 416) = v11;
  *(v0 + 425) = *(v0 + 137);
  v12 = *(v0 + 64);
  *(v0 + 336) = *(v0 + 48);
  *(v0 + 352) = v12;
  v13 = *(v0 + 96);
  *(v0 + 368) = *(v0 + 80);
  *(v0 + 384) = v13;
  v14 = *(v0 + 32);
  *v1 = *(v0 + 16);
  *(v0 + 320) = v14;
  if (get_enum_tag_for_layout_string_8NewsFeed0B12JournalEntryVSg_0((v0 + 304)) == 1)
  {

    v15 = *(v0 + 648);
    *(v15 + 32) = 0;
    *v15 = 0u;
    *(v15 + 16) = 0u;
  }

  else
  {
    v16 = *(v0 + 648);
    v16[3] = &type metadata for FeedIssue;
    v16[4] = sub_1D5EE5AA4();
    v17 = swift_allocObject();
    *v16 = v17;

    v18 = *(v0 + 416);
    v17[7] = *(v0 + 400);
    v17[8] = v18;
    *(v17 + 137) = *(v0 + 425);
    v19 = *(v0 + 352);
    v17[3] = *(v0 + 336);
    v17[4] = v19;
    v20 = *(v0 + 384);
    v17[5] = *(v0 + 368);
    v17[6] = v20;
    v21 = *(v0 + 320);
    v17[1] = *v1;
    v17[2] = v21;
  }

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1D62D997C(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  sub_1D62DBE68(0, qword_1EDF42030, type metadata accessor for FeedHeadline, MEMORY[0x1E69E6720]);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D62D9A3C, 0, 0);
}

uint64_t sub_1D62D9A3C()
{
  v1 = v0[5];
  if (*(*(v1 + *(type metadata accessor for DebugFormatWorkspace(0) + 36)) + 16))
  {
    type metadata accessor for DebugFormatWorkspaceGroup(0);

    sub_1D725B77C();

    v2 = v0[2];
    v0[7] = v2;
    v3 = swift_task_alloc();
    v0[8] = v3;
    v4 = type metadata accessor for DebugFormatBindingResult(0);
    v5 = sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
    *v3 = v0;
    v3[1] = sub_1D62D9BE4;
    v6 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA10](v0 + 3, v2, v4, v5, v6);
  }

  else
  {
    v7 = v0[4];
    *(v7 + 32) = 0;
    *v7 = 0u;
    *(v7 + 16) = 0u;

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1D62D9BE4()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1D62D9EB4;
  }

  else
  {
    v2 = sub_1D62D9D14;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D62D9D14()
{
  if (!v0[3])
  {
    goto LABEL_4;
  }

  v1 = v0[6];

  sub_1D678EE20(v2, v1);

  v3 = type metadata accessor for FeedHeadline(0);
  v4 = (*(*(v3 - 8) + 48))(v1, 1, v3);
  v5 = v0[6];
  if (v4 == 1)
  {

    sub_1D62DBDF8(v5, qword_1EDF42030, type metadata accessor for FeedHeadline);
LABEL_4:
    v6 = v0[4];
    *(v6 + 32) = 0;
    *v6 = 0u;
    *(v6 + 16) = 0u;
    goto LABEL_6;
  }

  v7 = v0[4];
  v7[3] = v3;
  v7[4] = sub_1D5B57390(&qword_1EDF34AD0, type metadata accessor for FeedHeadline, &protocol conformance descriptor for FeedHeadline);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  sub_1D62DBECC(v5, boxed_opaque_existential_1, type metadata accessor for FeedHeadline);

LABEL_6:

  v9 = v0[1];

  return v9();
}

uint64_t sub_1D62D9EB4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D62D9F18(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  sub_1D62DBE68(0, qword_1EDF34D20, type metadata accessor for FeedRecipe, MEMORY[0x1E69E6720]);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D62D9FD8, 0, 0);
}

uint64_t sub_1D62D9FD8()
{
  v1 = v0[5];
  if (*(*(v1 + *(type metadata accessor for DebugFormatWorkspace(0) + 36)) + 16))
  {
    type metadata accessor for DebugFormatWorkspaceGroup(0);

    sub_1D725B77C();

    v2 = v0[2];
    v0[7] = v2;
    v3 = swift_task_alloc();
    v0[8] = v3;
    v4 = type metadata accessor for DebugFormatBindingResult(0);
    v5 = sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
    *v3 = v0;
    v3[1] = sub_1D62DA180;
    v6 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA10](v0 + 3, v2, v4, v5, v6);
  }

  else
  {
    v7 = v0[4];
    *(v7 + 32) = 0;
    *v7 = 0u;
    *(v7 + 16) = 0u;

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1D62DA180()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1D62DC08C;
  }

  else
  {
    v2 = sub_1D62DA2B0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D62DA2B0()
{
  if (!v0[3])
  {
    goto LABEL_4;
  }

  v1 = v0[6];

  sub_1D678EE54(v2, v1);

  v3 = type metadata accessor for FeedRecipe(0);
  v4 = (*(*(v3 - 8) + 48))(v1, 1, v3);
  v5 = v0[6];
  if (v4 == 1)
  {

    sub_1D62DBDF8(v5, qword_1EDF34D20, type metadata accessor for FeedRecipe);
LABEL_4:
    v6 = v0[4];
    *(v6 + 32) = 0;
    *v6 = 0u;
    *(v6 + 16) = 0u;
    goto LABEL_6;
  }

  v7 = v0[4];
  v7[3] = v3;
  v7[4] = sub_1D5B57390(&qword_1EDF12E00, type metadata accessor for FeedRecipe, &protocol conformance descriptor for FeedRecipe);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  sub_1D62DBECC(v5, boxed_opaque_existential_1, type metadata accessor for FeedRecipe);

LABEL_6:

  v9 = v0[1];

  return v9();
}

uint64_t sub_1D62DA450(uint64_t a1, uint64_t a2)
{
  *(v2 + 264) = a1;
  *(v2 + 272) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D62DA470, 0, 0);
}

uint64_t sub_1D62DA470()
{
  v1 = v0[33];
  v2 = v0[34];
  v1[3] = &type metadata for FeedPaywall;
  v1[4] = sub_1D62DBF34();
  v3 = swift_allocObject();
  *v1 = v3;
  v4 = *(v2 + 48);
  v6 = *v2;
  v5 = *(v2 + 16);
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = v4;
  *(v3 + 16) = v6;
  *(v3 + 32) = v5;
  v7 = *(v2 + 112);
  v9 = *(v2 + 64);
  v8 = *(v2 + 80);
  *(v3 + 112) = *(v2 + 96);
  *(v3 + 128) = v7;
  *(v3 + 80) = v9;
  *(v3 + 96) = v8;
  v10 = *(v2 + 176);
  v12 = *(v2 + 128);
  v11 = *(v2 + 144);
  *(v3 + 176) = *(v2 + 160);
  *(v3 + 192) = v10;
  *(v3 + 144) = v12;
  *(v3 + 160) = v11;
  v14 = *(v2 + 208);
  v13 = *(v2 + 224);
  v15 = *(v2 + 192);
  *(v3 + 256) = *(v2 + 240);
  *(v3 + 224) = v14;
  *(v3 + 240) = v13;
  *(v3 + 208) = v15;
  sub_1D62DAD08(v2, (v0 + 2));
  v16 = v0[1];

  return v16();
}

uint64_t sub_1D62DA54C(uint64_t a1, uint64_t a2)
{
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D62DA56C, 0, 0);
}

uint64_t sub_1D62DA56C()
{
  v1 = v0[15];
  if (*(*(v1 + *(type metadata accessor for DebugFormatWorkspace(0) + 36)) + 16))
  {
    type metadata accessor for DebugFormatWorkspaceGroup(0);

    sub_1D725B77C();

    v2 = v0[12];
    v0[16] = v2;
    v3 = swift_task_alloc();
    v0[17] = v3;
    v4 = type metadata accessor for DebugFormatBindingResult(0);
    v5 = sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
    *v3 = v0;
    v3[1] = sub_1D62DA70C;
    v6 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA10](v0 + 13, v2, v4, v5, v6);
  }

  else
  {
    v7 = v0[14];
    *(v7 + 32) = 0;
    *v7 = 0u;
    *(v7 + 16) = 0u;
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1D62DA70C()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1D62DA9FC;
  }

  else
  {
    v2 = sub_1D62DA83C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D62DA83C()
{
  v1 = *(*(v0 + 104) + OBJC_IVAR____TtC8NewsFeed24DebugFormatBindingResult_bindings + 64);
  v2 = *(v1 + 16);

  if (v2 && (v3 = sub_1D5B69D90(0x726F705364656546, 0xEF746E6576457374), (v4 & 1) != 0))
  {
    sub_1D5B68374(*(v1 + 56) + 40 * v3, v0 + 16);
    sub_1D5B49474(0, qword_1EDF431A0, &protocol descriptor for FeedGroupItemType);
    if ((swift_dynamicCast() & 1) == 0)
    {
      *(v0 + 88) = 0;
      *(v0 + 72) = 0u;
      *(v0 + 56) = 0u;
    }

    v5 = *(v0 + 64);
    if (v5)
    {
      v6 = *(v0 + 112);
      v7 = *(v0 + 88);
      v9 = *(v0 + 72);
      v8 = *(v0 + 80);
      v10 = *(v0 + 56);
      v6[3] = &type metadata for FeedSportsEvent;
      v6[4] = sub_1D62DC038();
      v11 = swift_allocObject();
      *v6 = v11;

      *(v11 + 16) = v10;
      *(v11 + 24) = v5;
      *(v11 + 32) = v9;
      *(v11 + 40) = v8;
      *(v11 + 48) = v7 & 1;
      goto LABEL_9;
    }
  }

  else
  {
    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
  }

  v12 = *(v0 + 112);
  *(v12 + 32) = 0;
  *v12 = 0u;
  *(v12 + 16) = 0u;
LABEL_9:
  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1D62DAA14(uint64_t a1)
{
  v2 = type metadata accessor for DebugFormatWorkspaceKind(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D62DAA70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D62DAAD8(uint64_t a1)
{
  v4 = *(type metadata accessor for DebugFormatWorkspace(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D5B64680;

  return sub_1D62DA54C(a1, v1 + v5);
}

uint64_t sub_1D62DABB4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D5B64684;

  return sub_1D62DA450(a1, v1 + 16);
}

uint64_t sub_1D62DAC50(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D5B64684;

  return sub_1D5BD7030(a1, v4);
}

uint64_t sub_1D62DAD64(uint64_t a1)
{
  v4 = *(type metadata accessor for DebugFormatWorkspace(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D5B64680;

  return sub_1D62D9F18(a1, v1 + v5);
}

uint64_t sub_1D62DAE40(uint64_t a1)
{
  v4 = *(type metadata accessor for DebugFormatWorkspace(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D5B64680;

  return sub_1D62D997C(a1, v1 + v5);
}

uint64_t sub_1D62DAF1C(uint64_t a1)
{
  v4 = *(type metadata accessor for DebugFormatWorkspace(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D5B64680;

  return sub_1D62D946C(a1, v1 + v5);
}

uint64_t objectdestroy_9Tm_0()
{
  v1 = type metadata accessor for DebugFormatWorkspace(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = v0 + v3;
  type metadata accessor for DebugFormatWorkspaceKind(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v11 = type metadata accessor for DebugFormatCacheFile(0);
    if ((*(*(v11 - 8) + 48))(v0 + v3, 1, v11))
    {
      goto LABEL_41;
    }

    v12 = v4 + *(v11 + 28);
    v8 = sub_1D725BD1C();
    v9 = *(*(v8 - 8) + 8);
    v9(v12, v8);
    type metadata accessor for DebugFormatCacheFileMetadata(0);

    v10 = v4 + *(v11 + 32);
    type metadata accessor for FormatFile(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
LABEL_7:

        v13 = type metadata accessor for FormatContent(0);
        v14 = *(v13 + 20);
        v15 = sub_1D725891C();
        (*(*(v15 - 8) + 8))(v10 + v14, v15);

        v16 = *(v13 + 44);
        v17 = sub_1D72608BC();
        v18 = *(v17 - 8);
        if (!(*(v18 + 48))(v10 + v16, 1, v17))
        {
          (*(v18 + 8))(v10 + v16, v17);
        }

        goto LABEL_9;
      case 1u:
LABEL_23:

        if (*(v10 + 106) != 255)
        {
          v28 = *(v10 + 104) | (*(v10 + 106) << 16);
          sub_1D60CF684(*(v10 + 96), v28, SBYTE2(v28));
        }

        goto LABEL_40;
      case 2u:
LABEL_16:

        if (*(v10 + 72) >= 3uLL)
        {
        }

        goto LABEL_39;
      case 3u:
LABEL_19:

        if (*(v10 + 56) >= 0x10uLL)
        {
        }

        goto LABEL_39;
      case 4u:
LABEL_13:

        goto LABEL_39;
      case 5u:
LABEL_25:

        if (*(v10 + 168) >= 3uLL)
        {
        }

        v42 = type metadata accessor for FormatPackage(0);
        v29 = v10 + v42[23];

        v45 = type metadata accessor for FormatCompilerOptions(0);
        v46 = v29 + *(v45 + 24);
        if (*(v46 + 8) != 1)
        {
        }

        v41 = v29;
        v30 = *(type metadata accessor for FormatCompilerOptions.Newsroom(0) + 20);
        v49 = sub_1D725B76C();
        v43 = *(v49 - 8);
        v44 = *(v43 + 48);
        if (!v44(v46 + v30, 1))
        {
          (*(v43 + 8))(v46 + v30, v49);
        }

        v47 = *(v45 + 28);
        if (!(v44)(v41 + v47, 1, v49))
        {
          (*(v43 + 8))(v41 + v47, v49);
        }

        v9(v10 + v42[24], v8);
        v31 = v42[25];
        if (!(v44)(v10 + v31, 1, v49))
        {
          (*(v43 + 8))(v10 + v31, v49);
        }

        goto LABEL_39;
      case 6u:
LABEL_36:

        goto LABEL_39;
      case 7u:
LABEL_22:

        goto LABEL_40;
      case 8u:
LABEL_38:

        goto LABEL_39;
      case 9u:
LABEL_15:

        goto LABEL_39;
      case 0xAu:
LABEL_37:

        sub_1D60CF6F4(*(v10 + 32), *(v10 + 40), *(v10 + 48), *(v10 + 56), *(v10 + 64), *(v10 + 72), *(v10 + 80));
        goto LABEL_40;
      case 0xBu:
LABEL_10:

        v19 = v10 + *(type metadata accessor for FormatBindingContent(0) + 28);

        v20 = type metadata accessor for FormatContent(0);
        v21 = *(v20 + 20);
        v22 = sub_1D725891C();
        (*(*(v22 - 8) + 8))(v19 + v21, v22);

        v23 = *(v20 + 44);
        v24 = sub_1D72608BC();
        v25 = *(v24 - 8);
        v48 = v23;
        v26 = v19 + v23;
        v27 = v24;
        if (!(*(v25 + 48))(v26, 1, v24))
        {
          (*(v25 + 8))(v19 + v48, v27);
        }

LABEL_9:

        goto LABEL_39;
      case 0xCu:
LABEL_14:

LABEL_39:

        break;
      default:
        goto LABEL_40;
    }

    goto LABEL_40;
  }

  if (!EnumCaseMultiPayload)
  {
    v6 = type metadata accessor for DebugFormatCacheFile(0);
    if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
    {

      v7 = v4 + *(v6 + 28);
      v8 = sub_1D725BD1C();
      v9 = *(*(v8 - 8) + 8);
      v9(v7, v8);
      type metadata accessor for DebugFormatCacheFileMetadata(0);

      v10 = v4 + *(v6 + 32);
      type metadata accessor for FormatFile(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          goto LABEL_7;
        case 1u:
          goto LABEL_23;
        case 2u:
          goto LABEL_16;
        case 3u:
          goto LABEL_19;
        case 4u:
          goto LABEL_13;
        case 5u:
          goto LABEL_25;
        case 6u:
          goto LABEL_36;
        case 7u:
          goto LABEL_22;
        case 8u:
          goto LABEL_38;
        case 9u:
          goto LABEL_15;
        case 0xAu:
          goto LABEL_37;
        case 0xBu:
          goto LABEL_10;
        case 0xCu:
          goto LABEL_14;
        default:
          break;
      }

LABEL_40:
      sub_1D60CF7A4(0);
      sub_1D5B952F8(*(v10 + *(v32 + 44)), *(v10 + *(v32 + 44) + 8));
    }
  }

LABEL_41:

  v33 = (v4 + *(v1 + 24));

  v34 = type metadata accessor for FeedContext(0);
  v35 = v33 + v34[5];
  v36 = type metadata accessor for BundleSession(0);
  if (!(*(*(v36 - 8) + 48))(v35, 1, v36))
  {
    v37 = *(v36 + 20);
    v38 = sub_1D725891C();
    v4 = v0 + v3;
    (*(*(v38 - 8) + 8))(&v35[v37], v38);
  }

  if (*(v33 + v34[12] + 8) - 1 >= 3)
  {
  }

  v39 = (v4 + *(v1 + 28));
  if (v39[1])
  {

    if (v39[17] >= 3uLL)
    {
    }

    swift_unknownObjectRelease();

    if (v39[30] >= 0x12uLL)
    {
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1D62DBD1C(uint64_t a1)
{
  v4 = *(type metadata accessor for DebugFormatWorkspace(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D5B64680;

  return sub_1D62D8F58(a1, v1 + v5);
}

uint64_t sub_1D62DBDF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D62DBE68(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D62DBE68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D62DBECC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D62DBF34()
{
  result = qword_1EC8857F8;
  if (!qword_1EC8857F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8857F8);
  }

  return result;
}

uint64_t objectdestroy_13Tm_0()
{

  if (*(v0 + 152) >= 3uLL)
  {
  }

  swift_unknownObjectRelease();

  if (*(v0 + 256) >= 0x12uLL)
  {
  }

  return swift_deallocObject();
}

unint64_t sub_1D62DC038()
{
  result = qword_1EDF15110;
  if (!qword_1EDF15110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF15110);
  }

  return result;
}

uint64_t _s8NewsFeed17FormatPatternModeO2eeoiySbAC_ACtFZ_0(char *a1, char *a2)
{
  v2 = *a1;
  v3 = *a2;
  if ((v2 & 0x80000000) == 0)
  {
    if ((v3 & 0x80000000) == 0)
    {

      return sub_1D6DDE758(v2, v3);
    }

    return 0;
  }

  if ((v3 & 0x80000000) == 0)
  {
    return 0;
  }

  v5 = (v2 & 1) == 0;
  if (v2)
  {
    v6 = 0x6F546D6F74746F62;
  }

  else
  {
    v6 = 0x746F426F54706F74;
  }

  if (v5)
  {
    v7 = 0xEB000000006D6F74;
  }

  else
  {
    v7 = 0xEB00000000706F54;
  }

  if (v3)
  {
    v8 = 0x6F546D6F74746F62;
  }

  else
  {
    v8 = 0x746F426F54706F74;
  }

  if (v3)
  {
    v9 = 0xEB00000000706F54;
  }

  else
  {
    v9 = 0xEB000000006D6F74;
  }

  if (v6 == v8 && v7 == v9)
  {

    return 1;
  }

  else
  {
    v11 = sub_1D72646CC();

    return v11 & 1;
  }
}

unint64_t sub_1D62DC1C4(uint64_t a1)
{
  result = sub_1D62DC1EC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D62DC1EC()
{
  result = qword_1EC885800;
  if (!qword_1EC885800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885800);
  }

  return result;
}

unint64_t sub_1D62DC240(void *a1)
{
  a1[1] = sub_1D62DC278();
  a1[2] = sub_1D62DC2CC();
  result = sub_1D62DC320();
  a1[3] = result;
  return result;
}

unint64_t sub_1D62DC278()
{
  result = qword_1EDF10BA8;
  if (!qword_1EDF10BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF10BA8);
  }

  return result;
}

unint64_t sub_1D62DC2CC()
{
  result = qword_1EDF10BB0;
  if (!qword_1EDF10BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF10BB0);
  }

  return result;
}

unint64_t sub_1D62DC320()
{
  result = qword_1EC885808;
  if (!qword_1EC885808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885808);
  }

  return result;
}

uint64_t FeedAppConfigManager.__allocating_init(appConfigManager:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  type metadata accessor for FormatFeedConfigManager();
  swift_allocObject();
  *(v2 + 24) = sub_1D5B7B960();
  return v2;
}

uint64_t FeedAppConfigManagerType.feedEditionConfig.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EDF38CD8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = unk_1EDF38CE8;
  *a1 = qword_1EDF38CE0;
  a1[1] = v2;
}

uint64_t FeedAppConfigManager.init(appConfigManager:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for FormatFeedConfigManager();
  swift_allocObject();
  *(v1 + 24) = sub_1D5B7B960();
  return v1;
}

id FeedAppConfigManager.timesOfDayConfiguration.getter()
{
  v1 = [*(v0 + 16) possiblyUnfetchedAppConfiguration];
  if ([v1 respondsToSelector_])
  {
    v2 = [v1 timesOfDayConfiguration];
    swift_unknownObjectRelease();
    return v2;
  }

  else
  {
    swift_unknownObjectRelease();
    return 0;
  }
}

double FeedAppConfigManager.feedEditionConfig.getter@<D0>(_OWORD *a1@<X8>)
{
  swift_getObjectType();
  FCNewsAppConfigurationManager.todayFeedEditionConfig.getter(&v3);
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t FeedAppConfigManager.formatFeedConfig.getter@<X0>(void *a1@<X8>)
{
  sub_1D5EE679C([*(v1 + 16) possiblyUnfetchedAppConfiguration], a1);

  return swift_unknownObjectRelease();
}

unint64_t FeedAppConfigManager.puzzleRanksByPuzzleTypeID.getter()
{
  v1 = [objc_msgSend(*(v0 + 16) appConfiguration)];
  swift_unknownObjectRelease();
  v2 = [v1 puzzleRanksByPuzzleTypeID];

  if (v2)
  {
    sub_1D62DC978(0);
    v3 = sub_1D7261D3C();

    return v3;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];

    return sub_1D605B3C8(v5);
  }
}

uint64_t FeedAppConfigManager.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t FeedAppConfigManager.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1D62DC734@<X0>(void *a1@<X8>)
{
  sub_1D5EE679C([*(*v1 + 16) possiblyUnfetchedAppConfiguration], a1);

  return swift_unknownObjectRelease();
}

unint64_t sub_1D62DC798()
{
  v1 = [objc_msgSend(*(*v0 + 16) appConfiguration)];
  swift_unknownObjectRelease();
  v2 = [v1 puzzleRanksByPuzzleTypeID];

  if (v2)
  {
    sub_1D62DC978(0);
    v3 = sub_1D7261D3C();

    return v3;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];

    return sub_1D605B3C8(v5);
  }
}

uint64_t sub_1D62DC86C()
{

  return swift_deallocClassInstance();
}

void *sub_1D62DC8CC()
{
  v1 = *(*v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t sub_1D62DC8F8@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 40);
  *a1 = *(*v1 + 32);
  a1[1] = v2;
}

void sub_1D62DC978(uint64_t a1)
{
  if (!qword_1EDF04A60)
  {
    sub_1D5B5A498(255, &qword_1EDF04670, 0x1E69B5520);
    v1 = sub_1D72627FC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF04A60);
    }
  }
}

void sub_1D62DCAC8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = a3 >> 1;
  if (__OFSUB__(a3 >> 1, a2))
  {
LABEL_11:
    __break(1u);
    return;
  }

  v12[2] = MEMORY[0x1DA6FA1E0]((a3 >> 1) - a2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v6 = v4 - a2;
  if (v4 != a2)
  {
    if (a2 <= v4)
    {
      v7 = v4;
    }

    else
    {
      v7 = a2;
    }

    v8 = v7 - a2;
    v9 = (a1 + 16 * a2 + 8);
    while (v8)
    {
      v11 = *(v9 - 1);
      v10 = *v9;

      sub_1D5B860D0(v12, v11, v10);

      --v8;
      v9 += 2;
      if (!--v6)
      {
        return;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_1D62DCBF4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1DA6FA1E0](v2, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1D5FE917C(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_1D62DCC68(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1D6007548();
  result = MEMORY[0x1DA6FA1E0](v2, &type metadata for DebugFormatWorkspaceDevice, v3);
  v10 = result;
  if (v2)
  {
    v5 = (a1 + 33);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      v5 += 2;
      if (v7)
      {
        v8 = 256;
      }

      else
      {
        v8 = 0;
      }

      sub_1D5FEEEB0(v9, v8 | v6);
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_1D62DCCF0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1D5F62384();
  result = MEMORY[0x1DA6FA1E0](v2, &type metadata for FormatScoreDataVisualizationTrait, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_1D5FF0100(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1D62DCD64(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for UIUserInterfaceIdiom(0);
  v4 = v3;
  v5 = sub_1D5C19444(&qword_1EC880048, type metadata accessor for UIUserInterfaceIdiom, &unk_1D7272A30);
  result = MEMORY[0x1DA6FA1E0](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      sub_1D5FF02C0(&v9, v8);
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_1D62DCE10(uint64_t a1)
{
  v2 = sub_1D726098C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v19 - v9;
  v11 = *(a1 + 16);
  v12 = sub_1D5C19444(&unk_1EDF168A8, MEMORY[0x1E69B4188], MEMORY[0x1E69B4190]);
  result = MEMORY[0x1DA6FA1E0](v11, v2, v12);
  v20 = result;
  if (v11)
  {
    v16 = *(v3 + 16);
    v14 = v3 + 16;
    v15 = v16;
    v17 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v18 = *(v14 + 56);
    do
    {
      v15(v6, v17, v2);
      sub_1D5FF03B8(v10, v6);
      (*(v14 - 8))(v10, v2);
      v17 += v18;
      --v11;
    }

    while (v11);
    return v20;
  }

  return result;
}

uint64_t sub_1D62DCFE0(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(char *, void))
{
  v7 = *(a1 + 16);
  v8 = a2();
  result = MEMORY[0x1DA6FA1E0](v7, a3, v8);
  v13 = result;
  if (v7)
  {
    v10 = (a1 + 32);
    do
    {
      v11 = *v10++;
      a4(&v12, v11);
      --v7;
    }

    while (v7);
    return v13;
  }

  return result;
}

unint64_t sub_1D62DD060(uint64_t a1)
{
  result = sub_1D5B577E4();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D62DD088(uint64_t a1)
{
  result = sub_1D5B4CD5C(&qword_1EDF45B80, MEMORY[0x1E6968FB0], &protocol conformance descriptor for URL);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D62DD0E0(uint64_t a1)
{
  result = sub_1D5B4CD5C(&qword_1EDF45B20, MEMORY[0x1E6969530], &protocol conformance descriptor for Date);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D62DD138(uint64_t a1)
{
  result = sub_1D5B4CD5C(&qword_1EC8836B0, MEMORY[0x1E69D6B38], &protocol conformance descriptor for Version);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D62DD190(void *a1)
{
  v2 = MEMORY[0x1E69D6B38];
  a1[1] = sub_1D5B4CD5C(&qword_1EDF43A48, MEMORY[0x1E69D6B38], MEMORY[0x1E69D6B58]);
  a1[2] = sub_1D5B4CD5C(&qword_1EDF178C0, v2, MEMORY[0x1E69D6B40]);
  result = sub_1D5B4CD5C(&qword_1EDF178B8, v2, MEMORY[0x1E69D6B50]);
  a1[3] = result;
  return result;
}

uint64_t sub_1D62DD23C(void *a1)
{
  v2 = MEMORY[0x1E69D6A58];
  a1[1] = sub_1D5B4CD5C(&qword_1EDF3BAA0, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A70]);
  a1[2] = sub_1D5B4CD5C(&qword_1EDF3BAA8, v2, MEMORY[0x1E69D6A60]);
  result = sub_1D5B4CD5C(&qword_1EC881E90, v2, MEMORY[0x1E69D6A68]);
  a1[3] = result;
  return result;
}

uint64_t sub_1D62DD368(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t sub_1D62DD400(void *a1, uint64_t a2)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t sub_1D62DD4AC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 121))
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

uint64_t sub_1D62DD4F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 121) = 1;
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

    *(result + 121) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1D62DD564(uint64_t a1, void *a2)
{
  v5 = sub_1D725A19C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7259EDC();
  v10 = *(a1 + 56);
  if ((~v10 & 0xF000000000000007) != 0)
  {
    v27[1] = v10;

    v19 = sub_1D5F4FDC4(a2);
    if (v2)
    {
      (*(v6 + 8))(v9, v5);
      return sub_1D5C8500C(v10);
    }

    else
    {
      v20 = v19;
      sub_1D725A18C();
      v22 = v21;
      if (qword_1EDF34BB8 != -1)
      {
        swift_once();
      }

      sub_1D7264C3C();
      if (v29 == 1)
      {
        [v20 pointSize];
        v24 = v23;
        sub_1D7264C3C();
        v25 = round(v22 * (v24 * 4.0) * 0.25);
        if (!v28)
        {
          v25 = v24;
        }

        v26 = [v20 fontWithSize_];
        sub_1D5C8500C(v10);
        (*(v6 + 8))(v9, v5);

        return v26;
      }

      else
      {
        sub_1D5C8500C(v10);
        (*(v6 + 8))(v9, v5);
        return v20;
      }
    }
  }

  else
  {
    v11 = [objc_opt_self() systemFontOfSize_];
    sub_1D725A18C();
    v13 = v12;
    if (qword_1EDF34BB8 != -1)
    {
      swift_once();
    }

    sub_1D7264C3C();
    if (v31 == 1)
    {
      [v11 pointSize];
      v15 = v14;
      sub_1D7264C3C();
      v16 = round(v13 * (v15 * 4.0) * 0.25);
      if (!v30)
      {
        v16 = v15;
      }

      v17 = [v11 fontWithSize_];
      (*(v6 + 8))(v9, v5);

      return v17;
    }

    else
    {
      (*(v6 + 8))(v9, v5);
      return v11;
    }
  }
}

id sub_1D62DD8C8(id a1, unsigned int a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a4)
  {
    v9 = *(a3 + 56);
    v10 = *(a4 + 56);
    if ((~v9 & 0xF000000000000007) != 0)
    {
      v19 = *(a3 + 56);
      if ((~v10 & 0xF000000000000007) != 0)
      {
        v18 = v10;

        sub_1D62B8444(v10);
        sub_1D62B8444(v9);
        sub_1D62B8444(v9);
        v12 = static FormatFont.== infix(_:_:)(&v19, &v18);

        sub_1D5C8500C(v9);
        if (v12)
        {

          goto LABEL_12;
        }

LABEL_9:
        v11 = sub_1D62DD564(a4, a5);

        return v11;
      }

      sub_1D62B8444(v10);
      sub_1D62B8444(v9);
      sub_1D62B8444(v9);
    }

    else
    {
      if ((~v10 & 0xF000000000000007) == 0)
      {
        sub_1D62B8444(*(a4 + 56));
        sub_1D62B8444(v9);
        sub_1D5C8500C(v9);
        goto LABEL_12;
      }

      sub_1D62B8444(v10);
      sub_1D62B8444(v9);
    }

    sub_1D5C8500C(v9);
    sub_1D5C8500C(v10);
    goto LABEL_9;
  }

LABEL_12:
  v13 = [a1 fontDescriptor];
  v14 = [v13 symbolicTraits];

  v15 = [a1 fontDescriptor];
  v16 = [v15 fontDescriptorWithSymbolicTraits_];

  if (v16)
  {
    v11 = [objc_opt_self() fontWithDescriptor:v16 size:0.0];

    if (v11)
    {
      return v11;
    }
  }

  return a1;
}

uint64_t sub_1D62DDAE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a1;
  v50 = a2;
  v3 = sub_1D7257F9C();
  v44 = *(v3 - 8);
  v45 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v43 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D725815C();
  v48 = *(v6 - 8);
  v49 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v41 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v42 = &v40 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v40 - v14;
  sub_1D725814C();
  swift_getKeyPath();
  swift_getKeyPath();
  v53 = *v2;
  v40 = v53;
  v16 = sub_1D7257EDC();
  sub_1D62DEAA4(&qword_1EDF3C418, MEMORY[0x1E69DBE88], MEMORY[0x1E69DBE80]);
  v46 = v16;
  v17 = sub_1D725812C();
  sub_1D62DE3AC(0);
  sub_1D62DE440();
  sub_1D725830C();
  v17(v55, 0);

  swift_getKeyPath();
  swift_getKeyPath();
  v59 = *(v2 + 8);
  v53 = v59;
  v51 = sub_1D62DE494;
  sub_1D62DF980(&v59, v55, sub_1D62DE494);
  v18 = sub_1D725812C();
  sub_1D62DE4FC();
  sub_1D725830C();
  v18(v55, 0);

  swift_getKeyPath();
  swift_getKeyPath();
  v58 = *(v2 + 16);
  v53 = v58;
  sub_1D62DF980(&v58, v55, sub_1D62DE494);
  v19 = sub_1D725812C();
  sub_1D62DE550();
  v20 = v15;
  sub_1D725830C();
  v19(v55, 0);

  swift_getKeyPath();
  swift_getKeyPath();
  v53 = *(v2 + 72);
  v54 = *(v2 + 80);
  v21 = sub_1D725812C();
  sub_1D62DE5A4();
  sub_1D725830C();
  v21(v55, 0);

  swift_getKeyPath();
  swift_getKeyPath();
  v53 = *(v2 + 24);
  v54 = *(v2 + 32);
  v22 = sub_1D725812C();
  sub_1D62DE614();
  sub_1D725830C();
  v22(v55, 0);

  swift_getKeyPath();
  swift_getKeyPath();
  v57 = *(v2 + 40);
  v53 = v57;
  sub_1D62DF980(&v57, v55, v51);
  v23 = sub_1D725812C();
  sub_1D62DE668();
  sub_1D725830C();
  v23(v55, 0);

  swift_getKeyPath();
  swift_getKeyPath();
  v53 = *(v2 + 48);
  v54 = *(v2 + 56);
  v24 = sub_1D725812C();
  sub_1D62DE6D8();
  sub_1D725830C();
  v24(v55, 0);

  swift_getKeyPath();
  swift_getKeyPath();
  v56 = *(v2 + 64);
  v53 = v56;
  sub_1D62DF980(&v56, v55, v51);
  v25 = sub_1D725812C();
  sub_1D62DE72C();
  sub_1D725830C();
  v25(v55, 0);

  swift_getKeyPath();
  swift_getKeyPath();
  v53 = *(v2 + 88);
  v54 = *(v2 + 96);
  v26 = sub_1D725812C();
  sub_1D62DE79C();
  sub_1D725830C();
  v26(v55, 0);

  swift_getKeyPath();
  swift_getKeyPath();
  v52 = v47;
  v53 = sub_1D62DE8BC(sub_1D62DE8B4);
  v27 = sub_1D725812C();
  sub_1D62DEA50();
  sub_1D725830C();
  v27(v55, 0);

  v29 = *(v2 + 120);
  if (v29 == 18)
  {
    return (*(v48 + 32))(v50, v15, v49);
  }

  v31 = v41;
  v32 = sub_1D67E0574(v40, v29, v28);
  v34 = v48;
  v33 = v49;
  v35 = v42;
  (*(v48 + 32))(v42, v31, v49, v32);
  v37 = v44;
  v36 = v45;
  v38 = v43;
  (*(v44 + 104))(v43, *MEMORY[0x1E69686E8], v45);
  sub_1D725813C();
  (*(v37 + 8))(v38, v36);
  v39 = *(v34 + 8);
  v39(v35, v33);
  return (v39)(v20, v33);
}

void sub_1D62DE3AC(uint64_t a1)
{
  if (!qword_1EDF3C3E8)
  {
    sub_1D7257EDC();
    sub_1D62DEAA4(&qword_1EDF3C418, MEMORY[0x1E69DBE88], MEMORY[0x1E69DBE80]);
    v1 = sub_1D725831C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF3C3E8);
    }
  }
}

unint64_t sub_1D62DE440()
{
  result = qword_1EDF3C430;
  if (!qword_1EDF3C430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3C430);
  }

  return result;
}

void sub_1D62DE494(uint64_t a1)
{
  if (!qword_1EDF1A698)
  {
    sub_1D5B5A498(255, qword_1EDF1A6A0, 0x1E69DC888);
    v1 = sub_1D726393C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF1A698);
    }
  }
}

unint64_t sub_1D62DE4FC()
{
  result = qword_1EDF3C448;
  if (!qword_1EDF3C448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3C448);
  }

  return result;
}

unint64_t sub_1D62DE550()
{
  result = qword_1EDF3C450;
  if (!qword_1EDF3C450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3C450);
  }

  return result;
}

unint64_t sub_1D62DE5A4()
{
  result = qword_1EDF3C420;
  if (!qword_1EDF3C420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3C420);
  }

  return result;
}

unint64_t sub_1D62DE614()
{
  result = qword_1EDF3C458;
  if (!qword_1EDF3C458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3C458);
  }

  return result;
}

unint64_t sub_1D62DE668()
{
  result = qword_1EDF3C460;
  if (!qword_1EDF3C460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3C460);
  }

  return result;
}

unint64_t sub_1D62DE6D8()
{
  result = qword_1EDF3C438;
  if (!qword_1EDF3C438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3C438);
  }

  return result;
}

unint64_t sub_1D62DE72C()
{
  result = qword_1EDF3C440;
  if (!qword_1EDF3C440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3C440);
  }

  return result;
}

unint64_t sub_1D62DE79C()
{
  result = qword_1EDF3C470;
  if (!qword_1EDF3C470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3C470);
  }

  return result;
}

uint64_t sub_1D62DE7F0()
{
  v0 = sub_1D7257F3C();
  MEMORY[0x1EEE9AC00](v0, v1);
  sub_1D7257F1C();
  sub_1D62DEAA4(&qword_1EC885818, MEMORY[0x1E6968678], MEMORY[0x1E6968688]);
  return sub_1D726234C();
}

id sub_1D62DE8BC(void (*a1)(id, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, uint64_t))
{
  v3 = *(v1 + 104);
  v4 = *(v3 + 244);
  v3 = (v3 + 296);
  v48 = v4;
  v5 = v3[11];
  v46 = v3[10];
  v47 = v5;
  v6 = v3[7];
  v42 = v3[6];
  v43 = v6;
  v7 = v3[9];
  v44 = v3[8];
  v45 = v7;
  v8 = v3[3];
  v38 = v3[2];
  v39 = v8;
  v9 = v3[5];
  v40 = v3[4];
  v41 = v9;
  v10 = v3[1];
  v36 = *v3;
  v37 = v10;
  if (sub_1D5D39FB4(&v36) == 1)
  {
    return 0;
  }

  v33 = v42;
  v34 = v43;
  v35 = v44;
  v29 = v38;
  v30 = v39;
  v31 = v40;
  v32 = v41;
  v27 = v36;
  v28 = v37;
  result = FormatParagraphStyle.paragraphStyle.getter();
  if ((v46 & 1) == 0)
  {
    v19 = result;
    v20 = *(&v45 + 1);
    a1(result, v12, v13, v14, v15, v16, v17, v18, v27, *(&v27 + 1), v28, *(&v28 + 1), v29, *(&v29 + 1), v30, *(&v30 + 1), v31, *(&v31 + 1), v32, *(&v32 + 1), v33, *(&v33 + 1), v34, *(&v34 + 1), v35);
    if (v21)
    {
      v22 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
      [v22 setParagraphStyle_];
      v23 = *v1;
      v24 = sub_1D726203C();

      [v23 ts:v24 tightenedLineSpacingForString:v20 minimumLineSpacingMultiple:?];
      v26 = v25;

      [v22 setLineSpacing_];
      return v22;
    }

    else
    {
      return v19;
    }
  }

  return result;
}

unint64_t sub_1D62DEA50()
{
  result = qword_1EDF3C468;
  if (!qword_1EDF3C468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3C468);
  }

  return result;
}

uint64_t sub_1D62DEAA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1D62DEAEC(void *a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(MEMORY[0x1E69DB7F0]) init];
  v5 = sub_1D62DED0C();
  v6 = [a1 imageWithConfiguration_];

  [v4 setImage_];
  sub_1D5B5A498(0, &qword_1EDF1A7E0, 0x1E696AD40);
  v7 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];
  v8 = [v7 length];
  [v7 addAttribute:*MEMORY[0x1E69DB648] value:*v2 range:{0, v8}];
  v9 = *(v2 + 104);
  v45 = *(v9 + 488);
  v10 = *(v9 + 472);
  v43 = *(v9 + 456);
  v44 = v10;
  v11 = *(v9 + 408);
  v39 = *(v9 + 392);
  v40 = v11;
  v12 = *(v9 + 440);
  v41 = *(v9 + 424);
  v42 = v12;
  v13 = *(v9 + 344);
  v35 = *(v9 + 328);
  v36 = v13;
  v14 = *(v9 + 376);
  v37 = *(v9 + 360);
  v38 = v14;
  v15 = *(v9 + 312);
  v33 = *(v9 + 296);
  v34 = v15;
  if (sub_1D5D39FB4(&v33) != 1)
  {
    v30 = v43;
    v31 = v44;
    LOWORD(v32) = v45;
    v26 = v39;
    v27 = v40;
    v28 = v41;
    v29 = v42;
    v22 = v35;
    v23 = v36;
    v24 = v37;
    v25 = v38;
    v20 = v33;
    v21 = v34;
    v16 = FormatParagraphStyle.paragraphStyle.getter();
    [v7 addAttribute:*MEMORY[0x1E69DB688] value:v16 range:{0, v8, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32}];
  }

  if ((*(v2 + 96) & 1) == 0)
  {
    v17 = *MEMORY[0x1E69DB610];
    v18 = sub_1D725A62C();
    [v7 addAttribute:v17 value:v18 range:{0, v8}];
  }

  return v7;
}

id sub_1D62DED0C()
{
  v1 = v0;
  v17 = MEMORY[0x1E69E7CC0];
  v2 = v0[1];
  if (v2)
  {
    v3 = v2;
    MEMORY[0x1DA6F9CE0]();
    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D726272C();
    }

    sub_1D726278C();
  }

  v4 = v0[2];
  if (v4)
  {
    v5 = objc_opt_self();
    v6 = v4;
    v7 = [v5 clearColor];
    sub_1D5B5A498(0, qword_1EDF1A6A0, 0x1E69DC888);
    v8 = sub_1D726370C();

    if (v8)
    {
    }

    else
    {
      v9 = v6;
      MEMORY[0x1DA6F9CE0]();
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();
    }
  }

  v10 = *v1;
  v11 = objc_opt_self();
  v12 = [v11 configurationWithFont_];
  sub_1D5B5A498(0, qword_1EDF1A6A0, 0x1E69DC888);
  v13 = sub_1D726265C();

  v14 = [v11 configurationWithPaletteColors_];

  v15 = [v12 configurationByApplyingConfiguration_];
  return v15;
}

id sub_1D62DEF44(uint64_t a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(MEMORY[0x1E69DB7F0]) init];
  [v4 setImage_];
  sub_1D5B5A498(0, &qword_1EDF1A7E0, 0x1E696AD40);
  v5 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];
  v6 = [v5 length];
  [v5 addAttribute:*MEMORY[0x1E69DB648] value:*v2 range:{0, v6}];
  v7 = *(v2 + 104);
  v47 = *(v7 + 488);
  v8 = *(v7 + 472);
  v45 = *(v7 + 456);
  v46 = v8;
  v9 = *(v7 + 408);
  v41 = *(v7 + 392);
  v42 = v9;
  v10 = *(v7 + 440);
  v43 = *(v7 + 424);
  v44 = v10;
  v11 = *(v7 + 344);
  v37 = *(v7 + 328);
  v38 = v11;
  v12 = *(v7 + 376);
  v39 = *(v7 + 360);
  v40 = v12;
  v13 = *(v7 + 312);
  v35 = *(v7 + 296);
  v36 = v13;
  if (sub_1D5D39FB4(&v35) == 1)
  {
    if (*(v2 + 96))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v32 = v45;
    v33 = v46;
    LOWORD(v34) = v47;
    v28 = v41;
    v29 = v42;
    v30 = v43;
    v31 = v44;
    v24 = v37;
    v25 = v38;
    v26 = v39;
    v27 = v40;
    v22 = v35;
    v23 = v36;
    v19 = FormatParagraphStyle.paragraphStyle.getter();
    [v5 addAttribute:*MEMORY[0x1E69DB688] value:v19 range:{0, v6, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34}];

    if (*(v2 + 96))
    {
LABEL_3:
      v14 = *(v2 + 8);
      if (!v14)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  v20 = *MEMORY[0x1E69DB610];
  v21 = sub_1D725A62C();
  [v5 addAttribute:v20 value:v21 range:{0, v6}];

  v14 = *(v2 + 8);
  if (v14)
  {
LABEL_4:
    [v5 addAttribute:*MEMORY[0x1E69DB650] value:v14 range:{0, v6}];
  }

LABEL_5:
  v15 = *(v2 + 16);
  if (v15)
  {
    v16 = *MEMORY[0x1E69DB600];
    v17 = v15;
    [v5 addAttribute:v16 value:v17 range:{0, v6}];
  }

  return v5;
}

uint64_t sub_1D62DF1B0(uint64_t a1, uint64_t a2)
{
  v3 = *(*(v2 + 104) + 288);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = (v3 + 32);

  do
  {
    v13 = *v7++;
    v12 = v13;
    if (v13)
    {
      if (v12 == 1)
      {
        sub_1D5BF4D9C();
        v8 = sub_1D7263A2C();
      }

      else
      {
        sub_1D5BF4D9C();
        v8 = sub_1D7263A5C();
      }
    }

    else
    {
      sub_1D5BF4D9C();
      v8 = sub_1D7263A3C();
    }

    v10 = v8;
    v11 = v9;

    --v4;
  }

  while (v4);
  v14 = v10 == a1 && v11 == a2;
  if (v14 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  return v10;
}

void sub_1D62DF2F4(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, _OWORD *a5@<X8>)
{
  v11 = *(a2 + 144);
  v99[4] = *(a2 + 128);
  v99[5] = v11;
  v12 = *(a2 + 176);
  v99[6] = *(a2 + 160);
  v99[7] = v12;
  v13 = *(a2 + 80);
  v99[0] = *(a2 + 64);
  v99[1] = v13;
  v14 = *(a2 + 112);
  v99[2] = *(a2 + 96);
  v99[3] = v14;
  sub_1D62DF980(v99, &v83, sub_1D62DF9E8);
  v15 = sub_1D6AE96CC(v99, a3);
  if (v5)
  {

    sub_1D62DFA38(v99);
  }

  else
  {
    v16 = v15;
    sub_1D62DFA38(v99);
    v17 = *(a2 + 144);
    v79 = *(a2 + 128);
    v80 = v17;
    v18 = *(a2 + 176);
    v81 = *(a2 + 160);
    v82 = v18;
    v19 = *(a2 + 80);
    v76[0] = *(a2 + 64);
    v76[1] = v19;
    v20 = *(a2 + 112);
    v77 = *(a2 + 96);
    v78 = v20;
    v89 = v81;
    v90 = v18;
    v87 = v79;
    v88 = v17;
    v85 = v77;
    v86 = v20;
    v83 = v76[0];
    v84 = v19;
    if (sub_1D5CFD0B8(&v83) == 1)
    {
      v59 = 0;
    }

    else
    {
      v71 = v87;
      v72 = v88;
      v73 = v89;
      v74 = v90;
      v67 = v83;
      v68 = v84;
      v69 = v85;
      v70 = v86;
      v21 = sub_1D5CFD35C(&v67);
      v22 = sub_1D5CFD34C(&v67);
      if (v21)
      {
        v59 = [objc_opt_self() clearColor];
      }

      else
      {
        v23 = *(v22 + 8);
        sub_1D62DF980(v76, &v60, sub_1D62DF9E8);

        sub_1D5FA6CB0(a3, v23, v75);

        *&v60 = v75[0];
        v59 = FormatColor.color.getter(v24);

        sub_1D62DFA38(v76);
      }
    }

    v25 = *(a2 + 536);
    if (v25 == 9)
    {
      v56 = 0;
      v26 = 1;
    }

    else
    {
      v27 = 1024;
      v28 = 0x8000;
      if (v25 == 7)
      {
        v29 = 0;
      }

      else
      {
        v28 = 0;
        v29 = 1;
      }

      if (v25 == 6)
      {
        v29 = 0;
      }

      else
      {
        v27 = v28;
      }

      v30 = 512;
      if (v25 != 4)
      {
        v30 = 768;
      }

      if (v25 <= 5u)
      {
        v27 = v30;
        v29 = 0;
      }

      v31 = 9;
      if (v25 != 2)
      {
        v31 = 256;
      }

      v32 = 1;
      if (v25)
      {
        v32 = 2;
      }

      if (v25 <= 1u)
      {
        v31 = v32;
      }

      if (v25 <= 3u)
      {
        v33 = v31;
      }

      else
      {
        v33 = v27;
      }

      v56 = v33;
      if (v25 <= 3u)
      {
        v26 = 0;
      }

      else
      {
        v26 = v29;
      }
    }

    v34 = 0;
    v98 = v26;
    if (v25 != 9)
    {
      v35 = *(a2 + 544);
      if ((v35 & 0xF000000000000007) != 0xF000000000000007)
      {
        sub_1D5CFCFAC(*(a2 + 544));
        sub_1D5FA6CB0(a3, v35, &v67);
        sub_1D62B5D00(v25, v35);
        *&v60 = v67;
        v37 = FormatColor.color.getter(v36);

        v34 = v37;
      }
    }

    v38 = *(a2 + 520);
    v39 = v38 == 9 || v38 == 8;
    v40 = v39;
    if (v39)
    {
      v41 = 0;
    }

    else
    {
      v41 = qword_1D72B6CC0[v38];
    }

    v57 = v34;
    v58 = v16;
    v42 = 0;
    v96 = v40;
    if (v38 != 9)
    {
      v43 = *(a2 + 528);
      if ((v43 & 0xF000000000000007) != 0xF000000000000007)
      {
        sub_1D5CFCFAC(*(a2 + 528));
        sub_1D5FA6CB0(a3, v43, &v67);
        sub_1D62B5D00(v38, v43);
        *&v60 = v67;
        v45 = FormatColor.color.getter(v44);

        v42 = v45;
        v34 = v57;
      }
    }

    v46 = *(a2 + 560);
    if (v46)
    {
      v54 = a5;
      v55 = v42;
      *&v67 = a3;
      v47 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext(0);
      v48 = v47();
      v49 = sub_1D5E02AFC(v48, v46);

      a5 = v54;
      v42 = v55;
      v34 = v57;
    }

    else
    {
      v49 = 0.0;
    }

    v92 = v46 == 0;
    v50 = *(a2 + 496);
    v94 = *(a2 + 504);
    *&v60 = a1;
    *(&v60 + 1) = v58;
    *&v61 = v59;
    *(&v61 + 1) = v56;
    LOBYTE(v62) = v98;
    *(&v62 + 1) = *v97;
    DWORD1(v62) = *&v97[3];
    *(&v62 + 1) = v34;
    *&v63 = v41;
    BYTE8(v63) = v96;
    HIDWORD(v63) = *&v95[3];
    *(&v63 + 9) = *v95;
    *&v64 = v42;
    *(&v64 + 1) = v50;
    LOBYTE(v65) = v94;
    DWORD1(v65) = *&v93[3];
    *(&v65 + 1) = *v93;
    *(&v65 + 1) = v49;
    v66[0] = v46 == 0;
    *&v66[4] = *&v91[3];
    *&v66[1] = *v91;
    *&v66[8] = a2;
    *&v66[16] = a3;
    v66[24] = a4;
    *&v67 = a1;
    *(&v67 + 1) = v58;
    *&v68 = v59;
    *(&v68 + 1) = v56;
    LOBYTE(v69) = v98;
    DWORD1(v69) = *&v97[3];
    *(&v69 + 1) = *v97;
    *(&v69 + 1) = v34;
    *&v70 = v41;
    BYTE8(v70) = v96;
    HIDWORD(v70) = *&v95[3];
    *(&v70 + 9) = *v95;
    *&v71 = v42;
    *(&v71 + 1) = v50;
    LOBYTE(v72) = v94;
    DWORD1(v72) = *&v93[3];
    *(&v72 + 1) = *v93;
    *(&v72 + 1) = v49;
    LOBYTE(v73) = v46 == 0;
    DWORD1(v73) = *&v91[3];
    *(&v73 + 1) = *v91;
    *(&v73 + 1) = a2;
    *&v74 = a3;
    BYTE8(v74) = a4;
    sub_1D61FFF18(&v60, v75);
    sub_1D61FFF74(&v67);
    v51 = v65;
    a5[4] = v64;
    a5[5] = v51;
    a5[6] = *v66;
    *(a5 + 105) = *&v66[9];
    v52 = v61;
    *a5 = v60;
    a5[1] = v52;
    v53 = v63;
    a5[2] = v62;
    a5[3] = v53;
  }
}

uint64_t sub_1D62DF980(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D62DF9E8()
{
  if (!qword_1EDF34688)
  {
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF34688);
    }
  }
}

uint64_t sub_1D62DFA38(uint64_t a1)
{
  sub_1D62DF9E8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FormatSupplementaryNode.bind(binder:context:)(unint64_t a1, uint64_t a2)
{
  v19[3] = type metadata accessor for FormatNodeBinderContext(0);
  v19[4] = &protocol witness table for FormatNodeBinderContext;
  v19[0] = a2;

  sub_1D62E1698(v19, &v20);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v19);
  }

  __swift_destroy_boxed_opaque_existential_1(v19);
  v17 = v24;
  v18[0] = v25[0];
  *(v18 + 9) = *(v25 + 9);
  v13 = v20;
  v14 = v21;
  v15 = v22;
  v16 = v23;
  v11 = v24;
  v12[0] = v25[0];
  *(v12 + 9) = *(v25 + 9);
  v7 = v20;
  v8 = v21;
  v9 = v22;
  v10 = v23;
  v6 = sub_1D62E1964(&v7, a2);
  v11 = v17;
  v12[0] = v18[0];
  *(v12 + 9) = *(v18 + 9);
  v7 = v13;
  v8 = v14;
  v9 = v15;
  v10 = v16;
  FormatSupplementary.bind(binder:context:)(a1, v6);
  FormatSupplementaryNode.bindChildren(binder:context:)(a1, v6);

  return sub_1D62E2300(&v13);
}

void sub_1D62DFC84()
{
  v2 = v0;
  v4 = v0[4];
  v3 = v0[5];
  swift_beginAccess();
  v5 = v0[2];
  v6 = v2[3];
  swift_beginAccess();
  v7 = v2[12];
  sub_1D62E30D8(0, &qword_1EC880338, &type metadata for FormatDerivedData._$CopyOnWriteStorage, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6B60]);
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E7CC0];
  *(v8 + 16) = MEMORY[0x1E69E7CC0];
  *(v8 + 24) = v9;
  *(v8 + 32) = v5;
  *(v8 + 40) = v6;
  *(v8 + 56) = 0;
  *(v8 + 64) = 0;
  *(v8 + 48) = 0;
  *(v8 + 76) = 0x2000;
  *(v8 + 72) = 0;
  v75 = v8;
  swift_beginAccess();
  swift_bridgeObjectRetain_n();

  sub_1D6C4D418(v10);
  if (v1)
  {
  }

  else
  {
    v59 = v4;
    v60 = v7;

    sub_1D62A09D4(&v75);
    v11 = v7;
    if (v7 >> 62)
    {
LABEL_31:
      v50 = v11;
      v12 = sub_1D7263BFC();
      v11 = v50;
    }

    else
    {
      v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = v59;
    if (v12)
    {
      v14 = 0;
      v55 = v11 & 0xFFFFFFFFFFFFFF8;
      v56 = v11 & 0xC000000000000001;
      v53 = v11 + 32;
      v54 = v6;
      v51 = v12;
      v52 = v3;
      do
      {
        if (v56)
        {
          v19 = MEMORY[0x1DA6FB460](v14, v11);
          v18 = MEMORY[0x1E69E7CC0];
          v20 = __OFADD__(v14, 1);
          v21 = v14 + 1;
          if (v20)
          {
LABEL_28:
            __break(1u);

            goto LABEL_4;
          }
        }

        else
        {
          v18 = MEMORY[0x1E69E7CC0];
          if (v14 >= *(v55 + 16))
          {
            __break(1u);
            goto LABEL_31;
          }

          v19 = *(v53 + 8 * v14);

          v20 = __OFADD__(v14, 1);
          v21 = v14 + 1;
          if (v20)
          {
            goto LABEL_28;
          }
        }

        v57 = v21;
        v22 = swift_allocObject();
        *(v22 + 16) = v18;
        *(v22 + 24) = v18;
        *(v22 + 32) = 0u;
        *(v22 + 48) = 0u;
        *(v22 + 64) = 0;
        *(v22 + 76) = -512;
        *(v22 + 72) = 0;
        v74 = v22;
        swift_beginAccess();
        v58 = v19;
        v23 = *(*(v19 + 32) + 16);

        if (v23)
        {
          v25 = (v24 + 72);
          do
          {
            v66 = v23;
            v26 = *(v25 - 3);
            v27 = v25[1];
            v28 = v25[2];
            v29 = v25[3];
            v30 = v25[4];
            v31 = v25[5];
            v33 = v25[6];
            v32 = v25[7];
            v69 = *v25;
            v67 = v33;
            v68 = v31;
            v70 = v29;
            if (v26)
            {
              v34 = *v25;
              v62 = *(v25 - 1);
              v63 = *(v25 - 5);
              v61 = *(v25 - 4);

              v64 = v30;
              v65 = v27;
              sub_1D5CFDAE4(v34, v27, v28, v29, v30, v31, v33, v32);

              v35 = v74;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v46 = swift_allocObject();
                swift_beginAccess();
                v47 = v35[2];
                v72[0] = v35[1];
                v72[1] = v47;
                v73[0] = v35[3];
                *(v73 + 14) = *(v35 + 62);
                memmove((v46 + 16), v35 + 1, 0x3EuLL);
                sub_1D5EB9AB0(v72, v71);

                v74 = v46;
                v35 = v46;
              }

              swift_beginAccess();
              v36 = *(v35 + 3);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *(v35 + 3) = v36;
              v38 = v26;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v36 = sub_1D698F85C(0, *(v36 + 2) + 1, 1, v36);
                *(v35 + 3) = v36;
              }

              v40 = *(v36 + 2);
              v39 = *(v36 + 3);
              if (v40 >= v39 >> 1)
              {
                v36 = sub_1D698F85C((v39 > 1), v40 + 1, 1, v36);
              }

              *(v36 + 2) = v40 + 1;
              v41 = &v36[32 * v40];
              *(v41 + 4) = v61;
              *(v41 + 5) = v38;
              *(v41 + 3) = v62;
              *(v35 + 3) = v36;
              swift_endAccess();
              v42 = v64;
              v27 = v65;
              v44 = v63;
              v43 = v32;
            }

            else
            {
              v45 = *v25;
              v44 = *(v25 - 5);

              sub_1D5CFDAE4(v45, v27, v28, v70, v30, v31, v33, v32);
              v43 = v32;
              v42 = v30;
            }

            *&v72[0] = v44;

            sub_1D6299090(&v74);

            sub_1D5CFDD14(v69, v27, v28, v70, v42, v68, v67, v43);
            v25 += 13;
            v23 = v66 - 1;
          }

          while (v66 != 1);
        }

        v15 = swift_allocObject();
        v16 = *(v58 + 24);
        v17 = v74;
        *(v15 + 16) = *(v58 + 16);
        *(v15 + 24) = v16;
        *(v15 + 32) = v17;

        sub_1D6C4D24C(v15 | 0x2000000000000000);

        v3 = v52;
        v14 = v57;
        v6 = v54;
        v11 = v60;
        v13 = v59;
      }

      while (v57 != v51);
    }

    v48 = swift_allocObject();
    *(v48 + 16) = v13;
    *(v48 + 24) = v3;
    *(v48 + 32) = 2;

    sub_1D6C4D24C(v48 | 0x5000000000000000);

    v49 = swift_allocObject();
    *(v49 + 16) = v75;

    sub_1D6C4D24C(v49);
  }

LABEL_4:
}

uint64_t FormatSupplementaryNode.identifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

double FormatSupplementaryNode.identifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  return result;
}

uint64_t FormatSupplementaryNode.supplementaryIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

unint64_t FormatSupplementaryNode.size.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = v2;
  return sub_1D5C82CD8(v2);
}

double FormatSupplementaryNode.resize.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 56);

  return result;
}

double FormatSupplementaryNode.adjustments.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 64) = a1;

  return result;
}

double FormatSupplementaryNode.styles.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 72) = a1;

  return result;
}

double FormatSupplementaryNode.selectors.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 80) = a1;

  return result;
}

double FormatSupplementaryNode.options.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 88) = a1;

  return result;
}

double FormatSupplementaryNode.blocks.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 96) = a1;

  return result;
}

uint64_t FormatSupplementaryNode.flex.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[15];
  v3 = v1[16];
  v4 = v1[17];
  v5 = v1[18];
  v6 = v1[19];
  v7 = v1[20];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_1D5EB1D80(v2, v3, v4, v5, v6, v7);
}

uint64_t FormatSupplementaryNode.deinit()
{

  sub_1D5C92A8C(*(v0 + 48));

  sub_1D5EB2398(*(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160));
  return v0;
}

uint64_t FormatSupplementaryNode.__deallocating_deinit()
{
  FormatSupplementaryNode.deinit();

  return swift_deallocClassInstance();
}

uint64_t *sub_1D62E08C4(uint64_t a1, uint64_t *a2)
{
  v64 = a2;
  v67 = type metadata accessor for FormatOption(0);
  v66 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67, v3);
  v5 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = a1;
  v6 = *(a1 + 64);
  v7 = *(v6 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v70[0] = MEMORY[0x1E69E7CC0];

    sub_1D69979A0(0, v7, 0);
    v8 = v70[0];
    v9 = v7 - 1;
    for (i = 32; ; i += 64)
    {
      v11 = *(v6 + i);
      v12 = *(v6 + i + 16);
      v13 = *(v6 + i + 48);
      v74 = *(v6 + i + 32);
      v75 = v13;
      v72 = v11;
      v73 = v12;
      v14 = swift_allocObject();
      v15 = *(v6 + i + 48);
      v17 = *(v6 + i);
      v16 = *(v6 + i + 16);
      *(v14 + 48) = *(v6 + i + 32);
      *(v14 + 64) = v15;
      *(v14 + 16) = v17;
      *(v14 + 32) = v16;
      sub_1D5C8C900(&v72, v71);
      v70[0] = v8;
      v19 = *(v8 + 16);
      v18 = *(v8 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1D69979A0((v18 > 1), v19 + 1, 1);
        v8 = v70[0];
      }

      *(v8 + 16) = v19 + 1;
      *(v8 + 8 * v19 + 32) = v14 | 0xA000000000000000;
      if (!v9)
      {
        break;
      }

      --v9;
    }
  }

  v20 = v68;
  swift_beginAccess();
  v21 = *(v20 + 72);
  v22 = *(v21 + 16);
  v23 = MEMORY[0x1E69E7CC0];
  if (v22)
  {
    v69[0] = MEMORY[0x1E69E7CC0];

    sub_1D69979A0(0, v22, 0);
    v23 = v69[0];
    v24 = v22 - 1;
    for (j = 32; ; j += 64)
    {
      v26 = *(v21 + j);
      v27 = *(v21 + j + 16);
      v28 = *(v21 + j + 48);
      v74 = *(v21 + j + 32);
      v75 = v28;
      v72 = v26;
      v73 = v27;
      v29 = swift_allocObject();
      v30 = *(v21 + j + 48);
      v32 = *(v21 + j);
      v31 = *(v21 + j + 16);
      *(v29 + 48) = *(v21 + j + 32);
      *(v29 + 64) = v30;
      *(v29 + 16) = v32;
      *(v29 + 32) = v31;
      sub_1D5C8C900(&v72, v71);
      v69[0] = v23;
      v34 = *(v23 + 16);
      v33 = *(v23 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_1D69979A0((v33 > 1), v34 + 1, 1);
        v23 = v69[0];
      }

      *(v23 + 16) = v34 + 1;
      *(v23 + 8 * v34 + 32) = v29 | 0x5000000000000000;
      if (!v24)
      {
        break;
      }

      --v24;
    }
  }

  *&v72 = v8;
  sub_1D6985C70(v23);
  sub_1D6B0BBC4(v72);

  v35 = v65;
  v36 = *(v65 + 72);
  swift_beginAccess();

  v38 = sub_1D5D6021C(v37, v36);
  v64 = sub_1D6B0ACE8(v38, 0);

  v39 = *(v35 + 88);
  v40 = *(v39 + 16);
  v41 = MEMORY[0x1E69E7CC0];
  if (v40)
  {
    v71[0] = MEMORY[0x1E69E7CC0];

    sub_1D5D24610(0, v40, 0);
    v41 = v71[0];
    v42 = (*(v66 + 80) + 32) & ~*(v66 + 80);
    v65 = v39;
    v43 = v39 + v42;
    v44 = *(v66 + 72);
    do
    {
      sub_1D5D252BC(v43, v5, type metadata accessor for FormatOption);
      v45 = swift_allocBox();
      sub_1D62E3070(v5, v46, type metadata accessor for FormatOption);
      v71[0] = v41;
      v48 = *(v41 + 16);
      v47 = *(v41 + 24);
      if (v48 >= v47 >> 1)
      {
        sub_1D5D24610((v47 > 1), v48 + 1, 1);
        v41 = v71[0];
      }

      *(v41 + 16) = v48 + 1;
      *(v41 + 8 * v48 + 32) = v45 | 0xA000000000000000;
      v43 += v44;
      --v40;
    }

    while (v40);
  }

  v49 = v68;
  swift_beginAccess();
  v50 = *(v49 + 88);
  v51 = *(v50 + 16);
  v52 = MEMORY[0x1E69E7CC0];
  if (v51)
  {
    v69[0] = MEMORY[0x1E69E7CC0];

    sub_1D5D24610(0, v51, 0);
    v52 = v69[0];
    v53 = (*(v66 + 80) + 32) & ~*(v66 + 80);
    v65 = v50;
    v54 = v50 + v53;
    v55 = *(v66 + 72);
    do
    {
      sub_1D5D252BC(v54, v5, type metadata accessor for FormatOption);
      v56 = swift_allocBox();
      sub_1D62E3070(v5, v57, type metadata accessor for FormatOption);
      v69[0] = v52;
      v59 = *(v52 + 16);
      v58 = *(v52 + 24);
      if (v59 >= v58 >> 1)
      {
        sub_1D5D24610((v58 > 1), v59 + 1, 1);
        v52 = v69[0];
      }

      *(v52 + 16) = v59 + 1;
      *(v52 + 8 * v59 + 32) = v56 | 0x5000000000000000;
      v54 += v55;
      --v51;
    }

    while (v51);
  }

  v69[0] = v41;
  sub_1D6985C44(v52);
  sub_1D6B0C068(v69[0]);

  swift_beginAccess();

  v61 = sub_1D6B0C570(v60);

  return v61;
}

void sub_1D62E0F20(double **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v11 = MEMORY[0x1E69E6720];
  sub_1D62E3300(0, &qword_1EDF43998, MEMORY[0x1E69D86D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v75 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v67 - v17;
  sub_1D62E3300(0, &unk_1EDF439A0, MEMORY[0x1E69D8558], v11);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v72 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = (&v67 - v24);
  v26 = *a1;
  v73 = *a1;
  if (a2 && (v27 = *(a2 + 74), v27 != 255))
  {
    v71 = *(a2 + 64);
    v29 = *(a2 + 72) | (v27 << 16);
    v31 = v26[2];
    v30 = v26[3];
    v33 = v26[4];
    v32 = v26[5];
    v69 = OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_layoutContext;
    v34 = type metadata accessor for GroupLayoutContext(0);
    if (HIWORD(v29))
    {
      if (HIWORD(v29) == 1)
      {
        if ((v29 & 0x100) != 0)
        {
          v68 = a3 + *(v34 + 20);
          v76.origin.x = v31;
          v76.origin.y = v30;
          v76.size.width = v33;
          v76.size.height = v32;
          Height = CGRectGetHeight(v76);
          v38 = Height + Height;
          if (v29 != 0xFF)
          {
            v38 = sub_1D62E2940(v38, a3, v68 + v69, v71, v29);
            if (v5)
            {
              return;
            }
          }
        }

        else
        {
          v74[0] = a3;
          v35 = off_1F51AF338[0];
          type metadata accessor for FormatNodeContext(0);
          v36 = v35();
          v37 = sub_1D5E02AFC(v36, v71);

          if (v5)
          {
            return;
          }

          v38 = v37;
        }

        *v25 = v38;
        v41 = MEMORY[0x1E69D8548];
      }

      else if (BYTE1(v29) == 255)
      {
        v41 = MEMORY[0x1E69D8550];
      }

      else
      {
        if ((v29 & 0x100) != 0)
        {
          v68 = a3 + *(v34 + 20);
          v77.origin.x = v31;
          v77.origin.y = v30;
          v77.size.width = v33;
          v77.size.height = v32;
          v66 = CGRectGetHeight(v77);
          v65 = v66 + v66;
          if (v29 != 0xFF)
          {
            v65 = sub_1D62E2940(v65, a3, v68 + v69, v71, v29);
            if (v5)
            {
              return;
            }
          }
        }

        else
        {
          v74[0] = a3;
          v62 = off_1F51AF338[0];
          type metadata accessor for FormatNodeContext(0);
          v63 = v62();
          v64 = sub_1D5E02AFC(v63, v71);

          if (v5)
          {
            return;
          }

          v65 = v64;
        }

        *v25 = v65;
        v41 = MEMORY[0x1E69D8520];
      }
    }

    else
    {
      v39 = sub_1D725F14C();
      if (v71)
      {
        v40 = MEMORY[0x1E69D8530];
      }

      else
      {
        v40 = MEMORY[0x1E69D8528];
      }

      (*(*(v39 - 8) + 104))(v25, *v40, v39);
      v41 = MEMORY[0x1E69D8538];
    }

    v43 = *v41;
    v44 = sub_1D725F15C();
    (*(*(v44 - 8) + 104))(v25, v43, v44);
    sub_1D725F15C();
    (*(*(v44 - 8) + 56))(v25, 0, 1, v44);
  }

  else
  {
    v28 = sub_1D725F15C();
    (*(*(v28 - 8) + 56))(v25, 1, 1, v28);
    if (!a2)
    {
      goto LABEL_22;
    }
  }

  v45 = *(a2 + 75);
  if (v45 == 2)
  {
    v47 = MEMORY[0x1E69D86C8];
  }

  else
  {
    if (v45 == 3)
    {
LABEL_22:
      v46 = sub_1D725F49C();
      (*(*(v46 - 8) + 56))(v18, 1, 1, v46);
      goto LABEL_28;
    }

    v48 = sub_1D725F5BC();
    v49 = MEMORY[0x1E69D8748];
    if ((v45 & 1) == 0)
    {
      v49 = MEMORY[0x1E69D8740];
    }

    (*(*(v48 - 8) + 104))(v18, *v49, v48);
    v47 = MEMORY[0x1E69D86B8];
  }

  v50 = *v47;
  v51 = sub_1D725F49C();
  v52 = *(v51 - 8);
  (*(v52 + 104))(v18, v50, v51);
  (*(v52 + 56))(v18, 0, 1, v51);
LABEL_28:
  v53 = *(a4 + 56);
  v70 = a5;
  v71 = v5;
  if (v53 && (v54 = *(v53 + 16), swift_beginAccess(), *(*(v54 + 16) + 16)))
  {
  }

  else
  {
    v54 = 0;
  }

  v55 = *(a4 + 104);
  LODWORD(v69) = *(a4 + 112);
  v56 = MEMORY[0x1E69D8558];
  v57 = v72;
  sub_1D62E2534(v25, v72, &unk_1EDF439A0, MEMORY[0x1E69D8558]);
  v58 = MEMORY[0x1E69D86D0];
  v59 = v75;
  sub_1D62E2534(v18, v75, &qword_1EDF43998, MEMORY[0x1E69D86D0]);
  type metadata accessor for FormatSupplementaryNodeLayoutAttributes(0);
  v60 = swift_allocObject();
  *(v60 + 16) = v73;
  *(v60 + 24) = a2;
  *(v60 + 32) = v54;
  *(v60 + 40) = v55;
  *(v60 + 48) = v69;
  sub_1D62E2534(v57, v60 + OBJC_IVAR____TtC8NewsFeed39FormatSupplementaryNodeLayoutAttributes_pinTrait, &unk_1EDF439A0, v56);
  sub_1D62E2534(v59, v60 + OBJC_IVAR____TtC8NewsFeed39FormatSupplementaryNodeLayoutAttributes_rubberbandTrait, &qword_1EDF43998, v58);
  v61 = swift_allocObject();
  *(v61 + 16) = v60;
  *v70 = v61 | 0x3000000000000000;
}

void sub_1D62E1698(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  sub_1D5CA4820(0);
  v34 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v27[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v27[-v12];
  v15 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  v16 = (*(v14 + 8))(v15, v14) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__supplementaries;
  swift_beginAccess();
  v17 = *(v16 + 8);

  if (*(v17 + 16) && (v18 = sub_1D5B69D90(*(v3 + 32), *(v3 + 40)), (v19 & 1) != 0))
  {
    sub_1D5D252BC(*(v17 + 56) + *(v34 + 72) * v18, v9, sub_1D5CA4820);
    sub_1D62E3070(v9, v13, sub_1D5CA4820);

    v20 = v13[5];
    v32 = v13[4];
    v33[0] = v20;
    *(v33 + 9) = *(v13 + 89);
    v21 = v13[1];
    v28 = *v13;
    v29 = v21;
    v22 = v13[3];
    v30 = v13[2];
    v31 = v22;
    sub_1D62E340C(&v28, v27);
    sub_1D62E32A0(v13, sub_1D5CA4820);
    v23 = v33[0];
    a2[4] = v32;
    a2[5] = v23;
    *(a2 + 89) = *(v33 + 9);
    v24 = v29;
    *a2 = v28;
    a2[1] = v24;
    v25 = v31;
    a2[2] = v30;
    a2[3] = v25;
  }

  else
  {

    type metadata accessor for FormatLayoutError(0);
    sub_1D62E2458(&qword_1EDF2F560, 255, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
    swift_allocError();
    *v26 = v3;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }
}

uint64_t sub_1D62E1964(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v102 = a2;
  v5 = type metadata accessor for GroupLayoutContext(0);
  v92 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v93 = v7;
  v96 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for FormatOption(0);
  v8 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101, v9);
  v11 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = *(a1 + 72);
  v12 = *(a1 + 88);
  swift_beginAccess();
  v13 = v3[3];
  v98 = v3[2];
  v99 = v13;
  v14 = *(v12 + 16);
  v100 = v3;
  if (v14)
  {
    *&v105 = MEMORY[0x1E69E7CC0];

    sub_1D5D24610(0, v14, 0);
    v15 = v105;
    v16 = *(v8 + 80);
    v95 = v12;
    v17 = v12 + ((v16 + 32) & ~v16);
    v103 = v8;
    v18 = *(v8 + 72);
    do
    {
      sub_1D5D252BC(v17, v11, type metadata accessor for FormatOption);
      v19 = swift_allocBox();
      sub_1D62E3070(v11, v20, type metadata accessor for FormatOption);
      *&v105 = v15;
      v22 = *(v15 + 16);
      v21 = *(v15 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1D5D24610((v21 > 1), v22 + 1, 1);
        v15 = v105;
      }

      *(v15 + 16) = v22 + 1;
      *(v15 + 8 * v22 + 32) = v19 | 0xA000000000000000;
      v17 += v18;
      --v14;
    }

    while (v14);

    v3 = v100;
    v8 = v103;
  }

  else
  {

    v15 = MEMORY[0x1E69E7CC0];
  }

  swift_beginAccess();
  v23 = v3[11];
  v24 = *(v23 + 16);
  v25 = MEMORY[0x1E69E7CC0];
  if (v24)
  {
    *&v105 = MEMORY[0x1E69E7CC0];

    sub_1D5D24610(0, v24, 0);
    v25 = v105;
    v26 = *(v8 + 80);
    v95 = v23;
    v27 = v23 + ((v26 + 32) & ~v26);
    v103 = *(v8 + 72);
    do
    {
      sub_1D5D252BC(v27, v11, type metadata accessor for FormatOption);
      v28 = swift_allocBox();
      sub_1D62E3070(v11, v29, type metadata accessor for FormatOption);
      *&v105 = v25;
      v31 = *(v25 + 16);
      v30 = *(v25 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_1D5D24610((v30 > 1), v31 + 1, 1);
        v25 = v105;
      }

      *(v25 + 16) = v31 + 1;
      *(v25 + 8 * v31 + 32) = v28 | 0x5000000000000000;
      v27 += v103;
      --v24;
    }

    while (v24);

    v3 = v100;
  }

  *&v105 = v15;
  sub_1D6985C44(v25);
  v32 = v105;
  swift_beginAccess();
  v33 = v97;

  v35 = sub_1D5D6021C(v34, v33);
  swift_beginAccess();
  v36 = v3[12];
  v113 = 0;
  memset(v112, 0, sizeof(v112));
  v111 = 0;
  v37 = v102;

  v101 = sub_1D6E8DE74(v98, v99);

  swift_beginAccess();
  v111 = 1;
  v38 = v37;

  v39 = *(v37 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_selectors);
  if (*(v35 + 16) && (sub_1D6D0A744(v39, v35), (v40 & 1) == 0))
  {
    v41 = 1;
    v111 = 1;

    v39 = sub_1D5D6021C(v42, v39);
  }

  else
  {

    v41 = 0;
  }

  v43 = *(v32 + 16);
  v103 = v35;
  v97 = v39;
  if (v43)
  {
    v44 = *(v38 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options);
    v45 = sub_1D6F619D8(v32);

    if (v45)
    {
      v98 = v45;
      v94 = 1;
      v111 = 1;
    }

    else
    {
      v94 = v41;

      v98 = v44;
    }

    v38 = v102;
  }

  else
  {
    v94 = v41;

    v98 = *(v38 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options);
  }

  v46 = *(v38 + 40);
  v95 = *(v38 + 32);

  v99 = sub_1D6BEC5F4(v36, v38, &v111);

  v48 = *(v38 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary);
  v47 = *(v38 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 8);
  v49 = *(v38 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 16);
  v50 = *(v38 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 24);
  v51 = *(v38 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 32);
  v52 = *(v38 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 40);
  v53 = *(v38 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 48);
  sub_1D62E312C(v48, v47, v49, v50, v51, v52, *(v38 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 48));
  v55 = sub_1D6BEC878(v112, v38, &v111, v54);
  v57 = *(v38 + 80);
  v58 = *(v38 + 112);
  v108 = *(v38 + 96);
  v109 = v58;
  v110 = *(v38 + 128);
  v59 = *(v38 + 64);
  v105 = *(v38 + 48);
  v106 = v59;
  v107 = v57;
  v100 = v46;
  if (v111 == 1)
  {
    v83 = v48;
    v84 = v56;
    v85 = v49;
    v86 = v55;
    v87 = v53;
    v88 = v52;
    v89 = v51;
    v90 = v50;
    v91 = v47;
    if (v94)
    {
      sub_1D62E3300(0, &qword_1EDF3BDD0, type metadata accessor for FormatContextLayoutOptions, MEMORY[0x1E69D63A0]);
      v60 = v96;
      sub_1D5D252BC(v38 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_layoutContext, v96, type metadata accessor for GroupLayoutContext);
      v61 = (*(v92 + 80) + 16) & ~*(v92 + 80);
      v62 = (v93 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
      v63 = swift_allocObject();
      sub_1D62E3070(v60, v63 + v61, type metadata accessor for GroupLayoutContext);
      v64 = v97;
      v65 = v98;
      *(v63 + v62) = v98;
      *(v63 + ((v62 + 15) & 0xFFFFFFFFFFFFFFF8)) = v64;
      sub_1D5CF6A5C(&v105, v104);

      v66 = sub_1D725A80C();
      v38 = v102;
      v67 = v66;
    }

    else
    {
      v68 = *(v38 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_lazyContextLayoutOptions);
      sub_1D5CF6A5C(&v105, v104);
      v67 = v68;

      v60 = v96;
      v64 = v97;
      v65 = v98;
    }

    v69 = *(v38 + 16);
    sub_1D5D252BC(v38 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_layoutContext, v60, type metadata accessor for GroupLayoutContext);
    v70 = *(v38 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_debugData);
    sub_1D5B68374(v38 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_logger, v104);
    type metadata accessor for FormatNodeBinderContext(0);
    v38 = swift_allocObject();
    v71 = v101;
    *(v38 + 16) = v69;
    *(v38 + 24) = v71;
    v72 = v108;
    v73 = v109;
    *(v38 + 80) = v107;
    *(v38 + 96) = v72;
    *(v38 + 112) = v73;
    *(v38 + 128) = v110;
    v74 = v106;
    *(v38 + 48) = v105;
    *(v38 + 64) = v74;
    *(v38 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options) = v65;
    *(v38 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_selectors) = v64;
    sub_1D5D252BC(v60, v38 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_layoutContext, type metadata accessor for GroupLayoutContext);
    v75 = v100;
    *(v38 + 32) = v95;
    *(v38 + 40) = v75;
    *(v38 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_blocks) = v99;
    *(v38 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_debugData) = v70;
    sub_1D5B68374(v104, v38 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_logger);
    v76 = v38 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary;
    v77 = v91;
    *v76 = v83;
    *(v76 + 8) = v77;
    v78 = v89;
    v79 = v90;
    *(v76 + 16) = v85;
    *(v76 + 24) = v79;
    *(v76 + 32) = v78;
    *(v76 + 40) = v88;
    *(v76 + 48) = v87;
    v80 = (v38 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack);
    v81 = v84;
    *v80 = v86;
    v80[1] = v81;

    __swift_destroy_boxed_opaque_existential_1(v104);
    sub_1D62E32A0(v60, type metadata accessor for GroupLayoutContext);
    sub_1D62E3214(v112);
    *(v38 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_lazyContextLayoutOptions) = v67;
  }

  else
  {

    sub_1D62E31A0(v48, v47, v49, v50, v51, v52, v53);

    sub_1D62E3214(v112);
  }

  return v38;
}

uint64_t sub_1D62E2354(uint64_t a1, uint64_t a2)
{
  result = sub_1D62E2458(&qword_1EC885820, a2, type metadata accessor for FormatSupplementaryNode, &protocol conformance descriptor for FormatSupplementaryNode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D62E23AC(void *a1, uint64_t a2)
{
  a1[1] = sub_1D62E2458(&qword_1EDF26FD0, a2, type metadata accessor for FormatSupplementaryNode, &protocol conformance descriptor for FormatSupplementaryNode);
  a1[2] = sub_1D62E2458(&qword_1EDF0D320, v3, type metadata accessor for FormatSupplementaryNode, &protocol conformance descriptor for FormatSupplementaryNode);
  result = sub_1D62E2458(&qword_1EC885828, v4, type metadata accessor for FormatSupplementaryNode, &protocol conformance descriptor for FormatSupplementaryNode);
  a1[3] = result;
  return result;
}

uint64_t sub_1D62E2458(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1D62E24A0(uint64_t a1, uint64_t a2)
{
  result = sub_1D62E2458(&qword_1EC885830, a2, type metadata accessor for FormatSupplementaryNode, &protocol conformance descriptor for FormatSupplementaryNode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D62E2534(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D62E3300(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D62E25B4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6, uint64_t a7, uint64_t a8)
{
  v40 = a8;
  v10 = *(a2[6] + 16);
  result = v10 + 4;
  if (__OFADD__(v10, 4))
  {
    __break(1u);
  }

  else
  {
    v30 = a2[6];
    sub_1D7259E0C();
    v36[0] = a1;
    swift_getKeyPath();
    v34 = MEMORY[0x1E69E6158];
    v35 = MEMORY[0x1E69D74F0];
    v32 = a3;
    v33 = a4;
    sub_1D5EB5368(0);
    sub_1D62E2458(&qword_1EDF3C040, 255, sub_1D5EB5368, MEMORY[0x1E69D7158]);
    sub_1D62E2BE8(v15);

    sub_1D7259A0C();

    __swift_destroy_boxed_opaque_existential_1(&v32);
    v36[0] = a1;
    swift_getKeyPath();
    v17 = *a2;
    v16 = a2[1];
    v34 = MEMORY[0x1E69E6158];
    v35 = MEMORY[0x1E69D74F0];
    v32 = v17;
    v33 = v16;

    sub_1D7259A0C();

    __swift_destroy_boxed_opaque_existential_1(&v32);
    v37 = a1;
    swift_getKeyPath();
    swift_beginAccess();
    v19 = *(a5 + 16);
    v18 = *(a5 + 24);
    v34 = MEMORY[0x1E69E6158];
    v35 = MEMORY[0x1E69D74F0];
    v32 = v19;
    v33 = v18;

    sub_1D7259A0C();

    result = __swift_destroy_boxed_opaque_existential_1(&v32);
    v20 = *(a2 + 104);
    if (v20 != 7)
    {
      v37 = a1;
      swift_getKeyPath();
      v34 = &type metadata for FormatAccessibilityRole;
      v35 = sub_1D62E2C6C();
      LOBYTE(v32) = v20;
      sub_1D62E2458(&qword_1EDF3C178, 255, sub_1D62E2CC0, MEMORY[0x1E69D6F60]);
      sub_1D7259A0C();

      result = __swift_destroy_boxed_opaque_existential_1(&v32);
    }

    if (v10)
    {
      for (i = v30 + 32; ; i += 104)
      {
        v22 = *i;
        v23 = *(i + 32);
        v38[1] = *(i + 16);
        v38[2] = v23;
        v38[0] = v22;
        v24 = *(i + 48);
        v25 = *(i + 64);
        v26 = *(i + 80);
        v39 = *(i + 96);
        v38[4] = v25;
        v38[5] = v26;
        v38[3] = v24;
        v27 = *(a5 + 16);
        v28 = *(a5 + 24);
        sub_1D5C5C4CC(v38, &v32);

        sub_1D6B0A84C(v27, v28);

        v29 = sub_1D6B0B228(0, 0);

        sub_1D6FBF7BC(a1, v29, v40);
        if (v8)
        {
          break;
        }

        result = sub_1D5C5C540(v38);
        if (!--v10)
        {
          return result;
        }
      }

      return sub_1D5C5C540(v38);
    }
  }

  return result;
}

double sub_1D62E2940(double a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 > 1u)
  {
    if (a5 != 2)
    {
      if (a4)
      {
        if (a4 == 1)
        {
          sub_1D7259CDC();
          if (v10 == 0.0)
          {
            return a1;
          }
        }

        else
        {
          v26 = off_1F51AF338[0];
          type metadata accessor for FormatNodeContext(0);
          v28 = v26();
          v29 = sub_1D5E02AFC(v28, a4);

          if (v5)
          {
            return a1;
          }

          v10 = v29;
          if (v29 == 0.0)
          {
            return a1;
          }
        }
      }

      else
      {
        sub_1D7259CEC();
        if (v10 == 0.0)
        {
          return a1;
        }
      }

      return a1 / v10;
    }

    if (a4)
    {
      if (a4 == 1)
      {
        sub_1D7259CDC();
        return v8 * a1;
      }

      else
      {
        v18 = off_1F51AF338[0];
        type metadata accessor for FormatNodeContext(0);
        v20 = v18();
        v21 = sub_1D5E02AFC(v20, a4);

        if (!v5)
        {
          return v21 * a1;
        }
      }
    }

    else
    {
      sub_1D7259CEC();
      return v12 * a1;
    }
  }

  else if (a5)
  {
    if (a4)
    {
      if (a4 == 1)
      {
        sub_1D7259CDC();
        return a1 - v9;
      }

      else
      {
        v22 = off_1F51AF338[0];
        type metadata accessor for FormatNodeContext(0);
        v24 = v22();
        v25 = sub_1D5E02AFC(v24, a4);

        if (!v5)
        {
          return a1 - v25;
        }
      }
    }

    else
    {
      sub_1D7259CEC();
      return a1 - v13;
    }
  }

  else if (a4)
  {
    if (a4 == 1)
    {
      sub_1D7259CDC();
      return v7 + a1;
    }

    else
    {
      v14 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext(0);
      v16 = v14();
      v17 = sub_1D5E02AFC(v16, a4);

      if (!v5)
      {
        return v17 + a1;
      }
    }
  }

  else
  {
    sub_1D7259CEC();
    return v11 + a1;
  }

  return a1;
}

unint64_t sub_1D62E2BE8(__n128 a1)
{
  result = qword_1EDF3C168;
  if (!qword_1EDF3C168)
  {
    sub_1D62E30D8(255, &qword_1EDF3C160, MEMORY[0x1E69E6158], MEMORY[0x1E69D74F0], MEMORY[0x1E69D6F58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3C168);
  }

  return result;
}

unint64_t sub_1D62E2C6C()
{
  result = qword_1EDF27778;
  if (!qword_1EDF27778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27778);
  }

  return result;
}

void sub_1D62E2CC0(uint64_t a1)
{
  if (!qword_1EDF3C170)
  {
    sub_1D62E2D24();
    sub_1D62E2D74();
    v1 = sub_1D725995C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF3C170);
    }
  }
}

void sub_1D62E2D24()
{
  if (!qword_1EDF27760)
  {
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF27760);
    }
  }
}

unint64_t sub_1D62E2D74()
{
  result = qword_1EDF27758;
  if (!qword_1EDF27758)
  {
    sub_1D62E2D24();
    sub_1D62E2C6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27758);
  }

  return result;
}

double sub_1D62E2DEC(double a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 > 1u)
  {
    if (a5 != 2)
    {
      if (a4)
      {
        if (a4 == 1)
        {
          sub_1D7259CDC();
          if (v10 == 0.0)
          {
            return a1;
          }
        }

        else
        {
          v26 = off_1F513B080[0];
          type metadata accessor for FormatDecorationContext(0);
          v28 = v26();
          v29 = sub_1D5E02AFC(v28, a4);

          if (v5)
          {
            return a1;
          }

          v10 = v29;
          if (v29 == 0.0)
          {
            return a1;
          }
        }
      }

      else
      {
        sub_1D7259CEC();
        if (v10 == 0.0)
        {
          return a1;
        }
      }

      return a1 / v10;
    }

    if (a4)
    {
      if (a4 == 1)
      {
        sub_1D7259CDC();
        return v8 * a1;
      }

      else
      {
        v18 = off_1F513B080[0];
        type metadata accessor for FormatDecorationContext(0);
        v20 = v18();
        v21 = sub_1D5E02AFC(v20, a4);

        if (!v5)
        {
          return v21 * a1;
        }
      }
    }

    else
    {
      sub_1D7259CEC();
      return v12 * a1;
    }
  }

  else if (a5)
  {
    if (a4)
    {
      if (a4 == 1)
      {
        sub_1D7259CDC();
        return a1 - v9;
      }

      else
      {
        v22 = off_1F513B080[0];
        type metadata accessor for FormatDecorationContext(0);
        v24 = v22();
        v25 = sub_1D5E02AFC(v24, a4);

        if (!v5)
        {
          return a1 - v25;
        }
      }
    }

    else
    {
      sub_1D7259CEC();
      return a1 - v13;
    }
  }

  else if (a4)
  {
    if (a4 == 1)
    {
      sub_1D7259CDC();
      return v7 + a1;
    }

    else
    {
      v14 = off_1F513B080[0];
      type metadata accessor for FormatDecorationContext(0);
      v16 = v14();
      v17 = sub_1D5E02AFC(v16, a4);

      if (!v5)
      {
        return v17 + a1;
      }
    }
  }

  else
  {
    sub_1D7259CEC();
    return v11 + a1;
  }

  return a1;
}

uint64_t sub_1D62E3070(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D62E30D8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t sub_1D62E312C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 != -1)
  {
    return sub_1D62E3144();
  }

  return v7;
}

uint64_t sub_1D62E3144()
{
}

double sub_1D62E31A0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 != -1)
  {
    return sub_1D62E31B8();
  }

  return v7;
}

double sub_1D62E31B8()
{

  return result;
}

uint64_t sub_1D62E3214(uint64_t a1)
{
  sub_1D62E3300(0, &qword_1EDF34AB8, sub_1D5EFF46C, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D62E32A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D62E3300(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D62E3364()
{
  type metadata accessor for GroupLayoutContext(0);

  return sub_1D6BECEAC();
}

uint64_t SharingIssueActivity.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D62E34F8()
{
  result = qword_1EC885838;
  if (!qword_1EC885838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885838);
  }

  return result;
}

void sub_1D62E354C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 8);
  v5 = [objc_opt_self() generalPasteboard];
  if (v4)
  {
    v6 = sub_1D726203C();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  [v5 setString_];
}

uint64_t sub_1D62E35E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 8);
  sub_1D725A9FC();
  return sub_1D725A9CC() & (v4 != 0);
}

uint64_t FormatShareAttributionNodeContent.sharedItem(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5[3] = type metadata accessor for FormatNodeContext(0);
  v5[4] = &off_1F51AF328;
  v5[0] = a1;

  sub_1D6D9723C(v5, a2);
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

unint64_t sub_1D62E36A4(uint64_t a1)
{
  result = sub_1D62E36CC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D62E36CC()
{
  result = qword_1EC885840;
  if (!qword_1EC885840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885840);
  }

  return result;
}

unint64_t sub_1D62E3720(void *a1)
{
  a1[1] = sub_1D62E3758();
  a1[2] = sub_1D62E37AC();
  result = sub_1D62E3800();
  a1[3] = result;
  return result;
}

unint64_t sub_1D62E3758()
{
  result = qword_1EDF1E448;
  if (!qword_1EDF1E448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1E448);
  }

  return result;
}

unint64_t sub_1D62E37AC()
{
  result = qword_1EDF07D30;
  if (!qword_1EDF07D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF07D30);
  }

  return result;
}

unint64_t sub_1D62E3800()
{
  result = qword_1EC885848;
  if (!qword_1EC885848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885848);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed22DebugFormatLogSeverityO(unint64_t *a1)
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

uint64_t sub_1D62E38B8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 8))
  {
    return (*a1 + 2147483643);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 5)
  {
    return (v3 - 4);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D62E3918(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

void *sub_1D62E3968(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *result = a2;
  }

  return result;
}

id sub_1D62E39A8(uint64_t a1)
{
  v2 = objc_opt_self();
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      v5 = [v2 systemOrangeColor];
      v6 = [v5 colorWithAlphaComponent_];
      goto LABEL_13;
    }

    if (a1 == 4)
    {
      v5 = [v2 systemYellowColor];
      v6 = [v5 colorWithAlphaComponent_];
LABEL_13:
      v7 = v6;

      return v7;
    }

LABEL_10:
    v5 = [v2 systemRedColor];
    v6 = [v5 colorWithAlphaComponent_];
    goto LABEL_13;
  }

  if (a1 == 1)
  {
    v5 = [v2 systemBlueColor];
    v6 = [v5 colorWithAlphaComponent_];
    goto LABEL_13;
  }

  if (a1 != 2)
  {
    goto LABEL_10;
  }

  v3 = [v2 systemBackgroundColor];

  return v3;
}

uint64_t sub_1D62E3B04(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = swift_allocObject();
  sub_1D62E3BBC(a1, v2);
  return v4;
}

void sub_1D62E3B54()
{
  if (!qword_1EDF3BB20)
  {
    v0 = sub_1D725AE8C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3BB20);
    }
  }
}

uint64_t *sub_1D62E3BBC(uint64_t *a1, char a2)
{
  v4 = *v2;
  v5 = *a1;
  v6 = a1[3];
  v7 = *(a1 + 32);
  sub_1D62E3B54();
  swift_allocObject();
  v2[3] = sub_1D725AE2C();
  v2[4] = v5;
  *(v2 + 5) = *(a1 + 1);
  v2[7] = v6;
  *(v2 + 64) = v7;
  type metadata accessor for FeedServiceState.GapState(255, *(v4 + 80), *(v4 + 88), v8);
  sub_1D725AE8C();
  v2[2] = sub_1D725AE1C();
  return v2;
}

Swift::Void __swiftcall FeedServiceState.markGapOnScreen(_:)(Swift::Bool a1)
{
  type metadata accessor for FeedServiceState.GapState(255, *(*v2 + 80), *(*v2 + 88), v1);
  swift_getWitnessTable();
  sub_1D725AE7C();
}

Swift::Void __swiftcall FeedServiceState.markNonGapOnScreen()()
{
  type metadata accessor for FeedServiceState.GapState(255, *(*v1 + 80), *(*v1 + 88), v0);
  swift_getWitnessTable();
  sub_1D725AE6C();
}

char *sub_1D62E3DE4@<X0>(char *result@<X0>, char *a2@<X8>)
{
  v2 = *result;
  if (!*result)
  {
    v2 = 2;
  }

  *a2 = v2;
  return result;
}

void *sub_1D62E3E3C@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (*result == -1)
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

uint64_t FeedServiceState.deinit()
{

  v1 = *(v0 + 48);

  return v0;
}

uint64_t FeedServiceState.__deallocating_deinit()
{
  FeedServiceState.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D62E3F20()
{
  sub_1D5B63EB4(0, &qword_1EDF3B2C0, MEMORY[0x1E69D8788]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - v4;
  sub_1D5B63EB4(0, &qword_1EDF3B168, MEMORY[0x1E69D8790]);
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D725F7CC();
  qword_1EC885850 = result;
  return result;
}

double static Commands.Issue.openTableOfContents.getter()
{
  if (qword_1EC87D7D8 != -1)
  {
    swift_once();
  }

  return result;
}

void sub_1D62E40B8()
{
  v0 = sub_1D725DC6C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC87D7D8 != -1)
  {
    swift_once();
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = objc_opt_self();

  v7 = [v6 bundleForClass_];
  sub_1D725811C();

  v8 = sub_1D726203C();
  v9 = [objc_opt_self() systemImageNamed_];

  if (v9)
  {
    (*(v1 + 104))(v4, *MEMORY[0x1E69D7B48], v0);
    sub_1D725D3DC();
    swift_allocObject();
    sub_1D725D39C();
  }

  else
  {
    __break(1u);
  }
}

void sub_1D62E4318(uint64_t a1)
{
  if (!qword_1EDF17C40)
  {
    type metadata accessor for SportsDataVisualizationResponseData(255);
    sub_1D62E4A90(&qword_1EDF15F90, type metadata accessor for SportsDataVisualizationResponseData, &unk_1D731AA0C);
    sub_1D62E4A90(&qword_1EDF15F98, type metadata accessor for SportsDataVisualizationResponseData, &unk_1D731A9E4);
    v1 = sub_1D725AEBC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF17C40);
    }
  }
}

uint64_t type metadata accessor for SportsDataVisualizationResponse(uint64_t a1)
{
  result = qword_1EDF091D0;
  if (!qword_1EDF091D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D62E4444(uint64_t a1)
{
  sub_1D62E4318(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1D62E44B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  sub_1D62E4318(0);
  v5 = v4;
  v23 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v24 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D62E4A2C(0, &qword_1EDF03908, MEMORY[0x1E69E6F48]);
  v9 = v8;
  v22 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v20 - v11;
  v13 = type metadata accessor for SportsDataVisualizationResponse(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D62E4974();
  sub_1D7264B0C();
  if (!v2)
  {
    v17 = v22;
    v18 = v23;
    sub_1D62E4A90(&qword_1EDF17C48, sub_1D62E4318, MEMORY[0x1E69D6560]);
    sub_1D726431C();
    (*(v17 + 8))(v12, v9);
    (*(v18 + 32))(v16, v24, v5);
    sub_1D62E49C8(v16, v21);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D62E475C(uint64_t a1)
{
  v2 = sub_1D62E4974();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D62E4798(uint64_t a1)
{
  v2 = sub_1D62E4974();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D62E47EC(void *a1, __n128 a2)
{
  sub_1D62E4A2C(0, &qword_1EC885858, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D62E4974();
  sub_1D7264B5C();
  sub_1D62E4318(0);
  sub_1D62E4A90(&qword_1EC885860, sub_1D62E4318, MEMORY[0x1E69D6558]);
  sub_1D726443C();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1D62E4974()
{
  result = qword_1EDF09230;
  if (!qword_1EDF09230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09230);
  }

  return result;
}

uint64_t sub_1D62E49C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsDataVisualizationResponse(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D62E4A2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D62E4974();
    v7 = a3(a1, &type metadata for SportsDataVisualizationResponse.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D62E4A90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D62E4AEC()
{
  result = qword_1EC885868;
  if (!qword_1EC885868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885868);
  }

  return result;
}

unint64_t sub_1D62E4B44()
{
  result = qword_1EDF09220;
  if (!qword_1EDF09220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09220);
  }

  return result;
}

unint64_t sub_1D62E4B9C()
{
  result = qword_1EDF09228;
  if (!qword_1EDF09228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09228);
  }

  return result;
}

uint64_t sub_1D62E4BF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 72);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4 > 1)
  {
    if (v4 == 2)
    {
    }
  }

  else
  {
    v6 = sub_1D72646CC();

    if ((v6 & 1) == 0)
    {
      v5 = &unk_1F50F43D0;
    }
  }

  sub_1D725A7EC();
  v7 = sub_1D6E465F4();

  v8 = sub_1D5EEFCA0(v5, v7);

  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v11 = v10;
  swift_unknownObjectRetain();
  PuzzleShareData.init(puzzleHistoryItem:)(v10, v15);
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      swift_unknownObjectRetain();
      v12 = 0;
      goto LABEL_13;
    }

    v12 = 0;
  }

  else
  {
    v12 = sub_1D72646CC() ^ 1;
  }

  swift_unknownObjectRetain();

LABEL_13:
  v13 = v15[1];
  *(a2 + 8) = v15[0];
  *a2 = v9;
  *(a2 + 24) = v13;
  *(a2 + 40) = v16[0];
  *(a2 + 50) = *(v16 + 10);
  *(a2 + 66) = 13;
  *(a2 + 72) = v8;
  *(a2 + 80) = v9;
  *(a2 + 88) = v12 & 1 | 0x30;
  type metadata accessor for FormatAction(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t FormatPuzzleBinding.Action.hashValue.getter()
{
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](0);
  return sub_1D7264A5C();
}

unint64_t sub_1D62E4E80()
{
  result = qword_1EC885870;
  if (!qword_1EC885870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885870);
  }

  return result;
}

unint64_t sub_1D62E4ED4(uint64_t a1)
{
  result = sub_1D62E4EFC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D62E4EFC()
{
  result = qword_1EC885878;
  if (!qword_1EC885878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885878);
  }

  return result;
}

unint64_t sub_1D62E4F50(void *a1)
{
  a1[1] = sub_1D62E4F88();
  a1[2] = sub_1D62E4FDC();
  result = sub_1D62E4E80();
  a1[3] = result;
  return result;
}

unint64_t sub_1D62E4F88()
{
  result = qword_1EDF2C160;
  if (!qword_1EDF2C160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2C160);
  }

  return result;
}

unint64_t sub_1D62E4FDC()
{
  result = qword_1EDF0F998;
  if (!qword_1EDF0F998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0F998);
  }

  return result;
}

void sub_1D62E5070(uint64_t a1@<X0>, void *a2@<X8>)
{
  v50 = sub_1D72602FC();
  v4 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50, v5);
  v49 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v48 = v40 - v9;
  v53 = type metadata accessor for FormatInspectionItem(0);
  v47 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53, v10);
  v12 = (v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_1D726032C();
  v14 = *(v13 + 16);
  if (v14)
  {
    v41 = a1;
    v42 = a2;
    v54 = MEMORY[0x1E69E7CC0];
    sub_1D6997AF0(0, v14, 0);
    v15 = v54;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v18 = *(v16 + 64);
    v40[1] = v13;
    v19 = v13 + ((v18 + 32) & ~v18);
    v44 = *(v16 + 56);
    v45 = v17;
    v43 = v16 - 8;
    v46 = v16;
    v20 = v48;
    v21 = (v16 - 8);
    do
    {
      v51 = v15;
      v52 = v14;
      v22 = v50;
      v23 = v45;
      v45(v20, v19, v50);
      v24 = v49;
      v23(v49, v20, v22);
      *v12 = sub_1D72602DC();
      v12[1] = v25;
      v12[2] = 0;
      v12[3] = 0;
      v26 = (v12 + *(v53 + 24));
      v27 = v12;
      v28 = sub_1D72602EC();
      v30 = v29;
      v31 = *v21;
      (*v21)(v24, v22);
      v31(v20, v22);
      *v26 = v28;
      v26[1] = v30;
      v12 = v27;
      v32 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      v33 = *(*(v32 - 8) + 56);
      v34 = v32;
      v15 = v51;
      v33(v26, 0, 1, v34);
      v35 = v27 + *(v53 + 28);
      *v35 = 0;
      *(v35 + 8) = 0;
      *(v35 + 16) = -1;
      v54 = v15;
      v37 = *(v15 + 16);
      v36 = *(v15 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_1D6997AF0((v36 > 1), v37 + 1, 1);
        v15 = v54;
      }

      *(v15 + 16) = v37 + 1;
      sub_1D613ADAC(v27, v15 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v37);
      v19 += v44;
      v14 = v52 - 1;
    }

    while (v52 != 1);
    v38 = sub_1D726035C();
    (*(*(v38 - 8) + 8))(v41, v38);

    a2 = v42;
  }

  else
  {

    v39 = sub_1D726035C();
    (*(*(v39 - 8) + 8))(a1, v39);
    v15 = MEMORY[0x1E69E7CC0];
  }

  *a2 = 0xD000000000000019;
  a2[1] = 0x80000001D73D10C0;
  a2[2] = 0;
  a2[3] = 0;
  a2[4] = v15;
}

void sub_1D62E5478(uint64_t a1@<X0>, void *a2@<X8>)
{
  v53 = sub_1D726090C();
  v4 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53, v5);
  v52 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1D726031C();
  v7 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51, v8);
  v50 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1D726035C();
  v10 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49, v11);
  v48 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FormatInspectionItem(0);
  v46 = *(v13 - 8);
  v47 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = (&v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(a1 + 16);
  if (v17)
  {
    v39 = a2;
    v56 = MEMORY[0x1E69E7CC0];
    sub_1D6997AF0(0, v17, 0);
    v18 = v56;
    v20 = *(v10 + 16);
    v19 = v10 + 16;
    v21 = (*(v19 + 64) + 32) & ~*(v19 + 64);
    v38 = a1;
    v22 = a1 + v21;
    v43 = *(v19 + 56);
    v44 = v20;
    v41 = (v7 + 8);
    v42 = (v4 + 8);
    v40 = (v19 - 8);
    v45 = v19;
    v23 = v49;
    do
    {
      v54 = v18;
      v55 = v17;
      v24 = v48;
      v44(v48, v22, v23);
      v25 = v50;
      sub_1D726033C();
      *v16 = sub_1D726034C();
      v16[1] = v26;
      v16[2] = 0;
      v16[3] = 0;
      v27 = v47;
      v28 = (v16 + *(v47 + 24));
      v29 = v52;
      sub_1D726030C();
      v30 = sub_1D72608FC();
      v32 = v31;
      (*v42)(v29, v53);
      (*v41)(v25, v51);
      (*v40)(v24, v23);
      *v28 = v30;
      v28[1] = v32;
      v33 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v33 - 8) + 56))(v28, 0, 1, v33);
      v34 = *(v27 + 28);
      v18 = v54;
      v35 = v16 + v34;
      *v35 = 0;
      *(v35 + 1) = 0;
      v35[16] = -1;
      v56 = v18;
      v37 = *(v18 + 16);
      v36 = *(v18 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_1D6997AF0((v36 > 1), v37 + 1, 1);
        v18 = v56;
      }

      *(v18 + 16) = v37 + 1;
      sub_1D613ADAC(v16, v18 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v37);
      v22 += v43;
      v17 = v55 - 1;
    }

    while (v55 != 1);

    a2 = v39;
  }

  else
  {

    v18 = MEMORY[0x1E69E7CC0];
  }

  *a2 = 0x79726F74736948;
  a2[1] = 0xE700000000000000;
  a2[2] = 0;
  a2[3] = 0;
  a2[4] = v18;
}

BOOL FCTagProviding.traits.getter@<W0>(uint64_t *a1@<X8>)
{
  if ([v1 asSports])
  {
    swift_unknownObjectRelease();
    v3 = 16777280;
  }

  else
  {
    v3 = 64;
  }

  if ([v1 isLocal])
  {
    v3 |= 0x2000000uLL;
  }

  v4 = [v1 isNewspaper];
  if (v4)
  {
    v3 |= 0x4000000uLL;
  }

  v5 = FCTagProviding.isTopic.getter(v4);
  if (v5)
  {
    v3 |= 0x8000000uLL;
  }

  result = FCTagProviding.isChannel.getter(v5);
  v7 = v3 | 0x10000000;
  if (!result)
  {
    v7 = v3;
  }

  *a1 = v7;
  return result;
}

uint64_t FCTagProviding.forceBasicTagMasthead.getter()
{
  v1 = [v0 asSports];
  if (v1 && (v2 = [v1 topLevelSportTagIdentifier], swift_unknownObjectRelease(), v2))
  {
    v3 = sub_1D726207C();
    v5 = v4;

    v6 = v3 == 0xD000000000000017 && 0x80000001D73D10E0 == v5;
    if (v6 || (sub_1D72646CC() & 1) != 0 || (v3 == 0xD000000000000017 ? (v7 = 0x80000001D73D1100 == v5) : (v7 = 0), v7))
    {
      v8 = 1;
    }

    else
    {
      v8 = sub_1D72646CC();
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

id FCTagProviding.iconColor.getter()
{
  v1 = [v0 asSports];
  if (v1 && (v2 = [v1 sportsType], swift_unknownObjectRelease(), v2 == 4))
  {
    v3 = [objc_opt_self() systemGray2Color];

    return v3;
  }

  else
  {
    v5 = [v0 asSports];
    if (v5)
    {
      v6 = [v5 sportsTheme];
      if (v6)
      {
        v7 = [v6 sportsPrimaryColor];
        swift_unknownObjectRelease();
        if (v7)
        {
          v8 = [v7 ne_color];
          swift_unknownObjectRelease();

          return v8;
        }
      }

      v9 = [objc_opt_self() blackColor];
      swift_unknownObjectRelease();
    }

    else
    {
      v10 = [v0 groupTitleColor];
      if (v10)
      {
        v11 = v10;
        v12 = [v10 ne_color];
      }

      else
      {
        v11 = [v0 identifier];
        if (!v11)
        {
          sub_1D726207C();
          v11 = sub_1D726203C();
        }

        v12 = [objc_opt_self() nu:v11 safeColorForIdentifier:?];
      }

      v9 = v12;
    }

    return v9;
  }
}

id sub_1D62E5CE0()
{
  result = [v0 asSports];
  if (result)
  {
    v2 = result;
    if (([result sportsLeagueType] & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      v3 = [v2 sportsSecondaryName];
      if (v3)
      {
LABEL_4:
        v4 = v3;
        v5 = sub_1D726207C();

        swift_unknownObjectRelease();
        return v5;
      }

      goto LABEL_10;
    }

    v6 = [v2 sportsType];
    if (v6 > 5)
    {
      if (v6 != 7)
      {
LABEL_10:
        swift_unknownObjectRelease();
        return 0;
      }
    }

    else if (v6 != 1)
    {
      goto LABEL_10;
    }

    v3 = [v2 sportsSecondaryName];
    if (v3)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  return result;
}

uint64_t FCTagProviding.recipeCatalogSearchURL.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  if ([v1 hasRecipes])
  {
    v4 = objc_opt_self();
    sub_1D62E7F08(0, &qword_1EDF19BA0, MEMORY[0x1E6968178]);
    sub_1D7257B5C();
    *(swift_allocObject() + 16) = xmmword_1D7273AE0;
    sub_1D726207C();
    v5 = [v2 identifier];
    sub_1D726207C();

    sub_1D7257B2C();

    v6 = sub_1D726265C();

    v7 = [v4 nss:v6 NewsURLForRecipeCatalog:?];

    sub_1D72584EC();
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = sub_1D72585BC();
  v10 = *(*(v9 - 8) + 56);

  return v10(a1, v8, 1, v9);
}

uint64_t FCTagProviding.useSimpleShareTitle.getter()
{
  if ([v0 isPuzzleHub] & 1) != 0 || (objc_msgSend(v0, sel_isPuzzleType) & 1) != 0 || (objc_msgSend(v0, sel_isFoodHub))
  {
    return 1;
  }

  else
  {
    return [v0 isRecipeCatalog];
  }
}

uint64_t FCTagProviding.localizedTagType.getter()
{
  if (![v0 asSportsEvent])
  {
    if ([v0 isFoodHub] || objc_msgSend(v0, sel_isRecipeCatalog))
    {
      goto LABEL_4;
    }

    v6 = [v0 asSports];
    if (v6)
    {
      v7 = [v6 sportsType];
      v6 = swift_unknownObjectRelease();
      if (v7 > 5)
      {
        if (v7 <= 10 || v7 == 11)
        {
          goto LABEL_4;
        }

        goto LABEL_25;
      }

      if (v7 > 2)
      {
LABEL_4:
        type metadata accessor for Localized();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v2 = [objc_opt_self() bundleForClass_];
        goto LABEL_5;
      }

      if (v7)
      {
        if (v7 == 1 || v7 == 2)
        {
          goto LABEL_4;
        }

LABEL_25:
        if (!FCTagProviding.isChannel.getter(v6) || ([v0 isLocal]) && (objc_msgSend(v0, sel_isPuzzleType))
        {
          return 0;
        }

        goto LABEL_4;
      }
    }

    if (!FCTagProviding.isChannel.getter(v6) || ([v0 isLocal] & 1) != 0)
    {
      [v0 isPuzzleType];
      type metadata accessor for Localized();
      v8 = swift_getObjCClassFromMetadata();
      v2 = [objc_opt_self() bundleForClass_];
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  swift_unknownObjectRelease();
  type metadata accessor for Localized();
  v1 = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
LABEL_5:
  v4 = sub_1D725811C();

  return v4;
}

BOOL sub_1D62E6A38(uint64_t a1, SEL *a2)
{
  v3 = [v2 *a2];
  if (v3)
  {
    swift_unknownObjectRelease();
  }

  return v3 != 0;
}

uint64_t FCTagProviding.topKArticleListID.getter()
{
  result = [v0 feedIDForBin_];
  if (result)
  {
    v2 = result;
    v3 = sub_1D726207C();
    v5 = v4;

    MEMORY[0x1DA6F9910](v3, v5);

    return 21068;
  }

  return result;
}

void FallbackTagImageStyle.init(cornerRadius:tileColor:titleFont:padding:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = objc_opt_self();
  v11 = [v10 whiteColor];
  v12 = [a1 _isSimilarToColor_withinPercentage_];

  if (v12)
  {
    v13 = [v10 blackColor];

    a1 = v13;
  }

  *a3 = a4;
  *(a3 + 8) = a1;
  *(a3 + 16) = a2;
  *(a3 + 24) = a5;
}

void FCTagProviding.createTagImage(imageSize:style:)(uint64_t *a1, uint64_t a2, double a3, double a4)
{
  v5 = v4;
  v9 = *a1;
  v11 = a1[1];
  v10 = a1[2];
  v12 = a1[3];
  v13 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  *(v14 + 32) = a4;
  *(v14 + 40) = v9;
  *(v14 + 48) = v11;
  *(v14 + 56) = v10;
  *(v14 + 64) = v12;
  *(v14 + 72) = v5;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1D62E7EB4;
  *(v15 + 24) = v14;
  v19[4] = sub_1D62E7ED0;
  v19[5] = v15;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 1107296256;
  v19[2] = sub_1D62E78B0;
  v19[3] = &block_descriptor_34;
  v16 = _Block_copy(v19);
  v17 = v11;
  v18 = v10;
  swift_unknownObjectRetain();

  [v13 imageWithActions_];

  _Block_release(v16);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
  }
}

void sub_1D62E6DD4(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  v80 = a4;
  v82 = a9;
  v79 = a3;
  v15 = sub_1D725A61C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = objc_opt_self();
  v21 = [v20 mainScreen];
  [v21 scale];
  v23 = v22;

  v24 = v23 <= 0.0;
  v25 = 1.0;
  if (!v24)
  {
    v26 = [v20 mainScreen];
    [v26 scale];
    v25 = v27;
  }

  v28 = 1.0 / v25;
  v83 = a6;
  v29 = a6 - 1.0 / v25;
  v30 = a7;
  v31 = a7 - 1.0 / v25;
  v85.origin.x = v28 * 0.5;
  v85.origin.y = v28 * 0.5;
  v85.size.width = v29;
  v85.size.height = a7 - v28;
  Width = CGRectGetWidth(v85);
  v86.origin.x = v28 * 0.5;
  v86.origin.y = v28 * 0.5;
  v86.size.width = v29;
  v86.size.height = v31;
  if (Width == CGRectGetHeight(v86) && (v87.origin.x = v28 * 0.5, v87.origin.y = v28 * 0.5, v87.size.width = v29, v87.size.height = v31, CGRectGetWidth(v87) * 0.5 == a8))
  {
    v33 = [objc_opt_self() bezierPathWithRoundedRect:v28 * 0.5 cornerRadius:{v28 * 0.5, v29, v31, a8}];
  }

  else
  {
    v33 = [objc_opt_self() bezierPathWithRoundedRect:-1 byRoundingCorners:v28 * 0.5 cornerRadii:{v28 * 0.5, v29, v31, a8, a8}];
  }

  v34 = v33;
  v35 = [a1 CGContext];
  CGContextSetLineWidth(v35, 1.0 / v28);

  v36 = [a1 CGContext];
  v81 = v34;
  v37 = [v34 CGPath];
  CGContextAddPath(v36, v37);

  v38 = [a1 CGContext];
  v39 = [a2 CGColor];
  CGContextSetStrokeColorWithColor(v38, v39);

  v40 = [a1 CGContext];
  v41 = [a2 CGColor];
  CGContextSetFillColorWithColor(v40, v41);

  v42 = [a1 CGContext];
  CGContextClosePath(v42);

  v43 = [a1 CGContext];
  (*(v16 + 104))(v19, *MEMORY[0x1E695EEB8], v15);
  sub_1D7262DBC();

  (*(v16 + 8))(v19, v15);
  v44 = sub_1D62E751C(v80);
  v45 = sub_1D62E7628(a5);
  v46 = v30;
  if (v47)
  {
    v48 = v45;

    v78 = v48;
    v49 = v83;
  }

  else
  {
    v49 = v83;
    v78 = v44;
  }

  *v84 = a8;
  v84[1] = a2;
  v84[2] = v79;
  v50 = v82;
  *&v84[3] = v82;
  v51 = sub_1D62E7824(v84);
  v52 = objc_allocWithZone(MEMORY[0x1E69DB7C8]);
  v53 = [v52 init];
  [v53 setAlignment_];
  [v53 setLineBreakMode_];
  sub_1D62E7F08(0, &qword_1EDF194E0, sub_1D5C09DD4);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7279970;
  v55 = *MEMORY[0x1E69DB688];
  *(inited + 32) = *MEMORY[0x1E69DB688];
  v56 = sub_1D5B5A498(0, &qword_1EDF1A840, 0x1E69DB7C8);
  *(inited + 40) = v53;
  v57 = *MEMORY[0x1E69DB648];
  *(inited + 64) = v56;
  *(inited + 72) = v57;
  v58 = sub_1D5B5A498(0, &qword_1EDF1A720, 0x1E69DB878);
  *(inited + 80) = v51;
  v59 = *MEMORY[0x1E69DB650];
  *(inited + 104) = v58;
  *(inited + 112) = v59;
  v60 = objc_opt_self();
  v61 = v55;
  v62 = v53;
  v63 = v57;
  v64 = v51;
  v65 = v59;
  v66 = [v60 whiteColor];
  *(inited + 144) = sub_1D5B5A498(0, qword_1EDF1A6A0, 0x1E69DC888);
  *(inited + 120) = v66;
  sub_1D5C09CEC(inited);
  swift_setDeallocating();
  sub_1D5C09DD4(0);
  swift_arrayDestroy();
  v67 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v68 = sub_1D726203C();

  type metadata accessor for Key(0);
  sub_1D62E7FAC(&qword_1EDF1A8E0, type metadata accessor for Key, &unk_1D72719E0);
  v69 = sub_1D7261D2C();

  v70 = [v67 initWithString:v68 attributes:v69];

  v71 = v49 - v50;
  sub_1D726312C();
  x = v88.origin.x;
  y = v88.origin.y;
  v74 = v88.size.width;
  height = v88.size.height;
  v76 = (v49 - (v49 - v50)) * 0.5;
  v77 = (v46 - CGRectGetHeight(v88)) * 0.5;
  v89.origin.x = x;
  v89.origin.y = y;
  v89.size.width = v74;
  v89.size.height = height;
  [v70 drawWithRect:1 options:0 context:{v76, v77, v71, CGRectGetHeight(v89)}];
}

uint64_t sub_1D62E751C(void *a1)
{
  [a1 tagType];
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_1D725811C();

  return v3;
}

id sub_1D62E7628(uint64_t a1)
{
  v2 = sub_1D7257A4C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v25 - v9;
  result = sub_1D62E78FC();
  if (!v12)
  {
    v13 = [v1 displayName];
    sub_1D726207C();

    v14 = sub_1D726212C();
    v16 = v15;

    v25 = v14;
    v26 = v16;
    sub_1D725797C();
    sub_1D7257A0C();
    v17 = *(v3 + 8);
    v17(v10, v2);
    sub_1D5BF4D9C();
    v18 = sub_1D7263A4C();
    v20 = v19;
    v17(v6, v2);

    v21 = sub_1D5C73AB0(v18, v20);
    v23 = v22;

    if (v23)
    {
      v25 = v21;
      v26 = v23;
      v24 = sub_1D7263A0C();

      return v24;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id sub_1D62E7824(void *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = a1[3];
  v6[0] = *a1;
  v6[1] = v2;
  v6[2] = v1;
  v5 = v1;
  v6[3] = v3;
  result = sub_1D62E7E14(v6);
  if (!result)
  {

    return v5;
  }

  return result;
}

void sub_1D62E78B0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

id sub_1D62E78FC()
{
  v2 = sub_1D7257A4C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = MEMORY[0x1EEE9AC00](v7, v8).n128_u64[0];
  v11 = &v43 - v10;
  result = [v0 asSports];
  if (result)
  {
    v13 = [result sportsType];
    swift_unknownObjectRelease();
    if (v13 == 4)
    {
      v14 = [v0 name];
      sub_1D726207C();

      v15 = sub_1D726212C();
      v17 = v16;

      *&v45 = v15;
      *(&v45 + 1) = v17;
      sub_1D5BF4D9C();
      v18 = sub_1D7263ACC();

      v19 = *(v18 + 16);
      if (!v19)
      {

        v21 = MEMORY[0x1E69E7CC0];
        goto LABEL_14;
      }

      if (v19 >= 2)
      {
        v20 = 2;
      }

      else
      {
        v20 = *(v18 + 16);
      }

      v48 = MEMORY[0x1E69E7CC0];
      sub_1D5BFC364(0, v20, 0);
      v21 = v48;
      v22 = *(v18 + 48);
      v23 = *(v18 + 56);
      v45 = *(v18 + 32);
      v46 = v22;
      v47 = v23;

      sub_1D725797C();
      sub_1D7257A0C();
      v24 = v3[1];
      ++v3;
      v24(v11, v2);
      sub_1D61A0208();
      v25 = sub_1D7263A4C();
      v44 = v26;
      v24(v6, v2);

      v48 = v21;
      v1 = v21[2];
      v27 = v21[3];
      v28 = (v1 + 1);
      if (v1 >= v27 >> 1)
      {
        goto LABEL_31;
      }

      while (1)
      {
        v21[2] = v28;
        v29 = &v21[2 * v1];
        v30 = v44;
        v29[4] = v25;
        v29[5] = v30;
        if (v19 != 1)
        {
          v31 = *(v18 + 80);
          v32 = *(v18 + 88);
          v45 = *(v18 + 64);
          v46 = v31;
          v47 = v32;

          sub_1D725797C();
          sub_1D7257A0C();
          v1 = *v3;
          (*v3)(v11, v2);
          sub_1D61A0208();
          v11 = sub_1D7263A4C();
          v34 = v33;
          (v1)(v6, v2);

          v48 = v21;
          v6 = v21[2];
          v35 = v21[3];
          v2 = v6 + 1;
          if (v6 >= v35 >> 1)
          {
            sub_1D5BFC364((v35 > 1), v6 + 1, 1);
            v21 = v48;
          }

          v21[2] = v2;
          v36 = &v21[2 * v6];
          v36[4] = v11;
          v36[5] = v34;
        }

LABEL_14:
        if (v21[2] != 2)
        {
          break;
        }

        v18 = 0;
        v25 = MEMORY[0x1E69E7CC0];
        v28 = v21 + 5;
        while (1)
        {
          if (v18 == 2)
          {

            *&v45 = v25;
            sub_1D62E7F5C();
            sub_1D62E7FAC(&qword_1EC885888, sub_1D62E7F5C, MEMORY[0x1E69E6328]);
            sub_1D726234C();
            v41 = sub_1D726213C();

            return v41;
          }

          v27 = v21[2];
          if (v18 >= v27)
          {
            break;
          }

          ++v18;
          v2 = *(v28 - 1);
          v11 = *v28;
          v28 += 2;
          v37 = HIBYTE(v11) & 0xF;
          if ((v11 & 0x2000000000000000) == 0)
          {
            v37 = v2 & 0xFFFFFFFFFFFFLL;
          }

          if (v37)
          {

            v2 = sub_1D726233C();
            v6 = v38;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v25 = sub_1D699347C(0, *(v25 + 16) + 1, 1, v25);
            }

            v1 = *(v25 + 16);
            v39 = *(v25 + 24);
            v11 = v1 + 1;
            if (v1 >= v39 >> 1)
            {
              v25 = sub_1D699347C((v39 > 1), v1 + 1, 1, v25);
            }

            *(v25 + 16) = v11;
            v40 = v25 + 16 * v1;
            *(v40 + 32) = v2;
            *(v40 + 40) = v6;
            v28 = &v21[2 * v18 + 5];
          }
        }

        __break(1u);
LABEL_31:
        v43 = v25;
        v42 = v28;
        sub_1D5BFC364((v27 > 1), v28, 1);
        v28 = v42;
        v25 = v43;
        v21 = v48;
      }
    }

    return 0;
  }

  return result;
}

id sub_1D62E7E14(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = [v1 asSports];
  if (result)
  {
    v4 = [result sportsType];
    swift_unknownObjectRelease();
    if (v4 == 4)
    {
      [v2 pointSize];
      return [v2 fontWithSize_];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_1D62E7F08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D72644CC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D62E7F5C()
{
  if (!qword_1EC885880)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC885880);
    }
  }
}

uint64_t sub_1D62E7FAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t FormatWorkspacePackage.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static FormatWorkspacePackage.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D72646CC();
  }
}

unint64_t sub_1D62E8070(uint64_t a1)
{
  result = sub_1D62E8098();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D62E8098()
{
  result = qword_1EC885890;
  if (!qword_1EC885890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885890);
  }

  return result;
}

unint64_t sub_1D62E80EC(void *a1)
{
  a1[1] = sub_1D60CEE3C();
  a1[2] = sub_1D60CEE90();
  result = sub_1D62E8124();
  a1[3] = result;
  return result;
}

unint64_t sub_1D62E8124()
{
  result = qword_1EC885898;
  if (!qword_1EC885898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885898);
  }

  return result;
}

uint64_t ContentAvailability.description.getter()
{
  v1 = *v0;
  if (v1 == 2)
  {
    return 0x6C62616C69617641;
  }

  sub_1D7263D4C();

  if (v1)
  {
    v3 = 0xD00000000000001BLL;
  }

  else
  {
    v3 = 0x6863614320746F4ELL;
  }

  if (v1)
  {
    v4 = 0x80000001D73D15E0;
  }

  else
  {
    v4 = 0xEA00000000006465;
  }

  MEMORY[0x1DA6F9910](v3, v4);

  return 0xD000000000000015;
}

uint64_t ContentAvailability.UnavailableReason.description.getter()
{
  if (*v0)
  {
    return 0xD00000000000001BLL;
  }

  else
  {
    return 0x6863614320746F4ELL;
  }
}

uint64_t ContentAvailability.UnavailableReason.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D62E8370()
{
  result = qword_1EC8858A0;
  if (!qword_1EC8858A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8858A0);
  }

  return result;
}

uint64_t type metadata accessor for ContentValidationType(uint64_t a1)
{
  result = qword_1EDF0E6B8;
  if (!qword_1EDF0E6B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D62E846C(uint64_t a1)
{
  sub_1D62E85D4(319);
  if (v1 <= 0x3F)
  {
    sub_1D5B5534C(319, &qword_1EDF3C720, &protocolRef_FCHeadlineProviding);
    if (v2 <= 0x3F)
    {
      sub_1D5B5534C(319, &qword_1EDF3C770, &protocolRef_FCTagProviding);
      if (v3 <= 0x3F)
      {
        sub_1D5B5534C(319, &qword_1EDF3C750, &protocolRef_FCPuzzleProviding);
        if (v4 <= 0x3F)
        {
          sub_1D5B5534C(319, &qword_1EDF3C700, &protocolRef_FCPuzzleTypeProviding);
          if (v5 <= 0x3F)
          {
            sub_1D5B5A498(319, &qword_1EDF3C6C0, 0x1E69B5348);
            if (v6 <= 0x3F)
            {
              type metadata accessor for FeedItem(319);
              if (v7 <= 0x3F)
              {
                sub_1D5B5A498(319, &qword_1EDF3C6B0, 0x1E69B5578);
                if (v8 <= 0x3F)
                {
                  sub_1D5BBE0A8();
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
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

void sub_1D62E85D4(uint64_t a1)
{
  if (!qword_1EDF05568)
  {
    type metadata accessor for FCFeedDescriptorConfiguration(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF05568);
    }
  }
}

char *sub_1D62E8640(uint64_t a1)
{
  v141 = a1;
  v1 = type metadata accessor for DebugFormatVersioningModeItem(0);
  v145 = *(v1 - 8);
  v146 = v1;
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v131 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v133 = (&v131 - v7);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = (&v131 - v10);
  v12 = MEMORY[0x1E69E6720];
  sub_1D62EAFF0(0, &unk_1EDF43AB0, MEMORY[0x1E69D6638], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v134 = &v131 - v15;
  v16 = sub_1D725BD1C();
  v17 = *(v16 - 1);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v131 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D62EAFF0(0, &unk_1EC8858E0, type metadata accessor for DebugFormatFileDirectoryMetadata, v12);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v140 = &v131 - v23;
  v24 = type metadata accessor for DebugFormatFileDirectoryMetadata(0);
  *&v137 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v25);
  v142 = &v131 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDF31EC0 != -1)
  {
    goto LABEL_63;
  }

  while (1)
  {
    v138 = v26;
    v139 = v4;
    v28 = sub_1D62EAF44();
    v29 = sub_1D62EAFA8(&qword_1EDF43A50, MEMORY[0x1E69D6B38], MEMORY[0x1E69D6B48]);
    v136 = v28;
    v143 = v16;
    v135 = v29;
    v26 = sub_1D72626DC();
    v30 = v26;
    v4 = *(v26 + 16);
    v31 = &qword_1EDF3C000;
    if (!v4)
    {
      break;
    }

    v32 = 0;
    v33 = v26 + 32;
    v144 = MEMORY[0x1E69E7CC0];
    v16 = (v17 + 8);
    while (v32 < *(v30 + 16))
    {
      sub_1D5B68374(v33, &v150);
      v34 = v151;
      v35 = v152;
      __swift_project_boxed_opaque_existential_1(&v150, v151);
      sub_1D5D2F260(v34, v35);
      if (v31[330] != -1)
      {
        swift_once();
      }

      v17 = v143;
      __swift_project_value_buffer(v143, qword_1EDF3CA58);
      sub_1D62EAFA8(&qword_1EDF178B8, MEMORY[0x1E69D6B38], MEMORY[0x1E69D6B50]);
      v36 = sub_1D7261FBC();
      (*v16)(v20, v17);
      if (v36)
      {
        v26 = __swift_destroy_boxed_opaque_existential_1(&v150);
      }

      else
      {
        sub_1D5B63F14(&v150, &v147);
        v17 = v144;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v153 = v17;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D6999154(0, *(v17 + 16) + 1, 1);
          v17 = v153;
        }

        v39 = *(v17 + 16);
        v38 = *(v17 + 24);
        if (v39 >= v38 >> 1)
        {
          sub_1D6999154((v38 > 1), v39 + 1, 1);
          v17 = v153;
        }

        *(v17 + 16) = v39 + 1;
        v144 = v17;
        v26 = sub_1D5B63F14(&v147, v17 + 40 * v39 + 32);
        v31 = &qword_1EDF3C000;
      }

      ++v32;
      v33 += 40;
      if (v4 == v32)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_63:
    v130 = v26;
    swift_once();
    v26 = v130;
  }

  v144 = MEMORY[0x1E69E7CC0];
LABEL_16:

  v40 = v140;
  sub_1D725B31C();

  v41 = v138;
  if ((*(v137 + 48))(v40, 1, v138) == 1)
  {
    sub_1D62EB054(v40, &unk_1EC8858E0, type metadata accessor for DebugFormatFileDirectoryMetadata);
    sub_1D62EAFF0(0, &qword_1EC8858F0, type metadata accessor for DebugFormatVersioningModeItem, MEMORY[0x1E69E6F90]);
    v42 = *(v145 + 80);
    v43 = (v42 + 32) & ~v42;
    v145 = *(v145 + 72);
    v44 = v43 + v145;
    v140 = (v42 | 7);
    v141 = v45;
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_1D7273AE0;
    swift_storeEnumTagMultiPayload();
    v47 = sub_1D6993490(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v49 = *(v47 + 2);
    v48 = *(v47 + 3);
    v142 = v47;
    v50 = v139;
    if (v49 >= v48 >> 1)
    {
      v142 = sub_1D6993490((v48 > 1), v49 + 1, 1, v142);
    }

    v51 = v142;
    *(v142 + 2) = v49 + 1;
    v52 = &v51[40 * v49];
    *(v52 + 2) = xmmword_1D72B7880;
    *(v52 + 6) = 0;
    *(v52 + 7) = 0;
    *(v52 + 8) = v46;
  }

  else
  {
    v53 = v142;
    sub_1D62EB124(v40, v142, type metadata accessor for DebugFormatFileDirectoryMetadata);
    sub_1D62EAFF0(0, &qword_1EC8858F0, type metadata accessor for DebugFormatVersioningModeItem, MEMORY[0x1E69E6F90]);
    v54 = *(v145 + 80);
    v55 = (v54 + 32) & ~v54;
    v145 = *(v145 + 72);
    v140 = (v54 | 7);
    v141 = v56;
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_1D7274590;
    *&v137 = v55;
    v58 = v57 + v55;
    v59 = &v53[*(v41 + 24)];
    v60 = *v59;
    v61 = *(v59 + 1);
    strcpy(v58, "Remote Branch");
    *(v58 + 14) = -4864;
    *(v58 + 16) = v60;
    *(v58 + 24) = v61;
    swift_storeEnumTagMultiPayload();
    v62 = &v53[*(v41 + 28)];
    if (v62[8])
    {

      v63 = 0;
      v64 = 0;
    }

    else
    {
      *&v150 = *v62;
      sub_1D5E4049C();

      v63 = sub_1D7263ADC();
    }

    v65 = v145;
    v66 = v58 + v145;
    strcpy((v58 + v145), "Commit Delta");
    *(v66 + 13) = 0;
    *(v66 + 14) = -5120;
    *(v66 + 16) = v63;
    *(v66 + 24) = v64;
    swift_storeEnumTagMultiPayload();
    v67 = v58 + 2 * v65;
    v68 = sub_1D725BC9C();
    strcpy(v67, "Format Version");
    *(v67 + 15) = -18;
    *(v67 + 16) = v68;
    *(v67 + 24) = v69;
    swift_storeEnumTagMultiPayload();
    v70 = v58 + 3 * v65;
    v71 = sub_1D725BC9C();
    strcpy(v70, "Server Version");
    *(v70 + 15) = -18;
    *(v70 + 16) = v71;
    *(v70 + 24) = v72;
    swift_storeEnumTagMultiPayload();
    v73 = sub_1D6993490(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v75 = *(v73 + 2);
    v74 = *(v73 + 3);
    if (v75 >= v74 >> 1)
    {
      v73 = sub_1D6993490((v74 > 1), v75 + 1, 1, v73);
    }

    v50 = v139;
    sub_1D62EB0C4(v142, type metadata accessor for DebugFormatFileDirectoryMetadata);
    *(v73 + 2) = v75 + 1;
    v142 = v73;
    v76 = &v73[40 * v75];
    *(v76 + 2) = xmmword_1D72B7880;
    *(v76 + 6) = 0xD000000000000056;
    *(v76 + 7) = 0x80000001D73D1770;
    *(v76 + 8) = v57;
    v43 = v137;
    v44 = v137 + v145;
  }

  sub_1D62EAFF0(0, &qword_1EC8858F0, type metadata accessor for DebugFormatVersioningModeItem, MEMORY[0x1E69E6F90]);
  v138 = v44;
  v77 = swift_allocObject();
  v137 = xmmword_1D7273AE0;
  *(v77 + 16) = xmmword_1D7273AE0;
  type metadata accessor for FormatVersioningModeSelection(0);
  swift_storeEnumTagMultiPayload();
  v78 = v43;
  swift_storeEnumTagMultiPayload();
  v79 = v144;
  v80 = *(v144 + 16);
  v81 = MEMORY[0x1E69E7CC0];
  if (v80)
  {
    v132 = v77;
    v153 = MEMORY[0x1E69E7CC0];
    sub_1D6999104(0, v80, 0);
    v81 = v153;
    v82 = v79 + 32;
    v83 = v80;
    do
    {
      sub_1D5B68374(v82, &v150);
      sub_1D5B68374(&v150, &v147);
      v84 = v148;
      v85 = v149;
      __swift_project_boxed_opaque_existential_1(&v147, v148);
      *v11 = sub_1D722A00C(v84, v85);
      v11[1] = v86;
      v87 = v148;
      v88 = v149;
      __swift_project_boxed_opaque_existential_1(&v147, v148);
      type metadata accessor for FormatVersioningModeRelease(0);
      sub_1D5D2F260(v87, v88);
      __swift_destroy_boxed_opaque_existential_1(&v150);
      __swift_destroy_boxed_opaque_existential_1(&v147);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v153 = v81;
      v90 = *(v81 + 16);
      v89 = *(v81 + 24);
      if (v90 >= v89 >> 1)
      {
        sub_1D6999104((v89 > 1), v90 + 1, 1);
        v81 = v153;
      }

      *(v81 + 16) = v90 + 1;
      sub_1D62EB124(v11, v81 + v78 + v90 * v145, type metadata accessor for DebugFormatVersioningModeItem);
      v82 += 40;
      --v83;
    }

    while (v83);
    v50 = v139;
    v77 = v132;
  }

  *&v150 = v77;
  sub_1D6987AFC(v81);
  v91 = v150;
  v93 = v142;
  v92 = v143;
  v95 = *(v142 + 2);
  v94 = *(v142 + 3);
  if (v95 >= v94 >> 1)
  {
    v93 = sub_1D6993490((v94 > 1), v95 + 1, 1, v142);
  }

  *(v93 + 2) = v95 + 1;
  v96 = &v93[40 * v95];
  *(v96 + 2) = xmmword_1D72B7890;
  *(v96 + 6) = 0;
  *(v96 + 7) = 0;
  *(v96 + 8) = v91;
  if (qword_1EDF3CA50 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v92, qword_1EDF3CA58);
  v97 = v134;
  sub_1D725BD0C();
  v98 = sub_1D725B17C();
  if ((*(*(v98 - 8) + 48))(v97, 1, v98) == 1)
  {

    sub_1D62EB054(v97, &unk_1EDF43AB0, MEMORY[0x1E69D6638]);
  }

  else
  {
    sub_1D62EB054(v97, &unk_1EDF43AB0, MEMORY[0x1E69D6638]);
    v99 = swift_allocObject();
    *(v99 + 16) = v137;
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    if (v80)
    {
      v142 = v93;
      v153 = MEMORY[0x1E69E7CC0];
      sub_1D6999104(0, v80, 0);
      v100 = v153;
      v101 = v144 + 32;
      v102 = v133;
      do
      {
        sub_1D5B68374(v101, &v150);
        sub_1D5B68374(&v150, &v147);
        v103 = v148;
        v104 = v149;
        __swift_project_boxed_opaque_existential_1(&v147, v148);
        *v102 = sub_1D722A00C(v103, v104);
        v102[1] = v105;
        v106 = v148;
        v107 = v149;
        __swift_project_boxed_opaque_existential_1(&v147, v148);
        type metadata accessor for FormatVersioningModeRelease(0);
        sub_1D5D2F260(v106, v107);
        __swift_destroy_boxed_opaque_existential_1(&v150);
        __swift_destroy_boxed_opaque_existential_1(&v147);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        v153 = v100;
        v109 = *(v100 + 16);
        v108 = *(v100 + 24);
        if (v109 >= v108 >> 1)
        {
          sub_1D6999104((v108 > 1), v109 + 1, 1);
          v102 = v133;
          v100 = v153;
        }

        *(v100 + 16) = v109 + 1;
        sub_1D62EB124(v102, v100 + v78 + v109 * v145, type metadata accessor for DebugFormatVersioningModeItem);
        v101 += 40;
        --v80;
      }

      while (v80);

      v50 = v139;
      v93 = v142;
    }

    else
    {

      v100 = MEMORY[0x1E69E7CC0];
    }

    *&v150 = v99;
    sub_1D6987AFC(v100);
    v110 = v150;
    v112 = *(v93 + 2);
    v111 = *(v93 + 3);
    if (v112 >= v111 >> 1)
    {
      v93 = sub_1D6993490((v111 > 1), v112 + 1, 1, v93);
    }

    *(v93 + 2) = v112 + 1;
    v113 = &v93[40 * v112];
    *(v113 + 2) = xmmword_1D72B78A0;
    *(v113 + 6) = 0xD000000000000081;
    *(v113 + 7) = 0x80000001D73D16E0;
    *(v113 + 8) = v110;
  }

  if (qword_1EDF31F18 != -1)
  {
    swift_once();
  }

  v114 = sub_1D72626DC();
  v115 = *(v114 + 16);
  if (v115)
  {
    v142 = v93;
    *&v147 = MEMORY[0x1E69E7CC0];
    sub_1D6999104(0, v115, 0);
    v116 = v147;
    v117 = v114 + 32;
    do
    {
      sub_1D5B68374(v117, &v150);
      v118 = v151;
      v119 = v152;
      __swift_project_boxed_opaque_existential_1(&v150, v151);
      sub_1D5D2F260(v118, v119);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      __swift_destroy_boxed_opaque_existential_1(&v150);
      *&v147 = v116;
      v121 = *(v116 + 16);
      v120 = *(v116 + 24);
      if (v121 >= v120 >> 1)
      {
        sub_1D6999104((v120 > 1), v121 + 1, 1);
        v116 = v147;
      }

      *(v116 + 16) = v121 + 1;
      sub_1D62EB124(v50, v116 + v78 + v121 * v145, type metadata accessor for DebugFormatVersioningModeItem);
      v117 += 40;
      --v115;
    }

    while (v115);

    v93 = v142;
  }

  else
  {

    v116 = MEMORY[0x1E69E7CC0];
  }

  v123 = *(v93 + 2);
  v122 = *(v93 + 3);
  if (v123 >= v122 >> 1)
  {
    v93 = sub_1D6993490((v122 > 1), v123 + 1, 1, v93);
  }

  *(v93 + 2) = v123 + 1;
  v124 = &v93[40 * v123];
  *(v124 + 2) = xmmword_1D72B78B0;
  *(v124 + 6) = 0;
  *(v124 + 7) = 0;
  *(v124 + 8) = v116;
  v125 = swift_allocObject();
  *(v125 + 16) = v137;
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v127 = *(v93 + 2);
  v126 = *(v93 + 3);
  if (v127 >= v126 >> 1)
  {
    v93 = sub_1D6993490((v126 > 1), v127 + 1, 1, v93);
  }

  *(v93 + 2) = v127 + 1;
  v128 = &v93[40 * v127];
  *(v128 + 4) = 0;
  *(v128 + 5) = 0;
  *(v128 + 6) = 0xD000000000000039;
  *(v128 + 7) = 0x80000001D73D16A0;
  *(v128 + 8) = v125;
  return v93;
}

void sub_1D62E9930()
{
  v1 = v0;
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, sel_viewDidLoad);
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    v4 = objc_opt_self();
    v5 = [v4 systemBackgroundColor];
    [v3 setBackgroundColor_];

    v6 = *&v1[OBJC_IVAR____TtC8NewsFeed39DebugFormatVersioningModeViewController_tableView];
    [v6 setDataSource_];
    [v6 setDelegate_];
    [v6 setAlwaysBounceVertical_];
    v7 = [v4 secondaryLabelColor];
    [v6 setTintColor_];

    v8 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
    [v6 setTableFooterView_];

    type metadata accessor for SubtitleTableViewCell();
    sub_1D7262DAC();
    type metadata accessor for KeyValueTableViewCell();
    sub_1D7262DAC();
    type metadata accessor for DebugJournalTableViewCell();
    sub_1D7262DAC();
    v9 = [v1 navigationItem];
    v10 = sub_1D726203C();
    [v9 setTitle_];

    v11 = [v1 view];
    if (v11)
    {
      v12 = v11;
      [v11 addSubview_];

      sub_1D725B33C();

      sub_1D725B35C();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_1D62E9BE0(uint64_t a1)
{
  *(a1 + OBJC_IVAR____TtC8NewsFeed39DebugFormatVersioningModeViewController_sections) = sub_1D62E8640(*(a1 + OBJC_IVAR____TtC8NewsFeed39DebugFormatVersioningModeViewController_editor));

  v2 = *(a1 + OBJC_IVAR____TtC8NewsFeed39DebugFormatVersioningModeViewController_tableView);

  return [v2 reloadData];
}

unint64_t sub_1D62E9F98(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for FormatVersioningModeSelection(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v70 - v9;
  v11 = type metadata accessor for DebugFormatVersioningModeItem(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D7258DAC();
  result = sub_1D7258D7C();
  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_53;
  }

  v18 = *(v2 + OBJC_IVAR____TtC8NewsFeed39DebugFormatVersioningModeViewController_sections);
  if (v16 >= *(v18 + 16))
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if ((result & 0x8000000000000000) != 0)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v19 = *(v18 + 40 * v16 + 64);
  if (result >= *(v19 + 16))
  {
LABEL_55:
    __break(1u);
    return result;
  }

  sub_1D62EB18C(v19 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * result, v15, type metadata accessor for DebugFormatVersioningModeItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v21 = *(v15 + 3);
      v70[1] = *(v15 + 2);
      type metadata accessor for KeyValueTableViewCell();
      v22 = sub_1D7262D8C();
      v23 = [v22 textLabel];
      if (v23)
      {
        v24 = v23;
        v25 = [objc_opt_self() systemFontOfSize_];
        [v24 setFont_];
      }

      v26 = [v22 textLabel];
      if (v26)
      {
        v27 = v26;
        v28 = [objc_opt_self() labelColor];
        [v27 setTextColor_];
      }

      v29 = [v22 textLabel];
      if (v29)
      {
        v30 = v29;
        v31 = sub_1D726203C();

        [v30 setText_];
      }

      else
      {
      }

      v53 = [v22 detailTextLabel];
      if (v53)
      {
        v54 = v53;
        v55 = [objc_opt_self() systemFontOfSize_];
        [v54 setFont_];
      }

      v56 = [v22 detailTextLabel];
      if (v56)
      {
        v57 = v56;
        v58 = [objc_opt_self() secondaryLabelColor];
        [v57 setTextColor_];
      }

      v59 = [v22 detailTextLabel];
      if (v59)
      {
        v60 = v59;
        [v59 setNumberOfLines_];
      }

      v61 = [v22 detailTextLabel];
      if (v61)
      {
        v62 = v61;
        if (v21)
        {
          v63 = [objc_opt_self() secondaryLabelColor];
        }

        else
        {
          sub_1D5C0B9F0();
          v63 = sub_1D72635DC();
        }

        v64 = v63;
        [v62 setTextColor_];
      }

      v65 = [v22 detailTextLabel];
      if (v65)
      {
        v66 = v65;
        v67 = sub_1D726203C();

        [v66 &selRef_eventLeagueTag];
      }

      else
      {
      }

      [v22 setAccessoryType_];
      [v22 setSelectionStyle_];
    }

    else
    {
      type metadata accessor for DebugJournalTableViewCell();
      v22 = sub_1D7262D8C();
      [*&v22[OBJC_IVAR____TtC8NewsFeed25DebugJournalTableViewCell_activityIndicatorView] startAnimating];
    }
  }

  else
  {
    sub_1D62EB124(v15, v10, type metadata accessor for FormatVersioningModeSelection);
    type metadata accessor for SubtitleTableViewCell();
    v22 = sub_1D7262D8C();
    v32 = [v22 textLabel];
    if (v32)
    {
      v33 = v32;
      v34 = [objc_opt_self() systemFontOfSize_];
      [v33 setFont_];
    }

    v35 = [v22 textLabel];
    if (v35)
    {
      v36 = v35;
      v37 = [objc_opt_self() labelColor];
      [v36 setTextColor_];
    }

    v38 = [v22 textLabel];
    if (v38)
    {
      v39 = v38;
      sub_1D60D963C();
      v40 = sub_1D726203C();

      [v39 setText_];
    }

    v41 = [v22 detailTextLabel];
    if (v41)
    {
      v42 = v41;
      v43 = [objc_opt_self() systemFontOfSize_];
      [v42 setFont_];
    }

    v44 = [v22 detailTextLabel];
    if (v44)
    {
      v45 = v44;
      v46 = [objc_opt_self() secondaryLabelColor];
      [v45 setTextColor_];
    }

    v47 = [v22 detailTextLabel];
    if (v47)
    {
      v48 = v47;
      [v47 setNumberOfLines_];
    }

    v49 = [v22 detailTextLabel];
    if (v49)
    {
      v50 = v49;
      sub_1D60D9BFC();
      if (v51)
      {
        v52 = sub_1D726203C();
      }

      else
      {
        v52 = 0;
      }

      [v50 setText_];
    }

    sub_1D725972C();

    v68 = _s8NewsFeed29FormatVersioningModeSelectionO2eeoiySbAC_ACtFZ_0(v10, v6);
    sub_1D62EB0C4(v6, type metadata accessor for FormatVersioningModeSelection);
    if (v68)
    {
      v69 = 3;
    }

    else
    {
      v69 = 0;
    }

    [v22 setAccessoryType_];
    [v22 setSelectionStyle_];

    sub_1D62EB0C4(v10, type metadata accessor for FormatVersioningModeSelection);
  }

  return v22;
}

unint64_t sub_1D62EA944(void *a1)
{
  v3 = type metadata accessor for FormatVersioningModeSelection(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v26 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v26 - v13;
  v15 = type metadata accessor for DebugFormatVersioningModeItem(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D7258DAC();
  result = sub_1D7258D7C();
  if ((v20 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v22 = *(v1 + OBJC_IVAR____TtC8NewsFeed39DebugFormatVersioningModeViewController_sections);
  if (v20 >= *(v22 + 16))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((result & 0x8000000000000000) != 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v23 = *(v22 + 40 * v20 + 64);
  if (result >= *(v23 + 16))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  sub_1D62EB18C(v23 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * result, v19, type metadata accessor for DebugFormatVersioningModeItem);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result != 1)
    {
      return result;
    }

    v24 = type metadata accessor for DebugFormatVersioningModeItem;
    v25 = v19;
  }

  else
  {
    sub_1D62EB124(v19, v14, type metadata accessor for FormatVersioningModeSelection);
    sub_1D62EB18C(v14, v10, type metadata accessor for FormatVersioningModeSelection);
    sub_1D62EB18C(v10, v6, type metadata accessor for FormatVersioningModeSelection);

    sub_1D725973C();

    sub_1D62EB0C4(v10, type metadata accessor for FormatVersioningModeSelection);
    [a1 reloadData];
    v25 = v14;
    v24 = type metadata accessor for FormatVersioningModeSelection;
  }

  return sub_1D62EB0C4(v25, v24);
}

uint64_t sub_1D62EACFC(uint64_t a1, uint64_t a2)
{
  sub_1D725BD1C();
  sub_1D62EAFA8(&qword_1EDF43A50, MEMORY[0x1E69D6B38], MEMORY[0x1E69D6B48]);
  return sub_1D7261F4C() & 1;
}

id sub_1D62EAD84(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC8NewsFeed39DebugFormatVersioningModeViewController_tableView;
  *&v2[v5] = [objc_allocWithZone(MEMORY[0x1E69DD020]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v6 = OBJC_IVAR____TtC8NewsFeed39DebugFormatVersioningModeViewController__currentMode;
  if (qword_1EC87D510 != -1)
  {
    swift_once();
  }

  sub_1D62EAEB0(0);
  swift_allocObject();

  *&v2[v6] = sub_1D725977C();
  *&v2[OBJC_IVAR____TtC8NewsFeed39DebugFormatVersioningModeViewController_editor] = a1;

  *&v2[OBJC_IVAR____TtC8NewsFeed39DebugFormatVersioningModeViewController_sections] = sub_1D62E8640(v7);
  v9.receiver = v2;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, 0, 0);
}

void sub_1D62EAEB0(uint64_t a1)
{
  if (!qword_1EC88DE70)
  {
    type metadata accessor for FormatVersioningModeSelection(255);
    sub_1D62EAFA8(&unk_1EC8858D0, type metadata accessor for FormatVersioningModeSelection, &protocol conformance descriptor for FormatVersioningModeSelection);
    v1 = sub_1D725976C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC88DE70);
    }
  }
}

unint64_t sub_1D62EAF44()
{
  result = qword_1EDF331B0;
  if (!qword_1EDF331B0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDF331B0);
  }

  return result;
}

uint64_t sub_1D62EAFA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D62EAFF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D62EB054(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D62EAFF0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D62EB0C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D62EB124(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D62EB18C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t FeedBannerAdViewLayout.init()@<X0>(uint64_t *a1@<X8>)
{
  sub_1D62EBCE4(0, &qword_1EDF3A970, MEMORY[0x1E69B4338]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = v8 - v4;
  memset(v8, 0, sizeof(v8));
  v9 = 1;
  sub_1D5BEDFF4(0);
  swift_allocObject();
  *a1 = sub_1D725996C();
  v6 = sub_1D7260C5C();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_1D5BF15B4(0);
  swift_allocObject();
  result = sub_1D725996C();
  a1[1] = result;
  return result;
}

uint64_t FeedBannerAdViewLayout.Attributes.bannerAdViewLayoutAttributes.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedBannerAdViewLayout.Attributes(0) + 20);
  v4 = sub_1D7260C5C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_1D62EB3B8(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656D617266 && a2 == 0xE500000000000000;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001D73D1850 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1D62EB498(uint64_t a1)
{
  v2 = sub_1D5BDD78C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D62EB4D4(uint64_t a1)
{
  v2 = sub_1D5BDD78C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FeedBannerAdViewLayout.Attributes.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D5BF1428(0, &qword_1EC8858F8, sub_1D5BDD78C, &type metadata for FeedBannerAdViewLayout.Attributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5BDD78C();
  sub_1D7264B5C();
  v11 = v3[1];
  v13[0] = *v3;
  v13[1] = v11;
  v14 = 0;
  type metadata accessor for CGRect(0);
  sub_1D5BEA96C(&qword_1EC8801E8, type metadata accessor for CGRect, MEMORY[0x1E695EF68]);
  sub_1D726443C();
  if (!v2)
  {
    type metadata accessor for FeedBannerAdViewLayout.Attributes(0);
    LOBYTE(v13[0]) = 1;
    sub_1D7260C5C();
    sub_1D5BEA96C(&qword_1EC885900, MEMORY[0x1E69B4338], MEMORY[0x1E69B4340]);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D62EB74C(uint64_t a1)
{
  v2 = sub_1D5BEA96C(&qword_1EC885918, type metadata accessor for FeedBannerAdViewLayout.Attributes, &protocol conformance descriptor for FeedBannerAdViewLayout.Attributes);

  return MEMORY[0x1EEE47CC8](a1, v2);
}

uint64_t sub_1D62EB7D0(uint64_t a1, double a2, double a3, double a4, double a5)
{
  sub_1D5BEA96C(&qword_1EDF37260, type metadata accessor for FeedBannerAdViewLayout.Attributes, &protocol conformance descriptor for FeedBannerAdViewLayout.Attributes);

  return sub_1D725A24C();
}

void sub_1D62EB8F8(uint64_t a1)
{
  type metadata accessor for CGRect(319);
  if (v1 <= 0x3F)
  {
    sub_1D7260C5C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D62EB9A4(uint64_t a1)
{
  result = type metadata accessor for FeedBannerAd(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D62EBA24()
{
  result = qword_1EC885910;
  if (!qword_1EC885910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885910);
  }

  return result;
}

uint64_t sub_1D62EBA78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D5BF1428(0, &qword_1EDF3BF18, sub_1D5C20C7C, &type metadata for FeedBannerAdViewLayout, MEMORY[0x1E69D74B0]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v20[-v12];
  sub_1D62EBCE4(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0]);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v20[-v16];
  v24 = a1;
  v18 = sub_1D7259B8C();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  v21 = a2;
  v22 = a3;
  v23 = a4;
  (*(v10 + 104))(v13, *MEMORY[0x1E69D7460], v9);
  sub_1D5C20CD0(0);
  sub_1D5BEA96C(&qword_1EDF3C020, sub_1D5C20CD0, MEMORY[0x1E69D7158]);
  sub_1D7259A1C();
  (*(v10 + 8))(v13, v9);
  return sub_1D5C18FC0(v17);
}

void sub_1D62EBCE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D62EBD38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1D7260BCC();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  sub_1D5C20DC8(0);
  v28 = *(v9 - 8);
  v29 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BF1428(0, &qword_1EDF3BF18, sub_1D5C20C7C, &type metadata for FeedBannerAdViewLayout, MEMORY[0x1E69D74B0]);
  v14 = v13;
  v27 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = v26 - v17;
  sub_1D62EBCE4(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0]);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = v26 - v21;
  v30[6] = a1;
  v23 = sub_1D7259B8C();
  (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
  v26[1] = swift_getKeyPath();
  (*(v15 + 104))(v18, *MEMORY[0x1E69D74A8], v14);
  v30[5] = *(a2 + 32);
  v30[3] = type metadata accessor for FeedBannerAd(0);
  v30[4] = sub_1D5BEA96C(qword_1EDF42200, type metadata accessor for FeedBannerAd, &protocol conformance descriptor for FeedBannerAd);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
  sub_1D5C20ED4(a3, boxed_opaque_existential_1);
  type metadata accessor for FeedLayoutSolverOptions(0);

  sub_1D7260BBC();
  sub_1D5BF15B4(0);
  sub_1D7260CBC();
  sub_1D5C20C7C();
  sub_1D5BEA96C(&qword_1EDF3C188, sub_1D5BF15B4, MEMORY[0x1E69D6F60]);
  sub_1D5BEA96C(&unk_1EDF3A958, MEMORY[0x1E69B4388], MEMORY[0x1E69B4380]);
  sub_1D7259D2C();
  sub_1D5C18340(0);
  sub_1D5BEA96C(&qword_1EDF3C200, sub_1D5C18340, MEMORY[0x1E69D6F40]);
  sub_1D7259A3C();

  (*(v28 + 8))(v12, v29);
  (*(v15 + 8))(v18, v27);
  return sub_1D5C18FC0(v22);
}

void sub_1D62EC1FC()
{
  v2 = *v0;
  if (*(v0 + 16) && *(v0 + 16) != 1)
  {
    v8 = *(v0 + 8);
    v5 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext(0);
    v6 = v5();
    sub_1D5E02AFC(v6, v2);

    if (!v1)
    {
      v7 = v5();
      sub_1D5E02AFC(v7, v8);
    }
  }

  else
  {
    v3 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext(0);
    v4 = v3();
    sub_1D5E02AFC(v4, v2);
  }
}

id sub_1D62EC37C(void *a1, unint64_t a2, unint64_t a3, char a4, __n128 a5, __n128 a6)
{
  if (a4)
  {
    if (a4 != 1)
    {
      return sub_1D726365C();
    }

    v9 = a1;
    [a1 size];
    if (v6 != 0.0)
    {
LABEL_10:
      [v9 size];
      [v9 size];
      return sub_1D726365C();
    }
  }

  else
  {
    v9 = a1;
    [a1 size];
    if (v7 != 0.0)
    {
      goto LABEL_10;
    }
  }

  return v9;
}

BOOL _s8NewsFeed21FormatBundleImageSizeO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      sub_1D5E433E0(*a2, *(a2 + 8), 0);
      sub_1D5E433E0(v3, v2, 0);
      sub_1D633A310(v3, v6);
      v9 = v13;
      sub_1D5E43440(v3, v2, 0);
      v10 = v6;
      v11 = v5;
      v12 = 0;
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  if (v4 == 1)
  {
    if (v7 == 1)
    {
      sub_1D5E433E0(*a2, *(a2 + 8), 1u);
      sub_1D5E433E0(v3, v2, 1u);
      sub_1D633A310(v3, v6);
      v9 = v8;
      sub_1D5E43440(v3, v2, 1u);
      v10 = v6;
      v11 = v5;
      v12 = 1;
LABEL_7:
      sub_1D5E43440(v10, v11, v12);
      return v9 & 1;
    }

    goto LABEL_12;
  }

  if (v7 != 2)
  {
LABEL_12:
    sub_1D5E433E0(*a2, *(a2 + 8), v7);
    sub_1D5E433E0(v3, v2, v4);
    sub_1D5E43440(v3, v2, v4);
    v18 = v6;
    v19 = v5;
    v20 = v7;
LABEL_13:
    sub_1D5E43440(v18, v19, v20);
    return 0;
  }

  sub_1D5E433E0(*a2, *(a2 + 8), 2u);
  sub_1D5E433E0(v3, v2, 2u);
  sub_1D5E433E0(v6, v5, 2u);
  sub_1D5E433E0(v3, v2, 2u);
  sub_1D633A310(v3, v6);
  if ((v15 & 1) == 0)
  {
    sub_1D5E43440(v3, v2, 2u);
    sub_1D5E43440(v6, v5, 2u);
    sub_1D5E43440(v6, v5, 2u);
    v18 = v3;
    v19 = v2;
    v20 = 2;
    goto LABEL_13;
  }

  sub_1D633A310(v2, v5);
  v17 = v16;
  sub_1D5E43440(v3, v2, 2u);
  sub_1D5E43440(v6, v5, 2u);
  sub_1D5E43440(v6, v5, 2u);
  sub_1D5E43440(v3, v2, 2u);
  return (v17 & 1) != 0;
}

unint64_t sub_1D62EC6F4(uint64_t a1)
{
  result = sub_1D62EC71C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D62EC71C()
{
  result = qword_1EC885920;
  if (!qword_1EC885920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885920);
  }

  return result;
}

unint64_t sub_1D62EC770(void *a1)
{
  a1[1] = sub_1D5CCFE10();
  a1[2] = sub_1D62EC7A8();
  result = sub_1D62EC7FC();
  a1[3] = result;
  return result;
}

unint64_t sub_1D62EC7A8()
{
  result = qword_1EDF0E3E8;
  if (!qword_1EDF0E3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E3E8);
  }

  return result;
}

unint64_t sub_1D62EC7FC()
{
  result = qword_1EC885928;
  if (!qword_1EC885928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885928);
  }

  return result;
}

void LayeredMediaViewOptions.init(nativeScreenSize:boundingSize:scale:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
  a1[4] = a6;
}

uint64_t sub_1D62EC8D0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D62EC8F0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

uint64_t sub_1D62EC934(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v9 = 32;
    v20 = result;
    while (v7 < *(a3 + 16))
    {
      v10 = *(a3 + v9 + 48);
      v27 = *(a3 + v9 + 32);
      v28 = v10;
      v11 = *(a3 + v9 + 64);
      v12 = *(a3 + v9 + 16);
      v26[0] = *(a3 + v9);
      v26[1] = v12;
      v32 = v27;
      v33 = v10;
      v34 = v11;
      v31 = v12;
      v29 = v11;
      v30 = v26[0];
      sub_1D5CE9930(v26, &v21);
      v13 = v6(&v30);
      if (v3)
      {
        v23 = v32;
        v24 = v33;
        v25 = v34;
        v21 = v30;
        v22 = v31;
        sub_1D5CEC67C(&v21);

        goto LABEL_15;
      }

      if (v13)
      {
        v23 = v32;
        v24 = v33;
        v25 = v34;
        v21 = v30;
        v22 = v31;
        result = swift_isUniquelyReferenced_nonNull_native();
        v35 = v8;
        if ((result & 1) == 0)
        {
          result = sub_1D6997448(0, *(v8 + 16) + 1, 1);
          v8 = v35;
        }

        v15 = *(v8 + 16);
        v14 = *(v8 + 24);
        if (v15 >= v14 >> 1)
        {
          result = sub_1D6997448((v14 > 1), v15 + 1, 1);
          v8 = v35;
        }

        *(v8 + 16) = v15 + 1;
        v16 = (v8 + 80 * v15);
        v16[2] = v21;
        v17 = v22;
        v18 = v23;
        v19 = v25;
        v16[5] = v24;
        v16[6] = v19;
        v16[3] = v17;
        v16[4] = v18;
        v6 = v20;
      }

      else
      {
        v23 = v32;
        v24 = v33;
        v25 = v34;
        v21 = v30;
        v22 = v31;
        result = sub_1D5CEC67C(&v21);
      }

      ++v7;
      v9 += 80;
      if (v5 == v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v8;
  }

  return result;
}

void *sub_1D62ECB1C(uint64_t (*a1)(uint64_t *), void *a2, unint64_t a3)
{
  v5 = a3;
  v18 = MEMORY[0x1E69E7CC0];
  if (a3 >> 62)
  {
LABEL_18:
    v8 = sub_1D7263BFC();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_3:
      v9 = 0;
      v15 = v5 & 0xFFFFFFFFFFFFFF8;
      v16 = v5 & 0xC000000000000001;
      v14 = v5;
      while (1)
      {
        if (v16)
        {
          v10 = MEMORY[0x1DA6FB460](v9, v5);
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:

            swift_unknownObjectRelease();

            return v3;
          }
        }

        else
        {
          if (v9 >= *(v15 + 16))
          {
            __break(1u);
            goto LABEL_18;
          }

          v10 = *(v5 + 8 * v9 + 32);
          swift_unknownObjectRetain();
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_14;
          }
        }

        v17 = v10;
        v3 = a2;
        v12 = a1(&v17);
        if (v4)
        {
          goto LABEL_15;
        }

        if (v12)
        {
          sub_1D7263E9C();
          sub_1D7263EDC();
          v5 = v14;
          sub_1D7263EEC();
          v3 = &v18;
          sub_1D7263EAC();
        }

        else
        {
          swift_unknownObjectRelease();
        }

        ++v9;
        if (v11 == v8)
        {
          v3 = v18;
          goto LABEL_20;
        }
      }
    }
  }

  v3 = MEMORY[0x1E69E7CC0];
LABEL_20:

  return v3;
}

void sub_1D62ECCD8(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for FormatService.ThemePackage(0);
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v25 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v22 - v12;
  v24 = *(a3 + 16);
  if (v24)
  {
    v14 = 0;
    v15 = MEMORY[0x1E69E7CC0];
    v22[1] = a2;
    v23 = a3;
    v22[0] = a1;
    while (v14 < *(a3 + 16))
    {
      v16 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v17 = *(v26 + 72);
      sub_1D5BD86D4(a3 + v16 + v17 * v14, v13, type metadata accessor for FormatService.ThemePackage);
      v18 = a1(v13);
      if (v3)
      {
        sub_1D5BCF630(v13, type metadata accessor for FormatService.ThemePackage);

        goto LABEL_15;
      }

      if (v18)
      {
        sub_1D5BE2F1C(v13, v25, type metadata accessor for FormatService.ThemePackage);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D699763C(0, *(v15 + 16) + 1, 1);
          v15 = v27;
        }

        v21 = *(v15 + 16);
        v20 = *(v15 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1D699763C((v20 > 1), v21 + 1, 1);
          v15 = v27;
        }

        *(v15 + 16) = v21 + 1;
        sub_1D5BE2F1C(v25, v15 + v16 + v21 * v17, type metadata accessor for FormatService.ThemePackage);
        a3 = v23;
        a1 = v22[0];
      }

      else
      {
        sub_1D5BCF630(v13, type metadata accessor for FormatService.ThemePackage);
      }

      if (v24 == ++v14)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

void sub_1D62ECF64(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  sub_1D5C2AB28(0);
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v25 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v22 - v12;
  v24 = *(a3 + 16);
  if (v24)
  {
    v14 = 0;
    v15 = MEMORY[0x1E69E7CC0];
    v22[1] = a2;
    v23 = a3;
    v22[0] = a1;
    while (v14 < *(a3 + 16))
    {
      v16 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v17 = *(v26 + 72);
      sub_1D5BD86D4(a3 + v16 + v17 * v14, v13, sub_1D5C2AB28);
      v18 = a1(v13);
      if (v3)
      {
        sub_1D5BCF630(v13, sub_1D5C2AB28);

        goto LABEL_15;
      }

      if (v18)
      {
        sub_1D5BE2F1C(v13, v25, sub_1D5C2AB28);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D699768C(0, *(v15 + 16) + 1, 1);
          v15 = v27;
        }

        v21 = *(v15 + 16);
        v20 = *(v15 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1D699768C((v20 > 1), v21 + 1, 1);
          v15 = v27;
        }

        *(v15 + 16) = v21 + 1;
        sub_1D5BE2F1C(v25, v15 + v16 + v21 * v17, sub_1D5C2AB28);
        a3 = v23;
        a1 = v22[0];
      }

      else
      {
        sub_1D5BCF630(v13, sub_1D5C2AB28);
      }

      if (v24 == ++v14)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

void sub_1D62ED1F0(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for FormatContentSlotItemResolution(0);
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v25 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v22 - v12;
  v24 = *(a3 + 16);
  if (v24)
  {
    v14 = 0;
    v15 = MEMORY[0x1E69E7CC0];
    v22[1] = a2;
    v23 = a3;
    v22[0] = a1;
    while (v14 < *(a3 + 16))
    {
      v16 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v17 = *(v26 + 72);
      sub_1D5BD86D4(a3 + v16 + v17 * v14, v13, type metadata accessor for FormatContentSlotItemResolution);
      v18 = a1(v13);
      if (v3)
      {
        sub_1D5BCF630(v13, type metadata accessor for FormatContentSlotItemResolution);

        goto LABEL_15;
      }

      if (v18)
      {
        sub_1D5BE2F1C(v13, v25, type metadata accessor for FormatContentSlotItemResolution);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D6997C80(0, *(v15 + 16) + 1, 1);
          v15 = v27;
        }

        v21 = *(v15 + 16);
        v20 = *(v15 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1D6997C80((v20 > 1), v21 + 1, 1);
          v15 = v27;
        }

        *(v15 + 16) = v21 + 1;
        sub_1D5BE2F1C(v25, v15 + v16 + v21 * v17, type metadata accessor for FormatContentSlotItemResolution);
        a3 = v23;
        a1 = v22[0];
      }

      else
      {
        sub_1D5BCF630(v13, type metadata accessor for FormatContentSlotItemResolution);
      }

      if (v24 == ++v14)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

void sub_1D62ED47C(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for FeedItemSupplementaryAttributes(0);
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v25 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v22 - v12;
  v24 = *(a3 + 16);
  if (v24)
  {
    v14 = 0;
    v15 = MEMORY[0x1E69E7CC0];
    v22[1] = a2;
    v23 = a3;
    v22[0] = a1;
    while (v14 < *(a3 + 16))
    {
      v16 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v17 = *(v26 + 72);
      sub_1D5BD86D4(a3 + v16 + v17 * v14, v13, type metadata accessor for FeedItemSupplementaryAttributes);
      v18 = a1(v13);
      if (v3)
      {
        sub_1D5BCF630(v13, type metadata accessor for FeedItemSupplementaryAttributes);

        goto LABEL_15;
      }

      if (v18)
      {
        sub_1D5BE2F1C(v13, v25, type metadata accessor for FeedItemSupplementaryAttributes);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D69980C4(0, *(v15 + 16) + 1, 1);
          v15 = v27;
        }

        v21 = *(v15 + 16);
        v20 = *(v15 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1D69980C4((v20 > 1), v21 + 1, 1);
          v15 = v27;
        }

        *(v15 + 16) = v21 + 1;
        sub_1D5BE2F1C(v25, v15 + v16 + v21 * v17, type metadata accessor for FeedItemSupplementaryAttributes);
        a3 = v23;
        a1 = v22[0];
      }

      else
      {
        sub_1D5BCF630(v13, type metadata accessor for FeedItemSupplementaryAttributes);
      }

      if (v24 == ++v14)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

void sub_1D62ED708(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v40 = sub_1D725BD1C();
  MEMORY[0x1EEE9AC00](v40, v7);
  v37 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9, v10);
  v39 = &v29 - v13;
  v36 = *(a3 + 16);
  if (v36)
  {
    v14 = 0;
    v33 = (v11 + 8);
    v34 = (v11 + 32);
    v35 = v11 + 16;
    v38 = MEMORY[0x1E69E7CC0];
    v31 = a2;
    v32 = a3;
    v30 = a1;
    while (v14 < *(a3 + 16))
    {
      v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v16 = *(v11 + 72);
      v17 = a3;
      v18 = a3 + v15 + v16 * v14;
      v19 = v11;
      v20 = a1;
      v21 = v39;
      (*(v11 + 16))(v39, v18, v40, v12);
      v22 = v21;
      a1 = v20;
      v23 = v20(v22);
      if (v3)
      {
        (*v33)(v39, v40);

        return;
      }

      if (v23)
      {
        v24 = *v34;
        (*v34)(v37, v39, v40);
        v25 = v38;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = v25;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D5D5A84C(0, *(v25 + 16) + 1, 1);
          v25 = v41;
        }

        v28 = *(v25 + 16);
        v27 = *(v25 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_1D5D5A84C((v27 > 1), v28 + 1, 1);
          v25 = v41;
        }

        *(v25 + 16) = v28 + 1;
        v38 = v25;
        v24((v25 + v15 + v28 * v16), v37, v40);
        a3 = v32;
        a1 = v30;
      }

      else
      {
        (*v33)(v39, v40);
        a3 = v17;
      }

      ++v14;
      v11 = v19;
      if (v36 == v14)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v38 = MEMORY[0x1E69E7CC0];
LABEL_14:
  }
}