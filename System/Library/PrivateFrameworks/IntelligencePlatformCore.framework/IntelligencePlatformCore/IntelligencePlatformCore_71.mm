uint64_t sub_1C4AB38B8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C4FAFAC0 == a2;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C4F02938();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C4AB39DC(char a1)
{
  if (!a1)
  {
    return 0xD000000000000010;
  }

  if (a1 == 1)
  {
    return 0x696669746E656469;
  }

  return 0x6E656469666E6F63;
}

uint64_t sub_1C4AB3A5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4AB38B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4AB3A84(uint64_t a1)
{
  v2 = sub_1C4AB3C94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4AB3AC0(uint64_t a1)
{
  v2 = sub_1C4AB3C94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SceneTag.encode(to:)(void *a1)
{
  v3 = sub_1C456902C(&qword_1EC0C2C60, &qword_1C4F4D7A0);
  sub_1C43FCDF8();
  v5 = v4;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v11 - v7;
  v11[1] = *(v1 + 16);
  sub_1C4409678(a1, a1[3]);
  sub_1C4AB3C94();
  sub_1C4F02BF8();
  v14 = 0;
  v9 = v11[2];
  sub_1C4F02738();
  if (!v9)
  {
    v13 = 1;
    sub_1C43FBF44();
    sub_1C4F027D8();
    v12 = 2;
    sub_1C43FBF44();
    sub_1C4F027B8();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_1C4AB3C94()
{
  result = qword_1EC0C2C68;
  if (!qword_1EC0C2C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2C68);
  }

  return result;
}

uint64_t SceneTag.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1C456902C(&qword_1EC0C2C70, &qword_1C4F4D7A8);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C4409678(a1, a1[3]);
  sub_1C4AB3C94();
  sub_1C4F02BC8();
  if (v2)
  {
    return sub_1C440962C(a1);
  }

  sub_1C440B100();
  v6 = sub_1C4F02618();
  v8 = v7;
  sub_1C440B100();
  v13 = sub_1C4F026B8();
  sub_1C440B100();
  v9 = sub_1C4F02698();
  v10 = sub_1C4408A58();
  v11(v10);
  *a2 = v6;
  a2[1] = v8;
  a2[2] = v13;
  *(a2 + 3) = v9;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C440962C(a1);
}

uint64_t static PhotosSceneTagsContent.== infix(_:_:)(void *a1, void *a2)
{
  v4 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v10 = v9 - v8;
  v11 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v11);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - v13;
  v15 = sub_1C456902C(&qword_1EC0B9CE8, &qword_1C4F11650);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = *a1 == *a2 && a1[1] == a2[1];
  if (!v19 && (sub_1C4F02938() & 1) == 0)
  {
    goto LABEL_15;
  }

  v20 = *(type metadata accessor for PhotosSceneTagsContent(0) + 20);
  v21 = *(v15 + 48);
  sub_1C4467FE0(a1 + v20, v18);
  sub_1C4467FE0(a2 + v20, &v18[v21]);
  sub_1C4406BE8(v18);
  if (v19)
  {
    sub_1C4406BE8(&v18[v21]);
    if (v19)
    {
      sub_1C4420C3C(v18, &unk_1EC0B84E0, qword_1C4F0D2D0);
LABEL_17:
      sub_1C47E6DCC();
      return v23 & 1;
    }

    goto LABEL_14;
  }

  sub_1C4467FE0(v18, v14);
  sub_1C4406BE8(&v18[v21]);
  if (v22)
  {
    (*(v6 + 8))(v14, v4);
LABEL_14:
    sub_1C4420C3C(v18, &qword_1EC0B9CE8, &qword_1C4F11650);
    goto LABEL_15;
  }

  (*(v6 + 32))(v10, &v18[v21], v4);
  sub_1C4498DE4(&qword_1EC0B9D00, MEMORY[0x1E6969550]);
  v24 = sub_1C4F010B8();
  v25 = *(v6 + 8);
  v25(v10, v4);
  v25(v14, v4);
  sub_1C4420C3C(v18, &unk_1EC0B84E0, qword_1C4F0D2D0);
  if (v24)
  {
    goto LABEL_17;
  }

LABEL_15:
  v23 = 0;
  return v23 & 1;
}

uint64_t type metadata accessor for PhotosSceneTagsContent(uint64_t a1)
{
  result = qword_1EC0C2CB8;
  if (!qword_1EC0C2CB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4AB41FC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000014 && 0x80000001C4FAFAE0 == a2;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x676154656E656373 && a2 == 0xE900000000000073)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C4F02938();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C4AB4320(char a1)
{
  if (!a1)
  {
    return 0xD000000000000014;
  }

  if (a1 == 1)
  {
    return 0x6E6F697461657263;
  }

  return 0x676154656E656373;
}

uint64_t sub_1C4AB4388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_1C4F02AF8();
  a4(v8, v6);
  return sub_1C4F02B68();
}

uint64_t sub_1C4AB43DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4AB41FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4AB4404(uint64_t a1)
{
  v2 = sub_1C4AB4690();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4AB4440(uint64_t a1)
{
  v2 = sub_1C4AB4690();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PhotosSceneTagsContent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1C456902C(&qword_1EC0C2C78, &qword_1C4F4D7B0);
  sub_1C43FCDF8();
  v7 = v6;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13[-v9];
  sub_1C4409678(a1, a1[3]);
  sub_1C4AB4690();
  sub_1C4F02BF8();
  v16 = 0;
  sub_1C43FBF44();
  sub_1C4F02798();
  if (!v2)
  {
    v11 = type metadata accessor for PhotosSceneTagsContent(0);
    v15 = 1;
    sub_1C4EF9CD8();
    sub_1C4498DE4(&qword_1EDDFCD80, MEMORY[0x1E6969538]);
    sub_1C43FBF44();
    sub_1C4F02778();
    v14 = *(v3 + *(v11 + 24));
    v13[15] = 2;
    sub_1C456902C(&qword_1EC0C2C88, &qword_1C4F4D7B8);
    sub_1C4AB4A80(&qword_1EC0C2C90, sub_1C4AB46E4, MEMORY[0x1E69E6300]);
    sub_1C43FBF44();
    sub_1C4F027E8();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_1C4AB4690()
{
  result = qword_1EC0C2C80;
  if (!qword_1EC0C2C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2C80);
  }

  return result;
}

unint64_t sub_1C4AB46E4()
{
  result = qword_1EC0C2C98;
  if (!qword_1EC0C2C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2C98);
  }

  return result;
}

uint64_t PhotosSceneTagsContent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v4);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - v6;
  sub_1C456902C(&qword_1EC0C2CA0, &qword_1C4F4D7C0);
  sub_1C43FCDF8();
  v25 = v9;
  v26 = v8;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  v11 = type metadata accessor for PhotosSceneTagsContent(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBCC4();
  v15 = (v14 - v13);
  sub_1C4409678(a1, a1[3]);
  sub_1C4AB4690();
  sub_1C4F02BC8();
  if (v2)
  {
    return sub_1C440962C(a1);
  }

  v30 = 0;
  *v15 = sub_1C4F02678();
  v15[1] = v16;
  v22 = v16;
  v23 = v15;
  sub_1C4EF9CD8();
  v29 = 1;
  sub_1C4498DE4(&unk_1EDDFCD60, MEMORY[0x1E6969558]);
  sub_1C4417688();
  sub_1C4F02658();
  sub_1C45B69E4(v7, v23 + *(v11 + 20));
  sub_1C456902C(&qword_1EC0C2C88, &qword_1C4F4D7B8);
  v28 = 2;
  sub_1C4AB4A80(&qword_1EC0C2CA8, sub_1C4AB4AF8, MEMORY[0x1E69E6330]);
  sub_1C4417688();
  sub_1C4F026C8();
  v17 = sub_1C4420104();
  v18(v17);
  v20 = v23;
  v19 = v24;
  *(v23 + *(v11 + 24)) = v27;
  sub_1C4AB4B4C(v20, v19);
  sub_1C440962C(a1);
  return sub_1C4AB4BB0(v20);
}

uint64_t sub_1C4AB4A80(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(&qword_1EC0C2C88, &qword_1C4F4D7B8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C4AB4AF8()
{
  result = qword_1EC0C2CB0;
  if (!qword_1EC0C2CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2CB0);
  }

  return result;
}

uint64_t sub_1C4AB4B4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosSceneTagsContent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4AB4BB0(uint64_t a1)
{
  v2 = type metadata accessor for PhotosSceneTagsContent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C4AB4C78(uint64_t a1)
{
  sub_1C45C2C2C(319);
  if (v1 <= 0x3F)
  {
    sub_1C4AB4D0C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C4AB4D0C()
{
  if (!qword_1EC0C2CC8)
  {
    v0 = sub_1C4F017A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC0C2CC8);
    }
  }
}

_BYTE *sub_1C4AB4D6C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4AB4E5C()
{
  result = qword_1EC0C2CD0;
  if (!qword_1EC0C2CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2CD0);
  }

  return result;
}

uint64_t sub_1C4AB4ED4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C4409678(v1, v1[3]);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  (*(v6 + 16))(v5 - v4);
  *&v13 = swift_getAssociatedTypeWitness();
  *(&v13 + 1) = swift_getAssociatedConformanceWitness();
  sub_1C4422F90(v12);
  sub_1C4F01478();
  v11 = v13;
  v7 = v13;
  v8 = sub_1C4409678(v12, v13);
  *(a1 + 24) = v11;
  v9 = sub_1C4422F90(a1);
  (*(*(v7 - 8) + 16))(v9, v8, v7);
  return sub_1C440962C(v12);
}

uint64_t sub_1C4AB5060()
{
  sub_1C43FBCD4();
  v1[6] = v2;
  v1[7] = v0;
  v3 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v3);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v4 = sub_1C4EF9CD8();
  v1[10] = v4;
  v1[11] = *(v4 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v5 = sub_1C456902C(&qword_1EC0C2D08, &qword_1C4F4DC48);
  sub_1C43FBD18(v5);
  v1[14] = swift_task_alloc();
  v6 = type metadata accessor for PhotosSceneTagsContent(0);
  v1[15] = v6;
  sub_1C43FBD18(v6);
  v1[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4AB51C8, 0, 0);
}

uint64_t sub_1C4AB51C8()
{
  sub_1C4418280(v0[7], *(v0[7] + 24));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = sub_1C4F01F48();
  sub_1C43FCDF8();
  v4 = v3;
  v5 = swift_task_alloc();
  sub_1C4F01FA8();
  v6 = sub_1C44157D4(v5, 1, AssociatedTypeWitness);
  v7 = v0[14];
  v8 = v0[15];
  if (v6 == 1)
  {
    (*(v4 + 8))(v5, v2);

    sub_1C440BAA8(v7, 1, 1, v8);
LABEL_5:
    sub_1C4420C3C(v0[14], &qword_1EC0C2D08, &qword_1C4F4DC48);
    v12 = sub_1C456902C(&qword_1EC0C00C0, qword_1C4F4DC50);
    v13 = 1;
    goto LABEL_15;
  }

  v0[5] = AssociatedTypeWitness;
  v9 = sub_1C4422F90(v0 + 2);
  (*(*(AssociatedTypeWitness - 8) + 32))(v9, v5, AssociatedTypeWitness);

  v10 = swift_dynamicCast();
  sub_1C440BAA8(v7, v10 ^ 1u, 1, v8);
  sub_1C4406BE8(v7);
  if (v11)
  {
    goto LABEL_5;
  }

  v15 = v0[15];
  v14 = v0[16];
  v16 = v0[9];
  sub_1C4AB5968(v0[14], v14);
  v17 = *(v15 + 20);
  sub_1C4467FE0(v14 + v17, v16);
  if (sub_1C4403604() == 1)
  {
    sub_1C4EF9AC8();
    if (sub_1C4403604() != 1)
    {
      sub_1C4420C3C(v0[9], &unk_1EC0B84E0, qword_1C4F0D2D0);
    }
  }

  else
  {
    (*(v0[11] + 32))(v0[13], v0[9], v0[10]);
  }

  sub_1C4467FE0(v14 + v17, v0[8]);
  if (sub_1C4403604() == 1)
  {
    v18 = v0[8];
    sub_1C4EF9AC8();
    sub_1C4406BE8(v18);
    if (!v11)
    {
      sub_1C4420C3C(v0[8], &unk_1EC0B84E0, qword_1C4F0D2D0);
    }
  }

  else
  {
    (*(v0[11] + 32))(v0[12], v0[8], v0[10]);
  }

  v19 = v0[16];
  v21 = v0[12];
  v20 = v0[13];
  v22 = v0[10];
  v23 = v0[11];
  v24 = v0[6];
  v12 = sub_1C456902C(&qword_1EC0C00C0, qword_1C4F4DC50);
  sub_1C4AB5968(v19, v24 + *(v12 + 32));
  v25 = *(v23 + 32);
  v25(v24, v20, v22);
  v25(v24 + *(v12 + 28), v21, v22);
  v13 = 0;
LABEL_15:
  sub_1C440BAA8(v0[6], v13, 1, v12);

  v26 = v0[1];

  return v26();
}

uint64_t sub_1C4AB55B0()
{
  sub_1C43FBCD4();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C4A866DC;

  return sub_1C4AB5060();
}

uint64_t sub_1C4AB5644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_1C4A86B48;

  return (sub_1C4982B74)(a1, a2, a3, v3 + 16);
}

uint64_t sub_1C4AB5710@<X0>(uint64_t a1@<X8>)
{
  sub_1C4AB4ED4(a1);

  return sub_1C4AB59CC(v1);
}

unint64_t sub_1C4AB5740()
{
  result = qword_1EC0C2CD8;
  if (!qword_1EC0C2CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2CD8);
  }

  return result;
}

unint64_t sub_1C4AB5798()
{
  result = qword_1EC0C2CE0;
  if (!qword_1EC0C2CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2CE0);
  }

  return result;
}

unint64_t sub_1C4AB580C()
{
  result = qword_1EC0C2CE8;
  if (!qword_1EC0C2CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2CE8);
  }

  return result;
}

unint64_t sub_1C4AB5864()
{
  result = qword_1EC0C2CF0;
  if (!qword_1EC0C2CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2CF0);
  }

  return result;
}

unint64_t sub_1C4AB58BC()
{
  result = qword_1EC0C2CF8;
  if (!qword_1EC0C2CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2CF8);
  }

  return result;
}

unint64_t sub_1C4AB5914()
{
  result = qword_1EC0C2D00;
  if (!qword_1EC0C2D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2D00);
  }

  return result;
}

uint64_t sub_1C4AB5968(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosSceneTagsContent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C4AB5A0C()
{
  result = qword_1EC0C2D10;
  if (!qword_1EC0C2D10)
  {
    sub_1C4572308(&qword_1EC0BFE78, &unk_1C4F4DCA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2D10);
  }

  return result;
}

uint64_t sub_1C4AB5A7C(uint64_t a1)
{
  sub_1C4AB5B80(a1, &v6);
  if (v7)
  {
    sub_1C4AB5BF0(a1);
    sub_1C441D670(&v6, &v8);
  }

  else
  {
    v3 = type metadata accessor for PhotosMetadataFetcher();
    v4 = swift_allocObject();
    v9 = v3;
    v10 = &off_1F43F8498;
    *&v8 = v4;
    sub_1C4AB5BF0(a1);
    if (v7)
    {
      sub_1C4AB5BF0(&v6);
    }
  }

  sub_1C441D670(&v8, v1 + 16);
  return v1;
}

uint64_t sub_1C4AB5B24()
{
  sub_1C440962C((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1C4AB5B80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0C2D18, &qword_1C4F4DCD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4AB5BF0(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0C2D18, &qword_1C4F4DCD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C4AB5C58(uint64_t a1)
{
  switch(a1)
  {
    case -1:
      return 0x6E6564646948;
    case 0:
      return 0x7972616E6964724FLL;
    case 1:
      return 0x6E6174726F706D49;
  }

  result = sub_1C4F024A8();
  __break(1u);
  return result;
}

uint64_t sub_1C4AB5D10(uint64_t a1, uint64_t a2)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v5 = objc_opt_self();
  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C4F0D130;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v7 = sub_1C4F01658();

  v8 = [v5 predicateForContactsWithIdentifiers_];

  sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C4F10430;
  v10 = *MEMORY[0x1E695C258];
  *(v9 + 32) = *MEMORY[0x1E695C258];
  v11 = objc_opt_self();
  v12 = v10;
  *(v9 + 40) = [v11 descriptorForRequiredKeysForStyle_];
  sub_1C456902C(&unk_1EC0BABE0, &unk_1C4F16F20);
  v13 = sub_1C4F01658();

  v22[0] = 0;
  v14 = [v2 unifiedContactsMatchingPredicate:v8 keysToFetch:v13 error:v22];

  v15 = v22[0];
  if (!v14)
  {
    v19 = v22[0];
    v20 = sub_1C4EF97A8();

    swift_willThrow();
    return 0;
  }

  sub_1C4AB5F50();
  v16 = sub_1C4F01678();
  v17 = v15;

  v18 = sub_1C4428DA0(v16);
  if (!v18)
  {

    return 0;
  }

  return v16;
}

unint64_t sub_1C4AB5F50()
{
  result = qword_1EDDFA430;
  if (!qword_1EDDFA430)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDDFA430);
  }

  return result;
}

uint64_t sub_1C4AB5F94(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 56);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C4AB5FD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *sub_1C4AB605C(void *a1, uint64_t a2, char *a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8)
{
  v291 = a2;
  v269 = a8;
  v273 = a7;
  v274 = a6;
  v279 = a5;
  v283 = a4;
  v285 = a3;
  v315 = *MEMORY[0x1E69E9840];
  v9 = sub_1C456902C(&qword_1EC0C2D20, &unk_1C4F4DE40);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v270 = &v253 - v10;
  v271 = sub_1C4EFCC88();
  v268 = *(v271 - 8);
  MEMORY[0x1EEE9AC00](v271);
  v267 = &v253 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C4EFCCC8();
  v276 = *(v12 - 8);
  v277 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v278 = &v253 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C456902C(&unk_1EC0BABB0, &qword_1C4F16ED0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v275 = &v253 - v15;
  v16 = sub_1C4EF98F8();
  v281 = *(v16 - 8);
  v282 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v280 = &v253 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v286 = type metadata accessor for PHPersonStructs.IdentifierRelationshipType(0);
  v284 = *(v286 - 1);
  MEMORY[0x1EEE9AC00](v286);
  v19 = &v253 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v288 = &v253 - v21;
  v287 = type metadata accessor for PHPersonStructs.Person(0);
  MEMORY[0x1EEE9AC00](v287);
  v293 = &v253 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1C456902C(&qword_1EC0B9DC8, &unk_1C4F124A0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v266 = &v253 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v253 - v26;
  v28 = sub_1C4EF9D38();
  v295 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v272 = (&v253 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v30);
  v265 = &v253 - v31;
  *&v33 = MEMORY[0x1EEE9AC00](v32).n128_u64[0];
  v292 = &v253 - v34;
  v35 = [a1 localIdentifier];
  v36 = sub_1C4F01138();
  v38 = v37;

  v39 = HIBYTE(v38) & 0xF;
  if ((v38 & 0x2000000000000000) == 0)
  {
    v39 = v36 & 0xFFFFFFFFFFFFLL;
  }

  if (!v39)
  {
    sub_1C465B58C();
    swift_allocError();
    *v64 = 0;
    swift_willThrow();
    return v27;
  }

  v294 = a1;
  v40 = [a1 localIdentifier];
  v41 = &selRef_localizedName;
  if (!v40)
  {
    sub_1C4F01138();
    v40 = sub_1C4F01108();
    v41 = &selRef_localizedName;
  }

  v42 = [objc_opt_self() uuidFromLocalIdentifier_];

  if (!v42)
  {
    goto LABEL_109;
  }

  v43 = sub_1C4F01138();
  v45 = v44;

  v263 = v43;
  sub_1C4EF9CE8();
  if (sub_1C44157D4(v27, 1, v28) == 1)
  {

    sub_1C4420C3C(v27, &qword_1EC0B9DC8, &unk_1C4F124A0);
LABEL_109:
    result = sub_1C4F024A8();
    __break(1u);
    return result;
  }

  v264 = v19;
  v46 = v299;
  v47 = *(v295 + 32);
  v289 = v28;
  v261 = v47;
  v262 = v295 + 32;
  v47(v292, v27, v28);
  v48 = [v294 &selRef_content + 3];
  v49 = sub_1C4F01138();
  v51 = v50;

  if (qword_1EDDF78B8 != -1)
  {
    goto LABEL_106;
  }

  while (1)
  {
    v52 = type metadata accessor for SourceIdPrefix(0);
    v53 = sub_1C442B738(v52, &qword_1EDE2D5F0);
    v54 = *v53;
    v55 = v53[1];
    *v46 = *v53;
    v46[1] = v55;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](58, 0xE100000000000000);
    v56 = v46[1];
    *v46 = *v46;
    v46[1] = v56;
    v27 = v299;
    MEMORY[0x1C6940010](v49, v51);

    v57 = v290;
    sub_1C4E3A42C(*v46, v46[1], v58, v59, v60, v61, v62, v63, v253, *(&v253 + 1), v254, v255, v256, v257, *(&v257 + 1), v258, v259, v260, v261, v262);
    if (v57)
    {
      (*(v295 + 8))(v292, v289);

      return v27;
    }

    v260 = v45;
    *&v257 = v54;
    *(&v257 + 1) = v55;
    v290 = 0;
    v65 = sub_1C4EFEEF8();
    v66 = v288;
    v259 = v65;
    sub_1C440BAA8(v288, 1, 1, v65);
    v67 = v286;
    sub_1C4EFD258();
    v68 = v67[6];
    if (qword_1EDDFD0A8 != -1)
    {
      swift_once();
    }

    v69 = type metadata accessor for Source(0);
    v258 = sub_1C442B738(v69, qword_1EDDFD0B0);
    sub_1C44EF7D0(v258, v66 + v68, type metadata accessor for Source);
    sub_1C4EFE558();
    v70 = (v66 + v67[8]);
    sub_1C4EFE658();
    v71 = v67[10];
    v72 = v294;
    v73 = [v294 v41 + 347];
    v74 = sub_1C4F01138();
    v76 = v75;

    *v70 = v74;
    v70[1] = v76;
    *(v66 + v71) = xmmword_1C4F4C8D0;
    sub_1C456902C(&qword_1EC0C0498, &qword_1C4F3E908);
    v77 = (*(v284 + 80) + 32) & ~*(v284 + 80);
    v256 = *(v284 + 72);
    v78 = swift_allocObject();
    v253 = xmmword_1C4F0D130;
    *(v78 + 16) = xmmword_1C4F0D130;
    v255 = v77;
    sub_1C44EF7D0(v66, v78 + v77, type metadata accessor for PHPersonStructs.IdentifierRelationshipType);
    v79 = v287;
    v80 = *(v287 + 72);
    v81 = v293;

    *(v81 + v80) = v78;
    sub_1C4E3FE64();
    v297 = MEMORY[0x1E69E7CD0];
    v82 = sub_1C47851D4(v72);
    if (v83)
    {
      v89 = HIBYTE(v83) & 0xF;
      if ((v83 & 0x2000000000000000) == 0)
      {
        v89 = v82 & 0xFFFFFFFFFFFFLL;
      }

      if (v89)
      {
        sub_1C44869B4(v299, v82, v83, v84, v85, v86, v87, v88, v253, *(&v253 + 1), v254, v255, v256, v257, *(&v257 + 1), v258, v259, v260, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270, v271, v272);
      }
    }

    v90 = sub_1C481B784(v294);
    v97 = v290;
    if (v91)
    {
      v98 = HIBYTE(v91) & 0xF;
      if ((v91 & 0x2000000000000000) == 0)
      {
        v98 = v90 & 0xFFFFFFFFFFFFLL;
      }

      if (v98)
      {
        sub_1C44869B4(v299, v90, v91, v92, v93, v94, v95, v96, v253, *(&v253 + 1), v254, v255, v256, v257, *(&v257 + 1), v258, v259, v260, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270, v271, v272);
      }
    }

    v99 = [objc_opt_self() service];
    *&v299[0] = 0;
    v100 = [v99 requestVUIndexURLForSystemPhotosLibraryWithError_];

    v101 = *&v299[0];
    if (!v100)
    {
      break;
    }

    v102 = v79;
    v103 = v280;
    sub_1C4EF98C8();
    v104 = v101;

    v106 = v281;
    v105 = v282;
    v107 = v275;
    (*(v281 + 16))(v275, v103, v282);
    sub_1C440BAA8(v107, 0, 1, v105);
    (*(v276 + 104))(v278, *MEMORY[0x1E69E0610], v277);
    sub_1C4EFCD18();
    swift_allocObject();
    v108 = sub_1C4EFCCA8();
    if (v97)
    {
      (*(v106 + 8))(v103, v105);

      v109 = v97;
      v110 = 0;
      v111 = v289;
      v79 = v102;
      v81 = v293;
      goto LABEL_30;
    }

    v151 = v108;
    v152 = v270;
    sub_1C4EFCC98();
    v153 = v271;
    v154 = sub_1C44157D4(v152, 1, v271);
    v290 = 0;
    v278 = v151;
    if (v154 == 1)
    {

      sub_1C4420C3C(v152, &qword_1EC0C2D20, &unk_1C4F4DE40);
      v111 = v289;
      goto LABEL_95;
    }

    v200 = v152;
    v202 = v267;
    v201 = v268;
    (*(v268 + 32))(v267, v200, v153);
    v203 = v266;
    sub_1C4EFCC78();
    v204 = v289;
    if (sub_1C44157D4(v203, 1, v289) == 1)
    {
      (*(v201 + 8))(v202, v153);

      sub_1C4420C3C(v203, &qword_1EC0B9DC8, &unk_1C4F124A0);
      v111 = v204;
      goto LABEL_95;
    }

    v218 = v265;
    v261(v265, v203, v204);
    if (sub_1C4EF9CF8() == v263 && v219 == v260)
    {
    }

    else
    {
      v221 = sub_1C4F02938();

      if ((v221 & 1) == 0)
      {
        v111 = v289;
        (*(v295 + 8))(v218, v289);
        (*(v268 + 8))(v267, v153);
        goto LABEL_95;
      }
    }

    v111 = v289;
    (*(v295 + 8))(v218, v289);
    (*(v268 + 8))(v267, v153);
    v236 = (v293 + v102[11]);

    *v236 = xmmword_1C4F17530;
LABEL_95:
    v237 = sub_1C4AB7C0C(v292);
    v51 = 0;
    v49 = *(v237 + 16);
    v46 = v294;
    v45 = v295 + 16;
    v284 = v295 + 8;
    v41 = v272;
    while (1)
    {
      if (v49 == v51)
      {
        (*(v281 + 8))(v280, v282);

        v81 = v293;
        v110 = v290;
LABEL_104:
        v79 = v287;
        goto LABEL_35;
      }

      if (v51 >= *(v237 + 16))
      {
        break;
      }

      (*(v295 + 16))(v41, v237 + ((*(v295 + 80) + 32) & ~*(v295 + 80)) + *(v295 + 72) * v51, v111);
      sub_1C4AB8278(v41, v291);
      if (v239)
      {
        v240 = v238;
        v241 = v239;

        v242 = sub_1C4EF9CF8();
        v244 = v243;
        v245 = [v294 localIdentifier];
        v246 = sub_1C4F01138();
        v248 = v247;

        LOBYTE(v299[0]) = 5;
        v249.value._countAndFlagsBits = v242;
        v249.value._object = v244;
        v250.value._countAndFlagsBits = v240;
        v250.value._object = v241;
        v251._countAndFlagsBits = v246;
        v251._object = v248;
        VisionKeyValueStore.store(entityIdentifier:name:relationship:visualIdentifier:association:confidence:)(v249, v250, 0, v251, v299, 1.0);
        v109 = v252;
        if (v252)
        {

          v111 = v289;
          (*v284)(v41, v289);
          (*(v281 + 8))(v280, v282);
          v110 = 0;
          v81 = v293;
          v79 = v287;
          goto LABEL_30;
        }

        v111 = v289;
        (*v284)(v41, v289);
        (*(v281 + 8))(v280, v282);
        v81 = v293;
        v46 = v294;
        v110 = 0;
        goto LABEL_104;
      }

      ++v51;
      (*v284)(v41, v111);
      v46 = v294;
    }

    __break(1u);
LABEL_106:
    swift_once();
  }

  v112 = *&v299[0];

  v109 = sub_1C4EF97A8();

  swift_willThrow();
  v110 = 0;
  v111 = v289;
LABEL_30:
  if (qword_1EDDFD028 != -1)
  {
    swift_once();
  }

  v113 = sub_1C4F00978();
  sub_1C442B738(v113, qword_1EDE2DE10);
  v114 = sub_1C4F00968();
  v115 = sub_1C4F01CD8();
  if (os_log_type_enabled(v114, v115))
  {
    v116 = swift_slowAlloc();
    *v116 = 0;
    _os_log_impl(&dword_1C43F8000, v114, v115, "PHPerson: Invalid call to VUGallery", v116, 2u);
    MEMORY[0x1C6942830](v116, -1, -1);
  }

  v46 = v294;
LABEL_35:
  v117 = sub_1C4AB5C58([v46 type]);
  v119 = v118;
  v120 = (v81 + v79[13]);

  *v120 = v117;
  v120[1] = v119;
  v121 = sub_1C4AB8444([v46 detectionType]);
  v123 = v122;
  v124 = (v81 + v79[15]);

  *v124 = v121;
  v124[1] = v123;
  v125 = sub_1C45C0104(v46);
  if (!v126)
  {
    goto LABEL_47;
  }

  v127 = sub_1C4AB5D10(v125, v126);

  if (!v127)
  {
    goto LABEL_47;
  }

  if (!sub_1C4428DA0(v127))
  {

LABEL_47:
    if ((Configuration.isAutonamingMessagesIngestionEnabled.getter() & 1) == 0)
    {
      if (qword_1EDDFECB0 != -1)
      {
        swift_once();
      }

      v167 = sub_1C4F00978();
      sub_1C442B738(v167, qword_1EDDFECB8);
      v168 = sub_1C4F00968();
      v169 = sub_1C4F01CB8();
      if (os_log_type_enabled(v168, v169))
      {
        v170 = swift_slowAlloc();
        *v170 = 0;
        _os_log_impl(&dword_1C43F8000, v168, v169, "Feature flag for KG ingestion of AutonamingMessages disabled.", v170, 2u);
        MEMORY[0x1C6942830](v170, -1, -1);
      }

      v148 = 0;
      goto LABEL_61;
    }

    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v155 = sub_1C4F00978();
    sub_1C442B738(v155, qword_1EDDFECB8);
    v156 = sub_1C4F00968();
    v157 = sub_1C4F01CB8();
    if (os_log_type_enabled(v156, v157))
    {
      v158 = swift_slowAlloc();
      *v158 = 0;
      _os_log_impl(&dword_1C43F8000, v156, v157, "Feature flag for KG ingestion of AutonamingMessages enabled", v158, 2u);
      MEMORY[0x1C6942830](v158, -1, -1);
    }

    if (!v274)
    {

      v197 = sub_1C4F00968();
      v198 = sub_1C4F01CD8();
      if (os_log_type_enabled(v197, v198))
      {
        v199 = swift_slowAlloc();
        *v199 = 0;
        _os_log_impl(&dword_1C43F8000, v197, v198, "autonamingMessageInferenceStream should be non-null for iOS/ macOS.", v199, 2u);
        MEMORY[0x1C6942830](v199, -1, -1);
      }

      (*(v295 + 8))(v292, v111);
      v27 = MEMORY[0x1E69E7CC0];
      goto LABEL_81;
    }

    v159 = v274;
    v160 = v294;
    sub_1C4AB8530(v159, v273, &v306);
    v148 = v310;
    if (!v310)
    {

LABEL_61:
      v291 = v148;
      v171 = sub_1C44FE820(v297);
      v150 = 0;
LABEL_62:
      v290 = v110;
      v172 = v79[9];

      *(v81 + v172) = v171;
      v173 = v294;
      v174 = [v294 localIdentifier];
      v175 = sub_1C4F01138();
      v177 = v176;

      if (!v150)
      {
        v291 = sub_1C4AB8754();
        v150 = v178;
      }

      v179 = [v173 localIdentifier];
      v180 = sub_1C4F01138();
      v182 = v181;

      LOBYTE(v299[0]) = 0;
      v183.value._countAndFlagsBits = v175;
      v183.value._object = v177;
      v184.value._countAndFlagsBits = v291;
      v184.value._object = v150;
      v185._countAndFlagsBits = v180;
      v185._object = v182;
      v27 = v285;
      VisionKeyValueStore.store(entityIdentifier:name:relationship:visualIdentifier:association:confidence:)(v183, v184, 0, v185, v299, 1.0);
      if (v186)
      {
        (*(v295 + 8))(v292, v289);

LABEL_66:
        v187 = v288;
        goto LABEL_76;
      }

      v81 = v293;
      sub_1C45780EC();
      v189 = v188;
      v190 = *(v287 + 68);

      *(v81 + v190) = v189;
      sub_1C4E3FC4C();
      v191 = [v173 localIdentifier];
      v192 = sub_1C4F01138();
      v194 = v193;

      v299[0] = v257;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      MEMORY[0x1C6940010](58, 0xE100000000000000);
      MEMORY[0x1C6940010](v192, v194);

      v195 = *&v299[0];
      LOBYTE(v299[0]) = 1;
      v27 = sub_1C4E3B954(v195, *(&v299[0] + 1), v299, v196);
      (*(v295 + 8))(v292, v289);

LABEL_81:
      sub_1C44EF5EC(v288, type metadata accessor for PHPersonStructs.IdentifierRelationshipType);
      sub_1C44EF5EC(v81, type metadata accessor for PHPersonStructs.Person);
      return v27;
    }

    v290 = v110;
    v299[0] = v306;
    v299[1] = v307;
    v299[2] = v308;
    v300 = v309;
    v301 = v310;
    v302 = v311;
    v303 = v312;
    v304 = v313;
    v161 = v314;
    v305 = v314;
    v162 = *(&v306 + 1);
    v278 = *(&v307 + 1);
    v163 = *&v311;
    v164 = v312;
    v291 = *(&v311 + 1);
    v283 = *(&v313 + 1);
    v165 = v313;
    v284 = *(&v312 + 1);
    sub_1C445FFF0(v299, v298, &qword_1EC0C2D28, &qword_1C4F4DE50);

    v280 = v161;

    v281 = v165;

    v282 = v162;

    v286 = v159;
    if (v164)
    {
      v279 = v164;
      v166 = &selRef_localizedName;
    }

    else
    {
      v166 = &selRef_localizedName;
      v222 = [v160 localIdentifier];
      v291 = sub_1C4F01138();
      v279 = v223;

      v160 = v294;
    }

    v224 = [v160 v166[59]];
    v225 = sub_1C4F01138();
    v227 = v226;

    v296 = 2;
    sub_1C445FFF0(v299, v298, &qword_1EC0C2D28, &qword_1C4F4DE50);

    v228 = v281;

    v229 = v280;

    v230 = v163;
    v231.value._countAndFlagsBits = v291;
    v231.value._object = v279;
    v233.value._countAndFlagsBits = v283;
    v232.value._countAndFlagsBits = v284;
    v232.value._object = v228;
    v233.value._object = v229;
    v234._countAndFlagsBits = v225;
    v234._object = v227;
    v27 = v285;
    VisionKeyValueStore.store(entityIdentifier:name:relationship:visualIdentifier:association:confidence:)(v231, v232, v233, v234, &v296, v230);
    v110 = v235;
    if (v235)
    {

      sub_1C4420C3C(&v306, &qword_1EC0C2D30, &unk_1C4F4DE58);

      (*(v295 + 8))(v292, v289);
      goto LABEL_66;
    }

    sub_1C4420C3C(&v306, &qword_1EC0C2D30, &unk_1C4F4DE58);
    v148 = 0;
    v81 = v293;
LABEL_92:
    v79 = v287;
    goto LABEL_61;
  }

  sub_1C4431590(0, (v127 & 0xC000000000000001) == 0, v127);
  v290 = v110;
  if ((v127 & 0xC000000000000001) != 0)
  {
    v128 = MEMORY[0x1C6940F90](0, v127);
  }

  else
  {
    v128 = *(v127 + 32);
  }

  v129 = v128;
  v131 = v258;
  v130 = v259;

  v132 = v264;
  sub_1C440BAA8(v264, 1, 1, v130);
  v133 = v286;
  sub_1C4EFD258();
  sub_1C44EF7D0(v131, v132 + v133[6], type metadata accessor for Source);
  sub_1C4EFE558();
  v134 = (v132 + v133[8]);
  sub_1C4EFE658();
  v135 = v133[10];
  v136 = [v129 identifier];
  v137 = sub_1C4F01138();
  v139 = v138;

  *v134 = v137;
  v134[1] = v139;
  *(v132 + v135) = xmmword_1C4F4DD80;
  v141 = sub_1C4E3B8DC(v299);
  if (*v140)
  {
    v142 = v140;
    sub_1C45895F4();
    v143 = *(*v142 + 16);
    sub_1C458A174();
    v144 = *v142;
    *(v144 + 16) = v143 + 1;
    sub_1C44EF7D0(v132, v144 + v255 + v143 * v256, type metadata accessor for PHPersonStructs.IdentifierRelationshipType);
  }

  v141(v299, 0);
  v145 = v129;
  v146 = [objc_opt_self() stringFromContact:v129 style:0];
  if (v146)
  {
    v147 = v146;
    v148 = sub_1C4F01138();
    v150 = v149;
  }

  else
  {
    v148 = 0;
    v150 = 0;
  }

  v205 = [v145 identifier];
  v206 = sub_1C4F01138();
  v208 = v207;

  v209 = [v294 localIdentifier];
  v210 = sub_1C4F01138();
  v212 = v211;

  LOBYTE(v299[0]) = 6;
  v213.value._countAndFlagsBits = v206;
  v213.value._object = v208;
  v214.value._countAndFlagsBits = v148;
  v214.value._object = v150;
  v215._countAndFlagsBits = v210;
  v215._object = v212;
  VisionKeyValueStore.store(entityIdentifier:name:relationship:visualIdentifier:association:confidence:)(v213, v214, 0, v215, v299, 1.0);
  v110 = v216;
  if (!v216)
  {

    sub_1C44EF5EC(v264, type metadata accessor for PHPersonStructs.IdentifierRelationshipType);
    v81 = v293;
    if (v150)
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
      v171 = swift_allocObject();
      *(v171 + 16) = v253;
      v291 = v148;
      *(v171 + 32) = v148;
      *(v171 + 40) = v150;
      v79 = v287;
      goto LABEL_62;
    }

    goto LABEL_92;
  }

  (*(v295 + 8))(v292, v289);
  v27 = type metadata accessor for PHPersonStructs.IdentifierRelationshipType;
  sub_1C44EF5EC(v264, type metadata accessor for PHPersonStructs.IdentifierRelationshipType);
  v187 = v288;
LABEL_76:
  sub_1C44EF5EC(v187, type metadata accessor for PHPersonStructs.IdentifierRelationshipType);
  sub_1C44EF5EC(v293, type metadata accessor for PHPersonStructs.Person);
  return v27;
}

uint64_t sub_1C4AB7C0C(uint64_t a1)
{
  v1 = sub_1C4EF9D38();
  v2 = *(v1 - 8);
  v53 = v1;
  v54 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v48 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C4EFCD08();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v50 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v52 = &v47 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v62 = &v47 - v10;
  v11 = sub_1C4EFCCC8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v61 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v47 - v16;
  v18 = *MEMORY[0x1E69E0608];
  v63 = *(v12 + 104);
  v64 = v12 + 104;
  v63(&v47 - v16, v18, v11, v15);
  v19 = v4;
  v20 = sub_1C4EFCCB8();
  v21 = *(v12 + 8);
  v60 = v17;
  v57 = v21;
  v58 = v11;
  v65 = v12 + 8;
  result = (v21)(v17, v11);
  v23 = 0;
  v67 = *(v20 + 16);
  v69 = v5 + 16;
  v56 = *MEMORY[0x1E69E0618];
  v68 = (v5 + 8);
  v66 = v5;
  v49 = (v5 + 32);
  v51 = MEMORY[0x1E69E7CC0];
  v55 = v4;
  v59 = v20;
  v24 = v62;
  v25 = v60;
  v26 = v58;
  while (v67 != v23)
  {
    if (v23 >= *(v20 + 16))
    {
      __break(1u);
      return result;
    }

    v27 = (*(v66 + 80) + 32) & ~*(v66 + 80);
    v28 = *(v66 + 72);
    (*(v66 + 16))(v24, v20 + v27 + v28 * v23, v19);
    v29 = v19;
    sub_1C4EFCCE8();
    v30 = v61;
    (v63)(v61, v56, v26);
    sub_1C4ABA2B4(&qword_1EDDEFFF0, MEMORY[0x1E69E0630], MEMORY[0x1E69E0640]);
    sub_1C4F01578();
    sub_1C4F01578();
    v31 = v30;
    v32 = v57;
    v57(v31, v26);
    v32(v25, v26);
    if (v71 == v70)
    {
      v33 = *v49;
      (*v49)(v50, v24, v19);
      v34 = v51;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = v34;
      v72 = v34;
      if (isUniquelyReferenced_nonNull_native)
      {
        v19 = v29;
      }

      else
      {
        sub_1C459EC18();
        v19 = v55;
        v36 = v72;
      }

      v37 = *(v36 + 16);
      if (v37 >= *(v36 + 24) >> 1)
      {
        sub_1C459EC18();
        v19 = v55;
        v36 = v72;
      }

      ++v23;
      *(v36 + 16) = v37 + 1;
      v51 = v36;
      result = v33((v36 + v27 + v37 * v28), v50, v19);
      v20 = v59;
    }

    else
    {
      result = (*v68)(v24, v19);
      ++v23;
      v20 = v59;
    }
  }

  v38 = *(v51 + 16);
  if (v38)
  {
    v72 = MEMORY[0x1E69E7CC0];
    v39 = v51;
    sub_1C459EBC0();
    v40 = v72;
    v41 = v39 + ((*(v66 + 80) + 32) & ~*(v66 + 80));
    v67 = *(v66 + 72);
    v42 = *(v66 + 16);
    v43 = v55;
    v44 = v48;
    do
    {
      v45 = v52;
      v42(v52, v41, v43);
      sub_1C4EFCCD8();
      v43 = v55;
      (*v68)(v45, v55);
      v72 = v40;
      v46 = *(v40 + 16);
      if (v46 >= *(v40 + 24) >> 1)
      {
        sub_1C459EBC0();
        v43 = v55;
        v40 = v72;
      }

      *(v40 + 16) = v46 + 1;
      (*(v54 + 32))(v40 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v46, v44, v53);
      v41 += v67;
      --v38;
    }

    while (v38);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v40;
}

void sub_1C4AB8278(uint64_t a1, uint64_t a2)
{
  v14[1] = a1;
  v3 = sub_1C4EF9D38();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C4428DA0(a2);
  v8 = 0;
  v9 = (v4 + 8);
  while (v7 != v8)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1C6940F90](v8, a2);
    }

    else
    {
      if (v8 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v10 = *(a2 + 8 * v8 + 32);
    }

    v11 = v10;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v12 = [v10 uuid];
    sub_1C4EF9D18();

    LOBYTE(v12) = sub_1C4EF9D08();
    (*v9)(v6, v3);
    if (v12)
    {
      v13 = [v11 name];
      sub_1C4F01138();

      return;
    }

    ++v8;
  }
}

uint64_t sub_1C4AB8444(unsigned __int16 a1)
{
  v1 = a1;
  result = 0x6E776F6E6B6E75;
  switch(v1)
  {
    case 0:
      return result;
    case 1:
      result = 0x6E616D7568;
      break;
    case 2:
      result = 7628144;
      break;
    case 3:
      result = 6778724;
      break;
    case 4:
      result = 7627107;
      break;
    default:
      result = sub_1C4F024A8();
      __break(1u);
      break;
  }

  return result;
}

void sub_1C4AB8530(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  sub_1C4AB87A0(a1, a2, &v54);
  if (!v58)
  {
    v11 = 0;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    goto LABEL_18;
  }

  v62 = v54;
  v63 = v55;
  v64 = v56;
  v65 = v57;
  v66 = v58;
  v67 = v59;
  v6 = *(&v55 + 1);
  if (*(&v55 + 1))
  {
    v7 = v63;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v8 = sub_1C4AB5D10(v7, v6);

    if (v8)
    {
      if (sub_1C4428DA0(v8))
      {
        sub_1C4431590(0, (v8 & 0xC000000000000001) == 0, v8);
        if ((v8 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x1C6940F90](0, v8);
        }

        else
        {
          v9 = *(v8 + 32);
        }

        v10 = v9;

        goto LABEL_11;
      }
    }
  }

  v10 = 0;
LABEL_11:
  v19 = MEMORY[0x1E69E7CD0];
  v52 = MEMORY[0x1E69E7CD0];
  v20 = sub_1C47851D4(v4);
  if (v21)
  {
    v22 = HIBYTE(v21) & 0xF;
    if ((v21 & 0x2000000000000000) == 0)
    {
      v22 = v20 & 0xFFFFFFFFFFFFLL;
    }

    if (v22)
    {
      v23 = sub_1C4F00FF8();
      v25 = v24;

      sub_1C44869B4(v60, v23, v25, v26, v27, v28, v29, v30, v31, v33, v34, v36, v37, v39, v40, v42, v43, v45, v46, v48, v49, v51, v52, v54, *(&v54 + 1), v55, *(&v55 + 1), v56, *(&v56 + 1), v57);

      v19 = v53;
    }

    else
    {
    }
  }

  sub_1C4AB8DCC(&v62, v10, v19, v60);
  v47 = v60[1];
  v50 = v60[0];
  v41 = v60[3];
  v44 = v60[2];
  v35 = v60[5];
  v38 = v60[4];
  v32 = v60[6];
  v11 = v61;

  sub_1C4420C3C(&v54, &qword_1EC0C2D38, &qword_1C4F4DE68);

  v18 = v32;
  v17 = v35;
  v16 = v38;
  v15 = v41;
  v14 = v44;
  v13 = v47;
  v12 = v50;
LABEL_18:
  *a3 = v12;
  *(a3 + 16) = v13;
  *(a3 + 32) = v14;
  *(a3 + 48) = v15;
  *(a3 + 64) = v16;
  *(a3 + 80) = v17;
  *(a3 + 96) = v18;
  *(a3 + 112) = v11;
}

uint64_t sub_1C4AB8754()
{
  result = sub_1C47851D4(v0);
  if (!v2)
  {
    return 0;
  }

  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {

    return 0;
  }

  return result;
}

uint64_t sub_1C4AB87A0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v69 = a2;
  v72 = a3;
  v6 = objc_autoreleasePoolPush();
  v74 = [a1 publisher];
  objc_autoreleasePoolPop(v6);
  v90 = MEMORY[0x1E69E7CD0];
  v7 = sub_1C47851D4(v4);
  if (v8)
  {
    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v7 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      v10 = sub_1C4F00FF8();
      v12 = v11;

      sub_1C44869B4(&aBlock, v10, v12, v13, v14, v15, v16, v17, v60, v62, v64, v66, v67, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, aBlock, v85);
    }
  }

  v18 = swift_allocObject();
  *(v18 + 16) = sub_1C4F00F28();
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1C4F00F28();
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1C4F00F28();
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  v22 = swift_allocObject();
  *(v22 + 16) = v4;
  v88 = sub_1C4ABA360;
  v89 = v22;
  aBlock = MEMORY[0x1E69E9820];
  v85 = 1107296256;
  v86 = sub_1C45AF9C8;
  v87 = &unk_1F43F8C30;
  v23 = _Block_copy(&aBlock);
  v24 = v4;

  v25 = [v74 filterWithIsIncluded_];
  _Block_release(v23);
  v88 = nullsub_1;
  v89 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v85 = 1107296256;
  v86 = sub_1C44405F8;
  v87 = &unk_1F43F8C58;
  v26 = _Block_copy(&aBlock);
  v27 = swift_allocObject();
  v27[2] = v24;
  v27[3] = v18;
  v27[4] = v20;
  v27[5] = v19;
  v27[6] = v21;
  v88 = sub_1C4ABA370;
  v89 = v27;
  aBlock = MEMORY[0x1E69E9820];
  v85 = 1107296256;
  v86 = sub_1C4440590;
  v87 = &unk_1F43F8CA8;
  v28 = _Block_copy(&aBlock);
  v61 = v24;

  v29 = [v25 sinkWithCompletion:v26 receiveInput:v28];
  _Block_release(v28);
  _Block_release(v26);

  swift_beginAccess();
  v30 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v65 = sub_1C45B3248(v30);
  v32 = v31;
  v34 = v33;

  swift_beginAccess();
  v35 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v63 = sub_1C45B3248(v35);
  v37 = v36;
  v39 = v38;

  swift_beginAccess();
  v40 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v68 = sub_1C45B3248(v40);
  v42 = v41;
  v44 = v43;

  swift_beginAccess();
  v45 = *(v21 + 16) * 0.8;
  if (v45 >= v34 || v34 < v69)
  {

    v65 = 0;
    v32 = 0;
  }

  if (v45 >= v39 || v39 < v69)
  {

    v63 = 0;
    v37 = 0;
  }

  if (v45 >= v44 || v44 < v69)
  {

    v68 = 0;
    v42 = 0;
  }

  if (v32 || v37 || v42)
  {
    v55 = 0.1;
    if (!*(*(v20 + 16) + 16))
    {
      v55 = 0.0;
    }

    v56 = *(v21 + 16);
    if (v56 >= 10)
    {
      v56 = 10;
    }

    v54 = v55 + v56 / 10.0 * 0.85;
    v57 = [v61 localIdentifier];
    v52 = sub_1C4F01138();
    v53 = v58;

    v50 = v63;
    v49 = v65;
    v51 = v68;
  }

  else
  {

    v49 = 0;
    v32 = 0;
    v50 = 0;
    v37 = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0.0;
  }

  *v72 = v49;
  *(v72 + 8) = v32;
  *(v72 + 16) = v50;
  *(v72 + 24) = v37;
  *(v72 + 32) = v51;
  *(v72 + 40) = v42;
  *(v72 + 48) = v52;
  *(v72 + 56) = v53;
  *(v72 + 64) = v54;
  return result;
}

uint64_t sub_1C4AB8DCC@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = result;
  v6 = *result;
  v7 = *(result + 8);
  v34 = *(result + 40);
  v35 = *(result + 56);
  v32 = v7;
  v33 = *(result + 24);
  if (a2)
  {
    v8 = a2;
    v9 = [v8 identifier];
    v10 = sub_1C4F01138();
    v12 = v11;

    v13 = [objc_opt_self() stringFromContact:v8 style:0];
    if (v13)
    {
      v14 = v13;
      v15 = sub_1C4F01138();
      v17 = v16;
    }

    else
    {

      v15 = 0;
      v17 = 0;
    }

    v28 = *(v4 + 32);
    v29 = *(v4 + 40);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    result = sub_1C4ABA2FC(v4, v36);
    v24 = v6;
    goto LABEL_16;
  }

  v17 = v7;
  if (v7)
  {
    v18 = BYTE7(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v18 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v18)
    {
      sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1C4F0D130;
      *(v20 + 32) = sub_1C4F00FF8();
      *(v20 + 40) = v21;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v22 = sub_1C4499940();
      v23 = sub_1C4A32590(a3, v22);

      if ((v23 & 1) == 0 || !*(a3 + 16))
      {
        v28 = *(v4 + 32);
        v29 = *(v4 + 40);
        sub_1C4ABA2FC(v4, v36);
        result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v10 = 0;
        v12 = 0;
        v24 = v6;
        v15 = v6;
        goto LABEL_16;
      }
    }
  }

  v24 = 0;
  v37 = *(v4 + 32);
  v25 = 0uLL;
  if (!v17)
  {
    v10 = 0;
    v12 = 0;
    v15 = 0;
    v17 = 0;
    v27 = 0uLL;
    v30 = 0uLL;
    v28 = 0;
    v29 = 0;
    v31 = 0uLL;
    goto LABEL_17;
  }

  v26 = *(&v37 + 1);
  v10 = 0;
  v12 = 0;
  v15 = 0;
  v17 = 0;
  v27 = 0uLL;
  v28 = 0;
  v29 = 0;
  v30 = 0uLL;
  v31 = 0uLL;
  if (*(&v37 + 1))
  {
    v28 = v37;
    sub_1C4ABA2FC(v4, v36);
    result = sub_1C445FFF0(&v37, v36, &qword_1EC0C2BD0, &qword_1C4F0FF50);
    v10 = 0;
    v12 = 0;
    v15 = 0;
    v17 = 0;
    v24 = v6;
    v29 = v26;
LABEL_16:
    v25 = v32;
    v27 = v33;
    v30 = v34;
    v31 = v35;
  }

LABEL_17:
  *a4 = v24;
  *(a4 + 8) = v25;
  *(a4 + 24) = v27;
  *(a4 + 40) = v30;
  *(a4 + 56) = v31;
  *(a4 + 72) = v10;
  *(a4 + 80) = v12;
  *(a4 + 88) = v15;
  *(a4 + 96) = v17;
  *(a4 + 104) = v28;
  *(a4 + 112) = v29;
  return result;
}

uint64_t sub_1C4AB907C(void *a1, void *a2)
{
  v3 = [a1 eventBody];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 photosPersonIdentifier];
    if (v5)
    {
      v6 = v5;
      v7 = sub_1C4F01138();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v11 = [a2 localIdentifier];
    v12 = sub_1C4F01138();
    v14 = v13;

    if (v9)
    {
      if (v7 == v12 && v9 == v14)
      {
        v10 = 1;
      }

      else
      {
        v10 = sub_1C4F02938();
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

void sub_1C4AB9188(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = [a1 eventBody];
  if (!v11)
  {
    return;
  }

  v76 = v11;
  v12 = [v11 photosPersonIdentifier];
  if (v12)
  {
    v13 = v12;
    v74 = a6;
    v14 = sub_1C4F01138();
    v16 = v15;

    v17 = [a2 localIdentifier];
    v18 = sub_1C4F01138();
    v20 = v19;

    if (v14 == v18 && v16 == v20)
    {
    }

    else
    {
      v22 = sub_1C4F02938();

      if ((v22 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v23 = [v76 inferredName];
    if (v23)
    {
      v24 = v23;
      v25 = sub_1C4F01138();
      v27 = v26;

      swift_beginAccess();
      swift_isUniquelyReferenced_nonNull_native();
      v28 = *(a3 + 16);
      *(a3 + 16) = 0x8000000000000000;
      v29 = sub_1C445FAA8(v25, v27);
      if (__OFADD__(*(v28 + 16), (v30 & 1) == 0))
      {
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v31 = v29;
      v32 = v30;
      sub_1C456902C(&qword_1EC0B9800, &qword_1C4F0FAE0);
      if (sub_1C4F02458())
      {
        v33 = sub_1C445FAA8(v25, v27);
        if ((v32 & 1) != (v34 & 1))
        {
          goto LABEL_52;
        }

        v31 = v33;
      }

      *(a3 + 16) = v28;
      if ((v32 & 1) == 0)
      {
        sub_1C44686AC(v31, v25, v27, 0, v28);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }

      v35 = *(v28 + 56);
      v36 = *(v35 + 8 * v31);
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_47;
      }

      *(v35 + 8 * v31) = v38;
      swift_endAccess();

      v39 = sub_1C457EB40;
    }

    else
    {
      v39 = 0;
    }

    v40 = [v76 inferredContactIdentifier];
    if (v40)
    {
      v41 = v40;
      v42 = sub_1C4F01138();
      v44 = v43;

      swift_beginAccess();
      swift_isUniquelyReferenced_nonNull_native();
      v45 = *(a4 + 16);
      *(a4 + 16) = 0x8000000000000000;
      v46 = sub_1C445FAA8(v42, v44);
      if (__OFADD__(*(v45 + 16), (v47 & 1) == 0))
      {
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v48 = v46;
      v49 = v47;
      sub_1C456902C(&qword_1EC0B9800, &qword_1C4F0FAE0);
      if (sub_1C4F02458())
      {
        v50 = sub_1C445FAA8(v42, v44);
        if ((v49 & 1) != (v51 & 1))
        {
          goto LABEL_52;
        }

        v48 = v50;
      }

      *(a4 + 16) = v45;
      if ((v49 & 1) == 0)
      {
        sub_1C44686AC(v48, v42, v44, 0, v45);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }

      v52 = *(v45 + 56);
      v53 = *(v52 + 8 * v48);
      v37 = __OFADD__(v53, 1);
      v54 = v53 + 1;
      if (v37)
      {
        goto LABEL_49;
      }

      *(v52 + 8 * v48) = v54;
      swift_endAccess();

      v55 = sub_1C457EB40;
    }

    else
    {
      v55 = 0;
    }

    v56 = [v76 inferredRelationshipToDeviceOwner];
    if (!v56)
    {
      v71 = 0;
LABEL_42:

      swift_beginAccess();
      v72 = *(v75 + 16);
      v37 = __OFADD__(v72, 1);
      v73 = v72 + 1;
      if (!v37)
      {
        *(v75 + 16) = v73;
        sub_1C45B4C6C(v39, 0);
        sub_1C45B4C6C(v55, 0);
        sub_1C45B4C6C(v71, 0);
        return;
      }

      __break(1u);
      goto LABEL_46;
    }

    v57 = v56;
    v58 = sub_1C4F01138();
    v60 = v59;

    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v61 = *(a5 + 16);
    *(a5 + 16) = 0x8000000000000000;
    v62 = sub_1C445FAA8(v58, v60);
    if (__OFADD__(*(v61 + 16), (v63 & 1) == 0))
    {
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v64 = v62;
    v65 = v63;
    sub_1C456902C(&qword_1EC0B9800, &qword_1C4F0FAE0);
    if ((sub_1C4F02458() & 1) == 0)
    {
LABEL_37:
      *(a5 + 16) = v61;
      if ((v65 & 1) == 0)
      {
        sub_1C44686AC(v64, v58, v60, 0, v61);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }

      v68 = *(v61 + 56);
      v69 = *(v68 + 8 * v64);
      v37 = __OFADD__(v69, 1);
      v70 = v69 + 1;
      if (v37)
      {
        goto LABEL_51;
      }

      *(v68 + 8 * v64) = v70;
      swift_endAccess();

      v71 = sub_1C457EB40;
      goto LABEL_42;
    }

    v66 = sub_1C445FAA8(v58, v60);
    if ((v65 & 1) == (v67 & 1))
    {
      v64 = v66;
      goto LABEL_37;
    }

LABEL_52:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

LABEL_8:
}

uint64_t sub_1C4AB9724()
{
  v1[6] = v0;
  v2 = sub_1C4EF98F8();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C44EE9CC, 0, 0);
}

void sub_1C4AB981C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v50 = a3;
  v48 = a2;
  v49 = a8;
  v46 = a1;
  v47 = a7;
  v52 = a9;
  v42 = a10;
  v43 = a5;
  v44 = a11;
  v45 = a6;
  v12 = type metadata accessor for PHPersonSourceIngestor(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C44EF7D0(a4, v15, type metadata accessor for PHPersonSourceIngestor);
  v16 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v41 = (v14 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v41 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 23) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  sub_1C4ABA14C(v15, v23 + v16);
  *(v23 + v41) = v43;
  v24 = v45;
  v25 = v46;
  *(v23 + v17) = v45;
  *(v23 + v18) = v47;
  v26 = v24;
  *(v23 + v19) = v49;
  *(v23 + v20) = v42;
  v27 = (v23 + v21);
  v28 = v48;
  *v27 = v25;
  v27[1] = v28;
  *(v23 + v22) = v44;
  aBlock[4] = sub_1C4ABA1B0;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C4AAF5EC;
  aBlock[3] = &unk_1F43F8BB8;
  v29 = _Block_copy(aBlock);

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  [v50 enumerateObjectsUsingBlock_];
  _Block_release(v29);
  swift_beginAccess();
  v30 = v51;
  sub_1C4EFFCA8();
  if (v30)
  {
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v31 = sub_1C4F00978();
    sub_1C442B738(v31, qword_1EDE2DE10);
    v32 = v30;
    v33 = sub_1C4F00968();
    v34 = sub_1C4F01CD8();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v53[0] = v36;
      *v35 = 136315138;
      aBlock[8] = v30;
      v37 = v30;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v38 = sub_1C4F01198();
      v40 = sub_1C441D828(v38, v39, v53);

      *(v35 + 4) = v40;
      _os_log_impl(&dword_1C43F8000, v33, v34, "Failed to send BGST fastpass telemetry due to: %s", v35, 0xCu);
      sub_1C440962C(v36);
      MEMORY[0x1C6942830](v36, -1, -1);
      MEMORY[0x1C6942830](v35, -1, -1);
    }

    else
    {
    }
  }

  swift_beginAccess();
  *v52 = *(v26 + 16);
}

void sub_1C4AB9C30(void *a1, uint64_t a2, _BYTE *a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t), uint64_t a11, uint64_t a12)
{
  sub_1C4ACEB84();
  swift_beginAccess();
  if (*(a5 + 16))
  {
    *a3 = 1;
    swift_beginAccess();
    *(a6 + 16) = 1;
    return;
  }

  swift_beginAccess();
  v19 = *(a7 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a7 + 16) = v21;
    v31 = objc_autoreleasePoolPush();
    v22 = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
    v23 = *&a4[*(type metadata accessor for PhaseStores(0) + 32)];
    swift_beginAccess();
    v24 = *(a9 + 16);
    v25 = *(type metadata accessor for PHPersonSourceIngestor(0) + 28);
    v32 = v24;
    v26 = objc_autoreleasePoolPush();
    sub_1C4AB605C(a1, a8, v23, v22, a4, v24, 3, &a4[v25]);
    objc_autoreleasePoolPop(v26);

    sub_1C4812140();
    v28 = v27;

    a10(v28);

    swift_beginAccess();
    v29 = *(a12 + 16);
    v20 = __OFADD__(v29, 1);
    v30 = v29 + 1;
    if (!v20)
    {
      *(a12 + 16) = v30;
      objc_autoreleasePoolPop(v31);
      return;
    }
  }

  __break(1u);
}

uint64_t sub_1C4AB9F84()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C44A7DA0;

  return sub_1C4AB9724();
}

uint64_t sub_1C4ABA010(uint64_t a1)
{
  result = sub_1C4ABA2B4(&qword_1EDDE29A0, type metadata accessor for PHPersonSourceIngestor, &unk_1C4F4DDA8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4ABA068(uint64_t a1)
{
  result = sub_1C4ABA2B4(&qword_1EDDE2988, type metadata accessor for PHPersonSourceIngestor, &unk_1C4F4DDD0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4ABA0C0(uint64_t a1)
{
  result = sub_1C4ABA2B4(&qword_1EDDE2990, type metadata accessor for PHPersonSourceIngestor, &unk_1C4F4DDEC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4ABA14C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PHPersonSourceIngestor(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1C4ABA1B0(void *a1, uint64_t a2, _BYTE *a3)
{
  v7 = *(type metadata accessor for PHPersonSourceIngestor(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_1C4AB9C30(a1, a2, a3, (v3 + v8), *(v3 + v9), *(v3 + v10), *(v3 + v11), *(v3 + v12), *(v3 + v13), *(v3 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v3 + ((((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1C4ABA2B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C4ABA3FC()
{
  v9 = MEMORY[0x1E69E7CC0];
  sub_1C44CD9C0(0, 2, 0);
  v0 = v9;
  v2 = *(v9 + 16);
  v1 = *(v9 + 24);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_1C44CD9C0(v1 > 1, v2 + 1, 1);
    v0 = v9;
    v1 = *(v9 + 24);
    v3 = v1 >> 1;
  }

  *(v0 + 16) = v4;
  v5 = v0 + 16 * v2;
  *(v5 + 32) = 0xD000000000000013;
  *(v5 + 40) = 0x80000001C4FAFD10;
  v6 = v2 + 2;
  if (v3 <= v4)
  {
    sub_1C44CD9C0(v1 > 1, v6, 1);
    v0 = v9;
  }

  *(v0 + 16) = v6;
  v7 = v0 + 16 * v4;
  *(v7 + 32) = 0xD000000000000014;
  *(v7 + 40) = 0x80000001C4FAFD30;

  return sub_1C4499940();
}

uint64_t sub_1C4ABA508()
{
  v0 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EF9C88();
  v6 = sub_1C4663250(v5);
  (*(v2 + 8))(v5, v0);
  if (v6)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }

    swift_unknownObjectRelease();
  }

  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88(&qword_1EDDFECB0);
  }

  v8 = sub_1C4F00978();
  sub_1C442B738(v8, qword_1EDDFECB8);
  v9 = sub_1C4F00968();
  v10 = sub_1C4F01CF8();
  if (os_log_type_enabled(v9, v10))
  {
    *swift_slowAlloc() = 0;
    sub_1C440BAE8(&dword_1C43F8000, v11, v12, "Unable to fetch recent event from BMContextualUnderstandingPhysicalSocial Stream");
    sub_1C43FE9D4();
  }

  return 0;
}

uint64_t sub_1C4ABA688()
{
  v0 = sub_1C4ABA508();
  if (v0)
  {
    v1 = v0;
    sub_1C4ABA7A4(v0);
    v3 = v2;

    return v3;
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v5 = sub_1C4F00978();
    sub_1C442B738(v5, qword_1EDDFECB8);
    v6 = sub_1C4F00968();
    v7 = sub_1C4F01CF8();
    if (os_log_type_enabled(v6, v7))
    {
      *swift_slowAlloc() = 0;
      sub_1C440BAE8(&dword_1C43F8000, v8, v9, "PhysicalSocialEvent is nil");
      sub_1C43FE9D4();
    }

    sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);

    return sub_1C4F00F28();
  }
}

void sub_1C4ABA7A4(void *a1)
{
  v24 = sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
  v2 = sub_1C4F00F28();
  v3 = [a1 discoveredPeople];
  sub_1C4461BB8(0, &qword_1EC0C2D50, 0x1E698EB68);
  v4 = sub_1C4F01678();

  v5 = sub_1C4428DA0(v4);
  if (!v5)
  {
    v7 = 0;
    v8 = 0;
LABEL_19:

    v15 = objc_opt_self();
    if ([v15 featureValueWithInt64_])
    {
      swift_isUniquelyReferenced_nonNull_native();
      sub_1C4660314();
    }

    else
    {
      v16 = sub_1C445FAA8(0xD000000000000013, 0x80000001C4FAFD10);
      if (v17)
      {
        v18 = v16;
        swift_isUniquelyReferenced_nonNull_native();
        sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
        sub_1C4F02458();

        v19 = *(*(v2 + 56) + 8 * v18);
        sub_1C4F02478();
      }
    }

    if ([v15 featureValueWithInt64_])
    {
      swift_isUniquelyReferenced_nonNull_native();
      sub_1C4660314();
    }

    else
    {
      v20 = sub_1C445FAA8(0xD000000000000014, 0x80000001C4FAFD30);
      if (v21)
      {
        v22 = v20;
        swift_isUniquelyReferenced_nonNull_native();
        sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
        sub_1C4F02458();

        v23 = *(*(v2 + 56) + 8 * v22);
        sub_1C4F02478();
      }
    }

    return;
  }

  v6 = v5;
  if (v5 < 1)
  {
    goto LABEL_29;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  while (1)
  {
    v10 = (v4 & 0xC000000000000001) != 0 ? MEMORY[0x1C6940F90](v9, v4) : *(v4 + 8 * v9 + 32);
    v11 = v10;
    sub_1C4ABB5F4(v10);
    if (v12)
    {
      break;
    }

    v14 = [v11 unknownPersonID];
    if (v14)
    {

      v13 = __OFADD__(v7++, 1);
      if (v13)
      {
        goto LABEL_28;
      }
    }

    else
    {
    }

LABEL_16:
    if (v6 == ++v9)
    {
      goto LABEL_19;
    }
  }

  v13 = __OFADD__(v8++, 1);
  if (!v13)
  {
    goto LABEL_16;
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
}

void sub_1C4ABAB38(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a1;
  v33 = a3;
  v32 = sub_1C456902C(&qword_1EC0B8600, &unk_1C4F0D4E0);
  MEMORY[0x1EEE9AC00](v32);
  v31 = sub_1C456902C(&qword_1EC0C2D58, &qword_1C4F50AE0);
  sub_1C43FCDF8();
  v28 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v27 = &v26 - v7;
  v8 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - v12;
  v29 = v3;
  v14 = *(v3 + 16);
  v15 = sub_1C4EF9CD8();
  v16 = *(*(v15 - 8) + 16);
  v16(v13, a2, v15);
  sub_1C440BAA8(v13, 0, 1, v15);
  v17 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v16(v10, a2 + *(v17 + 36), v15);
  sub_1C440BAA8(v10, 0, 1, v15);
  v18 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v19 = sub_1C457A86C(v13, v10, 0, 0, 0);
  v20 = [v14 publisherWithOptions_];

  v21 = v20;
  sub_1C456902C(&qword_1EC0B8608, &qword_1C4F3B4B0);
  v22 = v34;
  sub_1C4EFFC38();
  if (v22)
  {
  }

  else
  {
    v23 = swift_allocObject();
    v24 = v30;
    *(v23 + 16) = v29;
    *(v23 + 24) = v24;
    type metadata accessor for FeatureProviderChange(0);
    sub_1C4401CBC(&qword_1EC0C2D60, &qword_1EC0B8600, &unk_1C4F0D4E0, MEMORY[0x1E69A9B60]);

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v25 = v27;
    sub_1C4F02848();

    (*(v28 + 32))(v33, v25, v31);
  }
}

uint64_t sub_1C4ABAED8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a3;
  v5 = *a2;
  v4[4] = a4;
  v4[5] = v5;
  return MEMORY[0x1EEE6DFA0](sub_1C4ABAF00, 0, 0);
}

uint64_t sub_1C4ABAF00()
{
  v1 = [*(v0 + 40) eventBody];
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 32);
    v4 = *(v0 + 16);
    [*(v0 + 40) timestamp];
    sub_1C4EF9AC8();
    sub_1C4ABA7A4(v2);
    v6 = v5;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4ABB430(v6, v3);

    sub_1C465CF34();
    v8 = v7;

    v9 = type metadata accessor for FeatureProviderChange(0);
    v10 = 0;
    *(v4 + *(v9 + 20)) = 2;
    *(v4 + *(v9 + 24)) = v8;
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v11 = sub_1C4F00978();
    sub_1C442B738(v11, qword_1EDDFECB8);
    v12 = sub_1C4F00968();
    v13 = sub_1C4F01CF8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1C43F8000, v12, v13, "Unable to parse eventBody from read event in physical social featurizer", v14, 2u);
      sub_1C43FE9D4();
    }

    v9 = type metadata accessor for FeatureProviderChange(0);
    v10 = 1;
  }

  sub_1C440BAA8(*(v0 + 16), v10, 1, v9);
  v15 = *(v0 + 8);

  return v15();
}

id sub_1C4ABB0CC(uint64_t a1, uint64_t a2)
{
  sub_1C4ABA688();
  v4 = sub_1C44F9274(a1);

  if (!v4)
  {
    v5 = sub_1C4ABA3FC();
    v6 = sub_1C4499AD0(a1, a2, v5);

    if (v6)
    {
      return [objc_opt_self() featureValueWithDouble_];
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

uint64_t sub_1C4ABB214(uint64_t a1)
{
  v2 = [BiomeLibrary() ContextualUnderstanding];
  swift_unknownObjectRelease();
  v3 = [v2 PhysicalSocial];
  swift_unknownObjectRelease();
  *(v1 + 16) = v3;
  return v1;
}

uint64_t sub_1C4ABB344(uint64_t a1)
{
  *(a1 + 8) = sub_1C4ABB3AC(&qword_1EC0C2D40, &unk_1C4F4DEA8);
  result = sub_1C4ABB3AC(&qword_1EC0C2D48, &unk_1C4F4DEC4);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4ABB3AC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PhysicalSocialSignal();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C4ABB3EC(uint64_t a1)
{
  result = sub_1C4ABB3AC(&qword_1EC0C2D48, &unk_1C4F4DEC4);
  *(a1 + 16) = result;
  return result;
}

_BYTE *sub_1C4ABB430(_BYTE *a1, uint64_t a2)
{
  v4 = a1;
  v17[1] = *MEMORY[0x1E69E9840];
  v5 = a1[32];
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v16 = swift_slowAlloc();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v4 = sub_1C45867F0(v16, v7, v4, a2);
      MEMORY[0x1C6942830](v16, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v8);
  v9 = v17 - ((8 * v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1C4501018(0, v7, v9);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4586AB8(v9, v7, v4, a2, v10, v11, v12, v13);
  if (v2)
  {
    swift_willThrow();
  }

  else
  {
    v4 = v14;
  }

  swift_bridgeObjectRelease_n();
LABEL_6:

  return v4;
}

uint64_t sub_1C4ABB5F4(void *a1)
{
  v1 = [a1 cnContactID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C4F01138();

  return v3;
}

uint64_t sub_1C4ABB658(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1C44A7DA0;

  return sub_1C4ABAED8(a1, a2, v7, v6);
}

uint64_t sub_1C4ABB72C()
{
  if (qword_1EDDFDCF8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (qword_1EDDFF3C8)
  {
    v1 = (*(off_1EDDFF3D0 + 1))();
    v3 = v2;
    v13 = (*(v2 + 8) + **(v2 + 8));
    v4 = swift_task_alloc();
    v0[6] = v4;
    *v4 = v0;
    v4[1] = sub_1C4ABB9A0;
    v5 = v0[5];

    return v13(v5, v1, v3);
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v7 = sub_1C4F00978();
    sub_1C442B738(v7, qword_1EDDFECB8);
    v8 = sub_1C4F00968();
    v9 = sub_1C4F01CF8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1C43F8000, v8, v9, "InternalPlugin: Pipeline: loadPhasePlugins: failed to load phases", v10, 2u);
      MEMORY[0x1C6942830](v10, -1, -1);
    }

    v11 = v0[1];
    v12 = MEMORY[0x1E69E7CC0];

    return v11(v12);
  }
}

uint64_t sub_1C4ABB9A0(uint64_t a1)
{
  *(*v1 + 56) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1C4ABBAA0, 0, 0);
}

uint64_t sub_1C4ABBAA0()
{
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88(&qword_1EDDFECB0);
  }

  v1 = sub_1C4F00978();
  sub_1C442B738(v1, qword_1EDDFECB8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CF8();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 56);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = *(v5 + 16);

    _os_log_impl(&dword_1C43F8000, v2, v3, "InternalPlugin: Pipeline: loadPhasePlugins: loaded %ld phases", v6, 0xCu);
    MEMORY[0x1C6942830](v6, -1, -1);
  }

  else
  {
  }

  v7 = *(v0 + 56);
  v8 = *(v0 + 8);

  return v8(v7);
}

uint64_t sub_1C4ABBBE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v21 = a4;
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v13 = 0;
  if (v10)
  {
    while (1)
    {
      v14 = v13;
LABEL_8:
      v15 = __clz(__rbit64(v10)) | (v14 << 6);
      v16 = (*(a1 + 48) + 16 * v15);
      v17 = v16[1];
      v18 = *(*(a1 + 56) + 8 * v15);
      v20[0] = *v16;
      v20[1] = v17;
      v20[2] = v18;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4ABC734(v20, a2, a3, v21);
      if (v4)
      {
        break;
      }

      v10 &= v10 - 1;

      v13 = v14;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v11)
      {
      }

      v10 = *(v7 + 8 * v14);
      ++v13;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t Pipeline.StatusStore.init(config:pipelineType:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  sub_1C4409954(a1, a3);
  result = type metadata accessor for Pipeline.StatusStore(0);
  *(a3 + *(result + 20)) = v4;
  return result;
}

uint64_t sub_1C4ABBDAC(uint64_t a1)
{
  result = type metadata accessor for Configuration(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void *sub_1C4ABBE20@<X0>(uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t x8_0@<X8>)
{
  result = sub_1C446ABD0(a2);
  if (!v7)
  {
    sub_1C4B6A274(a4, x8_0);
  }

  return result;
}

uint64_t sub_1C4ABBEB0(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v6 = type metadata accessor for Pipeline.StatusStore(0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v10 = v9 - v8;
  LOBYTE(a2) = *a2;
  sub_1C44098F0(a3, v9 - v8);
  *(v10 + *(v7 + 28)) = a2;
  v13 = v10;
  v14 = a1;
  v15 = a2;
  sub_1C4D3D104(sub_1C4ABCF1C, v12, &unk_1F43DBA58);
  return sub_1C47CE078(v10);
}

uint64_t sub_1C4ABBF8C(unsigned __int8 *a1, uint64_t a2, uint64_t *a3, char a4)
{
  v7 = *a1;
  v8 = sub_1C4AD27B0();
  v12[2] = a2;
  v13 = v7;
  v14 = 0;
  sub_1C47240B4(sub_1C4ABCF3C, v12, v8);

  if (*(sub_1C4BA0370() + 16))
  {
    v15 = 0;
    v16 = 0xE000000000000000;
    if (v7)
    {
      v9 = 0x73756F6976657250;
      v10 = 0xEA0000000000203ALL;
    }

    else
    {
      v9 = 0x3A746E6572727543;
      v10 = 0xE900000000000020;
    }

    MEMORY[0x1C6940010](v9, v10);
    sub_1C448D934(a4);
    swift_isUniquelyReferenced_nonNull_native();
    v15 = *a3;
    sub_1C46627EC();
    *a3 = v15;
  }
}

void sub_1C4ABC0D4(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v6 = type metadata accessor for Pipeline.StatusStore(0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v10 = v9 - v8;
  LOBYTE(a2) = *a2;
  sub_1C44098F0(a3, v9 - v8);
  *(v10 + *(v7 + 28)) = a2;
  v11 = sub_1C4407898();
  sub_1C4ABC1BC(v11, v12, v13, v14);
  if (v3)
  {

    __break(1u);
  }

  else
  {
    v15 = sub_1C4407898();
    sub_1C4ABC1BC(v15, v16, v17, v18);
    sub_1C47CE078(v10);
  }
}

void sub_1C4ABC1BC(unsigned __int8 *a1, uint64_t a2, char a3, uint64_t *a4)
{
  v7 = *a1;
  if (qword_1EDDF7B60 != -1)
  {
    swift_once();
  }

  v31[0] = xmmword_1EDE2D960;
  v31[1] = *algn_1EDE2D970;
  v32 = qword_1EDE2D980;
  v8 = sub_1C4AD0BA8(v31, v7, 0);
  if (!*(v8 + 16))
  {
    goto LABEL_11;
  }

  if (qword_1EDDF7AC0 != -1)
  {
    swift_once();
  }

  sub_1C446ABD0(v7);
  if (v4)
  {

    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v9 = sub_1C4F00978();
    sub_1C442B738(v9, qword_1EDDFECB8);
    v10 = v4;
    v11 = sub_1C4F00968();
    v12 = sub_1C4F01CD8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = v4;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_1C43F8000, v11, v12, "Encountered an error while fetch phase status per phase: %@", v13, 0xCu);
      sub_1C45B4B90(v14);
      MEMORY[0x1C6942830](v14, -1, -1);
      MEMORY[0x1C6942830](v13, -1, -1);
    }

    else
    {
    }

    return;
  }

  v24 = sub_1C446B0A0();
  v26 = v25;

  if (v26)
  {
    v33 = MEMORY[0x1E69E7CC0];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4ABBBE0(v8, v24, v26, &v33);

    if (v7)
    {
      v27 = 0x73756F6976657250;
      v28 = 0xEA0000000000203ALL;
    }

    else
    {
      v27 = 0x3A746E6572727543;
      v28 = 0xE900000000000020;
    }

    MEMORY[0x1C6940010](v27, v28);
    sub_1C448D934(a3);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    swift_isUniquelyReferenced_nonNull_native();
    v30 = *a4;
    sub_1C4662814();
    *a4 = v30;

LABEL_11:

    return;
  }

  if (qword_1EDDFECB0 != -1)
  {
    swift_once();
  }

  v17 = sub_1C4F00978();
  sub_1C442B738(v17, qword_1EDDFECB8);
  v18 = sub_1C4F00968();
  v19 = sub_1C4F01CD8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v33 = v21;
    *v20 = 67109378;
    *(v20 + 4) = v7;
    *(v20 + 8) = 2080;
    sub_1C4F02248();

    v22 = 0xE700000000000000;
    v23 = 0x6E776F6E6B6E75;
    switch(a3)
    {
      case 1:
        v22 = 0xE400000000000000;
        v23 = 1819047270;
        break;
      case 2:
        v22 = 0xE500000000000000;
        v23 = 0x61746C6564;
        break;
      case 3:
        v22 = 0xEA0000000000676ELL;
        v23 = 0x69686374614D6F74;
        break;
      default:
        break;
    }

    MEMORY[0x1C6940010](v23, v22);

    MEMORY[0x1C6940010](62, 0xE100000000000000);
    v29 = sub_1C441D828(0x6E696C657069503CLL, 0xEF203A6570795465, &v33);

    *(v20 + 10) = v29;
    _os_log_impl(&dword_1C43F8000, v18, v19, "Session id unavailable for %{BOOL}d %s ", v20, 0x12u);
    sub_1C440962C(v21);
    MEMORY[0x1C6942830](v21, -1, -1);
    MEMORY[0x1C6942830](v20, -1, -1);
  }
}

void sub_1C4ABC734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(a1 + 16);
  sub_1C456902C(&qword_1EC0B86A8, &qword_1C4F16C10);
  v5 = sub_1C4F02538();
  v6 = v5;
  v7 = 0;
  v8 = 1 << *(v4 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v4 + 64);
  v11 = (v8 + 63) >> 6;
  v27 = v5 + 64;
  if (v10)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_10:
      v15 = v12 | (v7 << 6);
      v16 = (*(v4 + 48) + 16 * v15);
      v17 = *v16;
      v18 = v16[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4F01A28();
      *(v27 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v19 = (v6[6] + 16 * v15);
      *v19 = v17;
      v19[1] = v18;
      v20 = (v6[7] + 16 * v15);
      *v20 = 0;
      v20[1] = 0xE000000000000000;
      v21 = v6[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        break;
      }

      v6[2] = v23;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v13 = v7;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        swift_isUniquelyReferenced_nonNull_native();
        sub_1C44E737C();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        swift_isUniquelyReferenced_nonNull_native();
        sub_1C44E737C();
        sub_1C4589378();
        v24 = *(*a4 + 16);
        sub_1C4589F10();
        v25 = *a4;
        *(v25 + 16) = v24 + 1;
        *(v25 + 8 * v24 + 32) = v6;
        return;
      }

      v14 = *(v4 + 64 + 8 * v7);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1C4ABC99C@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v4 = a3;
  v5 = a2;
  v7 = a1[3];
  v8 = a1[4];
  v9 = sub_1C4409678(a1, v7);
  result = sub_1C4ABCA10(v9, v5, v4, v7, v8);
  *a4 = result;
  return result;
}

uint64_t sub_1C4ABCA10(uint64_t a1, int a2, char a3, uint64_t a4, uint64_t a5)
{
  v25 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = sub_1C4F01F48();
  v9 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v11 = &v23 - v10;
  v23 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23 - v13;
  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  *(inited + 32) = (*(a5 + 32))(a4, a5);
  *(inited + 40) = v16;
  v26 = inited;
  if (a3)
  {
    v17 = (*(a5 + 40))(a4, a5);
    sub_1C449ADBC(v17);
  }

  sub_1C4ABBE20(v25 & 1, 0, v11);
  if (sub_1C44157D4(v11, 1, AssociatedTypeWitness) == 1)
  {

    (*(v9 + 8))(v11, v24);
    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    v20 = v23;
    v21 = (*(v23 + 32))(v14, v11, AssociatedTypeWitness);
    v22 = v26;
    MEMORY[0x1EEE9AC00](v21);
    *(&v23 - 4) = a4;
    *(&v23 - 3) = a5;
    *(&v23 - 2) = v14;
    v18 = sub_1C45DB55C(sub_1C4ABCEF8, (&v23 - 6), v22);

    (*(v20 + 8))(v14, AssociatedTypeWitness);
  }

  return v18;
}

uint64_t sub_1C4ABCD28@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = *a1;
  v11 = a1[1];
  (*(v13 + 16))(&v19 - v10, a2, AssociatedTypeWitness, v9);
  if (swift_dynamicCast())
  {
    v14 = v19;
    v15 = 0xE700000000000000;
    v16 = 0x6E776F6E6B6E75;
    *a5 = v12;
    a5[1] = v11;
    switch(v14)
    {
      case 1:
        v15 = 0xE400000000000000;
        v16 = 1819047270;
        break;
      case 2:
        v15 = 0xE500000000000000;
        v16 = 0x61746C6564;
        break;
      case 3:
        v15 = 0xEA0000000000676ELL;
        v16 = 0x69686374614D6F74;
        break;
      default:
        break;
    }

    a5[2] = v16;
    a5[3] = v15;
    return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  else
  {
    *a5 = v12;
    a5[1] = v11;
    v19 = 0;
    v20 = 0xE000000000000000;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    result = sub_1C4F028E8();
    v18 = v20;
    a5[2] = v19;
    a5[3] = v18;
  }

  return result;
}

uint64_t sub_1C4ABCF60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v19 = sub_1C456902C(&qword_1EC0C1A20, &unk_1C4F4E130);
  MEMORY[0x1EEE9AC00](v19);
  v7 = (&v19 - v6);
  v21 = a1;
  v8 = 1 << *(a2 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a2 + 64);
  v11 = (v8 + 63) >> 6;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v13 = 0;
  while (v10)
  {
    v14 = v13;
LABEL_10:
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v16 = v15 | (v14 << 6);
    v17 = *(a2 + 48);
    v18 = sub_1C4EFD548();
    (*(*(v18 - 8) + 16))(v7, v17 + *(*(v18 - 8) + 72) * v16, v18);
    *(v7 + *(v19 + 48)) = *(*(a2 + 56) + 8 * v16);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4A2F810(&v21, v7, v20);
    result = sub_1C446F170(v7, &qword_1EC0C1A20, &unk_1C4F4E130);
    if (v3)
    {
    }
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v11)
    {

      return v21;
    }

    v10 = *(a2 + 64 + 8 * v14);
    ++v13;
    if (v10)
    {
      v13 = v14;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t static Pipeline.sharedPipeline(for:)()
{
  if (qword_1EDDF0AB0 != -1)
  {
    swift_once();
  }

  return sub_1C4468E90();
}

uint64_t Pipeline.runAppleMusicDelta(reason:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1C43FFE30(sub_1C4ABD1C8);
}

uint64_t sub_1C4ABD1C8()
{
  sub_1C43FBCD4();
  if (qword_1EDDFD268 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Source(0);
  sub_1C442B738(v0, &qword_1EDDFD270);
  v1 = swift_task_alloc();
  v2 = sub_1C4414DF4(v1);
  *v2 = v3;
  sub_1C441BC24(v2);

  return sub_1C4ACB9F0();
}

uint64_t Pipeline.runWalletOrdersDelta(reason:source:)()
{
  sub_1C43FCF70();
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  sub_1C43FC688(v1);

  return sub_1C4ACB9F0();
}

uint64_t Pipeline.runCNContactDelta(reason:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1C43FFE30(sub_1C4ABD340);
}

uint64_t sub_1C4ABD340()
{
  sub_1C43FBCD4();
  if (qword_1EDDFED28 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Source(0);
  sub_1C442B738(v0, &unk_1EDDFD088);
  v1 = swift_task_alloc();
  v2 = sub_1C4414DF4(v1);
  *v2 = v3;
  sub_1C441BC24(v2);

  return sub_1C4ACB9F0();
}

uint64_t Pipeline.runEntityTaggingDelta(reason:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1C43FFE30(sub_1C4ABD420);
}

uint64_t sub_1C4ABD420()
{
  sub_1C43FBCD4();
  if (qword_1EDDFD178 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Source(0);
  sub_1C442B738(v0, &qword_1EDDFD180);
  v1 = swift_task_alloc();
  v2 = sub_1C4414DF4(v1);
  *v2 = v3;
  sub_1C441BC24(v2);

  return sub_1C4ACB9F0();
}

void sub_1C4ABD590()
{
  sub_1C43FBD3C();
  v73 = v1;
  v74 = v2;
  v75 = v3;
  v76 = v0;
  v72 = v4;
  v5 = sub_1C456902C(&unk_1EC0C07E0, &unk_1C4F168F0);
  sub_1C43FBD18(v5);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  v71 = &v64 - v7;
  v8 = sub_1C4EFDE88();
  sub_1C43FCDF8();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v68 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v67 = &v64 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v64 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v64 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v65 = &v64 - v22;
  sub_1C4EFDE98();
  sub_1C43FCDF8();
  v69 = v24;
  v70 = v23;
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBCC4();
  v77 = v26 - v25;
  v27 = MEMORY[0x1E69E7CC8];
  v81 = MEMORY[0x1E69E7CC8];
  sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
  v28 = sub_1C4EFEEF8();
  sub_1C43FCF7C(v28);
  *(swift_allocObject() + 16) = xmmword_1C4F0D130;
  sub_1C4EFEBB8();
  sub_1C4D504A4();
  v66 = v29;
  v30 = *(v10 + 104);
  sub_1C43FC448();
  v30();
  v64 = v20;
  sub_1C43FC448();
  v30();
  v31 = v17;
  sub_1C43FC448();
  v30();
  v32 = v67;
  sub_1C43FC448();
  v30();
  v33 = v68;
  sub_1C43FC448();
  v30();
  v62 = v33;
  v63 = 0;
  v34 = v65;
  sub_1C4EFDCD8();

  v35 = *(v10 + 8);
  v36 = sub_1C43FBC98();
  v35(v36);
  (v35)(v32, v8);
  (v35)(v31, v8);
  (v35)(v64, v8);
  (v35)(v34, v8);
  v37 = sub_1C4EFD678();
  v38 = v71;
  sub_1C440BAA8(v71, 1, 1, v37);
  v78[2] = &v81;
  v39 = v77;
  (v75)(v77, v38, v72, v78);
  sub_1C446F170(v38, &unk_1EC0C07E0, &unk_1C4F168F0);
  (*(v69 + 8))(v39, v70);
  v80 = v27;
  v40 = v81 + 64;
  v41 = 1 << *(v81 + 32);
  v42 = -1;
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  v43 = v42 & *(v81 + 64);
  v44 = (v41 + 63) >> 6;
  v75 = v81;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v45 = 0;
  v71 = v44;
  v72 = v40;
  if (v43)
  {
LABEL_8:
    while (1)
    {
      v47 = __clz(__rbit64(v43)) | (v45 << 6);
      v48 = (*(v75 + 48) + 16 * v47);
      v50 = *v48;
      v49 = v48[1];
      v51 = *(*(v75 + 56) + 8 * v47);
      v77 = *(v51 + 16);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      swift_isUniquelyReferenced_nonNull_native();
      v79 = v27;
      v52 = sub_1C445FAA8(v50, v49);
      if (__OFADD__(v27[2], (v53 & 1) == 0))
      {
        break;
      }

      v54 = v52;
      v55 = v53;
      sub_1C456902C(&qword_1EC0B9800, &qword_1C4F0FAE0);
      v56 = sub_1C4F02458();
      if (v56)
      {
        v56 = sub_1C445FAA8(v50, v49);
        if ((v55 & 1) != (v57 & 1))
        {
          goto LABEL_22;
        }

        v54 = v56;
      }

      v27 = v79;
      if (v55)
      {
        *(v79[7] + 8 * v54) = v77;
      }

      else
      {
        v79[(v54 >> 6) + 8] |= 1 << v54;
        v58 = (v27[6] + 16 * v54);
        *v58 = v50;
        v58[1] = v49;
        *(v27[7] + 8 * v54) = v77;
        v59 = v27[2];
        v60 = __OFADD__(v59, 1);
        v61 = v59 + 1;
        if (v60)
        {
          goto LABEL_21;
        }

        v27[2] = v61;
        v56 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }

      v43 &= v43 - 1;
      MEMORY[0x1EEE9AC00](v56);
      *(&v64 - 4) = &v80;
      *(&v64 - 3) = v50;
      v62 = v49;
      sub_1C4ABDEF0(1, 3, v51, v73, (&v64 - 6), v74);

      v44 = v71;
      v40 = v72;
      if (!v43)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    while (1)
    {
      v46 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        break;
      }

      if (v46 >= v44)
      {

        sub_1C43FE9F0();
        return;
      }

      v43 = *(v40 + 8 * v46);
      ++v45;
      if (v43)
      {
        v45 = v46;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  sub_1C4F029F8();
  __break(1u);
}

void sub_1C4ABDBFC()
{
  sub_1C43FBD3C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBCC4();
  v13 = v12 - v11;
  v14 = sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  sub_1C43FBD18(v14);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C440E3E8();
  v16 = (v6 + *(v2(0) + 32));
  v18 = *v16;
  v17 = v16[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C43FE5F8();
  sub_1C4EFD2E8();
  v19 = sub_1C4EFD548();
  if (sub_1C44157D4(v0, 1, v19) == 1)
  {
    sub_1C446F170(v0, &qword_1EC0B8568, &unk_1C4F319B0);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  else
  {
    v18 = sub_1C4EFD3D8();
    v17 = v20;
    sub_1C440A6B8();
    (*(v21 + 8))(v0, v19);
  }

  (*(v9 + 16))(v13, v6, v7);
  swift_isUniquelyReferenced_nonNull_native();
  v22 = *v4;
  v37 = *v4;
  *v4 = 0x8000000000000000;
  v23 = sub_1C43FE5F8();
  v25 = sub_1C445FAA8(v23, v24);
  if (__OFADD__(*(v22 + 16), (v26 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v27 = v25;
  v28 = v26;
  sub_1C456902C(&unk_1EC0C2E10, &qword_1C4F4E068);
  if (sub_1C4F02458())
  {
    v29 = sub_1C43FE5F8();
    v31 = sub_1C445FAA8(v29, v30);
    if ((v28 & 1) == (v32 & 1))
    {
      v27 = v31;
      goto LABEL_8;
    }

LABEL_13:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

LABEL_8:
  *v4 = v37;

  v33 = *v4;
  if (v28)
  {
  }

  else
  {
    sub_1C44686DC(v27, v18, v17, MEMORY[0x1E69E7CC0], *v4);
  }

  v34 = *(v33 + 56) + 8 * v27;
  sub_1C4588EAC();
  v35 = *(*v34 + 16);
  sub_1C4589A94();
  v36 = *v34;
  *(v36 + 16) = v35 + 1;
  (*(v9 + 32))(v36 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v35, v13, v7);
  sub_1C43FE9F0();
}

uint64_t sub_1C4ABDEF0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
    MEMORY[0x1EEE9AC00](result);
    v12[2] = v7;
    v13 = v8;
    v14 = v9;
    v15 = v10;
    v16 = v11;

    sub_1C4465390(a6, v12);
  }

  return result;
}

uint64_t sub_1C4ABDF8C(uint64_t a1, uint64_t a2, int a3, int a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  v58 = a5;
  v49 = a6;
  v53 = a4;
  LODWORD(v59) = a3;
  v56 = a1;
  v7 = sub_1C456902C(&unk_1EC0C2DF0, qword_1C4F5B820);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v49 - v9;
  v11 = sub_1C456902C(&qword_1EC0B9AC8, &unk_1C4F10E00);
  v54 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v52 = &v49 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v55 = &v49 - v17;
  sub_1C4EFBD18();
  v65 = a2;
  v60[3] = &type metadata for FusedTripleColumn;
  v51 = sub_1C45021B8();
  v60[4] = v51;
  LOBYTE(v60[0]) = 0;
  v50 = sub_1C4EFB298();
  v63 = v50;
  v64 = MEMORY[0x1E699FE60];
  sub_1C4422F90(&v61);
  sub_1C456902C(&qword_1EC0BB250, &unk_1C4F1E7D0);
  sub_1C4401CBC(&qword_1EDDFA5B0, &qword_1EC0BB250, &unk_1C4F1E7D0, MEMORY[0x1E69E6328]);
  sub_1C4472508(&qword_1EDDFCCA0, MEMORY[0x1E69A9810], MEMORY[0x1E69A9800]);
  sub_1C4F01458();
  sub_1C440962C(v60);
  sub_1C4EFBCD8();
  (*(v8 + 8))(v10, v7);
  sub_1C440962C(&v61);
  sub_1C456902C(&unk_1EC0C2E00, &unk_1C4F2DBD0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1C4F0C890;
  *(v18 + 56) = &type metadata for FusedTripleColumn;
  v19 = sub_1C48112EC();
  *(v18 + 64) = v19;
  v20 = v59;
  *(v18 + 32) = v59;
  *(v18 + 96) = &type metadata for FusedTripleColumn;
  *(v18 + 104) = v19;
  LOBYTE(v10) = v53;
  *(v18 + 72) = v53;
  v63 = &type metadata for FusedTripleColumn;
  v64 = v51;
  LOBYTE(v61) = v20;
  v21 = MEMORY[0x1E699FE50];
  *(v18 + 136) = v50;
  *(v18 + 144) = v21;
  sub_1C4422F90((v18 + 112));
  sub_1C4EFBD28();
  sub_1C440962C(&v61);
  sub_1C4401CBC(&unk_1EDDFE840, &qword_1EC0B9AC8, &unk_1C4F10E00, MEMORY[0x1E699FF88]);
  v22 = v52;
  sub_1C4EFB688();

  v23 = *(v54 + 8);
  v23(v13, v11);
  sub_1C456902C(&qword_1EC0BE5D8, &qword_1C4F376E0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1C4F0CE60;
  *(v24 + 56) = &type metadata for FusedTripleColumn;
  v25 = sub_1C481123C();
  *(v24 + 64) = v25;
  *(v24 + 32) = v59;
  *(v24 + 96) = &type metadata for FusedTripleColumn;
  *(v24 + 104) = v25;
  *(v24 + 72) = v10;
  sub_1C4401CBC(&qword_1EDDFA270, &qword_1EC0B9AC8, &unk_1C4F10E00, MEMORY[0x1E699FF58]);
  v26 = v55;
  sub_1C4EFB6E8();

  v23(v22, v11);
  sub_1C4401CBC(&qword_1EDDFE850, &qword_1EC0B9AC8, &unk_1C4F10E00, MEMORY[0x1E699FF60]);
  v27 = v57;
  v28 = sub_1C4EFB028();
  v29 = v27;
  result = (v23)(v26, v11);
  if (v27)
  {
    return result;
  }

  v57 = v28;
  while (1)
  {
    v31 = sub_1C4458EE8();
    if (v29)
    {
    }

    v32 = v31;
    if (!v31)
    {
    }

    sub_1C4EFBBA8();
    v33 = sub_1C4EFBBE8();
    if (v33)
    {
      MEMORY[0x1EEE9AC00](v33);
      *(&v49 - 2) = v32;
      *(&v49 - 1) = 0;
      v35 = sqlite3_column_type(v34, 0);
      if (v35 == 5)
      {
        MEMORY[0x1EEE9AC00](v35);
        *(&v49 - 2) = sub_1C487BF24;
        *(&v49 - 1) = (&v49 - 4);
        sub_1C4EFB968();
        goto LABEL_24;
      }

      v36 = sub_1C4F011E8();
      v38 = v37;
      v61 = v36;
    }

    else
    {
      sub_1C4EFBB98();
      v36 = v61;
      v38 = v62;
    }

    sub_1C4EFBBA8();
    v39 = sub_1C4EFBBE8();
    if (v39)
    {
      MEMORY[0x1EEE9AC00](v39);
      *(&v49 - 2) = v32;
      *(&v49 - 1) = 1;
      v41 = sqlite3_column_type(v40, 1);
      if (v41 == 5)
      {
        MEMORY[0x1EEE9AC00](v41);
        *(&v49 - 2) = sub_1C487BF24;
        *(&v49 - 1) = (&v49 - 4);
        goto LABEL_23;
      }

      v42 = sub_1C4F011E8();
      v44 = v43;
      v61 = v42;
    }

    else
    {
      sub_1C4EFBB98();
      v42 = v61;
      v44 = v62;
    }

    sub_1C4EFBBA8();
    v45 = sub_1C4EFBBE8();
    if (v45)
    {
      break;
    }

    sub_1C4EFBB98();
    v58(v36, v38, v42, v44, v61);
LABEL_17:
  }

  v59 = 0;
  MEMORY[0x1EEE9AC00](v45);
  *(&v49 - 2) = v32;
  *(&v49 - 1) = 2;
  v47 = sqlite3_column_type(v46, 2);
  if (v47 != 5)
  {
    v48 = sub_1C4F02AA8();
    v29 = v59;
    v58(v36, v38, v42, v44, v48);
    goto LABEL_17;
  }

  MEMORY[0x1EEE9AC00](v47);
  *(&v49 - 2) = sub_1C487BDA4;
  *(&v49 - 1) = (&v49 - 4);
LABEL_23:
  sub_1C4EFB968();
LABEL_24:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1C4ABE90C(uint64_t a1, uint64_t a2, int a3, int a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  v56 = a5;
  v47 = a6;
  v51 = a4;
  LODWORD(v57) = a3;
  v54 = a1;
  v7 = sub_1C456902C(&unk_1EC0C2DF0, qword_1C4F5B820);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v47 - v9;
  v11 = sub_1C456902C(&qword_1EC0B9AC8, &unk_1C4F10E00);
  v52 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v50 = &v47 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v53 = &v47 - v17;
  sub_1C4EFBD18();
  v63 = a2;
  v58[3] = &type metadata for FusedTripleColumn;
  v49 = sub_1C45021B8();
  v58[4] = v49;
  LOBYTE(v58[0]) = 0;
  v48 = sub_1C4EFB298();
  v61 = v48;
  v62 = MEMORY[0x1E699FE60];
  sub_1C4422F90(&v59);
  sub_1C456902C(&qword_1EC0BB250, &unk_1C4F1E7D0);
  sub_1C4401CBC(&qword_1EDDFA5B0, &qword_1EC0BB250, &unk_1C4F1E7D0, MEMORY[0x1E69E6328]);
  sub_1C4472508(&qword_1EDDFCCA0, MEMORY[0x1E69A9810], MEMORY[0x1E69A9800]);
  sub_1C4F01458();
  sub_1C440962C(v58);
  sub_1C4EFBCD8();
  (*(v8 + 8))(v10, v7);
  sub_1C440962C(&v59);
  sub_1C456902C(&unk_1EC0C2E00, &unk_1C4F2DBD0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1C4F0C890;
  *(v18 + 56) = &type metadata for FusedTripleColumn;
  v19 = sub_1C48112EC();
  *(v18 + 64) = v19;
  v20 = v57;
  *(v18 + 32) = v57;
  *(v18 + 96) = &type metadata for FusedTripleColumn;
  *(v18 + 104) = v19;
  LOBYTE(v10) = v51;
  *(v18 + 72) = v51;
  v61 = &type metadata for FusedTripleColumn;
  v62 = v49;
  LOBYTE(v59) = v20;
  v21 = MEMORY[0x1E699FE50];
  *(v18 + 136) = v48;
  *(v18 + 144) = v21;
  sub_1C4422F90((v18 + 112));
  sub_1C4EFBD28();
  sub_1C440962C(&v59);
  sub_1C4401CBC(&unk_1EDDFE840, &qword_1EC0B9AC8, &unk_1C4F10E00, MEMORY[0x1E699FF88]);
  v22 = v50;
  sub_1C4EFB688();

  v23 = *(v52 + 8);
  v23(v13, v11);
  sub_1C456902C(&qword_1EC0BE5D8, &qword_1C4F376E0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1C4F0CE60;
  *(v24 + 56) = &type metadata for FusedTripleColumn;
  v25 = sub_1C481123C();
  *(v24 + 64) = v25;
  *(v24 + 32) = v57;
  *(v24 + 96) = &type metadata for FusedTripleColumn;
  *(v24 + 104) = v25;
  *(v24 + 72) = v10;
  sub_1C4401CBC(&qword_1EDDFA270, &qword_1EC0B9AC8, &unk_1C4F10E00, MEMORY[0x1E699FF58]);
  v26 = v53;
  sub_1C4EFB6E8();

  v23(v22, v11);
  sub_1C4401CBC(&qword_1EDDFE850, &qword_1EC0B9AC8, &unk_1C4F10E00, MEMORY[0x1E699FF60]);
  v27 = v55;
  v28 = sub_1C4EFB028();
  v29 = v27;
  result = (v23)(v26, v11);
  if (!v27)
  {
    v55 = v28;
    while (1)
    {
      v31 = sub_1C4458EE8();
      if (v29)
      {
      }

      v32 = v31;
      if (!v31)
      {
      }

      sub_1C4EFBBA8();
      v33 = sub_1C4EFBBE8();
      if (v33)
      {
        MEMORY[0x1EEE9AC00](v33);
        *(&v47 - 2) = v32;
        *(&v47 - 1) = 0;
        v35 = sqlite3_column_type(v34, 0);
        if (v35 == 5)
        {
          goto LABEL_20;
        }

        v36 = sub_1C4F011E8();
        v38 = v37;
        v59 = v36;
      }

      else
      {
        sub_1C4EFBB98();
        v36 = v59;
        v38 = v60;
      }

      sub_1C4EFBBA8();
      v39 = sub_1C4EFBBE8();
      if (v39)
      {
        MEMORY[0x1EEE9AC00](v39);
        *(&v47 - 2) = v32;
        *(&v47 - 1) = 1;
        v35 = sqlite3_column_type(v40, 1);
        if (v35 == 5)
        {
          goto LABEL_20;
        }

        v41 = sub_1C4F011E8();
        v43 = v42;
        v59 = v41;
      }

      else
      {
        sub_1C4EFBB98();
        v41 = v59;
        v43 = v60;
      }

      sub_1C4EFBBA8();
      v44 = sub_1C4EFBBE8();
      if (v44)
      {
        v57 = 0;
        MEMORY[0x1EEE9AC00](v44);
        *(&v47 - 2) = v32;
        *(&v47 - 1) = 2;
        v35 = sqlite3_column_type(v45, 2);
        if (v35 == 5)
        {
LABEL_20:
          MEMORY[0x1EEE9AC00](v35);
          *(&v47 - 2) = sub_1C487BF24;
          *(&v47 - 1) = (&v47 - 4);
          sub_1C4EFB968();
          result = swift_unexpectedError();
          __break(1u);
          return result;
        }

        v46 = sub_1C4F02AA8();
        v29 = v57;
        v56(v36, v38, v41, v43, v46);
      }

      else
      {
        sub_1C4EFBB98();
        v56(v36, v38, v41, v43, v59);
      }
    }
  }

  return result;
}

uint64_t Pipeline.runDeltaUpdate(reason:source:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_1C43FFE30(sub_1C4ABF2A8);
}

uint64_t sub_1C4ABF2A8()
{
  sub_1C43FCF70();
  if (*(v0 + 16) == 1 || (Configuration.isLivableSourcesEnabled.getter() & 1) != 0)
  {
    v1 = swift_task_alloc();
    *(v0 + 40) = v1;
    *v1 = v0;
    v1[1] = sub_1C4ABF410;
    sub_1C440F4D4(*(v0 + 16));

    return sub_1C4ACB9F0();
  }

  else
  {
    if (qword_1EDDFD028 != -1)
    {
      sub_1C4419274();
      swift_once();
    }

    v3 = sub_1C4F00978();
    sub_1C43FCEE8(v3, qword_1EDE2DE10);
    v4 = sub_1C4F00968();
    v5 = sub_1C4F01CD8();
    if (sub_1C4402B64(v5))
    {
      *sub_1C43FCED0() = 0;
      sub_1C4402B48();
      _os_log_impl(v6, v7, v8, v9, v10, 2u);
      sub_1C43FE9D4();
    }

    sub_1C43FC1B0();

    return v11();
  }
}

uint64_t sub_1C4ABF410()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v1 = *v0;
  sub_1C43FBDAC();
  *v2 = v1;

  sub_1C43FBDA0();

  return v3();
}

uint64_t sub_1C4ABF4F0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1C43FFE30(sub_1C4ABF508);
}

uint64_t sub_1C4ABF508()
{
  sub_1C43FBCD4();
  *(v0 + 48) = 3;

  v1 = swift_task_alloc();
  v2 = sub_1C4414DF4(v1);
  *v2 = v3;
  v2[1] = sub_1C4ABF5C0;
  v4 = sub_1C4414E5C(*(v0 + 16));

  return sub_1C446D32C(v4, v5, v6, v7);
}

uint64_t sub_1C4ABF5C0()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v5 = *v1;
  sub_1C43FBDAC();
  *v6 = v5;
  *(v3 + 40) = v0;

  if (v0)
  {
    sub_1C43FEAF8();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    sub_1C43FBDA0();

    return v10();
  }
}

uint64_t sub_1C4ABF6DC()
{
  sub_1C43FBCD4();

  sub_1C43FBDA0();

  return v0();
}

void sub_1C4ABF738()
{
  v1 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore8Pipeline_lockbox);
  os_unfair_lock_lock(v1 + 6);
  sub_1C4AC3258(&v1[4]);
  os_unfair_lock_unlock(v1 + 6);
}

uint64_t sub_1C4ABF788()
{
  sub_1C43FC784();
  v1 = sub_1C43FDCD8();
  sub_1C4ACDCB4(v1, v2);
  sub_1C4461D38();
  if (v0)
  {
    return sub_1C440246C();
  }

  if (v4)
  {
    if (qword_1EDDFEC88 != -1)
    {
      sub_1C4410E64(&qword_1EDDFEC88);
    }

    return sub_1C440246C();
  }

  sub_1C443288C();
  result = sub_1C44122F4();
  __break(1u);
  return result;
}

uint64_t sub_1C4ABF81C()
{
  sub_1C43FC784();
  v1 = sub_1C43FDCD8();
  sub_1C4ACDC7C(v1, v2);
  sub_1C4461D38();
  if (v0)
  {
    return sub_1C440246C();
  }

  if (v4)
  {
    if (qword_1EDDFEC88 != -1)
    {
      sub_1C4410E64(&qword_1EDDFEC88);
    }

    return sub_1C440246C();
  }

  sub_1C443288C();
  result = sub_1C44122F4();
  __break(1u);
  return result;
}

uint64_t sub_1C4ABF8B0()
{
  sub_1C43FC784();
  v1 = sub_1C43FDCD8();
  sub_1C4ACDCD0(v1, v2);
  sub_1C4461D38();
  if (v0)
  {
    return sub_1C440246C();
  }

  if (v4)
  {
    if (qword_1EDDFEC88 != -1)
    {
      sub_1C4410E64(&qword_1EDDFEC88);
    }

    return sub_1C440246C();
  }

  sub_1C443288C();
  result = sub_1C44122F4();
  __break(1u);
  return result;
}

uint64_t sub_1C4ABF944()
{
  sub_1C43FC784();
  v1 = sub_1C43FDCD8();
  sub_1C4ACDCEC(v1, v2);
  sub_1C4461D38();
  if (v0)
  {
    return sub_1C440246C();
  }

  if (v4)
  {
    if (qword_1EDDFEC88 != -1)
    {
      sub_1C4410E64(&qword_1EDDFEC88);
    }

    return sub_1C440246C();
  }

  sub_1C443288C();
  result = sub_1C44122F4();
  __break(1u);
  return result;
}

uint64_t sub_1C4ABF9D8()
{
  sub_1C43FC784();
  v1 = sub_1C43FDCD8();
  sub_1C4ACDC98(v1, v2);
  sub_1C4461D38();
  if (v0)
  {
    return sub_1C440246C();
  }

  if (v4)
  {
    if (qword_1EDDFEC88 != -1)
    {
      sub_1C4410E64(&qword_1EDDFEC88);
    }

    return sub_1C440246C();
  }

  sub_1C443288C();
  result = sub_1C44122F4();
  __break(1u);
  return result;
}

uint64_t sub_1C4ABFA6C()
{
  sub_1C43FC784();
  v1 = sub_1C43FDCD8();
  sub_1C4ACD990(v1, v2);
  sub_1C4461D38();
  if (v0)
  {
    return sub_1C440246C();
  }

  if (v4)
  {
    if (qword_1EDDFEC88 != -1)
    {
      sub_1C4410E64(&qword_1EDDFEC88);
    }

    return sub_1C440246C();
  }

  sub_1C443288C();
  result = sub_1C44122F4();
  __break(1u);
  return result;
}

uint64_t sub_1C4ABFB00()
{
  sub_1C43FC784();
  v1 = sub_1C43FDCD8();
  sub_1C4ACD9AC(v1, v2);
  sub_1C4461D38();
  if (v0)
  {
    return sub_1C440246C();
  }

  if (v4)
  {
    if (qword_1EDDFEC88 != -1)
    {
      sub_1C4410E64(&qword_1EDDFEC88);
    }

    return sub_1C440246C();
  }

  sub_1C443288C();
  result = sub_1C44122F4();
  __break(1u);
  return result;
}

uint64_t sub_1C4ABFB94()
{
  sub_1C43FC784();
  v1 = sub_1C43FDCD8();
  sub_1C4ACDD08(v1, v2);
  sub_1C4461D38();
  if (v0)
  {
    return sub_1C440246C();
  }

  if (v4)
  {
    if (qword_1EDDFEC88 != -1)
    {
      sub_1C4410E64(&qword_1EDDFEC88);
    }

    return sub_1C440246C();
  }

  sub_1C443288C();
  result = sub_1C44122F4();
  __break(1u);
  return result;
}

uint64_t sub_1C4ABFC28()
{
  sub_1C43FC784();
  v1 = sub_1C43FDCD8();
  sub_1C4ACD974(v1, v2);
  sub_1C4461D38();
  if (v0)
  {
    return sub_1C440246C();
  }

  if (v4)
  {
    if (qword_1EDDFEC88 != -1)
    {
      sub_1C4410E64(&qword_1EDDFEC88);
    }

    return sub_1C440246C();
  }

  sub_1C443288C();
  result = sub_1C44122F4();
  __break(1u);
  return result;
}

uint64_t sub_1C4ABFCBC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1C43FFE30(sub_1C4ABFCD4);
}

uint64_t sub_1C4ABFCD4()
{
  sub_1C43FBCD4();
  *(v0 + 48) = 1;

  v1 = swift_task_alloc();
  v2 = sub_1C4414DF4(v1);
  *v2 = v3;
  v2[1] = sub_1C4ABFD8C;
  v4 = sub_1C4414E5C(*(v0 + 16));

  return sub_1C446D32C(v4, v5, v6, v7);
}

uint64_t sub_1C4ABFD8C()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v5 = *v1;
  sub_1C43FBDAC();
  *v6 = v5;
  *(v3 + 40) = v0;

  if (v0)
  {
    sub_1C43FEAF8();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    sub_1C43FBDA0();

    return v10();
  }
}

uint64_t sub_1C4ABFEC8()
{
  sub_1C44249B4();
  sub_1C4404D98();
  if (qword_1EDDFD028 != -1)
  {
    sub_1C4419274();
    swift_once();
  }

  v1 = sub_1C4F00978();
  *(v0 + 24) = sub_1C442B738(v1, qword_1EDE2DE10);

  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CF8();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 16);
  if (v4)
  {
    v6 = sub_1C43FD084();
    sub_1C43FFD34();
    sub_1C4458794();
    *v6 = 136315138;
    sub_1C4AD0240();
    sub_1C4424D3C();

    v7 = sub_1C4404044();
    sub_1C441D828(v7, v8, v9);
    sub_1C4404C88();

    *(v6 + 4) = v5;
    sub_1C4404638(&dword_1C43F8000, v10, v11, "PhaseStart %s");
    sub_1C440AEF4();
    sub_1C43FEA20();
  }

  else
  {
  }

  v12 = swift_task_alloc();
  v13 = sub_1C4414DF4(v12);
  *v13 = v14;
  v13[1] = sub_1C4AC0040;
  sub_1C442642C();

  return sub_1C448F6CC();
}

uint64_t sub_1C4AC0040()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = *v1;
  sub_1C43FBDAC();
  *v3 = v2;

  if (v0)
  {
    sub_1C43FBDA0();

    return v4();
  }

  else
  {
    sub_1C43FEAF8();

    return MEMORY[0x1EEE6DFA0](v6, v7, v8);
  }
}

uint64_t sub_1C4AC0158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C44249B4();
  sub_1C4404D98();

  v11 = sub_1C4F00968();
  v12 = sub_1C4F01CF8();
  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v10 + 16);
  if (v13)
  {
    v15 = sub_1C43FD084();
    sub_1C43FFD34();
    sub_1C4458794();
    *v15 = 136315138;
    sub_1C4AD0240();
    sub_1C4424D3C();

    v16 = sub_1C4404044();
    sub_1C441D828(v16, v17, v18);
    sub_1C4404C88();

    *(v15 + 4) = v14;
    sub_1C4404638(&dword_1C43F8000, v19, v20, "PhaseFinish %s");
    sub_1C440AEF4();
    sub_1C43FEA20();
  }

  else
  {
  }

  sub_1C43FC1B0();
  sub_1C442642C();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t sub_1C4AC0270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C44249B4();
  sub_1C4404D98();
  if (qword_1EDDFD028 != -1)
  {
    sub_1C4419274();
    swift_once();
  }

  v12 = sub_1C4F00978();
  *(v11 + 24) = sub_1C442B738(v12, qword_1EDE2DE10);

  v13 = sub_1C4F00968();
  v14 = sub_1C4F01CF8();
  if (sub_1C4402B64(v14))
  {
    sub_1C43FD084();
    sub_1C44117BC();
    sub_1C4458794();
    *v10 = 136315138;
    sub_1C4852348();
    sub_1C4424D3C();

    v15 = sub_1C4404044();
    v18 = sub_1C441D828(v15, v16, v17);

    *(v10 + 4) = v18;
    sub_1C4402B48();
    _os_log_impl(v19, v20, v21, v22, v23, 0xCu);
    sub_1C440AEF4();
    sub_1C43FE9D4();
  }

  else
  {
  }

  v24 = swift_task_alloc();
  v25 = sub_1C4414DF4(v24);
  *v25 = v26;
  v25[1] = sub_1C4AC03E4;
  sub_1C442642C();

  return sub_1C4C8C598();
}

uint64_t sub_1C4AC03E4()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = *v1;
  sub_1C43FBDAC();
  *v3 = v2;

  if (v0)
  {
    sub_1C43FBDA0();

    return v4();
  }

  else
  {
    sub_1C43FEAF8();

    return MEMORY[0x1EEE6DFA0](v6, v7, v8);
  }
}

uint64_t sub_1C4AC04FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C44249B4();
  sub_1C4404D98();

  v11 = sub_1C4F00968();
  v12 = sub_1C4F01CF8();
  if (sub_1C4402B64(v12))
  {
    sub_1C43FD084();
    sub_1C44117BC();
    sub_1C4458794();
    *v10 = 136315138;
    sub_1C4852348();
    sub_1C4424D3C();

    v13 = sub_1C4404044();
    v16 = sub_1C441D828(v13, v14, v15);

    *(v10 + 4) = v16;
    sub_1C4402B48();
    _os_log_impl(v17, v18, v19, v20, v21, 0xCu);
    sub_1C440AEF4();
    sub_1C43FE9D4();
  }

  else
  {
  }

  sub_1C43FC1B0();
  sub_1C442642C();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
}

uint64_t Pipeline.runLifeEventsDelta(reason:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1C43FFE30(sub_1C4AC0608);
}

uint64_t sub_1C4AC0608()
{
  sub_1C43FBCD4();
  if (qword_1EDDFED08 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Source(0);
  sub_1C442B738(v0, qword_1EDDFED10);
  v1 = swift_task_alloc();
  v2 = sub_1C4414DF4(v1);
  *v2 = v3;
  sub_1C441BC24(v2);

  return sub_1C4ACB9F0();
}

uint64_t sub_1C4AC06D0(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for Configuration(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  swift_beginAccess();
  v8 = sub_1C44019F8(a2, *(v7 + 16));
  swift_endAccess();
  if (!v8)
  {
    sub_1C443113C(a2, v6);
    _s12JobSchedulerCMa(0);
    swift_allocObject();
    v8 = sub_1C4CDAD0C(v6);
    swift_beginAccess();

    swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v7 + 16);
    sub_1C46627C4();
    *(v7 + 16) = v11;
    swift_endAccess();
  }

  return v8;
}

uint64_t sub_1C4AC0828(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C4AC0848, 0, 0);
}

uint64_t sub_1C4AC0848()
{
  sub_1C43FCF70();
  sub_1C4AC0AB0(*(v0 + 16));
  sub_1C4408F38(&unk_1C4F4E178);
  v6 = v1;
  v2 = swift_task_alloc();
  v3 = sub_1C4414DF4(v2);
  *v3 = v4;
  v3[1] = sub_1C4AC0928;

  return v6();
}

uint64_t sub_1C4AC0928()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v3 = v2;
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;
  *(v6 + 40) = v0;

  if (v0)
  {
    sub_1C43FBDA0();

    return v7();
  }

  else
  {
    sub_1C43FEAF8();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }
}

uint64_t sub_1C4AC0A3C()
{
  sub_1C43FCF70();
  sub_1C4AC1064();
  sub_1C43FBDA0();

  return v0();
}

void *sub_1C4AC0AB0(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v6 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v35 - v7;
  v9 = sub_1C4EF9CD8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDDFD028 != -1)
  {
    swift_once();
  }

  v13 = sub_1C4F00978();
  sub_1C442B738(v13, qword_1EDE2DE10);

  v14 = sub_1C4F00968();
  v15 = sub_1C4F01CF8();
  v16 = os_log_type_enabled(v14, v15);
  v36 = v8;
  v37 = v4;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v35 = v2;
    v18 = v17;
    v19 = swift_slowAlloc();
    v38 = v19;
    *v18 = 136315138;
    v20 = sub_1C4852348();
    v51 = a1;
    v21 = v12;
    v22 = v9;
    v23 = v20;
    v24 = v10;
    v26 = v25;

    v27 = sub_1C441D828(v23, v26, &v38);
    v10 = v24;

    *(v18 + 4) = v27;
    v9 = v22;
    v12 = v21;
    a1 = v51;
    _os_log_impl(&dword_1C43F8000, v14, v15, "PhaseMetricsStart %s", v18, 0xCu);
    sub_1C440962C(v19);
    MEMORY[0x1C6942830](v19, -1, -1);
    v28 = v18;
    v3 = v35;
    MEMORY[0x1C6942830](v28, -1, -1);
  }

  else
  {
  }

  result = sub_1C446ABD0(0);
  if (!v3)
  {
    v30 = result;
    v51 = a1;
    if (qword_1EDDF7B60 != -1)
    {
      swift_once();
    }

    v48 = xmmword_1EDE2D960;
    v49 = *algn_1EDE2D970;
    v50 = qword_1EDE2D980;
    v32 = *(v37 + 16);
    v31 = *(v37 + 24);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C448DA58(v32, v31, v30, 0, 0);

    if (qword_1EDDF7B58 != -1)
    {
      swift_once();
    }

    v45 = xmmword_1EDE2D938;
    v46 = unk_1EDE2D948;
    v47 = qword_1EDE2D958;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C448DA58(v32, v31, v30, 0, 0);

    sub_1C4EF9CC8();
    if (qword_1EDDF7AE8 != -1)
    {
      swift_once();
    }

    v42 = xmmword_1EDE2D7D0;
    v43 = unk_1EDE2D7E0;
    v44 = qword_1EDE2D7F0;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C446ABD0(0);
    v33 = v36;
    sub_1C448E94C();

    v34 = sub_1C44157D4(v33, 1, v9);
    sub_1C446F170(v33, &unk_1EC0B84E0, qword_1C4F0D2D0);
    if (v34 == 1)
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C448EA0C(v12, v30, v32, v31);
    }

    if (qword_1EDDF7B50 != -1)
    {
      swift_once();
    }

    v39 = xmmword_1EDE2D910;
    v40 = unk_1EDE2D920;
    v41 = qword_1EDE2D930;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C448EA0C(v12, v30, v32, v31);
    (*(v10 + 8))(v12, v9);
  }

  return result;
}

void *sub_1C4AC1064()
{
  v1 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v42 - v5;
  v7 = sub_1C4EF9CD8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v42 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v42 - v15;
  result = sub_1C446ABD0(0);
  if (!v0)
  {
    v46 = v6;
    v45 = v13;
    v44 = v3;
    v43 = v10;
    v18 = v50;
    v47 = result;
    v49 = v7;
    v48 = v8;
    sub_1C4EF9CC8();
    if (qword_1EDDF7B50 != -1)
    {
      swift_once();
    }

    v59 = xmmword_1EDE2D910;
    v60 = unk_1EDE2D920;
    v61 = qword_1EDE2D930;
    v19 = *(v18 + 16);
    v20 = *(v18 + 24);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C446ABD0(0);
    v21 = v46;
    sub_1C448E94C();

    v22 = v49;
    v23 = sub_1C44157D4(v21, 1, v49);
    if (v23 == 1)
    {
      sub_1C446F170(v21, &unk_1EC0B84E0, qword_1C4F0D2D0);
    }

    else
    {
      v25 = v45;
      (*(v48 + 32))(v45, v21, v22);
      if (qword_1EDDF7B40 != -1)
      {
        swift_once();
      }

      v57[0] = xmmword_1EDE2D8E8;
      v57[1] = *&qword_1EDE2D8F8;
      v58 = qword_1EDE2D908;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C446ABD0(0);
      sub_1C44BEC80(v57, v19, v20);
      LODWORD(v46) = v30;

      sub_1C4EF9CB8();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44BF3A4(v57, v19, v20);

      (*(v48 + 8))(v25, v49);
    }

    if (qword_1EDDF7AE8 != -1)
    {
      swift_once();
    }

    v54 = xmmword_1EDE2D7D0;
    v55 = unk_1EDE2D7E0;
    v56 = qword_1EDE2D7F0;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C446ABD0(0);
    v24 = v44;
    sub_1C448E94C();

    v26 = v49;
    v27 = sub_1C44157D4(v24, 1, v49);
    v28 = v24;
    if (v27 == 1)
    {
      sub_1C446F170(v24, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v29 = v48;
    }

    else
    {
      v31 = v43;
      (*(v48 + 32))(v43, v28, v26);
      sub_1C4EF9CB8();
      if (qword_1EDDF7AF8 != -1)
      {
        swift_once();
      }

      v52[0] = xmmword_1EDE2D7F8;
      v52[1] = *&qword_1EDE2D808;
      v53 = qword_1EDE2D818;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44BF3A4(v52, v19, v20);

      v29 = v48;
      (*(v48 + 8))(v31, v49);
    }

    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v32 = sub_1C4F00978();
    sub_1C442B738(v32, qword_1EDE2DE10);

    v33 = sub_1C4F00968();
    v34 = sub_1C4F01CF8();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v51 = v36;
      *v35 = 136315138;
      v37 = sub_1C4852348();
      v38 = v29;
      v40 = v39;

      v41 = sub_1C441D828(v37, v40, &v51);

      *(v35 + 4) = v41;
      _os_log_impl(&dword_1C43F8000, v33, v34, "PhaseMetricsFinish %s", v35, 0xCu);
      sub_1C440962C(v36);
      MEMORY[0x1C6942830](v36, -1, -1);
      MEMORY[0x1C6942830](v35, -1, -1);

      return (*(v38 + 8))(v16, v49);
    }

    else
    {

      return (*(v29 + 8))(v16, v49);
    }
  }

  return result;
}

uint64_t sub_1C4AC1918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1C4404044();
  v11 = sub_1C456902C(v9, v10);
  sub_1C43FBD18(v11);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C440E3E8();
  sub_1C446C964(a3, v5, &qword_1EC0BC660, &qword_1C4F29150);
  v13 = sub_1C4F018C8();
  v14 = sub_1C44157D4(v5, 1, v13);

  if (v14 == 1)
  {
    sub_1C446F170(v5, &qword_1EC0BC660, &qword_1C4F29150);
  }

  else
  {
    sub_1C4F018B8();
    sub_1C440A6B8();
    (*(v15 + 8))(v5, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (!v16)
  {
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_1C456902C(&unk_1EC0C2EC0, &qword_1C4F6A810);
    return swift_task_create();
  }

  swift_getObjectType();
  v17 = sub_1C4F017F8();
  swift_unknownObjectRelease();
  if (!a2)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_1C43FE5F8();
  sub_1C4F011C8();

  sub_1C456902C(&unk_1EC0C2EC0, &qword_1C4F6A810);
  swift_task_create();
  sub_1C4406834();

  return v17;
}

void sub_1C4AC1B58()
{
  sub_1C43FBD3C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_1C456902C(&qword_1EC0BC660, &qword_1C4F29150);
  sub_1C43FBD18(v7);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C440E3E8();
  sub_1C446C964(v4, v0, &qword_1EC0BC660, &qword_1C4F29150);
  v9 = sub_1C4F018C8();
  v10 = sub_1C44157D4(v0, 1, v9);

  if (v10 == 1)
  {
    sub_1C446F170(v0, &qword_1EC0BC660, &qword_1C4F29150);
  }

  else
  {
    sub_1C4F018B8();
    sub_1C440A6B8();
    (*(v11 + 8))(v0, v9);
  }

  v12 = *(v2 + 16);
  swift_unknownObjectRetain();

  if (v12)
  {
    swift_getObjectType();
    v14 = sub_1C4F017F8();
    v16 = v15;
    v13 = swift_unknownObjectRelease();
    if (v6)
    {
LABEL_6:
      sub_1C43FE5F8();
      v17 = sub_1C4F011C8() + 32;

      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v19 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      else
      {
        v19 = 0;
      }

      v21[0] = 7;
      v21[1] = v19;
      v21[2] = v17;
      sub_1C43FE748(v18, v21);
      sub_1C4406834();

      goto LABEL_15;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (v6)
    {
      goto LABEL_6;
    }
  }

  if (v16 | v14)
  {
    v23[0] = 0;
    v23[1] = 0;
    v20 = v23;
    v23[2] = v14;
    v23[3] = v16;
  }

  else
  {
    v20 = 0;
  }

  sub_1C43FE748(v13, v20);
LABEL_15:
  sub_1C43FE9F0();
}

uint64_t sub_1C4AC1D58()
{
  sub_1C456902C(&qword_1EC0C2EE8, &unk_1C4F4E188);
  swift_allocObject();
  result = sub_1C4CE53C4();
  qword_1EDE2D368 = result;
  return result;
}

uint64_t sub_1C4AC1DA4()
{
  *(v0 + 24) = 4;
  *(v0 + 32) = 0;
  sub_1C4AC1DF4();
  v2 = v1;
  sub_1C441CCF4();
  sub_1C4454270();
  *(v0 + 16) = v2;
  return v0;
}

void sub_1C4AC1DF4()
{
  sub_1C43FBD3C();
  v1 = v0;
  v25 = sub_1C4F00D58();
  sub_1C43FCDF8();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  v7 = v6 - v5;
  v24 = sub_1C4F00D88();
  sub_1C43FCDF8();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBCC4();
  v13 = v12 - v11;
  v14 = type metadata accessor for Configuration(0);
  v15 = sub_1C43FCF7C(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1C4461BB8(0, &qword_1EDDFA490, 0x1E69E9630);
  sub_1C4F01DD8();
  ObjectType = swift_getObjectType();
  sub_1C440B110();
  sub_1C443113C(v1, &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v22 = swift_allocObject();
  sub_1C44760B0(&v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
  v26[4] = sub_1C4ACE03C;
  v26[5] = v22;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 1107296256;
  v26[2] = sub_1C4833DD0;
  v26[3] = &unk_1F43F8F20;
  v23 = _Block_copy(v26);
  sub_1C4795168(ObjectType);
  sub_1C479516C();
  sub_1C4F01DE8();
  _Block_release(v23);
  (*(v3 + 8))(v7, v25);
  (*(v9 + 8))(v13, v24);

  sub_1C4F01E08();
  sub_1C43FE9F0();
}

uint64_t sub_1C4AC20C0()
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1C4F01DF8();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1C4AC2124()
{
  sub_1C4AC20C0();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4AC2158()
{
  if (qword_1EDDFECB0 != -1)
  {
    swift_once();
  }

  v0 = sub_1C4F00978();
  sub_1C442B738(v0, qword_1EDDFECB8);
  v1 = sub_1C4F00968();
  v2 = sub_1C4F01CF8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1C43F8000, v1, v2, "Pipeline: handling SIGTERM", v3, 2u);
    MEMORY[0x1C6942830](v3, -1, -1);
  }

  if (qword_1EDDF0AB0 != -1)
  {
    swift_once();
  }

  sub_1C4468E90();
  sub_1C4ABF738();
}

void *sub_1C4AC22D4(uint64_t a1)
{
  v3 = v1;
  v20[1] = *v1;
  v5 = type metadata accessor for Configuration(0);
  v6 = sub_1C43FBD18(v5);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v20 - v10;
  v12 = type metadata accessor for PhaseStores(0);
  v13 = sub_1C43FBD18(v12);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBCC4();
  v16 = v15 - v14;
  sub_1C4EFC798();
  v1[2] = sub_1C4EFC788();
  *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore8Pipeline_geoMapService) = 0;
  sub_1C443113C(a1, v1 + OBJC_IVAR____TtC24IntelligencePlatformCore8Pipeline_config);
  sub_1C443113C(a1, v11);
  PhaseStores.init(config:)(v11, v16);
  if (v2)
  {
    sub_1C4454270();

    sub_1C4454270();

    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1C44760B0(v16, v1 + OBJC_IVAR____TtC24IntelligencePlatformCore8Pipeline_stores);
    sub_1C440B110();
    sub_1C443113C(a1, v8);
    type metadata accessor for Pipeline.GuardedData();
    v17 = swift_allocObject();
    sub_1C4AC1DA4();
    sub_1C456902C(&unk_1EC0C2ED8, &qword_1C4F4E180);
    v18 = swift_allocObject();
    *(v18 + 24) = 0;
    *(v18 + 16) = v17;
    sub_1C441CCF4();
    sub_1C4454270();
    *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore8Pipeline_lockbox) = v18;
  }

  return v3;
}

uint64_t Pipeline.deinit()
{

  sub_1C441CCF4();
  sub_1C4454270();
  sub_1C4454270();

  return v0;
}

uint64_t Pipeline.__deallocating_deinit()
{
  Pipeline.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4AC2640()
{
  sub_1C43FCF70();
  sub_1C44001F0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 768) = v0;

  sub_1C440C470();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C4AC2760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C44249B4();
  sub_1C4404D98();
  v11 = *(v10 + 577);
  v12 = [objc_opt_self() defaultCenter];
  sub_1C456902C(&qword_1EC0C2DE8, &unk_1C4F4E048);
  v13 = *(v10 + 578);
  v14 = MEMORY[0x1E69E6158];
  if (v11 == 1)
  {
    v15 = *MEMORY[0x1E69A9F38];
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F0D130;
    strcpy((v10 + 648), "pipelineType");
    *(v10 + 661) = 0;
    *(v10 + 662) = -5120;
    v17 = v15;
    sub_1C4F02198();
    sub_1C440BDD4();
    switch(v13)
    {
      case 1:
        goto LABEL_4;
      case 2:
        goto LABEL_5;
      case 3:
        goto LABEL_6;
      default:
        break;
    }
  }

  else
  {
    v20 = *MEMORY[0x1E69A9F40];
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F0D130;
    strcpy((v10 + 632), "pipelineType");
    *(v10 + 645) = 0;
    *(v10 + 646) = -5120;
    v17 = v20;
    sub_1C4F02198();
    sub_1C440BDD4();
    switch(v13)
    {
      case 1:
LABEL_4:
        sub_1C4426D3C();
        break;
      case 2:
LABEL_5:
        sub_1C44336F0();
        break;
      case 3:
LABEL_6:
        sub_1C4403620();
        break;
      default:
        break;
    }
  }

  *(inited + 96) = v14;
  *(inited + 72) = v19;
  *(inited + 80) = v18;
  v21 = sub_1C4F00F28();
  sub_1C446C7A4(v17, 0, v21, v12);

  sub_1C4ACE0A8();

  sub_1C43FC1B0();
  sub_1C442642C();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
}

uint64_t sub_1C4AC2988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1C4405098();
  v15 = *(v14 + 768);
  *(v14 + 664) = v15;
  v16 = v15;
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  if (swift_dynamicCast())
  {
    v17 = *(v14 + 578);
    v18 = *(v14 + 744);
    v19 = *(v14 + 736);
    v20 = *(v14 + 728);
    v21 = *(v14 + 720);

    (*(v20 + 32))(v19, v18, v21);
    v22 = [objc_opt_self() defaultCenter];
    v23 = *MEMORY[0x1E69A9F38];
    sub_1C456902C(&qword_1EC0C2DE8, &unk_1C4F4E048);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F0D130;
    strcpy((v14 + 616), "pipelineType");
    *(v14 + 629) = 0;
    *(v14 + 630) = -5120;
    v25 = v23;
    v26 = MEMORY[0x1E69E6158];
    sub_1C4F02198();
    sub_1C440BDD4();
    switch(v17)
    {
      case 1:
        sub_1C4426D3C();
        break;
      case 2:
        sub_1C44336F0();
        break;
      case 3:
        sub_1C4403620();
        break;
      default:
        break;
    }

    v48 = *(v14 + 736);
    v49 = *(v14 + 728);
    v50 = *(v14 + 720);
    *(inited + 96) = v26;
    *(inited + 72) = v28;
    *(inited + 80) = v27;
    v51 = sub_1C4F00F28();
    sub_1C446C7A4(v25, 0, v51, v22);

    v52 = sub_1C4ACD9E4();
    sub_1C43FFB2C(&type metadata for PipelineError, v52);
    sub_1C44803FC();
    sub_1C4AC3120(v53);
    swift_willThrow();

    (*(v49 + 8))(v48, v50);
    v54 = *(v14 + 664);
LABEL_16:

    goto LABEL_19;
  }

  *(v14 + 672) = v15;
  v29 = v15;
  v30 = swift_dynamicCast();
  v31 = *(v14 + 578);
  if (v30)
  {

    a10 = *(v14 + 560);
    v32 = *(v14 + 568);
    v33 = *(v14 + 576);
    v34 = [objc_opt_self() defaultCenter];
    v35 = *MEMORY[0x1E69A9F48];
    sub_1C456902C(&qword_1EC0C2DE8, &unk_1C4F4E048);
    v36 = swift_initStackObject();
    *(v36 + 16) = xmmword_1C4F0D130;
    strcpy((v14 + 600), "pipelineType");
    *(v14 + 613) = 0;
    *(v14 + 614) = -5120;
    v37 = v35;
    v38 = MEMORY[0x1E69E6158];
    sub_1C4F02198();
    sub_1C440BDD4();
    switch(v31)
    {
      case 1:
        sub_1C4426D3C();
        break;
      case 2:
        sub_1C44336F0();
        break;
      case 3:
        sub_1C4403620();
        break;
      default:
        break;
    }

    *(v36 + 96) = v38;
    *(v36 + 72) = v40;
    *(v36 + 80) = v39;
    v55 = sub_1C4F00F28();
    sub_1C446C7A4(v37, 0, v55, v34);

    v56 = sub_1C4ACD9E4();
    sub_1C43FFB2C(&type metadata for PipelineError, v56);
    *v57 = a10;
    *(v57 + 8) = v32;
    *(v57 + 16) = v33;
    swift_willThrow();

    v54 = *(v14 + 672);
    goto LABEL_16;
  }

  v41 = [objc_opt_self() defaultCenter];
  v42 = *MEMORY[0x1E69A9F48];
  sub_1C456902C(&qword_1EC0C2DE8, &unk_1C4F4E048);
  v43 = swift_initStackObject();
  *(v43 + 16) = xmmword_1C4F0D130;
  strcpy((v14 + 584), "pipelineType");
  *(v14 + 597) = 0;
  *(v14 + 598) = -5120;
  v44 = v42;
  v45 = MEMORY[0x1E69E6158];
  sub_1C4F02198();
  sub_1C440BDD4();
  switch(v31)
  {
    case 1:
      sub_1C4426D3C();
      break;
    case 2:
      sub_1C44336F0();
      break;
    case 3:
      sub_1C4403620();
      break;
    default:
      break;
  }

  *(v43 + 96) = v45;
  *(v43 + 72) = v47;
  *(v43 + 80) = v46;
  sub_1C4F00F28();
  v58 = sub_1C4440DAC();
  sub_1C446C7A4(v58, v59, v60, v41);

  swift_getErrorValue();
  v61 = *(v14 + 544);
  v62 = sub_1C4ACD9E4();
  sub_1C43FFB2C(&type metadata for PipelineError, v62);
  sub_1C44803FC();
  sub_1C4ACE0C0(v61, v63);
  swift_willThrow();

LABEL_19:
  sub_1C4ACE0A8();

  sub_1C43FBDA0();
  sub_1C43FD0C0();

  return v65(v64, v65, v66, v67, v68, v69, v70, v71, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1C4AC2F14()
{
  sub_1C43FCF70();
  v3 = v2;
  sub_1C43FBDE4();
  v5 = v4;
  sub_1C44001F0();
  *v6 = v5;
  v7 = *v1;
  sub_1C43FBDAC();
  *v8 = v7;
  *(v5 + 48) = v0;

  if (!v0)
  {
    *(v5 + 56) = v3 & 1;
  }

  sub_1C440C470();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C4AC3020()
{
  sub_1C43FBCD4();
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  **(v0 + 16) = *(v0 + 56);
  v3 = sub_1C4F01948();
  sub_1C4AC3C14(v3 & 1, v1);
  sub_1C499A018(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore8Pipeline_config, 1);
  sub_1C43FC1B0();

  return v4();
}

uint64_t sub_1C4AC30A4()
{
  sub_1C43FBCD4();
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = sub_1C4F01948();
  sub_1C4AC3C14(v3 & 1, v1);
  sub_1C499A018(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore8Pipeline_config, 1);
  sub_1C43FBDA0();

  return v4();
}

uint64_t sub_1C4AC3120@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C4F01828();
  v4 = MEMORY[0x1EEE9AC00](v3);
  (*(v6 + 16))(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v1, v3, v4);
  if (swift_dynamicCast())
  {
    v7 = 0;
    v8 = 2;
    result = 3;
  }

  else
  {
    sub_1C4472508(&qword_1EDDFCF00, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
    result = sub_1C4F02A38();
    v8 = 1;
  }

  *a1 = result;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  return result;
}

uint64_t sub_1C4AC3258(uint64_t a1)
{
  if (*(*a1 + 32))
  {

    sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
    sub_1C4F01918();
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v1 = sub_1C4F00978();
    sub_1C442B738(v1, qword_1EDE2DE10);
    v2 = sub_1C4F00968();
    v3 = sub_1C4F01CF8();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1C43F8000, v2, v3, "Pipeline: task cancelled.", v4, 2u);
      MEMORY[0x1C6942830](v4, -1, -1);
    }
  }

  else
  {
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v6 = sub_1C4F00978();
    sub_1C442B738(v6, qword_1EDE2DE10);
    v7 = sub_1C4F00968();
    v8 = sub_1C4F01CF8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1C43F8000, v7, v8, "Pipeline: stop called but pipeline is not running.", v9, 2u);
      MEMORY[0x1C6942830](v9, -1, -1);
    }

    sub_1C4ACD9E4();
    swift_allocError();
    *v10 = xmmword_1C4F14630;
    *(v10 + 16) = 2;
    return swift_willThrow();
  }
}

uint64_t sub_1C4AC3480(unsigned __int8 *a1)
{
  v3 = *v1;
  v4 = sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v28 - v5;
  v7 = *a1;
  if (qword_1EDDFD028 != -1)
  {
    swift_once();
  }

  v8 = sub_1C4F00978();
  sub_1C442B738(v8, qword_1EDE2DE10);
  v9 = sub_1C4F00968();
  v10 = sub_1C4F01CF8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v30 = v12;
    *v11 = 136315394;
    v13 = sub_1C46655C4(v3);
    v15 = sub_1C441D828(v13, v14, &v30);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    v29 = v7;
    sub_1C456902C(&qword_1EC0BD3A0, &qword_1C4F2DB70);
    v16 = sub_1C4F01198();
    v18 = sub_1C441D828(v16, v17, &v30);

    *(v11 + 14) = v18;
    _os_log_impl(&dword_1C43F8000, v9, v10, "%s - clear intermidate data for pipelineType: %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6942830](v12, -1, -1);
    MEMORY[0x1C6942830](v11, -1, -1);
  }

  type metadata accessor for PhaseStores(0);
  v35 = v7;
  sub_1C44AF8F4(&v35);
  v34 = v7;
  sub_1C4495FC0(&v34);
  v33 = v7;
  v19 = sub_1C4EFD548();
  sub_1C440BAA8(v6, 1, 1, v19);
  sub_1C44ABA54(&v33, v6);
  sub_1C446F170(v6, &qword_1EC0B8568, &unk_1C4F319B0);
  v32 = v7;
  sub_1C440BAA8(v6, 1, 1, v19);
  sub_1C44A8814(&v32, v6);
  sub_1C446F170(v6, &qword_1EC0B8568, &unk_1C4F319B0);
  v31 = v7;
  sub_1C440BAA8(v6, 1, 1, v19);
  sub_1C44A2734(&v31, v6);
  result = sub_1C446F170(v6, &qword_1EC0B8568, &unk_1C4F319B0);
  if (v7 != 4)
  {
    result = sub_1C4684BDC();
    if (result)
    {
      sub_1C486D7F0(result, v21, v22, v23, v24, v25, v26, v27, v28);
      return sub_1C486D86C();
    }
  }

  return result;
}

uint64_t sub_1C4AC37B4()
{
  if (qword_1EDDF7B18 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDE2D870;
  v0 = *algn_1EDE2D878;
  v2 = qword_1EDE2D880;
  v3 = unk_1EDE2D888;
  v4 = qword_1EDE2D890;
  v5 = sub_1C456902C(&unk_1EC0C2E50, &unk_1C4F4E090);
  v48 = v5;
  v6 = sub_1C4401CBC(&qword_1EDDF7C98, &unk_1EC0C2E50, &unk_1C4F4E090, &unk_1C4F555C8);
  v49 = v6;
  v7 = swift_allocObject();
  *&v47 = v7;
  v7[2] = v1;
  v7[3] = v0;
  v7[4] = v2;
  v7[5] = v3;
  v7[6] = v4;
  v7[7] = 0;
  v7[8] = v3;
  v7[9] = v4;
  sub_1C456902C(&unk_1EC0C2E30, &qword_1C4F4E080);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  v37 = inited;
  sub_1C441D670(&v47, inited + 32);
  sub_1C446F0D0(v3, v4);
  sub_1C446F0D0(v3, v4);
  v9 = qword_1EDDF7B10;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  if (v9 != -1)
  {
    swift_once();
  }

  v10 = qword_1EDE2D848;
  v11 = unk_1EDE2D850;
  v12 = qword_1EDE2D858;
  v13 = unk_1EDE2D860;
  v14 = qword_1EDE2D868;
  v45 = v5;
  v46 = v6;
  v15 = swift_allocObject();
  *&v44 = v15;
  v15[2] = v10;
  v15[3] = v11;
  v15[4] = v12;
  v15[5] = v13;
  v15[6] = v14;
  v15[7] = 0;
  v15[8] = v13;
  v15[9] = v14;
  v16 = swift_initStackObject();
  *(v16 + 16) = xmmword_1C4F0D130;
  sub_1C441D670(&v44, v16 + 32);
  sub_1C446F0D0(v13, v14);
  sub_1C446F0D0(v13, v14);
  v17 = qword_1EDDF7B08;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  if (v17 != -1)
  {
    swift_once();
  }

  v19 = qword_1EDE2D820;
  v18 = *algn_1EDE2D828;
  v20 = qword_1EDE2D830;
  v21 = unk_1EDE2D838;
  v22 = qword_1EDE2D840;
  v42 = v5;
  v43 = v6;
  v23 = swift_allocObject();
  *&v41 = v23;
  v23[2] = v19;
  v23[3] = v18;
  v23[4] = v20;
  v23[5] = v21;
  v23[6] = v22;
  v23[7] = 0;
  v23[8] = v21;
  v23[9] = v22;
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1C4F0D130;
  sub_1C441D670(&v41, v24 + 32);
  sub_1C446F0D0(v21, v22);
  sub_1C446F0D0(v21, v22);
  v25 = qword_1EDDF7B28;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  if (v25 != -1)
  {
    swift_once();
  }

  v26 = qword_1EDE2D898;
  v27 = unk_1EDE2D8A0;
  v28 = qword_1EDE2D8A8;
  v29 = unk_1EDE2D8B0;
  v30 = qword_1EDE2D8B8;
  v39 = sub_1C456902C(&unk_1EC0C2E88, &unk_1C4F4E0B0);
  v40 = sub_1C4401CBC(qword_1EDDEA910, &unk_1EC0C2E88, &unk_1C4F4E0B0, &unk_1C4F555C8);
  v31 = swift_allocObject();
  *&v38 = v31;
  *(v31 + 16) = v26;
  *(v31 + 24) = v27;
  *(v31 + 32) = v28;
  *(v31 + 40) = v29;
  *(v31 + 48) = v30;
  *(v31 + 56) = 1;
  *(v31 + 57) = v50[0];
  *(v31 + 60) = *(v50 + 3);
  *(v31 + 64) = v29;
  *(v31 + 72) = v30;
  v32 = swift_initStackObject();
  *(v32 + 16) = xmmword_1C4F0D130;
  sub_1C441D670(&v38, v32 + 32);
  sub_1C456902C(&qword_1EC0C2E60, &unk_1C4F54100);
  v33 = swift_initStackObject();
  *(v33 + 16) = xmmword_1C4F0D480;
  *(v33 + 32) = v37;
  *(v33 + 40) = v16;
  *(v33 + 48) = v24;
  *(v33 + 56) = v32;
  sub_1C446F0D0(v29, v30);
  sub_1C446F0D0(v29, v30);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C446F8F4(v33);
  v35 = v34;
  swift_setDeallocating();
  sub_1C446FAEC();
  return v35;
}

void sub_1C4AC3C14(char a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1EDDFD028 != -1)
  {
    swift_once();
  }

  v6 = sub_1C4F00978();
  sub_1C442B738(v6, qword_1EDE2DE10);
  v7 = sub_1C4F00968();
  v8 = sub_1C4F01CB8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109376;
    *(v9 + 4) = a1 & 1;
    *(v9 + 8) = 2048;
    *(v9 + 10) = a2;
    _os_log_impl(&dword_1C43F8000, v7, v8, "Pipeline: run will finish. c:%{BOOL}d,r:%lu", v9, 0x12u);
    MEMORY[0x1C6942830](v9, -1, -1);
  }

  v10 = *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore8Pipeline_lockbox);
  MEMORY[0x1EEE9AC00](v11);
  os_unfair_lock_lock((v10 + 24));
  sub_1C4ACDA38((v10 + 16));
  os_unfair_lock_unlock((v10 + 24));
}

void sub_1C4AC3D7C(uint64_t *a1, uint64_t a2, int a3, uint64_t a4)
{
  v75 = a4;
  v85 = a3;
  v79 = sub_1C4EF9CD8();
  v76 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v78 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v81 = &v70 - v9;
  v10 = type metadata accessor for Configuration(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v74 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v73 = &v70 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v70 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v70 - v18;
  v20 = type metadata accessor for Pipeline.StatusStore(0);
  v21 = v20 - 8;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = *a1;
  if (*(v77 + 24) == 4)
  {
    v24 = 0;
  }

  else
  {
    v24 = *(v77 + 24);
  }

  v80 = a2;
  v72 = OBJC_IVAR____TtC24IntelligencePlatformCore8Pipeline_config;
  sub_1C443113C(a2 + OBJC_IVAR____TtC24IntelligencePlatformCore8Pipeline_config, v23);
  v25 = *(v21 + 28);
  v82 = v24;
  v23[v25] = v24;
  if (qword_1EDDF7BB8 != -1)
  {
    swift_once();
  }

  sub_1C443113C(v23, v19);
  v26 = v23[v25];
  v86._countAndFlagsBits = 0xD000000000000010;
  v86._object = 0x80000001C4FAAFC0;
  v83 = 0x80000001C4FAAFC0;
  v84 = v25;
  v27 = 0xE700000000000000;
  v71 = 0x6E776F6E6B6E75;
  v28 = 0x6E776F6E6B6E75;
  switch(v26)
  {
    case 1:
      v27 = 0xE400000000000000;
      v28 = 1819047270;
      break;
    case 2:
      v27 = 0xE500000000000000;
      v28 = 0x61746C6564;
      break;
    case 3:
      v28 = 0x69686374614D6F74;
      v27 = 0xEA0000000000676ELL;
      break;
    default:
      break;
  }

  MEMORY[0x1C6940010](v28, v27);

  MEMORY[0x1C6940010](0x746E65727275632ELL, 0xE800000000000000);
  countAndFlagsBits = v86._countAndFlagsBits;
  object = v86._object;
  type metadata accessor for KeyValueStore(0);
  swift_allocObject();
  KeyValueStore.init(config:domain:)(v19, countAndFlagsBits, object);
  if (v4)
  {

LABEL_13:
    v31 = 0;
    goto LABEL_14;
  }

  v31 = sub_1C44BAADC();
  v52 = v51;

  if (v52)
  {
    goto LABEL_13;
  }

LABEL_14:
  if (qword_1EDDF7B38 != -1)
  {
    swift_once();
  }

  sub_1C443113C(v23, v16);
  v32 = v23[v84];
  v33 = 0xE700000000000000;
  v86._countAndFlagsBits = 0xD000000000000010;
  v86._object = v83;
  v34 = 0x6E776F6E6B6E75;
  switch(v32)
  {
    case 1:
      v33 = 0xE400000000000000;
      v34 = 1819047270;
      break;
    case 2:
      v33 = 0xE500000000000000;
      v34 = 0x61746C6564;
      break;
    case 3:
      v34 = 0x69686374614D6F74;
      v33 = 0xEA0000000000676ELL;
      break;
    default:
      break;
  }

  MEMORY[0x1C6940010](v34, v33);

  MEMORY[0x1C6940010](0x746E65727275632ELL, 0xE800000000000000);
  v35 = v86._countAndFlagsBits;
  v36 = v86._object;
  swift_allocObject();
  KeyValueStore.init(config:domain:)(v16, v35, v36);
  v37 = v81;
  sub_1C446FB00();

  v53 = v79;
  v38 = v78;
  v39 = sub_1C4AD2674();
  if (v85)
  {
    v40 = 1;
  }

  else
  {
    v40 = 2;
  }

  if (v39)
  {
    v41 = 3;
  }

  else
  {
    v41 = v40;
  }

  v42 = sub_1C4EF9CC8();
  MEMORY[0x1EEE9AC00](v42);
  *(&v70 - 48) = v82;
  *(&v70 - 5) = v38;
  *(&v70 - 32) = v41;
  *(&v70 - 3) = v31;
  *(&v70 - 2) = v37;
  sub_1C446C840(0, 0, sub_1C4ACDA5C);
  sub_1C4461BB8(0, &qword_1EDDFE900, 0x1E695E000);
  v43 = static NSUserDefaults.testTelemetry.getter() | (v75 != 1);
  v44 = sub_1C4AD2518();
  v45 = v44;
  if (v43 & 1) != 0 && (v44)
  {
    sub_1C4AD1484();
    switch(v82)
    {
      case 1:

        goto LABEL_38;
      default:
        v54 = sub_1C4F02938();

        if (v54)
        {
LABEL_38:
          v55 = v73;
          sub_1C443113C(v80 + v72, v73);
          type metadata accessor for GraphStore(0);
          swift_allocObject();
          GraphStore.init(config:)(v55);
          sub_1C4ABD590();
          sub_1C4ABD590();
          sub_1C486C438();

          v38 = v78;

          v53 = v79;

          v37 = v81;
        }

        break;
    }
  }

  else
  {
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v46 = sub_1C4F00978();
    sub_1C442B738(v46, qword_1EDE2DE10);
    v47 = sub_1C4F00968();
    v48 = sub_1C4F01CB8();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_1C43F8000, v47, v48, "Pipeline: Give up logging to CA since triggered by internal app/tool", v49, 2u);
      v50 = v49;
      v37 = v81;
      MEMORY[0x1C6942830](v50, -1, -1);
    }
  }

  if (v45)
  {
    sub_1C443113C(v23, v74);
    v56 = v23[v84];
    v57 = 0xE700000000000000;
    v86._countAndFlagsBits = 0xD000000000000010;
    v86._object = v83;
    v58 = 0x6E776F6E6B6E75;
    v59 = &xmmword_1EDDFD000;
    switch(v56)
    {
      case 1:
        v57 = 0xE400000000000000;
        v58 = 1819047270;
        break;
      case 2:
        v57 = 0xE500000000000000;
        v58 = 0x61746C6564;
        break;
      case 3:
        v58 = 0x69686374614D6F74;
        v57 = 0xEA0000000000676ELL;
        break;
      default:
        break;
    }

    MEMORY[0x1C6940010](v58, v57);

    MEMORY[0x1C6940010](0x746E65727275632ELL, 0xE800000000000000);
    v60 = v86._countAndFlagsBits;
    v61 = v86._object;
    swift_allocObject();
    KeyValueStore.init(config:domain:)(v74, v60, v61);
    v62 = v23[v84];
    v63 = 0xE700000000000000;
    v86._countAndFlagsBits = 0xD000000000000010;
    v86._object = v83;
    switch(v62)
    {
      case 1:
        v63 = 0xE400000000000000;
        v64 = 1819047270;
        goto LABEL_48;
      case 2:
        v63 = 0xE500000000000000;
        v64 = 0x61746C6564;
LABEL_48:
        v71 = v64;
        break;
      case 3:
        v71 = 0x69686374614D6F74;
        v63 = 0xEA0000000000676ELL;
        break;
      default:
        break;
    }

    MEMORY[0x1C6940010](v71, v63);

    MEMORY[0x1C6940010](0x756F69766572702ELL, 0xE900000000000073);
    KeyValueStore.copyAllKeyValues(to:clearCurrentDomain:clearNewDomain:)(v86, 1, 1);
  }

  else
  {
    v59 = &xmmword_1EDDFD000;
  }

  sub_1C4454270();
  (*(v76 + 8))(v38, v53);
  sub_1C446F170(v37, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v65 = v77;
  *(v77 + 32) = 0;

  *(v65 + 24) = 4;
  type metadata accessor for PhaseStores(0);
  sub_1C4A95964();
  sub_1C4A959A8();
  sub_1C4A959EC();
  if (*(v59 + 5) != -1)
  {
    swift_once();
  }

  v66 = sub_1C4F00978();
  sub_1C442B738(v66, qword_1EDE2DE10);
  v67 = sub_1C4F00968();
  v68 = sub_1C4F01CF8();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    *v69 = 67109376;
    *(v69 + 4) = v85 & 1;
    *(v69 + 8) = 2048;
    *(v69 + 10) = v75;
    _os_log_impl(&dword_1C43F8000, v67, v68, "Pipeline: run finished. c:%{BOOL}d,r:%lu", v69, 0x12u);
    MEMORY[0x1C6942830](v69, -1, -1);
  }
}

uint64_t sub_1C4AC4C6C(char a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v60 = a5;
  v65 = a4;
  LODWORD(v64) = a3;
  v67 = a2;
  v6 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v61 = &v59 - v7;
  v70 = sub_1C4EF9CD8();
  v68 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v66 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1C456902C(&qword_1EC0C2AA8, &qword_1C4F4E070);
  MEMORY[0x1EEE9AC00](v63);
  v10 = (&v59 - v9);
  if (qword_1EDDF7B80 != -1)
  {
    swift_once();
  }

  v11 = xmmword_1EDE2D988;
  v12 = unk_1EDE2D998;
  v13 = xmmword_1EDE2D9A0;
  v87 = xmmword_1EDE2D988;
  *v88 = unk_1EDE2D998;
  *&v88[8] = xmmword_1EDE2D9A0;
  v88[24] = a1;
  v89 = xmmword_1EDE2D9A0;
  v85 = sub_1C456902C(&unk_1EC0C2E20, &qword_1C4F4E078);
  v86 = sub_1C4401CBC(&unk_1EDDF7CB8, &unk_1EC0C2E20, &qword_1C4F4E078, &unk_1C4F555C8);
  v14 = swift_allocObject();
  *&v84 = v14;
  v15 = *v88;
  v14[1] = v87;
  v14[2] = v15;
  v16 = v89;
  v14[3] = *&v88[16];
  v14[4] = v16;
  v69 = sub_1C456902C(&unk_1EC0C2E30, &qword_1C4F4E080);
  inited = swift_initStackObject();
  v71 = xmmword_1C4F0D130;
  *(inited + 16) = xmmword_1C4F0D130;
  v62 = inited;
  sub_1C441D670(&v84, inited + 32);
  v90 = v11;
  v91 = v12;
  v92 = v13;
  v93 = a1;
  v94 = v13;
  sub_1C446F0D0(v13, *(&v13 + 1));
  sub_1C446F0D0(v13, *(&v13 + 1));
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C446C964(&v87, &v81, &unk_1EC0C2E20, &qword_1C4F4E078);
  sub_1C446F170(&v90, &unk_1EC0C2E20, &qword_1C4F4E078);
  if (qword_1EDDF7B90 != -1)
  {
    swift_once();
  }

  v19 = qword_1EDE2D9B0;
  v18 = *algn_1EDE2D9B8;
  v20 = qword_1EDE2D9C0;
  v21 = unk_1EDE2D9C8;
  v22 = qword_1EDE2D9D0;
  v23 = v63;
  (*(v68 + 16))(v10 + *(v63 + 44), v67, v70);
  *v10 = v19;
  v10[1] = v18;
  v10[2] = v20;
  v10[3] = v21;
  v10[4] = v22;
  v24 = (v10 + *(v23 + 48));
  *v24 = v21;
  v24[1] = v22;
  v82 = v23;
  v83 = sub_1C4401CBC(qword_1EDDF7CD8, &qword_1EC0C2AA8, &qword_1C4F4E070, &unk_1C4F555C8);
  v25 = sub_1C4422F90(&v81);
  sub_1C446C964(v10, v25, &qword_1EC0C2AA8, &qword_1C4F4E070);
  v26 = swift_initStackObject();
  *(v26 + 16) = v71;
  sub_1C441D670(&v81, v26 + 32);
  sub_1C446F0D0(v21, v22);
  sub_1C446F0D0(v21, v22);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C446F170(v10, &qword_1EC0C2AA8, &qword_1C4F4E070);
  if (qword_1EDDF7BC0 != -1)
  {
    swift_once();
  }

  v27 = xmmword_1EDE2DA78;
  v28 = qword_1EDE2DA88;
  v29 = unk_1EDE2DA90;
  v30 = qword_1EDE2DA98;
  v79 = sub_1C456902C(&unk_1EC0C2E40, &qword_1C4F4E088);
  v80 = sub_1C4401CBC(&unk_1EDDF7CC8, &unk_1EC0C2E40, &qword_1C4F4E088, &unk_1C4F555C8);
  v31 = swift_allocObject();
  *&v78 = v31;
  *(v31 + 16) = v27;
  *(v31 + 32) = v28;
  *(v31 + 40) = v29;
  *(v31 + 48) = v30;
  *(v31 + 56) = v64;
  *(v31 + 57) = v95[0];
  *(v31 + 60) = *(v95 + 3);
  *(v31 + 64) = v29;
  *(v31 + 72) = v30;
  v32 = swift_initStackObject();
  *(v32 + 16) = v71;
  sub_1C441D670(&v78, v32 + 32);
  sub_1C446F0D0(v29, v30);
  sub_1C446F0D0(v29, v30);
  v33 = qword_1EDDF7BB8;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  if (v33 != -1)
  {
    swift_once();
  }

  v34 = v65 + 1;
  if (__OFADD__(v65, 1))
  {
    __break(1u);
    goto LABEL_16;
  }

  v65 = v26;
  v35 = qword_1EDE2DA58;
  v36 = unk_1EDE2DA60;
  v37 = qword_1EDE2DA68;
  v38 = unk_1EDE2DA70;
  v39 = qword_1EDE2DA50;
  v76 = sub_1C456902C(&unk_1EC0C2E50, &unk_1C4F4E090);
  v77 = sub_1C4401CBC(&qword_1EDDF7C98, &unk_1EC0C2E50, &unk_1C4F4E090, &unk_1C4F555C8);
  v40 = swift_allocObject();
  *&v75 = v40;
  v40[2] = v39;
  v40[3] = v35;
  v40[4] = v36;
  v40[5] = v37;
  v40[6] = v38;
  v40[7] = v34;
  v40[8] = v37;
  v40[9] = v38;
  v33 = swift_initStackObject();
  *(v33 + 16) = v71;
  sub_1C441D670(&v75, v33 + 32);
  v41 = v61;
  sub_1C446C964(v60, v61, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v42 = v70;
  if (sub_1C44157D4(v41, 1, v70) != 1)
  {
    v64 = v32;
    v32 = v68;
    (*(v68 + 32))(v66, v41, v42);
    sub_1C446F0D0(v37, v38);
    sub_1C446F0D0(v37, v38);
    v44 = qword_1EDDF7AD8;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if (v44 == -1)
    {
LABEL_13:
      v46 = qword_1EDE2D7A8;
      v45 = unk_1EDE2D7B0;
      v48 = qword_1EDE2D7B8;
      v47 = unk_1EDE2D7C0;
      v49 = qword_1EDE2D7C8;
      sub_1C4EF9CB8();
      v51 = v50;
      v73 = sub_1C456902C(&unk_1EC0C2E68, &qword_1C4F4E0A0);
      v74 = sub_1C4401CBC(&unk_1EDDF7CA0, &unk_1EC0C2E68, &qword_1C4F4E0A0, &unk_1C4F555C8);
      v52 = swift_allocObject();
      *&v72 = v52;
      v52[2] = v46;
      v52[3] = v45;
      v52[4] = v48;
      v52[5] = v47;
      v52[6] = v49;
      v52[7] = v51;
      v52[8] = v47;
      v52[9] = v49;
      v43 = swift_allocObject();
      *(v43 + 16) = v71;
      sub_1C441D670(&v72, v43 + 32);
      sub_1C446F0D0(v47, v49);
      sub_1C446F0D0(v47, v49);
      v53 = *(v32 + 8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v53(v66, v70);
      v32 = v64;
      goto LABEL_14;
    }

LABEL_16:
    swift_once();
    goto LABEL_13;
  }

  sub_1C446F0D0(v37, v38);
  sub_1C446F0D0(v37, v38);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C446F170(v41, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v43 = MEMORY[0x1E69E7CC0];
LABEL_14:
  sub_1C456902C(&qword_1EC0C2E60, &unk_1C4F54100);
  v54 = swift_initStackObject();
  *(v54 + 16) = xmmword_1C4F13950;
  v55 = v65;
  *(v54 + 32) = v62;
  *(v54 + 40) = v55;
  *(v54 + 48) = v32;
  *(v54 + 56) = v33;
  *(v54 + 64) = v43;
  sub_1C446F8F4(v54);
  v57 = v56;
  swift_setDeallocating();
  sub_1C446FAEC();
  return v57;
}

uint64_t sub_1C4AC5534()
{
  sub_1C43FBCD4();
  sub_1C4424774();

  sub_1C43FBDA0();

  return v0();
}

uint64_t sub_1C4AC55B4()
{
  sub_1C43FBCD4();
  sub_1C4424774();

  sub_1C43FBDA0();

  return v0();
}

uint64_t sub_1C4AC5634()
{
  sub_1C43FBCD4();
  sub_1C4424774();

  sub_1C43FBDA0();

  return v0();
}

uint64_t sub_1C4AC56A0(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C4AC56C0, 0, 0);
}

uint64_t sub_1C4AC56C0()
{
  sub_1C43FBCD4();
  v1 = [objc_opt_self() sharedService];
  if (v1)
  {
    v2 = *(v0 + 32);
    v3 = *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore8Pipeline_geoMapService);
    *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore8Pipeline_geoMapService) = v1;
  }

  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *v4 = v0;
  v4[1] = sub_1C4AC5788;

  return sub_1C4AC5A88();
}

uint64_t sub_1C4AC5788()
{
  sub_1C43FCF70();
  v2 = v1;
  sub_1C43FBDE4();
  v4 = v3;
  sub_1C44001F0();
  *v5 = v4;
  v6 = *v0;
  sub_1C43FBDAC();
  *v7 = v6;

  *(v4 + 16) = v2;
  v8 = v4 + 16;
  v9 = swift_task_alloc();
  *(v8 + 32) = v9;
  *v9 = v6;
  v9[1] = sub_1C4AC58B0;
  v10 = sub_1C440F4D4(*(v8 + 8));

  return sub_1C448B910(v10, v8);
}

uint64_t sub_1C4AC58B0()
{
  sub_1C43FCF70();
  sub_1C44001F0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 56) = v0;

  sub_1C440C470();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C4AC59D0()
{
  sub_1C43FCF70();
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore8Pipeline_geoMapService);
  *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore8Pipeline_geoMapService) = 0;

  sub_1C4EFFCB8();
  if (v1)
  {
    v4 = sub_1C43FF4D8();
  }

  else
  {
    sub_1C4F01948();
    sub_1C43FBCF0();
    v4 = v6 & 1;
  }

  return v5(v4);
}

uint64_t sub_1C4AC5A88()
{
  v1[152] = v0;
  v1[153] = *v0;
  v1[154] = type metadata accessor for PhaseStores(0);
  v1[155] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4AC5B44, 0, 0);
}

uint64_t sub_1C4AC5B44()
{
  sub_1C43FBCD4();
  *(v0 + 1248) = OBJC_IVAR____TtC24IntelligencePlatformCore8Pipeline_stores;
  sub_1C441A2F4();
  sub_1C443113C(v1 + v2, v3);
  *(v0 + 2137) = 1;
  *(v0 + 1256) = type metadata accessor for RelationshipPhase(0);
  sub_1C43FD23C();
  swift_allocObject();
  v4 = swift_task_alloc();
  *(v0 + 1264) = v4;
  *v4 = v0;
  sub_1C445E98C(v4);
  v6 = sub_1C440F4D4(v5);

  return sub_1C447E5D8(v6, v7);
}

uint64_t sub_1C4AC5C10()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1272) = v3;

  v4 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C4AC5CF8()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  v1 = *(v0 + 1272);
  v2 = *(v0 + 1248);
  v3 = *(v0 + 1240);
  v4 = *(v0 + 1216);
  *(v0 + 80) = *(v0 + 1256);
  sub_1C443F708();
  *(v0 + 88) = sub_1C4472508(v5, v6, &protocol conformance descriptor for PipelinePhase);
  *(v0 + 56) = v1;
  v7 = sub_1C456902C(&qword_1EC0B8AA8, &unk_1C4F4E0E0);
  *(v0 + 1280) = v7;
  v8 = sub_1C44331AC(v7);
  *(v0 + 1288) = v8;
  sub_1C4459BE0(v8, xmmword_1C4F0D130);
  sub_1C441D670((v0 + 56), v9);
  sub_1C441A2F4();
  sub_1C443113C(v4 + v2, v3);
  *(v0 + 2160) = 1;
  [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
  v10 = sub_1C43FBE94();
  *(v0 + 1296) = type metadata accessor for ContactsPersonPhase(v10);
  sub_1C43FD23C();
  swift_allocObject();
  v11 = swift_task_alloc();
  *(v0 + 1304) = v11;
  *v11 = v0;
  sub_1C445E98C(v11);
  sub_1C4416368(v12);
  sub_1C4426C44();

  return sub_1C44758E8(v13, v14, v15, v16);
}

uint64_t sub_1C4AC5E50()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1312) = v3;

  v4 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C4AC5F38()
{
  sub_1C43FEAEC();
  v4 = *(v1 + 1312);
  sub_1C441B4A0();
  *(v1 + 160) = v5;
  sub_1C4418510();
  v8 = sub_1C4472508(v6, v7, &protocol conformance descriptor for PipelinePhase);
  *(v1 + 1320) = v8;
  *(v1 + 168) = v8;
  *(v1 + 136) = v4;
  v9 = sub_1C440C6A0();
  *(v1 + 1328) = v9;
  sub_1C4459BE0(v9, xmmword_1C4F0D130);
  sub_1C441D670((v1 + 136), v10);
  sub_1C441A2F4();
  sub_1C443113C(v3 + v2, v0);
  *(v1 + 2158) = 1;
  *(v1 + 1336) = type metadata accessor for HKEmergencyContactPhase(0);
  sub_1C43FD23C();
  swift_allocObject();
  v11 = swift_task_alloc();
  *(v1 + 1344) = v11;
  *v11 = v1;
  sub_1C445E98C(v11);
  v13 = sub_1C440F4D4(v12);

  return sub_1C4887C68(v13, v14);
}

uint64_t sub_1C4AC6064()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1352) = v3;

  v4 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C4AC614C()
{
  sub_1C43FEAEC();
  v4 = *(v1 + 1352);
  sub_1C441B4A0();
  *(v1 + 240) = v5;
  *(v1 + 248) = sub_1C4472508(&qword_1EDDE1FF0, type metadata accessor for HKEmergencyContactPhase, &protocol conformance descriptor for PipelinePhase);
  *(v1 + 216) = v4;
  v6 = sub_1C440C6A0();
  *(v1 + 1360) = v6;
  sub_1C4459BE0(v6, xmmword_1C4F0D130);
  sub_1C441D670((v1 + 216), v7);
  sub_1C441A2F4();
  sub_1C443113C(v3 + v2, v0);
  *(v1 + 2156) = 1;
  *(v1 + 1368) = type metadata accessor for IntentsPersonPhase(0);
  sub_1C43FD23C();
  swift_allocObject();
  v8 = swift_task_alloc();
  *(v1 + 1376) = v8;
  *v8 = v1;
  sub_1C445E98C(v8);
  v10 = sub_1C440F4D4(v9);

  return sub_1C494C7F0(v10, v11);
}

uint64_t sub_1C4AC6284()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1384) = v3;

  v4 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C4AC636C()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  v1 = *(v0 + 1384);
  sub_1C441769C();
  *(v0 + 320) = v2;
  *(v0 + 328) = sub_1C4472508(qword_1EDDE5AF8, type metadata accessor for IntentsPersonPhase, &protocol conformance descriptor for PipelinePhase);
  *(v0 + 296) = v1;
  v3 = sub_1C440C6A0();
  *(v0 + 1392) = v3;
  *(v3 + 16) = xmmword_1C4F0D130;
  sub_1C441D670((v0 + 296), v3 + 32);
  sub_1C441A2F4();
  sub_1C442A990(v4, v5, v6);
  *(v0 + 2154) = 1;
  *(v0 + 1400) = type metadata accessor for BMAppleMusicEventPhase(0);
  sub_1C43FD23C();
  swift_allocObject();
  v7 = swift_task_alloc();
  *(v0 + 1408) = v7;
  *v7 = v0;
  sub_1C445E98C(v7);
  sub_1C440F4D4(v8);
  sub_1C4426C44();

  return sub_1C4656CD4(v9, v10);
}

uint64_t sub_1C4AC6498()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1416) = v3;

  v4 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C4AC6580()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  v1 = *(v0 + 1416);
  sub_1C441769C();
  *(v0 + 400) = v2;
  v3 = sub_1C4472508(&qword_1EDDE3230, type metadata accessor for BMAppleMusicEventPhase, &protocol conformance descriptor for PipelinePhase);
  *(v0 + 1424) = v3;
  *(v0 + 408) = v3;
  *(v0 + 376) = v1;
  v4 = sub_1C440C6A0();
  *(v0 + 1432) = v4;
  *(v4 + 16) = xmmword_1C4F0D130;
  sub_1C441D670((v0 + 376), v4 + 32);
  sub_1C441A2F4();
  sub_1C442A990(v5, v6, v7);
  *(v0 + 2152) = 1;
  *(v0 + 1440) = type metadata accessor for INGroupPhase(0);
  sub_1C43FD23C();
  swift_allocObject();
  v8 = swift_task_alloc();
  *(v0 + 1448) = v8;
  *v8 = v0;
  sub_1C445E98C(v8);
  sub_1C440F4D4(v9);
  sub_1C4426C44();

  return sub_1C4940F64(v10, v11);
}

uint64_t sub_1C4AC66B0()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1456) = v3;

  v4 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C4AC6798()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  v1 = *(v0 + 1456);
  sub_1C441769C();
  *(v0 + 480) = v2;
  *(v0 + 488) = sub_1C4472508(qword_1EDDEB5D8, type metadata accessor for INGroupPhase, &protocol conformance descriptor for PipelinePhase);
  *(v0 + 456) = v1;
  v3 = sub_1C440C6A0();
  *(v0 + 1464) = v3;
  *(v3 + 16) = xmmword_1C4F0D130;
  sub_1C441D670((v0 + 456), v3 + 32);
  sub_1C441A2F4();
  sub_1C442A990(v4, v5, v6);
  *(v0 + 2150) = 1;
  *(v0 + 1472) = type metadata accessor for PhotosPersonPhase(0);
  sub_1C43FD23C();
  swift_allocObject();
  v7 = swift_task_alloc();
  *(v0 + 1480) = v7;
  *v7 = v0;
  sub_1C445E98C(v7);
  sub_1C440F4D4(v8);
  sub_1C4426C44();

  return sub_1C4487D4C(v9, v10);
}

uint64_t sub_1C4AC68C4()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1488) = v3;

  v4 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C4AC69AC()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  v1 = *(v0 + 1488);
  sub_1C441769C();
  *(v0 + 560) = v2;
  sub_1C446035C();
  *(v0 + 568) = sub_1C4472508(v3, v4, &protocol conformance descriptor for PipelinePhase);
  *(v0 + 536) = v1;
  v5 = sub_1C440C6A0();
  *(v0 + 1496) = v5;
  *(v5 + 16) = xmmword_1C4F0D130;
  sub_1C441D670((v0 + 536), v5 + 32);
  sub_1C441A2F4();
  sub_1C442A990(v6, v7, v8);
  *(v0 + 2148) = 1;
  *(v0 + 1504) = type metadata accessor for FamilyCircleGroupPhase(0);
  sub_1C43FD23C();
  swift_allocObject();
  v9 = swift_task_alloc();
  *(v0 + 1512) = v9;
  *v9 = v0;
  sub_1C445E98C(v9);
  sub_1C440F4D4(v10);
  sub_1C4426C44();

  return sub_1C47CE144(v11, v12);
}

uint64_t sub_1C4AC6AC8()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1520) = v3;

  v4 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C4AC6BB0()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  v2 = *(v0 + 1520);
  sub_1C441769C();
  *(v0 + 640) = v3;
  *(v0 + 648) = sub_1C4472508(qword_1EDDE2E90, type metadata accessor for FamilyCircleGroupPhase, &protocol conformance descriptor for PipelinePhase);
  *(v0 + 616) = v2;
  v4 = sub_1C440C6A0();
  *(v0 + 1528) = v4;
  *(v4 + 16) = xmmword_1C4F0D130;
  sub_1C441D670((v0 + 616), v4 + 32);
  sub_1C441A2F4();
  sub_1C442A990(v5, v6, v7);
  v8 = OBJC_IVAR____TtC24IntelligencePlatformCore8Pipeline_geoMapService;
  *(v0 + 1536) = OBJC_IVAR____TtC24IntelligencePlatformCore8Pipeline_geoMapService;
  v9 = *(v1 + v8);
  *(v0 + 2146) = 1;
  *(v0 + 1544) = type metadata accessor for EventKitEventPhase(0);
  sub_1C43FD23C();
  swift_allocObject();
  v10 = v9;
  v11 = swift_task_alloc();
  *(v0 + 1552) = v11;
  *v11 = v0;
  sub_1C445E98C(v11);
  sub_1C4414E5C(v12);
  sub_1C4426C44();

  return sub_1C478450C(v13, v14, v15);
}

uint64_t sub_1C4AC6CF8()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1560) = v3;

  v4 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C4AC6DE0()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  v1 = *(v0 + 1560);
  sub_1C441769C();
  *(v0 + 720) = v2;
  *(v0 + 728) = sub_1C4472508(qword_1EDDED548, type metadata accessor for EventKitEventPhase, &protocol conformance descriptor for PipelinePhase);
  *(v0 + 696) = v1;
  v3 = sub_1C440C6A0();
  *(v0 + 1568) = v3;
  *(v3 + 16) = xmmword_1C4F0D130;
  sub_1C441D670((v0 + 696), v3 + 32);
  sub_1C441A2F4();
  sub_1C442A990(v4, v5, v6);
  *(v0 + 2144) = 1;
  *(v0 + 1576) = type metadata accessor for LSBundleRecordSoftwarePhase(0);
  sub_1C43FD23C();
  swift_allocObject();
  v7 = swift_task_alloc();
  *(v0 + 1584) = v7;
  *v7 = v0;
  sub_1C445E98C(v7);
  sub_1C440F4D4(v8);
  sub_1C4426C44();

  return sub_1C4A2B8A8(v9, v10);
}

uint64_t sub_1C4AC6F0C()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1592) = v3;

  v4 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C4AC6FF4()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  v1 = *(v0 + 1592);
  sub_1C441769C();
  *(v0 + 800) = v2;
  *(v0 + 808) = sub_1C4472508(qword_1EDDE05F0, type metadata accessor for LSBundleRecordSoftwarePhase, &protocol conformance descriptor for PipelinePhase);
  *(v0 + 776) = v1;
  v3 = sub_1C440C6A0();
  *(v0 + 1600) = v3;
  *(v3 + 16) = xmmword_1C4F0D130;
  sub_1C441D670((v0 + 776), v3 + 32);
  sub_1C441A2F4();
  sub_1C442A990(v4, v5, v6);
  *(v0 + 2142) = 1;
  *(v0 + 1608) = type metadata accessor for PGRelationshipPhase(0);
  sub_1C43FD23C();
  swift_allocObject();
  v7 = swift_task_alloc();
  *(v0 + 1616) = v7;
  *v7 = v0;
  sub_1C445E98C(v7);
  sub_1C440F4D4(v8);
  sub_1C4426C44();

  return sub_1C4489800(v9, v10);
}

uint64_t sub_1C4AC7120()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1624) = v3;

  v4 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C4AC7208()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  v1 = *(v0 + 1624);
  v2 = *(v0 + 1280);
  *(v0 + 880) = *(v0 + 1608);
  sub_1C441AFE0();
  *(v0 + 888) = sub_1C4472508(v3, v4, &protocol conformance descriptor for PipelinePhase);
  *(v0 + 856) = v1;
  v5 = sub_1C44331AC(v2);
  *(v0 + 1632) = v5;
  *(v5 + 16) = xmmword_1C4F0D130;
  sub_1C441D670((v0 + 856), v5 + 32);
  v6 = swift_task_alloc();
  *(v0 + 1640) = v6;
  *v6 = v0;
  v6[1] = sub_1C4AC7310;
  sub_1C4426C44();

  return sub_1C4ABB70C(v7);
}

uint64_t sub_1C4AC7310()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1648) = v3;

  v4 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C4AC73F8()
{
  sub_1C4404D98();
  v1 = *(v0 + 1648);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = *(v1 + 16);
    if (v3)
    {
      v4 = v1 + 32;
      v5 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1C448BD48(v4, v0 + 1136);
        v6 = *(v0 + 1160);
        v7 = *(v0 + 1168);
        v8 = sub_1C4409678((v0 + 1136), v6);
        v9 = sub_1C4AA7B20(v8, v6, v7);
        sub_1C440962C((v0 + 1136));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C4401E28();
          sub_1C458F0B4();
          v5 = v11;
        }

        v10 = *(v5 + 16);
        if (v10 >= *(v5 + 24) >> 1)
        {
          sub_1C4401E28();
          sub_1C458F0B4();
          v5 = v12;
        }

        *(v5 + 16) = v10 + 1;
        *(v5 + 8 * v10 + 32) = v9;
        v4 += 40;
        --v3;
      }

      while (v3);
    }

    static PhaseBuilder.buildArray(_:)();
    sub_1C4406834();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC0];
  }

  *(v0 + 1656) = v1;
  if (Configuration.isLifeEventSourceEnabled.getter() & 1) != 0 || (Configuration.isAllSourcesEnabled.getter())
  {
    sub_1C441A2F4();
    sub_1C443113C(v14 + v13, v15);
    *(v0 + 2159) = 1;
    *(v0 + 1664) = type metadata accessor for LifeEventPhase(0);
    sub_1C43FD23C();
    swift_allocObject();
    v16 = swift_task_alloc();
    *(v0 + 1672) = v16;
    *v16 = v0;
    sub_1C445E98C(v16);
    v18 = sub_1C440F4D4(v17);

    return sub_1C49C9C78(v18, v19);
  }

  else
  {
    *(v0 + 1688) = v2;
    sub_1C441A2F4();
    sub_1C443113C(v22 + v21, v23);
    *(v0 + 2141) = 1;
    *(v0 + 1696) = type metadata accessor for ScreenTimePhase(0);
    sub_1C43FD23C();
    swift_allocObject();
    v24 = swift_task_alloc();
    *(v0 + 1704) = v24;
    *v24 = v0;
    sub_1C445E98C(v24);
    v26 = sub_1C440F4D4(v25);

    return sub_1C4AF1E6C(v26, v27);
  }
}

uint64_t sub_1C4AC76A4()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1680) = v3;

  v4 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C4AC778C()
{
  sub_1C43FCF70();
  v1 = *(v0 + 1680);
  *(v0 + 120) = *(v0 + 1664);
  *(v0 + 128) = sub_1C4472508(&qword_1EDDE9700, type metadata accessor for LifeEventPhase, &protocol conformance descriptor for PipelinePhase);
  *(v0 + 96) = v1;
  v2 = sub_1C440C6A0();
  sub_1C4459BE0(v2, xmmword_1C4F0D130);
  sub_1C441D670((v0 + 96), v3);
  *(v0 + 1688) = v2;
  sub_1C441A2F4();
  sub_1C443113C(v5 + v4, v6);
  *(v0 + 2141) = 1;
  *(v0 + 1696) = type metadata accessor for ScreenTimePhase(0);
  sub_1C43FD23C();
  swift_allocObject();
  v7 = swift_task_alloc();
  *(v0 + 1704) = v7;
  *v7 = v0;
  sub_1C445E98C(v7);
  v9 = sub_1C440F4D4(v8);

  return sub_1C4AF1E6C(v9, v10);
}

uint64_t sub_1C4AC78C8()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1712) = v3;

  v4 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C4AC79B0()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  v1 = *(v0 + 1712);
  sub_1C441769C();
  *(v0 + 960) = v2;
  *(v0 + 968) = sub_1C4472508(qword_1EDDE75C8, type metadata accessor for ScreenTimePhase, &protocol conformance descriptor for PipelinePhase);
  *(v0 + 936) = v1;
  v3 = sub_1C440C6A0();
  *(v0 + 1720) = v3;
  *(v3 + 16) = xmmword_1C4F0D130;
  sub_1C441D670((v0 + 936), v3 + 32);
  sub_1C441A2F4();
  sub_1C442A990(v4, v5, v6);
  *(v0 + 2139) = 1;
  *(v0 + 1728) = type metadata accessor for FavoriteSportsTeamPhase(0);
  sub_1C43FD23C();
  swift_allocObject();
  v7 = swift_task_alloc();
  *(v0 + 1736) = v7;
  *v7 = v0;
  sub_1C445E98C(v7);
  sub_1C440F4D4(v8);
  sub_1C4426C44();

  return sub_1C47D0B6C(v9, v10);
}

uint64_t sub_1C4AC7ADC()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1744) = v3;

  v4 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C4AC7BC4()
{
  sub_1C43FEAEC();
  v4 = *(v1 + 1744);
  v5 = *(v1 + 1536);
  sub_1C441B4A0();
  *(v1 + 1040) = v6;
  *(v1 + 1048) = sub_1C4472508(qword_1EDDE2210, type metadata accessor for FavoriteSportsTeamPhase, &protocol conformance descriptor for PipelinePhase);
  *(v1 + 1016) = v4;
  v7 = sub_1C440C6A0();
  *(v1 + 1752) = v7;
  *(v7 + 16) = xmmword_1C4F0D130;
  sub_1C441D670((v1 + 1016), v7 + 32);
  sub_1C441A2F4();
  sub_1C443113C(v3 + v2, v0);
  v8 = *(v3 + v5);
  *(v1 + 2161) = 1;
  *(v1 + 1760) = type metadata accessor for FoundInAppsEventPhase(0);
  sub_1C43FD23C();
  swift_allocObject();
  v9 = v8;
  v10 = swift_task_alloc();
  *(v1 + 1768) = v10;
  *v10 = v1;
  sub_1C445E98C(v10);
  v12 = sub_1C4414E5C(v11);

  return sub_1C480C688(v12, v13, v14);
}

uint64_t sub_1C4AC7D14()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1776) = v3;

  v4 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C4AC7DFC()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  v1 = *(v0 + 1776);
  sub_1C441769C();
  *(v0 + 1120) = v2;
  *(v0 + 1128) = sub_1C4472508(qword_1EDDE3B98, type metadata accessor for FoundInAppsEventPhase, &protocol conformance descriptor for PipelinePhase);
  *(v0 + 1096) = v1;
  v3 = sub_1C440C6A0();
  *(v0 + 1784) = v3;
  *(v3 + 16) = xmmword_1C4F0D130;
  sub_1C441D670((v0 + 1096), v3 + 32);
  sub_1C441A2F4();
  sub_1C442A990(v4, v5, v6);
  *(v0 + 2136) = 1;
  *(v0 + 1792) = type metadata accessor for FoundInAppsPersonPhase(0);
  sub_1C43FD23C();
  swift_allocObject();
  v7 = swift_task_alloc();
  *(v0 + 1800) = v7;
  *v7 = v0;
  sub_1C445E98C(v7);
  sub_1C440F4D4(v8);
  sub_1C4426C44();

  return sub_1C480D544(v9, v10);
}

uint64_t sub_1C4AC7F28()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1808) = v3;

  v4 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C4AC8308()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1840) = v3;

  v4 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C4AC83F0()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  v1 = *(v0 + 1840);
  sub_1C441769C();
  *(v0 + 440) = v2;
  sub_1C4450788();
  *(v0 + 448) = sub_1C4472508(v3, v4, &protocol conformance descriptor for PipelinePhase);
  *(v0 + 416) = v1;
  v5 = sub_1C440C6A0();
  *(v0 + 1848) = v5;
  *(v5 + 16) = xmmword_1C4F0D130;
  sub_1C441D670((v0 + 416), v5 + 32);
  sub_1C441A2F4();
  sub_1C442A990(v6, v7, v8);
  *(v0 + 2153) = 1;
  *(v0 + 1856) = type metadata accessor for WalletEmailOrderEventPhase(0);
  sub_1C43FD23C();
  swift_allocObject();
  v9 = swift_task_alloc();
  *(v0 + 1864) = v9;
  *v9 = v0;
  sub_1C445E98C(v9);
  sub_1C440F4D4(v10);
  sub_1C4426C44();

  return sub_1C4D44064(v11, v12);
}

uint64_t sub_1C4AC850C()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1872) = v3;

  v4 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C4AC85F4()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  v1 = *(v0 + 1872);
  sub_1C441769C();
  *(v0 + 360) = v2;
  sub_1C441DDF8();
  *(v0 + 368) = sub_1C4472508(v3, v4, &protocol conformance descriptor for PipelinePhase);
  *(v0 + 336) = v1;
  v5 = sub_1C440C6A0();
  *(v0 + 1880) = v5;
  *(v5 + 16) = xmmword_1C4F0D130;
  sub_1C441D670((v0 + 336), v5 + 32);
  sub_1C441A2F4();
  sub_1C442A990(v6, v7, v8);
  *(v0 + 2155) = 1;
  *(v0 + 1888) = type metadata accessor for WalletClassicOrderEventPhase(0);
  sub_1C43FD23C();
  swift_allocObject();
  v9 = swift_task_alloc();
  *(v0 + 1896) = v9;
  *v9 = v0;
  sub_1C445E98C(v9);
  sub_1C440F4D4(v10);
  sub_1C4426C44();

  return sub_1C4D3F768(v11, v12);
}

uint64_t sub_1C4AC8710()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1904) = v3;

  v4 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C4AC87F8()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  v1 = *(v0 + 1904);
  sub_1C441769C();
  *(v0 + 280) = v2;
  sub_1C445FE44();
  *(v0 + 288) = sub_1C4472508(v3, v4, &protocol conformance descriptor for PipelinePhase);
  *(v0 + 256) = v1;
  v5 = sub_1C440C6A0();
  *(v0 + 1912) = v5;
  *(v5 + 16) = xmmword_1C4F0D130;
  sub_1C441D670((v0 + 256), v5 + 32);
  sub_1C441A2F4();
  sub_1C442A990(v6, v7, v8);
  *(v0 + 2157) = 1;
  *(v0 + 1920) = type metadata accessor for WalletTransactionOrderEventPhase(0);
  sub_1C43FD23C();
  swift_allocObject();
  v9 = swift_task_alloc();
  *(v0 + 1928) = v9;
  *v9 = v0;
  sub_1C445E98C(v9);
  sub_1C440F4D4(v10);
  sub_1C4426C44();

  return sub_1C4D5D318(v11, v12);
}

uint64_t sub_1C4AC8914()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1936) = v3;

  v4 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C4AC8C7C()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1976) = v3;

  v4 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C4AC8D64()
{
  sub_1C43FCF70();
  v1 = *(v0 + 1976);
  v2 = *(v0 + 1320);
  v3 = *(v0 + 1280);
  v4 = *(v0 + 1248);
  v5 = *(v0 + 1240);
  v6 = *(v0 + 1216);
  *(v0 + 1000) = *(v0 + 1296);
  *(v0 + 1008) = v2;
  *(v0 + 976) = v1;
  v7 = sub_1C44331AC(v3);
  *(v0 + 1984) = v7;
  *(v7 + 16) = xmmword_1C4F0D130;
  sub_1C441D670((v0 + 976), v7 + 32);
  sub_1C441A2F4();
  sub_1C443113C(v6 + v4, v5);
  *(v0 + 2140) = 2;
  swift_allocObject();
  v8 = swift_task_alloc();
  *(v0 + 1992) = v8;
  *v8 = v0;
  sub_1C445E98C(v8);
  v10 = sub_1C440F4D4(v9);

  return sub_1C4656CD4(v10, v11);
}

uint64_t sub_1C4AC8E74()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 2000) = v3;

  v4 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C4AC8F5C()
{
  v1 = *(v0 + 2000);
  v2 = *(v0 + 1424);
  v3 = *(v0 + 1280);
  *(v0 + 920) = *(v0 + 1400);
  *(v0 + 928) = v2;
  *(v0 + 896) = v1;
  v4 = sub_1C44331AC(v3);
  *(v0 + 2008) = v4;
  *(v4 + 16) = xmmword_1C4F0D130;
  sub_1C441D670((v0 + 896), v4 + 32);
  if ((Configuration.isWalletOrderSourcesEnabled.getter() & 1) == 0)
  {
    v50 = *(v0 + 2008);
    v49 = *(v0 + 1984);
    v47 = *(v0 + 1816);
    v48 = *(v0 + 1960);
    v45 = *(v0 + 1752);
    v46 = *(v0 + 1784);
    v43 = *(v0 + 1688);
    v44 = *(v0 + 1720);
    v41 = *(v0 + 1632);
    v42 = *(v0 + 1656);
    v39 = *(v0 + 1568);
    v40 = *(v0 + 1600);
    v37 = *(v0 + 1496);
    v38 = *(v0 + 1528);
    v36 = *(v0 + 1464);
    v14 = *(v0 + 1432);
    v15 = *(v0 + 1392);
    v16 = *(v0 + 1360);
    v17 = *(v0 + 1328);
    v18 = *(v0 + 1288);
    v19 = type metadata accessor for RegisteredViewsGenerationFullPhase();
    v20 = swift_allocObject();
    sub_1C4413F70(v20, "ViewGenerationFullPipelinePhase");
    *(v0 + 840) = v19;
    sub_1C4435C54();
    *(v0 + 848) = sub_1C4472508(v21, v22, &unk_1C4F615E8);
    *(v0 + 816) = v20;
    v23 = sub_1C440C6A0();
    *(v23 + 16) = xmmword_1C4F0D130;
    v51 = *(v0 + 1944);
    sub_1C441D670((v0 + 816), v23 + 32);
    sub_1C456902C(&qword_1EC0B8B18, &qword_1C4F0DF40);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1C4F453E0;
    *(v24 + 32) = v18;
    *(v24 + 40) = v17;
    *(v24 + 48) = v16;
    *(v24 + 56) = v15;
    *(v24 + 64) = v14;
    *(v24 + 72) = v36;
    v32 = sub_1C446BFF0(v24, v25, v26, v27, v28, v29, v30, v31, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47);
    *(v32 + 21) = v51;
    v32[23] = v48;
    v32[24] = v49;
    v33 = MEMORY[0x1E69E7CC0];
    v32[25] = v50;
    v32[26] = v33;
    v32[27] = v23;
    static PhaseBuilder.buildBlock(_:)();
    swift_setDeallocating();
    sub_1C448B4C8();

    sub_1C43FBCF0();
    sub_1C4401D60();

    __asm { BRAA            X2, X16 }
  }

  sub_1C441A2F4();
  sub_1C443113C(v6 + v5, v7);
  *(v0 + 2143) = 2;
  *(v0 + 2016) = type metadata accessor for WalletEmailOrderEventPhase(0);
  sub_1C43FD23C();
  swift_allocObject();
  v8 = swift_task_alloc();
  *(v0 + 2024) = v8;
  *v8 = v0;
  sub_1C445E98C(v8);
  sub_1C440F4D4(v9);
  sub_1C4401D60();

  return sub_1C4D44064(v10, v11);
}

uint64_t sub_1C4AC9250()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 2032) = v3;

  v4 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C4AC9338()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  v1 = *(v0 + 2032);
  sub_1C441769C();
  *(v0 + 760) = v2;
  sub_1C441DDF8();
  *(v0 + 768) = sub_1C4472508(v3, v4, &protocol conformance descriptor for PipelinePhase);
  *(v0 + 736) = v1;
  v5 = sub_1C440C6A0();
  *(v0 + 2040) = v5;
  *(v5 + 16) = xmmword_1C4F0D130;
  sub_1C441D670((v0 + 736), v5 + 32);
  sub_1C441A2F4();
  sub_1C442A990(v6, v7, v8);
  *(v0 + 2145) = 2;
  *(v0 + 2048) = type metadata accessor for WalletClassicOrderEventPhase(0);
  sub_1C43FD23C();
  swift_allocObject();
  v9 = swift_task_alloc();
  *(v0 + 2056) = v9;
  *v9 = v0;
  sub_1C445E98C(v9);
  sub_1C440F4D4(v10);
  sub_1C4426C44();

  return sub_1C4D3F768(v11, v12);
}

uint64_t sub_1C4AC9454()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 2064) = v3;

  v4 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C4AC953C()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  v1 = *(v0 + 2064);
  sub_1C441769C();
  *(v0 + 680) = v2;
  sub_1C445FE44();
  *(v0 + 688) = sub_1C4472508(v3, v4, &protocol conformance descriptor for PipelinePhase);
  *(v0 + 656) = v1;
  v5 = sub_1C440C6A0();
  *(v0 + 2072) = v5;
  *(v5 + 16) = xmmword_1C4F0D130;
  sub_1C441D670((v0 + 656), v5 + 32);
  sub_1C441A2F4();
  sub_1C442A990(v6, v7, v8);
  *(v0 + 2147) = 2;
  *(v0 + 2080) = type metadata accessor for WalletTrackedOrderEventPhase(0);
  sub_1C43FD23C();
  swift_allocObject();
  v9 = swift_task_alloc();
  *(v0 + 2088) = v9;
  *v9 = v0;
  sub_1C445E98C(v9);
  sub_1C440F4D4(v10);
  sub_1C4426C44();

  return sub_1C4D58F70(v11, v12);
}

uint64_t sub_1C4AC9658()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 2096) = v3;

  v4 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C4AC9740()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  v1 = *(v0 + 2096);
  sub_1C441769C();
  *(v0 + 600) = v2;
  sub_1C4450788();
  *(v0 + 608) = sub_1C4472508(v3, v4, &protocol conformance descriptor for PipelinePhase);
  *(v0 + 576) = v1;
  v5 = sub_1C440C6A0();
  *(v0 + 2104) = v5;
  *(v5 + 16) = xmmword_1C4F0D130;
  sub_1C441D670((v0 + 576), v5 + 32);
  sub_1C441A2F4();
  sub_1C442A990(v6, v7, v8);
  *(v0 + 2149) = 2;
  *(v0 + 2112) = type metadata accessor for WalletTransactionOrderEventPhase(0);
  sub_1C43FD23C();
  swift_allocObject();
  v9 = swift_task_alloc();
  *(v0 + 2120) = v9;
  *v9 = v0;
  sub_1C445E98C(v9);
  sub_1C440F4D4(v10);
  sub_1C4426C44();

  return sub_1C4D5D318(v11, v12);
}

uint64_t sub_1C4AC985C()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 2128) = v3;

  v4 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

void sub_1C4AC9944()
{
  v1 = *(v0 + 2128);
  v2 = *(v0 + 2104);
  v3 = *(v0 + 2072);
  v4 = *(v0 + 2040);
  *(v0 + 520) = *(v0 + 2112);
  sub_1C44341D0();
  *(v0 + 528) = sub_1C4472508(v5, v6, &protocol conformance descriptor for PipelinePhase);
  *(v0 + 496) = v1;
  v7 = sub_1C440C6A0();
  *(v7 + 16) = xmmword_1C4F0D130;
  sub_1C441D670((v0 + 496), v7 + 32);
  sub_1C456902C(&qword_1EC0B8B18, &qword_1C4F0DF40);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C4F0D480;
  *(v8 + 32) = v4;
  *(v8 + 40) = v3;
  *(v8 + 48) = v2;
  *(v8 + 56) = v7;
  v46 = static PhaseBuilder.buildBlock(_:)();
  swift_setDeallocating();
  sub_1C448B4C8();
  v44 = *(v0 + 1984);
  v45 = *(v0 + 2008);
  v42 = *(v0 + 1960);
  v40 = *(v0 + 1784);
  v41 = *(v0 + 1816);
  v38 = *(v0 + 1720);
  v39 = *(v0 + 1752);
  v36 = *(v0 + 1656);
  v37 = *(v0 + 1688);
  v34 = *(v0 + 1600);
  v35 = *(v0 + 1632);
  v32 = *(v0 + 1528);
  v33 = *(v0 + 1568);
  v30 = *(v0 + 1464);
  v31 = *(v0 + 1496);
  v9 = *(v0 + 1432);
  v10 = *(v0 + 1392);
  v11 = *(v0 + 1360);
  v12 = *(v0 + 1328);
  v13 = *(v0 + 1288);
  v14 = type metadata accessor for RegisteredViewsGenerationFullPhase();
  v15 = swift_allocObject();
  sub_1C4413F70(v15, "ViewGenerationFullPipelinePhase");
  *(v0 + 840) = v14;
  sub_1C4435C54();
  *(v0 + 848) = sub_1C4472508(v16, v17, &unk_1C4F615E8);
  *(v0 + 816) = v15;
  v18 = sub_1C440C6A0();
  *(v18 + 16) = xmmword_1C4F0D130;
  v43 = *(v0 + 1944);
  sub_1C441D670((v0 + 816), v18 + 32);
  sub_1C456902C(&qword_1EC0B8B18, &qword_1C4F0DF40);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1C4F453E0;
  *(v19 + 32) = v13;
  *(v19 + 40) = v12;
  *(v19 + 48) = v11;
  *(v19 + 56) = v10;
  *(v19 + 64) = v9;
  *(v19 + 72) = v30;
  v27 = sub_1C446BFF0(v19, v20, v21, v22, v23, v24, v25, v26, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41);
  *(v27 + 21) = v43;
  v27[23] = v42;
  v27[24] = v44;
  v27[25] = v45;
  v27[26] = v46;
  v27[27] = v18;
  static PhaseBuilder.buildBlock(_:)();
  swift_setDeallocating();
  sub_1C448B4C8();

  sub_1C43FBCF0();
  sub_1C4401D60();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_1C4AC9BEC()
{
  sub_1C43FCF70();
  sub_1C44001F0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 104) = v0;

  sub_1C440C470();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C4AC9D0C()
{
  sub_1C43FCF70();
  v1 = *(v0 + 104);
  sub_1C4EFFCB8();
  if (v1)
  {
    v2 = sub_1C43FF4D8();
  }

  else
  {
    sub_1C4F01948();
    sub_1C43FBCF0();
    v2 = v4 & 1;
  }

  return v3(v2);
}

uint64_t sub_1C4AC9DAC(uint64_t a1, uint64_t a2)
{
  v2[26] = a1;
  v2[27] = a2;
  type metadata accessor for MatchExtractorService(0);
  v2[28] = swift_task_alloc();
  type metadata accessor for PhaseStores(0);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4AC9E74, 0, 0);
}

uint64_t sub_1C4AC9E74()
{
  sub_1C43FCF70();
  if (qword_1EDDF7BB0 != -1)
  {
    sub_1C440D748(&qword_1EDDF7BB0);
  }

  v1 = *&qword_1EDE2DA38;
  *(v0 + 112) = xmmword_1EDE2DA28;
  *(v0 + 128) = v1;
  *(v0 + 144) = qword_1EDE2DA48;
  sub_1C446ABD0(0);
  sub_1C440F1BC();
  sub_1C448B734();

  sub_1C4F01968();
  *(v0 + 248) = OBJC_IVAR____TtC24IntelligencePlatformCore8Pipeline_stores;
  sub_1C441A2F4();
  sub_1C443113C(v2 + v3, v4);
  *(v0 + 448) = 3;
  [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
  v5 = sub_1C43FBE94();
  type metadata accessor for ContactsPersonPhase(v5);
  sub_1C43FD23C();
  swift_allocObject();
  v6 = swift_task_alloc();
  *(v0 + 256) = v6;
  *v6 = v0;
  v6[1] = sub_1C4ACA018;
  v7 = sub_1C4416368(*(v0 + 240));

  return sub_1C44758E8(v7, v8, v9, v10);
}

uint64_t sub_1C4ACA018()
{
  sub_1C43FCF70();
  v2 = v1;
  sub_1C43FBDE4();
  v4 = v3;
  sub_1C44001F0();
  *v5 = v4;
  v6 = *v0;
  sub_1C43FBDAC();
  *v7 = v6;
  *(v4 + 264) = v2;

  sub_1C4408F38(&unk_1C4F4E128);
  v11 = v8;
  v9 = swift_task_alloc();
  *(v4 + 272) = v9;
  *v9 = v6;
  sub_1C43FC688(v9);

  return v11();
}

uint64_t sub_1C4ACA13C()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v3 = v2;
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;
  *(v6 + 280) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C4ACA234()
{
  sub_1C43FEAEC();
  v15 = v0;
  v1 = *(v0 + 280);
  sub_1C4F01968();
  if (v1)
  {

    sub_1C4462830();

    v3 = sub_1C43FF4D8();

    return v4(v3);
  }

  else
  {
    if (qword_1EDDF7BA0 != -1)
    {
      sub_1C442539C(&qword_1EDDF7BA0);
    }

    v2 = *algn_1EDE2DA10;
    *(v0 + 152) = xmmword_1EDE2DA00;
    *(v0 + 168) = v2;
    *(v0 + 184) = qword_1EDE2DA20;
    sub_1C446ABD0(0);
    sub_1C440F1BC();
    sub_1C448B734();
    *(v0 + 288) = 0;
    v6 = *(v0 + 248);
    v7 = *(v0 + 232);
    v8 = *(v0 + 216);

    v14[0] = 3;
    sub_1C4AC3480(v14);
    *(v0 + 296) = sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
    inited = swift_initStackObject();
    *(v0 + 304) = inited;
    *(inited + 16) = xmmword_1C4F10430;
    sub_1C441A2F4();
    sub_1C443113C(v8 + v6, v7);
    *(v0 + 449) = 3;
    type metadata accessor for INPersonMatchExtractor(0);
    sub_1C43FD23C();
    swift_allocObject();
    v10 = swift_task_alloc();
    *(v0 + 312) = v10;
    *v10 = v0;
    sub_1C44B8FDC(v10);
    v12 = sub_1C440F4D4(v11);

    return sub_1C494C02C(v12, v13);
  }
}

uint64_t sub_1C4ACA424()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 320) = v3;

  v4 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C4ACA50C()
{
  sub_1C43FCF70();
  v1 = *(v0 + 216);
  *(*(v0 + 304) + 32) = *(v0 + 320);
  sub_1C441A2F4();
  sub_1C443113C(v1 + v2, v3);
  v4 = OBJC_IVAR____TtC24IntelligencePlatformCore8Pipeline_geoMapService;
  *(v0 + 328) = OBJC_IVAR____TtC24IntelligencePlatformCore8Pipeline_geoMapService;
  v5 = *(v1 + v4);
  *(v0 + 450) = 3;
  type metadata accessor for EventKitEventMatchExtractor(0);
  sub_1C43FD23C();
  swift_allocObject();
  v6 = v5;
  v7 = swift_task_alloc();
  *(v0 + 336) = v7;
  *v7 = v0;
  sub_1C44B8FDC(v7);
  v9 = sub_1C4414E5C(v8);

  return sub_1C4783C94(v9, v10, v11);
}

uint64_t sub_1C4ACA5FC()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 344) = v3;

  v4 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C4ACA6E4()
{
  sub_1C43FCF70();
  v1 = *(v0 + 328);
  v2 = *(v0 + 304);
  v3 = *(v0 + 248);
  v4 = *(v0 + 232);
  v5 = *(v0 + 216);
  *(v2 + 40) = *(v0 + 344);
  *(v0 + 192) = v2;
  inited = swift_initStackObject();
  *(v0 + 352) = inited;
  *(inited + 16) = xmmword_1C4F10430;
  sub_1C441A2F4();
  sub_1C443113C(v5 + v3, v4);
  v7 = *(v5 + v1);
  *(v0 + 451) = 3;
  type metadata accessor for FoundInAppsEventMatchExtractor(0);
  sub_1C43FD23C();
  swift_allocObject();
  v8 = v7;
  v9 = swift_task_alloc();
  *(v0 + 360) = v9;
  *v9 = v0;
  sub_1C44B8FDC(v9);
  v11 = sub_1C4414E5C(v10);

  return sub_1C480BE6C(v11, v12, v13);
}

uint64_t sub_1C4ACA7EC()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 368) = v3;

  v4 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C4ACA8D4()
{
  sub_1C43FBCD4();
  *(*(v0 + 352) + 32) = *(v0 + 368);
  sub_1C441A2F4();
  sub_1C443113C(v2 + v1, v3);
  *(v0 + 452) = 3;
  type metadata accessor for FoundInAppsPersonMatchExtractor(0);
  sub_1C43FD23C();
  swift_allocObject();
  v4 = swift_task_alloc();
  *(v0 + 376) = v4;
  *v4 = v0;
  sub_1C44B8FDC(v4);
  v6 = sub_1C440F4D4(v5);

  return sub_1C480CD80(v6, v7);
}

uint64_t sub_1C4ACA9A0()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 384) = v3;

  v4 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C4ACAA88()
{
  v47 = v0;
  v1 = v0[44];
  v2 = v0[31];
  v4 = v0[28];
  v3 = v0[29];
  v5 = v0[27];
  *(v1 + 40) = v0[48];
  sub_1C49D4BB0(v1);
  sub_1C441A2F4();
  sub_1C443113C(v5 + v2, v3);
  sub_1C4A2F088(v3, v4);
  v0[25] = MEMORY[0x1E69E7CC8];
  v6 = (v0 + 25);
  v7 = v0[24];
  v0[49] = v7;
  v8 = sub_1C4428DA0(v7);
  v9 = v0[36];
  v0[50] = v8;
  v0[51] = 1;
  v0[52] = 0;
  v10 = v0[49];
  if (!v8)
  {
    v43 = v9;

    v14 = *v6;
    v15 = (*v6 + 8);
    sub_1C4401700();
    v18 = v17 & v16;
    v20 = (63 - v19) >> 6;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v21 = 0;
    v44 = v14;
    while (v18)
    {
      v22 = v21;
LABEL_12:
      v23 = __clz(__rbit64(v18)) | (v22 << 6);
      v24 = (v14[6] + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v14[7] + 8 * v23);
      v28 = qword_1EDDFD028;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (v28 != -1)
      {
        sub_1C4419274();
        swift_once();
      }

      v18 &= v18 - 1;
      v29 = sub_1C4F00978();
      sub_1C442B738(v29, qword_1EDE2DE10);
      sub_1C4426A94();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v30 = sub_1C4F00968();
      v31 = sub_1C4F01CF8();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        log = v30;
        v46 = sub_1C43FFD34();
        v33 = v46;
        *v32 = 136315394;
        v34 = sub_1C441D828(v25, v26, &v46);

        *(v32 + 4) = v34;
        *(v32 + 12) = 2048;
        v35 = *(v27 + 16);

        *(v32 + 14) = v35;

        _os_log_impl(&dword_1C43F8000, log, v31, "Pipeline: For entity type %s, %ld pairs were extracted.", v32, 0x16u);
        sub_1C440962C(v33);
        sub_1C43FBE2C();
        v14 = v44;
        sub_1C43FBE2C();
      }

      else
      {
        swift_bridgeObjectRelease_n();
      }

      v21 = v22;
    }

    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v22 >= v20)
      {

        sub_1C4F01968();
        if (v43)
        {
          sub_1C44078AC();
          sub_1C4454270();

LABEL_24:

          sub_1C4462830();

          sub_1C43FF4D8();
LABEL_25:
          sub_1C4409A94();

          __asm { BRAA            X2, X16 }
        }

        v39 = sub_1C447E32C();
        sub_1C446ABD0(v39);
        sub_1C440F1BC();
        sub_1C448B734();

        if ((sub_1C4A2F2BC(v14) & 1) == 0)
        {
          sub_1C4A2F358(v14);
        }

        v42 = sub_1C447E32C();
        sub_1C446ABD0(v42);
LABEL_32:
        sub_1C4406834();
        sub_1C440F1BC();
        sub_1C448B734();

        sub_1C4F01948();

        sub_1C44078AC();
        sub_1C4454270();

        sub_1C444B24C();
        goto LABEL_25;
      }

      v18 = *(v15 + 8 * v22);
      ++v21;
      if (v18)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_32;
  }

  v11 = v10 & 0xC000000000000001;
  sub_1C4431590(0, (v10 & 0xC000000000000001) == 0, v10);
  v12 = v0[49];
  if (v11)
  {
    v13 = MEMORY[0x1C6940F90](0, v12);
  }

  else
  {
    v13 = *(v12 + 32);
  }

  v0[53] = v13;
  sub_1C4F01968();
  if (v9)
  {
    sub_1C445139C();

    sub_1C44078AC();
    sub_1C4454270();
    goto LABEL_24;
  }

  v36 = swift_task_alloc();
  v0[54] = v36;
  *v36 = v0;
  sub_1C442F328(v36);
  sub_1C4409A94();

  return sub_1C4A2DDE8();
}

uint64_t sub_1C4ACB048()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v5 = *v1;
  sub_1C43FBDAC();
  *v6 = v5;
  *(v3 + 440) = v0;

  if (v0)
  {
  }

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C4ACB150()
{
  v58 = v0;
  v1 = v0[55];
  v2 = v0[28];
  v3 = *(v0[53] + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_matchesDict);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v4 = sub_1C4ABCF60(MEMORY[0x1E69E7CC8], v3, v2);

  if (qword_1EDDFD028 != -1)
  {
    sub_1C4419274();
    swift_once();
  }

  v56 = sub_1C4F00978();
  sub_1C43FCEE8(v56, qword_1EDE2DE10);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v5 = sub_1C4F00968();
  v6 = sub_1C4F01CF8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = sub_1C43FD084();
    v8 = sub_1C43FFD34();
    v57[0] = v8;
    *v7 = 136315138;
    sub_1C456902C(&unk_1EC0C2EB0, &qword_1C4F32390);
    v9 = sub_1C4F00EE8();
    v11 = sub_1C441D828(v9, v10, v57);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1C43F8000, v5, v6, "Pipeline: for this extractor, linked pairs are: %s", v7, 0xCu);
    sub_1C440962C(v8);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  v12 = v0[51];
  v13 = v0[52];
  sub_1C4A31734(v0 + 25, v4);

  if (v13 == 0x7FFFFFFFFFFFFFFELL)
  {
    __break(1u);
    goto LABEL_45;
  }

  v14 = sub_1C447E32C();
  sub_1C446ABD0(v14);
  if (v1)
  {

    sub_1C44078AC();
    sub_1C4454270();

LABEL_9:
    sub_1C4462830();

    sub_1C43FF4D8();
    goto LABEL_10;
  }

  v15 = v12 + 1;
  sub_1C440F1BC();
  sub_1C448B734();

  v18 = v0[52] + 1;
  v0[51] = v15;
  v0[52] = v18;
  v19 = v0[49];
  if (v18 == v0[50])
  {
    v51 = v15;

    v20 = v0[25];
    v21 = v20 + 64;
    sub_1C4401700();
    v24 = v23 & v22;
    v26 = (63 - v25) >> 6;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v27 = 0;
    v52 = v20;
    while (v24)
    {
      v28 = v27;
LABEL_20:
      v29 = __clz(__rbit64(v24)) | (v28 << 6);
      v30 = (*(v20 + 48) + 16 * v29);
      v31 = v30[1];
      v54 = *v30;
      v32 = *(*(v20 + 56) + 8 * v29);
      v33 = qword_1EDDFD028;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (v33 != -1)
      {
        swift_once();
      }

      v24 &= v24 - 1;
      sub_1C442B738(v56, qword_1EDE2DE10);
      sub_1C4426A94();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v34 = sub_1C4F00968();
      v35 = sub_1C4F01CF8();

      log = v34;
      if (os_log_type_enabled(v34, v35))
      {
        swift_slowAlloc();
        v53 = sub_1C44117BC();
        v57[0] = v53;
        *v20 = 136315394;
        v36 = sub_1C441D828(v54, v31, v57);

        *(v20 + 4) = v36;
        *(v20 + 12) = 2048;
        v37 = *(v32 + 16);

        *(v20 + 14) = v37;

        _os_log_impl(&dword_1C43F8000, log, v35, "Pipeline: For entity type %s, %ld pairs were extracted.", v20, 0x16u);
        sub_1C440962C(v53);
        sub_1C43FBE2C();
        v20 = v52;
        sub_1C43FBE2C();
      }

      else
      {
        swift_bridgeObjectRelease_n();
      }

      v27 = v28;
    }

    while (1)
    {
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v28 >= v26)
      {

        sub_1C4F01968();
        if (__OFADD__(v51, 1))
        {
          __break(1u);
        }

        else
        {
          v41 = sub_1C447E32C();
          sub_1C446ABD0(v41);
          sub_1C440F1BC();
          sub_1C448B734();

          v45 = sub_1C4A2F2BC(v20);
          if ((v45 & 1) == 0)
          {
            sub_1C4A2F358(v20);
          }

          if (!__OFADD__(v51 + 1, 1))
          {
            v50 = sub_1C447E32C();
            v20 = 0;
            sub_1C446ABD0(v50);
            goto LABEL_42;
          }
        }

        __break(1u);
        sub_1C4419274();
        swift_once();
        sub_1C43FCEE8(v56, qword_1EDE2DE10);
        v46 = sub_1C4F00968();
        v47 = sub_1C4F01CF8();
        if (os_log_type_enabled(v46, v47))
        {
          *sub_1C43FCED0() = 0;
          sub_1C4402B90(&dword_1C43F8000, v48, v49, "Pipeline: Error while writing linked pairs to json.");
          sub_1C43FBE2C();
        }

LABEL_46:
        sub_1C44078AC();
        sub_1C4454270();

        sub_1C444B24C();
LABEL_10:
        sub_1C4409A94();

        __asm { BRAA            X2, X16 }
      }

      v24 = *(v21 + 8 * v28);
      ++v27;
      if (v24)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_42:
    sub_1C440F1BC();
    sub_1C448B734();
    if (v20)
    {

      sub_1C44078AC();
      sub_1C4454270();
      goto LABEL_9;
    }

LABEL_45:

    sub_1C4F01948();

    goto LABEL_46;
  }

  v38 = v19 & 0xC000000000000001;
  sub_1C4431590(v18, (v19 & 0xC000000000000001) == 0, v19);
  v39 = v0[49];
  if (v38)
  {
    v40 = MEMORY[0x1C6940F90](v18, v39);
  }

  else
  {
    v40 = *(v39 + 8 * v18 + 32);
  }

  v0[53] = v40;
  sub_1C4F01968();
  v42 = swift_task_alloc();
  v0[54] = v42;
  *v42 = v0;
  sub_1C442F328(v42);
  sub_1C4409A94();

  return sub_1C4A2DDE8();
}

uint64_t sub_1C4ACB8D4()
{
  sub_1C43FCF70();

  v0 = sub_1C4409E50();

  return v1(v0);
}

uint64_t sub_1C4ACB954()
{
  sub_1C43FCF70();

  sub_1C44078AC();
  sub_1C4454270();

  v0 = sub_1C4409E50();

  return v1(v0);
}

uint64_t sub_1C4ACB9F0()
{
  sub_1C43FBCD4();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = type metadata accessor for Source(0);
  sub_1C43FBD18(v4);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v5 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C4ACBA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  sub_1C44249B4();
  a17 = v19;
  a18 = v20;
  sub_1C4404D98();
  a16 = v18;
  sub_1C4461BB8(0, &qword_1EDDFE900, 0x1E695E000);
  if (static NSUserDefaults.isGraphStoreManuallyOverridden.getter())
  {
    if (qword_1EDDFD028 != -1)
    {
      sub_1C4419274();
      swift_once();
    }

    v21 = sub_1C4F00978();
    v22 = sub_1C442B738(v21, qword_1EDE2DE10);
    sub_1C4413658();
    v23 = sub_1C43FBC98();
    sub_1C443113C(v23, v24);
    v25 = sub_1C4F00968();
    v26 = sub_1C4F01CD8();
    v27 = sub_1C4402B64(v26);
    v28 = v18[6];
    if (v27)
    {
      v29 = v18[5];
      sub_1C43FD084();
      v30 = sub_1C44117BC();
      a9 = v30;
      *v22 = 136315138;
      sub_1C442BE64();
      sub_1C44760B0(v28, v29);
      v31 = *v29;
      v32 = v29[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C440FA8C();
      sub_1C4454270();
      v33 = sub_1C441D828(v31, v32, &a9);

      *(v22 + 4) = v33;
      sub_1C4402B48();
      _os_log_impl(v34, v35, v36, v37, v38, 0xCu);
      sub_1C440962C(v30);
      sub_1C43FEA20();
      sub_1C43FE9D4();
    }

    else
    {

      sub_1C440FA8C();
      sub_1C4454270();
    }

    sub_1C43FC1B0();
    sub_1C442642C();

    return v53(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10);
  }

  else
  {
    v40 = v18[3];
    v39 = v18[4];
    v41 = v18[2];
    v42 = swift_task_alloc();
    v18[7] = v42;
    v42[2] = v39;
    v42[3] = v41;
    v42[4] = v40;
    v43 = swift_task_alloc();
    v18[8] = v43;
    *v43 = v18;
    v43[1] = sub_1C4ACBCF0;
    sub_1C43FEAF8();
    sub_1C442642C();

    return MEMORY[0x1EEE6DE38](v44, v45, v46, v47, v48, v49, v50, v51);
  }
}

uint64_t sub_1C4ACBCF0()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v5 = *v1;
  sub_1C43FBDAC();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (!v0)
  {
  }

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}