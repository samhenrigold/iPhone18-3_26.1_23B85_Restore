uint64_t sub_1E613172C()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6131844, 0, 0);
}

uint64_t sub_1E6131844()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_1E65E60F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1E6131920;
  v5 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v5);
}

uint64_t sub_1E6131920()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6131A1C, 0, 0);
}

uint64_t sub_1E6131A1C()
{
  if (*(v0 + 112) == 1)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    sub_1E65E6058();
    *(v0 + 104) = sub_1E65E6048();
    v4 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6131B1C, v4, v3);
  }
}

uint64_t sub_1E6131B1C()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074140, &qword_1E65EFAE8);
  sub_1E65E4E18();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1E6131920;
  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6D9C8](v0 + 112, 0, 0, v2);
}

uint64_t sub_1E6131BE8(uint64_t a1)
{
  Description = type metadata accessor for ContentAvailabilityService()[-1].Description;
  v5 = (Description[80] + 17) & ~Description[80];
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFA78C;

  return sub_1E612F220(a1, v6, v1 + v5);
}

uint64_t sub_1E6131CCC(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for RemoteBrowsingService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074140, &qword_1E65EFAE8) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E612F85C(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E6131E28(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for ContentAvailabilityService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074140, &qword_1E65EFAE8) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E6130038(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E6131F84(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for AppStateService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074140, &qword_1E65EFAE8) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E6130724(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E61320E0(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for AppStateService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074140, &qword_1E65EFAE8) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E6130E10(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t objectdestroy_3Tm_6(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074140, &qword_1E65EFAE8);
  v7 = *(v6 - 8);
  v8 = (v5 + *(v7 + 80)) & ~*(v7 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1 + v4, v2);
  (*(v7 + 8))(v1 + v8, v6);

  return swift_deallocObject();
}

uint64_t sub_1E61323A0(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for AccountService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074140, &qword_1E65EFAE8) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E61314FC(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t RootItem.identifier.getter()
{
  v1 = v0[1];
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      return 0x686372616573;
    }

    if (v1 != 4)
    {
      if (v1 == 5)
      {
        return 0x736E616C70;
      }

      goto LABEL_12;
    }

    return 0x7478654E7075;
  }

  else
  {
    if (!v1)
    {
      return 0x65726F6C707865;
    }

    if (v1 != 1)
    {
      if (v1 == 2)
      {
        return 0x7972617262696CLL;
      }

LABEL_12:
      MEMORY[0x1E694D7C0](*v0);
      return 0x7974696C61646F6DLL;
    }

    return 0x756F59726F66;
  }
}

uint64_t RootItem.kind.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = sub_1E65DEF98();
  v5 = *(*(v4 - 8) + 104);
  v6 = MEMORY[0x1E699CE90];
  if (v3 == 3)
  {
    v6 = MEMORY[0x1E699CEA0];
  }

  if (v3 == 4)
  {
    v6 = MEMORY[0x1E699CE98];
  }

  v7 = *v6;

  return v5(a1, v7, v4);
}

uint64_t RootItem.style.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8) - 3;
  v4 = sub_1E65DEFC8();
  v5 = *(*(v4 - 8) + 104);
  v6 = MEMORY[0x1E699CEC0];
  if (v3 >= 2)
  {
    v6 = MEMORY[0x1E699CEC8];
  }

  v7 = *v6;

  return v5(a1, v7, v4);
}

unint64_t RootItem.systemImageName.getter()
{
  v1 = *(v0 + 8);
  v2 = 0x697966696E67616DLL;
  v3 = 0xD000000000000013;
  v4 = 0x7261646E656C6163;
  if (v1 != 5)
  {
    v4 = 0;
  }

  if (v1 != 4)
  {
    v3 = v4;
  }

  if (v1 != 3)
  {
    v2 = v3;
  }

  v5 = 0xD000000000000012;
  v6 = 0x722E657275676966;
  v7 = 0x6C676E6174636572;
  if (v1 != 2)
  {
    v7 = 0;
  }

  if (v1 != 1)
  {
    v6 = v7;
  }

  if (v1)
  {
    v5 = v6;
  }

  if (v1 <= 2)
  {
    return v5;
  }

  else
  {
    return v2;
  }
}

uint64_t RootItem.title(for:)(uint64_t a1)
{
  v3 = sub_1E65D7848();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075900, &qword_1E65F21B0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v22[-v8];
  v10 = sub_1E65E5C28();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v22[-v15];
  v17 = *(v1 + 8);
  if (v17 > 2)
  {
    if (v17 == 3 || v17 == 4 || v17 == 5)
    {
      goto LABEL_10;
    }
  }

  else if (v17 <= 2)
  {
LABEL_10:
    sub_1E65E5BA8();
    (*(v11 + 56))(v9, 0, 1, v10);
    (*(v11 + 32))(v16, v9, v10);
    (*(v11 + 16))(v14, v16, v10);
    type metadata accessor for LocalizationBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v20 = [objc_opt_self() bundleForClass_];
    (*(v4 + 16))(v6, a1, v3);
    v18 = sub_1E65E5D48();
    (*(v11 + 8))(v16, v10);
    return v18;
  }

  (*(v11 + 56))(v9, 1, 1, v10);
  sub_1E6132BD8(v9);
  return 0;
}

uint64_t sub_1E6132BD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075900, &qword_1E65F21B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E6132C58@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = sub_1E65DEF98();
  v5 = *(*(v4 - 8) + 104);
  v6 = MEMORY[0x1E699CE90];
  if (v3 == 3)
  {
    v6 = MEMORY[0x1E699CEA0];
  }

  if (v3 == 4)
  {
    v6 = MEMORY[0x1E699CE98];
  }

  v7 = *v6;

  return v5(a1, v7, v4);
}

uint64_t sub_1E6132CEC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8) - 3;
  v4 = sub_1E65DEFC8();
  v5 = *(*(v4 - 8) + 104);
  v6 = MEMORY[0x1E699CEC0];
  if (v3 >= 2)
  {
    v6 = MEMORY[0x1E699CEC8];
  }

  v7 = *v6;

  return v5(a1, v7, v4);
}

uint64_t sub_1E6132D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_1E65D8F28();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  sub_1E65D7848();
  v6[8] = swift_task_alloc();
  sub_1E65E5C28();
  v6[9] = swift_task_alloc();
  v6[10] = type metadata accessor for PageMetricsClick(0);
  v6[11] = swift_task_alloc();
  v8 = sub_1E65E2DF8();
  v6[12] = v8;
  v6[13] = *(v8 - 8);
  v6[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6132F24, 0, 0);
}

uint64_t sub_1E6132F24()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  (*(v2 + 16))(v1, v0[2], v3);
  if ((*(v2 + 88))(v1, v3) == *MEMORY[0x1E699F628])
  {
    v5 = v0[10];
    v4 = v0[11];
    v6 = v0[6];
    v33 = v0[7];
    v34 = v0[5];
    v35 = v0[4];
    v7 = sub_1E65D9D78();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    v8 = v5[5];
    v9 = *MEMORY[0x1E69CBAA0];
    v10 = sub_1E65D8C68();
    (*(*(v10 - 8) + 104))(v4 + v8, v9, v10);
    v11 = v5[6];
    v12 = sub_1E65D74E8();
    (*(*(v12 - 8) + 56))(v4 + v11, 1, 1, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E58, &qword_1E65F0E90);
    sub_1E65D86A8();
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1E65EA670;
    sub_1E65E2908();
    sub_1E65E28C8();
    sub_1E65E5BA8();
    type metadata accessor for LocalizationBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v14 = [objc_opt_self() bundleForClass_];
    sub_1E65E2DC8();
    sub_1E65E5D48();
    v15 = *MEMORY[0x1E69CBCC8];
    v16 = *(v6 + 104);
    v16(v33, v15, v34);
    sub_1E6427498(MEMORY[0x1E69E7CC0]);
    sub_1E65D8678();
    v17 = v5[8];
    v18 = sub_1E65DA208();
    (*(*(v18 - 8) + 56))(v4 + v17, 1, 1, v18);
    v19 = sub_1E65E2908();
    v21 = v20;
    v16(v4 + v5[14], v15, v34);
    v22 = v5[15];
    v23 = sub_1E65D9908();
    (*(*(v23 - 8) + 56))(v4 + v22, 1, 1, v23);
    v24 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
    *(v4 + v5[7]) = v32;
    v25 = (v4 + v5[9]);
    *v25 = 0;
    v25[1] = 0;
    v26 = (v4 + v5[10]);
    *v26 = 0;
    v26[1] = 0;
    *(v4 + v5[11]) = v24;
    v27 = (v4 + v5[12]);
    *v27 = 0;
    v27[1] = 0;
    v28 = (v4 + v5[13]);
    *v28 = v19;
    v28[1] = v21;
    v36 = (*(v35 + 48) + **(v35 + 48));
    v29 = swift_task_alloc();
    v0[15] = v29;
    *v29 = v0;
    v29[1] = sub_1E6133458;
    v30 = v0[11];

    return v36(v30);
  }

  else
  {

    return sub_1E65E6C08();
  }
}

uint64_t sub_1E6133458()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1E6133618;
  }

  else
  {
    v2 = sub_1E613356C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E613356C()
{
  sub_1E5FC0990(*(v0 + 88));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6133618()
{
  sub_1E5FC0990(*(v0 + 88));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E61336C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = sub_1E65D8998();
  v4 = *(v64 - 8);
  v5 = MEMORY[0x1EEE9AC00](v64);
  v62 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v63 = &v44 - v7;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0730C8, &qword_1E65ECF20);
  v8 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v65 = &v44 - v9;
  v69 = sub_1E65DAC98();
  v10 = *(v69 - 8);
  v11 = MEMORY[0x1EEE9AC00](v69);
  v67 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v66 = &v44 - v13;
  v70 = sub_1E65DD1A8();
  MEMORY[0x1EEE9AC00](v70);
  v68 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E65DA0B8();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v49 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075910, &qword_1E65F2248);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v48 = &v44 - v19;
  v20 = sub_1E65D9D48();
  v21 = *(v20 + 16);
  v50 = a1;
  if (v21)
  {
    v44 = v16;
    v45 = v15;
    v47 = a2;
    v72 = MEMORY[0x1E69E7CC0];
    v22 = v20;
    sub_1E601BEA4(0, v21, 0);
    result = v22;
    v24 = 0;
    v25 = v72;
    v56 = v22 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v54 = (v10 + 16);
    v55 = v4 + 16;
    v46 = v10;
    v60 = v4;
    v52 = v4 + 8;
    v53 = (v10 + 8);
    v51 = v8 + 32;
    v58 = v22;
    v59 = v8;
    v57 = v21;
    v26 = v63;
    while (v24 < *(result + 16))
    {
      v27 = v60;
      v28 = *(v60 + 16);
      v29 = v64;
      v28(v26, v56 + *(v60 + 72) * v24, v64);
      v71 = v25;
      v30 = v62;
      v28(v62, v26, v29);
      v31 = v66;
      sub_1E65D8978();
      v32 = v67;
      v33 = v69;
      (*v54)(v67, v31, v69);
      sub_1E602A934(v32, v68);
      (*v53)(v31, v33);
      sub_1E65D8988();
      v34 = sub_1E65D8968();
      sub_1E611CCC0(v34);

      sub_1E6134630(&qword_1ED075918, MEMORY[0x1E699EF60], MEMORY[0x1E699EF58]);
      v35 = v65;
      sub_1E65DC328();
      v36 = *(v27 + 8);
      v25 = v71;
      v36(v30, v29);
      v36(v26, v29);
      v72 = v25;
      v38 = *(v25 + 16);
      v37 = *(v25 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_1E601BEA4((v37 > 1), v38 + 1, 1);
        v35 = v65;
        v25 = v72;
      }

      ++v24;
      *(v25 + 16) = v38 + 1;
      (*(v59 + 32))(v25 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v38, v35, v61);
      result = v58;
      if (v57 == v24)
      {

        v10 = v46;
        v15 = v45;
        v16 = v44;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_9:
    v39 = v49;
    sub_1E65D9D38();
    v40 = v66;
    sub_1E65DA098();
    v41 = v67;
    v42 = v69;
    (*(v10 + 16))(v67, v40, v69);
    sub_1E602A934(v41, v68);
    (*(v10 + 8))(v40, v42);
    sub_1E65DA0A8();
    sub_1E6134630(&qword_1ED075918, MEMORY[0x1E699EF60], MEMORY[0x1E699EF58]);
    sub_1E65DC438();
    (*(v16 + 8))(v39, v15);
    sub_1E65DC3F8();
    v43 = sub_1E65D9D58();
    return (*(*(v43 - 8) + 8))(v50, v43);
  }

  return result;
}

uint64_t sub_1E6133E30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = sub_1E65D8998();
  v4 = *(v57 - 8);
  v5 = MEMORY[0x1EEE9AC00](v57);
  v55 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v56 = v39 - v7;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073100, &qword_1E65ECF58);
  v8 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v58 = v39 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v64 = v39 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v61 = v39 - v13;
  v62 = sub_1E65DAC98();
  v14 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v59 = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1E65E3418();
  MEMORY[0x1EEE9AC00](v63);
  v60 = v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1E65DA0B8();
  v43 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v42 = v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075920, &qword_1E65F2250);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v41 = v39 - v19;
  v20 = sub_1E65D9D48();
  v21 = *(v20 + 16);
  if (v21)
  {
    v39[1] = a2;
    v40 = a1;
    v66 = MEMORY[0x1E69E7CC0];
    v22 = v20;
    sub_1E601CF88(0, v21, 0);
    result = v22;
    v24 = 0;
    v25 = v66;
    v49 = v22 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v47 = (v14 + 8);
    v48 = v4 + 16;
    v46 = v4 + 8;
    v45 = v8 + 32;
    v52 = v8;
    v53 = v14;
    v50 = v21;
    v51 = v22;
    while (v24 < *(result + 16))
    {
      v26 = *(v4 + 16);
      v28 = v56;
      v27 = v57;
      v26(v56, v49 + *(v4 + 72) * v24, v57);
      v29 = v55;
      v26(v55, v28, v27);
      v30 = v59;
      sub_1E65D8978();
      sub_1E65DAC38();
      sub_1E65DC2D8();
      sub_1E65DAC78();
      sub_1E65D74C8();

      sub_1E65DAC88();
      v65 = v25;
      sub_1E65E3408();
      (*v47)(v30, v62);
      sub_1E65D8988();
      v31 = sub_1E65D8968();
      sub_1E611CCC0(v31);

      sub_1E6134630(&qword_1ED075928, MEMORY[0x1E699EC58], MEMORY[0x1E699EC50]);
      v32 = v58;
      v25 = v65;
      sub_1E65DC328();
      v33 = *(v4 + 8);
      v33(v29, v27);
      v33(v28, v27);
      v66 = v25;
      v35 = *(v25 + 16);
      v34 = *(v25 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_1E601CF88((v34 > 1), v35 + 1, 1);
        v32 = v58;
        v25 = v66;
      }

      ++v24;
      *(v25 + 16) = v35 + 1;
      (*(v52 + 32))(v25 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v35, v32, v54);
      result = v51;
      v14 = v53;
      if (v50 == v24)
      {

        a1 = v40;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_9:
    v36 = v42;
    sub_1E65D9D38();
    v37 = v59;
    sub_1E65DA098();
    sub_1E65DAC38();
    sub_1E65DC2D8();
    sub_1E65DAC78();
    sub_1E65D74C8();

    sub_1E65DAC88();
    sub_1E65E3408();
    (*(v14 + 8))(v37, v62);
    sub_1E65DA0A8();
    sub_1E6134630(&qword_1ED075928, MEMORY[0x1E699EC58], MEMORY[0x1E699EC50]);
    sub_1E65DC438();
    (*(v43 + 8))(v36, v44);
    sub_1E65DC3F8();
    v38 = sub_1E65D9D58();
    return (*(*(v38 - 8) + 8))(a1, v38);
  }

  return result;
}

uint64_t sub_1E6134630(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t RootItem.init(rawValue:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = a1 == 0x65726F6C707865 && a2 == 0xE700000000000000;
  if (v6 || (sub_1E65E6C18() & 1) != 0)
  {

    *a3 = 0;
    a3[1] = 0;
    return result;
  }

  if (a1 == 0x756F59726F66 && a2 == 0xE600000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    v8 = xmmword_1E65EADF0;
LABEL_11:
    *a3 = v8;
    return result;
  }

  if (a1 == 0x7972617262696CLL && a2 == 0xE700000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    v8 = xmmword_1E65EADE0;
    goto LABEL_11;
  }

  if (a1 == 0x686372616573 && a2 == 0xE600000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    v8 = xmmword_1E65EADD0;
    goto LABEL_11;
  }

  if (a1 == 0x7478654E7075 && a2 == 0xE600000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    v8 = xmmword_1E65EADC0;
    goto LABEL_11;
  }

  if (a1 == 0x736E616C70 && a2 == 0xE500000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    v8 = xmmword_1E65EADB0;
    goto LABEL_11;
  }

  if ((sub_1E65E5E28() & 1) == 0)
  {

    v8 = xmmword_1E65EAE00;
    goto LABEL_11;
  }

  v9 = sub_1E65E5D88();
  v10 = sub_1E6134D3C(v9, a1, a2);
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = MEMORY[0x1E694D730](v10, v12, v14, v16);
  v19 = v18;

  *a3 = v17;
  a3[1] = v19;
  return result;
}

uint64_t sub_1E61349B0@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  swift_beginAccess();
  v6 = *a1;
  v7 = *a2;
  *a3 = *a1;
  a3[1] = v7;
  return sub_1E5E05374(v6, v7);
}

uint64_t sub_1E6134A18(uint64_t *a1, uint64_t *a2, unint64_t *a3)
{
  v5 = *a1;
  v6 = a1[1];
  swift_beginAccess();
  v7 = *a2;
  v8 = *a3;
  *a2 = v5;
  *a3 = v6;
  return sub_1E5E0476C(v7, v8);
}

uint64_t sub_1E6134AD4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, unint64_t *a6)
{
  v8 = *a1;
  v9 = a1[1];
  swift_beginAccess();
  v10 = *a5;
  v11 = *a6;
  *a5 = v8;
  *a6 = v9;
  sub_1E5E05374(v8, v9);
  return sub_1E5E0476C(v10, v11);
}

uint64_t sub_1E6134C00()
{
  sub_1E65E6D28();
  RootItem.id.getter();
  sub_1E65E5D78();

  return sub_1E65E6D78();
}

uint64_t sub_1E6134C68(uint64_t a1)
{
  RootItem.id.getter();
  sub_1E65E5D78();
}

uint64_t sub_1E6134CCC(uint64_t a1)
{
  sub_1E65E6D28();
  RootItem.id.getter();
  sub_1E65E5D78();

  return sub_1E65E6D78();
}

unint64_t sub_1E6134D3C(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_1E65E5D98();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_1E65E5E68();
}

uint64_t keypath_getTm@<X0>(uint64_t *a1@<X3>, unint64_t *a2@<X4>, uint64_t *a3@<X8>)
{
  swift_beginAccess();
  v6 = *a1;
  v7 = *a2;
  *a3 = *a1;
  a3[1] = v7;
  return sub_1E5E05374(v6, v7);
}

void *sub_1E6134E54(void *result, int a2)
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

unint64_t sub_1E6134E74()
{
  result = qword_1ED075968;
  if (!qword_1ED075968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075968);
  }

  return result;
}

uint64_t sub_1E6134EF4()
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_1E65E3B68();
  v0[4] = __swift_project_value_buffer(v2, qword_1EE2EA2A0);
  sub_1E65E3B38();
  v3 = OBJC_IVAR____TtC10Blackbeard14AppCoordinator_legacyEngagementPresentationEnabledOverride;
  v0[5] = OBJC_IVAR____TtC10Blackbeard14AppCoordinator_legacyEngagementPresentationEnabledOverride;
  *(v1 + v3) = 0;
  v4 = *(v1 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_rootViewController);
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_1E6135040;

  return sub_1E6031D3C(v4);
}

uint64_t sub_1E6135040()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6135174, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1E6135174()
{
  v16 = v0;
  v1 = v0[7];
  *(v0[3] + v0[5]) = 1;
  v2 = v1;
  v3 = sub_1E65E3B48();
  v4 = sub_1E65E6328();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[7];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136446210;
    v0[2] = v5;
    v8 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
    v9 = sub_1E65E5CE8();
    v11 = sub_1E5DFD4B0(v9, v10, &v15);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1E5DE9000, v3, v4, "Unable to present engagement message: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1E694F1C0](v7, -1, -1);
    MEMORY[0x1E694F1C0](v6, -1, -1);
  }

  else
  {
    v12 = v0[7];
  }

  v13 = v0[1];

  return v13();
}

uint64_t AppCoordinator.allowsModalMessageDisplay.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A30, &qword_1E65EEA70);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v25 - v3;
  v5 = type metadata accessor for NavigationControllerRoutingContext(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (v0 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_router);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_router), *(v0 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_router + 24));
  swift_getKeyPath();

  sub_1E65E4EC8();

  v10 = v26;
  if (v26 == 6)
  {
    goto LABEL_4;
  }

  v11 = v25;
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  v25 = v11;
  v26 = v10;
  sub_1E6335B2C(&v25, v4);
  sub_1E5E07DA0(v11, v10);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1E6135780(v4);
LABEL_4:
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v12 = sub_1E65E3B68();
    __swift_project_value_buffer(v12, qword_1EE2EA2A0);
    v13 = sub_1E65E3B48();
    v14 = sub_1E65E6338();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1E5DE9000, v13, v14, "No Routing Context, not allowing modal message display", v15, 2u);
      MEMORY[0x1E694F1C0](v15, -1, -1);
    }

    return 0;
  }

  sub_1E61357E8(v4, v8);
  v17 = [*v8 viewControllers];
  sub_1E5DEF094();
  v18 = sub_1E65E5F18();

  if (v18 >> 62)
  {
    v19 = sub_1E65E67C8();
  }

  else
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v19 > 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = *(v1 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_legacyEngagementPresentationEnabledOverride);
  }

  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v20 = sub_1E65E3B68();
  __swift_project_value_buffer(v20, qword_1EE2EA2A0);
  v21 = sub_1E65E3B48();
  v22 = sub_1E65E6338();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 67109120;
    *(v23 + 4) = v16;
    _os_log_impl(&dword_1E5DE9000, v21, v22, "Allows Modal Message Display: %{BOOL}d", v23, 8u);
    MEMORY[0x1E694F1C0](v23, -1, -1);
  }

  sub_1E613584C(v8);
  return v16;
}

void *sub_1E613574C()
{
  v1 = *(v0 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_rootViewController);
  v2 = v1;
  return v1;
}

uint64_t sub_1E6135780(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A30, &qword_1E65EEA70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E61357E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NavigationControllerRoutingContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E613584C(uint64_t a1)
{
  v2 = type metadata accessor for NavigationControllerRoutingContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E61358C0(void *a1, uint64_t a2, int a3, uint64_t a4, void *a5)
{
  v65 = a5;
  v61 = a4;
  LODWORD(v62) = a3;
  v69 = a2;
  v6 = sub_1E65D76F8();
  v58 = *(v6 - 8);
  v59 = v6;
  v60 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v57 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073940, &qword_1E65EDCC8);
  v55 = *(v8 - 8);
  v71 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v68 = &v50 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077DE0, &unk_1E65FAB60);
  v66 = *(v10 - 8);
  v67 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v72 = &v50 - v11;
  v12 = type metadata accessor for AppComposer(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075970, &qword_1E65F2460);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077DF0, &unk_1E65FAB70);
  v64 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v56 = &v50 - v17;
  v63 = *a1;
  sub_1E5E1DEAC(a1, v15);
  v18 = *(v13 + 80);
  v19 = ((v18 + 16) & ~v18) + v14;
  v20 = (v18 + 16) & ~v18;
  v21 = v18 | 7;
  v22 = swift_allocObject();
  sub_1E5E1FA80(v15, v22 + v20);
  v51 = a1;
  sub_1E5E1DEAC(a1, v15);
  v52 = v19;
  v53 = v21;
  v23 = swift_allocObject();
  v54 = v20;
  sub_1E5E1FA80(v15, v23 + v20);
  sub_1E5E1DEAC(a1, v15);
  v24 = swift_allocObject();
  sub_1E5E1FA80(v15, v24 + v20);
  sub_1E604BABC();
  sub_1E65DEB88();
  sub_1E65DE8F8();
  v25 = v69;
  sub_1E5DFD1CC(v69, v68, &qword_1ED073940, &qword_1E65EDCC8);
  v27 = v57;
  v26 = v58;
  v28 = v59;
  (*(v58 + 16))(v57, v61, v59);
  v29 = *(v55 + 80);
  v30 = (v29 + 16) & ~v29;
  v31 = v30 + v71;
  v61 = v29 | 7;
  v32 = (*(v26 + 80) + v30 + v71 + 1) & ~*(v26 + 80);
  v33 = swift_allocObject();
  v34 = v68;
  sub_1E5FAB460(v68, v33 + v30, &qword_1ED073940, &qword_1E65EDCC8);
  *(v33 + v31) = v62;
  (*(v26 + 32))(v33 + v32, v27, v28);
  sub_1E5DFD1CC(v25, v34, &qword_1ED073940, &qword_1E65EDCC8);
  v35 = swift_allocObject();
  sub_1E5FAB460(v34, v35 + v30, &qword_1ED073940, &qword_1E65EDCC8);
  type metadata accessor for AppFeature(0);
  sub_1E61377BC(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  v62 = sub_1E613739C();
  sub_1E65E4DE8();
  v36 = v50;
  sub_1E5E1DEAC(v51, v50);
  v37 = v65[9];
  v60 = v65[7];
  v61 = v37;
  v38 = v65;
  sub_1E5DFD1CC(v69, v34, &qword_1ED073940, &qword_1E65EDCC8);
  v39 = (v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  sub_1E5E1FA80(v36, v40 + v54);
  v41 = (v40 + v39);
  v42 = v38[3];
  v41[2] = v38[2];
  v41[3] = v42;
  v41[4] = v38[4];
  v43 = v38[1];
  *v41 = *v38;
  v41[1] = v43;
  sub_1E5FAB460(v34, v40 + ((v39 + v29 + 80) & ~v29), &qword_1ED073940, &qword_1E65EDCC8);
  swift_unknownObjectRetain();

  sub_1E65E4CC8();
  v44 = swift_allocObject();
  *(v44 + 16) = sub_1E61375D0;
  *(v44 + 24) = v40;

  v45 = v56;
  v46 = v72;
  v47 = v70;
  v48 = sub_1E65E4F08();

  (*(v66 + 8))(v46, v67);
  (*(v64 + 8))(v45, v47);
  return v48;
}

uint64_t sub_1E613609C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v48 = a3;
  v46 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
  v4 = MEMORY[0x1EEE9AC00](v52);
  v53 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v50 = v43 - v6;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AC0, &unk_1E65F4300);
  v47 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v8 = v43 - v7;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AC8, &qword_1E65EC488);
  v43[0] = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v10 = v43 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = v43 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = v43 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = v43 - v21;
  swift_getKeyPath();
  v51 = a1;
  sub_1E65E4EC8();

  sub_1E5FAB460(v22, v20, &unk_1ED077CC0, &unk_1E65F2610);
  v43[1] = v11;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    v44 = 0;
LABEL_7:
    v24 = v53;
    goto LABEL_9;
  }

  if (!EnumCaseMultiPayload)
  {
    v44 = *v20;
    goto LABEL_7;
  }

  v24 = v53;
  if (EnumCaseMultiPayload == 1)
  {
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
    v44 = *v20;
    v26 = sub_1E65D76A8();
    (*(*(v26 - 8) + 8))(&v20[v25], v26);
  }

  else
  {
    sub_1E5DFE50C(v20, &unk_1ED077CC0, &unk_1E65F2610);
    v44 = 0;
  }

LABEL_9:
  swift_getKeyPath();
  sub_1E65E4EC8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073940, &qword_1E65EDCC8);
  sub_1E65DE488();
  v27 = v57;
  v28 = v58;
  v29 = v59;
  v54 = v57;
  v55 = v58;
  v56 = 0;
  v30 = v45;
  sub_1E65E4D78();
  sub_1E6001C2C(v27, v28, v29);
  (*(v43[0] + 8))(v10, v30);
  v31 = v49;
  sub_1E65E4C98();
  (*(v47 + 8))(v8, v31);
  sub_1E5FAB460(v17, v14, &unk_1ED077CC0, &unk_1E65F2610);
  v32 = swift_getEnumCaseMultiPayload();
  if (v32 > 2)
  {
    v35 = 0;
LABEL_15:
    v33 = v44;
    goto LABEL_17;
  }

  if (!v32)
  {
    v35 = *v14;
    goto LABEL_15;
  }

  v33 = v44;
  if (v32 == 1)
  {
    v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
    v35 = *v14;
    v36 = sub_1E65D76A8();
    (*(*(v36 - 8) + 8))(&v14[v34], v36);
  }

  else
  {
    sub_1E5DFE50C(v14, &unk_1ED077CC0, &unk_1E65F2610);
    v35 = 0;
  }

LABEL_17:
  swift_getKeyPath();
  v37 = v50;
  sub_1E65E4EC8();

  sub_1E5FAB460(v37, v24, &unk_1ED077CD0, &unk_1E65F42F0);
  v38 = swift_getEnumCaseMultiPayload();
  if (v38 <= 2 && v38)
  {
    if (v38 == 1)
    {
      v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330) + 48);
      v40 = sub_1E65D76A8();
      (*(*(v40 - 8) + 8))(v24 + v39, v40);
    }

    else
    {
      sub_1E5DFE50C(v24, &unk_1ED077CD0, &unk_1E65F42F0);
    }
  }

  if ((v33 & v35) == 1)
  {
    LOBYTE(v57) = 1;
    v41 = sub_1E65DE538();
  }

  else
  {
    v41 = 0;
  }

  return v41 & 1;
}

uint64_t sub_1E61366EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1E5DFD1CC(a1, &v5 - v3, &unk_1ED077CD0, &unk_1E65F42F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075980, &qword_1E65F2490);
  return sub_1E65DE818();
}

uint64_t sub_1E61367AC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = *a1;
  *(v2 + 64) = *(a1 + 16);
  return MEMORY[0x1EEE6DFA0](sub_1E61367DC, 0, 0);
}

uint64_t sub_1E61367DC()
{
  if (*(v0 + 64))
  {
    v1 = sub_1E65DE4C8();
    sub_1E61377BC(&qword_1ED072AE8, MEMORY[0x1E699CAB0], MEMORY[0x1E699CAB8]);
    swift_allocError();
    (*(*(v1 - 8) + 104))(v2, *MEMORY[0x1E699CAA0], v1);
    swift_willThrow();
    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 32);
    type metadata accessor for AppComposer(0);
    type metadata accessor for AppEnvironment(0);
    v6 = AssetService.downloadAssetBundleOnCurrentDevice.getter();
    *(v0 + 40) = v7;
    v10 = (v6 + *v6);
    v8 = swift_task_alloc();
    *(v0 + 48) = v8;
    *v8 = v0;
    v8[1] = sub_1E6001108;
    v9 = *(v0 + 24);

    return v10(v9, v5);
  }
}

uint64_t sub_1E61369E4(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E61367AC(a1, v1 + v5);
}

uint64_t sub_1E6136ABC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = *a1;
  *(v2 + 64) = *(a1 + 16);
  return MEMORY[0x1EEE6DFA0](sub_1E6136AEC, 0, 0);
}

uint64_t sub_1E6136AEC()
{
  if (*(v0 + 64))
  {
    v1 = sub_1E65DE4C8();
    sub_1E61377BC(&qword_1ED072AE8, MEMORY[0x1E699CAB0], MEMORY[0x1E699CAB8]);
    swift_allocError();
    (*(*(v1 - 8) + 104))(v2, *MEMORY[0x1E699CAA0], v1);
    swift_willThrow();
    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 32);
    type metadata accessor for AppComposer(0);
    type metadata accessor for AppEnvironment(0);
    v6 = AssetService.cancelAssetBundleOnCurrentDevice.getter();
    *(v0 + 40) = v7;
    v10 = (v6 + *v6);
    v8 = swift_task_alloc();
    *(v0 + 48) = v8;
    *v8 = v0;
    v8[1] = sub_1E6136CF4;
    v9 = *(v0 + 24);

    return v10(v9, v5);
  }
}

uint64_t sub_1E6136CF4()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1E6137804;
  }

  else
  {
    v2 = sub_1E5F9F084;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6136E34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073940, &qword_1E65EDCC8) - 8);
  v6 = ((*(v5 + 80) + 16) & ~*(v5 + 80)) + *(v5 + 64);
  v7 = *(sub_1E65D76F8() - 8);
  return sub_1E6386E54(a1, *(v2 + v6), v2 + ((v6 + *(v7 + 80) + 1) & ~*(v7 + 80)), a2);
}

uint64_t sub_1E6136F20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = a2;
  v26[1] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AB0, &qword_1E65EC480);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v35 = v26 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AB8, &unk_1E65F84D0);
  v32 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v26[4] = v26 - v16;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073940, &qword_1E65EDCC8);
  v31 = a3;
  sub_1E65DE488();
  v28 = v43;
  v29 = v42;
  v27 = v44;
  sub_1E65DE488();
  v18 = v39;
  v17 = v40;
  v19 = v41;
  v33 = type metadata accessor for AppState(0);
  v26[3] = *(v33 + 116);
  v36 = v18;
  v37 = v17;
  v38 = v19;
  v26[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AD8, &unk_1E65F84F0);
  sub_1E65E4D78();
  sub_1E6001C2C(v18, v17, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075980, &qword_1E65F2490);
  sub_1E65DE808();
  sub_1E5DFD1CC(v11, v9, &unk_1ED077CD0, &unk_1E65F42F0);
  sub_1E65E4C78();
  sub_1E5DF23E0();
  sub_1E65E4C88();
  sub_1E5DFE50C(v11, &unk_1ED077CD0, &unk_1E65F42F0);
  (*(v32 + 8))(v15, v12);
  v39 = v29;
  v40 = v28;
  v41 = v27;
  sub_1E65E4D88();
  sub_1E65DE488();
  v20 = v42;
  v21 = v43;
  v22 = v44;
  v23 = v35;
  sub_1E65DE848();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AE0, &qword_1E65F9E00);
  (*(*(v24 - 8) + 56))(v23, 0, 1, v24);
  return sub_1E64076CC(v23, v20, v21, v22);
}

uint64_t sub_1E6137310(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073940, &qword_1E65EDCC8) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1E6136F20(a1, a2, v6);
}

unint64_t sub_1E613739C()
{
  result = qword_1ED075978;
  if (!qword_1ED075978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED077DF0, &unk_1E65FAB70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075978);
  }

  return result;
}

uint64_t sub_1E6137400(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17 - v7;
  v19 = *a1;
  v18 = *(a1 + 2);
  HIDWORD(v17) = *(a1 + 6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073940, &qword_1E65EDCC8);
  sub_1E65DE488();
  v9 = v20;
  v10 = v21;
  v11 = sub_1E65E60A8();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v13 = *a4;
  *(v12 + 72) = *(a4 + 1);
  v14 = *(a4 + 3);
  *(v12 + 88) = *(a4 + 2);
  *(v12 + 104) = v14;
  *(v12 + 120) = *(a4 + 4);
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  v15 = v19;
  *(v12 + 36) = v18;
  *(v12 + 32) = v15;
  *(v12 + 38) = BYTE4(v17);
  *(v12 + 40) = v9;
  *(v12 + 48) = v10;
  *(v12 + 56) = v13;
  swift_unknownObjectRetain();

  sub_1E6059EAC(0, 0, v8, &unk_1E65F2488, v12);
}

uint64_t sub_1E61375D0(unsigned int *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AppComposer(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073940, &qword_1E65EDCC8);

  return sub_1E6137400(a1, a2, v2 + v6, (v2 + v7));
}

uint64_t sub_1E61376D0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32) | (*(v1 + 36) << 32) | (*(v1 + 38) << 48);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFA78C;

  return sub_1E621BC24(a1, v4, v5, v6, v7, v8, v1 + 56);
}

uint64_t sub_1E61377BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E6137808(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    sub_1E65DF028();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1E613786C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppComposer(0);
  v5 = (a1 + v4[9]);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(a1 + v4[5] + 8);
  sub_1E613798C(a1 + v4[10], &v15);
  sub_1E5DF650C(a2, &v16);
  v13[0] = v6;
  v13[1] = v7;
  v14 = v8;
  type metadata accessor for AppEnvironment(0);
  sub_1E5FA9D34(v6, v7);
  QueueView = InteropService.makeUpNextQueueViewController.getter();
  v12[3] = &type metadata for CatalogPageRoutingContextNavigator;
  v12[4] = sub_1E61379FC();
  v12[0] = swift_allocObject();
  sub_1E6137A50(v13, v12[0] + 16);
  v10 = QueueView(v12, v6, v7);

  sub_1E6137AAC(v13);
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v10;
}

uint64_t sub_1E613798C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED074320, &unk_1E65EA730);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E61379FC()
{
  result = qword_1ED077840;
  if (!qword_1ED077840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077840);
  }

  return result;
}

uint64_t sub_1E6137B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for AppComposer(0);
  v9 = (a1 + v8[9]);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(a1 + v8[5] + 8);
  sub_1E613798C(a1 + v8[10], &v19);
  sub_1E5DF650C(a4, &v20);
  v17[0] = v10;
  v17[1] = v11;
  v18 = v12;
  type metadata accessor for AppEnvironment(0);
  sub_1E5FA9D34(v10, v11);
  v13 = InteropService.makeModalityDetailViewControllerWithIdentifier.getter();
  v16[3] = &type metadata for CatalogPageRoutingContextNavigator;
  v16[4] = sub_1E61379FC();
  v16[0] = swift_allocObject();
  sub_1E6137A50(v17, v16[0] + 16);
  v14 = v13(a2, a3, v16, v10, v11);

  sub_1E6137AAC(v17);
  __swift_destroy_boxed_opaque_existential_1(v16);
  return v14;
}

uint64_t sub_1E6137C68@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v52 = a2;
  v49 = a1;
  v57 = a3;
  v5 = type metadata accessor for AppComposer(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5 - 8);
  v51 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = v46 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v46 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = v46 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = v46 - v18;
  v56 = sub_1E65DF4A8();
  v54 = *(v56 - 8);
  v55 = *(v54 + 64);
  v20 = MEMORY[0x1EEE9AC00](v56);
  v53 = v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v58 = v46 - v22;
  v50 = v19;
  sub_1E5E1DEAC(v3, v19);
  v23 = *(v6 + 80);
  v24 = (v23 + 16) & ~v23;
  v25 = v23 | 7;
  v48 = swift_allocObject();
  sub_1E5E1E1E8(v19, v48 + v24, type metadata accessor for AppComposer);
  sub_1E5E1DEAC(v4, v17);
  v47 = swift_allocObject();
  sub_1E5E1E1E8(v17, v47 + v24, type metadata accessor for AppComposer);
  sub_1E5E1DEAC(v4, v14);
  v26 = swift_allocObject();
  sub_1E5E1E1E8(v14, v26 + v24, type metadata accessor for AppComposer);
  sub_1E5E1DEAC(v4, v11);
  v46[1] = v25;
  v27 = swift_allocObject();
  sub_1E5E1E1E8(v11, v27 + v24, type metadata accessor for AppComposer);
  sub_1E5DF650C(v52, v59);
  v28 = swift_allocObject();
  sub_1E5DF599C(v59, v28 + 16);
  v29 = v51;
  sub_1E5E1DEAC(v4, v51);
  v30 = swift_allocObject();
  sub_1E5E1E1E8(v29, v30 + v24, type metadata accessor for AppComposer);
  v31 = v58;
  sub_1E65DF498();
  v32 = v50;
  sub_1E5E1DEAC(v4, v50);
  v33 = v53;
  v34 = v54;
  v35 = v56;
  (*(v54 + 16))(v53, v31, v56);
  v36 = v49;
  v46[0] = *v49;
  v37 = v49[5];
  v47 = v49[3];
  v48 = v37;
  v38 = v49[9];
  v51 = v49[7];
  v52 = v38;
  v39 = (v24 + v7 + *(v34 + 80)) & ~*(v34 + 80);
  v40 = (v55 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  sub_1E5E1E1E8(v32, v41 + v24, type metadata accessor for AppComposer);
  (*(v34 + 32))(v41 + v39, v33, v35);
  v42 = (v41 + v40);
  v43 = v36[3];
  v42[2] = v36[2];
  v42[3] = v43;
  v42[4] = v36[4];
  v44 = v36[1];
  *v42 = *v36;
  v42[1] = v44;
  swift_unknownObjectRetain();

  sub_1E65DF298();
  return (*(v34 + 8))(v58, v35);
}

uint64_t sub_1E6138194(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074130, &qword_1E65EFAA8);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6138260, 0, 0);
}

uint64_t sub_1E6138260()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = BookmarkService.makeBookmarkUpdatedStream.getter();
  v0[9] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_1E613837C;
  v4 = v0[8];

  return v6(v4);
}

uint64_t sub_1E613837C()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6138494, 0, 0);
}

uint64_t sub_1E6138494()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = v0[4];
  v4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0759C8, &qword_1E65F25F8);
  v5 = sub_1E5FED46C(&qword_1ED0759D0, &qword_1ED074130, &qword_1E65EFAA8, MEMORY[0x1E69E86A0]);
  v0[2] = v3;
  v0[3] = v5;
  v4[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v4);
  sub_1E65E6188();
  (*(v2 + 8))(v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E61385BC(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E6138194(a1, v1 + v5);
}

uint64_t sub_1E6138698(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E61386B8, 0, 0);
}

uint64_t sub_1E61386B8()
{
  v1 = v0[2];
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v2 = CatalogService.makeCatalogUpdatedStream.getter();
  v0[4] = v3;
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v1[4] = sub_1E5FED46C(&qword_1EE2D4738, &qword_1ED072840, &qword_1E65EBE88, MEMORY[0x1E69E86A0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v7 = (v2 + *v2);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1E6138840;

  return v7(boxed_opaque_existential_1);
}

uint64_t sub_1E6138840()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1E5FE4FD8;
  }

  else
  {
    v2 = sub_1E5FA1DB4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6138954(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E6138698(a1, v1 + v5);
}

uint64_t sub_1E6138A30(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for AppComposer(0);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v2[6] = *(v4 + 64);
  v2[7] = swift_task_alloc();
  v2[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073CF0, &qword_1E65EECD8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6138B34, 0, 0);
}

uint64_t sub_1E6138B34()
{
  type metadata accessor for AppEnvironment(0);
  v1 = AssetService.makeAssetBundleUpdatedStream.getter();
  v0[10] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1E6138C4C;
  v4 = v0[9];

  return v6(v4);
}

uint64_t sub_1E6138C4C()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1E6138F18;
  }

  else
  {
    v2 = sub_1E6138D7C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6138D7C()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[2];
  sub_1E5E1DEAC(v0[3], v1);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_1E5E1E1E8(v1, v5 + v4, type metadata accessor for AppComposer);
  v3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0759B8, &qword_1E65F25F0);
  v3[4] = sub_1E5FED46C(&qword_1ED0759C0, &qword_1ED0759B8, &qword_1E65F25F0, MEMORY[0x1E69E88C0]);
  __swift_allocate_boxed_opaque_existential_1(v3);
  sub_1E5FED46C(&qword_1EE2D47C8, &qword_1ED073CF0, &qword_1E65EECD8, MEMORY[0x1E69E86A0]);
  sub_1E65E6BB8();

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E6138F18()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6138F88(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E6138A30(a1, v1 + v5);
}

uint64_t sub_1E6139064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1E6139084, 0, 0);
}

uint64_t sub_1E6139084()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = AssetService.queryCompletedAssetBundleCountOnCurrentDevice.getter();
  *(v0 + 32) = v2;
  v5 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_1E6139198;

  return v5();
}

uint64_t sub_1E6139198(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v5 = sub_1E61392F4;
  }

  else
  {

    *(v4 + 56) = a1;
    v5 = sub_1E61392C8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E61392C8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 48) != 0;
  *v1 = *(v0 + 56);
  *(v1 + 8) = v2;
  return (*(v0 + 8))();
}

uint64_t sub_1E61392F4()
{

  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = sub_1E65E3B68();
  __swift_project_value_buffer(v2, qword_1EE2EA2A0);
  v3 = v1;
  v4 = sub_1E65E3B48();
  v5 = sub_1E65E6328();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[6];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1E5DE9000, v4, v5, "[LibraryComposer] Failed querying asset bundle count on current device with error: %@", v8, 0xCu);
    sub_1E5DFE50C(v9, &unk_1ED072130, &qword_1E65EA840);
    MEMORY[0x1E694F1C0](v9, -1, -1);
    MEMORY[0x1E694F1C0](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[2];
  v13 = v0[6] != 0;
  *v12 = 0;
  *(v12 + 8) = v13;
  v14 = v0[1];

  return v14();
}

uint64_t sub_1E61394B8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for AppComposer(0);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v2[6] = *(v4 + 64);
  v2[7] = swift_task_alloc();
  v2[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075998, &qword_1E65F25C0);
  v2[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E61395BC, 0, 0);
}

uint64_t sub_1E61395BC()
{
  type metadata accessor for AppEnvironment(0);
  v1 = BookmarkService.makePlaylistUpdatedStream.getter();
  v0[10] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1E61396D4;
  v4 = v0[9];

  return v6(v4);
}

uint64_t sub_1E61396D4()
{

  return MEMORY[0x1EEE6DFA0](sub_1E61397EC, 0, 0);
}

uint64_t sub_1E61397EC()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[2];
  sub_1E5E1DEAC(v0[3], v1);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_1E5E1E1E8(v1, v5 + v4, type metadata accessor for AppComposer);
  v3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0759A0, &qword_1E65F25D8);
  v3[4] = sub_1E5FED46C(&qword_1ED0759A8, &qword_1ED0759A0, &qword_1E65F25D8, MEMORY[0x1E69E88C0]);
  __swift_allocate_boxed_opaque_existential_1(v3);
  sub_1E5FED46C(&qword_1ED0759B0, &qword_1ED075998, &qword_1E65F25C0, MEMORY[0x1E69E86A0]);
  sub_1E65E6BB8();

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E6139988(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E61394B8(a1, v1 + v5);
}

uint64_t sub_1E6139A64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1E6139A84, 0, 0);
}

uint64_t sub_1E6139A84()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = BookmarkService.queryPlaylistCount.getter();
  *(v0 + 32) = v2;
  v5 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_1E6139B98;

  return v5();
}

uint64_t sub_1E6139B98(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v5 = sub_1E6139CC8;
  }

  else
  {

    *(v4 + 56) = a1;
    v5 = sub_1E613BA24;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E6139CC8()
{

  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = sub_1E65E3B68();
  __swift_project_value_buffer(v2, qword_1EE2EA2A0);
  v3 = v1;
  v4 = sub_1E65E3B48();
  v5 = sub_1E65E6328();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[6];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1E5DE9000, v4, v5, "[LibraryComposer] Failed querying playlist count with error: %@", v8, 0xCu);
    sub_1E5DFE50C(v9, &unk_1ED072130, &qword_1E65EA840);
    MEMORY[0x1E694F1C0](v9, -1, -1);
    MEMORY[0x1E694F1C0](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[2];
  v13 = v0[6] != 0;
  *v12 = 0;
  *(v12 + 8) = v13;
  v14 = v0[1];

  return v14();
}

uint64_t sub_1E6139E8C(char a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 73) = a1;
  *(v2 + 24) = type metadata accessor for RouteSource(0);
  *(v2 + 32) = swift_task_alloc();
  *(v2 + 40) = type metadata accessor for RouteDestination(0);
  *(v2 + 48) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6139F54, 0, 0);
}

uint64_t sub_1E6139F54()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  v5 = *(v0 + 73);
  v7 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v7);
  swift_storeEnumTagMultiPayload();
  *v1 = v5;
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();
  sub_1E5E1E1E8(v3, &v1[*(v2 + 20)], type metadata accessor for RouteSource);
  *&v1[*(v2 + 24)] = MEMORY[0x1E69E7CD0];
  sub_1E600F5B0((v0 + 72));
  v8 = swift_task_alloc();
  *(v0 + 56) = v8;
  *v8 = v0;
  v8[1] = sub_1E613A0A4;
  v9 = *(v0 + 48);

  return RoutingContext.appendDestination(_:priority:)(v9, (v0 + 72), v7, v6);
}

uint64_t sub_1E613A0A4()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  *(v3 + 64) = v0;

  sub_1E60111F8(v2);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E613A218, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1E613A218()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E613A288(char a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E6139E8C(a1, v1 + 16);
}

uint64_t sub_1E613A320(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v5 = *(type metadata accessor for AppComposer(0) + 20);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E60ABB70;

  return sub_1E613A4A8(v4, a2 + v5);
}

uint64_t sub_1E613A3D0(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5FE99E8;

  return sub_1E613A320(a1, v1 + v5);
}

uint64_t sub_1E613A4A8(char a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  *(v3 + 104) = a1;
  *(v3 + 32) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072910, &qword_1E65EC030);
  *(v3 + 40) = swift_task_alloc();
  *(v3 + 48) = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072918, &qword_1E65EC038);
  *(v3 + 56) = v4;
  *(v3 + 64) = *(v4 - 8);
  *(v3 + 72) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E613A5C0, 0, 0);
}

uint64_t sub_1E613A5C0()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v5 = *(v0 + 40);
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E4C98();
  (*(v2 + 8))(v1, v3);
  sub_1E613B7EC(v4, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v9 = **(v0 + 40);
      goto LABEL_8;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v7 = *(v0 + 40);
      v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072930, &qword_1E65EC070) + 48);
      v9 = *v7;
      v10 = sub_1E65D76A8();
      (*(*(v10 - 8) + 8))(v7 + v8, v10);
      goto LABEL_8;
    }

    sub_1E5DFE50C(*(v0 + 40), &qword_1ED072910, &qword_1E65EC030);
  }

  v9 = MEMORY[0x1E69E7CD0];
LABEL_8:
  *(v0 + 80) = v9;
  v11 = swift_task_alloc();
  *(v0 + 88) = v11;
  *v11 = v0;
  v11[1] = sub_1E613A784;
  v12 = *(v0 + 16);
  v13 = *(v0 + 104);

  return sub_1E62305C8(v9, v12, v13);
}

uint64_t sub_1E613A784(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 96) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E613A8F4, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_1E613A8F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E613A97C(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v6 = type metadata accessor for AppComposer(0);
  v32 = *(v6 - 8);
  v7 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v30 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075988, &qword_1E65F2588);
  v35 = *(v8 - 8);
  v36 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v29 = &v27 - v9;
  v10 = sub_1E65DF4A8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1E65DF348();
  v34 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *a1;
  (*(v11 + 16))(v13, a2, v10);
  sub_1E65DF338();
  type metadata accessor for AppFeature(0);
  sub_1E613B47C(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  v27 = sub_1E613B47C(&qword_1ED075990, MEMORY[0x1E699E5E0], MEMORY[0x1E699E5D8]);
  sub_1E65E4DE8();
  v15 = v30;
  sub_1E5E1DEAC(a1, v30);
  v16 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v17 = swift_allocObject();
  sub_1E5E1E1E8(v15, v17 + v16, type metadata accessor for AppComposer);
  v18 = (v17 + ((v7 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  v19 = *(a3 + 3);
  v18[2] = *(a3 + 2);
  v18[3] = v19;
  v18[4] = *(a3 + 4);
  v20 = *(a3 + 1);
  *v18 = *a3;
  v18[1] = v20;
  swift_unknownObjectRetain();

  sub_1E65E4CC8();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1E613B63C;
  *(v21 + 24) = v17;

  v22 = v31;
  v24 = v28;
  v23 = v29;
  v25 = sub_1E65E4F08();

  (*(v35 + 8))(v23, v36);
  (*(v34 + 8))(v22, v24);
  return v25;
}

uint64_t sub_1E613AE24()
{
  v1 = *(type metadata accessor for AppComposer(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_1E65DF4A8() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E613A97C((v0 + v2), v0 + v5, v6);
}

uint64_t sub_1E613AF1C@<X0>(uint64_t a2@<X8>)
{
  v30 = a2;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072910, &qword_1E65EC030);
  v2 = MEMORY[0x1EEE9AC00](v28);
  v29 = (&v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v2);
  v27 = &v26 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = sub_1E65D7848();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E65E07B8();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v16 = sub_1E65DF328();
  MEMORY[0x1EEE9AC00](v16 - 8);
  type metadata accessor for AppState(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  sub_1E65E0668();
  sub_1E65DF318();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  sub_1E65E4C98();
  sub_1E5E1F544(v10);
  sub_1E5DFE50C(v7, &qword_1ED071F78, &unk_1E65EA3F0);
  v17 = *(v12 + 48);
  if (v17(v10, 1, v11) == 1)
  {
    sub_1E65D77C8();
    if (v17(v10, 1, v11) != 1)
    {
      sub_1E5DFE50C(v10, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074BD8, &qword_1E65F10B0);
  sub_1E65DF5A8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072918, &qword_1E65EC038);
  v18 = v27;
  sub_1E65E4C98();
  v19 = v29;
  sub_1E613B7EC(v18, v29);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_11;
  }

  if (!EnumCaseMultiPayload)
  {
    v22 = *v19;
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1E5DFE50C(v19, &qword_1ED072910, &qword_1E65EC030);
LABEL_11:
    v22 = MEMORY[0x1E69E7CD0];
    goto LABEL_12;
  }

  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072930, &qword_1E65EC070) + 48);
  v22 = *v19;
  v23 = sub_1E65D76A8();
  (*(*(v23 - 8) + 8))(v19 + v21, v23);
LABEL_12:
  v24 = sub_1E60A1F80(v22);

  sub_1E600BD5C(v24);

  return sub_1E65DF308();
}

uint64_t sub_1E613B3EC(uint64_t a1)
{
  v2 = sub_1E65DF2F8();
  v3 = a1 + *(type metadata accessor for AppState(0) + 176);

  *(v3 + 8) = v2;
  sub_1E65DF2E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074BD8, &qword_1E65F10B0);
  return sub_1E65DF5B8();
}

uint64_t sub_1E613B47C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E613B4C4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16 - v7;
  v9 = *a1;
  v10 = a1[1];
  v11 = sub_1E65E60A8();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = v9;
  *(v12 + 40) = v10;
  v13 = *(a4 + 3);
  *(v12 + 80) = *(a4 + 2);
  *(v12 + 96) = v13;
  *(v12 + 112) = *(a4 + 4);
  v14 = *(a4 + 1);
  *(v12 + 48) = *a4;
  *(v12 + 64) = v14;
  swift_unknownObjectRetain();

  sub_1E6059EAC(0, 0, v8, &unk_1E65F2590, v12);
}

uint64_t sub_1E613B63C(uint64_t *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AppComposer(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E613B4C4(a1, a2, v2 + v6, v7);
}

uint64_t sub_1E613B6E8(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v6 = *a1;
  return v4(&v6, a3);
}

uint64_t sub_1E613B728(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFA78C;

  return sub_1E6276534(a1, v4, v5, v6, v7, (v1 + 6));
}

uint64_t sub_1E613B7EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072910, &qword_1E65EC030);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E613B85C(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for AppComposer(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E6139A64(a1, a2, v2 + v7);
}

uint64_t sub_1E613B940(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for AppComposer(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFA78C;

  return sub_1E6139064(a1, a2, v2 + v7);
}

uint64_t sub_1E613BA28()
{
  v1 = *v0;
  v2 = 0x726F577472617473;
  v3 = 0x64616F6C6E776F64;
  v4 = 0x6B72616D6B6F6F62;
  if (v1 != 3)
  {
    v4 = 0x676E6972616873;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6B63617473;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1E613BAC8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E613D12C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E613BAF0(uint64_t a1)
{
  v2 = sub_1E613BE7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E613BB2C(uint64_t a1)
{
  v2 = sub_1E613BE7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutActionsMenuLoadState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0759D8, &unk_1E65F2600);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E613BE7C();
  sub_1E65E6DA8();
  v14 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C8, &unk_1E6605140);
  sub_1E613C610(&qword_1ED0759E8, MEMORY[0x1E6999B20]);
  sub_1E65E6B78();
  if (!v1)
  {
    State = type metadata accessor for WorkoutActionsMenuLoadState(0);
    v13 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
    sub_1E613C6E4(&qword_1ED075A00, MEMORY[0x1E6999B20]);
    sub_1E65E6B78();
    v9[1] = *(State + 24);
    v12 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
    sub_1E613BED0(&qword_1ED075A08, MEMORY[0x1E6999B20]);
    sub_1E65E6B78();
    v11 = 3;
    sub_1E65E6B78();
    v10 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A70, &qword_1E65F2620);
    sub_1E613C754(&qword_1ED075A10, MEMORY[0x1E6999B20]);
    sub_1E65E6B78();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1E613BE7C()
{
  result = qword_1ED0759E0;
  if (!qword_1ED0759E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0759E0);
  }

  return result;
}

uint64_t sub_1E613BED0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED077CD0, &unk_1E65F42F0);
    sub_1E60D1530();
    sub_1E60D1584();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t WorkoutActionsMenuLoadState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A70, &qword_1E65F2620);
  MEMORY[0x1EEE9AC00](v27);
  v26 = &v25 - v3;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
  MEMORY[0x1EEE9AC00](v29);
  v30 = &v25 - v4;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  v5 = MEMORY[0x1EEE9AC00](v31);
  v28 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C8, &unk_1E6605140);
  MEMORY[0x1EEE9AC00](v9);
  v34 = &v25 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075A28, &qword_1E65F2628);
  v32 = *(v11 - 8);
  v33 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  State = type metadata accessor for WorkoutActionsMenuLoadState(0);
  MEMORY[0x1EEE9AC00](State);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E613BE7C();
  v35 = v13;
  v17 = v36;
  sub_1E65E6D98();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v41 = 0;
  sub_1E613C610(&qword_1ED075A30, MEMORY[0x1E6999B30]);
  sub_1E65E6AD8();
  v36 = v16;
  sub_1E5FAB460(v34, v16, &qword_1ED0737C8, &unk_1E6605140);
  v40 = 1;
  sub_1E613C6E4(&qword_1ED075A38, MEMORY[0x1E6999B30]);
  sub_1E65E6AD8();
  sub_1E5FAB460(v8, &v36[State[5]], &unk_1ED077CC0, &unk_1E65F2610);
  v39 = 2;
  sub_1E613BED0(&qword_1ED075A40, MEMORY[0x1E6999B30]);
  v18 = v30;
  v34 = 0;
  sub_1E65E6AD8();
  v19 = a1;
  sub_1E5FAB460(v18, &v36[State[6]], &unk_1ED077CD0, &unk_1E65F42F0);
  v38 = 3;
  v20 = v28;
  sub_1E65E6AD8();
  v21 = v32;
  v22 = v36;
  sub_1E5FAB460(v20, &v36[State[7]], &unk_1ED077CC0, &unk_1E65F2610);
  v37 = 4;
  sub_1E613C754(&qword_1ED075A48, MEMORY[0x1E6999B30]);
  v23 = v26;
  sub_1E65E6AD8();
  (*(v21 + 8))(v35, v33);
  sub_1E5FAB460(v23, v22 + State[8], &unk_1ED077A70, &qword_1E65F2620);
  sub_1E613C828(v22, v25);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return sub_1E613C88C(v22);
}

uint64_t sub_1E613C610(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0737C8, &unk_1E6605140);
    v4 = MEMORY[0x1E699CC08];
    sub_1E5DF22E4(&qword_1ED0759F0, MEMORY[0x1E699CC08], MEMORY[0x1E699CC28]);
    sub_1E5DF22E4(&qword_1ED0759F8, v4, MEMORY[0x1E699CC10]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E613C6E4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED077CC0, &unk_1E65F2610);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E613C754(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED077A70, &qword_1E65F2620);
    v4 = MEMORY[0x1E699CAD0];
    sub_1E5DF22E4(&qword_1ED075A18, MEMORY[0x1E699CAD0], MEMORY[0x1E699CAF0]);
    sub_1E5DF22E4(&qword_1ED075A20, v4, MEMORY[0x1E699CAD8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E613C828(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for WorkoutActionsMenuLoadState(0);
  (*(*(State - 8) + 16))(a2, a1, State);
  return a2;
}

uint64_t sub_1E613C88C(uint64_t a1)
{
  State = type metadata accessor for WorkoutActionsMenuLoadState(0);
  (*(*(State - 8) + 8))(a1, State);
  return a1;
}

uint64_t static WorkoutActionsMenuLoadState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_1E65DE788();
  sub_1E5DF22E4(&qword_1EE2D6880, MEMORY[0x1E699CC08], MEMORY[0x1E699CC20]);
  if ((sub_1E65E4D98() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for WorkoutActionsMenuLoadState(0);
  if ((sub_1E65E4D98() & 1) == 0)
  {
    return 0;
  }

  sub_1E5DF23E0();
  if ((sub_1E65E4D98() & 1) == 0 || (sub_1E65E4D98() & 1) == 0)
  {
    return 0;
  }

  sub_1E65DE508();
  sub_1E5DF22E4(&qword_1EE2D68D8, MEMORY[0x1E699CAD0], MEMORY[0x1E699CAE8]);

  return sub_1E65E4D98();
}

uint64_t WorkoutActionsMenuLoadState.hash(into:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C8, &unk_1E6605140);
  sub_1E5DF22E4(&qword_1EE2D6888, MEMORY[0x1E699CC08], MEMORY[0x1E699CC18]);
  sub_1E65E4DB8();
  type metadata accessor for WorkoutActionsMenuLoadState(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  sub_1E65E4DB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
  sub_1E613CC1C();
  sub_1E65E4DB8();
  sub_1E65E4DB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A70, &qword_1E65F2620);
  sub_1E5DF22E4(&unk_1EE2D68E0, MEMORY[0x1E699CAD0], MEMORY[0x1E699CAE0]);
  return sub_1E65E4DB8();
}

unint64_t sub_1E613CC1C()
{
  result = qword_1EE2D68B8;
  if (!qword_1EE2D68B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D68B8);
  }

  return result;
}

uint64_t WorkoutActionsMenuLoadState.hashValue.getter()
{
  sub_1E65E6D28();
  type metadata accessor for WorkoutActionsMenuLoadState(0);
  sub_1E5DF22E4(&qword_1EE2D82A8, type metadata accessor for WorkoutActionsMenuLoadState, &protocol conformance descriptor for WorkoutActionsMenuLoadState);
  sub_1E65E5B48();
  return sub_1E65E6D78();
}

uint64_t sub_1E613CCF8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C8, &unk_1E6605140);
  sub_1E5DF22E4(&qword_1EE2D6888, MEMORY[0x1E699CC08], MEMORY[0x1E699CC18]);
  sub_1E65E4DB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  sub_1E65E4DB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
  sub_1E613CC1C();
  sub_1E65E4DB8();
  sub_1E65E4DB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A70, &qword_1E65F2620);
  sub_1E5DF22E4(&unk_1EE2D68E0, MEMORY[0x1E699CAD0], MEMORY[0x1E699CAE0]);
  return sub_1E65E4DB8();
}

uint64_t sub_1E613CE80(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1E65DE788();
  sub_1E5DF22E4(&qword_1EE2D6880, MEMORY[0x1E699CC08], MEMORY[0x1E699CC20]);
  if ((sub_1E65E4D98() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1E65E4D98() & 1) == 0)
  {
    return 0;
  }

  sub_1E5DF23E0();
  if ((sub_1E65E4D98() & 1) == 0 || (sub_1E65E4D98() & 1) == 0)
  {
    return 0;
  }

  sub_1E65DE508();
  sub_1E5DF22E4(&qword_1EE2D68D8, MEMORY[0x1E699CAD0], MEMORY[0x1E699CAE8]);

  return sub_1E65E4D98();
}

unint64_t sub_1E613D028()
{
  result = qword_1ED075A50;
  if (!qword_1ED075A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075A50);
  }

  return result;
}

unint64_t sub_1E613D080()
{
  result = qword_1ED075A58;
  if (!qword_1ED075A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075A58);
  }

  return result;
}

unint64_t sub_1E613D0D8()
{
  result = qword_1ED075A60;
  if (!qword_1ED075A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075A60);
  }

  return result;
}

uint64_t sub_1E613D12C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F577472617473 && a2 == 0xEC00000074756F6BLL;
  if (v4 || (sub_1E65E6C18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B63617473 && a2 == 0xE500000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64616F6C6E776F64 && a2 == 0xE800000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6B72616D6B6F6F62 && a2 == 0xE800000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x676E6972616873 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E65E6C18();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1E613D2DC(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 27) = a3;
  *(v3 + 48) = a1;
  *(v3 + 56) = a2;
  *(v3 + 64) = type metadata accessor for RouteSource(0);
  *(v3 + 72) = swift_task_alloc();
  v4 = type metadata accessor for RouteDestination(0);
  *(v3 + 80) = v4;
  *(v3 + 88) = *(v4 - 8);
  *(v3 + 96) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E613D3D0, 0, 0);
}

uint64_t sub_1E613D3D0()
{
  if (*(v0 + 27) > 1u)
  {
    if (*(v0 + 27) == 2)
    {
      return sub_1E65E69D8();
    }
  }

  else if (!*(v0 + 27))
  {
    v1 = *(v0 + 96);
    v2 = *(v0 + 72);
    v3 = *(v0 + 80);
    v4 = *(v0 + 56);
    v5 = *(v0 + 48);
    v7 = v4[3];
    v6 = v4[4];
    __swift_project_boxed_opaque_existential_1(v4, v7);
    swift_storeEnumTagMultiPayload();
    v8 = sub_1E65D76F8();
    (*(*(v8 - 8) + 16))(v1, v5, v8);
    type metadata accessor for RouteResource(0);
    swift_storeEnumTagMultiPayload();
    sub_1E613DB80(v2, v1 + *(v3 + 20));
    *(v1 + *(v3 + 24)) = MEMORY[0x1E69E7CD0];
    sub_1E600F5B0((v0 + 26));
    v9 = swift_task_alloc();
    *(v0 + 104) = v9;
    *v9 = v0;
    v9[1] = sub_1E613D794;
    v10 = *(v0 + 96);

    return RoutingContext.appendDestination(_:priority:)(v10, (v0 + 26), v7, v6);
  }

  v13 = *(v0 + 80);
  v12 = *(v0 + 88);
  v14 = *(v0 + 72);
  v16 = *(v0 + 48);
  v15 = *(v0 + 56);
  v18 = v15[3];
  v17 = v15[4];
  __swift_project_boxed_opaque_existential_1(v15, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072128, &qword_1E65EA828);
  v19 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v20 = swift_allocObject();
  *(v0 + 120) = v20;
  *(v20 + 16) = xmmword_1E65EA670;
  v21 = v20 + v19;
  swift_storeEnumTagMultiPayload();
  v22 = sub_1E65D76F8();
  (*(*(v22 - 8) + 16))(v21, v16, v22);
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();
  sub_1E6094E10(v14, v21 + *(v13 + 20));
  *(v21 + *(v13 + 24)) = MEMORY[0x1E69E7CD0];
  sub_1E613DBE4(v14, type metadata accessor for RouteSource);
  sub_1E611D1C0(v0 + 16);
  v23 = *(v0 + 24);
  *(v0 + 32) = *(v0 + 16);
  *(v0 + 40) = v23;
  sub_1E600F5B0((v0 + 25));
  v24 = swift_task_alloc();
  *(v0 + 128) = v24;
  *v24 = v0;
  v24[1] = sub_1E613D91C;

  return RoutingContext.presentDestinations(_:style:priority:)(v20, (v0 + 32), (v0 + 25), v18, v17);
}

uint64_t sub_1E613D794()
{
  v2 = *(*v1 + 96);
  v3 = *v1;
  *(v3 + 112) = v0;

  sub_1E613DBE4(v2, type metadata accessor for RouteDestination);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E613DAA0, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1E613D91C()
{
  v2 = *v1;
  *(v2 + 136) = v0;

  sub_1E5F94E00(*(v2 + 32), *(v2 + 40));

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E613DB10, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1E613DAA0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E613DB10()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E613DB80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RouteSource(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E613DBE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1E613DC44()
{
  v0 = sub_1E65E5C48();
  v1 = NSSelectorFromString(v0);

  qword_1ED0962A8 = v1;
}

void sub_1E613DC94()
{
  v0 = sub_1E65E5C48();
  v1 = NSSelectorFromString(v0);

  qword_1ED0962B0 = v1;
}

void sub_1E613DCE4()
{
  v0 = sub_1E65E5C48();
  v1 = NSSelectorFromString(v0);

  qword_1ED0962B8 = v1;
}

void sub_1E613DD34()
{
  v0 = sub_1E65E5C48();
  v1 = NSSelectorFromString(v0);

  qword_1ED0962C0 = v1;
}

void sub_1E613DD84()
{
  v0 = sub_1E65E5C48();
  v1 = NSSelectorFromString(v0);

  qword_1ED0962C8 = v1;
}

void sub_1E613DDD4()
{
  v0 = sub_1E65E5C48();
  v1 = NSSelectorFromString(v0);

  qword_1ED0962D0 = v1;
}

void sub_1E613DE24()
{
  v0 = sub_1E65E5C48();
  v1 = NSSelectorFromString(v0);

  qword_1ED0962D8 = v1;
}

void sub_1E613DE74()
{
  v0 = sub_1E65E5C48();
  v1 = NSSelectorFromString(v0);

  qword_1ED0962E0 = v1;
}

void sub_1E613DEC4()
{
  v0 = sub_1E65E5C48();
  v1 = NSSelectorFromString(v0);

  qword_1ED0962E8 = v1;
}

void sub_1E613DF14()
{
  v0 = sub_1E65E5C48();
  v1 = NSSelectorFromString(v0);

  qword_1ED0962F0 = v1;
}

void sub_1E613DF64()
{
  v0 = sub_1E65E5C48();
  v1 = NSSelectorFromString(v0);

  qword_1ED0962F8 = v1;
}

void sub_1E613DFBC()
{
  v0 = sub_1E65E5C48();
  v1 = NSSelectorFromString(v0);

  qword_1ED096300 = v1;
}

uint64_t sub_1E613E010()
{
  result = sub_1E65E5C48();
  qword_1ED096308 = result;
  return result;
}

uint64_t sub_1E613E048()
{
  result = sub_1E65E5C48();
  qword_1ED096310 = result;
  return result;
}

uint64_t sub_1E613E080()
{
  result = sub_1E65E5C48();
  qword_1ED096318 = result;
  return result;
}

uint64_t sub_1E613E0B8()
{
  result = sub_1E65E5C48();
  qword_1ED096320 = result;
  return result;
}

uint64_t sub_1E613E0F0()
{
  result = sub_1E65E5C48();
  qword_1ED096328 = result;
  return result;
}

uint64_t sub_1E613E148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v13;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  sub_1E65D7848();
  v8[8] = swift_task_alloc();
  sub_1E65E5C28();
  v8[9] = swift_task_alloc();
  sub_1E65E6058();
  v8[10] = sub_1E65E6048();
  v10 = sub_1E65E5FC8();
  v8[11] = v10;
  v8[12] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1E613E248, v10, v9);
}

uint64_t sub_1E613E248()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  sub_1E613FAAC();
  sub_1E65E5BA8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_1E65D77A8();
  sub_1E65E5D48();
  v6 = sub_1E65E5C48();
  v7 = [objc_opt_self() systemImageNamed_];

  v8 = swift_allocObject();
  *(v8 + 16) = v3;
  *(v8 + 24) = v2;

  v0[13] = sub_1E65E65C8();
  v11 = (v1 + *v1);
  v9 = swift_task_alloc();
  v0[14] = v9;
  *v9 = v0;
  v9[1] = sub_1E613E4A8;

  return v11();
}

uint64_t sub_1E613E4A8()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = *(v2 + 96);
  v4 = *(v2 + 88);
  if (v0)
  {
    v5 = sub_1E61401D8;
  }

  else
  {
    v5 = sub_1E61401DC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1E613E5E4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4[2] = sub_1E65E6058();
  v4[3] = sub_1E65E6048();
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  v4[4] = v6;
  *v6 = v4;
  v6[1] = sub_1E5F9DFE8;

  return v8();
}

uint64_t sub_1E613E6F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v18 - v11;
  v13 = sub_1E65E60A8();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_1E5DF650C(a3, v19);
  sub_1E65E6058();

  v14 = sub_1E65E6048();
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E85E0];
  v15[2] = v14;
  v15[3] = v16;
  sub_1E5DF599C(v19, (v15 + 4));
  v15[9] = a4;
  v15[10] = a5;
  v15[11] = a1;
  v15[12] = a2;
  sub_1E64B80F8(0, 0, v12, &unk_1E65F2850, v15);
}

uint64_t sub_1E613E864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a7;
  v8[11] = a8;
  v8[8] = a5;
  v8[9] = a6;
  v8[7] = a4;
  sub_1E65D7848();
  v8[12] = swift_task_alloc();
  sub_1E65E5C28();
  v8[13] = swift_task_alloc();
  sub_1E65E6058();
  v8[14] = sub_1E65E6048();
  v10 = sub_1E65E5FC8();
  v8[15] = v10;
  v8[16] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1E613E95C, v10, v9);
}

uint64_t sub_1E613E95C()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  sub_1E613FAAC();
  sub_1E65E5BA8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  sub_1E65D77A8();
  sub_1E65E5D48();
  v5 = sub_1E65E5C48();
  v6 = [objc_opt_self() systemImageNamed_];

  sub_1E5DF650C(v2, v0 + 16);
  v7 = swift_allocObject();
  sub_1E5DF599C((v0 + 16), v7 + 16);
  *(v0 + 136) = sub_1E65E65C8();
  v10 = (v1 + *v1);
  v8 = swift_task_alloc();
  *(v0 + 144) = v8;
  *v8 = v0;
  v8[1] = sub_1E613EBC0;

  return v10();
}

uint64_t sub_1E613EBC0()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 128);
  v4 = *(v2 + 120);
  if (v0)
  {
    v5 = sub_1E613EDF4;
  }

  else
  {
    v5 = sub_1E613ECFC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1E613ECFC()
{
  v1 = v0[17];

  [v1 setAttributes_];
  v2 = v0[17];
  v3 = v0[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1E65EA660;
  *(v4 + 32) = v2;
  v5 = v2;
  v3(v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E613EDF4()
{
  v1 = v0[19];

  v2 = v0[17];
  v3 = v0[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1E65EA660;
  *(v4 + 32) = v2;
  v5 = v2;
  v3(v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E613EEE0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_1E65E60A8();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_1E5DF650C(a2, v12);
  sub_1E65E6058();
  v7 = sub_1E65E6048();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  *(v8 + 16) = v7;
  *(v8 + 24) = v9;
  sub_1E5DF599C(v12, v8 + 32);
  sub_1E6059EAC(0, 0, v5, &unk_1E65F2860, v8);
}

uint64_t sub_1E613F018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for RouteSource(0);
  v4[3] = swift_task_alloc();
  sub_1E65E6058();
  v4[4] = sub_1E65E6048();
  v6 = sub_1E65E5FC8();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E613F0DC, v6, v5);
}

uint64_t sub_1E613F0DC()
{
  v1 = __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  sub_1E6226DB8();
  v2 = *v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_1E6067F04;
  v4 = *(v0 + 24);

  return sub_1E6226DFC(0, 0, 0, 4, v4, v2);
}

uint64_t sub_1E613F1E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v23 - v16;
  v18 = sub_1E65E60A8();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  sub_1E65E6058();

  v19 = sub_1E65E6048();
  v20 = swift_allocObject();
  v21 = MEMORY[0x1E69E85E0];
  v20[2] = v19;
  v20[3] = v21;
  v20[4] = a3;
  v20[5] = a4;
  v20[6] = a5;
  v20[7] = a6;
  v20[8] = a1;
  v20[9] = a2;
  sub_1E64B80F8(0, 0, v17, a8, v20);
}

uint64_t sub_1E613F344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v13;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  sub_1E65D7848();
  v8[8] = swift_task_alloc();
  sub_1E65E5C28();
  v8[9] = swift_task_alloc();
  sub_1E65E6058();
  v8[10] = sub_1E65E6048();
  v10 = sub_1E65E5FC8();
  v8[11] = v10;
  v8[12] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1E613F444, v10, v9);
}

uint64_t sub_1E613F444()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  sub_1E613FAAC();
  sub_1E65E5BA8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_1E65D77A8();
  sub_1E65E5D48();
  v6 = sub_1E65E5C48();
  v7 = [objc_opt_self() systemImageNamed_];

  v8 = swift_allocObject();
  *(v8 + 16) = v3;
  *(v8 + 24) = v2;

  v0[13] = sub_1E65E65C8();
  v11 = (v1 + *v1);
  v9 = swift_task_alloc();
  v0[14] = v9;
  *v9 = v0;
  v9[1] = sub_1E613F6A0;

  return v11();
}

uint64_t sub_1E613F6A0()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = *(v2 + 96);
  v4 = *(v2 + 88);
  if (v0)
  {
    v5 = sub_1E613F8BC;
  }

  else
  {
    v5 = sub_1E613F7DC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1E613F7DC()
{

  v1 = v0[13];
  v2 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1E65EA660;
  *(v3 + 32) = v1;
  v4 = v1;
  v2(v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E613F8BC()
{
  v1 = v0[15];
  v2 = v0[13];

  [v2 setAttributes_];

  v3 = v0[13];
  v4 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1E65EA660;
  *(v5 + 32) = v3;
  v6 = v3;
  v4(v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1E613F9C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1E5DFA78C;

  return sub_1E613F344(a1, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_1E613FAAC()
{
  result = qword_1ED073D38;
  if (!qword_1ED073D38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED073D38);
  }

  return result;
}

uint64_t sub_1E613FAF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16 - v9;
  v11 = sub_1E65E60A8();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_1E65E6058();

  v12 = sub_1E65E6048();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E85E0];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = a2;
  v13[5] = a3;
  sub_1E6059EAC(0, 0, v10, a5, v13);
}

uint64_t sub_1E613FC54(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4[2] = sub_1E65E6058();
  v4[3] = sub_1E65E6048();
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  v4[4] = v6;
  *v6 = v4;
  v6[1] = sub_1E5F9D470;

  return v8();
}

uint64_t sub_1E613FD64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFA78C;

  return sub_1E613FC54(a1, v4, v5, v6);
}

uint64_t sub_1E613FE24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = v1[10];
  v8 = v1[11];
  v9 = v1[12];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1E5DFE6BC;

  return sub_1E613E864(a1, v4, v5, (v1 + 4), v6, v7, v8, v9);
}

uint64_t sub_1E613FF04(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E613F018(a1, v4, v5, v1 + 32);
}

uint64_t sub_1E613FFB4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1E5DFE6BC;

  return sub_1E613E148(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_7Tm_0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E6140118(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E613E5E4(a1, v4, v5, v6);
}

uint64_t sub_1E614020C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E65E43E8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075A68, &qword_1E65F28E8);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20[-v9];
  (*(v5 + 16))(&v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v4);
  v21 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073A38, &unk_1E65F28F0);
  sub_1E6055D14();
  sub_1E65E4AA8();
  sub_1E65E4B58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075A70, &unk_1E65F2900);
  sub_1E5FED46C(&qword_1ED075A78, &qword_1ED075A68, &qword_1E65F28E8, MEMORY[0x1E697D680]);
  sub_1E614088C();
  sub_1E65E4938();
  (*(v8 + 8))(v10, v7);
  LODWORD(v10) = sub_1E65E41D8();
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075A88, &qword_1E65F2910) + 36)) = v10;
  sub_1E65E49A8();
  v13 = sub_1E65E49B8();

  KeyPath = swift_getKeyPath();
  v15 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075A90, &qword_1E65F2948) + 36));
  *v15 = KeyPath;
  v15[1] = v13;
  sub_1E65E4988();
  v16 = sub_1E65E49B8();

  v17 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075A98, &qword_1E65F2980);
  v19 = (a2 + *(result + 36));
  *v19 = v17;
  v19[1] = v16;
  return result;
}

uint64_t sub_1E6140580@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A70, &unk_1E65EC3F0);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = v28 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073A50, &qword_1E6600D50);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = v28 - v8;
  sub_1E65E43C8();
  sub_1E65E44A8();
  sub_1E65E4508();
  v10 = sub_1E65E4538();

  KeyPath = swift_getKeyPath();
  v12 = &v5[*(v3 + 44)];
  *v12 = KeyPath;
  v12[1] = v10;
  sub_1E65E4BA8();
  sub_1E65E3E38();
  sub_1E5FAB460(v5, v9, &qword_1ED072A70, &unk_1E65EC3F0);
  v13 = &v9[*(v7 + 44)];
  v14 = v28[5];
  *(v13 + 4) = v28[4];
  *(v13 + 5) = v14;
  *(v13 + 6) = v28[6];
  v15 = v28[1];
  *v13 = v28[0];
  *(v13 + 1) = v15;
  v16 = v28[3];
  *(v13 + 2) = v28[2];
  *(v13 + 3) = v16;
  v17 = sub_1E65E4488();
  sub_1E65E3BF8();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_1E5FAB460(v9, a1, &qword_1ED073A50, &qword_1E6600D50);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073A38, &unk_1E65F28F0);
  v27 = a1 + *(result + 36);
  *v27 = v17;
  *(v27 + 8) = v19;
  *(v27 + 16) = v21;
  *(v27 + 24) = v23;
  *(v27 + 32) = v25;
  *(v27 + 40) = 0;
  return result;
}

uint64_t sub_1E61407B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075A70, &unk_1E65F2900) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073778, &qword_1E6600D60);
  sub_1E65E3E48();
  *v4 = swift_getKeyPath();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075A68, &qword_1E65F28E8);
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, a1, v5);
}

unint64_t sub_1E614088C()
{
  result = qword_1ED075A80;
  if (!qword_1ED075A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED075A70, &unk_1E65F2900);
    sub_1E5FED46C(&qword_1ED075A78, &qword_1ED075A68, &qword_1E65F28E8, MEMORY[0x1E697D680]);
    sub_1E5FED46C(&unk_1EE2D4BF0, &qword_1ED073778, &qword_1E6600D60, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075A80);
  }

  return result;
}

uint64_t sub_1E61409A0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_1E5FED46C(&qword_1EE2D4BE0, &qword_1ED0738C8, &qword_1E65EDF20, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E6140A50()
{
  result = qword_1ED075AB0;
  if (!qword_1ED075AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED075A88, &qword_1E65F2910);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED075A68, &qword_1E65F28E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED075A70, &unk_1E65F2900);
    sub_1E5FED46C(&qword_1ED075A78, &qword_1ED075A68, &qword_1E65F28E8, MEMORY[0x1E697D680]);
    sub_1E614088C();
    swift_getOpaqueTypeConformance2();
    sub_1E5FED46C(&qword_1EE2D4C20, &qword_1ED073B00, &qword_1E65EDF18, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075AB0);
  }

  return result;
}

char *sub_1E6140BB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v118 = a3;
  v117 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074528, &unk_1E660F4D0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v122 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v121 = &v114 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v120 = &v114 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758B8, &qword_1E65F1FC0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v128 = &v114 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D00, &unk_1E660F460);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v129 = &v114 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752D8, &qword_1E660CC30);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v126 = &v114 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v127 = &v114 - v20;
  v116 = sub_1E65D8BB8();
  MEMORY[0x1EEE9AC00](v116);
  v125 = &v114 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_1E65D9A78();
  v132 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v138 = &v114 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E0, &qword_1E66012E0);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v119 = &v114 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v123 = &v114 - v26;
  v134 = sub_1E65DAC98();
  v140 = *(v134 - 8);
  v27 = MEMORY[0x1EEE9AC00](v134);
  v115 = &v114 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v133 = &v114 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v137 = &v114 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v124 = &v114 - v33;
  v148 = sub_1E65D8668();
  v34 = *(v148 - 8);
  v35 = MEMORY[0x1EEE9AC00](v148);
  v147 = &v114 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v144 = &v114 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v131 = &v114 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v136 = &v114 - v41;
  v42 = sub_1E65D7F88();
  v43 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v114 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = v4;
  v151 = sub_1E65DAE88();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074550, &qword_1E65F0D90);
  sub_1E6141CD4();
  v46 = sub_1E65E5E78();

  if (!*(v46 + 16))
  {

    v65 = 1;
LABEL_17:
    v66 = sub_1E65D8258();
    return (*(*(v66 - 8) + 56))(a4, v65, 1, v66);
  }

  v135 = a4;
  (*(v43 + 16))(v45, v46 + ((*(v43 + 80) + 32) & ~*(v43 + 80)), v42);

  v47 = sub_1E65D7F38();
  v145 = v48;
  v146 = v47;
  (*(v43 + 8))(v45, v42);
  v49 = a2 + 56;
  v50 = 1 << *(a2 + 32);
  v51 = -1;
  if (v50 < 64)
  {
    v51 = ~(-1 << v50);
  }

  v52 = v51 & *(a2 + 56);
  v53 = (v50 + 63) >> 6;
  v143 = (v34 + 32);
  v141 = (v34 + 8);
  *&v142 = v34 + 16;

  v55 = 0;
  v56 = a2;
  v57 = v34;
  if (v52)
  {
    while (1)
    {
      v58 = v55;
LABEL_9:
      v59 = v144;
      v60 = v148;
      (*(v57 + 16))(v144, *(v56 + 48) + *(v57 + 72) * (__clz(__rbit64(v52)) | (v58 << 6)), v148);
      v61 = v57;
      v62 = *(v57 + 32);
      v62(v147, v59, v60);
      if (sub_1E65D8528() == v146 && v63 == v145)
      {

        goto LABEL_20;
      }

      v64 = sub_1E65E6C18();

      if (v64)
      {
        break;
      }

      v52 &= v52 - 1;
      result = (*v141)(v147, v148);
      v55 = v58;
      v57 = v61;
      if (!v52)
      {
        goto LABEL_6;
      }
    }

LABEL_20:

    v67 = v131;
    v68 = v148;
    v62(v131, v147, v148);
    v62(v136, v67, v68);
    v69 = sub_1E65D85E8();
    v70 = v69;
    v71 = v69 + 56;
    v72 = 1 << *(v69 + 32);
    v73 = -1;
    if (v72 < 64)
    {
      v73 = ~(-1 << v72);
    }

    v74 = v73 & *(v69 + 56);
    v75 = (v72 + 63) >> 6;
    v146 = (v140 + 16);
    v147 = (v140 + 32);
    v143 = (v132 + 8);
    v145 = (v140 + 8);

    v76 = 0;
    v142 = xmmword_1E65F29F0;
    v77 = v134;
    v78 = v133;
    v144 = result;
    if (v74)
    {
      while (1)
      {
        v79 = v76;
LABEL_27:
        v80 = *(v70 + 6);
        v81 = v140;
        v82 = v137;
        (*(v140 + 16))(v137, v80 + *(v140 + 72) * (__clz(__rbit64(v74)) | (v79 << 6)), v77);
        v133 = *(v81 + 32);
        (v133)(v78, v82, v77);
        v83 = v138;
        sub_1E65DAC48();
        v84 = sub_1E65D9A68();
        v86 = v85;
        LOBYTE(v82) = v87;
        (*v143)(v83, v139);
        v151 = v84;
        v152 = v86;
        LOBYTE(v82) = v82 & 1;
        v153 = v82;
        v149 = v142;
        v150 = 1;
        sub_1E60EB7D8();
        sub_1E602B668();
        LOBYTE(v83) = sub_1E65D7FD8();
        sub_1E5F87058(v84, v86, v82);
        if (v83)
        {
          break;
        }

        v74 &= v74 - 1;
        result = (*v145)(v78, v77);
        v76 = v79;
        v70 = v144;
        if (!v74)
        {
          goto LABEL_24;
        }
      }

      v89 = v123;
      (v133)(v123, v78, v77);
      v88 = 0;
LABEL_31:
      v90 = v140;
      v91 = *(v140 + 56);
      v91(v89, v88, 1, v77);

      if ((*(v90 + 48))(v89, 1, v77) == 1)
      {
        (*v141)(v136, v148);
        sub_1E5DFE50C(v89, &qword_1ED0734E0, &qword_1E66012E0);
LABEL_15:
        v65 = 1;
        a4 = v135;
      }

      else
      {
        v92 = v124;
        (*v147)(v124, v89, v77);
        v147 = v91;
        sub_1E6141D38();
        v94 = v93;
        v95 = sub_1E6142148();
        v97 = sub_1E614235C(v96, v95, v118);
        v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E70, &unk_1E65ECC20);
        *&v142 = sub_1E65DADF8();
        v98 = *(*(v142 - 8) + 72);
        v140 = (*(*(v142 - 8) + 80) + 32) & ~*(*(v142 - 8) + 80);
        v99 = v140;
        v100 = swift_allocObject();
        *(v100 + 16) = xmmword_1E65EB9E0;
        v101 = (v100 + v99);
        *v101 = v94;
        swift_storeEnumTagMultiPayload();
        *(v101 + v98) = 1;
        swift_storeEnumTagMultiPayload();
        v151 = v100;
        sub_1E5FA9E2C(v97);
        v144 = v151;
        (*v146)(v115, v92, v77);
        sub_1E65DADE8();
        sub_1E65DA088();
        swift_storeEnumTagMultiPayload();
        v102 = sub_1E65D76A8();
        v103 = *(*(v102 - 8) + 56);
        v103(v127, 1, 1, v102);
        v104 = sub_1E65D9098();
        (*(*(v104 - 8) + 56))(v129, 1, 1, v104);
        v103(v126, 1, 1, v102);
        v146 = sub_1E65DAE48();
        v139 = v105;
        v106 = sub_1E65D7BD8();
        (*(*(v106 - 8) + 56))(v128, 1, 1, v106);
        (v147)(v119, 1, 1, v77);
        v107 = sub_1E65D74E8();
        (*(*(v107 - 8) + 56))(v120, 1, 1, v107);
        v108 = sub_1E65D83D8();
        v109 = *(*(v108 - 8) + 56);
        v109(v121, 1, 1, v108);
        v110 = v140;
        v111 = swift_allocObject();
        *(v111 + 16) = xmmword_1E65EA670;
        v112 = (v111 + v110);
        *v112 = sub_1E65DAE78();
        v112[1] = v113;
        swift_storeEnumTagMultiPayload();
        v109(v122, 1, 1, v108);
        a4 = v135;
        sub_1E65D8148();
        (*v145)(v124, v134);
        (*v141)(v136, v148);
        v65 = 0;
      }

      goto LABEL_17;
    }

LABEL_24:
    while (1)
    {
      v79 = v76 + 1;
      if (__OFADD__(v76, 1))
      {
        break;
      }

      if (v79 >= v75)
      {

        v88 = 1;
        v89 = v123;
        goto LABEL_31;
      }

      v74 = *(v71 + 8 * v79);
      ++v76;
      if (v74)
      {
        goto LABEL_27;
      }
    }
  }

  else
  {
LABEL_6:
    while (1)
    {
      v58 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        break;
      }

      if (v58 >= v53)
      {

        goto LABEL_15;
      }

      v52 = *(v49 + 8 * v58);
      ++v55;
      if (v52)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1E6141CD4()
{
  result = qword_1ED074558;
  if (!qword_1ED074558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074550, &qword_1E65F0D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074558);
  }

  return result;
}

uint64_t sub_1E6141D38()
{
  v34 = sub_1E65D8368();
  v0 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v29 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ED075AB8, &qword_1E65F2A30);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v27 - v6;
  v39 = sub_1E65D7F88();
  v8 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1E65D8288();
  v10 = sub_1E65DAE88();
  v11 = v10 + 56;
  v12 = 1 << *(v10 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v10 + 56);
  v15 = (v12 + 63) >> 6;
  v31 = (v0 + 48);
  v32 = v8 + 16;
  v27 = (v0 + 8);
  v28 = (v0 + 32);
  v33 = v8;
  v30 = (v8 + 8);
  v35 = v10;

  v17 = 0;
  v37 = 0;
  v18 = 0.0;
  while (v14)
  {
LABEL_11:
    v20 = v38;
    v21 = (*(v33 + 16))(v38, *(v35 + 48) + *(v33 + 72) * (__clz(__rbit64(v14)) | (v17 << 6)), v39);
    MEMORY[0x1EEE9AC00](v21);
    *(&v27 - 2) = v20;
    v22 = v37;
    sub_1E64102C4(sub_1E6142954, v36, v7);
    v37 = v22;
    sub_1E6142974(v7, v5);
    v23 = v34;
    if ((*v31)(v5, 1, v34) == 1)
    {
      sub_1E5DFE50C(v7, qword_1ED075AB8, &qword_1E65F2A30);
      sub_1E5DFE50C(v5, qword_1ED075AB8, &qword_1E65F2A30);
    }

    else
    {
      v24 = v29;
      (*v28)(v29, v5, v23);
      sub_1E65D8358();
      v26 = v25;
      (*v27)(v24, v23);
      sub_1E5DFE50C(v7, qword_1ED075AB8, &qword_1E65F2A30);
      v18 = v18 + v26;
    }

    v14 &= v14 - 1;
    result = (*v30)(v38, v39);
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v15)
    {
    }

    v14 = *(v11 + 8 * v19);
    ++v17;
    if (v14)
    {
      v17 = v19;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E6142148()
{
  v24 = sub_1E65D7F88();
  v0 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v2 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1E65DAE88();
  v4 = v3 + 56;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 56);
  v8 = (v5 + 63) >> 6;
  v22 = v0 + 8;
  v23 = v0 + 16;
  v25 = v3;

  v10 = 0;
  v20 = 0;
  v21 = 0;
  do
  {
    while (1)
    {
      while (1)
      {
        v11 = v10;
        if (!v7)
        {
          while (1)
          {
            v10 = v11 + 1;
            if (__OFADD__(v11, 1))
            {
              break;
            }

            if (v10 >= v8)
            {
              goto LABEL_17;
            }

            v7 = *(v4 + 8 * v10);
            ++v11;
            if (v7)
            {
              goto LABEL_8;
            }
          }

          __break(1u);
LABEL_19:
          __break(1u);
          return result;
        }

LABEL_8:
        v12 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v13 = v24;
        (*(v0 + 16))(v2, *(v25 + 48) + *(v0 + 72) * (v12 | (v10 << 6)), v24);
        v14 = sub_1E65D7F78();
        v16 = v15;
        v18 = v17;
        result = (*(v0 + 8))(v2, v13);
        if (v18)
        {
          break;
        }

        result = sub_1E5F87058(v14, v16, 0);
      }

      if (v14 != 2)
      {
        break;
      }

      v19 = __OFADD__(v21++, 1);
      if (v19)
      {
        goto LABEL_19;
      }
    }

    v19 = __OFADD__(v20++, 1);
  }

  while (!v19);
  __break(1u);
LABEL_17:

  return v21;
}

uint64_t sub_1E614235C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = a3;
  v42 = a2;
  v5 = sub_1E65D7848();
  v39 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E65E5C28();
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1E65E5BA8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v41 = ObjCClassFromMetadata;
  v11 = objc_opt_self();
  v12 = [v11 bundleForClass_];
  v13 = *(v6 + 16);
  v13(v8, a3, v5);
  sub_1E65E5CD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072F48, &qword_1E65ECDB0);
  v14 = swift_allocObject();
  v43 = xmmword_1E65EA670;
  v15 = MEMORY[0x1E69E6530];
  *(v14 + 16) = xmmword_1E65EA670;
  v16 = MEMORY[0x1E69E65A8];
  *(v14 + 56) = v15;
  *(v14 + 64) = v16;
  *(v14 + 32) = a1;
  v38 = sub_1E65E5CA8();
  v18 = v17;

  sub_1E65E5BA8();
  v19 = [v11 bundleForClass_];
  v13(v8, v40, v39);
  v20 = v42;
  sub_1E65E5CD8();
  v21 = swift_allocObject();
  *(v21 + 16) = v43;
  *(v21 + 56) = MEMORY[0x1E69E6530];
  *(v21 + 64) = MEMORY[0x1E69E65A8];
  *(v21 + 32) = v20;
  v22 = sub_1E65E5CA8();
  v24 = v23;

  if (a1 < 1 || v20 < 1)
  {
    if (v20 < 1)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E70, &unk_1E65ECC20);
      v34 = *(sub_1E65DADF8() - 8);
      v35 = (*(v34 + 80) + 32) & ~*(v34 + 80);
      v28 = swift_allocObject();
      *(v28 + 16) = v43;
      v36 = (v28 + v35);
      *v36 = v38;
      v36[1] = v18;
      goto LABEL_7;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E70, &unk_1E65ECC20);
    v31 = *(sub_1E65DADF8() - 8);
    v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = v43;
    v30 = (v28 + v32);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E70, &unk_1E65ECC20);
    v25 = *(sub_1E65DADF8() - 8);
    v26 = *(v25 + 72);
    v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1E65EA8E0;
    v29 = (v28 + v27);
    *v29 = v38;
    v29[1] = v18;
    swift_storeEnumTagMultiPayload();
    *(v29 + v26) = 0;
    swift_storeEnumTagMultiPayload();
    v30 = (v29 + 2 * v26);
  }

  *v30 = v22;
  v30[1] = v24;
LABEL_7:
  swift_storeEnumTagMultiPayload();
  return v28;
}

BOOL sub_1E61428C4(uint64_t a1)
{
  sub_1E65D8358();
  v2 = v1;
  sub_1E65D8338();
  v4 = v2 - v3;
  sub_1E65D8358();
  v6 = v5;
  sub_1E65D8348();
  v8 = v7;
  sub_1E65D7F68();
  if (v4 > v9)
  {
    return 0;
  }

  sub_1E65D7F68();
  return v11 <= v6 + v8;
}

uint64_t sub_1E6142974(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ED075AB8, &qword_1E65F2A30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E61429E4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v6 = *(*(*(a3 + 16) - 8) + 64);
  v8 = ((v6 + *(v4 + 80)) & ~*(v4 + 80)) + v6;
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

char *sub_1E6142B34(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + *(v5 + 80)) & ~*(v5 + 80)) + *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_1E6142D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((sub_1E65E5B98() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Resettable(0, a3, v7, v8);
  return sub_1E65E5B98() & 1;
}

uint64_t sub_1E6142DBC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x566C616974696E69 && a2 == 0xEC00000065756C61;
  if (v4 || (sub_1E65E6C18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5664657070617277 && a2 == 0xEC00000065756C61)
  {

    return 1;
  }

  else
  {
    v6 = sub_1E65E6C18();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1E6142ECC(char a1)
{
  sub_1E65E6D28();
  MEMORY[0x1E694E740](a1 & 1);
  return sub_1E65E6D78();
}

uint64_t sub_1E6142F14(char a1)
{
  if (a1)
  {
    return 0x5664657070617277;
  }

  else
  {
    return 0x566C616974696E69;
  }
}

uint64_t sub_1E6142F4C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[0] = a2;
  v11[1] = a4;
  type metadata accessor for Resettable.CodingKeys(255, *(a2 + 16), a3, a4);
  swift_getWitnessTable();
  v5 = sub_1E65E6B98();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E65E6DA8();
  v13 = 0;
  v9 = v11[3];
  sub_1E65E6B78();
  if (!v9)
  {
    v12 = 1;
    sub_1E65E6B78();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1E61430F4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a3;
  v29 = a4;
  v31 = *(a2 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v30 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v33 = &v27 - v8;
  type metadata accessor for Resettable.CodingKeys(255, v9, v10, v11);
  swift_getWitnessTable();
  v35 = sub_1E65E6B08();
  v32 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v13 = &v27 - v12;
  v16 = type metadata accessor for Resettable(0, a2, v14, v15);
  v28 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v19 = v36;
  sub_1E65E6D98();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = v18;
  v36 = v16;
  v21 = v30;
  v22 = v31;
  v38 = 0;
  sub_1E65E6AD8();
  v23 = v33;
  v33 = *(v22 + 32);
  (v33)(v20, v23, a2);
  v37 = 1;
  sub_1E65E6AD8();
  (*(v32 + 8))(v13, v35);
  v24 = v36;
  (v33)(&v20[*(v36 + 28)], v21, a2);
  v25 = v28;
  (*(v28 + 16))(v29, v20, v24);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v25 + 8))(v20, v24);
}

uint64_t sub_1E61434E8(uint64_t a1)
{
  sub_1E65E6D28();
  sub_1E6142EA4(v3, *v1);
  return sub_1E65E6D78();
}

uint64_t sub_1E6143540@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E6142DBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E614356C@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1E61436FC();
  *a2 = result;
  return result;
}

uint64_t sub_1E6143598(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E61435EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E6143704@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E65D72D8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BrowsePage(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E6143930(v2, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v12 = *v10;
      v13 = *(v10 + 1);
      v14 = v10[17];
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AE0, &unk_1E65EA7B0);
      v16 = *(v5 + 32);
      v16(v7, &v10[*(v15 + 80)], v4);
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075B40, &qword_1E65F2C78) + 64);
      *a1 = v12;
      *(a1 + 8) = v13;
      *(a1 + 16) = v14;
      v16((a1 + v17), v7, v4);
      v18 = MEMORY[0x1E699D508];
    }

    else
    {
      *a1 = 0x4D65726F6C707845;
      *(a1 + 8) = 0xEB000000006E6961;
      v18 = MEMORY[0x1E699D500];
    }
  }

  else
  {
    v19 = *(v10 + 1);
    *a1 = *v10;
    *(a1 + 8) = v19;
    v18 = MEMORY[0x1E699D510];
  }

  v20 = *v18;
  v21 = sub_1E65DFB08();
  return (*(*(v21 - 8) + 104))(a1, v20, v21);
}

uint64_t sub_1E6143930(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrowsePage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6143994(uint64_t a1)
{
  v38 = sub_1E65E2A38();
  v3 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1E65DA6C8();
  v5 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v27[1] = v1;
    v44 = MEMORY[0x1E69E7CC0];
    sub_1E601C8F0(0, v8, 0);
    v42 = a1 + 56;
    v43 = v44;
    result = sub_1E65E6748();
    v10 = result;
    v11 = 0;
    v33 = v3 + 8;
    v34 = v3 + 16;
    v31 = v7;
    v32 = v5 + 32;
    v28 = a1 + 64;
    v29 = v8;
    v35 = v5;
    v30 = a1;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v13 = v10 >> 6;
      if ((*(v42 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_22;
      }

      v39 = v11;
      v40 = *(a1 + 36);
      v41 = 1 << v10;
      v14 = v37;
      v15 = v38;
      (*(v3 + 16))(v37, *(a1 + 48) + *(v3 + 72) * v10, v38);
      sub_1E65E2A18();
      sub_1E65E2A28();
      sub_1E65E29F8();
      sub_1E65DA6B8();
      (*(v3 + 8))(v14, v15);
      v16 = v43;
      v44 = v43;
      v18 = *(v43 + 16);
      v17 = *(v43 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1E601C8F0((v17 > 1), v18 + 1, 1);
        v16 = v44;
      }

      *(v16 + 16) = v18 + 1;
      v19 = (*(v35 + 80) + 32) & ~*(v35 + 80);
      v43 = v16;
      result = (*(v35 + 32))(v16 + v19 + *(v35 + 72) * v18, v31, v36);
      a1 = v30;
      v12 = 1 << *(v30 + 32);
      if (v10 >= v12)
      {
        goto LABEL_23;
      }

      v20 = *(v42 + 8 * v13);
      if ((v20 & v41) == 0)
      {
        goto LABEL_24;
      }

      if (v40 != *(v30 + 36))
      {
        goto LABEL_25;
      }

      v21 = v20 & (-2 << (v10 & 0x3F));
      if (v21)
      {
        v12 = __clz(__rbit64(v21)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v22 = v13 << 6;
        v23 = v13 + 1;
        v24 = (v28 + 8 * v13);
        while (v23 < (v12 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_1E5F87098(v10, v40, 0);
            v12 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        result = sub_1E5F87098(v10, v40, 0);
      }

LABEL_4:
      v11 = v39 + 1;
      v10 = v12;
      if (v39 + 1 == v29)
      {
        return v43;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1E6143D78@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v1 = sub_1E65E2D98();
  v30 = *(v1 - 8);
  v31 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E65D7BC8();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v32 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1E65E2CF8();
  v6 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E65D9388();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v29 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077750, &unk_1E66011C0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B58, &qword_1E65EC600);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v27 - v15;
  v17 = sub_1E65D76F8();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v18 = sub_1E65E2848();
  v19 = sub_1E6143994(v18);

  v27[3] = sub_1E600C0B0(v19);

  v20 = sub_1E65E2868();
  v27[1] = v21;
  v27[2] = v20;
  sub_1E65E2838();
  sub_1E65E2858();
  v22 = sub_1E65E1FC8();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v13, 1, v22) == 1)
  {
    sub_1E614422C(v13);
    v24 = 1;
  }

  else
  {
    sub_1E64C6E80(v16);
    (*(v23 + 8))(v13, v22);
    v24 = 0;
  }

  v25 = sub_1E65DA7C8();
  (*(*(v25 - 8) + 56))(v16, v24, 1, v25);
  sub_1E65E2878();
  sub_1E61DB264(v29);
  (*(v6 + 8))(v8, v28);
  sub_1E65E2888();
  sub_1E65E2D78();
  sub_1E65E2D88();
  sub_1E65E2D58();
  sub_1E65D7B98();
  (*(v30 + 8))(v3, v31);
  v34 = sub_1E65E2898();
  sub_1E6144294();
  sub_1E65D8008();
  sub_1E65E2828();
  return sub_1E65D8FA8();
}

uint64_t sub_1E614422C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077750, &unk_1E66011C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E6144294()
{
  result = qword_1ED075B48;
  if (!qword_1ED075B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075B48);
  }

  return result;
}

uint64_t sub_1E61442E8(uint64_t a1, unsigned __int8 a2)
{
  v125 = a1;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075B50, &qword_1E65F2C80);
  v124 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v138 = &v118 - v3;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075B58, &qword_1E65F2C88);
  v123 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v136 = &v118 - v4;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075B60, &qword_1E65F2C90);
  v122 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v134 = &v118 - v5;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075B68, &qword_1E65F2C98);
  v121 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133);
  v132 = &v118 - v6;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075B70, &qword_1E65F2CA0);
  v120 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v130 = &v118 - v7;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075B78, &qword_1E65F2CA8);
  v119 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v128 = &v118 - v8;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075B80, &qword_1E65F2CB0);
  v141 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v10 = &v118 - v9;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075B88, &qword_1E65F2CB8);
  v140 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v12 = &v118 - v11;
  v13 = sub_1E65E0B48();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v118 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v118 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v118 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v118 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = &v118 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v35 = &v118 - v34;
  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      v67 = v125;
      if (a2 == 6)
      {
        v68 = v33;
        KeyPath = swift_getKeyPath();
        v70 = *(v67 + 16);
        if (v70)
        {
          v141 = KeyPath;
          v142 = MEMORY[0x1E69E7CC0];
          sub_1E601C934(0, v70, 0);
          v39 = v142;
          v140 = *(v123 + 16);
          v71 = v67 + ((*(v123 + 80) + 32) & ~*(v123 + 80));
          v72 = *(v123 + 72);
          v73 = (v123 + 8);
          do
          {
            v75 = v136;
            v74 = v137;
            (v140)(v136, v71, v137);
            swift_getAtKeyPath();
            (*v73)(v75, v74);
            v142 = v39;
            v77 = *(v39 + 16);
            v76 = *(v39 + 24);
            if (v77 >= v76 >> 1)
            {
              sub_1E601C934((v76 > 1), v77 + 1, 1);
              v39 = v142;
            }

            *(v39 + 16) = v77 + 1;
            sub_1E6146338(v68, v39 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v77);
            v71 += v72;
            --v70;
          }

          while (v70);
          goto LABEL_55;
        }
      }

      else
      {
        v107 = v32;
        v108 = swift_getKeyPath();
        v109 = *(v67 + 16);
        if (v109)
        {
          v141 = v108;
          v142 = MEMORY[0x1E69E7CC0];
          sub_1E601C934(0, v109, 0);
          v39 = v142;
          v140 = *(v124 + 16);
          v110 = v67 + ((*(v124 + 80) + 32) & ~*(v124 + 80));
          v111 = *(v124 + 72);
          v112 = (v124 + 8);
          do
          {
            v114 = v138;
            v113 = v139;
            (v140)(v138, v110, v139);
            swift_getAtKeyPath();
            (*v112)(v114, v113);
            v142 = v39;
            v116 = *(v39 + 16);
            v115 = *(v39 + 24);
            if (v116 >= v115 >> 1)
            {
              sub_1E601C934((v115 > 1), v116 + 1, 1);
              v39 = v142;
            }

            *(v39 + 16) = v116 + 1;
            sub_1E6146338(v107, v39 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v116);
            v110 += v111;
            --v109;
          }

          while (v109);
          goto LABEL_55;
        }
      }
    }

    else
    {
      v47 = v125;
      if (a2 == 4)
      {
        v48 = swift_getKeyPath();
        v49 = *(v47 + 16);
        if (v49)
        {
          v141 = v48;
          v142 = MEMORY[0x1E69E7CC0];
          sub_1E601C934(0, v49, 0);
          v39 = v142;
          v140 = *(v121 + 16);
          v50 = v47 + ((*(v121 + 80) + 32) & ~*(v121 + 80));
          v51 = *(v121 + 72);
          v52 = (v121 + 8);
          do
          {
            v54 = v132;
            v53 = v133;
            (v140)(v132, v50, v133);
            swift_getAtKeyPath();
            (*v52)(v54, v53);
            v142 = v39;
            v56 = *(v39 + 16);
            v55 = *(v39 + 24);
            if (v56 >= v55 >> 1)
            {
              sub_1E601C934((v55 > 1), v56 + 1, 1);
              v39 = v142;
            }

            *(v39 + 16) = v56 + 1;
            sub_1E6146338(v22, v39 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v56);
            v50 += v51;
            --v49;
          }

          while (v49);
          goto LABEL_55;
        }
      }

      else
      {
        v88 = swift_getKeyPath();
        v89 = *(v47 + 16);
        if (v89)
        {
          v141 = v88;
          v142 = MEMORY[0x1E69E7CC0];
          sub_1E601C934(0, v89, 0);
          v39 = v142;
          v140 = *(v122 + 16);
          v90 = v47 + ((*(v122 + 80) + 32) & ~*(v122 + 80));
          v91 = *(v122 + 72);
          v92 = (v122 + 8);
          do
          {
            v94 = v134;
            v93 = v135;
            (v140)(v134, v90, v135);
            swift_getAtKeyPath();
            (*v92)(v94, v93);
            v142 = v39;
            v96 = *(v39 + 16);
            v95 = *(v39 + 24);
            if (v96 >= v95 >> 1)
            {
              sub_1E601C934((v95 > 1), v96 + 1, 1);
              v39 = v142;
            }

            *(v39 + 16) = v96 + 1;
            sub_1E6146338(v19, v39 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v96);
            v90 += v91;
            --v89;
          }

          while (v89);
          goto LABEL_55;
        }
      }
    }

    goto LABEL_56;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v57 = swift_getKeyPath();
      v58 = v125;
      v59 = *(v125 + 16);
      if (v59)
      {
        v141 = v57;
        v142 = MEMORY[0x1E69E7CC0];
        sub_1E601C934(0, v59, 0);
        v39 = v142;
        v140 = *(v119 + 16);
        v60 = v58 + ((*(v119 + 80) + 32) & ~*(v119 + 80));
        v61 = *(v119 + 72);
        v62 = (v119 + 8);
        do
        {
          v64 = v128;
          v63 = v129;
          (v140)(v128, v60, v129);
          swift_getAtKeyPath();
          (*v62)(v64, v63);
          v142 = v39;
          v66 = *(v39 + 16);
          v65 = *(v39 + 24);
          if (v66 >= v65 >> 1)
          {
            sub_1E601C934((v65 > 1), v66 + 1, 1);
            v39 = v142;
          }

          *(v39 + 16) = v66 + 1;
          sub_1E6146338(v28, v39 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v66);
          v60 += v61;
          --v59;
        }

        while (v59);
        goto LABEL_55;
      }
    }

    else
    {
      v97 = swift_getKeyPath();
      v98 = v125;
      v99 = *(v125 + 16);
      if (v99)
      {
        v141 = v97;
        v142 = MEMORY[0x1E69E7CC0];
        sub_1E601C934(0, v99, 0);
        v39 = v142;
        v140 = *(v120 + 16);
        v100 = v98 + ((*(v120 + 80) + 32) & ~*(v120 + 80));
        v101 = *(v120 + 72);
        v102 = (v120 + 8);
        do
        {
          v104 = v130;
          v103 = v131;
          (v140)(v130, v100, v131);
          swift_getAtKeyPath();
          (*v102)(v104, v103);
          v142 = v39;
          v106 = *(v39 + 16);
          v105 = *(v39 + 24);
          if (v106 >= v105 >> 1)
          {
            sub_1E601C934((v105 > 1), v106 + 1, 1);
            v39 = v142;
          }

          *(v39 + 16) = v106 + 1;
          sub_1E6146338(v25, v39 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v106);
          v100 += v101;
          --v99;
        }

        while (v99);
        goto LABEL_55;
      }
    }

    goto LABEL_56;
  }

  if (a2)
  {
    v78 = swift_getKeyPath();
    v79 = v125;
    v80 = *(v125 + 16);
    if (v80)
    {
      v142 = MEMORY[0x1E69E7CC0];
      sub_1E601C934(0, v80, 0);
      v39 = v142;
      v81 = *(v141 + 16);
      v82 = v79 + ((*(v141 + 80) + 32) & ~*(v141 + 80));
      v139 = *(v141 + 72);
      v140 = v81;
      v141 += 16;
      v83 = (v141 - 8);
      do
      {
        v84 = v127;
        (v140)(v10, v82, v127);
        v85 = v78;
        swift_getAtKeyPath();
        (*v83)(v10, v84);
        v142 = v39;
        v87 = *(v39 + 16);
        v86 = *(v39 + 24);
        if (v87 >= v86 >> 1)
        {
          sub_1E601C934((v86 > 1), v87 + 1, 1);
          v39 = v142;
        }

        *(v39 + 16) = v87 + 1;
        sub_1E6146338(v31, v39 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v87);
        v82 += v139;
        --v80;
        v78 = v85;
      }

      while (v80);
      goto LABEL_55;
    }

LABEL_56:

    return MEMORY[0x1E69E7CC0];
  }

  v36 = swift_getKeyPath();
  v37 = v125;
  v38 = *(v125 + 16);
  if (!v38)
  {
    goto LABEL_56;
  }

  v142 = MEMORY[0x1E69E7CC0];
  sub_1E601C934(0, v38, 0);
  v39 = v142;
  v40 = *(v140 + 16);
  v140 += 16;
  v141 = v40;
  v41 = v37 + ((*(v140 + 64) + 32) & ~*(v140 + 64));
  v139 = *(v140 + 56);
  v42 = (v140 - 8);
  do
  {
    v43 = v126;
    (v141)(v12, v41, v126);
    v44 = v36;
    swift_getAtKeyPath();
    (*v42)(v12, v43);
    v142 = v39;
    v46 = *(v39 + 16);
    v45 = *(v39 + 24);
    if (v46 >= v45 >> 1)
    {
      sub_1E601C934((v45 > 1), v46 + 1, 1);
      v39 = v142;
    }

    *(v39 + 16) = v46 + 1;
    sub_1E6146338(v35, v39 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v46);
    v41 += v139;
    --v38;
    v36 = v44;
  }

  while (v38);
LABEL_55:

  return v39;
}

uint64_t sub_1E61453F8(uint64_t a1, unsigned __int8 a2)
{
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075B50, &qword_1E65F2C80);
  v90 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v98 = (&v82 - v4);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075B58, &qword_1E65F2C88);
  v89 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v97 = &v82 - v5;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075B60, &qword_1E65F2C90);
  v88 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v7 = &v82 - v6;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075B68, &qword_1E65F2C98);
  v87 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v9 = &v82 - v8;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075B70, &qword_1E65F2CA0);
  v86 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v11 = &v82 - v10;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075B78, &qword_1E65F2CA8);
  v85 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v13 = &v82 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075B80, &qword_1E65F2CB0);
  v84 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v82 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075B88, &qword_1E65F2CB8);
  v83 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v82 - v18;
  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        KeyPath = swift_getKeyPath();
        v42 = *(a1 + 16);
        if (v42)
        {
          v102 = MEMORY[0x1E69E7CC0];

          sub_1E601C978(0, v42, 0);
          v21 = v102;
          v98 = *(v89 + 16);
          v43 = a1 + ((*(v89 + 80) + 32) & ~*(v89 + 80));
          v44 = *(v89 + 72);
          v45 = (v89 + 8);
          v46 = v95;
          do
          {
            v47 = v97;
            v98(v97, v43, v46);
            v100 = sub_1E65E0E98();
            v101 = &off_1F5FADD28;
            __swift_allocate_boxed_opaque_existential_1(&v99);
            v48 = KeyPath;
            swift_getAtKeyPath();
            (*v45)(v47, v46);
            v102 = v21;
            v50 = *(v21 + 16);
            v49 = *(v21 + 24);
            if (v50 >= v49 >> 1)
            {
              sub_1E601C978((v49 > 1), v50 + 1, 1);
              v46 = v95;
              v21 = v102;
            }

            *(v21 + 16) = v50 + 1;
            sub_1E5DF599C(&v99, v21 + 40 * v50 + 32);
            v43 += v44;
            --v42;
            KeyPath = v48;
          }

          while (v42);
          goto LABEL_59;
        }
      }

      else
      {
        v71 = swift_getKeyPath();
        v72 = *(a1 + 16);
        if (v72)
        {
          v102 = MEMORY[0x1E69E7CC0];

          sub_1E601C978(0, v72, 0);
          v21 = v102;
          v97 = *(v90 + 16);
          v73 = a1 + ((*(v90 + 80) + 32) & ~*(v90 + 80));
          v74 = *(v90 + 72);
          v75 = (v90 + 8);
          v76 = v96;
          do
          {
            v77 = v98;
            (v97)(v98, v73, v76);
            v100 = sub_1E65E0F68();
            v101 = &off_1F5FADD48;
            __swift_allocate_boxed_opaque_existential_1(&v99);
            v78 = v71;
            swift_getAtKeyPath();
            (*v75)(v77, v76);
            v102 = v21;
            v80 = *(v21 + 16);
            v79 = *(v21 + 24);
            if (v80 >= v79 >> 1)
            {
              sub_1E601C978((v79 > 1), v80 + 1, 1);
              v76 = v96;
              v21 = v102;
            }

            *(v21 + 16) = v80 + 1;
            sub_1E5DF599C(&v99, v21 + 40 * v80 + 32);
            v73 += v74;
            --v72;
            v71 = v78;
          }

          while (v72);
          goto LABEL_59;
        }
      }
    }

    else if (a2 == 4)
    {
      swift_getKeyPath();
      v27 = *(a1 + 16);
      if (v27)
      {
        v102 = MEMORY[0x1E69E7CC0];

        sub_1E601C978(0, v27, 0);
        v21 = v102;
        v28 = *(v87 + 16);
        v29 = a1 + ((*(v87 + 80) + 32) & ~*(v87 + 80));
        v97 = *(v87 + 72);
        v98 = v28;
        v30 = (v87 + 8);
        v31 = v93;
        do
        {
          v98(v9, v29, v31);
          v100 = sub_1E65E0BC8();
          v101 = &off_1F5FADCE8;
          __swift_allocate_boxed_opaque_existential_1(&v99);
          swift_getAtKeyPath();
          (*v30)(v9, v31);
          v102 = v21;
          v33 = *(v21 + 16);
          v32 = *(v21 + 24);
          if (v33 >= v32 >> 1)
          {
            sub_1E601C978((v32 > 1), v33 + 1, 1);
            v31 = v93;
            v21 = v102;
          }

          *(v21 + 16) = v33 + 1;
          sub_1E5DF599C(&v99, v21 + 40 * v33 + 32);
          v29 += v97;
          --v27;
        }

        while (v27);
        goto LABEL_59;
      }
    }

    else
    {
      swift_getKeyPath();
      v57 = *(a1 + 16);
      if (v57)
      {
        v102 = MEMORY[0x1E69E7CC0];

        sub_1E601C978(0, v57, 0);
        v21 = v102;
        v58 = *(v88 + 16);
        v59 = a1 + ((*(v88 + 80) + 32) & ~*(v88 + 80));
        v97 = *(v88 + 72);
        v98 = v58;
        v60 = (v88 + 8);
        v61 = v94;
        do
        {
          v98(v7, v59, v61);
          v100 = sub_1E65E0C18();
          v101 = &off_1F5FADD08;
          __swift_allocate_boxed_opaque_existential_1(&v99);
          swift_getAtKeyPath();
          (*v60)(v7, v61);
          v102 = v21;
          v63 = *(v21 + 16);
          v62 = *(v21 + 24);
          if (v63 >= v62 >> 1)
          {
            sub_1E601C978((v62 > 1), v63 + 1, 1);
            v61 = v94;
            v21 = v102;
          }

          *(v21 + 16) = v63 + 1;
          sub_1E5DF599C(&v99, v21 + 40 * v63 + 32);
          v59 += v97;
          --v57;
        }

        while (v57);
        goto LABEL_59;
      }
    }

    goto LABEL_60;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      swift_getKeyPath();
      v34 = *(a1 + 16);
      if (v34)
      {
        v102 = MEMORY[0x1E69E7CC0];

        sub_1E601C978(0, v34, 0);
        v21 = v102;
        v35 = *(v85 + 16);
        v36 = a1 + ((*(v85 + 80) + 32) & ~*(v85 + 80));
        v97 = *(v85 + 72);
        v98 = v35;
        v37 = (v85 + 8);
        v38 = v91;
        do
        {
          v98(v13, v36, v38);
          v100 = sub_1E65E10D8();
          v101 = &off_1F5FADCA8;
          __swift_allocate_boxed_opaque_existential_1(&v99);
          swift_getAtKeyPath();
          (*v37)(v13, v38);
          v102 = v21;
          v40 = *(v21 + 16);
          v39 = *(v21 + 24);
          if (v40 >= v39 >> 1)
          {
            sub_1E601C978((v39 > 1), v40 + 1, 1);
            v38 = v91;
            v21 = v102;
          }

          *(v21 + 16) = v40 + 1;
          sub_1E5DF599C(&v99, v21 + 40 * v40 + 32);
          v36 += v97;
          --v34;
        }

        while (v34);
        goto LABEL_59;
      }
    }

    else
    {
      swift_getKeyPath();
      v64 = *(a1 + 16);
      if (v64)
      {
        v102 = MEMORY[0x1E69E7CC0];

        sub_1E601C978(0, v64, 0);
        v21 = v102;
        v65 = *(v86 + 16);
        v66 = a1 + ((*(v86 + 80) + 32) & ~*(v86 + 80));
        v97 = *(v86 + 72);
        v98 = v65;
        v67 = (v86 + 8);
        v68 = v92;
        do
        {
          v98(v11, v66, v68);
          v100 = sub_1E65E1038();
          v101 = &off_1F5FADCC8;
          __swift_allocate_boxed_opaque_existential_1(&v99);
          swift_getAtKeyPath();
          (*v67)(v11, v68);
          v102 = v21;
          v70 = *(v21 + 16);
          v69 = *(v21 + 24);
          if (v70 >= v69 >> 1)
          {
            sub_1E601C978((v69 > 1), v70 + 1, 1);
            v68 = v92;
            v21 = v102;
          }

          *(v21 + 16) = v70 + 1;
          sub_1E5DF599C(&v99, v21 + 40 * v70 + 32);
          v66 += v97;
          --v64;
        }

        while (v64);
        goto LABEL_59;
      }
    }

    goto LABEL_60;
  }

  if (a2)
  {
    swift_getKeyPath();
    v51 = *(a1 + 16);
    if (v51)
    {
      v102 = MEMORY[0x1E69E7CC0];

      sub_1E601C978(0, v51, 0);
      v21 = v102;
      v52 = *(v84 + 16);
      v53 = a1 + ((*(v84 + 80) + 32) & ~*(v84 + 80));
      v97 = *(v84 + 72);
      v98 = v52;
      v54 = (v84 + 8);
      do
      {
        v98(v16, v53, v14);
        v100 = sub_1E65E0FD8();
        v101 = &off_1F5FADC88;
        __swift_allocate_boxed_opaque_existential_1(&v99);
        swift_getAtKeyPath();
        (*v54)(v16, v14);
        v102 = v21;
        v56 = *(v21 + 16);
        v55 = *(v21 + 24);
        if (v56 >= v55 >> 1)
        {
          sub_1E601C978((v55 > 1), v56 + 1, 1);
          v21 = v102;
        }

        *(v21 + 16) = v56 + 1;
        sub_1E5DF599C(&v99, v21 + 40 * v56 + 32);
        v53 += v97;
        --v51;
      }

      while (v51);
      goto LABEL_59;
    }

LABEL_60:

    return MEMORY[0x1E69E7CC0];
  }

  swift_getKeyPath();
  v20 = *(a1 + 16);
  if (!v20)
  {
    goto LABEL_60;
  }

  v102 = MEMORY[0x1E69E7CC0];

  sub_1E601C978(0, v20, 0);
  v21 = v102;
  v22 = *(v83 + 16);
  v23 = a1 + ((*(v83 + 80) + 32) & ~*(v83 + 80));
  v97 = *(v83 + 72);
  v98 = v22;
  v24 = (v83 + 8);
  do
  {
    v98(v19, v23, v17);
    v100 = sub_1E65E1088();
    v101 = &off_1F5FADC68;
    __swift_allocate_boxed_opaque_existential_1(&v99);
    swift_getAtKeyPath();
    (*v24)(v19, v17);
    v102 = v21;
    v26 = *(v21 + 16);
    v25 = *(v21 + 24);
    if (v26 >= v25 >> 1)
    {
      sub_1E601C978((v25 > 1), v26 + 1, 1);
      v21 = v102;
    }

    *(v21 + 16) = v26 + 1;
    sub_1E5DF599C(&v99, v21 + 40 * v26 + 32);
    v23 += v97;
    --v20;
  }

  while (v20);
LABEL_59:

  return v21;
}

uint64_t sub_1E61462F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E6146338(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65E0B48();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E614639C(void *a1)
{
  v3 = type metadata accessor for NotificationsConsentDetour.State(0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v28 - v7;
  v9 = type metadata accessor for RouteDestination(0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v28 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0722F0, &unk_1E65EA1F0);
  v16 = *(v15 - 8);
  v30 = v15;
  v31 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v28 - v17;
  v19 = OBJC_IVAR____TtC10Blackbeard26NotificationsConsentDetour_state;
  swift_beginAccess();
  sub_1E6148FC8(v1 + v19, v8, type metadata accessor for NotificationsConsentDetour.State);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E10, &qword_1E6603B00);
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v8, 1, v20) == 1)
  {
    return sub_1E61491B8(v8, type metadata accessor for NotificationsConsentDetour.State);
  }

  v29 = v12;
  v23 = v14;
  v24 = a1;
  v25 = *(v20 + 48);
  (*(v31 + 32))(v18, v8, v30);
  sub_1E5E1E048(&v8[v25], v23, type metadata accessor for RouteDestination);
  (*(v21 + 56))(v6, 1, 1, v20);
  swift_beginAccess();
  sub_1E6148F64(v6, v1 + v19);
  swift_endAccess();
  if (v24)
  {
    v32 = v24;
    v26 = v24;
    v27 = v30;
    sub_1E65E5FE8();
  }

  else
  {
    sub_1E6148FC8(v23, v29, type metadata accessor for RouteDestination);
    v27 = v30;
    sub_1E65E5FF8();
  }

  sub_1E61491B8(v23, type metadata accessor for RouteDestination);
  return (*(v31 + 8))(v18, v27);
}

uint64_t sub_1E614671C()
{
  sub_1E61491B8(v0 + OBJC_IVAR____TtC10Blackbeard26NotificationsConsentDetour_state, type metadata accessor for NotificationsConsentDetour.State);

  v1 = OBJC_IVAR____TtC10Blackbeard26NotificationsConsentDetour__notificationConsentShowingEnabled;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E18, &qword_1E65FD850);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC10Blackbeard26NotificationsConsentDetour__fitnessShouldSkipSplashScreen, v2);
  v3(v0 + OBJC_IVAR____TtC10Blackbeard26NotificationsConsentDetour__fitnessPlusNotificationSettingsEnabled, v2);
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1E6146850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[40] = a5;
  v6[41] = v5;
  v6[38] = a3;
  v6[39] = a4;
  v6[36] = a1;
  v6[37] = a2;
  v7 = sub_1E65E3B68();
  v6[42] = v7;
  v6[43] = *(v7 - 8);
  v6[44] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E18, &qword_1E65FD850);
  v6[45] = v8;
  v6[46] = *(v8 - 8);
  v6[47] = swift_task_alloc();
  v9 = sub_1E65DE3E8();
  v6[48] = v9;
  v6[49] = *(v9 - 8);
  v6[50] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E61469DC, v5, 0);
}

uint64_t sub_1E61469DC()
{
  v2 = *(v0 + 392);
  v1 = *(v0 + 400);
  v3 = *(v0 + 384);
  type metadata accessor for AppComposer(0);
  v4 = sub_1E65DAE18();
  (*(v2 + 104))(v1, *MEMORY[0x1E69CAD38], v3);
  v5 = sub_1E637C87C(v1, v4);

  (*(v2 + 8))(v1, v3);
  if ((v5 & 1) == 0)
  {
    v24 = *(v0 + 288);
    v23 = *(v0 + 296);
LABEL_8:
    sub_1E6148FC8(v23, v24, type metadata accessor for RouteDestination);

    v25 = *(v0 + 8);

    return v25();
  }

  v7 = *(v0 + 368);
  v6 = *(v0 + 376);
  v8 = *(v0 + 360);
  v9 = *(v0 + 328);
  v10 = OBJC_IVAR____TtC10Blackbeard26NotificationsConsentDetour__notificationConsentShowingEnabled;
  v11 = *(v7 + 16);
  *(v0 + 408) = v11;
  *(v0 + 416) = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v6, v9 + v10, v8);
  sub_1E65DDC48();
  v12 = *(v7 + 8);
  *(v0 + 424) = v12;
  *(v0 + 432) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v6, v8);
  if (*(v0 + 504) != 1 || (v13 = *(v0 + 376), v14 = *(v0 + 360), v11(v13, *(v0 + 328) + OBJC_IVAR____TtC10Blackbeard26NotificationsConsentDetour__fitnessShouldSkipSplashScreen, v14), sub_1E65DDC48(), v12(v13, v14), (*(v0 + 505) & 1) != 0))
  {
    sub_1E65DE348();
    v15 = sub_1E65E3B48();
    v16 = sub_1E65E6338();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1E5DE9000, v15, v16, "Notification consent showing has been disabled", v17, 2u);
      MEMORY[0x1E694F1C0](v17, -1, -1);
    }

    v19 = *(v0 + 344);
    v18 = *(v0 + 352);
    v20 = *(v0 + 336);
    v22 = *(v0 + 288);
    v21 = *(v0 + 296);

    (*(v19 + 8))(v18, v20);
    v23 = v21;
    v24 = v22;
    goto LABEL_8;
  }

  v27 = objc_opt_self();
  *(v0 + 440) = v27;
  v28 = [v27 currentNotificationCenter];
  *(v0 + 448) = v28;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 272;
  *(v0 + 24) = sub_1E6146DAC;
  v29 = swift_continuation_init();
  *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075C58, &qword_1E65F32A0);
  *(v0 + 144) = MEMORY[0x1E69E9820];
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = sub_1E61478A4;
  *(v0 + 168) = &block_descriptor_3;
  *(v0 + 176) = v29;
  [v28 getNotificationSettingsWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1E6146DAC()
{
  v1 = *(*v0 + 328);

  return MEMORY[0x1EEE6DFA0](sub_1E6146EA0, v1, 0);
}

uint64_t sub_1E6146EA0()
{
  v1 = *(v0 + 448);
  v2 = *(v0 + 272);
  *(v0 + 456) = v2;

  if ([v2 authorizationStatus])
  {
    v3 = *(v0 + 424);
    v4 = *(v0 + 408);
    v5 = *(v0 + 376);
    v6 = *(v0 + 360);
    v7 = *(v0 + 328);
    v21 = [*(v0 + 440) currentNotificationCenter];
    *(v0 + 488) = v21;
    v4(v5, v7 + OBJC_IVAR____TtC10Blackbeard26NotificationsConsentDetour__fitnessPlusNotificationSettingsEnabled, v6);
    sub_1E65DDC48();
    v3(v5, v6);
    if (*(v0 + 507))
    {
      v8 = 39;
    }

    else
    {
      v8 = 7;
    }

    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 506;
    *(v0 + 88) = sub_1E6147348;
    v9 = swift_continuation_init();
    *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075C60, &unk_1E65F32A8);
    *(v0 + 208) = MEMORY[0x1E69E9820];
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_1E6147908;
    *(v0 + 232) = &block_descriptor_22;
    *(v0 + 240) = v9;
    [v21 requestAuthorizationWithOptions:v8 completionHandler:?];

    return MEMORY[0x1EEE6DEC8](v0 + 80);
  }

  else
  {
    v10 = *(v0 + 328);
    v12 = *(v0 + 296);
    v11 = *(v0 + 304);
    v13 = swift_task_alloc();
    *(v0 + 464) = v13;
    v14 = *(v0 + 312);
    *(v13 + 16) = v10;
    *(v13 + 24) = v12;
    *(v13 + 32) = v14;
    *(v13 + 48) = v11;
    v15 = sub_1E6148F0C(&qword_1ED075C68, type metadata accessor for NotificationsConsentDetour, &unk_1E65F3268);
    v16 = swift_task_alloc();
    *(v0 + 472) = v16;
    v17 = type metadata accessor for RouteDestination(0);
    *v16 = v0;
    v16[1] = sub_1E614719C;
    v18 = *(v0 + 328);
    v19 = *(v0 + 288);

    return MEMORY[0x1EEE6DE18](v19, &unk_1E65F32C0, v13, sub_1E6148E50, v18, v10, v15, v17);
  }
}

uint64_t sub_1E614719C()
{
  v2 = *v1;
  *(*v1 + 480) = v0;

  if (v0)
  {
    v3 = *(v2 + 328);
    v4 = sub_1E614780C;
  }

  else
  {
    v5 = *(v2 + 328);

    v4 = sub_1E61472C4;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1E61472C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6147348()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 496) = v2;
  v3 = *(v1 + 328);
  if (v2)
  {
    v4 = sub_1E61475E0;
  }

  else
  {
    v4 = sub_1E6147468;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1E6147468()
{
  v1 = *(v0 + 506);

  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(*(v0 + 336), qword_1EE2EA2A0);
  v2 = sub_1E65E3B48();
  v3 = sub_1E65E6338();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 456);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = v1;
    _os_log_impl(&dword_1E5DE9000, v2, v3, "Notification re-authorization completed: %{BOOL}d", v6, 8u);
    MEMORY[0x1E694F1C0](v6, -1, -1);
  }

  sub_1E6148FC8(*(v0 + 296), *(v0 + 288), type metadata accessor for RouteDestination);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1E61475E0(uint64_t a1)
{
  v19 = v1;
  v2 = v1[61];
  swift_willThrow();

  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v3 = v1[62];
  __swift_project_value_buffer(v1[42], qword_1EE2EA2A0);
  v4 = v3;
  v5 = sub_1E65E3B48();
  v6 = sub_1E65E6328();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v1[62];
  v9 = v1[57];
  if (v7)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136446210;
    v1[35] = v8;
    v12 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
    v13 = sub_1E65E5CE8();
    v15 = sub_1E5DFD4B0(v13, v14, &v18);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_1E5DE9000, v5, v6, "Failed to re authroize notifications: %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1E694F1C0](v11, -1, -1);
    MEMORY[0x1E694F1C0](v10, -1, -1);
  }

  else
  {
  }

  sub_1E6148FC8(v1[37], v1[36], type metadata accessor for RouteDestination);

  v16 = v1[1];

  return v16();
}

uint64_t sub_1E614780C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E61478A4(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x1EEE6DED8](v4);
}

uint64_t sub_1E6147908(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x1EEE6DEE8](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

uint64_t sub_1E61479D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E61479F8, a2, 0);
}

uint64_t sub_1E61479F8()
{
  v1 = *(v0 + 56);
  v2 = sub_1E6148F0C(&qword_1ED075C68, type metadata accessor for NotificationsConsentDetour, &unk_1E65F3268);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  v9 = *(v0 + 24);
  v4 = *(v0 + 40);
  *(v3 + 16) = v9;
  *(v3 + 32) = v4;
  *(v3 + 48) = v1;
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  v6 = type metadata accessor for RouteDestination(0);
  *v5 = v0;
  v5[1] = sub_1E5F8E974;
  v7 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v7, v9, v2, 0xD000000000000024, 0x80000001E66103D0, sub_1E6148F54, v3, v6);
}

uint64_t sub_1E6147B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = a6;
  v30 = a5;
  v10 = type metadata accessor for AppComposer(0);
  v29 = *(v10 - 8);
  v11 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v28 - v14;
  v16 = type metadata accessor for NotificationsConsentDetour.State(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E10, &qword_1E6603B00);
  v20 = *(v19 + 48);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0722F0, &unk_1E65EA1F0);
  (*(*(v21 - 8) + 16))(v18, a1, v21);
  sub_1E6148FC8(a3, &v18[v20], type metadata accessor for RouteDestination);
  (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
  v22 = OBJC_IVAR____TtC10Blackbeard26NotificationsConsentDetour_state;
  swift_beginAccess();
  sub_1E6148F64(v18, a2 + v22);
  swift_endAccess();
  v23 = sub_1E65E60A8();
  (*(*(v23 - 8) + 56))(v15, 1, 1, v23);
  sub_1E6148FC8(v28, v12, type metadata accessor for AppComposer);
  v24 = sub_1E6148F0C(&qword_1ED075C68, type metadata accessor for NotificationsConsentDetour, &unk_1E65F3268);
  v25 = (*(v29 + 80) + 56) & ~*(v29 + 80);
  v26 = swift_allocObject();
  v26[2] = a2;
  v26[3] = v24;
  v26[4] = a2;
  v26[5] = a4;
  v26[6] = v30;
  sub_1E5E1E048(v12, v26 + v25, type metadata accessor for AppComposer);
  swift_retain_n();
  swift_unknownObjectRetain();
  sub_1E64B80F8(0, 0, v15, &unk_1E65F32E8, v26);
}

uint64_t sub_1E6147EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v9 = *(type metadata accessor for AppComposer(0) - 8);
  v7[6] = v9;
  v7[7] = *(v9 + 64);
  v7[8] = swift_task_alloc();
  v10 = sub_1E65D9178();
  v7[9] = v10;
  v7[10] = *(v10 - 8);
  v7[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6147FE8, a4, 0);
}

uint64_t sub_1E6147FE8()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[2];
  v0[12] = sub_1E65E5948();
  v0[13] = *(v4 + OBJC_IVAR____TtC10Blackbeard26NotificationsConsentDetour_dependencies);
  (*(v2 + 104))(v1, *MEMORY[0x1E69CBF18], v3);
  v0[14] = sub_1E65E6058();

  v0[15] = sub_1E65E6048();
  v6 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E61480DC, v6, v5);
}

uint64_t sub_1E61480DC()
{
  v1 = *(v0 + 16);

  *(v0 + 128) = sub_1E65E5938();

  return MEMORY[0x1EEE6DFA0](sub_1E6148168, v1, 0);
}

uint64_t sub_1E6148168()
{

  *(v0 + 136) = sub_1E65E6048();
  v2 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E61481FC, v2, v1);
}

uint64_t sub_1E61481FC()
{
  v1 = *(v0 + 16);

  sub_1E65E5928();

  return MEMORY[0x1EEE6DFA0](sub_1E614828C, v1, 0);
}

uint64_t sub_1E614828C()
{
  v1 = v0[16];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v15 = v0[4];
  v5 = v0[2];
  ObjectType = swift_getObjectType();
  sub_1E6148FC8(v3, v2, type metadata accessor for AppComposer);
  v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v8 = swift_allocObject();
  v0[18] = v8;
  *(v8 + 16) = v5;
  *(v8 + 24) = v1;
  sub_1E5E1E048(v2, v8 + v7, type metadata accessor for AppComposer);
  v9 = *(v15 + 24);

  v10 = v1;
  v14 = (v9 + *v9);
  v11 = swift_task_alloc();
  v0[19] = v11;
  *v11 = v0;
  v11[1] = sub_1E6148460;
  v12 = v0[4];

  return v14(sub_1E6149144, v8, ObjectType, v12);
}

uint64_t sub_1E6148460()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1E614858C, v1, 0);
}

uint64_t sub_1E614858C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6148604(uint64_t a1)
{
  v2 = type metadata accessor for NotificationsConsentDetour.State(0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v24 - v6;
  v8 = type metadata accessor for RouteDestination(0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v25 = &v24 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0722F0, &unk_1E65EA1F0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v24 - v15;
  v17 = OBJC_IVAR____TtC10Blackbeard26NotificationsConsentDetour_state;
  swift_beginAccess();
  sub_1E6148FC8(a1 + v17, v7, type metadata accessor for NotificationsConsentDetour.State);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E10, &qword_1E6603B00);
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v7, 1, v18) == 1)
  {
    return sub_1E61491B8(v7, type metadata accessor for NotificationsConsentDetour.State);
  }

  v24 = v11;
  v21 = *(v18 + 48);
  (*(v14 + 32))(v16, v7, v13);
  v22 = &v7[v21];
  v23 = v25;
  sub_1E5E1E048(v22, v25, type metadata accessor for RouteDestination);
  (*(v19 + 56))(v5, 1, 1, v18);
  swift_beginAccess();
  sub_1E6148F64(v5, a1 + v17);
  swift_endAccess();
  sub_1E6148FC8(v23, v24, type metadata accessor for RouteDestination);
  sub_1E65E5FF8();
  sub_1E61491B8(v23, type metadata accessor for RouteDestination);
  return (*(v14 + 8))(v16, v13);
}

id sub_1E6148958(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + *(type metadata accessor for AppComposer(0) + 20) + 8);
  if (v7 < 2)
  {
    v8 = sel_presentViewController_animated_completion_;
    v9 = a1;
    v10 = a3;
    v11 = 1;
    v6 = 0;

    return [v9 v8];
  }

  if (v7 == 3)
  {
    v8 = sel_pushViewController_animated_;
    v9 = a1;
    v10 = a3;
    v11 = 0;

    return [v9 v8];
  }

  result = sub_1E65E69D8();
  __break(1u);
  return result;
}

uint64_t sub_1E6148A60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - v3;
  v5 = sub_1E65E60A8();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = a1;

  sub_1E64B80F8(0, 0, v4, &unk_1E65F32D8, v6);
}

uint64_t sub_1E6148B8C()
{
  v1 = *(v0 + 16);
  sub_1E65E6018();
  sub_1E6148F0C(&qword_1ED071E30, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
  *(v0 + 24) = swift_allocError();
  sub_1E65E5AE8();

  return MEMORY[0x1EEE6DFA0](sub_1E6148C50, v1, 0);
}

uint64_t sub_1E6148C50()
{
  v1 = *(v0 + 24);
  sub_1E614639C(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E6148CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1E5DFA78C;

  return sub_1E6146850(a1, a2, a3, a4, a5);
}

uint64_t sub_1E6148D88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFA78C;

  return sub_1E61479D4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1E6148E58(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E6148B6C(a1, v4, v5, v6);
}

uint64_t sub_1E6148F0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E6148F64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotificationsConsentDetour.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6148FC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E6149030(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1E5DFA78C;

  return sub_1E6147EC0(a1, v6, v7, v8, v9, v10, v1 + v5);
}

id sub_1E6149144(void *a1)
{
  v3 = *(type metadata accessor for AppComposer(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1E6148958(a1, v4, v5, v6);
}

uint64_t sub_1E61491B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E6149220(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_1E614EA14, v4);
}

void sub_1E61492B4(uint64_t a1, uint64_t a2)
{
  sub_1E5DEF738(0, &qword_1ED073D28, 0x1E69DCC78);
  v3 = sub_1E65E5EF8();
  (*(a2 + 16))(a2, v3);
}

void AppCoordinator.configureMenuBarBuilder(_:)(void *a1)
{
  v2 = v1;
  v43 = type metadata accessor for AppEnvironment(0);
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v43);
  v42 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v40 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v45 = &v40 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v40 - v12;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v14 = sub_1E65E3B68();
  __swift_project_value_buffer(v14, qword_1EE2EA2A0);
  sub_1E65E3B38();
  [a1 removeMenuForIdentifier_];
  [a1 removeMenuForIdentifier_];
  v15 = OBJC_IVAR____TtC10Blackbeard14AppCoordinator_composer;
  v16 = v2 + *(type metadata accessor for AppComposer(0) + 20) + v15;
  v46 = [a1 menuForIdentifier_];
  [a1 removeMenuForIdentifier_];
  v44 = (v2 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_urlResolver);
  sub_1E60190C0(v16, v13);
  v17 = *(v4 + 80);
  v18 = v13;
  v41 = v13;
  v19 = (v17 + 16) & ~v17;
  v20 = swift_allocObject();
  sub_1E5DFAB18(v18, v20 + v19, type metadata accessor for AppEnvironment);
  v21 = v45;
  sub_1E60190C0(v16, v45);
  v22 = swift_allocObject();
  sub_1E5DFAB18(v21, v22 + v19, type metadata accessor for AppEnvironment);
  sub_1E60190C0(v16, v9);
  v23 = swift_allocObject();
  v47 = a1;
  v24 = v23;
  sub_1E5DFAB18(v9, v23 + v19, type metadata accessor for AppEnvironment);
  v25 = v42;
  sub_1E60190C0(v16, v42);
  v26 = swift_allocObject();
  sub_1E5DFAB18(v25, v26 + v19, type metadata accessor for AppEnvironment);
  v27 = __swift_project_boxed_opaque_existential_1(v44, v44[3]);
  v28 = sub_1E614B9A8(v46, *v27, &unk_1E65F3328, v20, &unk_1E65F3338, v22, &unk_1E65F3348, v24, &unk_1E65F3358, v26);

  [v47 insertSiblingMenu:v28 afterMenuForIdentifier:*MEMORY[0x1E69DE0C0]];

  __swift_project_boxed_opaque_existential_1((v16 + *(v43 + 136)), *(v16 + *(v43 + 136) + 24));
  LOBYTE(v20) = sub_1E65DB448();
  v29 = v41;
  sub_1E60190C0(v16, v41);
  v30 = swift_allocObject();
  sub_1E5DFAB18(v29, v30 + v19, type metadata accessor for AppEnvironment);
  v31 = v45;
  sub_1E60190C0(v16, v45);
  v32 = swift_allocObject();
  sub_1E5DFAB18(v31, v32 + v19, type metadata accessor for AppEnvironment);
  v33 = v44;
  v34 = __swift_project_boxed_opaque_existential_1(v44, v44[3]);
  v35 = sub_1E614D598(*v34, v20 & 1, &unk_1E65F3368, v30, &unk_1E65F3378, v32);
  v36 = v47;

  [v36 insertSiblingMenu:v35 afterMenuForIdentifier:*MEMORY[0x1E69DE0F8]];

  sub_1E60190C0(v16, v29);
  v37 = swift_allocObject();
  sub_1E5DFAB18(v29, v37 + v19, type metadata accessor for AppEnvironment);
  v38 = __swift_project_boxed_opaque_existential_1(v33, v33[3]);
  v39 = sub_1E614E30C(*v38, &unk_1E65F3388, v37);

  if (qword_1ED071920 != -1)
  {
    swift_once();
  }

  [v36 insertSiblingMenu:v39 afterMenuForIdentifier:qword_1ED096290];
}

uint64_t sub_1E6149930(uint64_t a1)
{
  v1[2] = a1;
  sub_1E65E6058();
  v1[3] = sub_1E65E6048();
  v3 = sub_1E65E5FC8();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1E61499C8, v3, v2);
}

uint64_t sub_1E61499C8()
{
  type metadata accessor for AppEnvironment(0);
  Queue = UpNextQueueService.queryUpNextQueue.getter();
  *(v0 + 48) = v2;
  v5 = (Queue + *Queue);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_1E6149ACC;

  return v5();
}

uint64_t sub_1E6149ACC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = v4[4];
    v6 = v4[5];
    v7 = sub_1E614EB4C;
  }

  else
  {
    v4[9] = a1;
    v5 = v4[4];
    v6 = v4[5];
    v7 = sub_1E6149BF4;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1E6149BF4()
{
  v1 = *(v0 + 72);

  v2 = *(v1 + 16);

  if (!v2)
  {
    v4 = sub_1E65D8B78();
    sub_1E614EA64();
    swift_allocError();
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x1E69CB8D0], v4);
    swift_willThrow();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1E6149CFC()
{
  v2 = *(type metadata accessor for AppEnvironment(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E6149930(v0 + v3);
}

uint64_t sub_1E6149DC8(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1E65D8E88();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_1E65E6058();
  v1[6] = sub_1E65E6048();
  v4 = sub_1E65E5FC8();
  v1[7] = v4;
  v1[8] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1E6149EBC, v4, v3);
}

uint64_t sub_1E6149EBC()
{
  *(v0 + 136) = *(type metadata accessor for AppEnvironment(0) + 132);
  Queue = UpNextQueueService.queryUpNextQueue.getter();
  *(v0 + 72) = v2;
  v5 = (Queue + *Queue);
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *v3 = v0;
  v3[1] = sub_1E6149FC4;

  return v5();
}

uint64_t sub_1E6149FC4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 88) = a1;
  *(v4 + 96) = v1;

  v5 = *(v3 + 64);
  v6 = *(v3 + 56);
  if (v1)
  {
    v7 = sub_1E614A4A4;
  }

  else
  {
    v7 = sub_1E614A108;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1E614A108()
{
  v1 = v0[11];

  Queue = UpNextQueueService.processUpNextQueueUpdates.getter();
  v3 = Queue;
  v0[13] = v4;
  v5 = *(v1 + 16);
  v6 = v0[11];
  if (v5)
  {
    v18 = Queue;
    v7 = v0[4];
    v21 = MEMORY[0x1E69E7CC0];
    sub_1E601C9B8(0, v5, 0);
    v8 = v21;
    v19 = sub_1E65D8948();
    v9 = *(v19 - 8);
    v10 = *(v9 + 16);
    v11 = v6 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v12 = *(v9 + 72);
    do
    {
      v10(v0[5], v11, v19);
      swift_storeEnumTagMultiPayload();
      v14 = *(v21 + 16);
      v13 = *(v21 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1E601C9B8((v13 > 1), v14 + 1, 1);
      }

      v15 = v0[5];
      *(v21 + 16) = v14 + 1;
      sub_1E5DFAB18(v15, v21 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v14, MEMORY[0x1E69CBBF0]);
      v11 += v12;
      --v5;
    }

    while (v5);

    v3 = v18;
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
  }

  v0[14] = v8;
  v20 = (v3 + *v3);
  v16 = swift_task_alloc();
  v0[15] = v16;
  *v16 = v0;
  v16[1] = sub_1E614A380;

  return v20(v8);
}

uint64_t sub_1E614A380()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_1E614A518;
  }

  else
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_1E5F9D9C0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1E614A4A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E614A518()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E614A594()
{
  v2 = *(type metadata accessor for AppEnvironment(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5DFA78C;

  return sub_1E6149DC8(v0 + v3);
}

uint64_t sub_1E614A660(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1E65D7EB8();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_1E65E6058();
  v1[6] = sub_1E65E6048();
  v4 = sub_1E65E5FC8();
  v1[7] = v4;
  v1[8] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1E614A754, v4, v3);
}

uint64_t sub_1E614A754()
{
  type metadata accessor for AppEnvironment(0);
  active = WorkoutPlanService.queryActiveWorkoutPlan.getter();
  v0[9] = v2;
  v6 = (active + *active);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_1E614A860;
  v4 = v0[5];

  return v6(v4);
}

uint64_t sub_1E614A860()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {

    v3 = v2[7];
    v4 = v2[8];
    v5 = sub_1E614A9B8;
  }

  else
  {
    (*(v2[4] + 8))(v2[5], v2[3]);

    v3 = v2[7];
    v4 = v2[8];
    v5 = sub_1E614EB20;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1E614A9B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E614AA24()
{
  v2 = *(type metadata accessor for AppEnvironment(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E614A660(v0 + v3);
}

uint64_t sub_1E614AAF0(uint64_t a1)
{
  v1[2] = a1;
  sub_1E65E6058();
  v1[3] = sub_1E65E6048();
  v3 = sub_1E65E5FC8();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1E614AB88, v3, v2);
}

uint64_t sub_1E614AB88()
{
  type metadata accessor for AppEnvironment(0);
  v1 = WorkoutPlanService.endWorkoutPlan.getter();
  *(v0 + 48) = v2;
  v5 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_1E614AC8C;

  return v5();
}

uint64_t sub_1E614AC8C()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);
  if (v0)
  {
    v5 = sub_1E614AE38;
  }

  else
  {
    v5 = sub_1E614ADC8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1E614ADC8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E614AE38()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E614AEA8()
{
  v2 = *(type metadata accessor for AppEnvironment(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E614AAF0(v0 + v3);
}

uint64_t sub_1E614AF74(uint64_t a1)
{
  v1[2] = a1;
  sub_1E65E6058();
  v1[3] = sub_1E65E6048();
  v3 = sub_1E65E5FC8();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1E614B00C, v3, v2);
}

uint64_t sub_1E614B00C()
{
  type metadata accessor for AppEnvironment(0);
  Queue = UpNextQueueService.queryUpNextQueue.getter();
  *(v0 + 48) = v2;
  v5 = (Queue + *Queue);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_1E614B110;

  return v5();
}

uint64_t sub_1E614B110(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = v4[4];
    v6 = v4[5];
    v7 = sub_1E614B33C;
  }

  else
  {

    v4[9] = a1;
    v5 = v4[4];
    v6 = v4[5];
    v7 = sub_1E614B240;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1E614B240()
{
  v1 = *(v0 + 72);

  v2 = *(v1 + 16);

  if (!v2)
  {
    v4 = sub_1E65D8B78();
    sub_1E614EA64();
    swift_allocError();
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x1E69CB8D0], v4);
    swift_willThrow();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1E614B33C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E614B3AC(uint64_t a1)
{
  v1[2] = a1;
  sub_1E65E6058();
  v1[3] = sub_1E65E6048();
  v3 = sub_1E65E5FC8();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1E614B444, v3, v2);
}

uint64_t sub_1E614B444()
{
  type metadata accessor for AppEnvironment(0);
  v1 = CatalogService.queryAllCatalogModalityReferences.getter();
  *(v0 + 48) = v2;
  v5 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_1E614B548;

  return v5();
}

uint64_t sub_1E614B548(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = v4[4];
    v6 = v4[5];
    v7 = sub_1E614AE38;
  }

  else
  {
    v4[9] = a1;
    v5 = v4[4];
    v6 = v4[5];
    v7 = sub_1E614B670;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1E614B670()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 72);

  return v1(v2);
}

uint64_t sub_1E614B6E4(uint64_t a1)
{
  v1[2] = a1;
  sub_1E65E6058();
  v1[3] = sub_1E65E6048();
  v3 = sub_1E65E5FC8();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1E614B77C, v3, v2);
}

uint64_t sub_1E614B77C()
{
  type metadata accessor for AppEnvironment(0);
  v1 = AccountService.fetchCurrentAccount.getter();
  *(v0 + 48) = v2;
  v5 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_1E614B880;

  return v5();
}

uint64_t sub_1E614B880(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = v4[4];
    v6 = v4[5];
    v7 = sub_1E614EB54;
  }

  else
  {
    v4[9] = a1;
    v5 = v4[4];
    v6 = v4[5];
    v7 = sub_1E614EB50;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1E614B9A8(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = sub_1E65D7848();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = sub_1E65E5C28();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v108[3] = &type metadata for AppURLResolver;
  v108[4] = &off_1F5FAB4F8;
  v108[0] = a2;
  v100 = sub_1E5DEF738(0, &qword_1ED073D30, 0x1E69DCC60);

  sub_1E65E5BA8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = objc_opt_self();
  p_aBlock = &_OBJC_LABEL_PROTOCOL___AMSBagProtocol;
  v16 = [v14 bundleForClass_];
  sub_1E65D77A8();
  v89 = sub_1E65E5D48();
  v88 = v17;
  v18 = qword_1ED0719B8;
  v87 = *MEMORY[0x1E69DE100];
  if (v18 != -1)
  {
LABEL_44:
    swift_once();
  }

  v19 = qword_1ED096328;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1E65EA660;
  sub_1E5DEF738(0, &qword_1ED075C70, 0x1E69DC8B0);
  v21 = v19;
  sub_1E65E5BA8();
  v22 = [v14 p_aBlock[32]];
  v101 = v14;
  sub_1E65D77A8();
  sub_1E65E5D48();
  v23 = sub_1E65E5C48();
  v98 = objc_opt_self();
  v24 = [v98 systemImageNamed_];

  if (qword_1ED071980 != -1)
  {
    swift_once();
  }

  v104 = 0u;
  aBlock = 0u;
  *(v20 + 32) = sub_1E65E6628();
  v107[0] = sub_1E65E64E8();
  sub_1E65E5BA8();
  v25 = [v14 bundleForClass_];
  sub_1E65D77A8();
  sub_1E65E5D48();
  if (qword_1ED071998 != -1)
  {
    swift_once();
  }

  v26 = qword_1ED096308;
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1E65F32F0;
  v28 = v26;
  sub_1E65E5BA8();
  v29 = [v14 &selRef:ObjCClassFromMetadata alertControllerWithTitle:? message:? preferredStyle:? + 3];
  sub_1E65D77A8();
  sub_1E65E5D48();
  v30 = sub_1E65E5C48();
  v31 = [v98 systemImageNamed_];

  if (qword_1ED071938 != -1)
  {
    swift_once();
  }

  v104 = 0u;
  aBlock = 0u;
  *(v27 + 32) = sub_1E65E6628();
  sub_1E65E5BA8();
  v32 = [v14 bundleForClass_];
  sub_1E65D77A8();
  sub_1E65E5D48();
  v33 = sub_1E65E5C48();
  v34 = [v98 systemImageNamed_];

  if (qword_1ED071968 != -1)
  {
    swift_once();
  }

  v104 = 0u;
  aBlock = 0u;
  *(v27 + 40) = sub_1E65E6628();
  sub_1E65E5BA8();
  v35 = [v14 bundleForClass_];
  sub_1E65D77A8();
  sub_1E65E5D48();
  v36 = sub_1E65E5C48();
  v37 = [v98 smm:v36 systemImageNamed:?];

  if (qword_1ED071940 != -1)
  {
    swift_once();
  }

  v104 = 0u;
  aBlock = 0u;
  *(v27 + 48) = sub_1E65E6628();
  v107[1] = sub_1E65E64E8();
  sub_1E65E5BA8();
  v38 = [v14 bundleForClass_];
  sub_1E65D77A8();
  sub_1E65E5D48();
  if (qword_1ED0719A0 != -1)
  {
    swift_once();
  }

  v39 = qword_1ED096310;
  v97 = swift_allocObject();
  *(v97 + 16) = xmmword_1E65EFF30;
  v40 = v39;
  sub_1E65E5BA8();
  v41 = [v14 &selRef:ObjCClassFromMetadata alertControllerWithTitle:? message:? preferredStyle:? + 3];
  sub_1E65D77A8();
  sub_1E65E5D48();
  v99 = ObjCClassFromMetadata;
  v42 = sub_1E65E5C48();
  v43 = [v98 smm:v42 systemImageNamed:?];

  if (qword_1ED071948 != -1)
  {
    swift_once();
  }

  v104 = 0u;
  aBlock = 0u;
  *(v97 + 32) = sub_1E65E6628();
  sub_1E65E5BA8();
  v44 = [v14 bundleForClass_];
  sub_1E65D77A8();
  sub_1E65E5D48();
  v45 = sub_1E65E5C48();
  v46 = [v98 smm:v45 systemImageNamed:?];

  if (qword_1ED071950 != -1)
  {
    swift_once();
  }

  v104 = 0u;
  aBlock = 0u;
  *(v97 + 40) = sub_1E65E6628();
  sub_1E65E5BA8();
  v47 = [v14 bundleForClass_];
  sub_1E65D77A8();
  sub_1E65E5D48();
  v48 = sub_1E65E5C48();
  v49 = [v98 smm:v48 systemImageNamed:?];

  if (qword_1ED071958 != -1)
  {
    swift_once();
  }

  v104 = 0u;
  aBlock = 0u;
  *(v97 + 48) = sub_1E65E6628();
  v50 = objc_opt_self();
  v51 = swift_allocObject();
  v51[2] = a5;
  v51[3] = a6;
  v51[4] = a3;
  v51[5] = a4;
  v105 = sub_1E614EABC;
  v106 = v51;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v104 = sub_1E6149220;
  *(&v104 + 1) = &block_descriptor_76;
  v52 = _Block_copy(&aBlock);

  a4 = v50;
  v53 = [v50 elementWithUncachedProvider_];
  _Block_release(v52);
  *(v97 + 56) = v53;
  v107[2] = sub_1E65E64E8();
  sub_1E65E5BA8();
  v54 = [v14 bundleForClass_];
  sub_1E65D77A8();
  sub_1E65E5D48();
  a6 = v55;
  if (qword_1ED0719A8 != -1)
  {
    swift_once();
  }

  a5 = a10;
  v56 = qword_1ED096318;
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1E65F32F0;
  sub_1E5DF650C(v108, v102);
  v58 = swift_allocObject();
  sub_1E5DF599C(v102, v58 + 16);
  *(v58 + 56) = a7;
  *(v58 + 64) = a8;
  v105 = sub_1E614EAC8;
  v106 = v58;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v104 = sub_1E6149220;
  *(&v104 + 1) = &block_descriptor_82;
  v59 = _Block_copy(&aBlock);
  a3 = v56;
  v60 = v56;

  v61 = [v50 elementWithUncachedProvider_];
  _Block_release(v59);
  *(v57 + 32) = v61;
  sub_1E65E5BA8();
  v62 = [v14 bundleForClass_];
  sub_1E65D77A8();
  sub_1E65E5D48();
  v63 = sub_1E65E5C48();
  v64 = [v98 systemImageNamed_];

  if (qword_1ED071970 != -1)
  {
    swift_once();
  }

  v104 = 0u;
  aBlock = 0u;
  *(v57 + 40) = sub_1E65E6628();
  v65 = swift_allocObject();
  v65[2] = a9;
  v65[3] = a10;
  v65[4] = a7;
  v65[5] = a8;
  v105 = sub_1E614EB14;
  v106 = v65;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v104 = sub_1E6149220;
  *(&v104 + 1) = &block_descriptor_88;
  v66 = _Block_copy(&aBlock);

  v67 = [v50 elementWithUncachedProvider_];
  _Block_release(v66);
  *(v57 + 48) = v67;
  v107[3] = sub_1E65E64E8();
  if (qword_1ED0719B0 != -1)
  {
    swift_once();
  }

  v68 = qword_1ED096320;
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_1E65F32F0;
  v70 = v68;
  sub_1E65E5BA8();
  v71 = [v101 bundleForClass_];
  sub_1E65D77A8();
  sub_1E65E5D48();
  v72 = sub_1E65E5C48();
  v73 = [v98 smm:v72 systemImageNamed:?];

  if (qword_1ED071978 != -1)
  {
    swift_once();
  }

  v104 = 0u;
  aBlock = 0u;
  *(v69 + 32) = sub_1E65E6628();
  sub_1E65E5BA8();
  v74 = [v101 bundleForClass_];
  sub_1E65D77A8();
  sub_1E65E5D48();
  v75 = sub_1E65E5C48();
  v76 = [v98 systemImageNamed_];

  if (qword_1ED071988 != -1)
  {
    swift_once();
  }

  v104 = 0u;
  aBlock = 0u;
  *(v69 + 40) = sub_1E65E6628();
  sub_1E65E5BA8();
  v77 = [v101 bundleForClass_];
  sub_1E65D77A8();
  sub_1E65E5D48();
  ObjCClassFromMetadata = sub_1E65E5C48();
  v78 = [v98 systemImageNamed_];

  if (qword_1ED071990 != -1)
  {
    swift_once();
  }

  v104 = 0u;
  aBlock = 0u;
  v79 = MEMORY[0x1E69E7CC0];
  *(v69 + 48) = sub_1E65E6628();
  p_aBlock = v100;
  v107[4] = sub_1E65E64E8();
  v107[5] = a1;
  *&aBlock = v79;
  v80 = a1;
  v81 = 0;
  v14 = 6;
LABEL_33:
  if (v81 <= 6)
  {
    v82 = 6;
  }

  else
  {
    v82 = v81;
  }

  while (v81 != 6)
  {
    if (v82 == v81)
    {
      __break(1u);
      goto LABEL_44;
    }

    v83 = v107[v81++];
    if (v83)
    {
      v84 = v83;
      p_aBlock = &aBlock;
      MEMORY[0x1E694D8F0]();
      if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        ObjCClassFromMetadata = *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1E65E5F68();
      }

      sub_1E65E5FA8();
      goto LABEL_33;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075C80, &qword_1E65F3390);
  swift_arrayDestroy();
  v85 = sub_1E65E64E8();
  __swift_destroy_boxed_opaque_existential_1(v108);
  return v85;
}

uint64_t sub_1E614D400()
{
  v2 = *(type metadata accessor for AppEnvironment(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E614AF74(v0 + v3);
}

uint64_t sub_1E614D4CC()
{
  v2 = *(type metadata accessor for AppEnvironment(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5FE99E8;

  return sub_1E614B3AC(v0 + v3);
}

uint64_t sub_1E614D598(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = sub_1E65D7848();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1E65E5C28();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v53 = sub_1E5DEF738(0, &qword_1ED073D30, 0x1E69DCC60);
  v62[3] = &type metadata for AppURLResolver;
  v62[4] = &off_1F5FAB4F8;
  v62[0] = a1;

  sub_1E65E5BA8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = objc_opt_self();
  v11 = [v10 bundleForClass_];
  sub_1E65D77A8();
  sub_1E65E5D48();
  if (qword_1ED071920 != -1)
  {
    swift_once();
  }

  v12 = qword_1ED096290;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1E65F3300;
  v14 = v13;
  v55 = v13;
  sub_1E5DEF738(0, &qword_1ED073D38, 0x1E69DC628);
  v12;
  sub_1E65E5BA8();
  v15 = [v10 bundleForClass_];
  v56 = ObjCClassFromMetadata;
  sub_1E65D77A8();
  sub_1E65E5D48();
  v16 = sub_1E65E5C48();
  v17 = objc_opt_self();
  v18 = [v17 systemImageNamed_];

  sub_1E5DF650C(v62, &aBlock);
  v19 = swift_allocObject();
  sub_1E5DF599C(&aBlock, v19 + 16);
  *(v14 + 32) = sub_1E65E65C8();
  sub_1E65E5BA8();
  v20 = [v10 bundleForClass_];
  sub_1E65D77A8();
  sub_1E65E5D48();
  v21 = sub_1E65E5C48();
  v22 = [v17 systemImageNamed_];

  sub_1E5DF650C(v62, &aBlock);
  v23 = swift_allocObject();
  sub_1E5DF599C(&aBlock, v23 + 16);
  v55[5] = sub_1E65E65C8();
  sub_1E65E5BA8();
  v24 = [v10 bundleForClass_];
  sub_1E65D77A8();
  sub_1E65E5D48();
  v25 = sub_1E65E5C48();
  v26 = [v17 systemImageNamed_];

  sub_1E5DF650C(v62, &aBlock);
  v27 = swift_allocObject();
  sub_1E5DF599C(&aBlock, v27 + 16);
  v55[6] = sub_1E65E65C8();
  sub_1E65E5BA8();
  v28 = [v10 bundleForClass_];
  sub_1E65D77A8();
  sub_1E65E5D48();
  v29 = sub_1E65E5C48();
  v30 = [v17 systemImageNamed_];

  sub_1E5DF650C(v62, &aBlock);
  v31 = swift_allocObject();
  sub_1E5DF599C(&aBlock, v31 + 16);
  v55[7] = sub_1E65E65C8();
  sub_1E65E5BA8();
  v32 = [v10 bundleForClass_];
  sub_1E65D77A8();
  sub_1E65E5D48();
  v33 = sub_1E65E5C48();
  v34 = [v17 systemImageNamed_];

  sub_1E5DF650C(v62, &aBlock);
  v35 = swift_allocObject();
  sub_1E5DF599C(&aBlock, v35 + 16);
  v55[8] = sub_1E65E65C8();
  v36 = objc_opt_self();
  sub_1E5DF650C(v62, v61);
  v37 = swift_allocObject();
  *(v37 + 16) = a3;
  *(v37 + 24) = a4;
  sub_1E5DF599C(v61, v37 + 32);
  v59 = sub_1E614EA44;
  v60 = v37;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v58 = sub_1E6149220;
  *(&v58 + 1) = &block_descriptor_60;
  v38 = _Block_copy(&aBlock);

  v39 = [v36 elementWithUncachedProvider_];
  _Block_release(v38);
  v55[9] = v39;
  sub_1E5DF650C(v62, v61);
  v40 = swift_allocObject();
  *(v40 + 16) = a5;
  *(v40 + 24) = a6;
  *(v40 + 32) = v53;
  *(v40 + 40) = a2 & 1;
  sub_1E5DF599C(v61, v40 + 48);
  v59 = sub_1E614EA50;
  v60 = v40;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v58 = sub_1E6149220;
  *(&v58 + 1) = &block_descriptor_66;
  v41 = _Block_copy(&aBlock);

  v42 = [v36 elementWithProvider_];
  _Block_release(v41);

  v55[10] = v42;
  if (qword_1ED071928 != -1)
  {
    swift_once();
  }

  v43 = qword_1ED096298;
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1E65EA660;
  sub_1E5DEF738(0, &qword_1ED075C70, 0x1E69DC8B0);
  v45 = v43;
  sub_1E65E5BA8();
  v46 = [v10 bundleForClass_];
  sub_1E65D77A8();
  sub_1E65E5D48();
  if (qword_1EE2D7178 != -1)
  {
    swift_once();
  }

  aBlock = 0u;
  v58 = 0u;
  *(v44 + 32) = sub_1E65E6628();
  v55[11] = sub_1E65E64E8();
  v47 = sub_1E65E64E8();
  __swift_destroy_boxed_opaque_existential_1(v62);
  return v47;
}

uint64_t sub_1E614E240()
{
  v2 = *(type metadata accessor for AppEnvironment(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5FEE4D4;

  return sub_1E614B6E4(v0 + v3);
}

uint64_t sub_1E614E30C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E65D7848();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1E65E5C28();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v43[3] = &type metadata for AppURLResolver;
  v43[4] = &off_1F5FAB4F8;
  v43[0] = a1;
  sub_1E5DEF738(0, &qword_1ED073D30, 0x1E69DCC60);

  sub_1E65E5BA8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = objc_opt_self();
  v10 = [v9 bundleForClass_];
  sub_1E65D77A8();
  sub_1E65E5D48();
  if (qword_1ED0719C8 != -1)
  {
    swift_once();
  }

  v36 = v9;
  v37 = ObjCClassFromMetadata;
  v11 = qword_1ED096330;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1E65F3310;
  v14 = qword_1ED0719D0;
  v11;
  if (v14 != -1)
  {
    swift_once();
  }

  v15 = qword_1ED096338;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1E65F3310;
  v17 = objc_opt_self();
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  v41 = sub_1E614E9FC;
  v42 = v18;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v39 = sub_1E6149220;
  v40 = &block_descriptor_4;
  v19 = _Block_copy(&aBlock);
  v20 = v15;

  v21 = [v17 elementWithUncachedProvider_];
  _Block_release(v19);
  *(v16 + 32) = v21;
  sub_1E5DEF738(0, &qword_1ED073D38, 0x1E69DC628);
  sub_1E65E5BA8();
  v22 = [v36 bundleForClass_];
  sub_1E65D77A8();
  sub_1E65E5D48();
  v23 = sub_1E65E5C48();
  v24 = objc_opt_self();
  v25 = [v24 systemImageNamed_];

  sub_1E5DF650C(v43, &aBlock);
  v26 = swift_allocObject();
  sub_1E5DF599C(&aBlock, v26 + 16);
  *(v16 + 40) = sub_1E65E65C8();
  *(v13 + 32) = sub_1E65E64E8();
  if (qword_1ED0719D8 != -1)
  {
    swift_once();
  }

  v27 = qword_1ED096340;
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1E65EA660;
  v29 = v27;
  sub_1E65E5BA8();
  v30 = [v36 bundleForClass_];
  sub_1E65D77A8();
  sub_1E65E5D48();
  v31 = sub_1E65E5C48();
  v32 = [v24 smm:v31 systemImageNamed:?];

  sub_1E5DF650C(v43, &aBlock);
  v33 = swift_allocObject();
  sub_1E5DF599C(&aBlock, v33 + 16);
  *(v28 + 32) = sub_1E65E65C8();
  *(v13 + 40) = sub_1E65E64E8();
  v34 = sub_1E65E64E8();
  __swift_destroy_boxed_opaque_existential_1(v43);
  return v34;
}

unint64_t sub_1E614EA64()
{
  result = qword_1ED075C78;
  if (!qword_1ED075C78)
  {
    sub_1E65D8B78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075C78);
  }

  return result;
}

uint64_t objectdestroy_72Tm()
{

  return swift_deallocObject();
}

uint64_t static AppEnvironment.simulator(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E65E5C48();
  v5 = sub_1E65E5C48();
  v6 = [objc_opt_self() bagForProfile:v4 profileVersion:v5];

  v7 = sub_1E65DAE28();
  v8 = type metadata accessor for AppEnvironment(0);
  static AccountService.simulator()((a2 + v8[6]));
  static AppStateService.simulator()((a2 + v8[7]));
  static ArchivedSessionService.simulator()((a2 + v8[8]));
  static AssetService.simulator()((a2 + v8[9]));
  static AwardsService.simulator()((a2 + v8[10]));
  static BookmarkService.simulator()((a2 + v8[11]));
  static CatalogService.simulator()((a2 + v8[12]));
  static ConfigurationService.simulator()((a2 + v8[13]));
  static ContentAvailabilityService.simulator()((a2 + v8[14]));
  static EngagementService.simulator()((a2 + v8[15]));
  static HealthDataService.simulator()((a2 + v8[16]));
  static InteropService.default(with:)(a1, (a2 + v8[17]));
  static LocalizationService.simulator()((a2 + v8[18]));
  static MarketingService.simulator()((a2 + v8[19]));
  static MetricService.simulator()((a2 + v8[20]));
  static PersonalizationService.simulator()((a2 + v8[21]));
  static PlayerService.default(with:)(a1, (a2 + v8[22]));
  static PrivacyPreferenceService.simulator()((a2 + v8[23]));
  static RecommendationService.simulator()((a2 + v8[24]));
  static RemoteBrowsingService.simulator()((a2 + v8[25]));
  static SearchService.simulator()((a2 + v8[26]));
  static ServiceSubscriptionService.simulator()((a2 + v8[27]));
  static SessionService.simulator()((a2 + v8[28]));
  static SharePlayService.simulator()((a2 + v8[29]));
  static SiriService.simulator()((a2 + v8[30]));
  static SyncService.simulator()((a2 + v8[31]));
  type metadata accessor for SimulatorToastService();
  v9 = swift_allocObject();
  swift_defaultActor_initialize();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B40, &qword_1E65EC560);
  *(v9 + 112) = sub_1E65E17A8();
  v10 = v8[33];
  swift_retain_n();
  static UpNextQueueService.simulator()((a2 + v10));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077620, &qword_1E65F3398);
  sub_1E65D7F18();
  type metadata accessor for WindowSceneObserver();
  swift_allocObject();
  v11 = WindowSceneObserver.init()();
  result = static WorkoutPlanService.simulator()((a2 + v8[36]));
  *a2 = v6;
  *(a2 + 8) = v7;
  v13 = (a2 + v8[32]);
  *v13 = &unk_1E6601060;
  v13[1] = v9;
  v13[2] = &unk_1E6601070;
  v13[3] = v9;
  v13[4] = &unk_1E6601080;
  v13[5] = v9;
  *(a2 + v8[35]) = v11;
  return result;
}

uint64_t sub_1E614EE6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65E3DE8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v15 - v10;
  MEMORY[0x1E694C310](v9, a1, &type metadata for SidebarPillForceEnabled, a2);
  v12 = sub_1E614F070();
  v15[0] = a2;
  v15[1] = v12;
  swift_getWitnessTable();
  sub_1E5FEE4C8();
  v13 = *(v5 + 8);
  v13(v8, v4);
  sub_1E5FEE4C8();
  return (v13)(v11, v4);
}

uint64_t sub_1E614EFF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075C88, &qword_1E65F3408);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

unint64_t sub_1E614F070()
{
  result = qword_1EE2D87A8;
  if (!qword_1EE2D87A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D87A8);
  }

  return result;
}

unint64_t sub_1E614F0C4()
{
  result = qword_1ED075C90;
  if (!qword_1ED075C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED075C88, &qword_1E65F3408);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075C90);
  }

  return result;
}

uint64_t AppComposer.forYouSummaryViewBuilder(currentRoutingContext:navigateToFitnessPlusTab:identifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v29 = a2;
  v30 = a3;
  v31 = a5;
  v9 = sub_1E65D76F8();
  v25 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v26 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AppComposer(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for AppComposer;
  sub_1E5E1D554(v6, v15, type metadata accessor for AppComposer);
  sub_1E5DF650C(a1, v32);
  (*(v10 + 16))(&v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v9);
  v16 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v17 = (v16 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 23) & 0xFFFFFFFFFFFFFFF8;
  v19 = (*(v10 + 80) + v18 + 40) & ~*(v10 + 80);
  v20 = swift_allocObject();
  sub_1E5E1E048(v15, v20 + v16, type metadata accessor for AppComposer);
  v21 = (v20 + v17);
  v22 = v30;
  *v21 = v29;
  v21[1] = v22;
  sub_1E5DF599C(v32, v20 + v18);
  (*(v10 + 32))(v20 + v19, v26, v25);
  sub_1E5E1D554(v28, v15, v27);
  v23 = swift_allocObject();
  sub_1E5E1E048(v15, v23 + v16, type metadata accessor for AppComposer);
  type metadata accessor for ArtworkDescriptor(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
  sub_1E6162498(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
  sub_1E5FEB2FC();
  sub_1E6160F48();
  return sub_1E65DC518();
}

uint64_t sub_1E614F458(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v102 = a5;
  v93 = a3;
  v94 = a4;
  v92 = a2;
  v6 = sub_1E65D76F8();
  v99 = *(v6 - 8);
  v100 = v6;
  v101 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v98 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075CB0, &qword_1E65F3418);
  v104 = *(v8 - 8);
  v105 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v103 = &v76 - v9;
  v10 = type metadata accessor for AppComposer(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10 - 8);
  v89 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v87 = &v76 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v85 = &v76 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v82 = &v76 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v81 = &v76 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v79 = &v76 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v77 = &v76 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v78 = &v76 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v76 - v29;
  v31 = MEMORY[0x1EEE9AC00](v28);
  v33 = &v76 - v32;
  v34 = MEMORY[0x1EEE9AC00](v31);
  v36 = &v76 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v38 = &v76 - v37;
  v39 = sub_1E65DC658();
  MEMORY[0x1EEE9AC00](v39 - 8);
  v90 = &v76 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075CB8, &qword_1E65F3420);
  v42 = *(v41 - 8);
  v96 = v41;
  v97 = v42;
  MEMORY[0x1EEE9AC00](v41);
  v106 = v38;
  v107 = &v76 - v43;
  v95 = *a1;
  sub_1E5E1D554(a1, v38, type metadata accessor for AppComposer);
  v91 = *(v11 + 80);
  v44 = (v91 + 16) & ~v91;
  v88 = swift_allocObject();
  sub_1E5E1E048(v38, v88 + v44, type metadata accessor for AppComposer);
  sub_1E5E1D554(a1, v36, type metadata accessor for AppComposer);
  v86 = swift_allocObject();
  sub_1E5E1E048(v36, v86 + v44, type metadata accessor for AppComposer);
  sub_1E5E1D554(a1, v33, type metadata accessor for AppComposer);
  v84 = swift_allocObject();
  sub_1E5E1E048(v33, v84 + v44, type metadata accessor for AppComposer);
  sub_1E5E1D554(a1, v30, type metadata accessor for AppComposer);
  v83 = swift_allocObject();
  sub_1E5E1E048(v30, v83 + v44, type metadata accessor for AppComposer);
  v45 = v78;
  sub_1E5E1D554(a1, v78, type metadata accessor for AppComposer);
  v80 = swift_allocObject();
  sub_1E5E1E048(v45, v80 + v44, type metadata accessor for AppComposer);
  v46 = v77;
  sub_1E5E1D554(a1, v77, type metadata accessor for AppComposer);
  v78 = swift_allocObject();
  sub_1E5E1E048(v46, v78 + v44, type metadata accessor for AppComposer);
  v47 = v79;
  sub_1E5E1D554(a1, v79, type metadata accessor for AppComposer);
  v77 = swift_allocObject();
  sub_1E5E1E048(v47, v77 + v44, type metadata accessor for AppComposer);
  v48 = v81;
  sub_1E5E1D554(a1, v81, type metadata accessor for AppComposer);
  v79 = swift_allocObject();
  sub_1E5E1E048(v48, v79 + v44, type metadata accessor for AppComposer);
  v49 = v82;
  sub_1E5E1D554(a1, v82, type metadata accessor for AppComposer);
  v81 = swift_allocObject();
  sub_1E5E1E048(v49, v81 + v44, type metadata accessor for AppComposer);
  v50 = v85;
  sub_1E5E1D554(a1, v85, type metadata accessor for AppComposer);
  v82 = swift_allocObject();
  sub_1E5E1E048(v50, v82 + v44, type metadata accessor for AppComposer);
  v76 = a1;
  v51 = v87;
  sub_1E5E1D554(a1, v87, type metadata accessor for AppComposer);
  v85 = swift_allocObject();
  sub_1E5E1E048(v51, v85 + v44, type metadata accessor for AppComposer);
  v52 = v89;
  sub_1E5E1D554(a1, v89, type metadata accessor for AppComposer);
  v53 = swift_allocObject();
  sub_1E5E1E048(v52, v53 + v44, type metadata accessor for AppComposer);
  v54 = swift_allocObject();
  v56 = v92;
  v55 = v93;
  *(v54 + 16) = v92;
  *(v54 + 24) = v55;
  sub_1E5DF650C(v94, &v108);
  v57 = swift_allocObject();
  *(v57 + 16) = v56;
  *(v57 + 24) = v55;
  sub_1E5DF599C(&v108, v57 + 32);
  swift_retain_n();
  sub_1E65DC648();
  v58 = v76;
  v59 = v106;
  sub_1E5E1D554(v76, v106, type metadata accessor for AppComposer);
  v60 = swift_allocObject();
  sub_1E5E1E048(v59, v60 + v44, type metadata accessor for AppComposer);
  type metadata accessor for ArtworkDescriptor(0);
  sub_1E6162498(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
  sub_1E6160F48();
  sub_1E65DC588();
  sub_1E65E4CC8();
  v62 = v98;
  v61 = v99;
  v63 = v100;
  (*(v99 + 16))(v98, v102, v100);
  v64 = v58;
  v65 = v106;
  sub_1E5E1D554(v64, v106, type metadata accessor for AppComposer);
  v66 = v61;
  v67 = (*(v61 + 80) + 16) & ~*(v61 + 80);
  v68 = (v101 + v91 + v67) & ~v91;
  v69 = swift_allocObject();
  (*(v66 + 32))(v69 + v67, v62, v63);
  sub_1E5E1E048(v65, v69 + v68, type metadata accessor for AppComposer);
  type metadata accessor for AppFeature(0);
  sub_1E6162498(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  sub_1E5FED46C(&qword_1ED075CC0, &qword_1ED075CB8, &qword_1E65F3420, MEMORY[0x1E699E0E8]);
  v70 = v103;
  v71 = v96;
  sub_1E65E4DE8();
  v72 = v107;
  v73 = v71;
  v74 = sub_1E65E4F08();
  (*(v104 + 8))(v70, v105);
  (*(v97 + 8))(v72, v73);
  return v74;
}

uint64_t sub_1E6150078()
{
  v1 = *(type metadata accessor for AppComposer(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(sub_1E65D76F8() - 8);
  v6 = *(v0 + v3);
  v7 = *(v0 + v3 + 8);
  v8 = v0 + ((v4 + *(v5 + 80) + 40) & ~*(v5 + 80));

  return sub_1E614F458((v0 + v2), v6, v7, v0 + v4, v8);
}

uint64_t sub_1E6150164(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 6040) = a3;
  *(v3 + 10792) = a2;
  *(v3 + 5992) = a1;
  v4 = sub_1E65DC898();
  *(v3 + 6088) = v4;
  *(v3 + 6136) = *(v4 - 8);
  *(v3 + 6184) = swift_task_alloc();
  v5 = sub_1E65D9E18();
  *(v3 + 6232) = v5;
  *(v3 + 6280) = *(v5 - 8);
  *(v3 + 6328) = swift_task_alloc();
  v6 = sub_1E65DA708();
  *(v3 + 6376) = v6;
  *(v3 + 6424) = *(v6 - 8);
  *(v3 + 6472) = swift_task_alloc();
  v7 = sub_1E65DC988();
  *(v3 + 6520) = v7;
  *(v3 + 6568) = *(v7 - 8);
  *(v3 + 6616) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0728C0, &qword_1E65EBF58);
  *(v3 + 6664) = swift_task_alloc();
  v8 = sub_1E65D7848();
  *(v3 + 6712) = v8;
  *(v3 + 6760) = *(v8 - 8);
  *(v3 + 6808) = swift_task_alloc();
  type metadata accessor for AppEnvironment(0);
  *(v3 + 6856) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0728C8, &qword_1E65EBF60);
  *(v3 + 6904) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0728D0, &qword_1E65EBF68);
  *(v3 + 6952) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0728D8, &qword_1E65EBF70);
  *(v3 + 7000) = v9;
  *(v3 + 7048) = *(v9 - 8);
  *(v3 + 7096) = swift_task_alloc();
  v10 = sub_1E65D82F8();
  *(v3 + 7144) = v10;
  *(v3 + 7192) = *(v10 - 8);
  *(v3 + 7240) = swift_task_alloc();
  *(v3 + 7288) = swift_task_alloc();
  v11 = type metadata accessor for AppComposer(0);
  *(v3 + 7336) = v11;
  v12 = *(v11 - 8);
  *(v3 + 7384) = v12;
  *(v3 + 7432) = *(v12 + 64);
  *(v3 + 7480) = swift_task_alloc();
  *(v3 + 7528) = swift_task_alloc();
  *(v3 + 7576) = swift_task_alloc();
  *(v3 + 7624) = swift_task_alloc();
  *(v3 + 7672) = swift_task_alloc();
  *(v3 + 7720) = swift_task_alloc();
  *(v3 + 7768) = swift_task_alloc();
  *(v3 + 7816) = swift_task_alloc();
  v13 = sub_1E65DA948();
  *(v3 + 7864) = v13;
  *(v3 + 7912) = *(v13 - 8);
  *(v3 + 7960) = swift_task_alloc();
  *(v3 + 8008) = swift_task_alloc();
  *(v3 + 8056) = swift_task_alloc();
  *(v3 + 8104) = swift_task_alloc();
  *(v3 + 8152) = swift_task_alloc();
  *(v3 + 8200) = swift_task_alloc();
  v14 = sub_1E65E3B68();
  *(v3 + 8248) = v14;
  *(v3 + 8296) = *(v14 - 8);
  *(v3 + 8344) = swift_task_alloc();
  *(v3 + 8392) = swift_task_alloc();
  *(v3 + 8440) = swift_task_alloc();
  v15 = sub_1E65D76F8();
  *(v3 + 8488) = v15;
  v16 = *(v15 - 8);
  *(v3 + 8536) = v16;
  *(v3 + 8584) = *(v16 + 64);
  *(v3 + 8632) = swift_task_alloc();
  *(v3 + 8680) = swift_task_alloc();
  *(v3 + 8728) = swift_task_alloc();
  *(v3 + 8776) = swift_task_alloc();
  *(v3 + 8824) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E615079C, 0, 0);
}

uint64_t sub_1E615079C(uint64_t a1)
{
  v57 = v1;
  v2 = *(v1 + 8824);
  v3 = *(v1 + 8776);
  v4 = *(v1 + 8536);
  v5 = *(v1 + 8488);
  sub_1E65D76E8();
  sub_1E65DE318();
  v6 = *(v4 + 16);
  *(v1 + 8872) = v6;
  *(v1 + 8920) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v49 = v6;
  v6(v3, v2, v5);
  v7 = sub_1E65E3B48();
  v8 = sub_1E65E6338();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v1 + 8776);
  v11 = *(v1 + 8536);
  v12 = *(v1 + 8488);
  v13 = *(v1 + 8440);
  v14 = *(v1 + 8296);
  v15 = *(v1 + 8248);
  if (v9)
  {
    v54 = *(v1 + 8248);
    v16 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v56 = v52;
    *v16 = 136315138;
    sub_1E6162498(&qword_1EE2D7198, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v47 = v8;
    v17 = sub_1E65E6BC8();
    v50 = v13;
    v19 = v18;
    (*(v11 + 8))(v10, v12);
    v20 = sub_1E5DFD4B0(v17, v19, &v56);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_1E5DE9000, v7, v47, "forYouRequest begin — correlationKey=%s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v52);
    MEMORY[0x1E694F1C0](v52, -1, -1);
    MEMORY[0x1E694F1C0](v16, -1, -1);

    (*(v14 + 8))(v50, v54);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
    (*(v14 + 8))(v13, v15);
  }

  v21 = *(v1 + 8824);
  v22 = *(v1 + 8728);
  v23 = *(v1 + 8584);
  v24 = *(v1 + 8536);
  v25 = *(v1 + 8488);
  v26 = *(v1 + 7816);
  v44 = *(v1 + 7768);
  v45 = *(v1 + 7720);
  v46 = *(v1 + 7672);
  v48 = *(v1 + 7624);
  v51 = *(v1 + 7576);
  v53 = *(v1 + 7528);
  v55 = *(v1 + 7480);
  v27 = *(v1 + 7432);
  v28 = *(v1 + 7384);
  v42 = *(v1 + 10792);
  v43 = *(v1 + 6040);
  sub_1E5E1D554(v43, v26, type metadata accessor for AppComposer);
  v49(v22, v21, v25);
  v29 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v30 = (v29 + v27 + *(v24 + 80)) & ~*(v24 + 80);
  v31 = v30 + v23;
  v32 = swift_allocObject();
  *(v1 + 8968) = v32;
  sub_1E5E1E048(v26, v32 + v29, type metadata accessor for AppComposer);
  (*(v24 + 32))(v32 + v30, v22, v25);
  *(v32 + v31) = v42;
  swift_asyncLet_begin();
  sub_1E5E1D554(v43, v44, type metadata accessor for AppComposer);
  v33 = swift_allocObject();
  *(v1 + 9016) = v33;
  sub_1E5E1E048(v44, v33 + v29, type metadata accessor for AppComposer);
  swift_asyncLet_begin();
  sub_1E5E1D554(v43, v45, type metadata accessor for AppComposer);
  v34 = swift_allocObject();
  *(v1 + 9064) = v34;
  sub_1E5E1E048(v45, v34 + v29, type metadata accessor for AppComposer);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0728E0, &qword_1E65EBFA8);
  swift_asyncLet_begin();
  sub_1E5E1D554(v43, v46, type metadata accessor for AppComposer);
  v35 = swift_allocObject();
  *(v1 + 9112) = v35;
  sub_1E5E1E048(v46, v35 + v29, type metadata accessor for AppComposer);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0728E8, &qword_1E660EFE0);
  swift_asyncLet_begin();
  sub_1E5E1D554(v43, v48, type metadata accessor for AppComposer);
  v36 = swift_allocObject();
  *(v1 + 9160) = v36;
  sub_1E5E1E048(v48, v36 + v29, type metadata accessor for AppComposer);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0728F0, &qword_1E660EFB0);
  swift_asyncLet_begin();
  sub_1E5E1D554(v43, v51, type metadata accessor for AppComposer);
  v37 = swift_allocObject();
  *(v1 + 9208) = v37;
  sub_1E5E1E048(v51, v37 + v29, type metadata accessor for AppComposer);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0728F8, &qword_1E65EBFE0);
  swift_asyncLet_begin();
  sub_1E5E1D554(v43, v53, type metadata accessor for AppComposer);
  v38 = swift_allocObject();
  *(v1 + 9256) = v38;
  sub_1E5E1E048(v53, v38 + v29, type metadata accessor for AppComposer);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072900, &qword_1E660EF80);
  swift_asyncLet_begin();
  sub_1E5E1D554(v43, v55, type metadata accessor for AppComposer);
  v39 = swift_allocObject();
  *(v1 + 9304) = v39;
  sub_1E5E1E048(v55, v39 + v29, type metadata accessor for AppComposer);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072908, &qword_1E660F010);
  swift_asyncLet_begin();
  v40 = *(v1 + 8200);

  return MEMORY[0x1EEE6DEC0](v1 + 1296, v40, sub_1E6150F00, v1 + 5520);
}

uint64_t sub_1E6150F00()
{
  *(v1 + 9352) = v0;
  if (v0)
  {
    v2 = sub_1E6154294;
  }

  else
  {
    v2 = sub_1E6150F34;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6150F34()
{
  v1 = v0[1025];
  v2 = v0[1019];
  v3 = v0[989];
  v4 = v0[983];
  v5 = v0[881];
  v6 = v0[875];
  v7 = v0[869];
  v8 = *(v3 + 16);
  v0[1175] = v8;
  v0[1181] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v2, v1, v4);
  sub_1E65DA938();
  v9 = *(v3 + 8);
  v0[1187] = v9;
  v0[1193] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v2, v4);
  if ((*(v5 + 48))(v7, 1, v6) == 1)
  {
    sub_1E5DFE50C(v0[869], &qword_1ED0728D0, &qword_1E65EBF68);
    v10 = v0[1025];

    return MEMORY[0x1EEE6DEC0](v0 + 162, v10, sub_1E6151314, v0 + 792);
  }

  v11 = v0[863];
  sub_1E5FAB460(v0[869], v0[887], &qword_1ED0728D8, &qword_1E65EBF70);
  sub_1E65D7FB8();
  v12 = sub_1E65D9E28();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_9;
  }

  if ((*(v13 + 88))(v0[863], v12) != *MEMORY[0x1E69CC988])
  {
    (*(v13 + 8))(v0[863], v12);
LABEL_9:
    v14 = 1488;
    v19 = v0[887];
    v20 = sub_1E65DC678();
    sub_1E6162498(&qword_1EE2D6B28, MEMORY[0x1E699E140], MEMORY[0x1E699E148]);
    v0[1211] = swift_allocError();
    (*(*(v20 - 8) + 104))(v21, *MEMORY[0x1E699E138], v20);
    swift_willThrow();
    sub_1E5DFE50C(v19, &qword_1ED0728D8, &qword_1E65EBF70);
    v18 = sub_1E6151CE4;
    goto LABEL_10;
  }

  v14 = 756;
  v15 = v0[887];
  v16 = sub_1E65DC678();
  sub_1E6162498(&qword_1EE2D6B28, MEMORY[0x1E699E140], MEMORY[0x1E699E148]);
  v0[1205] = swift_allocError();
  (*(*(v16 - 8) + 104))(v17, *MEMORY[0x1E699E130], v16);
  swift_willThrow();
  sub_1E5DFE50C(v15, &qword_1ED0728D8, &qword_1E65EBF70);
  v18 = sub_1E6151360;
LABEL_10:

  return MEMORY[0x1EEE6DEB0](v0 + 322, v0 + 725, v18, &v0[v14]);
}

uint64_t sub_1E6151314()
{
  *(v1 + 9592) = v0;
  if (v0)
  {
    return MEMORY[0x1EEE6DEB0](v1 + 2576, v1 + 5800, sub_1E6154C40, v1 + 6384);
  }

  else
  {
    return MEMORY[0x1EEE6DFA0](sub_1E6152668, 0, 0);
  }
}

uint64_t sub_1E6151554(uint64_t a1)
{
  v47 = v1;
  v2 = v1[1205];
  v3 = v1[1109];
  v4 = v1[1103];
  v5 = v1[1079];
  v6 = v1[1061];
  sub_1E65DE318();
  v3(v5, v4, v6);
  v7 = v2;
  v8 = sub_1E65E3B48();
  v9 = sub_1E65E6338();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v1[1079];
    v11 = v1[1067];
    v45 = v2;
    v12 = v1[1061];
    v41 = v1[1037];
    v42 = v1[1031];
    v43 = v1[1043];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v46[0] = v14;
    *v13 = 136315394;
    sub_1E6162498(&qword_1EE2D7198, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v15 = sub_1E65E6BC8();
    v17 = v16;
    v18 = v12;
    v2 = v45;
    v44 = *(v11 + 8);
    v44(v10, v18);
    v19 = sub_1E5DFD4B0(v15, v17, v46);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    swift_getErrorValue();
    v20 = sub_1E65E6C78();
    v22 = sub_1E5DFD4B0(v20, v21, v46);

    *(v13 + 14) = v22;
    _os_log_impl(&dword_1E5DE9000, v8, v9, "forYouRequest end — correlationKey=%s error=%s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v14, -1, -1);
    MEMORY[0x1E694F1C0](v13, -1, -1);

    (*(v41 + 8))(v43, v42);
  }

  else
  {
    v23 = v1[1079];
    v24 = v1[1067];
    v25 = v1[1061];
    v26 = v1[1043];
    v27 = v1[1037];
    v28 = v1[1031];

    v44 = *(v24 + 8);
    v44(v23, v25);
    (*(v27 + 8))(v26, v28);
  }

  swift_getErrorValue();
  v29 = sub_1E65D9288();
  v1[650] = v29;
  v1[651] = sub_1E6162498(&qword_1EE2D70A0, MEMORY[0x1E69CBF78], MEMORY[0x1E69CBF70]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 647);
  (*(*(v29 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69CBF50], v29);
  v31 = sub_1E65E6CA8();
  __swift_destroy_boxed_opaque_existential_1(v1 + 647);
  if (v31)
  {
    goto LABEL_10;
  }

  swift_getErrorValue();
  v32 = sub_1E65E6C98();
  v34 = v33;
  if (v32 == sub_1E65E5C78() && v34 == v35)
  {
  }

  else
  {
    v36 = sub_1E65E6C18();

    if ((v36 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  swift_getErrorValue();
  if (sub_1E65E6C88() == 1)
  {
LABEL_10:
    v37 = sub_1E65DC678();
    sub_1E6162498(&qword_1EE2D6B28, MEMORY[0x1E699E140], MEMORY[0x1E699E148]);
    swift_allocError();
    (*(*(v37 - 8) + 104))(v38, *MEMORY[0x1E699E138], v37);
    swift_willThrow();

    goto LABEL_12;
  }

LABEL_11:
  swift_willThrow();
LABEL_12:
  v44(v1[1103], v1[1061]);

  v39 = v1[1];

  return v39();
}

uint64_t sub_1E6151ED8(uint64_t a1)
{
  v47 = v1;
  v2 = v1[1211];
  v3 = v1[1109];
  v4 = v1[1103];
  v5 = v1[1079];
  v6 = v1[1061];
  sub_1E65DE318();
  v3(v5, v4, v6);
  v7 = v2;
  v8 = sub_1E65E3B48();
  v9 = sub_1E65E6338();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v1[1079];
    v11 = v1[1067];
    v45 = v2;
    v12 = v1[1061];
    v41 = v1[1037];
    v42 = v1[1031];
    v43 = v1[1043];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v46[0] = v14;
    *v13 = 136315394;
    sub_1E6162498(&qword_1EE2D7198, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v15 = sub_1E65E6BC8();
    v17 = v16;
    v18 = v12;
    v2 = v45;
    v44 = *(v11 + 8);
    v44(v10, v18);
    v19 = sub_1E5DFD4B0(v15, v17, v46);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    swift_getErrorValue();
    v20 = sub_1E65E6C78();
    v22 = sub_1E5DFD4B0(v20, v21, v46);

    *(v13 + 14) = v22;
    _os_log_impl(&dword_1E5DE9000, v8, v9, "forYouRequest end — correlationKey=%s error=%s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v14, -1, -1);
    MEMORY[0x1E694F1C0](v13, -1, -1);

    (*(v41 + 8))(v43, v42);
  }

  else
  {
    v23 = v1[1079];
    v24 = v1[1067];
    v25 = v1[1061];
    v26 = v1[1043];
    v27 = v1[1037];
    v28 = v1[1031];

    v44 = *(v24 + 8);
    v44(v23, v25);
    (*(v27 + 8))(v26, v28);
  }

  swift_getErrorValue();
  v29 = sub_1E65D9288();
  v1[650] = v29;
  v1[651] = sub_1E6162498(&qword_1EE2D70A0, MEMORY[0x1E69CBF78], MEMORY[0x1E69CBF70]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 647);
  (*(*(v29 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69CBF50], v29);
  v31 = sub_1E65E6CA8();
  __swift_destroy_boxed_opaque_existential_1(v1 + 647);
  if (v31)
  {
    goto LABEL_10;
  }

  swift_getErrorValue();
  v32 = sub_1E65E6C98();
  v34 = v33;
  if (v32 == sub_1E65E5C78() && v34 == v35)
  {
  }

  else
  {
    v36 = sub_1E65E6C18();

    if ((v36 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  swift_getErrorValue();
  if (sub_1E65E6C88() == 1)
  {
LABEL_10:
    v37 = sub_1E65DC678();
    sub_1E6162498(&qword_1EE2D6B28, MEMORY[0x1E699E140], MEMORY[0x1E699E148]);
    swift_allocError();
    (*(*(v37 - 8) + 104))(v38, *MEMORY[0x1E699E138], v37);
    swift_willThrow();

    goto LABEL_12;
  }

LABEL_11:
  swift_willThrow();
LABEL_12:
  v44(v1[1103], v1[1061]);

  v39 = v1[1];

  return v39();
}

uint64_t sub_1E6152668()
{
  v1 = *(v0 + 7336);
  v2 = *(v0 + 6856);
  v3 = *(v0 + 6040);
  (*(v0 + 9400))(*(v0 + 8104), *(v0 + 8200), *(v0 + 7864));
  sub_1E5E1D554(v3 + *(v1 + 20), v2, type metadata accessor for AppEnvironment);
  swift_getKeyPath();
  sub_1E65E4EC8();

  v4 = *(v0 + 7288);

  return MEMORY[0x1EEE6DEC0](v0 + 656, v4, sub_1E6152750, v0 + 6768);
}

uint64_t sub_1E6152750()
{
  v1[1217] = v0;
  if (v0)
  {
    v2 = v1[1187];
    v3 = v1[1013];
    v4 = v1[983];
    v5 = v1[857];
    (*(v1[845] + 8))(v1[851], v1[839]);
    sub_1E61624E0(v5, type metadata accessor for AppEnvironment);
    v2(v3, v4);

    return MEMORY[0x1EEE6DFA0](sub_1E61555C4, 0, 0);
  }

  else
  {
    (*(v1[899] + 16))(v1[905], v1[911], v1[893]);

    return MEMORY[0x1EEE6DEC0](v1 + 242, v1 + 731, sub_1E615288C, v1 + 900);
  }
}

uint64_t sub_1E615288C()
{
  v1[1223] = v0;
  if (v0)
  {
    v2 = v1[1187];
    v3 = v1[1013];
    v4 = v1[983];
    v5 = v1[857];
    v6 = v1[851];
    v7 = v1[845];
    v8 = v1[839];
    (*(v1[899] + 8))(v1[905], v1[893]);
    (*(v7 + 8))(v6, v8);
    sub_1E61624E0(v5, type metadata accessor for AppEnvironment);
    v2(v3, v4);

    return MEMORY[0x1EEE6DFA0](sub_1E6155F70, 0, 0);
  }

  else
  {
    v1[1229] = v1[731];

    return MEMORY[0x1EEE6DEC0](v1 + 402, v1 + 719, sub_1E61529E4, v1 + 954);
  }
}

uint64_t sub_1E61529E4()
{
  v1[1235] = v0;
  if (v0)
  {
    v12 = v1[1187];
    v2 = v1[1013];
    v3 = v1[983];
    v4 = v1[905];
    v5 = v1[899];
    v6 = v1[893];
    v7 = v1[857];
    v8 = v1[851];
    v9 = v1[845];
    v10 = v1[839];

    (*(v5 + 8))(v4, v6);
    (*(v9 + 8))(v8, v10);
    sub_1E61624E0(v7, type metadata accessor for AppEnvironment);
    v12(v2, v3);

    return MEMORY[0x1EEE6DFA0](sub_1E615691C, 0, 0);
  }

  else
  {
    v1[1241] = v1[719];

    return MEMORY[0x1EEE6DEC0](v1 + 562, v1 + 689, sub_1E6152B64, v1 + 1008);
  }
}

uint64_t sub_1E6152B64()
{
  v1[1247] = v0;
  if (v0)
  {
    v12 = v1[1187];
    v11 = v1[1013];
    v2 = v1[983];
    v3 = v1[905];
    v4 = v1[899];
    v5 = v1[893];
    v6 = v1[857];
    v7 = v1[851];
    v8 = v1[845];
    v9 = v1[839];

    (*(v4 + 8))(v3, v5);
    (*(v8 + 8))(v7, v9);
    sub_1E61624E0(v6, type metadata accessor for AppEnvironment);
    v12(v11, v2);

    return MEMORY[0x1EEE6DFA0](sub_1E61572C8, 0, 0);
  }

  else
  {
    v1[1253] = v1[689];

    return MEMORY[0x1EEE6DEC0](v1 + 2, v1 + 743, sub_1E6152CF0, v1 + 1062);
  }
}

uint64_t sub_1E6152CF0()
{
  v1[1259] = v0;
  if (v0)
  {
    v12 = v1[1187];
    v10 = v1[983];
    v11 = v1[1013];
    v2 = v1[905];
    v3 = v1[899];
    v4 = v1[893];
    v5 = v1[857];
    v6 = v1[851];
    v7 = v1[845];
    v8 = v1[839];

    (*(v3 + 8))(v2, v4);
    (*(v7 + 8))(v6, v8);
    sub_1E61624E0(v5, type metadata accessor for AppEnvironment);
    v12(v11, v10);

    return MEMORY[0x1EEE6DFA0](sub_1E6157C74, 0, 0);
  }

  else
  {
    v1[1265] = v1[743];

    return MEMORY[0x1EEE6DEC0](v1 + 482, v1 + 737, sub_1E6152E84, v1 + 1116);
  }
}

uint64_t sub_1E6152E84()
{
  v1[1271] = v0;
  if (v0)
  {
    v12 = v1[1187];
    v10 = v1[983];
    v11 = v1[1013];
    v2 = v1[905];
    v3 = v1[899];
    v4 = v1[893];
    v9 = v1[857];
    v5 = v1[851];
    v6 = v1[845];
    v7 = v1[839];

    (*(v3 + 8))(v2, v4);
    (*(v6 + 8))(v5, v7);
    sub_1E61624E0(v9, type metadata accessor for AppEnvironment);
    v12(v11, v10);

    return MEMORY[0x1EEE6DFA0](sub_1E6158620, 0, 0);
  }

  else
  {
    v1[1277] = v1[737];

    return MEMORY[0x1EEE6DEC0](v1 + 322, v1 + 725, sub_1E6153028, v1 + 1170);
  }
}

uint64_t sub_1E6153028()
{
  v1[1283] = v0;
  if (v0)
  {
    v13 = v1[1187];
    v11 = v1[983];
    v12 = v1[1013];
    v2 = v1[905];
    v3 = v1[899];
    v4 = v1[893];
    v9 = v1[851];
    v10 = v1[857];
    v5 = v1[845];
    v6 = v1[839];

    (*(v3 + 8))(v2, v4);
    (*(v5 + 8))(v9, v6);
    sub_1E61624E0(v10, type metadata accessor for AppEnvironment);
    v13(v12, v11);
    v7 = sub_1E6158FCC;
  }

  else
  {
    v7 = sub_1E6153188;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E6153188()
{
  v1 = v0[1277];
  v2 = v0[1265];
  v3 = v0[1253];
  v12 = v0[1229];
  v13 = v0[1241];
  v4 = v0[1013];
  v18 = v0[983];
  v19 = v0[1187];
  v5 = v0[905];
  v6 = v0[857];
  v16 = v0[893];
  v7 = v0[851];
  v14 = v0[899];
  v15 = v0[845];
  v17 = v0[839];
  v8 = v0[725];

  v11 = sub_1E6482BC0() & 1;
  v0[1289] = PersonalizationInferenceResponse.makeSectionDescriptors(environment:locale:configuration:bodyFocuses:themes:musicGenres:skillLevels:trainers:modalities:isPlanCreationSupported:)(v6, v7, v5, v12, v13, v3, v2, v1, v8, v11);

  (*(v14 + 8))(v5, v16);
  (*(v15 + 8))(v7, v17);
  sub_1E61624E0(v6, type metadata accessor for AppEnvironment);
  v19(v4, v18);
  v9 = v0[1025];

  return MEMORY[0x1EEE6DEC0](v0 + 162, v9, sub_1E6153354, v0 + 1224);
}

uint64_t sub_1E6153354()
{
  *(v1 + 10360) = v0;
  if (v0)
  {
    v2 = sub_1E6159978;
  }

  else
  {
    v2 = sub_1E6153388;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6153388()
{
  v1 = *(v0 + 9496);
  v2 = *(v0 + 8056);
  v3 = *(v0 + 7864);
  (*(v0 + 9400))(v2, *(v0 + 8200), v3);
  v4 = sub_1E65DA8E8();
  v1(v2, v3);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = *(v0 + 6568);
    v7 = *(v0 + 6424);
    v8 = *(v0 + 6280);
    v9 = *(v0 + 6136);
    v52 = MEMORY[0x1E69E7CC0];
    v10 = sub_1E601BF64(0, v5, 0);
    v14 = v52;
    v42 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v40 = v8;
    v50 = (v8 + 8);
    v15 = 0;
    v43 = v7;
    v44 = v6;
    v41 = (v7 + 8);
    v45 = v5;
    v46 = v4;
    while (v15 < *(v4 + 16))
    {
      v47 = v14;
      v48 = v15;
      (*(v43 + 16))(*(v0 + 6472), v42 + *(v43 + 72) * v15, *(v0 + 6376));
      v16 = sub_1E65DA6D8();
      v17 = *(v16 + 16);
      if (v17)
      {
        v18 = v16 + ((*(v40 + 80) + 32) & ~*(v40 + 80));
        v19 = *(v40 + 72);
        v51 = *(v40 + 16);
        v20 = MEMORY[0x1E69E7CC0];
        v49 = v19;
        v51(*(v0 + 6328), v18, *(v0 + 6232));
        while (1)
        {
          v21 = sub_1E65D9DD8();
          v23 = v22;
          v25 = v24;
          v26 = sub_1E6413384(v21, v22, v24 & 1);
          sub_1E5F87058(v21, v23, v25 & 1);
          v27 = *(v0 + 6328);
          v28 = *(v0 + 6232);
          if (v26 == 9)
          {
            (*v50)(*(v0 + 6328), *(v0 + 6232));
          }

          else
          {
            sub_1E65D9DA8();
            sub_1E65D9DF8();
            sub_1E65DC858();
            (*v50)(v27, v28);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v20 = sub_1E64F615C(0, v20[2] + 1, 1, v20);
            }

            v30 = v20[2];
            v29 = v20[3];
            v19 = v49;
            if (v30 >= v29 >> 1)
            {
              v20 = sub_1E64F615C((v29 > 1), v30 + 1, 1, v20);
            }

            v31 = *(v0 + 6184);
            v32 = *(v0 + 6088);
            v20[2] = v30 + 1;
            (*(v9 + 32))(v20 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v30, v31, v32);
          }

          v18 += v19;
          if (!--v17)
          {
            break;
          }

          v51(*(v0 + 6328), v18, *(v0 + 6232));
        }
      }

      v33 = *(v0 + 6472);
      v34 = *(v0 + 6376);
      sub_1E65DA6E8();
      sub_1E65DA6F8();
      sub_1E65DC948();
      (*v41)(v33, v34);
      v14 = v47;
      v36 = *(v47 + 16);
      v35 = *(v47 + 24);
      v4 = v46;
      if (v36 >= v35 >> 1)
      {
        sub_1E601BF64((v35 > 1), v36 + 1, 1);
        v14 = v47;
      }

      v15 = v48 + 1;
      v37 = *(v0 + 6616);
      v38 = *(v0 + 6520);
      *(v14 + 16) = v36 + 1;
      v10 = (*(v44 + 32))(v14 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v36, v37, v38);
      if (v48 + 1 == v45)
      {

        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
LABEL_20:
    *(v0 + 10408) = v14;
    v12 = sub_1E61537E8;
    v11 = *(v0 + 8200);
    v10 = (v0 + 1296);
    v13 = v0 + 10224;
  }

  return MEMORY[0x1EEE6DEC0](v10, v11, v12, v13);
}