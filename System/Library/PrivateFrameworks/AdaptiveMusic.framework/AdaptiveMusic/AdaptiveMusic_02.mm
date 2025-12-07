uint64_t Mood.Playlist.name.getter()
{
  v1 = *(v0 + 16);
  sub_23E7DC9D8();
  return v1;
}

uint64_t Mood.Playlist.subtitle.getter()
{
  v1 = *(v0 + 32);
  sub_23E7DC9D8();
  return v1;
}

uint64_t sub_23E7BCB44(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    for (i = (a2 + 56); ; i += 4)
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(v3 - 3) == *(i - 3) && *(v3 - 2) == *(i - 2);
      if (!v9 && (sub_23E7DD8E8() & 1) == 0)
      {
        break;
      }

      v10 = v5 == v7 && v6 == v8;
      if (!v10 && (sub_23E7DD8E8() & 1) == 0)
      {
        break;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_23E7BCC14()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x54746E65746E6F63;
  if (v1 != 5)
  {
    v3 = 0x6C75616665447369;
  }

  v4 = 0x736D657469;
  if (v1 != 3)
  {
    v4 = 0x4449646F6F6DLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 1701667182;
  if (v1 != 1)
  {
    v5 = 0x656C746974627573;
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

uint64_t sub_23E7BCCE0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23E7BF798(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23E7BCD14(uint64_t a1)
{
  v2 = sub_23E7BEDF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23E7BCD50(uint64_t a1)
{
  v2 = sub_23E7BEDF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Mood.Playlist.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3507F0, &qword_23E7E38B0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - v5;
  v7 = *(v1 + 16);
  v22 = *(v1 + 24);
  v23 = v7;
  v8 = *(v1 + 32);
  v20 = *(v1 + 40);
  v21 = v8;
  v19 = *(v1 + 48);
  LODWORD(v8) = *(v1 + 56);
  v17 = *(v1 + 57);
  v18 = v8;
  v9 = a1[3];
  v10 = a1;
  v12 = v11;
  __swift_project_boxed_opaque_existential_1(v10, v9);
  sub_23E7BEDF0();
  sub_23E7DDA08();
  LOBYTE(v26) = 0;
  v13 = v24;
  sub_23E7DD898();
  if (!v13)
  {
    v14 = v19;
    v15 = v18;
    LOBYTE(v26) = 1;
    sub_23E7DD898();
    LOBYTE(v26) = 2;
    sub_23E7DD898();
    v26 = v14;
    v25 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350800, &qword_23E7E38B8);
    sub_23E7BEE98(&qword_27E350808, sub_23E7BEE44, MEMORY[0x277D83948]);
    sub_23E7DD8B8();
    LOBYTE(v26) = v15;
    v25 = 4;
    sub_23E794FD0();
    sub_23E7DD8B8();
    LOBYTE(v26) = v17;
    v25 = 5;
    sub_23E797DE8();
    sub_23E7DD8B8();
    LOBYTE(v26) = 6;
    sub_23E7DD8A8();
  }

  return (*(v4 + 8))(v6, v12);
}

uint64_t Mood.Playlist.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350818, &qword_23E7E38C0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23E7BEDF0();
  sub_23E7DD9E8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v29[0]) = 0;
  v9 = sub_23E7DD828();
  v26 = v10;
  LOBYTE(v29[0]) = 1;
  *&v25 = sub_23E7DD828();
  *(&v25 + 1) = v11;
  LOBYTE(v29[0]) = 2;
  v24 = sub_23E7DD828();
  v13 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350800, &qword_23E7E38B8);
  LOBYTE(v27[0]) = 3;
  sub_23E7BEE98(&qword_27E350820, sub_23E7BEF10, MEMORY[0x277D83978]);
  sub_23E7DD848();
  v23 = v29[0];
  LOBYTE(v27[0]) = 4;
  sub_23E795358();
  v22 = 0;
  sub_23E7DD848();
  v33 = LOBYTE(v29[0]);
  LOBYTE(v27[0]) = 5;
  sub_23E798368();
  sub_23E7DD848();
  HIDWORD(v21) = LOBYTE(v29[0]);
  v34 = 6;
  v14 = sub_23E7DD838();
  (*(v6 + 8))(v8, v5);
  LODWORD(v22) = v14 & 1;
  v16 = *(&v25 + 1);
  v15 = v26;
  *&v27[0] = v9;
  *(&v27[0] + 1) = v26;
  v17 = v25;
  v27[1] = v25;
  *v28 = v24;
  *&v28[8] = v13;
  v18 = v23;
  *&v28[16] = v23;
  v28[24] = v33;
  v28[25] = BYTE4(v21);
  v28[26] = v22;
  v19 = v25;
  *a2 = v27[0];
  a2[1] = v19;
  a2[2] = *v28;
  *(a2 + 43) = *&v28[11];
  sub_23E794BD8(v27, v29);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v29[0] = v9;
  v29[1] = v15;
  v29[2] = v17;
  v29[3] = v16;
  v29[4] = v24;
  v29[5] = v13;
  v29[6] = v18;
  v30 = v33;
  v31 = BYTE4(v21);
  v32 = v22;
  return sub_23E7A4C68(v29);
}

uint64_t sub_23E7BD530@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  return sub_23E7DC9D8();
}

uint64_t Mood.Playlist.description.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = *v0;
  sub_23E7DC9D8();
  MEMORY[0x23EF12E00](8233, 0xE200000000000000);
  MEMORY[0x23EF12E00](v1, v2);
  return v4;
}

uint64_t sub_23E7BD5CC()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = *v0;
  sub_23E7DC9D8();
  MEMORY[0x23EF12E00](8233, 0xE200000000000000);
  MEMORY[0x23EF12E00](v1, v2);
  return v4;
}

uint64_t Mood.Playlist.artwork.getter(uint64_t a1)
{
  *(v2 + 144) = a1;
  v3 = sub_23E7DCE58();
  *(v2 + 152) = v3;
  *(v2 + 160) = *(v3 - 8);
  *(v2 + 168) = swift_task_alloc();
  v4 = sub_23E7DD258();
  *(v2 + 176) = v4;
  *(v2 + 184) = *(v4 - 8);
  *(v2 + 192) = swift_task_alloc();
  v5 = *(v1 + 57);
  v6 = *(v1 + 58);
  v7 = *(v1 + 16);
  if (v5 == 1)
  {
    *(v2 + 16) = *v1;
    *(v2 + 32) = v7;
    *(v2 + 48) = *(v1 + 32);
    v8 = *(v1 + 41);
    *(v2 + 73) = 1;
    *(v2 + 74) = v6;
    v13 = sub_23E7BA450;
    *(v2 + 57) = v8;
    v9 = swift_task_alloc();
    *(v2 + 224) = v9;
    *v9 = v2;
    v9[1] = sub_23E7BDAFC;
    v10 = v2 + 16;
  }

  else
  {
    *(v2 + 80) = *v1;
    *(v2 + 96) = v7;
    *(v2 + 112) = *(v1 + 32);
    *(v2 + 121) = *(v1 + 41);
    *(v2 + 137) = v5;
    *(v2 + 138) = v6;
    v13 = sub_23E7BAE00;
    v11 = swift_task_alloc();
    *(v2 + 200) = v11;
    *v11 = v2;
    v11[1] = sub_23E7BD83C;
    v10 = v2 + 80;
  }

  return v13(v10);
}

uint64_t sub_23E7BD83C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 208) = a1;
  *(v3 + 216) = v1;

  if (v1)
  {
    v4 = sub_23E7BDA8C;
  }

  else
  {
    v4 = sub_23E7BD950;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23E7BD950()
{
  v1 = v0[26];
  if (*(v1 + 16))
  {
    v3 = v0[23];
    v2 = v0[24];
    v4 = v0[22];
    (*(v3 + 16))(v2, v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v4);

    sub_23E7DD248();
    (*(v3 + 8))(v2, v4);
  }

  else
  {
    v5 = v0[18];

    v6 = sub_23E7DD208();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_23E7BDA8C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23E7BDAFC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 232) = a1;
  *(v3 + 240) = v1;

  if (v1)
  {
    v4 = sub_23E7BDD48;
  }

  else
  {
    v4 = sub_23E7BDC10;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23E7BDC10()
{
  v1 = v0[29];
  if (*(v1 + 16))
  {
    v3 = v0[20];
    v2 = v0[21];
    v4 = v0[19];
    (*(v3 + 16))(v2, v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v4);

    sub_23E7DCE38();
    (*(v3 + 8))(v2, v4);
  }

  else
  {
    v5 = v0[18];

    v6 = sub_23E7DD208();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_23E7BDD48()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t Mood.Playlist.PlayableItem.id.getter()
{
  v1 = *v0;
  sub_23E7DC9D8();
  return v1;
}

uint64_t Mood.Playlist.PlayableItem.name.getter()
{
  v1 = *(v0 + 16);
  sub_23E7DC9D8();
  return v1;
}

uint64_t static Mood.Playlist.PlayableItem.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_23E7DD8E8(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_23E7DD8E8();
    }
  }

  return result;
}

uint64_t sub_23E7BDEBC()
{
  if (*v0)
  {
    return 1701667182;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_23E7BDEE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_23E7DD8E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23E7DD8E8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_23E7BDFB8(uint64_t a1)
{
  v2 = sub_23E7BEF64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23E7BDFF4(uint64_t a1)
{
  v2 = sub_23E7BEF64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Mood.Playlist.PlayableItem.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350830, &qword_23E7E38D0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23E7BEF64();
  sub_23E7DDA08();
  v12 = 0;
  v8 = v10[3];
  sub_23E7DD898();
  if (!v8)
  {
    v11 = 1;
    sub_23E7DD898();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t Mood.Playlist.PlayableItem.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350840, &qword_23E7E38D8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23E7BEF64();
  sub_23E7DD9E8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v9 = sub_23E7DD828();
  v11 = v10;
  v17 = v9;
  v18 = 1;
  v12 = sub_23E7DD828();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;
  sub_23E7DC9D8();
  sub_23E7DC9D8();
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_23E7BE3F4(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_23E7DD8E8(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_23E7DD8E8();
    }
  }

  return result;
}

uint64_t Mood.Playlist.analyticsID.getter()
{
  if (*(v0 + 57) > 1u)
  {
    return 0x4D4F54535543;
  }

  v1 = *v0;
  sub_23E7DC9D8();
  return v1;
}

uint64_t sub_23E7BE4E8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3502A8, &qword_23E7E27E0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_23E7DCC98();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = sub_23E7DCA78();
  __swift_allocate_value_buffer(v5, qword_27E3507D8);
  __swift_project_value_buffer(v5, qword_27E3507D8);
  sub_23E7DCC88();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_23E7DCA68();
}

uint64_t static Mood.Playlist.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E34FB00 != -1)
  {
    swift_once();
  }

  v2 = sub_23E7DCA78();
  v3 = __swift_project_value_buffer(v2, qword_27E3507D8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Mood.Playlist.displayRepresentation.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350848, &qword_23E7E38E0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v13 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3502A8, &qword_23E7E27E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = sub_23E7DCC98();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = *(v0 + 57);
  sub_23E7DC9D8();
  sub_23E7DCC88();
  v10 = 1;
  (*(v8 + 56))(v6, 1, 1, v7);
  if (v9 >= 2)
  {
    sub_23E7DC978();
    v10 = 0;
  }

  v11 = sub_23E7DC988();
  (*(*(v11 - 8) + 56))(v3, v10, 1, v11);
  return sub_23E7DC998();
}

uint64_t sub_23E7BE938@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E34FB00 != -1)
  {
    swift_once();
  }

  v2 = sub_23E7DCA78();
  v3 = __swift_project_value_buffer(v2, qword_27E3507D8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_23E7BE9E0(uint64_t a1)
{
  v2 = sub_23E7AFFE0();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_23E7BEA30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_23E7A23AC;

  return MEMORY[0x28210C4A0](a1, a2, a3, a4);
}

uint64_t sub_23E7BEAF4(uint64_t a1)
{
  v2 = sub_23E7BF23C();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t Mood.Playlist.PlayableItem.description.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = *v0;
  sub_23E7DC9D8();
  MEMORY[0x23EF12E00](8233, 0xE200000000000000);
  MEMORY[0x23EF12E00](v1, v2);
  return v4;
}

uint64_t _s13AdaptiveMusic4MoodV8PlaylistV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v6 = a1[5];
  v5 = a1[6];
  v20 = *(a1 + 58);
  v21 = *(a1 + 57);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v23 = *(a2 + 56);
  v24 = *(a1 + 56);
  v22 = *(a2 + 57);
  v19 = *(a2 + 58);
  if (*a1 == *a2 && a1[1] == *(a2 + 8) || (sub_23E7DD8E8()) && (v2 == v7 && v4 == v8 || (sub_23E7DD8E8()) && (v3 == v9 && v6 == v10 || (sub_23E7DD8E8()) && (sub_23E7BCB44(v5, v11) & 1) != 0 && (sub_23E7A6C20(v24, v23))
  {
    v12 = 0xEA00000000006369;
    v13 = 0x73754D656C707061;
    if (v21)
    {
      v14 = v22;
      if (v21 == 1)
      {
        v15 = 0x646564616F6C7075;
        v16 = 0xED00006F69647541;
      }

      else
      {
        v15 = 0x7262694C72657375;
        v16 = 0xEB00000000797261;
      }
    }

    else
    {
      v15 = 0x73754D656C707061;
      v16 = 0xEA00000000006369;
      v14 = v22;
    }

    if (v14)
    {
      if (v14 == 1)
      {
        v13 = 0x646564616F6C7075;
        v12 = 0xED00006F69647541;
      }

      else
      {
        v13 = 0x7262694C72657375;
        v12 = 0xEB00000000797261;
      }
    }

    if (v15 == v13 && v16 == v12)
    {

      return v20 ^ v19 ^ 1u;
    }

    v17 = sub_23E7DD8E8();

    if (v17)
    {
      return v20 ^ v19 ^ 1u;
    }
  }

  return 0;
}

unint64_t sub_23E7BEDF0()
{
  result = qword_27E3507F8;
  if (!qword_27E3507F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3507F8);
  }

  return result;
}

unint64_t sub_23E7BEE44()
{
  result = qword_27E350810;
  if (!qword_27E350810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350810);
  }

  return result;
}

uint64_t sub_23E7BEE98(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E350800, &qword_23E7E38B8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23E7BEF10()
{
  result = qword_27E350828;
  if (!qword_27E350828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350828);
  }

  return result;
}

unint64_t sub_23E7BEF64()
{
  result = qword_27E350838;
  if (!qword_27E350838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350838);
  }

  return result;
}

unint64_t sub_23E7BEFC8()
{
  result = qword_27E350850;
  if (!qword_27E350850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350850);
  }

  return result;
}

unint64_t sub_23E7BF020()
{
  result = qword_27E350858;
  if (!qword_27E350858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350858);
  }

  return result;
}

unint64_t sub_23E7BF078()
{
  result = qword_27E350860;
  if (!qword_27E350860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350860);
  }

  return result;
}

unint64_t sub_23E7BF0D0()
{
  result = qword_27E350868;
  if (!qword_27E350868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350868);
  }

  return result;
}

unint64_t sub_23E7BF134()
{
  result = qword_27E350870;
  if (!qword_27E350870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350870);
  }

  return result;
}

unint64_t sub_23E7BF18C()
{
  result = qword_27E350878;
  if (!qword_27E350878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350878);
  }

  return result;
}

unint64_t sub_23E7BF1E4()
{
  result = qword_27E350880;
  if (!qword_27E350880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350880);
  }

  return result;
}

unint64_t sub_23E7BF23C()
{
  result = qword_27E350888;
  if (!qword_27E350888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350888);
  }

  return result;
}

unint64_t sub_23E7BF294()
{
  result = qword_27E350890;
  if (!qword_27E350890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E350898, &qword_23E7E3B80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350890);
  }

  return result;
}

unint64_t sub_23E7BF2FC()
{
  result = qword_27E3508A0;
  if (!qword_27E3508A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3508A0);
  }

  return result;
}

__n128 __swift_memcpy59_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 43) = *(a2 + 43);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_23E7BF36C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 59))
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

uint64_t sub_23E7BF3B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 58) = 0;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 59) = 1;
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

    *(result + 59) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s8PlaylistV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s8PlaylistV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23E7BF58C()
{
  result = qword_27E3508A8;
  if (!qword_27E3508A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3508A8);
  }

  return result;
}

unint64_t sub_23E7BF5E4()
{
  result = qword_27E3508B0;
  if (!qword_27E3508B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3508B0);
  }

  return result;
}

unint64_t sub_23E7BF63C()
{
  result = qword_27E3508B8;
  if (!qword_27E3508B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3508B8);
  }

  return result;
}

unint64_t sub_23E7BF694()
{
  result = qword_27E3508C0;
  if (!qword_27E3508C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3508C0);
  }

  return result;
}

unint64_t sub_23E7BF6EC()
{
  result = qword_27E3508C8;
  if (!qword_27E3508C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3508C8);
  }

  return result;
}

unint64_t sub_23E7BF744()
{
  result = qword_27E3508D0;
  if (!qword_27E3508D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3508D0);
  }

  return result;
}

uint64_t sub_23E7BF798(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_23E7DD8E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_23E7DD8E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_23E7DD8E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (sub_23E7DD8E8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4449646F6F6DLL && a2 == 0xE600000000000000 || (sub_23E7DD8E8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x54746E65746E6F63 && a2 == 0xEB00000000657079 || (sub_23E7DD8E8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6C75616665447369 && a2 == 0xE900000000000074)
  {

    return 6;
  }

  else
  {
    v6 = sub_23E7DD8E8();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_23E7BF9E4(unsigned __int8 a1)
{
  sub_23E7DD9A8();
  sub_23E7DD398();

  return sub_23E7DD9C8();
}

uint64_t sub_23E7BFB0C(uint64_t a1, unsigned __int8 a2)
{
  sub_23E7DD9A8();
  sub_23E7DD398();

  return sub_23E7DD9C8();
}

uint64_t sub_23E7BFC30@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3501F0, &unk_23E7E3F30);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Manifest(0);
  v29 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v31 = (&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = *a1;
  v13 = *(v4 + 16);
  v34[0] = *v4;
  v34[1] = v13;
  v34[2] = *(v4 + 32);
  v35 = *(v4 + 48);
  v33 = v34;
  v14 = sub_23E7C01A8(sub_23E7C54F8, v32, *&v34[0]);
  v15 = v3;
  v16 = v14[2];
  if (v16)
  {
    v25 = a2;
    *&v34[0] = MEMORY[0x277D84F90];
    v27 = v16;
    result = sub_23E7CB508(0, v16, 0);
    v18 = 0;
    v19 = *&v34[0];
    v20 = *(v4 + 24);
    v36[0] = *(v4 + 8);
    v36[1] = v20;
    v36[2] = *(v4 + 40);
    v28 = v14 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v26 = v14;
    do
    {
      if (v18 >= v14[2])
      {
        __break(1u);
        return result;
      }

      sub_23E7A6710(&v28[*(v8 + 72) * v18], v10, &qword_27E3501F0, &unk_23E7E3F30);
      v38 = v37;
      sub_23E7C36D0(v36, &v38, v31);
      if (v15)
      {

        sub_23E7996FC(v10, &qword_27E3501F0, &unk_23E7E3F30);
      }

      v30 = 0;
      sub_23E7996FC(v10, &qword_27E3501F0, &unk_23E7E3F30);
      *&v34[0] = v19;
      v22 = *(v19 + 16);
      v21 = *(v19 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_23E7CB508((v21 > 1), v22 + 1, 1);
        v19 = *&v34[0];
      }

      ++v18;
      *(v19 + 16) = v22 + 1;
      result = sub_23E7C5538(v31, v19 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v22);
      v14 = v26;
      v15 = v30;
    }

    while (v27 != v18);

    a2 = v25;
    if (!*(v19 + 16))
    {
      goto LABEL_13;
    }

LABEL_10:
    sub_23E798488(v19 + ((*(v29 + 80) + 32) & ~*(v29 + 80)), a2);
  }

  v19 = MEMORY[0x277D84F90];
  if (*(MEMORY[0x277D84F90] + 16))
  {
    goto LABEL_10;
  }

LABEL_13:

  sub_23E7C559C();
  swift_allocError();
  *v23 = 2;
  return swift_willThrow();
}

uint64_t sub_23E7C000C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 8);
    if (*(v5 + 16))
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_23E7DC9D8();
    goto LABEL_7;
  }

  v6 = sub_23E7ACCBC(MEMORY[0x277D84F90]);
  if (!*(v6 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  v9 = a1;
  v8 = *a1;
  v7 = v9[1];
  sub_23E7DC9D8();
  v10 = sub_23E7A352C(v8, v7);
  if (v11)
  {
    v12 = v10;
    v13 = *(v6 + 56);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3501F0, &unk_23E7E3F30);
    v15 = *(v14 - 8);
    sub_23E7A6710(v13 + *(v15 + 72) * v12, a3, &qword_27E3501F0, &unk_23E7E3F30);

    return (*(v15 + 56))(a3, 0, 1, v14);
  }

LABEL_7:

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3501F0, &unk_23E7E3F30);
  return (*(*(v17 - 8) + 56))(a3, 1, 1, v17);
}

void *sub_23E7C01A8(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v29 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350948, &qword_23E7E3FA0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3501F0, &unk_23E7E3F30);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v28 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v26 = &v23 - v13;
  v14 = *(a3 + 16);
  if (!v14)
  {
    return MEMORY[0x277D84F90];
  }

  v15 = *(type metadata accessor for ResponseData(0) - 8);
  v23 = v10;
  v16 = (v10 + 48);
  v17 = a3 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v18 = MEMORY[0x277D84F90];
  v27 = *(v15 + 72);
  v24 = v9;
  v25 = a1;
  while (1)
  {
    a1(v17);
    if (v3)
    {
      break;
    }

    if ((*v16)(v8, 1, v9) == 1)
    {
      sub_23E7996FC(v8, &qword_27E350948, &qword_23E7E3FA0);
    }

    else
    {
      v19 = v26;
      sub_23E7AE1C8(v8, v26, &qword_27E3501F0, &unk_23E7E3F30);
      sub_23E7AE1C8(v19, v28, &qword_27E3501F0, &unk_23E7E3F30);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_23E7D28B4(0, v18[2] + 1, 1, v18);
      }

      v21 = v18[2];
      v20 = v18[3];
      if (v21 >= v20 >> 1)
      {
        v18 = sub_23E7D28B4((v20 > 1), v21 + 1, 1, v18);
      }

      v18[2] = v21 + 1;
      sub_23E7AE1C8(v28, v18 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v21, &qword_27E3501F0, &unk_23E7E3F30);
      v9 = v24;
      a1 = v25;
    }

    v17 += v27;
    if (!--v14)
    {
      return v18;
    }
  }

  return v18;
}

uint64_t sub_23E7C04DC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350928, &qword_23E7E3F80);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v54 - v4;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350900, &qword_23E7E5780);
  v59 = *(v61 - 8);
  v6 = MEMORY[0x28223BE20](v61);
  v58 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v57 = &v54 - v8;
  v9 = *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3501F0, &unk_23E7E3F30) + 48));
  if (!v9)
  {
    return MEMORY[0x277D84F90];
  }

  if (!*(v9 + 16))
  {
    return MEMORY[0x277D84F90];
  }

  v10 = sub_23E7A352C(0xD00000000000001FLL, 0x800000023E7DE380);
  if ((v11 & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v56 = a1;
  v12 = *(*(v9 + 56) + 8 * v10);
  v13 = *(v12 + 16);
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v63 = MEMORY[0x277D84F90];
    sub_23E7DC9D8();
    sub_23E7CB568(0, v13, 0);
    v14 = v63;
    v15 = (v12 + 40);
    do
    {
      v16 = *(v15 - 1);
      v17 = *v15;
      v63 = v14;
      v19 = *(v14 + 16);
      v18 = *(v14 + 24);
      sub_23E7DC9D8();
      if (v19 >= v18 >> 1)
      {
        sub_23E7CB568((v18 > 1), v19 + 1, 1);
        v14 = v63;
      }

      *(v14 + 16) = v19 + 1;
      v20 = v14 + 16 * v19;
      *(v20 + 32) = v16;
      *(v20 + 40) = v17;
      v15 += 4;
      --v13;
    }

    while (v13);
  }

  v23 = sub_23E7DC9D8();
  v24 = sub_23E7C55F0(v23);

  v63 = v24;
  v25 = *(v14 + 16);
  if (!v25)
  {
    v28 = MEMORY[0x277D84F90];
    goto LABEL_27;
  }

  v26 = 0;
  v27 = v14 + 40;
  v28 = MEMORY[0x277D84F90];
  v55 = v14 + 40;
  while (2)
  {
    v60 = v28;
    v29 = (v27 + 16 * v26);
    v30 = v26;
    while (1)
    {
      if (v30 >= v25)
      {
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        return result;
      }

      v26 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        goto LABEL_46;
      }

      v32 = *(v29 - 1);
      v31 = *v29;
      v33 = v63;
      sub_23E7DC9D8();
      sub_23E7DC9D8();
      v34 = sub_23E7C21B8(v32, v31, v33);

      sub_23E7C51F8(v32, v31);

      if (v34)
      {
        break;
      }

      ++v30;
      v29 += 2;
      if (v26 == v25)
      {
        v28 = v60;
        goto LABEL_27;
      }
    }

    v35 = v60;
    result = swift_isUniquelyReferenced_nonNull_native();
    v62 = v35;
    if ((result & 1) == 0)
    {
      result = sub_23E7CB568(0, *(v35 + 16) + 1, 1);
      v35 = v62;
    }

    v27 = v55;
    v37 = *(v35 + 16);
    v36 = *(v35 + 24);
    if (v37 >= v36 >> 1)
    {
      result = sub_23E7CB568((v36 > 1), v37 + 1, 1);
      v35 = v62;
    }

    *(v35 + 16) = v37 + 1;
    v38 = v35 + 16 * v37;
    *(v38 + 32) = v32;
    *(v38 + 40) = v31;
    v28 = v35;
    if (v26 != v25)
    {
      continue;
    }

    break;
  }

LABEL_27:

  v60 = *(v28 + 16);
  if (v60)
  {
    v39 = 0;
    v40 = (v59 + 56);
    v41 = (v59 + 48);
    v42 = (v28 + 40);
    v21 = MEMORY[0x277D84F90];
    v43 = v56;
    while (1)
    {
      if (v39 >= *(v28 + 16))
      {
        goto LABEL_47;
      }

      if (*(v43 + 16))
      {
        v44 = v28;
        v45 = *(v42 - 1);
        v46 = *v42;
        sub_23E7DC9D8();
        v47 = sub_23E7A352C(v45, v46);
        if (v48)
        {
          sub_23E7A6710(*(v43 + 56) + *(v59 + 72) * v47, v5, &qword_27E350900, &qword_23E7E5780);
          v49 = 0;
        }

        else
        {
          v49 = 1;
        }

        v50 = v61;
        (*v40)(v5, v49, 1, v61);

        v28 = v44;
        if ((*v41)(v5, 1, v50) != 1)
        {
          v51 = v57;
          sub_23E7AE1C8(v5, v57, &qword_27E350900, &qword_23E7E5780);
          sub_23E7AE1C8(v51, v58, &qword_27E350900, &qword_23E7E5780);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v21 = sub_23E7D28FC(0, v21[2] + 1, 1, v21);
          }

          v53 = v21[2];
          v52 = v21[3];
          if (v53 >= v52 >> 1)
          {
            v21 = sub_23E7D28FC((v52 > 1), v53 + 1, 1, v21);
          }

          v21[2] = v53 + 1;
          result = sub_23E7AE1C8(v58, v21 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v53, &qword_27E350900, &qword_23E7E5780);
          v43 = v56;
          goto LABEL_31;
        }
      }

      else
      {
        (*v40)(v5, 1, 1, v61);
      }

      result = sub_23E7996FC(v5, &qword_27E350928, &qword_23E7E3F80);
LABEL_31:
      ++v39;
      v42 += 2;
      if (v60 == v39)
      {
        goto LABEL_44;
      }
    }
  }

  v21 = MEMORY[0x277D84F90];
LABEL_44:

  return v21;
}

uint64_t sub_23E7C0AA0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350940, &qword_23E7E3F98);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v54 - v4;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3508F0, &qword_23E7E57B0);
  v59 = *(v61 - 8);
  v6 = MEMORY[0x28223BE20](v61);
  v58 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v57 = &v54 - v8;
  v9 = *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3501F0, &unk_23E7E3F30) + 48));
  if (!v9)
  {
    return MEMORY[0x277D84F90];
  }

  if (!*(v9 + 16))
  {
    return MEMORY[0x277D84F90];
  }

  v10 = sub_23E7A352C(0xD000000000000022, 0x800000023E7DE3B0);
  if ((v11 & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v56 = a1;
  v12 = *(*(v9 + 56) + 8 * v10);
  v13 = *(v12 + 16);
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v63 = MEMORY[0x277D84F90];
    sub_23E7DC9D8();
    sub_23E7CB568(0, v13, 0);
    v14 = v63;
    v15 = (v12 + 40);
    do
    {
      v16 = *(v15 - 1);
      v17 = *v15;
      v63 = v14;
      v19 = *(v14 + 16);
      v18 = *(v14 + 24);
      sub_23E7DC9D8();
      if (v19 >= v18 >> 1)
      {
        sub_23E7CB568((v18 > 1), v19 + 1, 1);
        v14 = v63;
      }

      *(v14 + 16) = v19 + 1;
      v20 = v14 + 16 * v19;
      *(v20 + 32) = v16;
      *(v20 + 40) = v17;
      v15 += 4;
      --v13;
    }

    while (v13);
  }

  v23 = sub_23E7DC9D8();
  v24 = sub_23E7C55F0(v23);

  v63 = v24;
  v25 = *(v14 + 16);
  if (!v25)
  {
    v28 = MEMORY[0x277D84F90];
    goto LABEL_27;
  }

  v26 = 0;
  v27 = v14 + 40;
  v28 = MEMORY[0x277D84F90];
  v55 = v14 + 40;
  while (2)
  {
    v60 = v28;
    v29 = (v27 + 16 * v26);
    v30 = v26;
    while (1)
    {
      if (v30 >= v25)
      {
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        return result;
      }

      v26 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        goto LABEL_46;
      }

      v32 = *(v29 - 1);
      v31 = *v29;
      v33 = v63;
      sub_23E7DC9D8();
      sub_23E7DC9D8();
      v34 = sub_23E7C21B8(v32, v31, v33);

      sub_23E7C51F8(v32, v31);

      if (v34)
      {
        break;
      }

      ++v30;
      v29 += 2;
      if (v26 == v25)
      {
        v28 = v60;
        goto LABEL_27;
      }
    }

    v35 = v60;
    result = swift_isUniquelyReferenced_nonNull_native();
    v62 = v35;
    if ((result & 1) == 0)
    {
      result = sub_23E7CB568(0, *(v35 + 16) + 1, 1);
      v35 = v62;
    }

    v27 = v55;
    v37 = *(v35 + 16);
    v36 = *(v35 + 24);
    if (v37 >= v36 >> 1)
    {
      result = sub_23E7CB568((v36 > 1), v37 + 1, 1);
      v35 = v62;
    }

    *(v35 + 16) = v37 + 1;
    v38 = v35 + 16 * v37;
    *(v38 + 32) = v32;
    *(v38 + 40) = v31;
    v28 = v35;
    if (v26 != v25)
    {
      continue;
    }

    break;
  }

LABEL_27:

  v60 = *(v28 + 16);
  if (v60)
  {
    v39 = 0;
    v40 = (v59 + 56);
    v41 = (v59 + 48);
    v42 = (v28 + 40);
    v21 = MEMORY[0x277D84F90];
    v43 = v56;
    while (1)
    {
      if (v39 >= *(v28 + 16))
      {
        goto LABEL_47;
      }

      if (*(v43 + 16))
      {
        v44 = v28;
        v45 = *(v42 - 1);
        v46 = *v42;
        sub_23E7DC9D8();
        v47 = sub_23E7A352C(v45, v46);
        if (v48)
        {
          sub_23E7A6710(*(v43 + 56) + *(v59 + 72) * v47, v5, &qword_27E3508F0, &qword_23E7E57B0);
          v49 = 0;
        }

        else
        {
          v49 = 1;
        }

        v50 = v61;
        (*v40)(v5, v49, 1, v61);

        v28 = v44;
        if ((*v41)(v5, 1, v50) != 1)
        {
          v51 = v57;
          sub_23E7AE1C8(v5, v57, &qword_27E3508F0, &qword_23E7E57B0);
          sub_23E7AE1C8(v51, v58, &qword_27E3508F0, &qword_23E7E57B0);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v21 = sub_23E7D2920(0, v21[2] + 1, 1, v21);
          }

          v53 = v21[2];
          v52 = v21[3];
          if (v53 >= v52 >> 1)
          {
            v21 = sub_23E7D2920((v52 > 1), v53 + 1, 1, v21);
          }

          v21[2] = v53 + 1;
          result = sub_23E7AE1C8(v58, v21 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v53, &qword_27E3508F0, &qword_23E7E57B0);
          v43 = v56;
          goto LABEL_31;
        }
      }

      else
      {
        (*v40)(v5, 1, 1, v61);
      }

      result = sub_23E7996FC(v5, &qword_27E350940, &qword_23E7E3F98);
LABEL_31:
      ++v39;
      v42 += 2;
      if (v60 == v39)
      {
        goto LABEL_44;
      }
    }
  }

  v21 = MEMORY[0x277D84F90];
LABEL_44:

  return v21;
}

uint64_t sub_23E7C1064(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350918, &qword_23E7E3F70);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v54 - v4;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350910, &unk_23E7E3F60);
  v59 = *(v61 - 8);
  v6 = MEMORY[0x28223BE20](v61);
  v58 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v57 = &v54 - v8;
  v9 = *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350900, &qword_23E7E5780) + 48));
  if (!v9)
  {
    return MEMORY[0x277D84F90];
  }

  if (!*(v9 + 16))
  {
    return MEMORY[0x277D84F90];
  }

  v10 = sub_23E7A352C(0x7473696C79616C70, 0xE900000000000073);
  if ((v11 & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v56 = a1;
  v12 = *(*(v9 + 56) + 8 * v10);
  v13 = *(v12 + 16);
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v63 = MEMORY[0x277D84F90];
    sub_23E7DC9D8();
    sub_23E7CB568(0, v13, 0);
    v14 = v63;
    v15 = (v12 + 40);
    do
    {
      v16 = *(v15 - 1);
      v17 = *v15;
      v63 = v14;
      v19 = *(v14 + 16);
      v18 = *(v14 + 24);
      sub_23E7DC9D8();
      if (v19 >= v18 >> 1)
      {
        sub_23E7CB568((v18 > 1), v19 + 1, 1);
        v14 = v63;
      }

      *(v14 + 16) = v19 + 1;
      v20 = v14 + 16 * v19;
      *(v20 + 32) = v16;
      *(v20 + 40) = v17;
      v15 += 4;
      --v13;
    }

    while (v13);
  }

  v23 = sub_23E7DC9D8();
  v24 = sub_23E7C55F0(v23);

  v63 = v24;
  v25 = *(v14 + 16);
  if (!v25)
  {
    v28 = MEMORY[0x277D84F90];
    goto LABEL_27;
  }

  v26 = 0;
  v27 = v14 + 40;
  v28 = MEMORY[0x277D84F90];
  v55 = v14 + 40;
  while (2)
  {
    v60 = v28;
    v29 = (v27 + 16 * v26);
    v30 = v26;
    while (1)
    {
      if (v30 >= v25)
      {
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        return result;
      }

      v26 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        goto LABEL_46;
      }

      v32 = *(v29 - 1);
      v31 = *v29;
      v33 = v63;
      sub_23E7DC9D8();
      sub_23E7DC9D8();
      v34 = sub_23E7C21B8(v32, v31, v33);

      sub_23E7C51F8(v32, v31);

      if (v34)
      {
        break;
      }

      ++v30;
      v29 += 2;
      if (v26 == v25)
      {
        v28 = v60;
        goto LABEL_27;
      }
    }

    v35 = v60;
    result = swift_isUniquelyReferenced_nonNull_native();
    v62 = v35;
    if ((result & 1) == 0)
    {
      result = sub_23E7CB568(0, *(v35 + 16) + 1, 1);
      v35 = v62;
    }

    v27 = v55;
    v37 = *(v35 + 16);
    v36 = *(v35 + 24);
    if (v37 >= v36 >> 1)
    {
      result = sub_23E7CB568((v36 > 1), v37 + 1, 1);
      v35 = v62;
    }

    *(v35 + 16) = v37 + 1;
    v38 = v35 + 16 * v37;
    *(v38 + 32) = v32;
    *(v38 + 40) = v31;
    v28 = v35;
    if (v26 != v25)
    {
      continue;
    }

    break;
  }

LABEL_27:

  v60 = *(v28 + 16);
  if (v60)
  {
    v39 = 0;
    v40 = (v59 + 56);
    v41 = (v59 + 48);
    v42 = (v28 + 40);
    v21 = MEMORY[0x277D84F90];
    v43 = v56;
    while (1)
    {
      if (v39 >= *(v28 + 16))
      {
        goto LABEL_47;
      }

      if (*(v43 + 16))
      {
        v44 = v28;
        v45 = *(v42 - 1);
        v46 = *v42;
        sub_23E7DC9D8();
        v47 = sub_23E7A352C(v45, v46);
        if (v48)
        {
          sub_23E7A6710(*(v43 + 56) + *(v59 + 72) * v47, v5, &qword_27E350910, &unk_23E7E3F60);
          v49 = 0;
        }

        else
        {
          v49 = 1;
        }

        v50 = v61;
        (*v40)(v5, v49, 1, v61);

        v28 = v44;
        if ((*v41)(v5, 1, v50) != 1)
        {
          v51 = v57;
          sub_23E7AE1C8(v5, v57, &qword_27E350910, &unk_23E7E3F60);
          sub_23E7AE1C8(v51, v58, &qword_27E350910, &unk_23E7E3F60);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v21 = sub_23E7D2944(0, v21[2] + 1, 1, v21);
          }

          v53 = v21[2];
          v52 = v21[3];
          if (v53 >= v52 >> 1)
          {
            v21 = sub_23E7D2944((v52 > 1), v53 + 1, 1, v21);
          }

          v21[2] = v53 + 1;
          result = sub_23E7AE1C8(v58, v21 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v53, &qword_27E350910, &unk_23E7E3F60);
          v43 = v56;
          goto LABEL_31;
        }
      }

      else
      {
        (*v40)(v5, 1, 1, v61);
      }

      result = sub_23E7996FC(v5, &qword_27E350918, &qword_23E7E3F70);
LABEL_31:
      ++v39;
      v42 += 2;
      if (v60 == v39)
      {
        goto LABEL_44;
      }
    }
  }

  v21 = MEMORY[0x277D84F90];
LABEL_44:

  return v21;
}

uint64_t sub_23E7C1628(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350938, &qword_23E7E3F90);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v54 - v4;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350908, &qword_23E7E57A0);
  v59 = *(v61 - 8);
  v6 = MEMORY[0x28223BE20](v61);
  v58 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v57 = &v54 - v8;
  v9 = *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3508F0, &qword_23E7E57B0) + 48));
  if (!v9)
  {
    return MEMORY[0x277D84F90];
  }

  if (!*(v9 + 16))
  {
    return MEMORY[0x277D84F90];
  }

  v10 = sub_23E7A352C(0xD000000000000018, 0x800000023E7DE3E0);
  if ((v11 & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v56 = a1;
  v12 = *(*(v9 + 56) + 8 * v10);
  v13 = *(v12 + 16);
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v63 = MEMORY[0x277D84F90];
    sub_23E7DC9D8();
    sub_23E7CB568(0, v13, 0);
    v14 = v63;
    v15 = (v12 + 40);
    do
    {
      v16 = *(v15 - 1);
      v17 = *v15;
      v63 = v14;
      v19 = *(v14 + 16);
      v18 = *(v14 + 24);
      sub_23E7DC9D8();
      if (v19 >= v18 >> 1)
      {
        sub_23E7CB568((v18 > 1), v19 + 1, 1);
        v14 = v63;
      }

      *(v14 + 16) = v19 + 1;
      v20 = v14 + 16 * v19;
      *(v20 + 32) = v16;
      *(v20 + 40) = v17;
      v15 += 4;
      --v13;
    }

    while (v13);
  }

  v23 = sub_23E7DC9D8();
  v24 = sub_23E7C55F0(v23);

  v63 = v24;
  v25 = *(v14 + 16);
  if (!v25)
  {
    v28 = MEMORY[0x277D84F90];
    goto LABEL_27;
  }

  v26 = 0;
  v27 = v14 + 40;
  v28 = MEMORY[0x277D84F90];
  v55 = v14 + 40;
  while (2)
  {
    v60 = v28;
    v29 = (v27 + 16 * v26);
    v30 = v26;
    while (1)
    {
      if (v30 >= v25)
      {
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        return result;
      }

      v26 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        goto LABEL_46;
      }

      v32 = *(v29 - 1);
      v31 = *v29;
      v33 = v63;
      sub_23E7DC9D8();
      sub_23E7DC9D8();
      v34 = sub_23E7C21B8(v32, v31, v33);

      sub_23E7C51F8(v32, v31);

      if (v34)
      {
        break;
      }

      ++v30;
      v29 += 2;
      if (v26 == v25)
      {
        v28 = v60;
        goto LABEL_27;
      }
    }

    v35 = v60;
    result = swift_isUniquelyReferenced_nonNull_native();
    v62 = v35;
    if ((result & 1) == 0)
    {
      result = sub_23E7CB568(0, *(v35 + 16) + 1, 1);
      v35 = v62;
    }

    v27 = v55;
    v37 = *(v35 + 16);
    v36 = *(v35 + 24);
    if (v37 >= v36 >> 1)
    {
      result = sub_23E7CB568((v36 > 1), v37 + 1, 1);
      v35 = v62;
    }

    *(v35 + 16) = v37 + 1;
    v38 = v35 + 16 * v37;
    *(v38 + 32) = v32;
    *(v38 + 40) = v31;
    v28 = v35;
    if (v26 != v25)
    {
      continue;
    }

    break;
  }

LABEL_27:

  v60 = *(v28 + 16);
  if (v60)
  {
    v39 = 0;
    v40 = (v59 + 56);
    v41 = (v59 + 48);
    v42 = (v28 + 40);
    v21 = MEMORY[0x277D84F90];
    v43 = v56;
    while (1)
    {
      if (v39 >= *(v28 + 16))
      {
        goto LABEL_47;
      }

      if (*(v43 + 16))
      {
        v44 = v28;
        v45 = *(v42 - 1);
        v46 = *v42;
        sub_23E7DC9D8();
        v47 = sub_23E7A352C(v45, v46);
        if (v48)
        {
          sub_23E7A6710(*(v43 + 56) + *(v59 + 72) * v47, v5, &qword_27E350908, &qword_23E7E57A0);
          v49 = 0;
        }

        else
        {
          v49 = 1;
        }

        v50 = v61;
        (*v40)(v5, v49, 1, v61);

        v28 = v44;
        if ((*v41)(v5, 1, v50) != 1)
        {
          v51 = v57;
          sub_23E7AE1C8(v5, v57, &qword_27E350908, &qword_23E7E57A0);
          sub_23E7AE1C8(v51, v58, &qword_27E350908, &qword_23E7E57A0);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v21 = sub_23E7D2968(0, v21[2] + 1, 1, v21);
          }

          v53 = v21[2];
          v52 = v21[3];
          if (v53 >= v52 >> 1)
          {
            v21 = sub_23E7D2968((v52 > 1), v53 + 1, 1, v21);
          }

          v21[2] = v53 + 1;
          result = sub_23E7AE1C8(v58, v21 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v53, &qword_27E350908, &qword_23E7E57A0);
          v43 = v56;
          goto LABEL_31;
        }
      }

      else
      {
        (*v40)(v5, 1, 1, v61);
      }

      result = sub_23E7996FC(v5, &qword_27E350938, &qword_23E7E3F90);
LABEL_31:
      ++v39;
      v42 += 2;
      if (v60 == v39)
      {
        goto LABEL_44;
      }
    }
  }

  v21 = MEMORY[0x277D84F90];
LABEL_44:

  return v21;
}

uint64_t sub_23E7C1BEC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350930, &qword_23E7E3F88);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v54 - v4;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3508E0, &qword_23E7E5790);
  v59 = *(v61 - 8);
  v6 = MEMORY[0x28223BE20](v61);
  v58 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v57 = &v54 - v8;
  v9 = *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350908, &qword_23E7E57A0) + 48));
  if (!v9)
  {
    return MEMORY[0x277D84F90];
  }

  if (!*(v9 + 16))
  {
    return MEMORY[0x277D84F90];
  }

  v10 = sub_23E7A352C(0x646564616F6C7075, 0xEF736F696475612DLL);
  if ((v11 & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v56 = a1;
  v12 = *(*(v9 + 56) + 8 * v10);
  v13 = *(v12 + 16);
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v63 = MEMORY[0x277D84F90];
    sub_23E7DC9D8();
    sub_23E7CB568(0, v13, 0);
    v14 = v63;
    v15 = (v12 + 40);
    do
    {
      v16 = *(v15 - 1);
      v17 = *v15;
      v63 = v14;
      v19 = *(v14 + 16);
      v18 = *(v14 + 24);
      sub_23E7DC9D8();
      if (v19 >= v18 >> 1)
      {
        sub_23E7CB568((v18 > 1), v19 + 1, 1);
        v14 = v63;
      }

      *(v14 + 16) = v19 + 1;
      v20 = v14 + 16 * v19;
      *(v20 + 32) = v16;
      *(v20 + 40) = v17;
      v15 += 4;
      --v13;
    }

    while (v13);
  }

  v23 = sub_23E7DC9D8();
  v24 = sub_23E7C55F0(v23);

  v63 = v24;
  v25 = *(v14 + 16);
  if (!v25)
  {
    v28 = MEMORY[0x277D84F90];
    goto LABEL_27;
  }

  v26 = 0;
  v27 = v14 + 40;
  v28 = MEMORY[0x277D84F90];
  v55 = v14 + 40;
  while (2)
  {
    v60 = v28;
    v29 = (v27 + 16 * v26);
    v30 = v26;
    while (1)
    {
      if (v30 >= v25)
      {
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        return result;
      }

      v26 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        goto LABEL_46;
      }

      v32 = *(v29 - 1);
      v31 = *v29;
      v33 = v63;
      sub_23E7DC9D8();
      sub_23E7DC9D8();
      v34 = sub_23E7C21B8(v32, v31, v33);

      sub_23E7C51F8(v32, v31);

      if (v34)
      {
        break;
      }

      ++v30;
      v29 += 2;
      if (v26 == v25)
      {
        v28 = v60;
        goto LABEL_27;
      }
    }

    v35 = v60;
    result = swift_isUniquelyReferenced_nonNull_native();
    v62 = v35;
    if ((result & 1) == 0)
    {
      result = sub_23E7CB568(0, *(v35 + 16) + 1, 1);
      v35 = v62;
    }

    v27 = v55;
    v37 = *(v35 + 16);
    v36 = *(v35 + 24);
    if (v37 >= v36 >> 1)
    {
      result = sub_23E7CB568((v36 > 1), v37 + 1, 1);
      v35 = v62;
    }

    *(v35 + 16) = v37 + 1;
    v38 = v35 + 16 * v37;
    *(v38 + 32) = v32;
    *(v38 + 40) = v31;
    v28 = v35;
    if (v26 != v25)
    {
      continue;
    }

    break;
  }

LABEL_27:

  v60 = *(v28 + 16);
  if (v60)
  {
    v39 = 0;
    v40 = (v59 + 56);
    v41 = (v59 + 48);
    v42 = (v28 + 40);
    v21 = MEMORY[0x277D84F90];
    v43 = v56;
    while (1)
    {
      if (v39 >= *(v28 + 16))
      {
        goto LABEL_47;
      }

      if (*(v43 + 16))
      {
        v44 = v28;
        v45 = *(v42 - 1);
        v46 = *v42;
        sub_23E7DC9D8();
        v47 = sub_23E7A352C(v45, v46);
        if (v48)
        {
          sub_23E7A6710(*(v43 + 56) + *(v59 + 72) * v47, v5, &qword_27E3508E0, &qword_23E7E5790);
          v49 = 0;
        }

        else
        {
          v49 = 1;
        }

        v50 = v61;
        (*v40)(v5, v49, 1, v61);

        v28 = v44;
        if ((*v41)(v5, 1, v50) != 1)
        {
          v51 = v57;
          sub_23E7AE1C8(v5, v57, &qword_27E3508E0, &qword_23E7E5790);
          sub_23E7AE1C8(v51, v58, &qword_27E3508E0, &qword_23E7E5790);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v21 = sub_23E7D298C(0, v21[2] + 1, 1, v21);
          }

          v53 = v21[2];
          v52 = v21[3];
          if (v53 >= v52 >> 1)
          {
            v21 = sub_23E7D298C((v52 > 1), v53 + 1, 1, v21);
          }

          v21[2] = v53 + 1;
          result = sub_23E7AE1C8(v58, v21 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v53, &qword_27E3508E0, &qword_23E7E5790);
          v43 = v56;
          goto LABEL_31;
        }
      }

      else
      {
        (*v40)(v5, 1, 1, v61);
      }

      result = sub_23E7996FC(v5, &qword_27E350930, &qword_23E7E3F88);
LABEL_31:
      ++v39;
      v42 += 2;
      if (v60 == v39)
      {
        goto LABEL_44;
      }
    }
  }

  v21 = MEMORY[0x277D84F90];
LABEL_44:

  return v21;
}

uint64_t sub_23E7C21B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_23E7DD9A8();
  sub_23E7DD398();
  v6 = sub_23E7DD9C8();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_23E7DD8E8() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_23E7C22C4(uint64_t a1)
{
  sub_23E7DD398();
}

unint64_t sub_23E7C23DC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23E7C60D0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_23E7C240C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000073;
  v4 = 0x7473696C79616C70;
  v5 = 0x800000023E7DE3B0;
  v6 = 0xD000000000000022;
  v7 = 0xD000000000000018;
  v8 = 0x800000023E7DE3E0;
  if (v2 != 4)
  {
    v7 = 0x646564616F6C7075;
    v8 = 0xEF736F696475612DLL;
  }

  if (v2 != 3)
  {
    v6 = v7;
    v5 = v8;
  }

  if (v2 == 1)
  {
    v4 = 0xD00000000000001FLL;
    v3 = 0x800000023E7DE380;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000018;
    v3 = 0x800000023E7DE360;
  }

  if (*v1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_23E7C24EC()
{
  v1 = *v0;
  v2 = 0x7473696C79616C70;
  v3 = 0xD000000000000022;
  v4 = 0xD000000000000018;
  if (v1 != 4)
  {
    v4 = 0x646564616F6C7075;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 == 1)
  {
    v2 = 0xD00000000000001FLL;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000018;
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

unint64_t sub_23E7C25C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23E7C60D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23E7C25F0(uint64_t a1)
{
  v2 = sub_23E7C69AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23E7C262C(uint64_t a1)
{
  v2 = sub_23E7C69AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23E7C2668(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350B00, &qword_23E7E4488);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23E7C69AC();
  sub_23E7DDA08();
  v11 = *v3;
  HIBYTE(v10) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350A70, &qword_23E7E4458);
  sub_23E7C6E50();
  sub_23E7DD888();
  if (!v2)
  {
    v11 = v3[1];
    HIBYTE(v10) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350A88, &qword_23E7E4460);
    sub_23E7C6F08();
    sub_23E7DD888();
    v11 = v3[2];
    HIBYTE(v10) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350AA0, &qword_23E7E4468);
    sub_23E7C6FC0();
    sub_23E7DD888();
    v11 = v3[3];
    HIBYTE(v10) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350AB8, &qword_23E7E4470);
    sub_23E7C7078();
    sub_23E7DD888();
    v11 = v3[4];
    HIBYTE(v10) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350AD0, &qword_23E7E4478);
    sub_23E7C7130();
    sub_23E7DD888();
    v11 = v3[5];
    HIBYTE(v10) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350AE8, &qword_23E7E4480);
    sub_23E7C71E8();
    sub_23E7DD888();
  }

  return (*(v6 + 8))(v8, v5);
}

double sub_23E7C2974@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_23E7C611C(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t sub_23E7C29D0(uint64_t a1)
{
  v2 = sub_23E7C6958();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23E7C2A0C(uint64_t a1)
{
  v2 = sub_23E7C6958();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23E7C2A70(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350A50, &qword_23E7E4448);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23E7C6958();
  sub_23E7DDA08();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_23E7C2BCC@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_23E7DD7E8();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_23E7C2C24(uint64_t a1)
{
  v2 = sub_23E7C6588();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23E7C2C60(uint64_t a1)
{
  v2 = sub_23E7C6588();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23E7C2D2C(uint64_t a1)
{
  v2 = sub_23E7C6684();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23E7C2D68(uint64_t a1)
{
  v2 = sub_23E7C6684();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_23E7C2DE8@<X0>(void *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X6>, uint64_t *a6@<X8>)
{
  result = sub_23E7C672C(a1, a2, a3, a4, a5);
  if (!v6)
  {
    *a6 = result;
    a6[1] = v9;
  }

  return result;
}

uint64_t sub_23E7C2E6C()
{
  sub_23E7DD9A8();
  sub_23E7DD398();
  return sub_23E7DD9C8();
}

uint64_t sub_23E7C2EB8(uint64_t a1)
{
  sub_23E7DD9A8();
  sub_23E7DD398();
  return sub_23E7DD9C8();
}

uint64_t sub_23E7C2F0C@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_23E7DD7E8();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_23E7C2F5C@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_23E7DD7E8();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_23E7C2FB4(uint64_t a1)
{
  v2 = sub_23E7C66D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23E7C2FF0(uint64_t a1)
{
  v2 = sub_23E7C66D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23E7C30B8(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void), uint64_t a7)
{
  v16 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v15 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a6();
  sub_23E7DDA08();
  v17 = a2;
  v18 = v16;
  sub_23E7C6630();
  sub_23E7DD8B8();
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_23E7C3214(uint64_t a1)
{
  v2 = sub_23E7C68B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23E7C3250(uint64_t a1)
{
  v2 = sub_23E7C68B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23E7C3318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23E7DD8E8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23E7C33A0(uint64_t a1)
{
  v2 = sub_23E7C6904();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23E7C33DC(uint64_t a1)
{
  v2 = sub_23E7C6904();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23E7C3418@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350A38, &qword_23E7E4438);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23E7C6904();
  sub_23E7DD9E8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = sub_23E7DD828();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v9;
  a2[1] = v11;
  return result;
}

uint64_t sub_23E7C3594(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350A48, &qword_23E7E4440);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23E7C6904();
  sub_23E7DDA08();
  sub_23E7DD898();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_23E7C36D0@<X0>(void *a1@<X0>, unsigned __int8 *a2@<X1>, void *a3@<X8>)
{
  v134 = a3;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3508E0, &qword_23E7E5790);
  v150 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v171 = (v127 - v6);
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3508E8, &unk_23E7E3F40);
  v7 = MEMORY[0x28223BE20](v154);
  v167 = (v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v153 = v127 - v9;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3508F0, &qword_23E7E57B0);
  v141 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v149 = v127 - v10;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3508F8, &unk_23E7E3F50);
  v11 = MEMORY[0x28223BE20](v157);
  v165 = v127 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v156 = v127 - v13;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350900, &qword_23E7E5780);
  v143 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v144 = v127 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FE88, &qword_23E7E1D10);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v127 - v16;
  v18 = sub_23E7DCCF8();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = v127 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = *a2;
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3501F0, &unk_23E7E3F30) + 36);
  v135 = v3;
  sub_23E7A6710(v3 + v22, v17, &qword_27E34FE88, &qword_23E7E1D10);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_23E7996FC(v17, &qword_27E34FE88, &qword_23E7E1D10);
    sub_23E7C559C();
    swift_allocError();
    *v23 = 1;
    return swift_willThrow();
  }

  v25 = *(v19 + 32);
  v130 = v19 + 32;
  v129 = v25;
  v25(v21, v17, v18);
  v26 = a1[1];
  v27 = MEMORY[0x277D84F90];
  v147 = a1;
  v132 = v18;
  v131 = v21;
  v128 = v19;
  if (v26)
  {
    v28 = sub_23E7DC9D8();
    v29 = sub_23E7C04DC(v28);
    v30 = *(v29 + 16);
    if (v30)
    {
      v127[1] = v28;
      v174 = MEMORY[0x277D84F90];
      v137 = v30;
      sub_23E7CB588(0, v30, 0);
      v31 = 0;
      v32 = v174;
      v139 = v29 + ((*(v143 + 80) + 32) & ~*(v143 + 80));
      v155 = xmmword_23E7E1B90;
      v33 = v165;
      v138 = v29;
      while (v31 < *(v29 + 16))
      {
        v148 = v32;
        v34 = *(v143 + 72);
        v146 = v31;
        v35 = v144;
        sub_23E7A6710(v139 + v34 * v31, v144, &qword_27E350900, &qword_23E7E5780);
        v36 = (v35 + *(v142 + 44));
        v37 = v36[1];
        if (!v37)
        {
          goto LABEL_75;
        }

        v145 = *v36;
        v152 = v37;
        sub_23E7DC9D8();
        sub_23E7DC9D8();
        v38 = sub_23E7DD7E8();

        if (v38 >= 5)
        {

          sub_23E7C559C();
          swift_allocError();
          *v66 = 0;
          swift_willThrow();
          sub_23E7996FC(v35, &qword_27E350900, &qword_23E7E5780);

          return (*(v128 + 8))(v131, v132);
        }

        LOBYTE(v173) = v38;
        v166 = sub_23E7C5688(&v173);
        v40 = v39;
        if (v147[2])
        {
          v41 = sub_23E7DC9D8();
          v42 = sub_23E7C1064(v41);
          v43 = *(v42 + 16);
          if (v43)
          {
            v136 = v41;
            v173 = MEMORY[0x277D84F90];
            sub_23E7CB5A8(0, v43, 0);
            v44 = v173;
            v164 = *(v42 + 16);
            v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350910, &unk_23E7E3F60);
            v46 = 0;
            v159 = *(v45 - 8);
            v160 = v45;
            v158 = v42 + ((*(v159 + 80) + 32) & ~*(v159 + 80));
            v162 = v42;
            v163 = v38;
            v161 = v43;
            while (v164 != v46)
            {
              if (v46 >= *(v42 + 16))
              {
                goto LABEL_70;
              }

              v47 = v40;
              v48 = v44;
              v49 = v157;
              v50 = *(v157 + 48);
              v51 = v156;
              sub_23E7A6710(v158 + *(v159 + 72) * v46, &v156[v50], &qword_27E350910, &unk_23E7E3F60);
              *v33 = v46;
              v52 = (v33 + *(v49 + 48));
              sub_23E7AE1C8(&v51[v50], v52, &qword_27E350910, &unk_23E7E3F60);
              v53 = (v52 + *(v160 + 44));
              v54 = v53[1];
              if (!v54)
              {
                goto LABEL_75;
              }

              v55 = *v52;
              v38 = v52[1];
              v56 = *v53;
              LODWORD(v170) = v46 == 0;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350048, &qword_23E7E1E10);
              v57 = swift_allocObject();
              *(v57 + 16) = v155;
              v168 = v56;
              v169 = v55;
              *(v57 + 32) = v55;
              *(v57 + 40) = v38;
              *(v57 + 48) = v56;
              *(v57 + 56) = v54;
              swift_bridgeObjectRetain_n();
              swift_bridgeObjectRetain_n();
              v58 = v47;
              sub_23E7DC9D8();
              sub_23E7996FC(v33, &unk_27E3508F8, &unk_23E7E3F50);
              v44 = v48;
              v173 = v48;
              v59 = *(v48 + 16);
              v60 = *(v44 + 24);
              if (v59 >= v60 >> 1)
              {
                sub_23E7CB5A8((v60 > 1), v59 + 1, 1);
                v44 = v173;
              }

              ++v46;
              *(v44 + 16) = v59 + 1;
              v61 = v44 + (v59 << 6);
              v62 = v168;
              *(v61 + 32) = v169;
              *(v61 + 40) = v38;
              *(v61 + 48) = v62;
              *(v61 + 56) = v54;
              v33 = v165;
              *(v61 + 64) = v166;
              *(v61 + 72) = v47;
              *(v61 + 80) = v57;
              v42 = v162;
              LOBYTE(v38) = v163;
              *(v61 + 88) = v163;
              *(v61 + 90) = v170;
              v40 = v58;
              if (v161 == v46)
              {

                v35 = v144;
                goto LABEL_22;
              }
            }

            __break(1u);
LABEL_70:
            __break(1u);
LABEL_71:
            __break(1u);
LABEL_72:
            __break(1u);
            break;
          }
        }

        v44 = MEMORY[0x277D84F90];
LABEL_22:
        sub_23E7996FC(v35, &qword_27E350900, &qword_23E7E5780);
        v32 = v148;
        v174 = v148;
        v64 = *(v148 + 16);
        v63 = *(v148 + 24);
        if (v64 >= v63 >> 1)
        {
          sub_23E7CB588((v63 > 1), v64 + 1, 1);
          v32 = v174;
        }

        *(v32 + 16) = v64 + 1;
        v65 = v32 + 32 * v64;
        *(v65 + 32) = v38;
        v31 = v146 + 1;
        *(v65 + 40) = v145;
        *(v65 + 48) = v152;
        *(v65 + 56) = v44;
        v29 = v138;
        if (v31 == v137)
        {
          v67 = v32;

          v27 = v67;
          goto LABEL_28;
        }
      }

      __break(1u);
      goto LABEL_74;
    }

    v27 = MEMORY[0x277D84F90];
LABEL_28:
    a1 = v147;
  }

  v148 = v27;
  v68 = MEMORY[0x277D84F90];
  if (!a1[3])
  {
LABEL_68:
    v124 = *v135;
    v123 = v135[1];
    v125 = type metadata accessor for Manifest(0);
    v126 = v134;
    v129(v134 + v125[5], v131, v132);
    *v126 = v124;
    v126[1] = v123;
    *(v126 + v125[6]) = v133;
    *(v126 + v125[7]) = v148;
    *(v126 + v125[8]) = v68;
    return sub_23E7DC9D8();
  }

  v69 = sub_23E7DC9D8();
  v70 = sub_23E7C0AA0(v69);
  v71 = *(v70 + 16);
  if (!v71)
  {
LABEL_67:

    goto LABEL_68;
  }

  v136 = v69;
  v174 = v68;
  v138 = v71;
  sub_23E7CB588(0, v71, 0);
  v72 = 0;
  v73 = v174;
  v142 = v70 + ((*(v141 + 80) + 32) & ~*(v141 + 80));
  v139 = v70;
  while (v72 < *(v70 + 16))
  {
    v146 = v73;
    v74 = *(v141 + 72);
    v144 = v72;
    v75 = v149;
    sub_23E7A6710(v142 + v74 * v72, v149, &qword_27E3508F0, &qword_23E7E57B0);
    v76 = (v75 + *(v140 + 44));
    v77 = v76[1];
    if (v77)
    {
      v143 = *v76;
      v145 = v77;
    }

    else
    {
      v143 = 0;
      v145 = 0xE000000000000000;
    }

    sub_23E7DC9D8();
    sub_23E7DC9D8();
    v78 = sub_23E7DD7E8();

    if (v78 > 4)
    {

      sub_23E7C559C();
      swift_allocError();
      *v122 = 0;
      swift_willThrow();
      sub_23E7996FC(v149, &qword_27E3508F0, &qword_23E7E57B0);

      (*(v128 + 8))(v131, v132);
    }

    LOBYTE(v173) = v78;
    v165 = sub_23E7C5688(&v173);
    if (v147[4])
    {
      v164 = v79;
      v80 = sub_23E7DC9D8();
      v81 = sub_23E7C1628(v80);
      v82 = *(v81 + 16);
      if (v82)
      {
        v137 = v80;
        v173 = v68;
        sub_23E7CB5A8(0, v82, 0);
        v163 = *(v81 + 16);
        v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350908, &qword_23E7E57A0);
        v84 = 0;
        v158 = *(v83 - 8);
        v159 = v83;
        v157 = v81 + ((*(v158 + 80) + 32) & ~*(v158 + 80));
        v85 = v173;
        v166 = v147[5];
        v161 = v81;
        v162 = v78;
        v160 = v82;
        while (v84 != v163)
        {
          if (v84 >= *(v81 + 16))
          {
            goto LABEL_72;
          }

          v168 = v85;
          v86 = v154;
          v87 = *(v154 + 48);
          v88 = v153;
          sub_23E7A6710(v157 + *(v158 + 72) * v84, &v153[v87], &qword_27E350908, &qword_23E7E57A0);
          v89 = v167;
          *v167 = v84;
          v90 = &v88[v87];
          v91 = (v89 + *(v86 + 48));
          sub_23E7AE1C8(v90, v91, &qword_27E350908, &qword_23E7E57A0);
          if (v166)
          {
            v92 = sub_23E7DC9D8();
            v93 = sub_23E7C1BEC(v92);
            v94 = *(v93 + 16);
            if (v94)
            {
              *&v155 = v91;
              v156 = v84;
              v172 = v68;
              v95 = v93;
              sub_23E7CB5C8(0, v94, 0);
              v68 = v172;
              v96 = (*(v150 + 80) + 32) & ~*(v150 + 80);
              v152 = v95;
              v97 = v95 + v96;
              v169 = *(v150 + 72);
              v98 = v151;
              do
              {
                v99 = v171;
                sub_23E7A6710(v97, v171, &qword_27E3508E0, &qword_23E7E5790);
                v100 = (v99 + *(v98 + 44));
                v101 = v100[1];
                if (v101)
                {
                  v170 = *v100;
                  v102 = v101;
                }

                else
                {
                  v170 = 0;
                  v102 = 0xE000000000000000;
                }

                v103 = v171;
                v105 = *v171;
                v104 = v171[1];
                sub_23E7DC9D8();
                sub_23E7DC9D8();
                sub_23E7996FC(v103, &qword_27E3508E0, &qword_23E7E5790);
                v172 = v68;
                v107 = *(v68 + 16);
                v106 = *(v68 + 24);
                if (v107 >= v106 >> 1)
                {
                  sub_23E7CB5C8((v106 > 1), v107 + 1, 1);
                  v98 = v151;
                  v68 = v172;
                }

                *(v68 + 16) = v107 + 1;
                v108 = (v68 + 32 * v107);
                v108[4] = v105;
                v108[5] = v104;
                v108[6] = v170;
                v108[7] = v102;
                v97 += v169;
                --v94;
              }

              while (v94);

              v84 = v156;
              v91 = v155;
            }

            else
            {
            }
          }

          v109 = (v91 + *(v159 + 44));
          v110 = v109[1];
          v111 = v164;
          if (!v110)
          {
            goto LABEL_75;
          }

          v113 = *v91;
          v112 = v91[1];
          v114 = *v109;
          LODWORD(v170) = v84 == 0;
          sub_23E7DC9D8();
          sub_23E7DC9D8();
          sub_23E7DC9D8();
          sub_23E7996FC(v167, &unk_27E3508E8, &unk_23E7E3F40);
          v85 = v168;
          v173 = v168;
          v116 = *(v168 + 16);
          v115 = *(v168 + 24);
          if (v116 >= v115 >> 1)
          {
            sub_23E7CB5A8((v115 > 1), v116 + 1, 1);
            v111 = v164;
            v85 = v173;
          }

          ++v84;
          *(v85 + 16) = v116 + 1;
          v117 = v85 + (v116 << 6);
          *(v117 + 32) = v113;
          *(v117 + 40) = v112;
          *(v117 + 48) = v114;
          *(v117 + 56) = v110;
          *(v117 + 64) = v165;
          *(v117 + 72) = v111;
          *(v117 + 80) = v68;
          v81 = v161;
          LOBYTE(v78) = v162;
          *(v117 + 88) = v162;
          *(v117 + 89) = 1;
          *(v117 + 90) = v170;
          v68 = MEMORY[0x277D84F90];
          if (v84 == v160)
          {
            v118 = v85;

            goto LABEL_61;
          }
        }

        goto LABEL_71;
      }
    }

    v118 = v68;
LABEL_61:
    sub_23E7996FC(v149, &qword_27E3508F0, &qword_23E7E57B0);
    v73 = v146;
    v174 = v146;
    v120 = *(v146 + 16);
    v119 = *(v146 + 24);
    if (v120 >= v119 >> 1)
    {
      sub_23E7CB588((v119 > 1), v120 + 1, 1);
      v73 = v174;
    }

    *(v73 + 16) = v120 + 1;
    v121 = v73 + 32 * v120;
    *(v121 + 32) = v78;
    v72 = v144 + 1;
    *(v121 + 40) = v143;
    *(v121 + 48) = v145;
    *(v121 + 56) = v118;
    v70 = v139;
    if (v72 == v138)
    {
      v68 = v73;
      goto LABEL_67;
    }
  }

LABEL_74:
  __break(1u);
LABEL_75:
  result = sub_23E7DD788();
  __break(1u);
  return result;
}

uint64_t sub_23E7C4934(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350920, &qword_23E7E3F78);
  result = sub_23E7DD708();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_23E7DD9A8();
      sub_23E7DD398();
      result = sub_23E7DD9C8();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_23E7C4B94(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_23E7DD9A8();
  sub_23E7DD398();
  v8 = sub_23E7DD9C8();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_23E7DD8E8() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;
    sub_23E7DC9D8();
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_23E7DC9D8();
    sub_23E7C4CE4(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_23E7C4CE4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_23E7C4934(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_23E7C4E64();
      goto LABEL_16;
    }

    sub_23E7C4FC0(v8 + 1);
  }

  v10 = *v4;
  sub_23E7DD9A8();
  sub_23E7DD398();
  result = sub_23E7DD9C8();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_23E7DD8E8();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_23E7DD928();
  __break(1u);
  return result;
}

void *sub_23E7C4E64()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350920, &qword_23E7E3F78);
  v2 = *v0;
  v3 = sub_23E7DD6F8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
        result = sub_23E7DC9D8();
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

      v16 = *(v2 + 56 + 8 * v8);
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

  return result;
}

uint64_t sub_23E7C4FC0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350920, &qword_23E7E3F78);
  result = sub_23E7DD708();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_23E7DD9A8();
      sub_23E7DC9D8();
      sub_23E7DD398();
      result = sub_23E7DD9C8();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_23E7C51F8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_23E7DD9A8();
  sub_23E7DD398();
  v6 = sub_23E7DD9C8();
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
    if (v11 || (sub_23E7DD8E8() & 1) != 0)
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
    sub_23E7C4E64();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_23E7C5334(v8);
  *v2 = v16;
  return v12;
}

unint64_t sub_23E7C5334(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    sub_23E7DC9E8();
    v8 = sub_23E7DD6B8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_23E7DD9A8();
        sub_23E7DC9D8();
        sub_23E7DD398();
        v10 = sub_23E7DD9C8();

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
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
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

  return result;
}

uint64_t sub_23E7C54F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v3 + 16);
  v6[0] = *v3;
  v6[1] = v4;
  v6[2] = *(v3 + 32);
  v7 = *(v3 + 48);
  return sub_23E7C000C(a1, v6, a2);
}

uint64_t sub_23E7C5538(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Manifest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23E7C559C()
{
  result = qword_27E3508D8;
  if (!qword_27E3508D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3508D8);
  }

  return result;
}

uint64_t sub_23E7C55F0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x23EF12FD0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      sub_23E7DC9D8();
      sub_23E7C4B94(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_23E7C5688(_BYTE *a1)
{
  v2 = sub_23E7DCC98();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = *a1;
  if (v3 < 4)
  {
    sub_23E7DCC88();
    return sub_23E7DD348();
  }

  v4 = [objc_opt_self() mainBundle];
  v5 = [v4 localizedInfoDictionary];

  if (v5)
  {
    v6 = sub_23E7DD2A8();

    if (*(v6 + 16) && (v7 = sub_23E7A352C(0xD000000000000013, 0x800000023E7DEAF0), (v8 & 1) != 0))
    {
      sub_23E7A6134(*(v6 + 56) + 32 * v7, v11);

      if (swift_dynamicCast())
      {
        return v10;
      }
    }

    else
    {
    }
  }

  return 0x20746E6569626D41;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_23E7C58EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_23E7C5934(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_23E7C59A4(uint64_t *a1, unsigned int a2)
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

uint64_t sub_23E7C5A00(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23E7C5A74()
{
  result = qword_27E350950;
  if (!qword_27E350950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350950);
  }

  return result;
}

unint64_t sub_23E7C5AF4()
{
  result = qword_27E350958;
  if (!qword_27E350958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350958);
  }

  return result;
}

unint64_t sub_23E7C5B48()
{
  result = qword_27E350960;
  if (!qword_27E350960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350960);
  }

  return result;
}

unint64_t sub_23E7C5BC8()
{
  result = qword_27E350968;
  if (!qword_27E350968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350968);
  }

  return result;
}

unint64_t sub_23E7C5C1C()
{
  result = qword_27E350970;
  if (!qword_27E350970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350970);
  }

  return result;
}

unint64_t sub_23E7C5C9C()
{
  result = qword_27E350978;
  if (!qword_27E350978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350978);
  }

  return result;
}

unint64_t sub_23E7C5CF0()
{
  result = qword_27E350980;
  if (!qword_27E350980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350980);
  }

  return result;
}

unint64_t sub_23E7C5D70()
{
  result = qword_27E350988;
  if (!qword_27E350988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350988);
  }

  return result;
}

unint64_t sub_23E7C5DC4()
{
  result = qword_27E350990;
  if (!qword_27E350990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350990);
  }

  return result;
}

unint64_t sub_23E7C5E44()
{
  result = qword_27E350998;
  if (!qword_27E350998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350998);
  }

  return result;
}

unint64_t sub_23E7C5E98()
{
  result = qword_27E3509A0;
  if (!qword_27E3509A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3509A0);
  }

  return result;
}

unint64_t sub_23E7C5F18()
{
  result = qword_27E3509A8;
  if (!qword_27E3509A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3509A8);
  }

  return result;
}

unint64_t sub_23E7C5F6C()
{
  result = qword_27E3509B0;
  if (!qword_27E3509B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3509B0);
  }

  return result;
}

uint64_t sub_23E7C5FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_23E7C6028()
{
  result = qword_27E3509B8;
  if (!qword_27E3509B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3509B8);
  }

  return result;
}

unint64_t sub_23E7C607C()
{
  result = qword_27E3509C0;
  if (!qword_27E3509C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3509C0);
  }

  return result;
}

unint64_t sub_23E7C60D0(uint64_t a1, uint64_t a2)
{
  v2 = sub_23E7DD7E8();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_23E7C611C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350A60, &qword_23E7E4450);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23E7C69AC();
  sub_23E7DD9E8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350A70, &qword_23E7E4458);
  v20 = 0;
  sub_23E7C6A00();
  sub_23E7DD818();
  v9 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350A88, &qword_23E7E4460);
  v20 = 1;
  sub_23E7C6AB8();
  sub_23E7DD818();
  v10 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350AA0, &qword_23E7E4468);
  v20 = 2;
  sub_23E7C6B70();
  sub_23E7DD818();
  v19 = v10;
  v11 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350AB8, &qword_23E7E4470);
  v20 = 3;
  sub_23E7C6C28();
  sub_23E7DD818();
  v18 = v11;
  v12 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350AD0, &qword_23E7E4478);
  v20 = 4;
  sub_23E7C6CE0();
  sub_23E7DD818();
  v17 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350AE8, &qword_23E7E4480);
  v20 = 5;
  sub_23E7C6D98();
  sub_23E7DD818();
  (*(v6 + 8))(v8, v5);
  v13 = v19;
  v14 = v21;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v9;
  a2[1] = v13;
  v16 = v17;
  a2[2] = v18;
  a2[3] = v12;
  a2[4] = v16;
  a2[5] = v14;
  return result;
}

unint64_t sub_23E7C6588()
{
  result = qword_27E3509D0;
  if (!qword_27E3509D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3509D0);
  }

  return result;
}

unint64_t sub_23E7C65DC()
{
  result = qword_27E3509D8;
  if (!qword_27E3509D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3509D8);
  }

  return result;
}

unint64_t sub_23E7C6630()
{
  result = qword_27E3509E8;
  if (!qword_27E3509E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3509E8);
  }

  return result;
}

unint64_t sub_23E7C6684()
{
  result = qword_27E3509F8;
  if (!qword_27E3509F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3509F8);
  }

  return result;
}

unint64_t sub_23E7C66D8()
{
  result = qword_27E350A10;
  if (!qword_27E350A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350A10);
  }

  return result;
}

void *sub_23E7C672C(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v15 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  v12 = v11;
  sub_23E7DD9E8();
  if (v5)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    sub_23E7C65DC();
    sub_23E7DD848();
    (*(v15 + 8))(v10, v8);
    v12 = v14;
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v12;
}

unint64_t sub_23E7C68B0()
{
  result = qword_27E350A28;
  if (!qword_27E350A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350A28);
  }

  return result;
}

unint64_t sub_23E7C6904()
{
  result = qword_27E350A40;
  if (!qword_27E350A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350A40);
  }

  return result;
}

unint64_t sub_23E7C6958()
{
  result = qword_27E350A58;
  if (!qword_27E350A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350A58);
  }

  return result;
}

unint64_t sub_23E7C69AC()
{
  result = qword_27E350A68;
  if (!qword_27E350A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350A68);
  }

  return result;
}

unint64_t sub_23E7C6A00()
{
  result = qword_27E350A78;
  if (!qword_27E350A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E350A70, &qword_23E7E4458);
    sub_23E7AF328(&qword_27E350A80, &qword_27E3501F0, &unk_23E7E3F30, &unk_23E7E2B68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350A78);
  }

  return result;
}

unint64_t sub_23E7C6AB8()
{
  result = qword_27E350A90;
  if (!qword_27E350A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E350A88, &qword_23E7E4460);
    sub_23E7AF328(&qword_27E350A98, &qword_27E350900, &qword_23E7E5780, &unk_23E7E2B68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350A90);
  }

  return result;
}

unint64_t sub_23E7C6B70()
{
  result = qword_27E350AA8;
  if (!qword_27E350AA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E350AA0, &qword_23E7E4468);
    sub_23E7AF328(&qword_27E350AB0, &qword_27E350910, &unk_23E7E3F60, &unk_23E7E2B68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350AA8);
  }

  return result;
}

unint64_t sub_23E7C6C28()
{
  result = qword_27E350AC0;
  if (!qword_27E350AC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E350AB8, &qword_23E7E4470);
    sub_23E7AF328(&qword_27E350AC8, &qword_27E3508F0, &qword_23E7E57B0, &unk_23E7E2B68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350AC0);
  }

  return result;
}

unint64_t sub_23E7C6CE0()
{
  result = qword_27E350AD8;
  if (!qword_27E350AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E350AD0, &qword_23E7E4478);
    sub_23E7AF328(&qword_27E350AE0, &qword_27E350908, &qword_23E7E57A0, &unk_23E7E2B68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350AD8);
  }

  return result;
}

unint64_t sub_23E7C6D98()
{
  result = qword_27E350AF0;
  if (!qword_27E350AF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E350AE8, &qword_23E7E4480);
    sub_23E7AF328(&qword_27E350AF8, &qword_27E3508E0, &qword_23E7E5790, &unk_23E7E2B68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350AF0);
  }

  return result;
}

unint64_t sub_23E7C6E50()
{
  result = qword_27E350B08;
  if (!qword_27E350B08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E350A70, &qword_23E7E4458);
    sub_23E7AF328(&qword_27E350B10, &qword_27E3501F0, &unk_23E7E3F30, &unk_23E7E2B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350B08);
  }

  return result;
}

unint64_t sub_23E7C6F08()
{
  result = qword_27E350B18;
  if (!qword_27E350B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E350A88, &qword_23E7E4460);
    sub_23E7AF328(&qword_27E350B20, &qword_27E350900, &qword_23E7E5780, &unk_23E7E2B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350B18);
  }

  return result;
}

unint64_t sub_23E7C6FC0()
{
  result = qword_27E350B28;
  if (!qword_27E350B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E350AA0, &qword_23E7E4468);
    sub_23E7AF328(&qword_27E350B30, &qword_27E350910, &unk_23E7E3F60, &unk_23E7E2B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350B28);
  }

  return result;
}

unint64_t sub_23E7C7078()
{
  result = qword_27E350B38;
  if (!qword_27E350B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E350AB8, &qword_23E7E4470);
    sub_23E7AF328(&qword_27E350B40, &qword_27E3508F0, &qword_23E7E57B0, &unk_23E7E2B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350B38);
  }

  return result;
}

unint64_t sub_23E7C7130()
{
  result = qword_27E350B48;
  if (!qword_27E350B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E350AD0, &qword_23E7E4478);
    sub_23E7AF328(&qword_27E350B50, &qword_27E350908, &qword_23E7E57A0, &unk_23E7E2B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350B48);
  }

  return result;
}

unint64_t sub_23E7C71E8()
{
  result = qword_27E350B58;
  if (!qword_27E350B58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E350AE8, &qword_23E7E4480);
    sub_23E7AF328(&qword_27E350B60, &qword_27E3508E0, &qword_23E7E5790, &unk_23E7E2B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350B58);
  }

  return result;
}

unint64_t sub_23E7C7314()
{
  result = qword_27E350B68;
  if (!qword_27E350B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350B68);
  }

  return result;
}

unint64_t sub_23E7C736C()
{
  result = qword_27E350B70;
  if (!qword_27E350B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350B70);
  }

  return result;
}

unint64_t sub_23E7C73C4()
{
  result = qword_27E350B78;
  if (!qword_27E350B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350B78);
  }

  return result;
}

unint64_t sub_23E7C741C()
{
  result = qword_27E350B80;
  if (!qword_27E350B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350B80);
  }

  return result;
}

unint64_t sub_23E7C7474()
{
  result = qword_27E350B88;
  if (!qword_27E350B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350B88);
  }

  return result;
}

unint64_t sub_23E7C74CC()
{
  result = qword_27E350B90;
  if (!qword_27E350B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350B90);
  }

  return result;
}

unint64_t sub_23E7C7524()
{
  result = qword_27E350B98;
  if (!qword_27E350B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350B98);
  }

  return result;
}

unint64_t sub_23E7C757C()
{
  result = qword_27E350BA0;
  if (!qword_27E350BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350BA0);
  }

  return result;
}

unint64_t sub_23E7C75D4()
{
  result = qword_27E350BA8;
  if (!qword_27E350BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350BA8);
  }

  return result;
}

unint64_t sub_23E7C762C()
{
  result = qword_27E350BB0;
  if (!qword_27E350BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350BB0);
  }

  return result;
}

unint64_t sub_23E7C7684()
{
  result = qword_27E350BB8;
  if (!qword_27E350BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350BB8);
  }

  return result;
}

unint64_t sub_23E7C76DC()
{
  result = qword_27E350BC0;
  if (!qword_27E350BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350BC0);
  }

  return result;
}

unint64_t sub_23E7C7734()
{
  result = qword_27E350BC8;
  if (!qword_27E350BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350BC8);
  }

  return result;
}

unint64_t sub_23E7C778C()
{
  result = qword_27E350BD0;
  if (!qword_27E350BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350BD0);
  }

  return result;
}

unint64_t sub_23E7C77E4()
{
  result = qword_27E350BD8;
  if (!qword_27E350BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350BD8);
  }

  return result;
}

unint64_t sub_23E7C783C()
{
  result = qword_27E350BE0;
  if (!qword_27E350BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350BE0);
  }

  return result;
}

unint64_t sub_23E7C7894()
{
  result = qword_27E350BE8;
  if (!qword_27E350BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350BE8);
  }

  return result;
}

unint64_t sub_23E7C78EC()
{
  result = qword_27E350BF0;
  if (!qword_27E350BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350BF0);
  }

  return result;
}

unint64_t sub_23E7C7944()
{
  result = qword_27E350BF8;
  if (!qword_27E350BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350BF8);
  }

  return result;
}

unint64_t sub_23E7C799C()
{
  result = qword_27E350C00;
  if (!qword_27E350C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350C00);
  }

  return result;
}

uint64_t sub_23E7C7A0C(uint64_t a1)
{
  v36 = sub_23E7DD258();
  v2 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v42 = MEMORY[0x277D84F90];
    sub_23E7CB5A8(0, v5, 0);
    v6 = v42;
    v8 = *(v2 + 16);
    v7 = v2 + 16;
    v9 = a1 + ((*(v7 + 64) + 32) & ~*(v7 + 64));
    v33 = *(v7 + 56);
    v34 = v8;
    v32 = (v7 - 8);
    v31 = xmmword_23E7E1B90;
    v35 = v7;
    do
    {
      v10 = v36;
      v34(v4, v9, v36);
      v11 = sub_23E7DD228();
      v40 = v12;
      v41 = v11;
      v13 = sub_23E7DD238();
      v38 = v14;
      v39 = v13;
      v15 = sub_23E7DD218();
      if (v16)
      {
        v17 = v15;
      }

      else
      {
        v17 = 0;
      }

      v37 = v17;
      if (v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = 0xE000000000000000;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350048, &qword_23E7E1E10);
      v19 = swift_allocObject();
      *(v19 + 16) = v31;
      v20 = sub_23E7DD228();
      v22 = v21;
      v23 = sub_23E7DD238();
      *(v19 + 32) = v20;
      *(v19 + 40) = v22;
      *(v19 + 48) = v23;
      *(v19 + 56) = v24;
      (*v32)(v4, v10);
      v42 = v6;
      v26 = *(v6 + 16);
      v25 = *(v6 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_23E7CB5A8((v25 > 1), v26 + 1, 1);
        v6 = v42;
      }

      *(v6 + 16) = v26 + 1;
      v27 = v6 + (v26 << 6);
      v28 = v40;
      *(v27 + 32) = v41;
      *(v27 + 40) = v28;
      v29 = v38;
      *(v27 + 48) = v39;
      *(v27 + 56) = v29;
      *(v27 + 64) = v37;
      *(v27 + 72) = v18;
      *(v27 + 80) = v19;
      *(v27 + 88) = 516;
      v9 += v33;
      *(v27 + 90) = 0;
      --v5;
    }

    while (v5);
  }

  return v6;
}

uint64_t sub_23E7C7C58()
{
  v0[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350748, &qword_23E7E37A8);
  v0[3] = swift_task_alloc();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350750, &qword_23E7E37B0);
  v0[4] = v1;
  v0[5] = *(v1 - 8);
  v0[6] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350758, &qword_23E7E37B8);
  v0[7] = v2;
  v0[8] = *(v2 - 8);
  v0[9] = swift_task_alloc();
  v3 = sub_23E7DCF18();
  v0[10] = v3;
  v0[11] = *(v3 - 8);
  v0[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23E7C7E20, 0, 0);
}

uint64_t sub_23E7C7E20()
{
  (*(v0[11] + 104))(v0[12], *MEMORY[0x277D2AE20], v0[10]);
  sub_23E7DCF28();
  sub_23E7DD258();
  sub_23E7DCFE8();
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_23E7C7F04;
  v2 = v0[6];
  v3 = v0[7];

  return MEMORY[0x282124698](v2, v3);
}

uint64_t sub_23E7C7F04()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_23E7C813C;
  }

  else
  {
    v2 = sub_23E7C8018;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23E7C8018()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  sub_23E7DCFF8();
  sub_23E7C8384();
  v7 = sub_23E7DD448();
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v8 = sub_23E7C7A0C(v7);

  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_23E7C813C()
{
  (*(v0[8] + 8))(v0[9], v0[7]);
  if (qword_27E34FB58 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = sub_23E7DCE88();
  __swift_project_value_buffer(v2, qword_27E35A110);
  v3 = v1;
  v4 = sub_23E7DCE68();
  v5 = sub_23E7DD5D8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[14];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_23E790000, v4, v5, "Failed to get music library playlists %@", v8, 0xCu);
    sub_23E7C831C(v9);
    MEMORY[0x23EF13B60](v9, -1, -1);
    MEMORY[0x23EF13B60](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];
  v13 = MEMORY[0x277D84F90];

  return v12(v13);
}

uint64_t sub_23E7C831C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E34FEA8, &unk_23E7E1AB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23E7C8384()
{
  result = qword_27E350C08;
  if (!qword_27E350C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E350748, &qword_23E7E37A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350C08);
  }

  return result;
}

uint64_t sub_23E7C83E8(uint64_t a1)
{
  v2[52] = a1;
  v2[53] = v1;
  v3 = sub_23E7DCB98();
  v2[54] = v3;
  v2[55] = *(v3 - 8);
  v2[56] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350C28, &qword_23E7E4C28);
  v2[57] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23E7C84E0, 0, 0);
}

uint64_t sub_23E7C84E0()
{
  v1 = **(v0 + 424);
  *(v0 + 464) = v1;
  if (qword_27E34FB10 != -1)
  {
    v5 = v1;
    swift_once();
    v1 = v5;
  }

  v2 = [v1 stringForKey_];
  *(v0 + 472) = v2;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 384;
  *(v0 + 24) = sub_23E7C8664;
  v3 = swift_continuation_init();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350C30, &qword_23E7E4C30);
  *(v0 + 480) = v4;
  *(v0 + 200) = v4;
  *(v0 + 144) = MEMORY[0x277D85DD0];
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = sub_23E7C8F4C;
  *(v0 + 168) = &block_descriptor_1;
  *(v0 + 176) = v3;
  [v2 valueWithCompletion_];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_23E7C8664()
{
  v1 = *(*v0 + 48);
  *(*v0 + 488) = v1;
  if (v1)
  {
    v2 = sub_23E7C8D00;
  }

  else
  {
    v2 = sub_23E7C8774;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23E7C8774()
{
  v1 = *(v0 + 472);
  v2 = *(v0 + 384);
  v3 = sub_23E7DD328();
  v5 = v4;

  *(v0 + 496) = v3;
  *(v0 + 504) = v5;
  if (qword_27E34FB18 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 480);
  v7 = [*(v0 + 464) stringForKey_];
  *(v0 + 512) = v7;
  *(v0 + 80) = v0;
  *(v0 + 120) = v0 + 400;
  *(v0 + 88) = sub_23E7C88F8;
  v8 = swift_continuation_init();
  *(v0 + 264) = v6;
  *(v0 + 208) = MEMORY[0x277D85DD0];
  *(v0 + 216) = 1107296256;
  *(v0 + 224) = sub_23E7C8F4C;
  *(v0 + 232) = &block_descriptor_3;
  *(v0 + 240) = v8;
  [v7 valueWithCompletion_];

  return MEMORY[0x282200938](v0 + 80);
}

uint64_t sub_23E7C88F8()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 520) = v2;
  if (v2)
  {

    v3 = sub_23E7C8DD0;
  }

  else
  {
    *(v1 + 272) = *(*(v1 + 424) + 24);
    v3 = sub_23E7C8A1C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23E7C8A1C()
{
  v1 = *(v0 + 512);
  v2 = *(v0 + 456);
  v3 = *(v0 + 432);
  v4 = *(v0 + 440);
  v5 = *(v0 + 424);
  v6 = *(v0 + 400);
  v7 = sub_23E7DD328();
  v9 = v8;

  *(v0 + 288) = v7;
  *(v0 + 296) = v9;
  strcpy((v0 + 304), "{storefront}");
  *(v0 + 317) = 0;
  *(v0 + 318) = -5120;
  *(v0 + 320) = *(v5 + 8);
  sub_23E7C9044();
  v10 = sub_23E7DD688();
  v12 = v11;

  *(v0 + 336) = v10;
  *(v0 + 344) = v12;
  *(v0 + 352) = 0x676175676E616C7BLL;
  *(v0 + 360) = 0xEA00000000007D65;
  *(v0 + 368) = *(v0 + 272);
  sub_23E7DD688();

  sub_23E7DCB88();

  v13 = *(v4 + 48);
  if (v13(v2, 1, v3))
  {
  }

  else
  {
    MEMORY[0x23EF125C0](*(v0 + 496), *(v0 + 504));
  }

  v14 = *(v0 + 456);
  v15 = *(v0 + 432);
  if (!v13(v14, 1, v15))
  {
    sub_23E7DCB78();
    v14 = *(v0 + 456);
    v15 = *(v0 + 432);
  }

  if (v13(v14, 1, v15))
  {
    v16 = *(v0 + 416);
    v17 = sub_23E7DCCF8();
    (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  }

  else
  {
    v19 = *(v0 + 440);
    v18 = *(v0 + 448);
    (*(v19 + 16))(v18, v14, v15);
    sub_23E7DCB58();
    (*(v19 + 8))(v18, v15);
  }

  sub_23E7C9098(*(v0 + 456));

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_23E7C8D00(uint64_t a1)
{
  v2 = v1[61];
  v3 = v1[59];
  swift_willThrow();

  v4 = v1[52];
  v5 = sub_23E7DCCF8();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);

  v6 = v1[1];

  return v6();
}

uint64_t sub_23E7C8DD0(uint64_t a1)
{
  v2 = v1[65];
  v3 = v1[64];
  swift_willThrow();

  v4 = v1[52];
  v5 = sub_23E7DCCF8();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);

  v6 = v1[1];

  return v6();
}

uint64_t sub_23E7C8EA0()
{
  result = sub_23E7DD318();
  qword_27E350C10 = result;
  return result;
}

uint64_t sub_23E7C8EDC()
{
  result = sub_23E7DD318();
  qword_27E350C18 = result;
  return result;
}

uint64_t sub_23E7C8F14()
{
  result = sub_23E7DD318();
  qword_27E350C20 = result;
  return result;
}

uint64_t sub_23E7C8F4C(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v8 = *v7;
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350030, &qword_23E7E26F0);
    v9 = swift_allocError();
    *v10 = a4;
    v11 = a4;

    return MEMORY[0x282200958](v8, v9);
  }

  else
  {
    if (a2)
    {
      v12 = *(v8[8] + 40);
      *v12 = a2;
      *(v12 + 8) = a3;
      v13 = a2;
      v7 = v8;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v7);
  }
}

unint64_t sub_23E7C9044()
{
  result = qword_27E350C38;
  if (!qword_27E350C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350C38);
  }

  return result;
}

uint64_t sub_23E7C9098(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350C28, &qword_23E7E4C28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23E7C9100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[22] = a3;
  v4[23] = a4;
  v4[20] = a1;
  v4[21] = a2;
  v5 = sub_23E7DCD88();
  v4[24] = v5;
  v4[25] = *(v5 - 8);
  v4[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23E7C91C4, 0, 0);
}

uint64_t sub_23E7C91C4()
{
  if (qword_27E34FB08 != -1)
  {
    swift_once();
  }

  v1 = [*(v0 + 168) stringForKey_];
  *(v0 + 216) = v1;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_23E7C9330;
  v2 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350C30, &qword_23E7E4C30);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_23E7C8F4C;
  *(v0 + 104) = &block_descriptor_6;
  *(v0 + 112) = v2;
  [v1 valueWithCompletion_];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_23E7C9330()
{
  v1 = *(*v0 + 48);
  *(*v0 + 224) = v1;
  if (v1)
  {
    v2 = sub_23E7C94F0;
  }

  else
  {
    v2 = sub_23E7C9440;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23E7C9440()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 144);
  v3 = sub_23E7DD328();
  v5 = v4;

  v6 = *(v0 + 184);
  v10 = *(v0 + 168);
  v7 = *(v0 + 160);

  *v7 = v10;
  *(v7 + 16) = v6;
  *(v7 + 24) = v3;
  *(v7 + 32) = v5;
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_23E7C94F0(uint64_t a1)
{
  v3 = *(v1 + 216);
  v2 = *(v1 + 224);
  v5 = *(v1 + 200);
  v4 = *(v1 + 208);
  v6 = *(v1 + 192);
  swift_willThrow();

  sub_23E7DCD78();
  v7 = sub_23E7DCD28();
  v9 = v8;

  (*(v5 + 8))(v4, v6);
  v10 = *(v1 + 184);
  v14 = *(v1 + 168);
  v11 = *(v1 + 160);

  *v11 = v14;
  *(v11 + 16) = v10;
  *(v11 + 24) = v7;
  *(v11 + 32) = v9;
  v12 = *(v1 + 8);

  return v12();
}

uint64_t sub_23E7C95E4(uint64_t a1)
{
  *(v2 + 216) = a1;
  *(v2 + 224) = v1;
  return MEMORY[0x2822009F8](sub_23E7C9604, 0, 0);
}

uint64_t sub_23E7C9604()
{
  v1 = sub_23E7C9CB4();
  v2 = sub_23E7DCCD8();
  v3 = [v1 requestWithURL_];
  v0[29] = v3;

  v0[2] = v0;
  v0[7] = v0 + 26;
  v0[3] = sub_23E7C9768;
  v4 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350C40, &qword_23E7E4C70);
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_23E7CA1F8;
  v0[21] = &block_descriptor_2;
  v0[22] = v4;
  [v3 resultWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23E7C9768()
{
  v1 = *(*v0 + 48);
  *(*v0 + 240) = v1;
  if (v1)
  {
    v2 = sub_23E7C9BCC;
  }

  else
  {
    v2 = sub_23E7C9878;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23E7C9878()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[26];
  v0[31] = v3;

  v4 = [*(v2 + 16) dataTaskPromiseWithRequest_];
  v0[32] = v4;
  v0[10] = v0;
  v0[15] = v0 + 26;
  v0[11] = sub_23E7C99CC;
  v5 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350C48, &qword_23E7E4C78);
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_23E7CA1F8;
  v0[21] = &block_descriptor_4;
  v0[22] = v5;
  [v4 resultWithCompletion_];

  return MEMORY[0x282200938](v0 + 10);
}

uint64_t sub_23E7C99CC()
{
  v1 = *(*v0 + 112);
  *(*v0 + 264) = v1;
  if (v1)
  {
    v2 = sub_23E7C9C3C;
  }

  else
  {
    v2 = sub_23E7C9ADC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23E7C9ADC()
{
  v1 = *(v0 + 208);

  v2 = [v1 data];
  v3 = sub_23E7DCD18();
  v5 = v4;

  v6 = [v1 response];
  if (!v6)
  {
    v6 = [objc_allocWithZone(MEMORY[0x277CCAD28]) init];
  }

  v7 = *(v0 + 8);

  return v7(v3, v5, v6);
}

uint64_t sub_23E7C9BCC(uint64_t a1)
{
  v2 = *(v1 + 232);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_23E7C9C3C(uint64_t a1)
{
  v2 = v1[32];
  v3 = v1[31];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

id sub_23E7C9CB4()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = sub_23E7C9FCC(v0);
    v4 = *(v0 + 24);
    *(v0 + 24) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_23E7C9D14(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350030, &qword_23E7E26F0);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_23E7C9DEC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_23E7C9E68()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = sub_23E7DD328();
    v4 = v3;

    v5 = v2 == 0xD00000000000002FLL && 0x800000023E7DE590 == v4;
    if (v5 || (sub_23E7DD8E8() & 1) != 0 || (v2 == 0xD00000000000001BLL ? (v6 = 0x800000023E7DED30 == v4) : (v6 = 0), v6 || (sub_23E7DD8E8() & 1) != 0))
    {

      return 0xD00000000000001ALL;
    }

    return v2;
  }

  else
  {
    result = sub_23E7DD788();
    __break(1u);
  }

  return result;
}

id sub_23E7C9FCC(uint64_t a1)
{
  v2 = sub_23E7DD318();
  v3 = sub_23E7DD318();
  v4 = [objc_opt_self() bagForProfile:v2 profileVersion:v3];

  sub_23E7C9E68();
  v5 = objc_allocWithZone(MEMORY[0x277CEE578]);
  v6 = v4;
  v7 = sub_23E7DD318();

  v8 = [v5 initWithClientIdentifier:v7 bag:v6];

  v9 = *(a1 + 16);
  [v8 setSession_];
  [v8 setClientType_];
  v10 = [objc_allocWithZone(MEMORY[0x277CEE550]) initWithTokenService_];
  [v9 setProtocolHandler_];
  v11 = [objc_allocWithZone(MEMORY[0x277CEE558]) initWithTokenService:v8 bag:v6];
  v12 = [objc_opt_self() ams_sharedAccountStore];
  v13 = [v12 ams_activeiTunesAccount];

  [v11 setAccount_];
  v14 = [objc_opt_self() currentProcess];
  [v11 setClientInfo_];

  return v11;
}

uint64_t sub_23E7CA220()
{
  if (qword_27E34FB50 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 168) = v1;
  *v1 = v0;
  v1[1] = sub_23E7CA2F0;

  return sub_23E7C7C58();
}

uint64_t sub_23E7CA2F0(uint64_t a1)
{
  *(*v1 + 176) = a1;

  return MEMORY[0x2822009F8](sub_23E7CA3F0, 0, 0);
}

void sub_23E7CA3F0()
{
  v1 = *(v0 + 176);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v1 + 32;
    v5 = MEMORY[0x277D84F90];
    do
    {
      v21 = v5;
      v6 = (v4 + (v3 << 6));
      v7 = v3;
      while (1)
      {
        if (v7 >= *(v1 + 16))
        {
          __break(1u);
          return;
        }

        v8 = *(v0 + 160);
        v10 = v6[1];
        v9 = v6[2];
        v11 = *v6;
        *(v0 + 59) = *(v6 + 43);
        *(v0 + 32) = v10;
        *(v0 + 48) = v9;
        *(v0 + 16) = v11;
        v3 = v7 + 1;
        v12 = *(v0 + 24);
        *(v0 + 144) = *(v0 + 16);
        *(v0 + 152) = v12;
        v13 = swift_task_alloc();
        *(v13 + 16) = v0 + 144;
        sub_23E794BD8(v0 + 16, v0 + 80);
        sub_23E7DC9D8();
        LOBYTE(v8) = sub_23E7CB348(sub_23E7CB640, v13, v8);

        if (v8)
        {
          break;
        }

        sub_23E7A4C68(v0 + 16);
        v6 += 4;
        ++v7;
        if (v2 == v3)
        {
          v5 = v21;
          goto LABEL_15;
        }
      }

      v5 = v21;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_23E7CB5A8(0, *(v21 + 16) + 1, 1);
        v5 = v21;
      }

      v15 = *(v5 + 16);
      v14 = *(v5 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_23E7CB5A8((v14 > 1), v15 + 1, 1);
        v5 = v21;
      }

      *(v5 + 16) = v15 + 1;
      v16 = (v5 + (v15 << 6));
      v17 = *(v0 + 16);
      v18 = *(v0 + 32);
      v19 = *(v0 + 48);
      *(v16 + 75) = *(v0 + 59);
      v16[3] = v18;
      v16[4] = v19;
      v16[2] = v17;
      v4 = v1 + 32;
    }

    while (v2 - 1 != v7);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

LABEL_15:

  v20 = *(v0 + 8);

  v20(v5);
}

uint64_t sub_23E7CA628()
{
  if (qword_27E34FB50 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23E7CA6F8;

  return sub_23E7C7C58();
}

uint64_t sub_23E7CA6F8(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t UserLibraryPlaylistsQuery.entities(matching:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = a2;
  return MEMORY[0x2822009F8](sub_23E7CA818, 0, 0);
}

uint64_t sub_23E7CA818()
{
  if (qword_27E34FB50 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 192) = v1;
  *v1 = v0;
  v1[1] = sub_23E7CA8E8;

  return sub_23E7C7C58();
}

uint64_t sub_23E7CA8E8(uint64_t a1)
{
  *(*v1 + 200) = a1;

  return MEMORY[0x2822009F8](sub_23E7CA9E8, 0, 0);
}

void sub_23E7CA9E8()
{
  v1 = *(v0 + 200);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v2 - 1;
    v5 = v1 + 32;
    v6 = MEMORY[0x277D84F90];
    do
    {
      v7 = (v5 + (v3 << 6));
      v8 = v3;
      while (1)
      {
        if (v8 >= *(v1 + 16))
        {
          __break(1u);
          return;
        }

        v10 = *(v0 + 176);
        v9 = *(v0 + 184);
        v11 = *v7;
        v12 = v7[1];
        v13 = v7[2];
        *(v0 + 59) = *(v7 + 43);
        *(v0 + 32) = v12;
        *(v0 + 48) = v13;
        *(v0 + 16) = v11;
        v3 = v8 + 1;
        *(v0 + 144) = *(v0 + 32);
        *(v0 + 160) = v10;
        *(v0 + 168) = v9;
        sub_23E794BD8(v0 + 16, v0 + 80);
        sub_23E7C9044();
        if (sub_23E7DD698())
        {
          break;
        }

        sub_23E7A4C68(v0 + 16);
        v7 += 4;
        ++v8;
        if (v2 == v3)
        {
          goto LABEL_15;
        }
      }

      v21 = v4;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_23E7CB5A8(0, *(v6 + 16) + 1, 1);
      }

      v15 = *(v6 + 16);
      v14 = *(v6 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_23E7CB5A8((v14 > 1), v15 + 1, 1);
      }

      *(v6 + 16) = v15 + 1;
      v16 = (v6 + (v15 << 6));
      v17 = *(v0 + 16);
      v18 = *(v0 + 32);
      v19 = *(v0 + 48);
      *(v16 + 75) = *(v0 + 59);
      v16[3] = v18;
      v16[4] = v19;
      v16[2] = v17;
      v4 = v21;
      v5 = v1 + 32;
    }

    while (v21 != v8);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

LABEL_15:

  v20 = *(v0 + 8);

  v20(v6);
}

uint64_t sub_23E7CABC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_23E7CAC64;

  return UserLibraryPlaylistsQuery.entities(matching:)(a2, a3);
}

uint64_t sub_23E7CAC64(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_23E7CAD74(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23E7CB898;

  return UserLibraryPlaylistsQuery.entities(for:)(a1);
}

uint64_t sub_23E7CAE28()
{
  if (qword_27E34FB50 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_23E7CAEF8;

  return sub_23E7C7C58();
}

uint64_t sub_23E7CAEF8(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_23E7CAFF8, 0, 0);
}

uint64_t sub_23E7CB01C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_23E7CB0DC;

  return MEMORY[0x28210B610](a1, a2, a3, a4);
}

uint64_t sub_23E7CB0DC(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_23E7CB1DC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_23E7CB69C();
  *v5 = v2;
  v5[1] = sub_23E7A23AC;

  return MEMORY[0x28210B618](a1, a2, v6);
}

uint64_t sub_23E7CB290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_23E7A23AC;

  return MEMORY[0x28210C148](a1, a2, a3);
}

uint64_t sub_23E7CB348(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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
      sub_23E7DC9D8();
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

uint64_t sub_23E7CB3F4(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v7 = (a3 + 32);
    v8 = v5 - 1;
    while (1)
    {
      v9 = v7[1];
      v21[0] = *v7;
      v21[1] = v9;
      v11 = *v7;
      v10 = v7[1];
      v22[0] = v7[2];
      *(v22 + 11) = *(v7 + 43);
      v18 = v11;
      v19 = v10;
      v20[0] = v7[2];
      *(v20 + 11) = *(v7 + 43);
      sub_23E794BD8(v21, &v15);
      v12 = a1(&v18);
      if (v3)
      {
        break;
      }

      v4 = v12;
      v15 = v18;
      v16 = v19;
      v17[0] = v20[0];
      *(v17 + 11) = *(v20 + 11);
      sub_23E7A4C68(&v15);
      v13 = v8-- == 0;
      v7 += 4;
      if ((v4 | v13))
      {
        return v4 & 1;
      }
    }

    v15 = v18;
    v16 = v19;
    v17[0] = v20[0];
    *(v17 + 11) = *(v20 + 11);
    sub_23E7A4C68(&v15);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4 & 1;
}

void *sub_23E7CB508(void *a1, int64_t a2, char a3)
{
  result = sub_23E7A4CBC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23E7CB528(char *a1, int64_t a2, char a3)
{
  result = sub_23E7A4E94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_23E7CB548(void *a1, int64_t a2, char a3)
{
  result = sub_23E7A5190(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23E7CB568(char *a1, int64_t a2, char a3)
{
  result = sub_23E7A52D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23E7CB588(char *a1, int64_t a2, char a3)
{
  result = sub_23E7A53E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23E7CB5A8(char *a1, int64_t a2, char a3)
{
  result = sub_23E7A54F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23E7CB5C8(char *a1, int64_t a2, char a3)
{
  result = sub_23E7A55FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_23E7CB5E8(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_23E7DD8E8() & 1;
  }
}

uint64_t sub_23E7CB640(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_23E7DD8E8() & 1;
  }
}

unint64_t sub_23E7CB69C()
{
  result = qword_27E350C50;
  if (!qword_27E350C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350C50);
  }

  return result;
}

unint64_t sub_23E7CB6F4()
{
  result = qword_27E350C58;
  if (!qword_27E350C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350C58);
  }

  return result;
}

unint64_t sub_23E7CB74C()
{
  result = qword_27E350C60;
  if (!qword_27E350C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350C60);
  }

  return result;
}

unint64_t sub_23E7CB7A8()
{
  result = qword_27E350C68;
  if (!qword_27E350C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350C68);
  }

  return result;
}

unint64_t sub_23E7CB804()
{
  result = qword_27E350C70;
  if (!qword_27E350C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E34FD18, qword_23E7E5670);
    sub_23E7BF1E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350C70);
  }

  return result;
}

void *SelectPlaylistIntent.selectedPlaylist.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = (*(a2 + 24))(&v10);
  v7 = v11;
  if (v11)
  {
    *a3 = v10;
    *(a3 + 8) = v7;
    v8 = v13[0];
    *(a3 + 16) = v12;
    *(a3 + 32) = v8;
    *(a3 + 43) = *(v13 + 11);
  }

  else
  {
    v9 = *(a2 + 32);

    return v9(a1, a2);
  }

  return result;
}

uint64_t sub_23E7CB984()
{
  v0 = sub_23E7DCC98();
  __swift_allocate_value_buffer(v0, qword_27E350C78);
  __swift_project_value_buffer(v0, qword_27E350C78);
  return sub_23E7DCC88();
}

uint64_t (*SelectProductivityPlaylistIntent.suggestedPlaylist.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_23E7DC8F8();
  return sub_23E7CF738;
}

uint64_t (*SelectProductivityPlaylistIntent.userLibraryPlaylist.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_23E7DC8F8();
  return sub_23E7CF738;
}

uint64_t static SelectProductivityPlaylistIntent.parameterSummary.getter()
{
  v0 = sub_23E7DCA98();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  (*(v1 + 104))(v3, *MEMORY[0x277CBA468], v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350CD8, &qword_23E7E4E90);
  sub_23E7CC084();
  sub_23E7AF328(&qword_27E350CE8, &qword_27E350CD8, &qword_23E7E4E90, MEMORY[0x277CBA2C0]);
  sub_23E7AF328(&qword_27E350CF0, &qword_27E3502B8, &qword_23E7E27F0, MEMORY[0x277CB9F10]);
  sub_23E7AFFE0();
  return sub_23E7DCAC8();
}

uint64_t sub_23E7CBCE0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23E7DC928();
  *a1 = result;
  return result;
}

uint64_t sub_23E7CBD0C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350CD8, &qword_23E7E4E90);
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  sub_23E7CC084();
  sub_23E7DC9F8();
  v7 = sub_23E7AF328(&qword_27E350CE8, &qword_27E350CD8, &qword_23E7E4E90, MEMORY[0x277CBA2C0]);
  MEMORY[0x23EF12480](v4, &type metadata for SelectProductivityPlaylistIntent, v0, v7);
  v8 = *(v1 + 8);
  v8(v4, v0);
  MEMORY[0x23EF12470](v6, &type metadata for SelectProductivityPlaylistIntent, v0, v7);
  return (v8)(v6, v0);
}

uint64_t sub_23E7CBEE0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350CD8, &qword_23E7E4E90);
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  sub_23E7CC084();
  sub_23E7DC9F8();
  v7 = sub_23E7AF328(&qword_27E350CE8, &qword_27E350CD8, &qword_23E7E4E90, MEMORY[0x277CBA2C0]);
  MEMORY[0x23EF12480](v4, &type metadata for SelectProductivityPlaylistIntent, v0, v7);
  v8 = *(v1 + 8);
  v8(v4, v0);
  MEMORY[0x23EF12470](v6, &type metadata for SelectProductivityPlaylistIntent, v0, v7);
  return (v8)(v6, v0);
}

unint64_t sub_23E7CC084()
{
  result = qword_27E350CE0;
  if (!qword_27E350CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350CE0);
  }

  return result;
}

uint64_t sub_23E7CC124(uint64_t a1, uint64_t a2)
{
  v2 = sub_23E7DCA98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  (*(v3 + 104))(v5, *MEMORY[0x277CBA468], v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350CD8, &qword_23E7E4E90);
  sub_23E7AF328(&qword_27E350CE8, &qword_27E350CD8, &qword_23E7E4E90, MEMORY[0x277CBA2C0]);
  sub_23E7AF328(&qword_27E350CF0, &qword_27E3502B8, &qword_23E7E27F0, MEMORY[0x277CB9F10]);
  sub_23E7AFFE0();
  return sub_23E7DCAC8();
}

uint64_t sub_23E7CC304(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_23E7CE920();
  *v4 = v2;
  v4[1] = sub_23E7CF6D8;

  return MEMORY[0x28210C400](a2, v5);
}

uint64_t sub_23E7CC3B4(uint64_t a1)
{
  v2 = sub_23E7CC084();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_23E7CC3F0()
{
  v0 = sub_23E7DCC98();
  __swift_allocate_value_buffer(v0, qword_27E350C90);
  __swift_project_value_buffer(v0, qword_27E350C90);
  return sub_23E7DCC88();
}

uint64_t (*SelectChillPlaylistIntent.suggestedPlaylist.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_23E7DC8F8();
  return sub_23E7CF738;
}

uint64_t (*SelectChillPlaylistIntent.userLibraryPlaylist.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_23E7DC8F8();
  return sub_23E7B1838;
}

uint64_t static SelectChillPlaylistIntent.parameterSummary.getter()
{
  v0 = sub_23E7DCA98();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  (*(v1 + 104))(v3, *MEMORY[0x277CBA468], v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350CF8, &qword_23E7E4EC0);
  sub_23E7CCBF0();
  sub_23E7AF328(&qword_27E350D08, &qword_27E350CF8, &qword_23E7E4EC0, MEMORY[0x277CBA2C0]);
  sub_23E7AF328(&qword_27E350CF0, &qword_27E3502B8, &qword_23E7E27F0, MEMORY[0x277CB9F10]);
  sub_23E7AFFE0();
  return sub_23E7DCAC8();
}

uint64_t sub_23E7CC878()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350CF8, &qword_23E7E4EC0);
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  sub_23E7CCBF0();
  sub_23E7DC9F8();
  v7 = sub_23E7AF328(&qword_27E350D08, &qword_27E350CF8, &qword_23E7E4EC0, MEMORY[0x277CBA2C0]);
  MEMORY[0x23EF12480](v4, &type metadata for SelectChillPlaylistIntent, v0, v7);
  v8 = *(v1 + 8);
  v8(v4, v0);
  MEMORY[0x23EF12470](v6, &type metadata for SelectChillPlaylistIntent, v0, v7);
  return (v8)(v6, v0);
}

uint64_t sub_23E7CCA4C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350CF8, &qword_23E7E4EC0);
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  sub_23E7CCBF0();
  sub_23E7DC9F8();
  v7 = sub_23E7AF328(&qword_27E350D08, &qword_27E350CF8, &qword_23E7E4EC0, MEMORY[0x277CBA2C0]);
  MEMORY[0x23EF12480](v4, &type metadata for SelectChillPlaylistIntent, v0, v7);
  v8 = *(v1 + 8);
  v8(v4, v0);
  MEMORY[0x23EF12470](v6, &type metadata for SelectChillPlaylistIntent, v0, v7);
  return (v8)(v6, v0);
}

unint64_t sub_23E7CCBF0()
{
  result = qword_27E350D00;
  if (!qword_27E350D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350D00);
  }

  return result;
}

uint64_t sub_23E7CCCE0(uint64_t a1, uint64_t a2)
{
  v2 = sub_23E7DCA98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  (*(v3 + 104))(v5, *MEMORY[0x277CBA468], v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350CF8, &qword_23E7E4EC0);
  sub_23E7AF328(&qword_27E350D08, &qword_27E350CF8, &qword_23E7E4EC0, MEMORY[0x277CBA2C0]);
  sub_23E7AF328(&qword_27E350CF0, &qword_27E3502B8, &qword_23E7E27F0, MEMORY[0x277CB9F10]);
  sub_23E7AFFE0();
  return sub_23E7DCAC8();
}

uint64_t sub_23E7CCEC0(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_23E7CEAC0();
  *v4 = v2;
  v4[1] = sub_23E7CCF6C;

  return MEMORY[0x28210C400](a2, v5);
}

uint64_t sub_23E7CCF6C()
{
  v2 = *v1;

  if (v0)
  {
    v4 = *(v2 + 8);

    return v4();
  }

  return result;
}

uint64_t sub_23E7CD078(uint64_t a1)
{
  v2 = sub_23E7CCBF0();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_23E7CD0B4()
{
  v0 = sub_23E7DCC98();
  __swift_allocate_value_buffer(v0, qword_27E350CA8);
  __swift_project_value_buffer(v0, qword_27E350CA8);
  return sub_23E7DCC88();
}

uint64_t (*SelectSleepPlaylistIntent.suggestedPlaylist.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_23E7DC8F8();
  return sub_23E7CF738;
}

uint64_t (*SelectSleepPlaylistIntent.userLibraryPlaylist.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_23E7DC8F8();
  return sub_23E7CF738;
}

uint64_t static SelectSleepPlaylistIntent.parameterSummary.getter()
{
  v0 = sub_23E7DCA98();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  (*(v1 + 104))(v3, *MEMORY[0x277CBA468], v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350D10, &qword_23E7E4EF0);
  sub_23E7CD788();
  sub_23E7AF328(&qword_27E350D20, &qword_27E350D10, &qword_23E7E4EF0, MEMORY[0x277CBA2C0]);
  sub_23E7AF328(&qword_27E350CF0, &qword_27E3502B8, &qword_23E7E27F0, MEMORY[0x277CB9F10]);
  sub_23E7AFFE0();
  return sub_23E7DCAC8();
}

uint64_t sub_23E7CD410()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350D10, &qword_23E7E4EF0);
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  sub_23E7CD788();
  sub_23E7DC9F8();
  v7 = sub_23E7AF328(&qword_27E350D20, &qword_27E350D10, &qword_23E7E4EF0, MEMORY[0x277CBA2C0]);
  MEMORY[0x23EF12480](v4, &type metadata for SelectSleepPlaylistIntent, v0, v7);
  v8 = *(v1 + 8);
  v8(v4, v0);
  MEMORY[0x23EF12470](v6, &type metadata for SelectSleepPlaylistIntent, v0, v7);
  return (v8)(v6, v0);
}

uint64_t sub_23E7CD5E4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350D10, &qword_23E7E4EF0);
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  sub_23E7CD788();
  sub_23E7DC9F8();
  v7 = sub_23E7AF328(&qword_27E350D20, &qword_27E350D10, &qword_23E7E4EF0, MEMORY[0x277CBA2C0]);
  MEMORY[0x23EF12480](v4, &type metadata for SelectSleepPlaylistIntent, v0, v7);
  v8 = *(v1 + 8);
  v8(v4, v0);
  MEMORY[0x23EF12470](v6, &type metadata for SelectSleepPlaylistIntent, v0, v7);
  return (v8)(v6, v0);
}

unint64_t sub_23E7CD788()
{
  result = qword_27E350D18;
  if (!qword_27E350D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350D18);
  }

  return result;
}

uint64_t sub_23E7CD828(uint64_t a1, uint64_t a2)
{
  v2 = sub_23E7DCA98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  (*(v3 + 104))(v5, *MEMORY[0x277CBA468], v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350D10, &qword_23E7E4EF0);
  sub_23E7AF328(&qword_27E350D20, &qword_27E350D10, &qword_23E7E4EF0, MEMORY[0x277CBA2C0]);
  sub_23E7AF328(&qword_27E350CF0, &qword_27E3502B8, &qword_23E7E27F0, MEMORY[0x277CB9F10]);
  sub_23E7AFFE0();
  return sub_23E7DCAC8();
}

uint64_t sub_23E7CDA08(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_23E7CEC10();
  *v4 = v2;
  v4[1] = sub_23E7CF6D8;

  return MEMORY[0x28210C400](a2, v5);
}

uint64_t sub_23E7CDAB8(uint64_t a1)
{
  v2 = sub_23E7CD788();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_23E7CDAF4()
{
  v0 = sub_23E7DCC98();
  __swift_allocate_value_buffer(v0, qword_27E350CC0);
  __swift_project_value_buffer(v0, qword_27E350CC0);
  return sub_23E7DCC88();
}

uint64_t sub_23E7CDB7C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_23E7DCC98();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_23E7CDC14(_OWORD *a1, uint64_t a2)
{
  v2 = a1[1];
  v8[0] = *a1;
  v8[1] = v2;
  v4 = *a1;
  v3 = a1[1];
  v9[0] = a1[2];
  *(v9 + 11) = *(a1 + 43);
  v6[4] = v4;
  v6[5] = v3;
  v7[0] = a1[2];
  *(v7 + 11) = *(a1 + 43);
  sub_23E7B1F6C(v8, v6);
  sub_23E7DC9E8();
  sub_23E7DC9E8();
  sub_23E7DC918();
}

uint64_t (*SelectWellbeingPlaylistIntent.suggestedPlaylist.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_23E7DC8F8();
  return sub_23E7CF738;
}

uint64_t sub_23E7CDD14(_OWORD *a1, uint64_t a2)
{
  v2 = a1[1];
  v8[0] = *a1;
  v8[1] = v2;
  v4 = *a1;
  v3 = a1[1];
  v9[0] = a1[2];
  *(v9 + 11) = *(a1 + 43);
  v6[4] = v4;
  v6[5] = v3;
  v7[0] = a1[2];
  *(v7 + 11) = *(a1 + 43);
  sub_23E7B1F6C(v8, v6);
  sub_23E7DC9E8();
  sub_23E7DC9E8();
  sub_23E7DC918();
}

uint64_t (*SelectWellbeingPlaylistIntent.userLibraryPlaylist.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_23E7DC8F8();
  return sub_23E7CF738;
}

uint64_t sub_23E7CDE1C@<X0>(char a1@<W0>, _BYTE *a2@<X8>)
{
  v31 = a2;
  v33 = sub_23E7DCA08();
  v4 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350298, &qword_23E7E27D0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3502A8, &qword_23E7E27E0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v24 - v13;
  v15 = sub_23E7DCC98();
  v29 = v15;
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  *a2 = a1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3502B8, &qword_23E7E27F0);
  sub_23E7DCC88();
  v17 = *(v16 + 56);
  v28 = v16 + 56;
  v30 = v17;
  v17(v14, 1, 1, v15);
  v18 = sub_23E7DC8D8();
  v35 = 0u;
  v36 = 0u;
  memset(v37, 0, sizeof(v37));
  v19 = *(*(v18 - 8) + 56);
  v19(v11, 1, 1, v18);
  v19(v9, 1, 1, v18);
  v34 = a1;
  v26 = *MEMORY[0x277CBA308];
  v20 = *(v4 + 104);
  v24[1] = v4 + 104;
  v25 = v20;
  v20(v32);
  sub_23E7BF0D0();
  v21 = sub_23E7DC938();
  v22 = v31;
  *(v31 + 1) = v21;
  sub_23E7DCC88();
  v30(v14, 1, 1, v29);
  v36 = 0u;
  memset(v37, 0, sizeof(v37));
  v35 = 0u;
  v19(v11, 1, 1, v18);
  v19(v9, 1, 1, v18);
  v25(v32, v26, v33);
  sub_23E7CB69C();
  result = sub_23E7DC938();
  *(v22 + 2) = result;
  return result;
}

uint64_t static SelectWellbeingPlaylistIntent.parameterSummary.getter()
{
  v0 = sub_23E7DCA98();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  (*(v1 + 104))(v3, *MEMORY[0x277CBA468], v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350D28, &qword_23E7E4F20);
  sub_23E7CE8A4();
  sub_23E7AF328(&qword_27E350D38, &qword_27E350D28, &qword_23E7E4F20, MEMORY[0x277CBA2C0]);
  sub_23E7AF328(&qword_27E350CF0, &qword_27E3502B8, &qword_23E7E27F0, MEMORY[0x277CB9F10]);
  sub_23E7AFFE0();
  return sub_23E7DCAC8();
}

uint64_t sub_23E7CE430()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350D28, &qword_23E7E4F20);
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  sub_23E7CE8A4();
  sub_23E7DC9F8();
  v7 = sub_23E7AF328(&qword_27E350D38, &qword_27E350D28, &qword_23E7E4F20, MEMORY[0x277CBA2C0]);
  MEMORY[0x23EF12480](v4, &type metadata for SelectWellbeingPlaylistIntent, v0, v7);
  v8 = *(v1 + 8);
  v8(v4, v0);
  MEMORY[0x23EF12470](v6, &type metadata for SelectWellbeingPlaylistIntent, v0, v7);
  return (v8)(v6, v0);
}

uint64_t sub_23E7CE604(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  swift_getKeyPath();
  a2();
  v4 = sub_23E7DC9E8();

  swift_getKeyPath();
  sub_23E7DC9E8();
  v5 = sub_23E7DC9E8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FF98, &qword_23E7E1CF0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_23E7E4E50;
  *(v6 + 32) = v4;
  *(v6 + 40) = v5;
  sub_23E7DC9E8();
  v7 = sub_23E7DC9D8();

  return v7;
}

uint64_t sub_23E7CE700()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350D28, &qword_23E7E4F20);
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  sub_23E7CE8A4();
  sub_23E7DC9F8();
  v7 = sub_23E7AF328(&qword_27E350D38, &qword_27E350D28, &qword_23E7E4F20, MEMORY[0x277CBA2C0]);
  MEMORY[0x23EF12480](v4, &type metadata for SelectWellbeingPlaylistIntent, v0, v7);
  v8 = *(v1 + 8);
  v8(v4, v0);
  MEMORY[0x23EF12470](v6, &type metadata for SelectWellbeingPlaylistIntent, v0, v7);
  return (v8)(v6, v0);
}

unint64_t sub_23E7CE8A4()
{
  result = qword_27E350D30;
  if (!qword_27E350D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350D30);
  }

  return result;
}

unint64_t sub_23E7CE8F8(uint64_t a1)
{
  result = sub_23E7CE920();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23E7CE920()
{
  result = qword_27E350D40;
  if (!qword_27E350D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350D40);
  }

  return result;
}

unint64_t sub_23E7CE97C()
{
  result = qword_27E350D48;
  if (!qword_27E350D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350D48);
  }

  return result;
}

unint64_t sub_23E7CE9D4()
{
  result = qword_27E350D50;
  if (!qword_27E350D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350D50);
  }

  return result;
}

unint64_t sub_23E7CEA28()
{
  result = qword_27E350D58;
  if (!qword_27E350D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350D58);
  }

  return result;
}

unint64_t sub_23E7CEA98(uint64_t a1)
{
  result = sub_23E7CEAC0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23E7CEAC0()
{
  result = qword_27E350D60;
  if (!qword_27E350D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350D60);
  }

  return result;
}

unint64_t sub_23E7CEB1C()
{
  result = qword_27E350D68;
  if (!qword_27E350D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350D68);
  }

  return result;
}

unint64_t sub_23E7CEB74()
{
  result = qword_27E350D70;
  if (!qword_27E350D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350D70);
  }

  return result;
}

unint64_t sub_23E7CEBE8(uint64_t a1)
{
  result = sub_23E7CEC10();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23E7CEC10()
{
  result = qword_27E350D78;
  if (!qword_27E350D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350D78);
  }

  return result;
}

unint64_t sub_23E7CEC6C()
{
  result = qword_27E350D80;
  if (!qword_27E350D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350D80);
  }

  return result;
}

unint64_t sub_23E7CECC4()
{
  result = qword_27E350D88;
  if (!qword_27E350D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350D88);
  }

  return result;
}

uint64_t sub_23E7CED5C(uint64_t a1, void (*a2)(void))
{
  swift_getKeyPath();
  a2();
  v3 = sub_23E7DC9E8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FF98, &qword_23E7E1CF0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23E7E1BA0;
  *(v4 + 32) = v3;
  sub_23E7DC9E8();
  v5 = sub_23E7DC9D8();

  return v5;
}

void *sub_23E7CEE18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v14 = *v3;
  v15 = *(v3 + 8);
  result = (*(a2 + 24))(&v10);
  v8 = v11;
  if (!v11)
  {
    return (*(a2 + 32))(a1, a2);
  }

  *a3 = v10;
  *(a3 + 8) = v8;
  v9 = v13[0];
  *(a3 + 16) = v12;
  *(a3 + 32) = v9;
  *(a3 + 43) = *(v13 + 11);
  return result;
}

unint64_t sub_23E7CEEC4(uint64_t a1)
{
  result = sub_23E7CEEEC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23E7CEEEC()
{
  result = qword_27E350D90;
  if (!qword_27E350D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350D90);
  }

  return result;
}

unint64_t sub_23E7CEF48()
{
  result = qword_27E350D98;
  if (!qword_27E350D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350D98);
  }

  return result;
}

unint64_t sub_23E7CEFA0()
{
  result = qword_27E350DA0;
  if (!qword_27E350DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350DA0);
  }

  return result;
}

uint64_t sub_23E7CF034@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_23E7DCC98();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_23E7CF0D0(uint64_t a1, uint64_t a2)
{
  v2 = sub_23E7DCA98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  (*(v3 + 104))(v5, *MEMORY[0x277CBA468], v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350D28, &qword_23E7E4F20);
  sub_23E7AF328(&qword_27E350D38, &qword_27E350D28, &qword_23E7E4F20, MEMORY[0x277CBA2C0]);
  sub_23E7AF328(&qword_27E350CF0, &qword_27E3502B8, &qword_23E7E27F0, MEMORY[0x277CB9F10]);
  sub_23E7AFFE0();
  return sub_23E7DCAC8();
}

uint64_t sub_23E7CF2B0(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_23E7CEEEC();
  *v4 = v2;
  v4[1] = sub_23E7CF6D8;

  return MEMORY[0x28210C400](a2, v5);
}

uint64_t sub_23E7CF360(uint64_t a1)
{
  v2 = sub_23E7CE8A4();

  return MEMORY[0x28210B538](a1, v2);
}

double sub_23E7CF39C@<D0>(_OWORD *a1@<X8>)
{
  sub_23E7DC908();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = *v5;
  result = *&v5[11];
  *(a1 + 43) = *&v5[11];
  return result;
}

double sub_23E7CF400@<D0>(_OWORD *a1@<X8>)
{
  sub_23E7DC908();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = *v5;
  result = *&v5[11];
  *(a1 + 43) = *&v5[11];
  return result;
}

uint64_t sub_23E7CF4EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_23E7CF534(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23E7CF694@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23E7DC928();
  *a1 = result;
  return result;
}

uint64_t sub_23E7CF884()
{
  v0 = sub_23E7DCD88();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_23E7DD308();
  MEMORY[0x28223BE20](v1 - 8);
  sub_23E7DD2F8();
  sub_23E7DCD78();
  result = sub_23E7DD338();
  *&xmmword_27E350E70 = 0xD000000000000017;
  *(&xmmword_27E350E70 + 1) = 0x800000023E7DEDE0;
  *&xmmword_27E350E80 = result;
  *(&xmmword_27E350E80 + 1) = v3;
  *&xmmword_27E350E90 = 0;
  *(&xmmword_27E350E90 + 1) = 0xE000000000000000;
  qword_27E350EA0 = MEMORY[0x277D84F90];
  word_27E350EA8 = 516;
  byte_27E350EAA = 0;
  return result;
}

uint64_t static SuggestedPlaylistQuery.fromLibrary.getter@<X0>(_OWORD *a1@<X8>)
{
  if (qword_27E34FB40 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = xmmword_27E350E80;
  v7[0] = xmmword_27E350E70;
  v7[1] = xmmword_27E350E80;
  v2 = xmmword_27E350E90;
  v8[0] = xmmword_27E350E90;
  v3 = *(&xmmword_27E350E90 + 11);
  *(v8 + 11) = *(&xmmword_27E350E90 + 11);
  *a1 = xmmword_27E350E70;
  a1[1] = v1;
  a1[2] = v2;
  *(a1 + 43) = v3;
  return sub_23E794BD8(v7, &v6);
}

uint64_t sub_23E7CFA5C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350F00, &unk_23E7E57E0);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = 0;
  off_27E350EB0 = result;
  return result;
}

uint64_t sub_23E7CFAA0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FFB8, &qword_23E7E1D58);
  *(v0 + 16) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23E7CFB38, 0, 0);
}

uint64_t sub_23E7CFB38()
{
  if (qword_27E34FB48 != -1)
  {
    swift_once();
  }

  v1 = off_27E350EB0;
  os_unfair_lock_lock(off_27E350EB0 + 6);
  v2 = *(v1 + 2);
  if (!v2)
  {
    v3 = v0[2];
    v4 = sub_23E7DD558();
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
    v5 = swift_allocObject();
    *(v5 + 16) = 0;
    *(v5 + 24) = 0;
    v2 = sub_23E79CE30(0, 0, v3, &unk_23E7E57D8, v5);
    *(v1 + 2) = v2;
  }

  v0[3] = v2;
  sub_23E7DC9E8();
  os_unfair_lock_unlock(v1 + 6);
  sub_23E7DC9E8();
  v6 = swift_task_alloc();
  v0[4] = v6;
  *v6 = v0;
  v6[1] = sub_23E7CFCE4;
  v7 = MEMORY[0x277D84A98];
  v8 = MEMORY[0x277D84AC0];
  v9 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200440](v0 + 5, v2, v9, v7, v8);
}

uint64_t sub_23E7CFCE4()
{

  return MEMORY[0x2822009F8](sub_23E7CFDFC, 0, 0);
}

uint64_t sub_23E7CFDFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23E7CFE64()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23E7A23AC;

  return sub_23E7988F4();
}

uint64_t SuggestedPlaylistQuery.defaultResult()(uint64_t a1)
{
  *(v2 + 144) = a1;
  v3 = *v1;
  *(v2 + 77) = *v1;
  *(v2 + 75) = v3;
  v4 = swift_task_alloc();
  *(v2 + 152) = v4;
  *v4 = v2;
  v4[1] = sub_23E7CFFA0;

  return sub_23E7CFAA0();
}

uint64_t sub_23E7CFFA0()
{
  v1 = *v0;
  v2 = *(*v0 + 77);
  v5 = *v0;

  *(v1 + 76) = v2;
  v3 = swift_task_alloc();
  *(v1 + 160) = v3;
  *v3 = v5;
  v3[1] = sub_23E7D00D0;

  return SuggestedPlaylistQuery.suggestedEntities()();
}

uint64_t sub_23E7D00D0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 168) = a1;
  *(v3 + 176) = v1;

  if (v1)
  {
    v4 = sub_23E7D0368;
  }

  else
  {
    v4 = sub_23E7D01E4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23E7D01E4()
{
  v1 = *(v0 + 168);
  if (*(v1 + 16))
  {
    v2 = *(v0 + 144);
    v4 = *(v1 + 48);
    v3 = *(v1 + 64);
    v5 = *(v1 + 32);
    *(v0 + 59) = *(v1 + 75);
    *(v0 + 32) = v4;
    *(v0 + 48) = v3;
    *(v0 + 16) = v5;
    sub_23E794BD8(v0 + 16, v0 + 80);

    v6 = *(v0 + 16);
    v7 = *(v0 + 32);
    v8 = *(v0 + 48);
    *(v2 + 43) = *(v0 + 59);
    v2[1] = v7;
    v2[2] = v8;
  }

  else
  {

    if (qword_27E34FB58 != -1)
    {
      swift_once();
    }

    v9 = sub_23E7DCE88();
    __swift_project_value_buffer(v9, qword_27E35A110);
    v10 = sub_23E7DCE68();
    v11 = sub_23E7DD5D8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_23E790000, v10, v11, "SuggestedPlaylistQuery returned nil for the default entity", v12, 2u);
      MEMORY[0x23EF13B60](v12, -1, -1);
    }

    v2 = *(v0 + 144);

    v6 = 0uLL;
    *(v2 + 43) = 0u;
    v2[1] = 0u;
    v2[2] = 0u;
  }

  *v2 = v6;
  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_23E7D0368()
{
  if (qword_27E34FB58 != -1)
  {
    swift_once();
  }

  v1 = v0[22];
  v2 = sub_23E7DCE88();
  __swift_project_value_buffer(v2, qword_27E35A110);
  v3 = v1;
  v4 = sub_23E7DCE68();
  v5 = sub_23E7DD5D8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[22];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_23E790000, v4, v5, "SuggestedPlaylistQuery failed to fetch default entity %@", v8, 0xCu);
    sub_23E7C831C(v9);
    MEMORY[0x23EF13B60](v9, -1, -1);
    MEMORY[0x23EF13B60](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[18];
  *(v12 + 43) = 0u;
  v12[1] = 0u;
  v12[2] = 0u;
  *v12 = 0u;
  v13 = v0[1];

  return v13();
}

uint64_t SuggestedPlaylistQuery.suggestedEntities()()
{
  v2 = *v0;
  *(v1 + 78) = *v0;
  *(v1 + 75) = v2;
  v3 = swift_task_alloc();
  *(v1 + 144) = v3;
  *v3 = v1;
  v3[1] = sub_23E7D05A8;

  return sub_23E7CFAA0();
}

uint64_t sub_23E7D05A8()
{

  return MEMORY[0x2822009F8](sub_23E7D06A4, 0, 0);
}

uint64_t sub_23E7D06A4()
{
  if (*(v0 + 78) == 5)
  {
    if (qword_27E34FB50 != -1)
    {
      swift_once();
    }

    *(v0 + 184) = qword_27E350F60;
    v1 = swift_task_alloc();
    *(v0 + 192) = v1;
    *v1 = v0;
    v2 = sub_23E7D0D44;
  }

  else
  {
    if (qword_27E34FB50 != -1)
    {
      swift_once();
    }

    *(v0 + 152) = qword_27E350F60;
    v1 = swift_task_alloc();
    *(v0 + 160) = v1;
    *v1 = v0;
    v2 = sub_23E7D0810;
  }

  v1[1] = v2;

  return sub_23E7988F4();
}

uint64_t sub_23E7D0810(char a1)
{
  v3 = *v1;
  v7 = *v1;

  *(v3 + 77) = a1 ^ 1;
  v4 = v3 + 77;
  v5 = swift_task_alloc();
  *(v4 + 91) = v5;
  *v5 = v7;
  v5[1] = sub_23E7D0958;

  return Library.moods(for:)(v4);
}

uint64_t sub_23E7D0958(uint64_t a1)
{
  *(*v1 + 176) = a1;

  return MEMORY[0x2822009F8](sub_23E7D0A58, 0, 0);
}

uint64_t sub_23E7D0A58()
{
  v1 = *(v0 + 176);
  v24 = *(v1 + 16);
  if (v24)
  {
    v2 = 0;
    v3 = 0xEC00000079746976;
    v4 = (v1 + 56);
    while (v2 < *(v1 + 16))
    {
      v5 = *(v0 + 78);
      v6 = *(v4 - 24);
      v7 = *v4;
      ++v2;
      if (v5 == 3)
      {
        v8 = 0x6E6965626C6C6577;
      }

      else
      {
        v8 = 0x6D6F74737563;
      }

      if (v5 == 3)
      {
        v9 = 0xE900000000000067;
      }

      else
      {
        v9 = 0xE600000000000000;
      }

      if (v5 == 2)
      {
        v8 = 0x7065656C73;
        v9 = 0xE500000000000000;
      }

      if (*(v0 + 78))
      {
        v10 = 0x6C6C696863;
      }

      else
      {
        v10 = 0x69746375646F7270;
      }

      if (*(v0 + 78))
      {
        v11 = 0xE500000000000000;
      }

      else
      {
        v11 = v3;
      }

      if (*(v0 + 78) <= 1u)
      {
        v12 = v10;
      }

      else
      {
        v12 = v8;
      }

      if (*(v0 + 78) <= 1u)
      {
        v13 = v11;
      }

      else
      {
        v13 = v9;
      }

      if (v6 == 3)
      {
        v14 = 0x6E6965626C6C6577;
      }

      else
      {
        v14 = 0x6D6F74737563;
      }

      if (v6 == 3)
      {
        v15 = 0xE900000000000067;
      }

      else
      {
        v15 = 0xE600000000000000;
      }

      if (v6 == 2)
      {
        v14 = 0x7065656C73;
        v15 = 0xE500000000000000;
      }

      if (*(v4 - 24))
      {
        v16 = 0x6C6C696863;
      }

      else
      {
        v16 = 0x69746375646F7270;
      }

      if (*(v4 - 24))
      {
        v17 = 0xE500000000000000;
      }

      else
      {
        v17 = v3;
      }

      if (*(v4 - 24) <= 1u)
      {
        v18 = v16;
      }

      else
      {
        v18 = v14;
      }

      if (*(v4 - 24) <= 1u)
      {
        v19 = v17;
      }

      else
      {
        v19 = v15;
      }

      if (v12 == v18 && v13 == v19)
      {
        sub_23E7DC9D8();
        sub_23E7DC9D8();

LABEL_50:

        goto LABEL_51;
      }

      v20 = v3;
      v25 = sub_23E7DD8E8();
      sub_23E7DC9D8();
      sub_23E7DC9D8();

      if (v25)
      {
        goto LABEL_50;
      }

      v4 += 4;
      v3 = v20;
      if (v24 == v2)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
    goto LABEL_56;
  }

LABEL_48:
  v7 = MEMORY[0x277D84F90];
LABEL_51:

  v21 = *(v0 + 152);
  *(v0 + 216) = v7;
  *(v0 + 224) = v21;
  if (qword_27E34FB50 != -1)
  {
LABEL_56:
    swift_once();
  }

  v22 = swift_task_alloc();
  *(v0 + 232) = v22;
  *v22 = v0;
  v22[1] = sub_23E7D10A8;

  return sub_23E7988F4();
}

uint64_t sub_23E7D0D44(char a1)
{
  v3 = *v1;
  v7 = *v1;

  *(v3 + 76) = a1 ^ 1;
  v4 = v3 + 76;
  v5 = swift_task_alloc();
  *(v4 + 124) = v5;
  *v5 = v7;
  v5[1] = sub_23E7D0E8C;

  return Library.moods(for:)(v4);
}

uint64_t sub_23E7D0E8C(uint64_t a1)
{
  *(*v1 + 208) = a1;

  return MEMORY[0x2822009F8](sub_23E7D0F8C, 0, 0);
}

uint64_t sub_23E7D0F8C()
{
  v1 = v0[26];
  if (*(v1 + 16))
  {
    v2 = *(v1 + 56);
    sub_23E7DC9D8();
    sub_23E7DC9D8();
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v3 = v0[23];
  v0[27] = v2;
  v0[28] = v3;
  if (qword_27E34FB50 != -1)
  {
    swift_once();
  }

  v4 = swift_task_alloc();
  v0[29] = v4;
  *v4 = v0;
  v4[1] = sub_23E7D10A8;

  return sub_23E7988F4();
}

uint64_t sub_23E7D10A8(char a1)
{
  v2 = *(*v1 + 224);
  *(*v1 + 79) = a1;

  return MEMORY[0x2822009F8](sub_23E7D11C0, v2, 0);
}

uint64_t sub_23E7D11C0()
{
  if (*(v0 + 79) == 1)
  {

    v1 = sub_23E7D129C;
  }

  else
  {
    *(v0 + 139) = sub_23E7DD8E8() & 1;

    v1 = sub_23E7D13E8;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_23E7D129C()
{
  v1 = *(v0 + 216);
  if (*(v1 + 2))
  {
    v2 = *(v0 + 216);
    if (qword_27E34FB40 != -1)
    {
      swift_once();
    }

    v3 = *(&xmmword_27E350E90 + 11);
    v5 = xmmword_27E350E80;
    v4 = xmmword_27E350E90;
    *(v0 + 16) = xmmword_27E350E70;
    *(v0 + 32) = v5;
    *(v0 + 48) = v4;
    *(v0 + 59) = v3;
    sub_23E794BD8(v0 + 16, v0 + 80);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v0 + 216);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_23E7D2B98(0, *(v2 + 16) + 1, 1, v7);
    }

    v9 = *(v7 + 2);
    v8 = *(v7 + 3);
    if (v9 >= v8 >> 1)
    {
      v7 = sub_23E7D2B98((v8 > 1), v9 + 1, 1, v7);
    }

    *(v7 + 2) = v9 + 1;
    v10 = &v7[64 * v9];
    v11 = *(v0 + 16);
    v12 = *(v0 + 32);
    v13 = *(v0 + 48);
    *(v10 + 75) = *(v0 + 59);
    *(v10 + 3) = v12;
    *(v10 + 4) = v13;
    *(v10 + 2) = v11;
    v1 = v7;
  }

  v14 = *(v0 + 8);

  return v14(v1);
}

uint64_t sub_23E7D13E8()
{
  v1 = *(v0 + 216);
  if (*(v0 + 139) == 1 && *(v1 + 2))
  {
    v2 = *(v0 + 216);
    if (qword_27E34FB40 != -1)
    {
      swift_once();
    }

    v3 = *(&xmmword_27E350E90 + 11);
    v5 = xmmword_27E350E80;
    v4 = xmmword_27E350E90;
    *(v0 + 16) = xmmword_27E350E70;
    *(v0 + 32) = v5;
    *(v0 + 48) = v4;
    *(v0 + 59) = v3;
    sub_23E794BD8(v0 + 16, v0 + 80);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v0 + 216);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_23E7D2B98(0, *(v2 + 16) + 1, 1, v7);
    }

    v9 = *(v7 + 2);
    v8 = *(v7 + 3);
    if (v9 >= v8 >> 1)
    {
      v7 = sub_23E7D2B98((v8 > 1), v9 + 1, 1, v7);
    }

    *(v7 + 2) = v9 + 1;
    v10 = &v7[64 * v9];
    v11 = *(v0 + 16);
    v12 = *(v0 + 32);
    v13 = *(v0 + 48);
    *(v10 + 75) = *(v0 + 59);
    *(v10 + 3) = v12;
    *(v10 + 4) = v13;
    *(v10 + 2) = v11;
    v1 = v7;
  }

  v14 = *(v0 + 8);

  return v14(v1);
}

uint64_t SuggestedPlaylistQuery.entities(for:)(uint64_t a1)
{
  *(v2 + 160) = a1;
  v3 = *v1;
  *(v2 + 78) = *v1;
  *(v2 + 75) = v3;
  v4 = swift_task_alloc();
  *(v2 + 168) = v4;
  *v4 = v2;
  v4[1] = sub_23E7D15DC;

  return sub_23E7CFAA0();
}

uint64_t sub_23E7D15DC()
{

  return MEMORY[0x2822009F8](sub_23E7D16D8, 0, 0);
}

uint64_t sub_23E7D16D8()
{
  if (*(v0 + 78) == 5)
  {
    if (qword_27E34FB50 != -1)
    {
      swift_once();
    }

    *(v0 + 208) = qword_27E350F60;
    v1 = swift_task_alloc();
    *(v0 + 216) = v1;
    *v1 = v0;
    v2 = sub_23E7D1D74;
  }

  else
  {
    if (qword_27E34FB50 != -1)
    {
      swift_once();
    }

    *(v0 + 176) = qword_27E350F60;
    v1 = swift_task_alloc();
    *(v0 + 184) = v1;
    *v1 = v0;
    v2 = sub_23E7D1844;
  }

  v1[1] = v2;

  return sub_23E7988F4();
}

uint64_t sub_23E7D1844(char a1)
{
  v3 = *v1;
  v7 = *v1;

  *(v3 + 77) = a1 ^ 1;
  v4 = v3 + 77;
  v5 = swift_task_alloc();
  *(v4 + 115) = v5;
  *v5 = v7;
  v5[1] = sub_23E7D198C;

  return Library.moods(for:)(v4);
}

uint64_t sub_23E7D198C(uint64_t a1)
{
  *(*v1 + 200) = a1;

  return MEMORY[0x2822009F8](sub_23E7D1A8C, 0, 0);
}

uint64_t sub_23E7D1A8C()
{
  v1 = *(v0 + 200);
  v23 = *(v1 + 16);
  if (v23)
  {
    v2 = 0;
    v3 = 0xEC00000079746976;
    v4 = (v1 + 56);
    while (v2 < *(v1 + 16))
    {
      v5 = *(v0 + 78);
      v6 = *(v4 - 24);
      v7 = *v4;
      ++v2;
      if (v5 == 3)
      {
        v8 = 0x6E6965626C6C6577;
      }

      else
      {
        v8 = 0x6D6F74737563;
      }

      if (v5 == 3)
      {
        v9 = 0xE900000000000067;
      }

      else
      {
        v9 = 0xE600000000000000;
      }

      if (v5 == 2)
      {
        v8 = 0x7065656C73;
        v9 = 0xE500000000000000;
      }

      if (*(v0 + 78))
      {
        v10 = 0x6C6C696863;
      }

      else
      {
        v10 = 0x69746375646F7270;
      }

      if (*(v0 + 78))
      {
        v11 = 0xE500000000000000;
      }

      else
      {
        v11 = v3;
      }

      if (*(v0 + 78) <= 1u)
      {
        v12 = v10;
      }

      else
      {
        v12 = v8;
      }

      if (*(v0 + 78) <= 1u)
      {
        v13 = v11;
      }

      else
      {
        v13 = v9;
      }

      if (v6 == 3)
      {
        v14 = 0x6E6965626C6C6577;
      }

      else
      {
        v14 = 0x6D6F74737563;
      }

      if (v6 == 3)
      {
        v15 = 0xE900000000000067;
      }

      else
      {
        v15 = 0xE600000000000000;
      }

      if (v6 == 2)
      {
        v14 = 0x7065656C73;
        v15 = 0xE500000000000000;
      }

      if (*(v4 - 24))
      {
        v16 = 0x6C6C696863;
      }

      else
      {
        v16 = 0x69746375646F7270;
      }

      if (*(v4 - 24))
      {
        v17 = 0xE500000000000000;
      }

      else
      {
        v17 = v3;
      }

      if (*(v4 - 24) <= 1u)
      {
        v18 = v16;
      }

      else
      {
        v18 = v14;
      }

      if (*(v4 - 24) <= 1u)
      {
        v19 = v17;
      }

      else
      {
        v19 = v15;
      }

      if (v12 == v18 && v13 == v19)
      {
        sub_23E7DC9D8();
        sub_23E7DC9D8();

LABEL_50:

        goto LABEL_51;
      }

      v20 = v3;
      v24 = sub_23E7DD8E8();
      sub_23E7DC9D8();
      sub_23E7DC9D8();

      if (v24)
      {
        goto LABEL_50;
      }

      v4 += 4;
      v3 = v20;
      if (v23 == v2)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
    goto LABEL_56;
  }

LABEL_48:
  v7 = MEMORY[0x277D84F90];
LABEL_51:

  *(v0 + 240) = v7;
  if (qword_27E34FB50 != -1)
  {
LABEL_56:
    swift_once();
  }

  v21 = swift_task_alloc();
  *(v0 + 248) = v21;
  *v21 = v0;
  v21[1] = sub_23E7D21E0;

  return sub_23E7C7C58();
}

uint64_t sub_23E7D1D74(char a1)
{
  v3 = *v1;
  v7 = *v1;

  *(v3 + 76) = a1 ^ 1;
  v4 = v3 + 76;
  v5 = swift_task_alloc();
  *(v4 + 148) = v5;
  *v5 = v7;
  v5[1] = sub_23E7D1EBC;

  return Library.moods(for:)(v4);
}

uint64_t sub_23E7D1EBC(uint64_t a1)
{
  *(*v1 + 232) = a1;

  return MEMORY[0x2822009F8](sub_23E7D1FBC, 0, 0);
}

uint64_t sub_23E7D1FBC()
{
  Description = v0[14].Description;
  v2 = Description[2];
  if (!v2)
  {
    v5 = MEMORY[0x277D84F90];
LABEL_21:

    v0[15].Kind = v5;
    if (qword_27E34FB50 != -1)
    {
      goto LABEL_30;
    }

    goto LABEL_22;
  }

  v3 = 0;
  v4 = (Description + 7);
  v5 = MEMORY[0x277D84F90];
  v0 = &type metadata for Mood.Playlist;
  while (v3 < Description[2])
  {
    v6 = *v4;
    v7 = *(*v4 + 16);
    v8 = *(v5 + 2);
    v9 = v8 + v7;
    if (__OFADD__(v8, v7))
    {
      goto LABEL_26;
    }

    sub_23E7DC9D8();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v9 <= *(v5 + 3) >> 1)
    {
      if (*(v6 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v8 <= v9)
      {
        v11 = v8 + v7;
      }

      else
      {
        v11 = v8;
      }

      v5 = sub_23E7D2B98(isUniquelyReferenced_nonNull_native, v11, 1, v5);
      if (*(v6 + 16))
      {
LABEL_15:
        if ((*(v5 + 3) >> 1) - *(v5 + 2) < v7)
        {
          goto LABEL_28;
        }

        swift_arrayInitWithCopy();

        if (v7)
        {
          v12 = *(v5 + 2);
          v13 = __OFADD__(v12, v7);
          v14 = v12 + v7;
          if (v13)
          {
            goto LABEL_29;
          }

          *(v5 + 2) = v14;
        }

        goto LABEL_4;
      }
    }

    if (v7)
    {
      goto LABEL_27;
    }

LABEL_4:
    ++v3;
    v4 += 32;
    if (v2 == v3)
    {
      v0 = v17;
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  swift_once();
LABEL_22:
  v15 = swift_task_alloc();
  v0[15].Description = v15;
  *v15 = v0;
  v15[1] = sub_23E7D21E0;

  return sub_23E7C7C58();
}

uint64_t sub_23E7D21E0(uint64_t a1)
{
  *(*v1 + 256) = a1;

  return MEMORY[0x2822009F8](sub_23E7D22E0, 0, 0);
}

uint64_t sub_23E7D22E0()
{
  v34 = v0;
  v1 = *(v0 + 256);
  v33 = *(v0 + 240);
  sub_23E7D31D8(v1);
  v2 = v33;
  v3 = v33[2];
  if (v3)
  {
    v4 = 0;
    v5 = v33 + 4;
    v6 = MEMORY[0x277D84F90];
    v31 = v33 + 4;
    do
    {
      v32 = v6;
      v6 = &v5[8 * v4];
      v7 = v4;
      while (1)
      {
        if (v7 >= *(v2 + 16))
        {
          __break(1u);
          goto LABEL_24;
        }

        v8 = *(v0 + 160);
        v10 = *(v6 + 16);
        v9 = *(v6 + 32);
        v11 = *v6;
        *(v0 + 59) = *(v6 + 43);
        *(v0 + 32) = v10;
        *(v0 + 48) = v9;
        *(v0 + 16) = v11;
        v4 = v7 + 1;
        v12 = *(v0 + 24);
        *(v0 + 144) = *(v0 + 16);
        *(v0 + 152) = v12;
        v13 = swift_task_alloc();
        *(v13 + 16) = v0 + 144;
        sub_23E794BD8(v0 + 16, v0 + 80);
        sub_23E7DC9D8();
        LOBYTE(v8) = sub_23E7CB348(sub_23E7D32CC, v13, v8);

        if (v8)
        {
          break;
        }

        sub_23E7A4C68(v0 + 16);
        v6 += 64;
        ++v7;
        if (v3 == v4)
        {
          v6 = v32;
          goto LABEL_15;
        }
      }

      v6 = v32;
      v33 = v32;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_23E7CB5A8(0, *(v32 + 16) + 1, 1);
        v6 = v33;
      }

      v15 = *(v6 + 16);
      v14 = *(v6 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_23E7CB5A8((v14 > 1), v15 + 1, 1);
        v6 = v33;
      }

      *(v6 + 16) = v15 + 1;
      v16 = (v6 + (v15 << 6));
      v17 = *(v0 + 16);
      v18 = *(v0 + 32);
      v19 = *(v0 + 48);
      *(v16 + 75) = *(v0 + 59);
      v16[3] = v18;
      v16[4] = v19;
      v16[2] = v17;
      v5 = v31;
    }

    while (v3 - 1 != v7);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

LABEL_15:

  if (!*(v6 + 16))
  {
    if (qword_27E34FB58 != -1)
    {
LABEL_24:
      swift_once();
    }

    v20 = sub_23E7DCE88();
    __swift_project_value_buffer(v20, qword_27E35A110);
    sub_23E7DC9D8();
    v21 = sub_23E7DCE68();
    v22 = sub_23E7DD5D8();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = *(v0 + 160);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v33 = v25;
      *v24 = 136315138;
      v26 = MEMORY[0x23EF12F00](v23, MEMORY[0x277D837D0]);
      v28 = sub_23E7D2CA4(v26, v27, &v33);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_23E790000, v21, v22, "SuggestedPlaylistQuery attempted to fetch %s but found no results", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x23EF13B60](v25, -1, -1);
      MEMORY[0x23EF13B60](v24, -1, -1);
    }
  }

  v29 = *(v0 + 8);

  return v29(v6);
}

uint64_t sub_23E7D2644(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23E7CB898;

  return SuggestedPlaylistQuery.entities(for:)(a1);
}

uint64_t sub_23E7D26D8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_23E7CAC64;

  return SuggestedPlaylistQuery.suggestedEntities()();
}

uint64_t sub_23E7D2768(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_23E7BF0D0();
  *v5 = v2;
  v5[1] = sub_23E7A23AC;

  return MEMORY[0x28210B618](a1, a2, v6);
}

uint64_t sub_23E7D281C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23E7A23AC;

  return SuggestedPlaylistQuery.defaultResult()(a1);
}

void *sub_23E7D29B0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
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
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
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

char *sub_23E7D2B98(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350068, &unk_23E7E57C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_23E7D2CA4(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  sub_23E7DC9D8();
  v6 = sub_23E7D2D70(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_23E7A6134(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_23E7D2D70(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_23E7D2E7C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_23E7DD778();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_23E7D2E7C(uint64_t a1, unint64_t a2)
{
  v3 = sub_23E7D2EC8(a1, a2);
  sub_23E7D2FF8(&unk_2851118A0);
  return v3;
}

void *sub_23E7D2EC8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_23E79A534(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_23E7DD778();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_23E7DD3C8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23E79A534(v10, 0);
        result = sub_23E7DD728();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_23E7D2FF8(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_23E7D30E4(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_23E7D30E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FF58, &qword_23E7E1B68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

char *sub_23E7D31D8(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
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

  result = sub_23E7D2B98(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
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

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

unint64_t sub_23E7D32F0()
{
  result = qword_27E350EB8;
  if (!qword_27E350EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350EB8);
  }

  return result;
}

unint64_t sub_23E7D3348()
{
  result = qword_27E350EC0;
  if (!qword_27E350EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350EC0);
  }

  return result;
}

unint64_t sub_23E7D33A0()
{
  result = qword_27E350EC8;
  if (!qword_27E350EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350EC8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SuggestedPlaylistQuery(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 5)
  {
    v7 = 5;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 6;
  if (v6 < 5)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}