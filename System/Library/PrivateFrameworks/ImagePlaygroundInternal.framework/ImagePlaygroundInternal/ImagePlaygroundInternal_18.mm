uint64_t sub_1D2489FF0(char a1)
{
  v2 = *v1;
  *(*v1 + 368) = a1;

  v3 = *(v2 + 264);
  v4 = *(v2 + 256);

  return MEMORY[0x1EEE6DFA0](sub_1D248A118, v4, v3);
}

void sub_1D248A118()
{
  v45 = v0;
  v2 = *(v0 + 296);
  v1 = *(v0 + 304);
  v3 = *(v0 + 200);
  v4 = sub_1D23C6DDC();
  swift_getKeyPath();
  *(v0 + 152) = v3;
  v5 = (v3 + v2);
  sub_1D28719E8();

  v6 = v5[1];
  v44[0] = *v5;
  v44[1] = v6;
  v7 = v5[3];
  v44[2] = v5[2];
  v44[3] = v7;
  v8 = sub_1D26134C8(v44);
  if (v8 == *(v3 + v1))
  {
    v12 = *(v0 + 304);
    v13 = *(v0 + 200);

    *(v13 + v12) = v8;
    v9 = *(v0 + 320);
  }

  else
  {
    v9 = *(v0 + 320);
    v10 = *(v0 + 200);
    swift_getKeyPath();
    v11 = swift_task_alloc();
    *(v11 + 16) = v10;
    *(v11 + 24) = v8;
    *(v0 + 160) = v10;
    sub_1D28719D8();
  }

  *(v0 + 352) = v9;
  if (sub_1D28786D8())
  {
    sub_1D24902A4(*(v0 + 240), type metadata accessor for CarouselFace);
    goto LABEL_6;
  }

  if (*(v0 + 368) == 1)
  {
    sub_1D28724C8();
    v18 = sub_1D2873CA8();
    v19 = sub_1D28789F8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = *(v0 + 336);
      v21 = swift_slowAlloc();
      *v21 = 134217984;
      *(v21 + 4) = v20;
      _os_log_impl(&dword_1D226E000, v18, v19, "Asking face generation at index %ld.", v21, 0xCu);
      MEMORY[0x1D38A3520](v21, -1, -1);
    }

    v23 = *(v0 + 216);
    v22 = *(v0 + 224);
    v24 = *(v0 + 208);

    (*(v23 + 8))(v22, v24);
    v25 = swift_task_alloc();
    *(v0 + 360) = v25;
    *v25 = v0;
    v25[1] = sub_1D248A8EC;
    v26 = *(v0 + 240);

    sub_1D248B558(v26);
    return;
  }

  v27 = *(v0 + 312);
  v28 = *(v0 + 200);
  if (*(v28 + v27) == 1)
  {
    *(v28 + v27) = 1;
  }

  else
  {
    swift_getKeyPath();
    v29 = swift_task_alloc();
    *(v29 + 16) = v28;
    *(v29 + 24) = 1;
    *(v0 + 168) = v28;
    sub_1D28719D8();
  }

  v30 = *(v0 + 240);
  v31 = sub_1D28786D8();
  sub_1D24902A4(v30, type metadata accessor for CarouselFace);
  if (v31)
  {
LABEL_6:

    if (sub_1D28786D8())
    {
LABEL_8:

      v17 = *(v0 + 8);

      v17();
      return;
    }

LABEL_7:
    v14 = *(v0 + 200);
    v15 = v14 + *(v0 + 280);
    swift_getKeyPath();
    *(v0 + 176) = v14;
    sub_1D28719E8();

    *(v0 + 184) = v14;
    swift_getKeyPath();
    sub_1D2871A08();

    v16 = MEMORY[0x1E69E7CC0];
    *v15 = 0;
    *(v15 + 8) = v16;
    *(v15 + 16) = 0;
    *(v15 + 24) = 1;

    *(v0 + 192) = v14;
    swift_getKeyPath();
    sub_1D28719F8();

    goto LABEL_8;
  }

  v32 = *(v0 + 200);
  v33 = v32 + *(v0 + 280);
  swift_getKeyPath();
  *(v0 + 88) = v32;
  v34 = sub_1D2490324(&qword_1EC6D9A38, type metadata accessor for FacePickerCarouselViewModel, &unk_1D288B168);
  sub_1D28719E8();

  if (!*(*(v33 + 8) + 16))
  {

    if (sub_1D28786D8())
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  *(v0 + 320) = v9;
  *(v0 + 328) = v34;
  v35 = *(v0 + 200);
  v43 = v35 + *(v0 + 280);
  swift_getKeyPath();
  *(v0 + 96) = v35;
  sub_1D28719E8();

  *(v0 + 104) = v35;
  swift_getKeyPath();
  sub_1D2871A08();

  v36 = *(v43 + 8);
  if (!*(v36 + 16))
  {
    __break(1u);
    goto LABEL_31;
  }

  v37 = *(v0 + 200);
  v38 = v37 + *(v0 + 280);
  v42 = *(v36 + 32);
  *(v0 + 336) = v42;
  sub_1D278D144(0, 1);
  *(v0 + 112) = v37;
  swift_getKeyPath();
  sub_1D28719F8();

  swift_getKeyPath();
  *(v0 + 120) = v37;
  sub_1D28719E8();

  *(v0 + 128) = v37;
  swift_getKeyPath();
  sub_1D2871A08();

  *(v38 + 16) = v42;
  *(v38 + 24) = 0;
  *(v0 + 136) = v37;
  swift_getKeyPath();
  sub_1D28719F8();

  swift_getKeyPath();
  *(v0 + 144) = v37;
  sub_1D28719E8();

  if ((v42 & 0x8000000000000000) != 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v39 = *(v37 + 48);
  if (v42 >= *(v39 + 16))
  {
LABEL_32:
    __break(1u);
    return;
  }

  sub_1D249023C(v39 + ((*(*(v0 + 232) + 80) + 32) & ~*(*(v0 + 232) + 80)) + *(*(v0 + 232) + 72) * v42, *(v0 + 240), type metadata accessor for CarouselFace);
  v40 = swift_task_alloc();
  *(v0 + 344) = v40;
  *v40 = v0;
  v40[1] = sub_1D2489FF0;
  v41 = *(v0 + 240);

  sub_1D248AE8C(v41);
}

uint64_t sub_1D248A8EC()
{
  v1 = *v0;

  v2 = *(v1 + 264);
  v3 = *(v1 + 256);

  return MEMORY[0x1EEE6DFA0](sub_1D248AA0C, v3, v2);
}

void sub_1D248AA0C(uint64_t a1)
{
  v2 = v1[44];
  v3 = v1[30];
  v4 = sub_1D28786D8();
  sub_1D24902A4(v3, type metadata accessor for CarouselFace);
  if (v4)
  {

    if (sub_1D28786D8())
    {
LABEL_4:

      v8 = v1[1];

      v8();
      return;
    }

LABEL_3:
    v5 = v1[25];
    v6 = v5 + v1[35];
    swift_getKeyPath();
    v1[22] = v5;
    sub_1D28719E8();

    v1[23] = v5;
    swift_getKeyPath();
    sub_1D2871A08();

    v7 = MEMORY[0x1E69E7CC0];
    *v6 = 0;
    *(v6 + 8) = v7;
    *(v6 + 16) = 0;
    *(v6 + 24) = 1;

    v1[24] = v5;
    swift_getKeyPath();
    sub_1D28719F8();

    goto LABEL_4;
  }

  v9 = v1[25];
  v10 = v9 + v1[35];
  swift_getKeyPath();
  v1[11] = v9;
  v11 = sub_1D2490324(&qword_1EC6D9A38, type metadata accessor for FacePickerCarouselViewModel, &unk_1D288B168);
  sub_1D28719E8();

  if (!*(*(v10 + 8) + 16))
  {

    if (sub_1D28786D8())
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v1[40] = v2;
  v1[41] = v11;
  v12 = v1[25];
  v13 = v12 + v1[35];
  swift_getKeyPath();
  v1[12] = v12;
  sub_1D28719E8();

  v1[13] = v12;
  swift_getKeyPath();
  sub_1D2871A08();

  v14 = *(v13 + 8);
  if (!*(v14 + 16))
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = v1[25];
  v16 = v15 + v1[35];
  v17 = *(v14 + 32);
  v1[42] = v17;
  sub_1D278D144(0, 1);
  v1[14] = v15;
  swift_getKeyPath();
  sub_1D28719F8();

  swift_getKeyPath();
  v1[15] = v15;
  sub_1D28719E8();

  v1[16] = v15;
  swift_getKeyPath();
  sub_1D2871A08();

  *(v16 + 16) = v17;
  *(v16 + 24) = 0;
  v1[17] = v15;
  swift_getKeyPath();
  sub_1D28719F8();

  swift_getKeyPath();
  v1[18] = v15;
  sub_1D28719E8();

  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18 = *(v15 + 48);
  if (v17 >= *(v18 + 16))
  {
LABEL_18:
    __break(1u);
    return;
  }

  sub_1D249023C(v18 + ((*(v1[29] + 80) + 32) & ~*(v1[29] + 80)) + *(v1[29] + 72) * v17, v1[30], type metadata accessor for CarouselFace);
  v19 = swift_task_alloc();
  v1[43] = v19;
  *v19 = v1;
  v19[1] = sub_1D2489FF0;
  v20 = v1[30];

  sub_1D248AE8C(v20);
}

uint64_t sub_1D248AE8C(uint64_t a1)
{
  v2[2] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC0F0, &qword_1D288B3A0);
  v4 = swift_task_alloc();
  v2[3] = v4;
  v5 = type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive(0);
  v2[4] = v5;
  v2[5] = *(v5 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = sub_1D2878568();
  v2[8] = sub_1D2878558();
  v6 = swift_task_alloc();
  v2[9] = v6;
  *v6 = v2;
  v6[1] = sub_1D248AFEC;

  return sub_1D24886D4(v4, a1);
}

uint64_t sub_1D248AFEC()
{
  v1 = *v0;

  v3 = sub_1D28784F8();
  *(v1 + 80) = v3;
  *(v1 + 88) = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D248B130, v3, v2);
}

uint64_t sub_1D248B130()
{
  v1 = v0[3];
  if ((*(v0[5] + 48))(v1, 1, v0[4]) == 1)
  {

    sub_1D22BD238(v1, &qword_1EC6DC0F0, &qword_1D288B3A0);

    v2 = v0[1];

    return v2(1);
  }

  else
  {
    sub_1D249006C(v1, v0[6], type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive);
    v0[12] = sub_1D23C8400();
    v0[13] = sub_1D2878558();
    v5 = sub_1D28784F8();
    v0[14] = v5;
    v0[15] = v4;

    return MEMORY[0x1EEE6DFA0](sub_1D248B28C, v5, v4);
  }
}

uint64_t sub_1D248B28C()
{
  v1 = *(*(v0 + 96) + 32);
  v2 = swift_task_alloc();
  *(v0 + 128) = v2;
  *v2 = v0;
  v2[1] = sub_1D248B328;

  return sub_1D2496DB0(v1);
}

uint64_t sub_1D248B328(char a1)
{
  v2 = *v1;
  *(*v1 + 136) = a1;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);

  return MEMORY[0x1EEE6DFA0](sub_1D248B450, v4, v3);
}

uint64_t sub_1D248B450()
{

  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return MEMORY[0x1EEE6DFA0](sub_1D248B4BC, v1, v2);
}

uint64_t sub_1D248B4BC()
{
  v1 = *(v0 + 48);

  sub_1D24902A4(v1, type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive);
  v2 = *(v0 + 136);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1D248B558(uint64_t a1)
{
  v2[35] = a1;
  v2[36] = v1;
  v3 = sub_1D2873CB8();
  v2[37] = v3;
  v2[38] = *(v3 - 8);
  v2[39] = swift_task_alloc();
  v4 = sub_1D2878538();
  v2[40] = v4;
  v2[41] = *(v4 - 8);
  v2[42] = swift_task_alloc();
  type metadata accessor for GeneratedPreviewOptions(0);
  v2[43] = swift_task_alloc();
  sub_1D2878568();
  v2[44] = sub_1D2878558();
  v6 = sub_1D28784F8();
  v2[45] = v6;
  v2[46] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D248B6D4, v6, v5);
}

uint64_t sub_1D248B6D4()
{
  sub_1D2488474(*(v0 + 344));
  *(v0 + 376) = sub_1D23C8400();
  v1 = swift_task_alloc();
  *(v0 + 384) = v1;
  *v1 = v0;
  v1[1] = sub_1D248B794;
  v2 = *(v0 + 344);
  v3 = *(v0 + 280);

  return sub_1D25F8358(v0 + 16, v3, v2);
}

uint64_t sub_1D248B794()
{
  v2 = *v1;
  *(*v1 + 392) = v0;

  v3 = *(v2 + 368);
  v4 = *(v2 + 360);
  if (v0)
  {
    v5 = sub_1D248BDAC;
  }

  else
  {
    v5 = sub_1D248B8E8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

void sub_1D248B8E8()
{
  v2 = v0[35];
  v1 = v0[36];

  swift_getKeyPath();
  v0[28] = v1;
  v25 = v0 + 2;
  sub_1D2490324(&qword_1EC6D9A38, type metadata accessor for FacePickerCarouselViewModel, &unk_1D288B168);
  sub_1D28719E8();

  swift_beginAccess();
  v3 = *(v1 + 48);
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  sub_1D2870F68();
  v5 = sub_1D25A6234(sub_1D2490030, v4, v3);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
    v8 = v0[36];
    v23 = (v0 + 7);
    sub_1D22D7044(v25, (v0 + 7));
    swift_getKeyPath();
    v0[32] = v8;
    sub_1D28719E8();

    v0[33] = v8;
    swift_getKeyPath();
    sub_1D2871A08();

    swift_beginAccess();
    v9 = *(v1 + 48);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + 48) = v9;
    v11 = v1;
    if (isUniquelyReferenced_nonNull_native)
    {
      v12 = v5;
      if ((v5 & 0x8000000000000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v9 = sub_1D278BD1C(v9);
      *(v1 + 48) = v9;
      v12 = v5;
      if ((v5 & 0x8000000000000000) == 0)
      {
LABEL_4:
        if (v12 < v9[2])
        {
          v13 = v0[43];
          v14 = v0[36];
          type metadata accessor for CarouselFace(0);
          sub_1D252FAD0(v23, v13);
          sub_1D22BD238(v23, &qword_1EC6DA470, &unk_1D2884A40);
          *(v11 + 48) = v9;
          swift_endAccess();
          v0[34] = v14;
          swift_getKeyPath();
          sub_1D28719F8();

          goto LABEL_6;
        }

LABEL_12:
        __break(1u);
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

LABEL_6:
  type metadata accessor for PhotosPersonAsset(0);
  v15 = objc_opt_self();
  v16 = sub_1D2878068();
  v17 = [v15 uuidFromLocalIdentifier_];

  if (!v17)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v24 = v0[43];
  v18 = v0[36];
  v19 = sub_1D28780A8();
  v21 = v20;

  swift_getKeyPath();
  v0[29] = v18;
  sub_1D28719E8();

  v0[30] = v18;
  swift_getKeyPath();
  sub_1D2871A08();

  swift_beginAccess();
  sub_1D25CFE48(0, v19, v21);
  swift_endAccess();
  sub_1D2484650();
  v0[31] = v18;
  swift_getKeyPath();
  sub_1D28719F8();

  __swift_destroy_boxed_opaque_existential_0(v25);
  sub_1D24902A4(v24, type metadata accessor for GeneratedPreviewOptions);

  v22 = v0[1];

  v22();
}

void sub_1D248BDAC()
{
  v1 = v0[49];
  sub_1D24902A4(v0[43], type metadata accessor for GeneratedPreviewOptions);
  v0[24] = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0, &unk_1D287D430);
  if (swift_dynamicCast())
  {
    v3 = v0[49];
    v5 = v0[41];
    v4 = v0[42];
    v6 = v0[40];

    (*(v5 + 8))(v4, v6);
  }

  else
  {
    type metadata accessor for PhotosPersonAsset(0);
    v7 = objc_opt_self();
    v8 = sub_1D2878068();
    v9 = [v7 uuidFromLocalIdentifier_];

    if (!v9)
    {
      __break(1u);
      return;
    }

    v10 = v0[49];
    v11 = v0[36];

    v26 = sub_1D28780A8();
    v13 = v12;

    swift_getKeyPath();
    v0[25] = v11;
    v14 = v10;
    sub_1D2490324(&qword_1EC6D9A38, type metadata accessor for FacePickerCarouselViewModel, &unk_1D288B168);
    sub_1D28719E8();

    v0[26] = v11;
    swift_getKeyPath();
    sub_1D2871A08();

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *(v11 + 56);
    *(v11 + 56) = 0x8000000000000000;
    sub_1D24E9C84(v10, v26, v13, isUniquelyReferenced_nonNull_native);

    *(v11 + 56) = v27;
    swift_endAccess();
    sub_1D2484650();
    v0[27] = v11;
    swift_getKeyPath();
    sub_1D28719F8();

    sub_1D28724C8();
    v16 = v10;
    v17 = sub_1D2873CA8();
    v18 = sub_1D2878A18();

    v19 = os_log_type_enabled(v17, v18);
    v20 = v0[49];
    if (v19)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      v23 = v20;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v24;
      *v22 = v24;
      _os_log_impl(&dword_1D226E000, v17, v18, "Failed to generate face preview with error: %@", v21, 0xCu);
      sub_1D22BD238(v22, qword_1EC6DA930, &qword_1D287E870);
      MEMORY[0x1D38A3520](v22, -1, -1);
      MEMORY[0x1D38A3520](v21, -1, -1);
    }

    else
    {
    }

    (*(v0[38] + 8))(v0[39], v0[37]);
  }

  v25 = v0[1];

  v25();
}

double sub_1D248C1C0()
{
  v1 = v0;
  v21 = type metadata accessor for PhotosPersonAsset(0);
  MEMORY[0x1EEE9AC00](v21);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D23C6DDC();
  swift_getKeyPath();
  v5 = OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel___observationRegistrar;
  v28 = v0;
  v6 = sub_1D2490324(&qword_1EC6D9A38, type metadata accessor for FacePickerCarouselViewModel, &unk_1D288B168);
  sub_1D28719E8();

  v7 = (v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__initiallySelectedPersonAsset);
  swift_beginAccess();
  v26 = v3;
  sub_1D249023C(v7, v3, type metadata accessor for PhotosPersonAsset);
  swift_getKeyPath();
  v27 = v0;
  v24 = v6;
  v25 = v5;
  sub_1D28719E8();

  v20 = v7[2];
  v9 = v7[3];
  v8 = v7[4];
  v10 = v7[5];
  v11 = v7[6];
  v12 = v7[7];
  swift_getKeyPath();
  v27 = v4;
  sub_1D2870F68();
  sub_1D2870F68();
  v23 = v8;
  sub_1D2396784(v8, v10, v11);
  sub_1D2490324(&qword_1ED8A3208, type metadata accessor for _PeopleRetrieval, &unk_1D2893664);
  v22 = v12;
  sub_1D28719E8();

  if (swift_weakLoadStrong() && (sub_1D23C6CA0(), , v13 = _SystemPhotoLibrary.photoLibrary.getter(), , v13))
  {
    v14 = v26;
    sub_1D2613084(*&v26[*(v21 + 20)], *&v26[*(v21 + 20) + 8], v20, v9);

    v4 = v13;
  }

  else
  {

    v14 = v26;
  }

  sub_1D238D058(v23, v10, v11);
  sub_1D24902A4(v14, type metadata accessor for PhotosPersonAsset);
  swift_getKeyPath();
  v27 = v1;
  sub_1D28719E8();

  if (v1[4])
  {
    v15 = v1[5];
    ObjectType = swift_getObjectType();
    v17 = *(v15 + 16);
    swift_unknownObjectRetain();
    v17(ObjectType, v15);
    swift_unknownObjectRelease();
  }

  sub_1D248C544();
  return sub_1D248C868();
}

void sub_1D248C544()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30, &qword_1D287EFC0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v18 - v3;
  swift_getKeyPath();
  v19 = v0;
  sub_1D2490324(&qword_1EC6D9A38, type metadata accessor for FacePickerCarouselViewModel, &unk_1D288B168);
  sub_1D28719E8();

  v5 = OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__didLogAppearanceAnalytics;
  if ((*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__didLogAppearanceAnalytics) & 1) == 0)
  {
    swift_getKeyPath();
    v19 = v0;
    sub_1D28719E8();

    v6 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__creationViewStyle);
    if (v6 != 7)
    {
      if (*(v0 + v5) == 1)
      {
        *(v0 + v5) = 1;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        *(&v18 - 2) = v0;
        *(&v18 - 8) = 1;
        v19 = v0;
        sub_1D28719D8();
      }

      swift_getKeyPath();
      v19 = v0;
      sub_1D28719E8();

      v8 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__hadGeneratedBeforeAppearing);
      swift_getKeyPath();
      v19 = v0;
      sub_1D28719E8();

      v9 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__didSelectLookBeforeAppearing);
      v10 = dword_1D288B554[v6];
      v11 = OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel_defaultStyle;
      v12 = sub_1D2872008();
      v13 = *(v12 - 8);
      (*(v13 + 16))(v4, v1 + v11, v12);
      (*(v13 + 56))(v4, 0, 1, v12);
      v14 = sub_1D24198DC(v4);
      if (v9)
      {
        v15 = 0x10000;
      }

      else
      {
        v15 = 0;
      }

      v16 = v15 | (v14 << 24);
      if (v8)
      {
        v17 = 256;
      }

      else
      {
        v17 = 0;
      }

      sub_1D279C210(v16 | v17 | v10);
    }
  }
}

double sub_1D248C868()
{
  swift_getKeyPath();
  sub_1D2490324(&qword_1EC6D9A38, type metadata accessor for FacePickerCarouselViewModel, &unk_1D288B168);
  sub_1D28719E8();

  swift_getKeyPath();
  sub_1D2871A08();

  v1 = v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__generationTaskContext;
  swift_beginAccess();
  if (*v1)
  {
    sub_1D28786B8();
  }

  v2 = MEMORY[0x1E69E7CC0];
  *v1 = 0;
  *(v1 + 8) = v2;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  swift_endAccess();

  swift_getKeyPath();
  sub_1D28719F8();

  return result;
}

double sub_1D248C9F0()
{
  v1 = v0;
  v2 = type metadata accessor for PhotosPersonImage(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v26[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26[-v6];
  v8 = type metadata accessor for CarouselFace(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for PhotosPersonAsset(0);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D24864FC(v10);
  sub_1D249023C(v10, v14, type metadata accessor for PhotosPersonAsset);
  sub_1D24902A4(v10, type metadata accessor for CarouselFace);
  sub_1D249023C(&v14[*(v12 + 28)], v7, type metadata accessor for PhotosPersonImage);
  sub_1D24902A4(v14, type metadata accessor for PhotosPersonAsset);
  swift_getKeyPath();
  v28 = v0;
  sub_1D2490324(&qword_1EC6D9A38, type metadata accessor for FacePickerCarouselViewModel, &unk_1D288B168);
  sub_1D28719E8();

  v15 = v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__initiallySelectedPersonAsset;
  swift_beginAccess();
  sub_1D249023C(v15 + *(v12 + 28), v4, type metadata accessor for PhotosPersonImage);
  v16 = *v7 == *v4 && *(v7 + 1) == *(v4 + 1);
  if (!v16 && (sub_1D2879618() & 1) == 0)
  {
    goto LABEL_8;
  }

  v17 = v4[24];
  if (v7[24])
  {
    if (!v4[24])
    {
LABEL_8:
      v18 = 1;
      goto LABEL_13;
    }
  }

  else
  {
    if (*(v7 + 2) != *(v4 + 2))
    {
      v17 = 1;
    }

    if (v17)
    {
      goto LABEL_8;
    }
  }

  type metadata accessor for PlaygroundImage(0);
  v18 = _s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0() ^ 1;
LABEL_13:
  sub_1D24902A4(v4, type metadata accessor for PhotosPersonImage);
  sub_1D24902A4(v7, type metadata accessor for PhotosPersonImage);
  swift_getKeyPath();
  v27 = v0;
  sub_1D28719E8();

  v20 = *(v15 + 16);
  v19 = *(v15 + 24);
  sub_1D2870F68();
  v21 = sub_1D2613014(v20, v19);
  if (v21)
  {
    v22 = *(v21 + 16);

    v23 = v22 == 0;
  }

  else
  {

    v23 = 1;
  }

  if (sub_1D2871F78() & 1) != 0 && ((v18 | v23))
  {
    if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__shouldPresentPhotoSharingConfirmation) == 1)
    {
      *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__shouldPresentPhotoSharingConfirmation) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *&v26[-16] = v1;
      v26[-8] = 1;
      v27 = v1;
      sub_1D28719D8();
    }
  }

  else
  {
    sub_1D248CE40();
  }

  return result;
}

void sub_1D248CE40()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70, &qword_1D2881410);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v44 - v3;
  v46 = type metadata accessor for PhotosPersonAsset(0);
  MEMORY[0x1EEE9AC00](v46);
  v47 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v44 - v7);
  MEMORY[0x1EEE9AC00](v9);
  v55 = &v44 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v44 - v12);
  v14 = type metadata accessor for CarouselFace(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v54 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v44 - v17;
  v19 = type metadata accessor for PersonAttributesPickerViewModel(0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel_servicesFetcher);
  v50 = sub_1D23C7F70();
  swift_getKeyPath();
  v22 = OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel___observationRegistrar;
  v58 = v1;
  v52 = sub_1D2490324(&qword_1EC6D9A38, type metadata accessor for FacePickerCarouselViewModel, &unk_1D288B168);
  v53 = v22;
  sub_1D28719E8();

  v23 = OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__attributesViewModel;
  swift_beginAccess();
  sub_1D249023C(v1 + v23, v21, type metadata accessor for PersonAttributesPickerViewModel);
  sub_1D24FBFBC(&v58);
  sub_1D24902A4(v21, type metadata accessor for PersonAttributesPickerViewModel);
  v56 = v58;
  v57 = v59;
  sub_1D24864FC(v18);
  sub_1D249023C(v18, v13, type metadata accessor for PhotosPersonAsset);
  sub_1D24902A4(v18, type metadata accessor for CarouselFace);
  v24 = v13[4];
  v26 = v13[5];
  v25 = v13[6];
  v27 = v13[7];
  sub_1D2870F68();
  sub_1D2870F68();
  v48 = v25;
  v49 = v26;
  sub_1D2396784(v24, v26, v25);
  v28 = v27;
  sub_1D24902A4(v13, type metadata accessor for PhotosPersonAsset);
  if (v27)
  {
    v45 = v24;
    v28 = v28;
    v29 = [v28 localIdentifier];
    if (!v29)
    {
      sub_1D28780A8();
      v29 = sub_1D2878068();
    }

    v30 = [objc_opt_self() uuidFromLocalIdentifier_];

    v31 = v54;
    if (!v30)
    {
      __break(1u);
      return;
    }

    sub_1D28780A8();

    sub_1D28717A8();

    v24 = v45;
  }

  else
  {
    v32 = sub_1D2871818();
    (*(*(v32 - 8) + 56))(v4, 1, 1, v32);

    v31 = v54;
  }

  sub_1D238D058(v24, v49, v48);

  sub_1D260F8D0(&v56, v4);

  sub_1D22BD238(v4, &qword_1EC6D8F70, &qword_1D2881410);

  v33 = sub_1D23C6DDC();
  sub_1D24864FC(v31);
  sub_1D249023C(v31, v55, type metadata accessor for PhotosPersonAsset);
  sub_1D24902A4(v31, type metadata accessor for CarouselFace);
  sub_1D24864FC(v31);
  sub_1D249023C(v31, v8, type metadata accessor for PhotosPersonAsset);
  sub_1D24902A4(v31, type metadata accessor for CarouselFace);
  v51 = v8[2];
  v35 = v8[3];
  v34 = v8[4];
  v36 = v8[5];
  v37 = v8[6];
  v38 = v8[7];
  sub_1D2870F68();
  sub_1D2870F68();
  sub_1D2396784(v34, v36, v37);
  v54 = v38;
  sub_1D24902A4(v8, type metadata accessor for PhotosPersonAsset);
  swift_getKeyPath();
  v58 = v33;
  sub_1D2490324(&qword_1ED8A3208, type metadata accessor for _PeopleRetrieval, &unk_1D2893664);
  sub_1D28719E8();

  if (swift_weakLoadStrong() && (sub_1D23C6CA0(), , v39 = _SystemPhotoLibrary.photoLibrary.getter(), , v39))
  {
    v40 = v55;
    sub_1D2613084(*(v55 + *(v46 + 20)), *(v55 + *(v46 + 20) + 8), v51, v35);

    v33 = v39;
  }

  else
  {

    v40 = v55;
  }

  sub_1D238D058(v34, v36, v37);
  sub_1D24902A4(v40, type metadata accessor for PhotosPersonAsset);
  swift_getKeyPath();
  v58 = v1;
  sub_1D28719E8();

  if (*(v1 + 32))
  {
    v41 = *(v1 + 40);
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1D24864FC(v31);
    v43 = v47;
    sub_1D249023C(v31, v47, type metadata accessor for PhotosPersonAsset);
    sub_1D24902A4(v31, type metadata accessor for CarouselFace);
    (*(v41 + 24))(v1, v43, ObjectType, v41);
    swift_unknownObjectRelease();
    sub_1D24902A4(v43, type metadata accessor for PhotosPersonAsset);
  }

  sub_1D248C544();
  sub_1D248C868();
}

double sub_1D248D640()
{
  swift_getKeyPath();
  sub_1D2490324(&qword_1EC6D9A38, type metadata accessor for FacePickerCarouselViewModel, &unk_1D288B168);
  sub_1D28719E8();

  swift_getKeyPath();
  sub_1D2871A08();

  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__showPersonAttributes;
  v2 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__showPersonAttributes) ^ 1;
  *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__showPersonAttributes) = v2 & 1;
  swift_getKeyPath();
  sub_1D28719E8();

  if ((*(v0 + v1) & 1) == 0 && (v2 & 1) == 0)
  {
    sub_1D2487BA8();
  }

  swift_getKeyPath();
  sub_1D28719F8();

  return result;
}

uint64_t sub_1D248D7A8()
{
  swift_getKeyPath();
  sub_1D2490324(&qword_1EC6D9A38, type metadata accessor for FacePickerCarouselViewModel, &unk_1D288B168);
  sub_1D28719E8();

  v1 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__shouldDismissFacePickerGrid);
  sub_1D23415B4(v1, *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__shouldDismissFacePickerGrid + 8));
  return v1;
}

uint64_t sub_1D248D868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__shouldDismissFacePickerGrid);
  v4 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__shouldDismissFacePickerGrid);
  v5 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__shouldDismissFacePickerGrid + 8);
  *v3 = a2;
  v3[1] = a3;
  sub_1D23415B4(a2, a3);
  return sub_1D22D7900(v4, v5);
}

void *sub_1D248D8C0(uint64_t a1)
{
  v2 = type metadata accessor for CarouselFace(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v19[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for PhotosPersonAsset(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel_servicesFetcher);
  sub_1D24864FC(v4);
  sub_1D249023C(v4, v8, type metadata accessor for PhotosPersonAsset);
  sub_1D24902A4(v4, type metadata accessor for CarouselFace);
  v10 = v8[1];
  v24 = *v8;
  v25 = v10;
  v11 = v8[3];
  v26 = v8[2];
  v27 = v11;
  sub_1D22D63B0(&v24, &v23);
  sub_1D24902A4(v8, type metadata accessor for PhotosPersonAsset);
  v13 = *(a1 + 16);
  v12 = *(a1 + 24);
  type metadata accessor for FacePickerGridViewModel(0);
  v14 = swift_allocObject();
  v14[4] = 0;
  v14[5] = 0;
  (*(v6 + 56))(v14 + OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__selectedAsset, 1, 1, v5);
  *(v14 + OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__allLookAssets) = MEMORY[0x1E69E7CC0];
  sub_1D2870F68();
  sub_1D2871A18();
  *(v14 + OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel_servicesFetcher) = v9;
  v15 = (v14 + OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__person);
  v16 = v27;
  v15[2] = v26;
  v15[3] = v16;
  v17 = v25;
  *v15 = v24;
  v15[1] = v17;
  v14[2] = v13;
  v14[3] = v12;
  sub_1D2870F78();
  sub_1D24A1770();
  swift_getKeyPath();
  v20 = v14;
  v21 = a1;
  v22 = &off_1F4DC5F60;
  v23 = v14;
  sub_1D2490324(&qword_1EC6DC0F8, type metadata accessor for FacePickerGridViewModel, &unk_1D288C5D8);
  sub_1D28719D8();

  return v14;
}

uint64_t sub_1D248DB9C@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X8>)
{
  v8 = *a1;
  swift_getKeyPath();
  sub_1D2490324(&qword_1EC6D9A38, type metadata accessor for FacePickerCarouselViewModel, &unk_1D288B168);
  sub_1D28719E8();

  v9 = *a3;
  swift_beginAccess();
  return sub_1D249023C(v8 + v9, a5, a4);
}

uint64_t sub_1D248DC70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(char *))
{
  v10 = (a5)(0, a2, a3, a4);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v14 - v11;
  sub_1D249023C(a1, &v14 - v11, a6);
  return a7(v12);
}

uint64_t sub_1D248DD14(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__initiallySelectedPersonAsset;
  swift_beginAccess();
  sub_1D248FECC(a2, a1 + v4, type metadata accessor for PhotosPersonAsset);
  return swift_endAccess();
}

double sub_1D248DDA8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2490324(&qword_1EC6D9A38, type metadata accessor for FacePickerCarouselViewModel, &unk_1D288B168);
  sub_1D28719E8();

  v4 = v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__generationTaskContext;
  swift_beginAccess();
  v5 = *(v4 + 8);
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  *a2 = *v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  sub_1D2870F78();
  sub_1D2870F68();
  return result;
}

double sub_1D248DE8C(__int128 *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1D2490324(&qword_1EC6D9A38, type metadata accessor for FacePickerCarouselViewModel, &unk_1D288B168);
  sub_1D28719D8();

  return result;
}

void sub_1D248DF74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__generationTaskContext;
  swift_beginAccess();
  *v9 = a2;
  *(v9 + 8) = a3;
  *(v9 + 16) = a4;
  *(v9 + 24) = a5 & 1;
  sub_1D2870F78();
  sub_1D2870F68();
}

void sub_1D248E01C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PhotosPersonAsset(0);
  v2 = objc_opt_self();
  v3 = sub_1D2878068();
  v4 = [v2 uuidFromLocalIdentifier_];

  if (!v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = sub_1D28780A8();
  v7 = v6;

  v8 = sub_1D2878068();
  v9 = [v2 uuidFromLocalIdentifier_];

  if (!v9)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v10 = sub_1D28780A8();
  v12 = v11;

  if (v5 != v10 || v7 != v12)
  {
    sub_1D2879618();
  }
}

uint64_t sub_1D248E164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[51] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC0D8, &unk_1D288B240);
  v4[52] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0, &unk_1D2881BE0);
  v4[53] = swift_task_alloc();
  v5 = type metadata accessor for PhotosPersonAsset(0);
  v4[54] = v5;
  v4[55] = *(v5 - 8);
  v4[56] = swift_task_alloc();
  v4[57] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC0E0, &unk_1D288B250);
  v4[58] = v6;
  v4[59] = *(v6 - 8);
  v4[60] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC0E8, &qword_1D288C6A0);
  v4[61] = v7;
  v4[62] = *(v7 - 8);
  v4[63] = swift_task_alloc();
  v8 = type metadata accessor for CarouselFace(0);
  v4[64] = v8;
  v4[65] = *(v8 - 8);
  v4[66] = swift_task_alloc();
  v4[67] = swift_task_alloc();
  v4[68] = swift_task_alloc();
  v4[69] = swift_task_alloc();
  v4[70] = swift_task_alloc();
  v4[71] = swift_task_alloc();
  v4[72] = sub_1D2878568();
  v4[73] = sub_1D2878558();
  v10 = sub_1D28784F8();
  v4[74] = v10;
  v4[75] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1D248E444, v10, v9);
}

uint64_t sub_1D248E444()
{
  v38 = v0;
  v1 = *(v0 + 408);
  sub_1D24864FC(*(v0 + 568));
  swift_getKeyPath();
  *(v0 + 608) = OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel___observationRegistrar;
  *(v0 + 328) = v1;
  *(v0 + 616) = sub_1D2490324(&qword_1EC6D9A38, type metadata accessor for FacePickerCarouselViewModel, &unk_1D288B168);
  sub_1D28719E8();

  *(v0 + 336) = v1;
  swift_getKeyPath();
  sub_1D2871A08();

  swift_beginAccess();
  v2 = *(v1 + 48);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 48) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1D27CCD4C(0, v2[2] + 1, 1, v2);
    *(v1 + 48) = v2;
  }

  v5 = v2[2];
  v4 = v2[3];
  if (v5 >= v4 >> 1)
  {
    v2 = sub_1D27CCD4C((v4 > 1), v5 + 1, 1, v2);
  }

  v6 = *(v0 + 568);
  v7 = *(v0 + 560);
  v8 = *(v0 + 520);
  v9 = *(v0 + 408);
  v2[2] = v5 + 1;
  v10 = *(v8 + 80);
  *(v0 + 672) = v10;
  v11 = *(v8 + 72);
  *(v0 + 624) = v11;
  sub_1D249006C(v6, v2 + ((v10 + 32) & ~v10) + v11 * v5, type metadata accessor for CarouselFace);
  *(v1 + 48) = v2;
  swift_endAccess();
  *(v0 + 344) = v9;
  swift_getKeyPath();
  sub_1D28719F8();

  sub_1D24864FC(v7);
  v12 = objc_opt_self();
  *(v0 + 632) = v12;
  v13 = sub_1D2878068();
  v14 = [v12 uuidFromLocalIdentifier_];

  if (v14)
  {
    v19 = *(v0 + 560);
    v20 = *(v0 + 552);
    v21 = *(v0 + 480);
    v36 = *(v0 + 472);
    v22 = *(v0 + 456);
    v35 = *(v0 + 464);
    v23 = sub_1D28780A8();
    v25 = v24;

    sub_1D24902A4(v19, type metadata accessor for CarouselFace);
    sub_1D2486380(v23, v25);
    v26 = sub_1D23C6DDC();
    sub_1D24864FC(v20);
    sub_1D249023C(v20, v22, type metadata accessor for PhotosPersonAsset);
    sub_1D24902A4(v20, type metadata accessor for CarouselFace);
    v27 = v22[3];
    v29 = *v22;
    v28 = v22[1];
    *(v0 + 48) = v22[2];
    *(v0 + 64) = v27;
    *(v0 + 16) = v29;
    *(v0 + 32) = v28;
    sub_1D22D63B0(v0 + 16, v0 + 80);
    sub_1D24902A4(v22, type metadata accessor for PhotosPersonAsset);
    v30 = *(v0 + 32);
    v37[0] = *(v0 + 16);
    v37[1] = v30;
    v31 = *(v0 + 64);
    v37[2] = *(v0 + 48);
    v37[3] = v31;
    sub_1D255AA0C(v37, 1);
    sub_1D22D640C(v0 + 16);
    sub_1D2878658();

    (*(v36 + 8))(v21, v35);
    *(v0 + 640) = OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__selectedFaceID;
    *(v0 + 648) = OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__initiallySelectedPersonAsset;
    swift_beginAccess();
    v32 = sub_1D2878558();
    *(v0 + 656) = v32;
    v33 = swift_task_alloc();
    *(v0 + 664) = v33;
    *v33 = v0;
    v33[1] = sub_1D248E8B4;
    v18 = *(v0 + 488);
    v15 = *(v0 + 424);
    v17 = MEMORY[0x1E69E85E0];
    v16 = v32;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6D9C8](v15, v16, v17, v18);
}

uint64_t sub_1D248E8B4()
{
  v1 = *v0;

  v2 = *(v1 + 600);
  v3 = *(v1 + 592);

  return MEMORY[0x1EEE6DFA0](sub_1D248E9F8, v3, v2);
}

uint64_t sub_1D248E9F8()
{
  v1 = *(v0 + 424);
  if ((*(*(v0 + 440) + 48))(v1, 1, *(v0 + 432)) == 1)
  {
    v2 = *(v0 + 408);
    (*(*(v0 + 496) + 8))(*(v0 + 504), *(v0 + 488));

    swift_getKeyPath();
    *(v0 + 352) = v2;
    sub_1D28719E8();

    if (*(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__generationWasRequested))
    {
      sub_1D248567C();
    }

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 408);
    sub_1D249006C(v1, *(v0 + 448), type metadata accessor for PhotosPersonAsset);
    swift_getKeyPath();
    *(v0 + 360) = v5;
    sub_1D28719E8();

    v6 = *(*(v5 + 48) + 16);
    v77 = *(v5 + 48);
    sub_1D2870F68();
    v76 = v6;
    if (v6)
    {
      v7 = 0;
      v75 = v77 + ((*(v0 + 672) + 32) & ~*(v0 + 672));
      while (1)
      {
        if (v7 >= *(v77 + 16))
        {
          __break(1u);
          goto LABEL_54;
        }

        v8 = *(v0 + 632);
        sub_1D249023C(v75 + *(v0 + 624) * v7, *(v0 + 536), type metadata accessor for CarouselFace);
        v9 = sub_1D2878068();
        v10 = [v8 uuidFromLocalIdentifier_];

        if (!v10)
        {
          break;
        }

        v15 = *(v0 + 608);
        v16 = *(v0 + 408);
        v17 = (v16 + *(v0 + 640));
        v18 = sub_1D28780A8();
        v20 = v19;

        swift_getKeyPath();
        *(v0 + 368) = v16;
        v6 = v16 + v15;
        sub_1D28719E8();

        v21 = v17[1];
        if (v21)
        {
          if (v18 == *v17 && v21 == v20)
          {

LABEL_23:

            v30 = *(v0 + 544);
            v31 = *(v0 + 520);
            v32 = *(v0 + 512);
            v33 = *(v0 + 416);
            sub_1D249006C(*(v0 + 536), v33, type metadata accessor for CarouselFace);
            (*(v31 + 56))(v33, 0, 1, v32);
            sub_1D249006C(v33, v30, type metadata accessor for CarouselFace);
            goto LABEL_24;
          }

          v6 = sub_1D2879618();

          if (v6)
          {
            goto LABEL_23;
          }
        }

        else
        {
        }

        ++v7;
        sub_1D24902A4(*(v0 + 536), type metadata accessor for CarouselFace);
        if (v76 == v7)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_20:
      v23 = *(v0 + 648);
      v24 = *(v0 + 544);
      v25 = *(v0 + 520);
      v26 = *(v0 + 512);
      v28 = *(v0 + 408);
      v27 = *(v0 + 416);

      (*(v25 + 56))(v27, 1, 1, v26);
      swift_getKeyPath();
      *(v0 + 400) = v28;
      sub_1D28719E8();

      sub_1D249023C(v28 + v23, v24, type metadata accessor for PhotosPersonAsset);
      v29 = *(v26 + 20);
      *(v24 + v29) = sub_1D25D81C4(MEMORY[0x1E69E7CC0]);
      if ((*(v25 + 48))(v27, 1, v26) != 1)
      {
        sub_1D22BD238(*(v0 + 416), &qword_1EC6DC0D8, &unk_1D288B240);
      }

LABEL_24:
      v34 = *(v0 + 544);
      v36 = *(v34 + 16);
      v35 = *(v34 + 24);
      v37 = *(v34 + 32);
      if (v37)
      {
        v38 = *(v34 + 40);
        *(v0 + 240) = v37;
        *(v0 + 248) = v38;
        v39 = sub_1D24FBD9C();
        if (v40)
        {
          v41 = v39;
        }

        else
        {
          v41 = 0;
        }

        if (v40)
        {
          v42 = v40;
        }

        else
        {
          v42 = 0xE000000000000000;
        }

        *(v0 + 312) = v36;
        *(v0 + 320) = v35;
        sub_1D2870F68();
        MEMORY[0x1D38A0C50](v41, v42);

        v36 = *(v0 + 312);
        v35 = *(v0 + 320);
        v34 = *(v0 + 544);
      }

      else
      {
        sub_1D2870F68();
      }

      v43 = *(v0 + 448);
      v44 = (v34 + *(*(v0 + 432) + 20));
      v45 = *v44;
      v46 = v44[1];
      *(v0 + 264) = v36;
      *(v0 + 272) = v35;
      sub_1D2870F68();
      MEMORY[0x1D38A0C50](v45, v46);

      v48 = *(v0 + 264);
      v47 = *(v0 + 272);
      sub_1D24902A4(v34, type metadata accessor for CarouselFace);
      v50 = v43[2];
      v49 = v43[3];
      v51 = v43[4];
      if (v51)
      {
        v52 = *(*(v0 + 448) + 40);
        *(v0 + 216) = v51;
        *(v0 + 224) = v52;
        v53 = sub_1D24FBD9C();
        if (v54)
        {
          v55 = v53;
        }

        else
        {
          v55 = 0;
        }

        if (v54)
        {
          v56 = v54;
        }

        else
        {
          v56 = 0xE000000000000000;
        }

        *(v0 + 296) = v50;
        *(v0 + 304) = v49;
        sub_1D2870F68();
        MEMORY[0x1D38A0C50](v55, v56);

        v50 = *(v0 + 296);
        v49 = *(v0 + 304);
      }

      else
      {
        sub_1D2870F68();
      }

      v57 = (*(v0 + 448) + *(*(v0 + 432) + 20));
      v58 = *v57;
      v59 = v57[1];
      *(v0 + 280) = v50;
      *(v0 + 288) = v49;
      sub_1D2870F68();
      MEMORY[0x1D38A0C50](v58, v59);

      if (v48 == *(v0 + 280) && v47 == *(v0 + 288))
      {
      }

      else
      {
        v60 = sub_1D2879618();

        if ((v60 & 1) == 0)
        {
          v61 = *(v0 + 528);
          v62 = *(v0 + 512);
          v63 = *(v0 + 408);
          sub_1D249023C(*(v0 + 448), v61, type metadata accessor for PhotosPersonAsset);
          v64 = *(v62 + 20);
          *(v61 + v64) = sub_1D25D81C4(MEMORY[0x1E69E7CC0]);
          swift_getKeyPath();
          *(v0 + 376) = v63;
          sub_1D28719E8();

          *(v0 + 384) = v63;
          swift_getKeyPath();
          sub_1D2871A08();

          swift_beginAccess();
          v6 = *(v63 + 48);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v63 + 48) = v6;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
LABEL_54:
            v74 = *(v0 + 408);
            v6 = sub_1D27CCD4C(0, *(v6 + 16) + 1, 1, v6);
            *(v74 + 48) = v6;
          }

          v67 = *(v6 + 16);
          v66 = *(v6 + 24);
          if (v67 >= v66 >> 1)
          {
            v6 = sub_1D27CCD4C((v66 > 1), v67 + 1, 1, v6);
          }

          v68 = *(v0 + 624);
          v69 = *(v0 + 672);
          v70 = *(v0 + 528);
          v71 = *(v0 + 408);
          *(v6 + 16) = v67 + 1;
          sub_1D249006C(v70, v6 + ((v69 + 32) & ~v69) + v68 * v67, type metadata accessor for CarouselFace);
          *(v71 + 48) = v6;
          swift_endAccess();
          *(v0 + 392) = v71;
          swift_getKeyPath();
          sub_1D28719F8();
        }
      }

      sub_1D24902A4(*(v0 + 448), type metadata accessor for PhotosPersonAsset);
      v72 = sub_1D2878558();
      *(v0 + 656) = v72;
      v73 = swift_task_alloc();
      *(v0 + 664) = v73;
      *v73 = v0;
      v73[1] = sub_1D248E8B4;
      v14 = *(v0 + 488);
      v11 = *(v0 + 424);
      v13 = MEMORY[0x1E69E85E0];
      v12 = v72;
    }

    return MEMORY[0x1EEE6D9C8](v11, v12, v13, v14);
  }
}

char *sub_1D248F2F4()
{

  swift_unknownObjectRelease();

  sub_1D24902A4(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__attributesViewModel, type metadata accessor for PersonAttributesPickerViewModel);

  sub_1D22D7900(*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__shouldDismissFacePickerGrid), *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__shouldDismissFacePickerGrid + 8));

  sub_1D24902A4(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__initiallySelectedPersonAsset, type metadata accessor for PhotosPersonAsset);

  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel_defaultStyle;
  v2 = sub_1D2872008();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel___observationRegistrar;
  v4 = sub_1D2871A28();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_1D248F4B0()
{
  sub_1D248F2F4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FacePickerCarouselViewModel(uint64_t a1)
{
  result = qword_1EC6D8178;
  if (!qword_1EC6D8178)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D248F55C(uint64_t a1)
{
  result = type metadata accessor for PersonAttributesPickerViewModel(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PhotosPersonAsset(319);
    if (v3 <= 0x3F)
    {
      result = sub_1D2872008();
      if (v4 <= 0x3F)
      {
        result = sub_1D2871A28();
        if (v5 <= 0x3F)
        {
          return swift_updateClassMetadata2();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D248F718(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1D248F760(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D248F7C0()
{
  swift_getKeyPath();
  sub_1D2490324(&qword_1EC6D9A38, type metadata accessor for FacePickerCarouselViewModel, &unk_1D288B168);
  sub_1D28719E8();

  return *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__showPersonAttributes);
}

uint64_t sub_1D248F868(void *a1, void *a2)
{
  v5 = a1[2];
  v4 = a1[3];
  if (a1[4])
  {
    v6 = sub_1D24FBD9C();
    if (v7)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0;
    }

    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0xE000000000000000;
    }

    sub_1D2870F68();
    MEMORY[0x1D38A0C50](v8, v9);
  }

  else
  {
    sub_1D2870F68();
  }

  v10 = type metadata accessor for PhotosPersonAsset(0);
  v11 = (a1 + *(v10 + 20));
  v12 = *v11;
  v13 = v11[1];
  v26 = v4;
  sub_1D2870F68();
  MEMORY[0x1D38A0C50](v12, v13);

  v14 = v5;
  v16 = a2[2];
  v15 = a2[3];
  if (a2[4])
  {
    v17 = sub_1D24FBD9C();
    if (v18)
    {
      v19 = v17;
    }

    else
    {
      v19 = 0;
    }

    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = 0xE000000000000000;
    }

    sub_1D2870F68();
    MEMORY[0x1D38A0C50](v19, v20);
  }

  else
  {
    sub_1D2870F68();
  }

  v21 = (a2 + *(v10 + 20));
  v22 = *v21;
  v23 = v21[1];
  sub_1D2870F68();
  MEMORY[0x1D38A0C50](v22, v23);

  if (v14 == v16 && v26 == v15)
  {
    v24 = 1;
  }

  else
  {
    v24 = sub_1D2879618();
  }

  return v24 & 1;
}

uint64_t sub_1D248FA3C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__selectedFaceID);
  v6 = *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__selectedFaceID + 8);
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (sub_1D2879618() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2490324(&qword_1EC6D9A38, type metadata accessor for FacePickerCarouselViewModel, &unk_1D288B168);
    sub_1D28719D8();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;
}

double sub_1D248FBB8@<D0>(void *a1@<X8>)
{
  swift_getKeyPath();
  sub_1D2490324(&qword_1EC6D9A38, type metadata accessor for FacePickerCarouselViewModel, &unk_1D288B168);
  sub_1D28719E8();

  v3 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__selectedFaceID + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__selectedFaceID);
  a1[1] = v3;
  sub_1D2870F68();
  return result;
}

uint64_t sub_1D248FC7C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2490324(&qword_1EC6DC0F8, type metadata accessor for FacePickerGridViewModel, &unk_1D288C5D8);
  sub_1D28719E8();

  *a2 = *(v3 + 32);
  return swift_unknownObjectRetain();
}

double sub_1D248FD2C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1D2490324(&qword_1EC6DC0F8, type metadata accessor for FacePickerGridViewModel, &unk_1D288C5D8);
  sub_1D28719D8();

  return result;
}

uint64_t sub_1D248FDFC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D22BDFF8;

  return sub_1D248E164(a1, v4, v5, v6);
}

uint64_t sub_1D248FECC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D248FF4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D22BC8FC;

  return sub_1D24899E8(a1, v4, v5, v6);
}

uint64_t sub_1D249006C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2490168()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__selectedFaceID);
  *v2 = v0[3];
  v2[1] = v1;
  sub_1D2870F68();
}

uint64_t sub_1D249023C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D24902A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D2490324(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D249036C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC100, &qword_1D288B520);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v86 = &v86 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC0D8, &unk_1D288B240);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v98 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v86 - v9;
  v97 = type metadata accessor for CarouselFace(0);
  v99 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v87 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v108 = &v86 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v96 = &v86 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v86 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v88 = &v86 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v86 - v22;
  swift_getKeyPath();
  v24 = OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel___observationRegistrar;
  v111 = v1;
  v25 = sub_1D2490324(&qword_1EC6D9A38, type metadata accessor for FacePickerCarouselViewModel, &unk_1D288B168);
  sub_1D28719E8();

  v26 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__shouldDismissFacePickerGrid);
  if (v26)
  {
    v27 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__shouldDismissFacePickerGrid + 8);
    v28 = sub_1D2870F78();
    v26(v28);
    sub_1D22D7900(v26, v27);
  }

  sub_1D24835A8(0);
  swift_getKeyPath();
  v111 = v2;
  sub_1D28719E8();

  v29 = swift_beginAccess();
  v30 = *(v2 + 48);
  MEMORY[0x1EEE9AC00](v29);
  *(&v86 - 2) = a1;
  sub_1D2870F68();
  sub_1D274B814(sub_1D2491130, v30, v10);

  v31 = *(v99 + 48);
  v32 = v97;
  v91 = v99 + 48;
  v90 = v31;
  if (v31(v10, 1, v97) == 1)
  {
    sub_1D22BD238(v10, &qword_1EC6DC0D8, &unk_1D288B240);
    v33 = v88;
    sub_1D249023C(a1, v88, type metadata accessor for PhotosPersonAsset);
    v34 = *(v32 + 20);
    *(v33 + v34) = sub_1D25D81C4(MEMORY[0x1E69E7CC0]);
    swift_getKeyPath();
    v110 = v2;
    sub_1D28719E8();

    v35 = *(v2 + 48);
    v36 = *(v35 + 16);
    v37 = OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__selectedFaceID;
    v38 = OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__initiallySelectedPersonAsset;
    sub_1D2870F68();
    v89 = v38;
    swift_beginAccess();
    v92 = v36;
    if (v36)
    {
      v39 = 0;
      v103 = (v2 + v37);
      v95 = (v99 + 56);
      v104 = v25;
      v105 = v24;
      v94 = v18;
      v93 = v35;
      while (1)
      {
        if (v39 >= *(v35 + 16))
        {
          goto LABEL_43;
        }

        v40 = (*(v99 + 80) + 32) & ~*(v99 + 80);
        v41 = *(v99 + 72);
        v102 = v39;
        sub_1D249023C(v35 + v40 + v41 * v39, v18, type metadata accessor for CarouselFace);
        v106 = type metadata accessor for PhotosPersonAsset(0);
        v42 = objc_opt_self();
        v43 = sub_1D2878068();
        v107 = v42;
        v44 = [v42 uuidFromLocalIdentifier_];

        if (!v44)
        {
          goto LABEL_47;
        }

        v100 = sub_1D28780A8();
        v101 = v45;

        swift_getKeyPath();
        v109 = v2;
        v35 = v2 + v24;
        sub_1D28719E8();

        v46 = v2;
        v47 = *(v2 + 48);
        v2 = *(v47 + 16);
        sub_1D2870F68();
        if (v2)
        {
          v48 = 0;
          v49 = v47 + v40;
          while (v48 < *(v47 + 16))
          {
            sub_1D249023C(v49, v108, type metadata accessor for CarouselFace);
            v50 = sub_1D2878068();
            v51 = [v107 uuidFromLocalIdentifier_];

            if (!v51)
            {
              goto LABEL_46;
            }

            v52 = sub_1D28780A8();
            v54 = v53;

            swift_getKeyPath();
            v109 = v46;
            v35 = v46 + v105;
            sub_1D28719E8();

            v55 = v103[1];
            if (v55)
            {
              if (v52 == *v103 && v55 == v54)
              {

LABEL_24:

                v61 = v98;
                sub_1D249006C(v108, v98, type metadata accessor for CarouselFace);
                (*v95)(v61, 0, 1, v97);
                v59 = v96;
                sub_1D249006C(v61, v96, type metadata accessor for CarouselFace);
                v2 = v46;
                v24 = v105;
                goto LABEL_25;
              }

              v35 = sub_1D2879618();

              if (v35)
              {
                goto LABEL_24;
              }
            }

            else
            {
            }

            ++v48;
            sub_1D24902A4(v108, type metadata accessor for CarouselFace);
            v49 += v41;
            if (v2 == v48)
            {
              goto LABEL_21;
            }
          }

          __break(1u);
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

LABEL_21:

        v57 = v98;
        v58 = v97;
        (*v95)(v98, 1, 1, v97);
        swift_getKeyPath();
        v2 = v46;
        v109 = v46;
        v24 = v105;
        sub_1D28719E8();

        v59 = v96;
        sub_1D249023C(v46 + v89, v96, type metadata accessor for PhotosPersonAsset);
        v60 = *(v58 + 20);
        *(v59 + v60) = sub_1D25D81C4(MEMORY[0x1E69E7CC0]);
        if (v90(v57, 1, v58) != 1)
        {
          sub_1D22BD238(v98, &qword_1EC6DC0D8, &unk_1D288B240);
        }

LABEL_25:
        v62 = sub_1D2878068();
        v63 = [v107 uuidFromLocalIdentifier_];

        if (!v63)
        {
          goto LABEL_48;
        }

        v64 = sub_1D28780A8();
        v66 = v65;

        sub_1D24902A4(v59, type metadata accessor for CarouselFace);
        if (v100 == v64 && v101 == v66)
        {
          break;
        }

        v67 = sub_1D2879618();

        v18 = v94;
        sub_1D24902A4(v94, type metadata accessor for CarouselFace);
        v68 = v102;
        v35 = v93;
        if (v67)
        {
          goto LABEL_37;
        }

        v39 = v102 + 1;
        if (v102 + 1 == v92)
        {
          goto LABEL_30;
        }
      }

      sub_1D24902A4(v94, type metadata accessor for CarouselFace);
      v68 = v102;
LABEL_37:

      swift_getKeyPath();
      v109 = v2;
      sub_1D28719E8();

      v109 = v2;
      swift_getKeyPath();
      sub_1D2871A08();

      swift_beginAccess();
      if (*(*(v2 + 48) + 16) >= v68)
      {
        v72 = v88;
        v79 = v86;
        sub_1D249023C(v88, v86, type metadata accessor for CarouselFace);
        sub_1D278C008(v68, v68, v79);
        swift_endAccess();
        v109 = v2;
        swift_getKeyPath();
        sub_1D28719F8();

        goto LABEL_39;
      }

      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

LABEL_30:

    sub_1D249023C(v88, v87, type metadata accessor for CarouselFace);
    swift_getKeyPath();
    v109 = v2;
    sub_1D28719E8();

    v109 = v2;
    swift_getKeyPath();
    sub_1D2871A08();

    swift_beginAccess();
    v35 = *(v2 + 48);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 48) = v35;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_44:
      v35 = sub_1D27CCD4C(0, *(v35 + 16) + 1, 1, v35);
      *(v2 + 48) = v35;
    }

    v71 = *(v35 + 16);
    v70 = *(v35 + 24);
    if (v71 >= v70 >> 1)
    {
      v35 = sub_1D27CCD4C((v70 > 1), v71 + 1, 1, v35);
    }

    *(v35 + 16) = v71 + 1;
    sub_1D249006C(v87, v35 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v71, type metadata accessor for CarouselFace);
    *(v2 + 48) = v35;
    swift_endAccess();
    v109 = v2;
    swift_getKeyPath();
    sub_1D28719F8();

    v72 = v88;
LABEL_39:
    type metadata accessor for PhotosPersonAsset(0);
    v23 = v72;
    v80 = objc_opt_self();
    v81 = sub_1D2878068();
    v82 = [v80 uuidFromLocalIdentifier_];

    if (!v82)
    {
      goto LABEL_50;
    }

    v83 = sub_1D28780A8();
    v85 = v84;

    sub_1D2486380(v83, v85);
    sub_1D248567C();
LABEL_41:
    sub_1D24902A4(v23, type metadata accessor for CarouselFace);
    return;
  }

  sub_1D249006C(v10, v23, type metadata accessor for CarouselFace);
  type metadata accessor for PhotosPersonAsset(0);
  v73 = objc_opt_self();
  v74 = sub_1D2878068();
  v75 = [v73 uuidFromLocalIdentifier_];

  if (v75)
  {
    v76 = sub_1D28780A8();
    v78 = v77;

    sub_1D2486380(v76, v78);
    goto LABEL_41;
  }

LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
}

uint64_t ImageGenerationPerson.DemographicTraits.skinTone.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ImageGenerationPerson.DemographicTraits(0) + 20);

  return sub_1D24912B8(v3, a1);
}

uint64_t type metadata accessor for ImageGenerationPerson.DemographicTraits(uint64_t a1)
{
  result = qword_1ED8A6EF8;
  if (!qword_1ED8A6EF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D24912B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E33C0, &unk_1D2883750);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL _s23ImagePlaygroundInternal0A16GenerationPersonV17DemographicTraitsV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for ImageGenerationPerson.SkinTone(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E33C0, &unk_1D2883750);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC108, &qword_1D2898A00);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  v14 = *a2;
  if (*a1 == 3)
  {
    if (v14 != 3)
    {
      return 0;
    }
  }

  else
  {
    if (v14 == 3)
    {
      return 0;
    }

    v26 = v7;
    v15 = sub_1D2873768();
    v17 = v16;
    if (v15 == sub_1D2873768() && v17 == v18)
    {

      v7 = v26;
      goto LABEL_9;
    }

    v19 = sub_1D2879618();

    v7 = v26;
    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_9:
  v20 = *(type metadata accessor for ImageGenerationPerson.DemographicTraits(0) + 20);
  v21 = *(v11 + 48);
  sub_1D24912B8(&a1[v20], v13);
  sub_1D24912B8(&a2[v20], &v13[v21]);
  v22 = *(v5 + 48);
  if (v22(v13, 1, v4) == 1)
  {
    if (v22(&v13[v21], 1, v4) == 1)
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  sub_1D24912B8(v13, v10);
  if (v22(&v13[v21], 1, v4) == 1)
  {
    sub_1D24917E0(v10);
LABEL_14:
    sub_1D22BD238(v13, &qword_1EC6DC108, &qword_1D2898A00);
    return 0;
  }

  sub_1D249183C(&v13[v21], v7);
  sub_1D28737A8();
  sub_1D2439848();
  sub_1D2878368();
  sub_1D2878368();
  if (v29 == v27 && v30 == v28)
  {
    sub_1D24917E0(v7);

    sub_1D24917E0(v10);
LABEL_19:
    sub_1D22BD238(v13, &unk_1EC6E33C0, &unk_1D2883750);
    return 1;
  }

  v24 = sub_1D2879618();
  sub_1D24917E0(v7);

  sub_1D24917E0(v10);
  sub_1D22BD238(v13, &unk_1EC6E33C0, &unk_1D2883750);
  return (v24 & 1) != 0;
}

void sub_1D249170C(uint64_t a1)
{
  sub_1D2491788(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1D2491788(uint64_t a1)
{
  if (!qword_1ED8A6E30)
  {
    type metadata accessor for ImageGenerationPerson.SkinTone(255);
    v1 = sub_1D2878F18();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED8A6E30);
    }
  }
}

uint64_t sub_1D24917E0(uint64_t a1)
{
  v2 = type metadata accessor for ImageGenerationPerson.SkinTone(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D249183C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageGenerationPerson.SkinTone(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ImageGenerationPerson.Appearance.id.getter()
{
  if (*v0 == 3)
  {
    return 0x6669636570736E75;
  }

  else
  {
    return sub_1D2873768();
  }
}

uint64_t ImageGenerationPerson.Appearance.localizedGenderDescription.getter()
{
  v1 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v2 - 8);
  if (*v0 <= 1u)
  {
    if (*v0)
    {
      sub_1D2877FE8();
      if (qword_1ED89E0E8 == -1)
      {
        goto LABEL_11;
      }
    }

    else
    {
      sub_1D2877FE8();
      if (qword_1ED89E0E8 == -1)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_12;
  }

  if (*v0 == 2)
  {
    sub_1D2877FE8();
    if (qword_1ED89E0E8 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  sub_1D2877FE8();
  if (qword_1ED89E0E8 != -1)
  {
LABEL_12:
    swift_once();
  }

LABEL_11:
  v3 = qword_1ED8B0058;
  sub_1D28718C8();
  return sub_1D28780E8();
}

BOOL static ImageGenerationPerson.Appearance.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if (*a1 == 3)
  {
    return v2 == 3;
  }

  if (v2 == 3)
  {
    return 0;
  }

  v4 = sub_1D2873768();
  v6 = v5;
  if (v4 != sub_1D2873768() || v6 != v7)
  {
    v9 = sub_1D2879618();

    return (v9 & 1) != 0;
  }

  return 1;
}

uint64_t sub_1D2491D04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4764657070617277 && a2 == 0xED00007265646E65)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D2879618();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D2491D94(uint64_t a1)
{
  v2 = sub_1D24924AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2491DD0(uint64_t a1)
{
  v2 = sub_1D24924AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImageGenerationPerson.Appearance.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC110, &qword_1D288B5C8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D24924AC();
  sub_1D2879888();
  v10 = v7;
  sub_1D2492500();
  sub_1D2879568();
  return (*(v4 + 8))(v6, v3);
}

uint64_t ImageGenerationPerson.Appearance.hash(into:)(uint64_t a1)
{
  if (*v1 == 3)
  {
    return sub_1D28797F8();
  }

  sub_1D28797F8();
  sub_1D2873768();
  sub_1D2877F38();
}

uint64_t ImageGenerationPerson.Appearance.hashValue.getter()
{
  v1 = *v0;
  sub_1D28797D8();
  sub_1D28797F8();
  if (v1 != 3)
  {
    sub_1D2873768();
    sub_1D2877F38();
  }

  return sub_1D2879828();
}

uint64_t ImageGenerationPerson.Appearance.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC128, &qword_1D288B5D0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D24924AC();
  sub_1D2879868();
  if (!v2)
  {
    sub_1D2492554();
    sub_1D28794D8();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1D2492208()
{
  v1 = *v0;
  sub_1D28797D8();
  sub_1D28797F8();
  if (v1 != 3)
  {
    sub_1D2873768();
    sub_1D2877F38();
  }

  return sub_1D2879828();
}

uint64_t sub_1D249228C(uint64_t a1)
{
  if (*v1 == 3)
  {
    return sub_1D28797F8();
  }

  sub_1D28797F8();
  sub_1D2873768();
  sub_1D2877F38();
}

uint64_t sub_1D249231C()
{
  v1 = *v0;
  sub_1D28797D8();
  sub_1D28797F8();
  if (v1 != 3)
  {
    sub_1D2873768();
    sub_1D2877F38();
  }

  return sub_1D2879828();
}

uint64_t sub_1D249239C@<X0>(uint64_t *a1@<X8>)
{
  if (*v1 == 3)
  {
    v3 = 0xEB00000000646569;
    result = 0x6669636570736E75;
  }

  else
  {
    result = sub_1D2873768();
  }

  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_1D24923F0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if (*a1 == 3)
  {
    return v2 == 3;
  }

  if (v2 == 3)
  {
    return 0;
  }

  v4 = sub_1D2873768();
  v6 = v5;
  if (v4 != sub_1D2873768() || v6 != v7)
  {
    v9 = sub_1D2879618();

    return (v9 & 1) != 0;
  }

  return 1;
}

unint64_t sub_1D24924AC()
{
  result = qword_1EC6DC118;
  if (!qword_1EC6DC118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC118);
  }

  return result;
}

unint64_t sub_1D2492500()
{
  result = qword_1EC6DC120;
  if (!qword_1EC6DC120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC120);
  }

  return result;
}

unint64_t sub_1D2492554()
{
  result = qword_1EC6DC130;
  if (!qword_1EC6DC130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC130);
  }

  return result;
}

unint64_t sub_1D24925AC()
{
  result = qword_1EC6D8AD0;
  if (!qword_1EC6D8AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D8AD0);
  }

  return result;
}

uint64_t _s10AppearanceVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 4;
  if (v6 < 3)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

unint64_t sub_1D24926C4()
{
  result = qword_1EC6DC138;
  if (!qword_1EC6DC138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC138);
  }

  return result;
}

unint64_t sub_1D249271C()
{
  result = qword_1EC6DC140;
  if (!qword_1EC6DC140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC140);
  }

  return result;
}

unint64_t sub_1D2492774()
{
  result = qword_1EC6DC148;
  if (!qword_1EC6DC148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC148);
  }

  return result;
}

uint64_t ImageGenerationPerson.SkinTone.displayName.getter(uint64_t a1)
{
  _s23ImagePlaygroundInternal0A16GenerationPersonV8SkinToneV2idSSvg_0();
  sub_1D22BD06C();
  v1 = sub_1D2878F68();

  return v1;
}

uint64_t ImageGenerationPerson.SkinTone.wrappedSkinTone.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D28737A8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t static ImageGenerationPerson.SkinTone.== infix(_:_:)()
{
  sub_1D28737A8();
  sub_1D24933BC(&qword_1EC6D8BA8, MEMORY[0x1E69E01B8], MEMORY[0x1E69E01D8]);
  sub_1D2878368();
  sub_1D2878368();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_1D2879618();
  }

  return v1 & 1;
}

uint64_t sub_1D24929A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x5364657070617277 && a2 == 0xEF656E6F546E696BLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D2879618();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D2492A30(uint64_t a1)
{
  v2 = sub_1D2492C20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2492A6C(uint64_t a1)
{
  v2 = sub_1D2492C20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImageGenerationPerson.SkinTone.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC150, &qword_1D288B808);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2492C20();
  sub_1D2879888();
  sub_1D28737A8();
  sub_1D24933BC(&qword_1EC6DC160, MEMORY[0x1E69E01B8], MEMORY[0x1E69E01C0]);
  sub_1D2879598();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1D2492C20()
{
  result = qword_1EC6DC158;
  if (!qword_1EC6DC158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC158);
  }

  return result;
}

uint64_t ImageGenerationPerson.SkinTone.hash(into:)(uint64_t a1)
{
  sub_1D28737A8();
  sub_1D24933BC(&qword_1EC6DC168, MEMORY[0x1E69E01B8], MEMORY[0x1E69E01C8]);

  return sub_1D2877F08();
}

uint64_t ImageGenerationPerson.SkinTone.hashValue.getter()
{
  sub_1D28797D8();
  sub_1D28737A8();
  sub_1D24933BC(&qword_1EC6DC168, MEMORY[0x1E69E01B8], MEMORY[0x1E69E01C8]);
  sub_1D2877F08();
  return sub_1D2879828();
}

uint64_t ImageGenerationPerson.SkinTone.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = sub_1D28737A8();
  v16 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v19 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC170, &qword_1D288B810);
  v17 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for ImageGenerationPerson.SkinTone(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2492C20();
  sub_1D2879868();
  if (!v2)
  {
    v12 = v16;
    v13 = v18;
    sub_1D24933BC(&qword_1EC6DC178, MEMORY[0x1E69E01B8], MEMORY[0x1E69E01E0]);
    sub_1D2879528();
    (*(v17 + 8))(v8, v6);
    (*(v12 + 32))(v11, v19, v4);
    sub_1D249183C(v11, v13);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1D2493020(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC150, &qword_1D288B808);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2492C20();
  sub_1D2879888();
  sub_1D28737A8();
  sub_1D24933BC(&qword_1EC6DC160, MEMORY[0x1E69E01B8], MEMORY[0x1E69E01C0]);
  sub_1D2879598();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1D2493198()
{
  sub_1D28797D8();
  sub_1D28737A8();
  sub_1D24933BC(&qword_1EC6DC168, MEMORY[0x1E69E01B8], MEMORY[0x1E69E01C8]);
  sub_1D2877F08();
  return sub_1D2879828();
}

uint64_t sub_1D2493220(uint64_t a1)
{
  sub_1D28737A8();
  sub_1D24933BC(&qword_1EC6DC168, MEMORY[0x1E69E01B8], MEMORY[0x1E69E01C8]);

  return sub_1D2877F08();
}

uint64_t sub_1D24932A4()
{
  sub_1D28797D8();
  sub_1D28737A8();
  sub_1D24933BC(&qword_1EC6DC168, MEMORY[0x1E69E01B8], MEMORY[0x1E69E01C8]);
  sub_1D2877F08();
  return sub_1D2879828();
}

uint64_t type metadata accessor for ImageGenerationPerson.SkinTone(uint64_t a1)
{
  result = qword_1ED8A6E38;
  if (!qword_1ED8A6E38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D24933BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D2493404@<X0>(uint64_t *a2@<X8>)
{
  result = _s23ImagePlaygroundInternal0A16GenerationPersonV8SkinToneV2idSSvg_0();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1D249342C()
{
  sub_1D28737A8();
  sub_1D24933BC(&qword_1EC6D8BA8, MEMORY[0x1E69E01B8], MEMORY[0x1E69E01D8]);
  sub_1D2878368();
  sub_1D2878368();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_1D2879618();
  }

  return v1 & 1;
}

uint64_t sub_1D2493534(uint64_t a1)
{
  result = sub_1D28737A8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D24935B4()
{
  result = qword_1EC6DC180;
  if (!qword_1EC6DC180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC180);
  }

  return result;
}

unint64_t sub_1D249360C()
{
  result = qword_1EC6DC188;
  if (!qword_1EC6DC188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC188);
  }

  return result;
}

unint64_t sub_1D2493664()
{
  result = qword_1EC6DC190;
  if (!qword_1EC6DC190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC190);
  }

  return result;
}

void sub_1D24936B8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  sub_1D2870F78();
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1D2493730()
{
  v1 = v0;
  v2 = sub_1D28729E8();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 32))
  {
    v5 = *(v1 + 32);
  }

  else
  {
    sub_1D28731D8();
    static ExecutionContext.clientIdentity()(v4);
    v5 = MEMORY[0x1D389BC40](v4);
    *(v1 + 32) = v5;
    sub_1D2870F78();
  }

  sub_1D2870F78();
  return v5;
}

uint64_t sub_1D24937F0()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 40);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v3 = swift_allocObject();
    swift_weakInit();
    v1 = sub_1D27D84D8(0x7FFFFFFFFFFFFFFFLL, KeyPath, &unk_1D288BC60, v3);
    *(v0 + 40) = v1;
    sub_1D2870F78();
  }

  sub_1D2870F78();
  return v1;
}

uint64_t sub_1D24938CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  sub_1D2878568();
  v3[8] = sub_1D2878558();
  v5 = sub_1D28784F8();
  v3[9] = v5;
  v3[10] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D2493968, v5, v4);
}

uint64_t sub_1D2493968()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_1D2493AA8;
    v3 = v0[5];
    v4 = v0[6];

    return sub_1D2493BEC(v3, v4);
  }

  else
  {
    v6 = v0[5];

    v7 = type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive(0);
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1D2493AA8()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1D23D2F60, v3, v2);
}

uint64_t sub_1D2493BEC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1D2873CB8();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = sub_1D2878568();
  v3[9] = sub_1D2878558();
  v6 = sub_1D28784F8();
  v3[10] = v6;
  v3[11] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D2493CE8, v6, v5);
}

uint64_t sub_1D2493CE8()
{
  v1 = v0[4];
  v2 = *(v1 + 24);
  v0[12] = v2;
  if (v2)
  {
    v3 = v0[3];
    v4 = v2;
    v5 = sub_1D2878558();
    v0[13] = v5;
    v6 = swift_task_alloc();
    v0[14] = v6;
    v6[2] = v1;
    v6[3] = v4;
    v6[4] = 114;
    v6[5] = v3;
    v7 = swift_task_alloc();
    v0[15] = v7;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC0F0, &qword_1D288B3A0);
    *v7 = v0;
    v7[1] = sub_1D2493F50;
    v9 = v0[2];
    v10 = MEMORY[0x1E69E85E0];

    return MEMORY[0x1EEE6DDE0](v9, v5, v10, 0xD000000000000019, 0x80000001D28B8610, sub_1D249AC38, v6, v8);
  }

  else
  {

    sub_1D28724C8();
    v11 = sub_1D2873CA8();
    v12 = sub_1D28789F8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1D226E000, v11, v12, "Missing requirements to fetch the generated face", v13, 2u);
      MEMORY[0x1D38A3520](v13, -1, -1);
    }

    v15 = v0[6];
    v14 = v0[7];
    v16 = v0[5];
    v17 = v0[2];

    (*(v15 + 8))(v14, v16);
    v18 = type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive(0);
    (*(*(v18 - 8) + 56))(v17, 1, 1, v18);

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_1D2493F50()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return MEMORY[0x1EEE6DFA0](sub_1D24940B0, v3, v2);
}

uint64_t sub_1D24940B0()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2();
}

void *sub_1D2494120(uint64_t a1)
{
  v12 = a1;
  v2 = sub_1D2878A88();
  MEMORY[0x1EEE9AC00](v2);
  v3 = sub_1D2877B68();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1D2878AA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[1] = sub_1D22BCFD0(0, &qword_1ED89CD50, 0x1E69E9610);
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8098], v4);
  sub_1D2877B58();
  v13 = MEMORY[0x1E69E7CC0];
  sub_1D2499220(&qword_1ED89CD60, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE50, &unk_1D2881A40);
  sub_1D249AF34(&qword_1ED89CE80, &unk_1EC6DAE50, &unk_1D2881A40);
  sub_1D2879088();
  v8 = sub_1D2878AD8();
  v1[4] = 0;
  v1[5] = 0;
  v9 = v12;
  v1[2] = v8;
  v1[3] = v9;
  return v1;
}

uint64_t sub_1D2494390()
{
  v1[6] = v0;
  v2 = sub_1D2873CB8();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  sub_1D2878568();
  v1[11] = sub_1D2878558();
  v4 = sub_1D28784F8();
  v1[12] = v4;
  v1[13] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D2494490, v4, v3);
}

uint64_t sub_1D2494490()
{
  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  v1 = sub_1D23CCEF8();
  v0[14] = v1;
  v0[15] = sub_1D2493730();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC1C8, &qword_1D288BC20);
  v2 = swift_allocObject();
  v0[16] = v2;
  *(v2 + 16) = xmmword_1D287F500;
  *(v2 + 32) = v1;
  sub_1D2870F68();
  v3 = swift_task_alloc();
  v0[17] = v3;
  *v3 = v0;
  v3[1] = sub_1D24945BC;

  return MEMORY[0x1EEE4F6C8](v2);
}

uint64_t sub_1D24945BC(uint64_t a1)
{
  v3 = *v2;
  v3[18] = a1;
  v3[19] = v1;

  if (v1)
  {
    v4 = v3[12];
    v5 = v3[13];
    v6 = sub_1D2494AA4;
  }

  else
  {

    v4 = v3[12];
    v5 = v3[13];
    v6 = sub_1D24946E0;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

void sub_1D24946E0()
{
  v1 = v0[18];

  if (*(v1 + 16))
  {
    v2 = *(v0[18] + 32);

    if ((v2 & 1) == 0)
    {

      goto LABEL_6;
    }
  }

  else
  {
  }

  v3 = *(v0[14] + 16);

  if (v3)
  {
LABEL_26:

    v37 = v0[1];

    v37();
    return;
  }

LABEL_6:
  sub_1D28724C8();
  v4 = sub_1D2873CA8();
  v5 = sub_1D28789F8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1D226E000, v4, v5, "Resetting face selection for people as diffusion model set changed.", v6, 2u);
    MEMORY[0x1D38A3520](v6, -1, -1);
  }

  v7 = v0[10];
  v8 = v0[7];
  v9 = v0[8];
  v38 = v0;

  (*(v9 + 8))(v7, v8);
  v10 = sub_1D25D76C8(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBBE0, &unk_1D288BCC0);
  v11 = sub_1D28793C8();
  v12 = v11;
  v13 = 0;
  v14 = v10 + 64;
  v15 = 1 << *(v10 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v10 + 64);
  v18 = (v15 + 63) >> 6;
  v39 = v11 + 64;
  v40 = v10;
  if (v17)
  {
    while (1)
    {
      v19 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v22 = v19 | (v13 << 6);
      v23 = (*(v40 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v40 + 56) + 8 * v22);
      if (v26[2] <= 5uLL)
      {
        sub_1D2870F68();
        sub_1D2870F68();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE60, &unk_1D28897D0);
        v27 = swift_allocObject();
        v28 = _swift_stdlib_malloc_size(v27);
        v29 = v28 - 32;
        if (v28 < 32)
        {
          v29 = v28 - 17;
        }

        v27[2] = 5;
        v27[3] = 2 * (v29 >> 4);
        swift_arrayInitWithCopy();
        sub_1D2870F68();
        v26 = v27;
      }

      *(v39 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v30 = (v12[6] + 16 * v22);
      *v30 = v24;
      v30[1] = v25;
      *(v12[7] + 8 * v22) = v26;
      v31 = v12[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        break;
      }

      v12[2] = v33;
      if (!v17)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        sub_1D22BCFD0(0, &qword_1ED89CDA0, 0x1E695E000);
        v34 = sub_1D2878A58();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA358, &qword_1D2883920);
        v35 = sub_1D2877E78();

        v36 = sub_1D2878068();
        [v34 setValue:v35 forKey:v36];

        v0 = v38;
        goto LABEL_26;
      }

      v21 = *(v14 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1D2494AA4()
{
  v20 = v0;
  v1 = *(v0 + 152);

  sub_1D28724C8();
  v2 = v1;
  v3 = sub_1D2873CA8();
  v4 = sub_1D2878A18();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 152);
    v6 = *(v0 + 64);
    v18 = *(v0 + 72);
    v7 = *(v0 + 56);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_1D2879748();
    v12 = sub_1D23D7C84(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1D226E000, v3, v4, "Failed to compare last diffusion model spec used with current models, error: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1D38A3520](v9, -1, -1);
    MEMORY[0x1D38A3520](v8, -1, -1);

    (*(v6 + 8))(v18, v7);
  }

  else
  {
    v14 = *(v0 + 64);
    v13 = *(v0 + 72);
    v15 = *(v0 + 56);

    (*(v14 + 8))(v13, v15);
  }

  v16 = *(v0 + 8);

  return v16();
}

void sub_1D2494CB0(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v30 = a2;
  v3 = sub_1D2873CB8();
  v28 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D2877B48();
  v33 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D2877B68();
  v31 = *(v9 - 8);
  v32 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for GeneratedPreviewOptions(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v2 + 24);
  if (v16)
  {
    v28 = *(v2 + 16);
    sub_1D22D7044(v29, v36);
    sub_1D249A0FC(v30, &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GeneratedPreviewOptions);
    v17 = (*(v13 + 80) + 56) & ~*(v13 + 80);
    v18 = (v14 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
    v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
    v30 = v6;
    v20 = swift_allocObject();
    sub_1D22D79FC(v36, v20 + 16);
    sub_1D2499268(v15, v20 + v17, type metadata accessor for GeneratedPreviewOptions);
    *(v20 + v18) = v2;
    *(v20 + v19) = v16;
    *(v20 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8)) = 114;
    aBlock[4] = sub_1D2499418;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D23DFBA8;
    aBlock[3] = &block_descriptor_14;
    v21 = _Block_copy(aBlock);
    v22 = v16;
    sub_1D2870F78();
    sub_1D2877B58();
    v34 = MEMORY[0x1E69E7CC0];
    sub_1D2499220(&qword_1ED89CFE0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE80, &qword_1D287EE00);
    sub_1D249AF34(&qword_1ED89CEB0, &unk_1EC6DAE80, &qword_1D287EE00);
    v23 = v30;
    sub_1D2879088();
    MEMORY[0x1D38A1540](0, v11, v8, v21);
    _Block_release(v21);

    (*(v33 + 8))(v8, v23);
    (*(v31 + 8))(v11, v32);
  }

  else
  {
    v24 = v28;
    sub_1D28724C8();
    v25 = sub_1D2873CA8();
    v26 = sub_1D28789F8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1D226E000, v25, v26, "Missing requirements to store the generated face", v27, 2u);
      MEMORY[0x1D38A3520](v27, -1, -1);
    }

    (*(v24 + 8))(v5, v3);
  }
}

uint64_t sub_1D249519C(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void (*a5)(char *, uint64_t))
{
  v27 = a5;
  v29 = a4;
  v28 = sub_1D2873CB8();
  MEMORY[0x1EEE9AC00](v28);
  v7 = sub_1D2872008();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - v15;
  sub_1D22D7044(a1, v30);
  v17 = *(type metadata accessor for GeneratedPreviewOptions(0) + 20);
  sub_1D2871FC8();
  LOBYTE(a1) = MEMORY[0x1D389AA00](a2 + v17, v10);
  (*(v8 + 8))(v10, v7);
  if (a1)
  {
    v18 = 1;
  }

  else
  {
    v18 = sub_1D2871F78();
  }

  sub_1D2495594(v30, v18 & 1, v16);
  v19 = *a2;
  v20 = a2[1];
  v21 = v27;
  v22 = sub_1D24998B0(v29, v27, *a2, v20);
  if (!v22)
  {
    v22 = sub_1D25D81C4(MEMORY[0x1E69E7CC0]);
  }

  v23 = v22;
  sub_1D249A0FC(v16, v13, type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30[0] = v23;
  sub_1D24E96B0(v13, a2, isUniquelyReferenced_nonNull_native);
  sub_1D249A164(v29, v21, v30[0], v19, v20);

  return sub_1D249A9A0(v16, type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive);
}

id sub_1D2495594@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a3;
  v5 = type metadata accessor for PlaygroundImage(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v33[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v33[-v9];
  v11 = type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  v16 = v37;
  (*(v15 + 16))(a2, v14, v15);
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v35 = 0;
  v37 = v13;
  v18 = v7;
  if (*(v7 + 8) == 2)
  {
    v19 = *v7;
    v20 = v11;
    v21 = a1;
  }

  else
  {
    v22 = sub_1D262B684();
    v20 = v11;
    v21 = a1;
    if (v22)
    {
      v23 = v22;
      result = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage:v22 imageOrientation:sub_1D263073C(*(v18 + 6))];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v19 = result;
    }

    else
    {
      v19 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
    }
  }

  v34 = *(v18 + v5[12]);
  v24 = v18[2];
  v25 = &v10[v5[9]];
  *v25 = 0u;
  v25[1] = 0u;
  *&v10[v5[10]] = xmmword_1D28809A0;
  v26 = v18;
  v27 = v5[11];
  v28 = sub_1D2873AA8();
  (*(*(v28 - 8) + 56))(&v10[v27], 1, 1, v28);
  *v10 = v19;
  v10[8] = 2;
  sub_1D2870F68();
  v29 = v19;
  [v29 imageOrientation];
  *(v10 + 6) = sub_1D2878C88();
  *(v10 + 2) = v24;
  *(v10 + 4) = 0;
  *(v10 + 5) = 0;
  v10[v5[12]] = v34;
  sub_1D2871808();

  sub_1D249A9A0(v26, type metadata accessor for PlaygroundImage);
  v30 = v37;
  sub_1D2499268(v10, v37, type metadata accessor for PlaygroundImage);
  v31 = v21[3];
  v32 = v21[4];
  __swift_project_boxed_opaque_existential_1(v21, v31);
  *(v30 + *(v20 + 20)) = (*(v32 + 24))(v31, v32);
  sub_1D2499268(v30, v36, type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive);
  return __swift_destroy_boxed_opaque_existential_0(v21);
}

uint64_t sub_1D24958FC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1D2873CB8();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  sub_1D2878568();
  v3[8] = sub_1D2878558();
  v6 = sub_1D28784F8();
  v3[9] = v6;
  v3[10] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D24959F4, v6, v5);
}

uint64_t sub_1D24959F4()
{
  v1 = v0[8];
  v0[11] = sub_1D24937F0();
  sub_1D2870F78();
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_1D2495AD0;
  v3 = v0[2];
  v4 = v0[3];
  v5 = MEMORY[0x1E69E85E0];

  return sub_1D25F7444(v3, v1, v5, v4);
}

uint64_t sub_1D2495AD0()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_1D2495C60;
  }

  else
  {

    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_1D2495BF8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D2495BF8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D2495C60()
{
  v1 = v0[13];

  sub_1D28724C8();
  v2 = v1;
  v3 = sub_1D2873CA8();
  v4 = sub_1D2878A18();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[13];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1D226E000, v3, v4, "Failed to loadGeneratedFaceArchive error: %@", v7, 0xCu);
    sub_1D22BD238(v8, qword_1EC6DA930, &qword_1D287E870);
    MEMORY[0x1D38A3520](v8, -1, -1);
    MEMORY[0x1D38A3520](v7, -1, -1);
  }

  else
  {
  }

  v11 = v0[2];
  (*(v0[6] + 8))(v0[7], v0[5]);
  v12 = type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive(0);
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1D2495E44()
{
  v1[28] = v0;
  v2 = sub_1D2873CB8();
  v1[29] = v2;
  v1[30] = *(v2 - 8);
  v1[31] = swift_task_alloc();
  sub_1D2878568();
  v1[32] = sub_1D2878558();
  v4 = sub_1D28784F8();
  v1[33] = v4;
  v1[34] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D2495F38, v4, v3);
}

uint64_t sub_1D2495F38()
{
  v1 = *(v0[28] + 24);
  v0[35] = v1;
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = v1;
    v4 = [v3 librarySpecificFetchOptions];
    v5 = [v2 fetchFacesWithOptions_];

    v6 = [v5 fetchedObjects];
    if (v6)
    {
      v7 = objc_opt_self();
      v8 = [v3 librarySpecificFetchOptions];
      v9 = [v7 fetchAssetsForFaces:v6 options:v8];

      if (!v9)
      {
        __break(1u);
        return MEMORY[0x1EEE6DEC8](v10);
      }

      v11 = [v9 fetchedObjects];

      if (v11)
      {
        sub_1D22BCFD0(0, &qword_1EC6D74E0, 0x1E6978630);
        v12 = sub_1D28783E8();

        v13 = swift_allocObject();
        *(v13 + 16) = v12;
        *(v13 + 24) = 114;
        v0[22] = sub_1D249AF88;
        v0[23] = v13;
        v0[18] = MEMORY[0x1E69E9820];
        v0[19] = 1107296256;
        v0[20] = sub_1D23DFBA8;
        v0[21] = &block_descriptor_43;
        v14 = _Block_copy(v0 + 18);
        v0[36] = v14;

        v0[2] = v0;
        v0[3] = sub_1D249626C;
        v15 = swift_continuation_init();
        v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAD48, &qword_1D288BCB0);
        v0[10] = MEMORY[0x1E69E9820];
        v0[11] = 1107296256;
        v0[12] = sub_1D23DFFA8;
        v0[13] = &block_descriptor_46;
        v0[14] = v15;
        [v3 performChanges:v14 completionHandler:v0 + 10];
        v10 = v0 + 2;

        return MEMORY[0x1EEE6DEC8](v10);
      }
    }
  }

  else
  {
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_1D249626C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 296) = v2;
  v3 = *(v1 + 272);
  v4 = *(v1 + 264);
  if (v2)
  {
    v5 = sub_1D2496418;
  }

  else
  {
    v5 = sub_1D249639C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D249639C()
{
  v1 = v0[35];
  v2 = v0[36];

  _Block_release(v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D2496418()
{
  v23 = v0;
  v1 = *(v0 + 288);
  v2 = *(v0 + 296);

  swift_willThrow();
  _Block_release(v1);
  sub_1D28724C8();
  v3 = v2;
  v4 = sub_1D2873CA8();
  v5 = sub_1D2878A18();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 296);
    v7 = *(v0 + 280);
    v8 = *(v0 + 240);
    v20 = *(v0 + 232);
    v21 = *(v0 + 248);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = sub_1D2879748();
    v13 = sub_1D23D7C84(v11, v12, &v22);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1D226E000, v4, v5, "Failed to delete generated faces archive from face picker cache with error: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1D38A3520](v10, -1, -1);
    MEMORY[0x1D38A3520](v9, -1, -1);

    (*(v8 + 8))(v21, v20);
  }

  else
  {
    v14 = *(v0 + 296);
    v16 = *(v0 + 240);
    v15 = *(v0 + 248);
    v17 = *(v0 + 232);

    (*(v16 + 8))(v15, v17);
  }

  v18 = *(v0 + 8);

  return v18();
}

void sub_1D249661C(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    v4 = sub_1D2879368();
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return;
    }
  }

  v5 = objc_opt_self();
  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5;
    v7 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1D38A1C30](v7, a1);
      }

      else
      {
        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      ++v7;
      v10 = [v6 changeRequestForAsset_];
      [v10 deleteAssetResourceWithType_];
    }

    while (v4 != v7);
  }
}

double sub_1D249671C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v28 = a5;
  v29 = a1;
  v30 = a3;
  v31 = a4;
  v35 = sub_1D2877B48();
  v37 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v33 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1D2877B68();
  v34 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC1E0, &qword_1D288BC78);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - v11;
  v13 = type metadata accessor for GeneratedPreviewOptions(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(a2 + 16);
  sub_1D249A0FC(v28, v16, type metadata accessor for GeneratedPreviewOptions);
  (*(v10 + 16))(v12, v29, v9);
  v17 = (*(v14 + 80) + 40) & ~*(v14 + 80);
  v18 = (v15 + *(v10 + 80) + v17) & ~*(v10 + 80);
  v19 = swift_allocObject();
  v21 = v30;
  v20 = v31;
  *(v19 + 2) = a2;
  *(v19 + 3) = v21;
  *(v19 + 4) = v20;
  sub_1D2499268(v16, &v19[v17], type metadata accessor for GeneratedPreviewOptions);
  (*(v10 + 32))(&v19[v18], v12, v9);
  aBlock[4] = sub_1D249AC44;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D23DFBA8;
  aBlock[3] = &block_descriptor_37;
  v22 = _Block_copy(aBlock);
  sub_1D2870F78();
  v23 = v21;
  sub_1D2877B58();
  v38 = MEMORY[0x1E69E7CC0];
  sub_1D2499220(&qword_1ED89CFE0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE80, &qword_1D287EE00);
  sub_1D249AF34(&qword_1ED89CEB0, &unk_1EC6DAE80, &qword_1D287EE00);
  v24 = v33;
  v25 = v35;
  sub_1D2879088();
  MEMORY[0x1D38A1540](0, v8, v24, v22);
  _Block_release(v22);
  (*(v37 + 8))(v24, v25);
  (*(v34 + 8))(v8, v36);

  return result;
}

uint64_t sub_1D2496B94(uint64_t a1, void *a2, void *a3, uint64_t *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC0F0, &qword_1D288B3A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - v11;
  v13 = sub_1D24998B0(a2, a3, *a4, a4[1]);
  if (!v13)
  {
    goto LABEL_6;
  }

  v14 = v13;
  if (!v13[2] || (v15 = sub_1D25D0488(a4), (v16 & 1) == 0))
  {

    v13 = 0;
LABEL_6:
    v21 = type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive(v13);
    (*(*(v21 - 8) + 56))(v12, 1, 1, v21);
    goto LABEL_7;
  }

  v17 = v15;
  v18 = v14[7];
  v19 = type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive(0);
  v20 = *(v19 - 8);
  sub_1D249A0FC(v18 + *(v20 + 72) * v17, v12, type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive);

  (*(v20 + 56))(v12, 0, 1, v19);
LABEL_7:
  sub_1D249AD24(v12, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC1E0, &qword_1D288BC78);
  sub_1D2878518();
  return sub_1D22BD238(v12, &qword_1EC6DC0F0, &qword_1D288B3A0);
}

uint64_t sub_1D2496DB0(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = sub_1D2873CB8();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  sub_1D2878568();
  v2[12] = sub_1D2878558();
  v5 = sub_1D28784F8();
  v2[13] = v5;
  v2[14] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D2496EB0, v5, v4);
}

uint64_t sub_1D2496EB0()
{
  v1 = v0[7];
  v2 = *(v1 + *(type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive(0) + 20));
  v0[15] = v2;
  if (v2)
  {
    v0[16] = sub_1D2493730();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC1C8, &qword_1D288BC20);
    v3 = swift_allocObject();
    v0[17] = v3;
    *(v3 + 16) = xmmword_1D287F500;
    *(v3 + 32) = v2;
    sub_1D2870F68();
    v4 = swift_task_alloc();
    v0[18] = v4;
    *v4 = v0;
    v4[1] = sub_1D249700C;

    return MEMORY[0x1EEE4F6C8](v3);
  }

  else
  {

    v5 = v0[1];

    return v5(0);
  }
}

uint64_t sub_1D249700C(uint64_t a1)
{
  v3 = *v2;
  v3[19] = a1;
  v3[20] = v1;

  if (v1)
  {
    v4 = v3[13];
    v5 = v3[14];
    v6 = sub_1D2497350;
  }

  else
  {

    v4 = v3[13];
    v5 = v3[14];
    v6 = sub_1D2497130;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1D2497130()
{
  v20 = v0;
  v1 = v0[19];

  if (*(v1 + 16))
  {
    v2 = *(v0[19] + 32);

    if (v2)
    {
      v3 = 0;
    }

    else
    {
      sub_1D28724C8();
      sub_1D2870F68();
      v4 = sub_1D2873CA8();
      v5 = sub_1D28789F8();

      if (os_log_type_enabled(v4, v5))
      {
        v6 = v0[11];
        v7 = v0[8];
        v8 = v0[9];
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v19 = v10;
        *v9 = 136315138;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2D0, &unk_1D2882750);
        v11 = sub_1D2877EA8();
        v13 = sub_1D23D7C84(v11, v12, &v19);

        *(v9 + 4) = v13;
        _os_log_impl(&dword_1D226E000, v4, v5, "FacePicker - Needs re-generation due to model update, previous diffusionModelSpecification: %s", v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v10);
        MEMORY[0x1D38A3520](v10, -1, -1);
        MEMORY[0x1D38A3520](v9, -1, -1);

        (*(v8 + 8))(v6, v7);
      }

      else
      {
        v14 = v0[11];
        v15 = v0[8];
        v16 = v0[9];

        (*(v16 + 8))(v14, v15);
      }

      v3 = 1;
    }
  }

  else
  {

    v3 = 0;
  }

  v17 = v0[1];

  return v17(v3);
}

uint64_t sub_1D2497350()
{
  v20 = v0;
  v1 = *(v0 + 160);

  sub_1D28724C8();
  v2 = v1;
  v3 = sub_1D2873CA8();
  v4 = sub_1D2878A18();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 160);
    v6 = *(v0 + 72);
    v18 = *(v0 + 80);
    v7 = *(v0 + 64);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_1D2879748();
    v12 = sub_1D23D7C84(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1D226E000, v3, v4, "Failed to compare diffusion models of cached face image with current models,  error: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1D38A3520](v9, -1, -1);
    MEMORY[0x1D38A3520](v8, -1, -1);

    (*(v6 + 8))(v18, v7);
  }

  else
  {
    v14 = *(v0 + 72);
    v13 = *(v0 + 80);
    v15 = *(v0 + 64);

    (*(v14 + 8))(v13, v15);
  }

  v16 = *(v0 + 8);

  return v16(0);
}

uint64_t sub_1D2497554(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC200, &qword_1D288BC88);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D249AD94();
  sub_1D2879888();
  v12 = 0;
  type metadata accessor for PlaygroundImage(0);
  sub_1D2499220(&qword_1EC6DC208, type metadata accessor for PlaygroundImage, &protocol conformance descriptor for PlaygroundImage);
  sub_1D2879598();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive(0) + 20));
    v10[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA630, &qword_1D2886B80);
    sub_1D249ADE8(&qword_1EC6DC210, &qword_1EC6DB538, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
    sub_1D2879568();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1D2497764@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = type metadata accessor for PlaygroundImage(0);
  MEMORY[0x1EEE9AC00](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC1E8, &qword_1D288BC80);
  v18 = *(v6 - 8);
  v19 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D249AD94();
  sub_1D2879868();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v12 = v18;
  v13 = v11;
  v23 = 0;
  sub_1D2499220(&qword_1EC6DA878, type metadata accessor for PlaygroundImage, &protocol conformance descriptor for PlaygroundImage);
  v14 = v19;
  sub_1D2879528();
  sub_1D2499268(v20, v13, type metadata accessor for PlaygroundImage);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA630, &qword_1D2886B80);
  v22 = 1;
  sub_1D249ADE8(&qword_1EC6DC1F8, &qword_1ED89CF88, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
  sub_1D28794D8();
  (*(v12 + 8))(v8, v14);
  *(v13 + *(v9 + 20)) = v21;
  sub_1D249A0FC(v13, v17, type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_1D249A9A0(v13, type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive);
}

uint64_t sub_1D2497AC8()
{
  if (*v0)
  {
    return 0xD00000000000001BLL;
  }

  else
  {
    return 0x6567616D69;
  }
}

uint64_t sub_1D2497B04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6567616D69 && a2 == 0xE500000000000000;
  if (v6 || (sub_1D2879618() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001D28B5A70 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D2879618();

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

uint64_t sub_1D2497BF0(uint64_t a1)
{
  v2 = sub_1D249AD94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2497C2C(uint64_t a1)
{
  v2 = sub_1D249AD94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2497C98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for PlaygroundImage(0);
  if (_s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0())
  {
    v6 = *(a3 + 20);
    v7 = *(a1 + v6);
    v8 = *(a2 + v6);
    if (v7)
    {
      if (v8)
      {
        sub_1D2870F68();
        sub_1D2555048(v7, v8);
        v10 = v9;

        if (v10)
        {
          return 1;
        }
      }
    }

    else if (!v8)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1D2497D2C(uint64_t a1)
{
  sub_1D28797D8();
  type metadata accessor for PlaygroundImage(0);
  sub_1D2871818();
  sub_1D2499220(&qword_1ED8A6CB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D2877F08();
  v3 = *(v1 + *(a1 + 20));
  sub_1D28797F8();
  if (v3)
  {
    sub_1D24FD9A4(v5, v3);
  }

  return sub_1D2879828();
}

void sub_1D2497E08(__int128 *a1, uint64_t a2)
{
  type metadata accessor for PlaygroundImage(0);
  sub_1D2871818();
  sub_1D2499220(&qword_1ED8A6CB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D2877F08();
  v5 = *(v2 + *(a2 + 20));
  if (v5)
  {
    sub_1D28797F8();

    sub_1D24FD9A4(a1, v5);
  }

  else
  {
    sub_1D28797F8();
  }
}

uint64_t sub_1D2497EF0(uint64_t a1, uint64_t a2)
{
  sub_1D28797D8();
  type metadata accessor for PlaygroundImage(0);
  sub_1D2871818();
  sub_1D2499220(&qword_1ED8A6CB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D2877F08();
  v4 = *(v2 + *(a2 + 20));
  sub_1D28797F8();
  if (v4)
  {
    sub_1D24FD9A4(v6, v4);
  }

  return sub_1D2879828();
}

uint64_t sub_1D2497FC8(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC278, &qword_1D288BFE0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D249B254();
  sub_1D2879888();
  v9[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC288, &qword_1D288BFE8);
  sub_1D249B2A8();
  sub_1D2879598();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1D2498144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6863724165636166 && a2 == 0xEC00000073657669)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D2879618();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D24981D0(uint64_t a1)
{
  v2 = sub_1D249B254();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D249820C(uint64_t a1)
{
  v2 = sub_1D249B254();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1D2498248@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D249B394(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1D249829C()
{
  v1 = *v0;
  sub_1D28797D8();
  sub_1D24FDC3C(v3, v1);
  return sub_1D2879828();
}

uint64_t sub_1D24982EC()
{
  v1 = *v0;
  sub_1D28797D8();
  sub_1D24FDC3C(v3, v1);
  return sub_1D2879828();
}

void sub_1D2498330(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() changeRequestForAsset_];
  v4 = sub_1D28715B8();
  [v3 addAssetResourceWithType:a2 fromFileAtURL:v4];
}

id sub_1D24983C8()
{
  v20[1] = *MEMORY[0x1E69E9840];
  v0 = sub_1D2873CB8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  v4 = [objc_opt_self() defaultManager];
  v5 = sub_1D28715B8();
  v20[0] = 0;
  v6 = [v4 removeItemAtURL:v5 error:v20];

  v7 = v20[0];
  if (v6)
  {

    return v7;
  }

  else
  {
    v19 = v20[0];
    v9 = v20[0];
    v10 = sub_1D28714B8();

    swift_willThrow();
    sub_1D28724C8();
    v11 = v10;
    v12 = sub_1D2873CA8();
    v13 = sub_1D2878A18();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v20[0] = v15;
      *v14 = 136315138;
      swift_getErrorValue();
      v16 = sub_1D2879748();
      v18 = sub_1D23D7C84(v16, v17, v20);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_1D226E000, v12, v13, "Failed to store generated face from face picker cache with error: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x1D38A3520](v15, -1, -1);
      MEMORY[0x1D38A3520](v14, -1, -1);
    }

    else
    {
    }

    return (*(v1 + 8))(v3, v0);
  }
}

uint64_t sub_1D24986A0()
{

  return swift_deallocClassInstance();
}

void sub_1D24987A4(uint64_t a1)
{
  sub_1D2872008();
  if (v1 <= 0x3F)
  {
    sub_1D238DF94();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D2498838(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC230, &unk_1D288BC98);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D249AEE0();
  sub_1D2879888();
  v8[15] = 0;
  sub_1D2879578();
  if (!v1)
  {
    type metadata accessor for GeneratedPreviewOptions(0);
    v8[14] = 1;
    sub_1D2872008();
    sub_1D2499220(&qword_1EC6DC238, MEMORY[0x1E696E310], MEMORY[0x1E696E318]);
    sub_1D2879598();
    v8[13] = 2;
    sub_1D2879558();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1D2498A24@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v29 = sub_1D2872008();
  v27 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC218, &qword_1D288BC90);
  v28 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v7 = v23 - v6;
  v8 = type metadata accessor for GeneratedPreviewOptions(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D249AEE0();
  sub_1D2879868();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v24 = v8;
  v25 = a1;
  v12 = v28;
  v11 = v29;
  v33 = 0;
  v13 = v10;
  *v10 = sub_1D28794E8();
  v10[1] = v14;
  v23[2] = v14;
  v32 = 1;
  sub_1D2499220(&qword_1EC6DC228, MEMORY[0x1E696E310], MEMORY[0x1E696E330]);
  sub_1D2879528();
  v15 = v24;
  (*(v27 + 32))(v13 + *(v24 + 20), v5, v11);
  v31 = 2;
  v23[1] = 0;
  v16 = sub_1D28794C8();
  v23[0] = v17;
  v18 = v25;
  v19 = v16;
  (*(v12 + 8))(v7, v30);
  v20 = (v13 + *(v15 + 24));
  v21 = v23[0];
  *v20 = v19;
  v20[1] = v21;
  sub_1D249A0FC(v13, v26, type metadata accessor for GeneratedPreviewOptions);
  __swift_destroy_boxed_opaque_existential_0(v18);
  return sub_1D249A9A0(v13, type metadata accessor for GeneratedPreviewOptions);
}

unint64_t sub_1D2498E14()
{
  v1 = 0x53746E6572727563;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001BLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x444965636166;
  }
}

uint64_t sub_1D2498E78@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D249B604(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D2498EAC(uint64_t a1)
{
  v2 = sub_1D249AEE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2498EE8(uint64_t a1)
{
  v2 = sub_1D249AEE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2498F54(uint64_t a1)
{
  sub_1D28797D8();
  sub_1D2877F38();
  sub_1D2871F98();
  sub_1D2877F38();

  if (*(v1 + *(a1 + 24) + 8))
  {
    sub_1D28797F8();
    sub_1D2877F38();
  }

  else
  {
    sub_1D28797F8();
  }

  return sub_1D2879828();
}

uint64_t sub_1D2499014(uint64_t a1, uint64_t a2)
{
  sub_1D2877F38();
  sub_1D2871F98();
  sub_1D2877F38();

  if (!*(v2 + *(a2 + 24) + 8))
  {
    return sub_1D28797F8();
  }

  sub_1D28797F8();

  return sub_1D2877F38();
}

uint64_t sub_1D24990D0(uint64_t a1, uint64_t a2)
{
  sub_1D28797D8();
  sub_1D2877F38();
  sub_1D2871F98();
  sub_1D2877F38();

  if (*(v2 + *(a2 + 24) + 8))
  {
    sub_1D28797F8();
    sub_1D2877F38();
  }

  else
  {
    sub_1D28797F8();
  }

  return sub_1D2879828();
}

uint64_t sub_1D2499220(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D2499268(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D24992D0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D2879618() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for GeneratedPreviewOptions(0);
  v6 = sub_1D2871F98();
  v8 = v7;
  if (v6 == sub_1D2871F98() && v8 == v9)
  {
  }

  else
  {
    v11 = sub_1D2879618();

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  v13 = *(v5 + 24);
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  result = (v15 | v17) == 0;
  if (v15)
  {
    v18 = v17 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (!v18)
  {
    if (*v14 == *v16 && v15 == v17)
    {
      return 1;
    }

    else
    {

      return sub_1D2879618();
    }
  }

  return result;
}

uint64_t sub_1D2499418()
{
  v1 = *(type metadata accessor for GeneratedPreviewOptions(0) - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + v4);
  v7 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D249519C(v0 + 16, (v0 + v2), v5, v6, v7);
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1D2870F78();
}

void sub_1D24994D8(uint64_t a1, uint64_t a2, void *a3)
{
  v32 = sub_1D2873CB8();
  v6 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v31 - v10;
  v12 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE60, &unk_1D28897D0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D287F500;
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;
  sub_1D2870F68();
  v14 = sub_1D28783C8();

  v15 = [a3 librarySpecificFetchOptions];
  v16 = [v12 fetchFacesWithLocalIdentifiers:v14 options:v15];

  v17 = [v16 firstObject];
  if (v17)
  {
    v18 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E3A10, &qword_1D2881580);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1D28809B0;
    *(v19 + 32) = v17;
    sub_1D22BCFD0(0, &unk_1EC6D74F0, 0x1E69787C8);
    v20 = v17;
    v21 = sub_1D28783C8();

    v22 = [a3 librarySpecificFetchOptions];
    v23 = [v18 fetchAssetsForFaces:v21 options:v22];

    if (v23)
    {
      v24 = [v23 firstObject];

      if (v24)
      {
      }

      else
      {
        sub_1D28724C8();
        v28 = sub_1D2873CA8();
        v29 = sub_1D28789F8();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          *v30 = 0;
          _os_log_impl(&dword_1D226E000, v28, v29, "Failed to fetch asset for its associated PHFace", v30, 2u);
          MEMORY[0x1D38A3520](v30, -1, -1);
        }

        else
        {
        }

        (*(v6 + 8))(v11, v32);
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_1D28724C8();
    v25 = sub_1D2873CA8();
    v26 = sub_1D28789F8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1D226E000, v25, v26, "Failed to fetch PHFace from SystemPhotoLibrary", v27, 2u);
      MEMORY[0x1D38A3520](v27, -1, -1);
    }

    (*(v6 + 8))(v8, v32);
  }
}

void *sub_1D24998B0(void *a1, id a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_1D2873CB8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v65 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v63 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v63 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v63 - v18;
  v20 = sub_1D28716B8();
  v68 = *(v20 - 8);
  v69 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v66 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v67 = &v63 - v23;
  sub_1D24994D8(a3, a4, a1);
  if (!v24)
  {
    sub_1D28724C8();
    sub_1D2870F68();
    v34 = sub_1D2873CA8();
    v35 = sub_1D28789F8();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = v9;
      v38 = swift_slowAlloc();
      v73 = v38;
      *v36 = 136315138;
      *(v36 + 4) = sub_1D23D7C84(a3, a4, &v73);
      _os_log_impl(&dword_1D226E000, v34, v35, "Failed to fetch asset for faceID: %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x1D38A3520](v38, -1, -1);
      MEMORY[0x1D38A3520](v36, -1, -1);

      (*(v37 + 8))(v13, v8);
    }

    else
    {

      (*(v9 + 8))(v13, v8);
    }

    return 0;
  }

  v25 = v24;
  v26 = objc_opt_self();
  v72 = v25;
  v27 = [v26 assetResourcesForAsset:v25 includeDerivatives:1];
  sub_1D22BCFD0(0, &unk_1EC6DADF8, 0x1E69786D8);
  v28 = sub_1D28783E8();

  v70 = v9;
  v71 = v8;
  v64 = v19;
  if (!(v28 >> 62))
  {
    v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v29)
    {
      goto LABEL_4;
    }

LABEL_25:

    sub_1D28724C8();
    v60 = sub_1D2873CA8();
    v61 = sub_1D28789F8();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 134217984;
      *(v62 + 4) = a2;
      _os_log_impl(&dword_1D226E000, v60, v61, "No assetResource linked to the associated PHFace with resource type: %ld", v62, 0xCu);
      MEMORY[0x1D38A3520](v62, -1, -1);
    }

    (*(v70 + 8))(v16, v71);
    return 0;
  }

LABEL_24:
  v29 = sub_1D2879368();
  if (!v29)
  {
    goto LABEL_25;
  }

LABEL_4:
  v30 = 0;
  while (1)
  {
    if ((v28 & 0xC000000000000001) != 0)
    {
      v31 = MEMORY[0x1D38A1C30](v30, v28);
    }

    else
    {
      if (v30 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v31 = *(v28 + 8 * v30 + 32);
    }

    v32 = v31;
    v33 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if ([v31 type] == a2)
    {
      break;
    }

    ++v30;
    if (v33 == v29)
    {
      goto LABEL_25;
    }
  }

  v39 = [v32 privateFileURL];
  if (v39)
  {
    v40 = v66;
    v41 = v39;
    sub_1D2871638();

    v43 = v67;
    v42 = v68;
    v44 = v69;
    (*(v68 + 32))(v67, v40, v69);
    v56 = sub_1D28716C8();
    v58 = v57;
    sub_1D28713F8();
    swift_allocObject();
    sub_1D28713E8();
    sub_1D249AB38();
    sub_1D28713D8();
    (*(v42 + 8))(v43, v44);

    sub_1D22D6D60(v56, v58);

    return v73;
  }

  v45 = v64;
  sub_1D28724C8();
  v46 = v32;
  v47 = sub_1D2873CA8();
  v48 = sub_1D28789F8();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v73 = v50;
    *v49 = 136315138;
    v51 = [v46 debugDescription];
    v52 = sub_1D28780A8();
    v54 = v53;

    v55 = sub_1D23D7C84(v52, v54, &v73);

    *(v49 + 4) = v55;
    _os_log_impl(&dword_1D226E000, v47, v48, "No privateFileURL for resource: %s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v50);
    MEMORY[0x1D38A3520](v50, -1, -1);
    MEMORY[0x1D38A3520](v49, -1, -1);
  }

  else
  {
  }

  (*(v70 + 8))(v45, v71);
  return 0;
}

uint64_t sub_1D249A0FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D249A164(void *a1, void (*a2)(char *, uint64_t), void *a3, void *a4, unint64_t a5)
{
  v52 = a2;
  v9 = sub_1D2873CB8();
  v59 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v58 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v48 - v12;
  v14 = sub_1D2871538();
  v54 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D28716B8();
  v55 = *(v17 - 8);
  v56 = v17;
  v18 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v57 = &v48 - v21;
  v53 = a1;
  sub_1D24994D8(a4, a5, a1);
  if (v22)
  {
    v23 = v22;
    sub_1D2871428();
    swift_allocObject();
    sub_1D2871418();
    aBlock = a3;
    sub_1D249AA00();
    v24 = sub_1D2871408();
    v49 = v23;
    v48 = v9;
    v50 = v24;
    v51 = v29;

    v30 = [objc_opt_self() defaultManager];
    v31 = [v30 temporaryDirectory];

    sub_1D2871638();
    aBlock = a4;
    v61 = a5;
    sub_1D2870F68();
    MEMORY[0x1D38A0C50](0x7473696C702ELL, 0xE600000000000000);
    v32 = v54;
    (*(v54 + 104))(v16, *MEMORY[0x1E6968F70], v14);
    sub_1D22BD06C();
    v33 = v57;
    sub_1D2871698();
    (*(v32 + 8))(v16, v14);

    v35 = v55;
    v34 = v56;
    v36 = *(v55 + 8);
    v36(v19, v56);
    sub_1D28716F8();
    v54 = *(v35 + 16);
    (v54)(v19, v33, v34);
    v37 = *(v35 + 80);
    v38 = swift_allocObject();
    v39 = v34;
    v40 = v38;
    v41 = v49;
    v42 = v52;
    *(v38 + 16) = v49;
    *(v38 + 24) = v42;
    v52 = v36;
    v55 = *(v35 + 32);
    (v55)(v38 + ((v37 + 32) & ~v37), v19, v39);
    v64 = sub_1D249AA54;
    v65 = v40;
    aBlock = MEMORY[0x1E69E9820];
    v61 = 1107296256;
    v62 = sub_1D23DFBA8;
    v63 = &block_descriptor_18;
    v58 = _Block_copy(&aBlock);
    v59 = v41;

    v43 = v56;
    (v54)(v19, v57, v56);
    v44 = swift_allocObject();
    (v55)(v44 + ((v37 + 16) & ~v37), v19, v43);
    v64 = sub_1D249AAB8;
    v65 = v44;
    aBlock = MEMORY[0x1E69E9820];
    v61 = 1107296256;
    v62 = sub_1D24936B8;
    v63 = &block_descriptor_24;
    v45 = _Block_copy(&aBlock);

    v46 = v58;
    [v53 performChanges:v58 completionHandler:v45];
    _Block_release(v45);
    _Block_release(v46);
    sub_1D22D6D60(v50, v51);

    return (v52)(v57, v43);
  }

  else
  {
    sub_1D28724C8();
    sub_1D2870F68();
    v25 = sub_1D2873CA8();
    v26 = sub_1D28789F8();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      aBlock = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_1D23D7C84(a4, a5, &aBlock);
      _os_log_impl(&dword_1D226E000, v25, v26, "Failed to fetch asset for faceID: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x1D38A3520](v28, -1, -1);
      MEMORY[0x1D38A3520](v27, -1, -1);
    }

    return (*(v59 + 1))(v13, v9);
  }
}

uint64_t sub_1D249A9A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D249AA00()
{
  result = qword_1EC6DC1D0;
  if (!qword_1EC6DC1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC1D0);
  }

  return result;
}

void sub_1D249AA54()
{
  sub_1D28716B8();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  sub_1D2498330(v1, v2);
}

id sub_1D249AAB8()
{
  sub_1D28716B8();

  return sub_1D24983C8();
}

unint64_t sub_1D249AB38()
{
  result = qword_1EC6DC1D8;
  if (!qword_1EC6DC1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC1D8);
  }

  return result;
}

uint64_t sub_1D249AB8C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1D22BC8FC;

  return sub_1D24938CC(a1, a2, v2);
}

uint64_t sub_1D249AC44()
{
  v1 = *(type metadata accessor for GeneratedPreviewOptions(0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC1E0, &qword_1D288BC78);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];

  return sub_1D2496B94(v3, v4, v5, (v0 + v2));
}

uint64_t sub_1D249AD24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC0F0, &qword_1D288B3A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D249AD94()
{
  result = qword_1EC6DC1F0;
  if (!qword_1EC6DC1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC1F0);
  }

  return result;
}

uint64_t sub_1D249ADE8(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA630, &qword_1D2886B80);
    sub_1D249AE74(a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D249AE74(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA2D0, &unk_1D2882750);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D249AEE0()
{
  result = qword_1EC6DC220;
  if (!qword_1EC6DC220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC220);
  }

  return result;
}

uint64_t sub_1D249AF34(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t block_copy_helper_44(uint64_t a1, uint64_t a2)
{
  return sub_1D23C3EE4(a2 + 32, a1 + 32);
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1D2870F78();
}

unint64_t sub_1D249AFF0()
{
  result = qword_1EC6DC240;
  if (!qword_1EC6DC240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC240);
  }

  return result;
}

unint64_t sub_1D249B048()
{
  result = qword_1EC6DC248;
  if (!qword_1EC6DC248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC248);
  }

  return result;
}

unint64_t sub_1D249B0A0()
{
  result = qword_1EC6DC250;
  if (!qword_1EC6DC250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC250);
  }

  return result;
}

unint64_t sub_1D249B0F8()
{
  result = qword_1EC6DC258;
  if (!qword_1EC6DC258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC258);
  }

  return result;
}

unint64_t sub_1D249B150()
{
  result = qword_1EC6DC260;
  if (!qword_1EC6DC260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC260);
  }

  return result;
}

unint64_t sub_1D249B1A8()
{
  result = qword_1EC6DC268;
  if (!qword_1EC6DC268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC268);
  }

  return result;
}

unint64_t sub_1D249B200()
{
  result = qword_1EC6DC270;
  if (!qword_1EC6DC270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC270);
  }

  return result;
}

unint64_t sub_1D249B254()
{
  result = qword_1EC6DC280;
  if (!qword_1EC6DC280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC280);
  }

  return result;
}

unint64_t sub_1D249B2A8()
{
  result = qword_1EC6DC290;
  if (!qword_1EC6DC290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC288, &qword_1D288BFE8);
    sub_1D2499220(&qword_1EC6DC298, type metadata accessor for GeneratedPreviewOptions, &unk_1D288BB10);
    sub_1D2499220(&qword_1EC6DC2A0, type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive, &unk_1D288BBC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC290);
  }

  return result;
}

void *sub_1D249B394(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC2A8, &qword_1D288BFF0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D249B254();
  sub_1D2879868();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC288, &qword_1D288BFE8);
    sub_1D249B518();
    sub_1D2879528();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v7;
}

unint64_t sub_1D249B518()
{
  result = qword_1EC6DC2B0;
  if (!qword_1EC6DC2B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC288, &qword_1D288BFE8);
    sub_1D2499220(&qword_1EC6DC2B8, type metadata accessor for GeneratedPreviewOptions, &unk_1D288BB38);
    sub_1D2499220(&qword_1EC6DC2C0, type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive, &unk_1D288BBF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC2B0);
  }

  return result;
}

uint64_t sub_1D249B604(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444965636166 && a2 == 0xE600000000000000;
  if (v4 || (sub_1D2879618() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x53746E6572727563 && a2 == 0xEC000000656C7974 || (sub_1D2879618() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001D28B8670 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D2879618();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_1D249B738()
{
  result = qword_1EC6DC2C8;
  if (!qword_1EC6DC2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC2C8);
  }

  return result;
}

unint64_t sub_1D249B790()
{
  result = qword_1EC6DC2D0;
  if (!qword_1EC6DC2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC2D0);
  }

  return result;
}

unint64_t sub_1D249B7E8()
{
  result = qword_1EC6DC2D8;
  if (!qword_1EC6DC2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC2D8);
  }

  return result;
}

uint64_t sub_1D249B85C()
{
  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel_defaultAspectRatio;
  v2 = sub_1D2871DD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1D22729C0(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__delegate);
  sub_1D233EE24(*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__vfxLoadingState), *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__vfxLoadingState + 8));

  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel___observationRegistrar;
  v4 = sub_1D2871A28();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FacePickerEffectViewModel(uint64_t a1)
{
  result = qword_1EC6DC2E0;
  if (!qword_1EC6DC2E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D249B9F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1D249BA40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D249BA90()
{
  sub_1D28797D8();
  sub_1D2877F38();
  return sub_1D2879828();
}

uint64_t sub_1D249BAE4()
{
  sub_1D28797D8();
  sub_1D2877F38();
  return sub_1D2879828();
}

uint64_t sub_1D249BB2C(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D2879618();
  }
}

double sub_1D249BB5C@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  sub_1D2870F68();
  return result;
}

unint64_t sub_1D249BB6C()
{
  result = qword_1ED8A5A18;
  if (!qword_1ED8A5A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A5A18);
  }

  return result;
}

double sub_1D249BBC0()
{
  v0 = sub_1D28714D8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1D28714E8();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1D2877FE8();
  sub_1D28718C8();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  sub_1D28714F8();
  qword_1ED8B0260 = sub_1D28780F8();
  *algn_1ED8B0268 = v7;
  qword_1ED8B0270 = qword_1ED8B0260;
  unk_1ED8B0278 = v7;
  sub_1D2870F68();
  return result;
}

uint64_t (*sub_1D249BDF4(uint64_t a1, unint64_t a2, uint64_t a3, char a4))(__int128 *)
{
  v8 = sub_1D2870F68();
  v9 = sub_1D2679220(v8);

  result = sub_1D27C77BC(a2, a3, v9);
  v11 = result;
  if (a4)
  {

    if (qword_1ED8A14E8 != -1)
    {
      goto LABEL_35;
    }

    goto LABEL_3;
  }

  v16 = *(result + 2);
  if (v16)
  {
    if (a1 <= v16)
    {
      if (a1 < 0)
      {
        __break(1u);
        return result;
      }

      if (a1 != v16)
      {
        sub_1D268E5BC(result, result + 32, 0, (2 * a1) | 1);
        v20 = v19;

        v11 = v20;
      }
    }

    else
    {
      sub_1D249C238(a2, a3, a1 - v16, 0);
      *&v54 = v11;
      sub_1D274DE40(v17);
    }
  }

  else
  {

    sub_1D249C238(a2, a3, a1, 0);
    v11 = v18;
  }

  v21 = *(v11 + 2);
  if (!v21)
  {
    a3 = MEMORY[0x1E69E7CC0];
LABEL_33:

    return a3;
  }

  a1 = 0;
  v22 = v11 + 32;
  a3 = MEMORY[0x1E69E7CC0];
  while (a1 < *(v11 + 2))
  {
    sub_1D22D7044(v22, &v54);
    v23 = v55;
    v24 = v56;
    __swift_project_boxed_opaque_existential_1(&v54, v55);
    v25 = (*(v24 + 48))(v23, v24);
    if (qword_1ED8A14E8 != -1)
    {
      v47 = v25;
      v48 = v26;
      v49 = v28;
      v50 = v27;
      swift_once();
      v26 = v48;
      v25 = v47;
      v27 = v50;
      v28 = v49;
    }

    v29 = *(qword_1ED8B0138 + 24);
    a2 = *(qword_1ED8B0138 + 32);
    if (!v26)
    {
      v35 = v25;
      v36 = v28;
      v37 = v27;
      swift_bridgeObjectRetain_n();
      sub_1D22D70A8(v35, 0, v37, v36);
      sub_1D22D70A8(v29, a2, v29, a2);
LABEL_27:
      sub_1D22D79FC(&v54, v51);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v57 = a3;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D23D8528(0, *(a3 + 16) + 1, 1);
        a3 = v57;
      }

      a2 = *(a3 + 16);
      v39 = *(a3 + 24);
      if (a2 >= v39 >> 1)
      {
        sub_1D23D8528((v39 > 1), a2 + 1, 1);
      }

      v40 = v52;
      v41 = v53;
      v42 = __swift_mutable_project_boxed_opaque_existential_1(v51, v52);
      v43 = MEMORY[0x1EEE9AC00](v42);
      v45 = v51 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v46 + 16))(v45, v43);
      sub_1D2564390(a2, v45, &v57, v40, v41);
      __swift_destroy_boxed_opaque_existential_0(v51);
      a3 = v57;
      goto LABEL_15;
    }

    if (v25 == v29 && v26 == a2)
    {
      sub_1D22D70A8(v25, v26, v27, v28);
    }

    else
    {
      v31 = v25;
      v32 = v26;
      v33 = v27;
      v34 = v28;
      a2 = sub_1D2879618();
      sub_1D22D70A8(v31, v32, v33, v34);
      if ((a2 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(&v54);
LABEL_15:
    ++a1;
    v22 += 40;
    if (v21 == a1)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_35:
  swift_once();
LABEL_3:
  v12 = *(qword_1ED8B0138 + 24);
  v13 = *(qword_1ED8B0138 + 32);
  sub_1D2870F68();
  sub_1D249C600(v12, v13, a1, a2, a3);
  v15 = v14;

  return v15;
}

void sub_1D249C238(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, int a4)
{
  if (swift_weakLoadStrong())
  {
    v27 = a4;
    v25 = a3;
    v7 = sub_1D23C7E2C();

    swift_getKeyPath();
    *&v32[0] = v7;
    sub_1D249C704();
    sub_1D28719E8();

    v26 = v7;
    v8 = *(v7 + 16);
    v9 = *(v8 + 16);
    sub_1D2870F68();
    if (v9)
    {
      v10 = 0;
      v11 = v8 + 32;
      v12 = MEMORY[0x1E69E7CC0];
      v28 = a1;
      while (v10 < *(v8 + 16))
      {
        sub_1D22D7044(v11, v32);
        if (a1(v32))
        {
          sub_1D22D79FC(v32, v29);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v33 = v12;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1D23D8528(0, *(v12 + 16) + 1, 1);
            v12 = v33;
          }

          v15 = *(v12 + 16);
          v14 = *(v12 + 24);
          if (v15 >= v14 >> 1)
          {
            sub_1D23D8528((v14 > 1), v15 + 1, 1);
          }

          v16 = v30;
          v17 = v31;
          v18 = __swift_mutable_project_boxed_opaque_existential_1(v29, v30);
          v19 = MEMORY[0x1EEE9AC00](v18);
          v21 = &v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v22 + 16))(v21, v19);
          sub_1D2564390(v15, v21, &v33, v16, v17);
          __swift_destroy_boxed_opaque_existential_0(v29);
          v12 = v33;
          a1 = v28;
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_0(v32);
        }

        ++v10;
        v11 += 40;
        if (v9 == v10)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_22;
    }

    v12 = MEMORY[0x1E69E7CC0];
LABEL_15:

    *&v32[0] = v12;
    sub_1D286F76C();
    if ((v27 & 1) == 0)
    {
      v23 = *(*&v32[0] + 16);
      if (v23 >= v25)
      {
        if (v25 < 0)
        {
LABEL_22:
          __break(1u);
          return;
        }

        if (v23 != v25)
        {
          sub_1D268E5BC(*&v32[0], *&v32[0] + 32, 0, (2 * v25) | 1);
        }
      }
    }
  }
}

uint64_t sub_1D249C524()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

void sub_1D249C590(uint64_t *a2@<X8>)
{
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = MEMORY[0x1E69E7CC0];
  *(v3 + 24) = MEMORY[0x1E69E7CC0];
  *(v3 + 32) = v4;
  swift_weakAssign();

  *a2 = v3;
}

void sub_1D249C600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  if (swift_weakLoadStrong())
  {
    sub_1D23C7E2C();

    sub_1D25310B0(a1, a2, a4, a5, a3, 0);
    v11 = *(v10 + 16);
    v12 = a3 - v11;
    if (__OFSUB__(a3, v11))
    {
      __break(1u);
    }

    else
    {
      if (v12 >= 1)
      {
        sub_1D249C238(a4, a5, v12, 0);
        sub_1D274DE40(v13);
      }
    }
  }
}

unint64_t sub_1D249C704()
{
  result = qword_1ED8A54D8;
  if (!qword_1ED8A54D8)
  {
    type metadata accessor for ImageConditioningRepresentationsSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A54D8);
  }

  return result;
}

uint64_t type metadata accessor for FacePickerGridView(uint64_t a1)
{
  result = qword_1EC6DC2F8;
  if (!qword_1EC6DC2F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D249C7D0(uint64_t a1)
{
  sub_1D249C8D4(319, &qword_1EC6DC308, type metadata accessor for FacePickerGridViewModel, MEMORY[0x1E6981AA0]);
  if (v1 <= 0x3F)
  {
    sub_1D249C8D4(319, &qword_1ED89E028, type metadata accessor for ObservableDebugSettings, MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      sub_1D22EAE8C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D249C8D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D249C95C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 72))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D249C97C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
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

  *(result + 72) = v3;
  return result;
}

uint64_t sub_1D249C9E4(uint64_t a1)
{
  v26 = a1;
  v1 = type metadata accessor for PhotosPersonAsset(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v24 = (&v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC478, &qword_1D288C530);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0, &unk_1D2881BE0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v25 = (&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC2F0, &unk_1D288C2D0);
  sub_1D2877618();
  v16 = v27;
  swift_getKeyPath();
  v27 = v16;
  sub_1D24A0A4C(&qword_1EC6DC0F8, type metadata accessor for FacePickerGridViewModel, &unk_1D288C5D8);
  sub_1D28719E8();

  v17 = OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__selectedAsset;
  swift_beginAccess();
  sub_1D22BD1D0(v16 + v17, v15, &unk_1EC6DDDC0, &unk_1D2881BE0);

  sub_1D24A09E4(v26, v12, type metadata accessor for PhotosPersonAsset);
  (*(v2 + 56))(v12, 0, 1, v1);
  v18 = *(v5 + 56);
  sub_1D22BD1D0(v15, v7, &unk_1EC6DDDC0, &unk_1D2881BE0);
  sub_1D22BD1D0(v12, &v7[v18], &unk_1EC6DDDC0, &unk_1D2881BE0);
  v19 = *(v2 + 48);
  if (v19(v7, 1, v1) != 1)
  {
    v21 = v25;
    sub_1D22BD1D0(v7, v25, &unk_1EC6DDDC0, &unk_1D2881BE0);
    if (v19(&v7[v18], 1, v1) != 1)
    {
      v22 = v24;
      sub_1D24A0740(&v7[v18], v24, type metadata accessor for PhotosPersonAsset);
      v20 = _s23ImagePlaygroundInternal17PhotosPersonAssetV2eeoiySbAC_ACtFZ_0(v21, v22);
      sub_1D24A0A94(v22, type metadata accessor for PhotosPersonAsset);
      sub_1D22BD238(v12, &unk_1EC6DDDC0, &unk_1D2881BE0);
      sub_1D22BD238(v15, &unk_1EC6DDDC0, &unk_1D2881BE0);
      sub_1D24A0A94(v21, type metadata accessor for PhotosPersonAsset);
      sub_1D22BD238(v7, &unk_1EC6DDDC0, &unk_1D2881BE0);
      return v20 & 1;
    }

    sub_1D22BD238(v12, &unk_1EC6DDDC0, &unk_1D2881BE0);
    sub_1D22BD238(v15, &unk_1EC6DDDC0, &unk_1D2881BE0);
    sub_1D24A0A94(v21, type metadata accessor for PhotosPersonAsset);
    goto LABEL_6;
  }

  sub_1D22BD238(v12, &unk_1EC6DDDC0, &unk_1D2881BE0);
  sub_1D22BD238(v15, &unk_1EC6DDDC0, &unk_1D2881BE0);
  if (v19(&v7[v18], 1, v1) != 1)
  {
LABEL_6:
    sub_1D22BD238(v7, &qword_1EC6DC478, &qword_1D288C530);
    v20 = 0;
    return v20 & 1;
  }

  sub_1D22BD238(v7, &unk_1EC6DDDC0, &unk_1D2881BE0);
  v20 = 1;
  return v20 & 1;
}

double sub_1D249CEB0@<D0>(uint64_t a1@<X8>)
{
  v70 = a1;
  v2 = sub_1D2875E18();
  v76 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v60 = &v56[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0DB0, &qword_1D288C390);
  MEMORY[0x1EEE9AC00](v75);
  v69 = &v56[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v71 = &v56[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99B8, &unk_1D287E890);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v59 = &v56[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v73 = &v56[-v10];
  MEMORY[0x1EEE9AC00](v11);
  v74 = &v56[-v12];
  MEMORY[0x1EEE9AC00](v13);
  v72 = &v56[-v14];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v56[-v16];
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v56[-v19];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC318, &qword_1D288C398);
  v67 = *(v21 - 8);
  v68 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v56[-v22];
  v78 = v1;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC320, &qword_1D288C3A0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC328, &qword_1D288C3A8);
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC330, &qword_1D288C3B0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC338, &qword_1D288C3B8);
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC340, &qword_1D288C3C0);
  v28 = sub_1D24A0260();
  *&v79 = v27;
  *(&v79 + 1) = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v79 = v26;
  *(&v79 + 1) = OpaqueTypeConformance2;
  v30 = swift_getOpaqueTypeConformance2();
  v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC370, &qword_1D288C3D8);
  v32 = sub_1D22BB9D8(&qword_1EC6DC378, &qword_1EC6DC370, &qword_1D288C3D8, MEMORY[0x1E697BEF0]);
  *&v79 = v31;
  *(&v79 + 1) = v32;
  v33 = swift_getOpaqueTypeConformance2();
  *&v79 = v24;
  *(&v79 + 1) = v25;
  *&v80 = v30;
  *(&v80 + 1) = v33;
  swift_getOpaqueTypeConformance2();
  v66 = v23;
  v34 = v71;
  sub_1D2874F78();
  v61 = type metadata accessor for FacePickerGridView(0);
  v65 = *(v61 + 24);
  sub_1D24CC0C4(v20);
  v35 = v76;
  v36 = *(v76 + 104);
  v64 = *MEMORY[0x1E697FF40];
  v63 = v36;
  v36(v17);
  v62 = *(v35 + 56);
  v62(v17, 0, 1, v2);
  v37 = *(v75 + 48);
  sub_1D22BD1D0(v20, v34, &qword_1EC6D99B8, &unk_1D287E890);
  sub_1D22BD1D0(v17, &v34[v37], &qword_1EC6D99B8, &unk_1D287E890);
  v38 = *(v35 + 48);
  if (v38(v34, 1, v2) == 1)
  {
    sub_1D22BD238(v17, &qword_1EC6D99B8, &unk_1D287E890);
    sub_1D22BD238(v20, &qword_1EC6D99B8, &unk_1D287E890);
    if (v38(&v34[v37], 1, v2) == 1)
    {
      sub_1D22BD238(v34, &qword_1EC6D99B8, &unk_1D287E890);
      v39 = v73;
      v40 = v74;
LABEL_8:
      LODWORD(v72) = 0;
      v71 = *(v77 + *(v61 + 28) + 56);
      goto LABEL_10;
    }

LABEL_6:
    sub_1D22BD238(v34, &qword_1EC6E0DB0, &qword_1D288C390);
    v71 = 0;
    LODWORD(v72) = 1;
    v39 = v73;
    v40 = v74;
    goto LABEL_10;
  }

  v58 = v20;
  sub_1D22BD1D0(v34, v72, &qword_1EC6D99B8, &unk_1D287E890);
  if (v38(&v34[v37], 1, v2) == 1)
  {
    sub_1D22BD238(v17, &qword_1EC6D99B8, &unk_1D287E890);
    sub_1D22BD238(v58, &qword_1EC6D99B8, &unk_1D287E890);
    (*(v76 + 8))(v72, v2);
    goto LABEL_6;
  }

  v41 = v76;
  v42 = &v34[v37];
  v43 = v60;
  (*(v76 + 32))(v60, v42, v2);
  sub_1D24A0A4C(&qword_1ED89D3D0, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
  v57 = sub_1D2877F98();
  v44 = *(v41 + 8);
  v44(v43, v2);
  sub_1D22BD238(v17, &qword_1EC6D99B8, &unk_1D287E890);
  sub_1D22BD238(v58, &qword_1EC6D99B8, &unk_1D287E890);
  v44(v72, v2);
  sub_1D22BD238(v71, &qword_1EC6D99B8, &unk_1D287E890);
  v39 = v73;
  v40 = v74;
  if (v57)
  {
    goto LABEL_8;
  }

  v71 = 0;
  LODWORD(v72) = 1;
LABEL_10:
  sub_1D24CC0C4(v40);
  v63(v39, v64, v2);
  v62(v39, 0, 1, v2);
  v45 = *(v75 + 48);
  v46 = v69;
  sub_1D22BD1D0(v40, v69, &qword_1EC6D99B8, &unk_1D287E890);
  sub_1D22BD1D0(v39, &v46[v45], &qword_1EC6D99B8, &unk_1D287E890);
  if (v38(v46, 1, v2) != 1)
  {
    v47 = v59;
    sub_1D22BD1D0(v46, v59, &qword_1EC6D99B8, &unk_1D287E890);
    if (v38(&v46[v45], 1, v2) != 1)
    {
      v48 = v76;
      v49 = &v46[v45];
      v50 = v60;
      (*(v76 + 32))(v60, v49, v2);
      sub_1D24A0A4C(&qword_1ED89D3D0, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
      sub_1D2877F98();
      v51 = *(v48 + 8);
      v51(v50, v2);
      sub_1D22BD238(v73, &qword_1EC6D99B8, &unk_1D287E890);
      sub_1D22BD238(v74, &qword_1EC6D99B8, &unk_1D287E890);
      v51(v47, v2);
      sub_1D22BD238(v46, &qword_1EC6D99B8, &unk_1D287E890);
      goto LABEL_17;
    }

    sub_1D22BD238(v73, &qword_1EC6D99B8, &unk_1D287E890);
    sub_1D22BD238(v74, &qword_1EC6D99B8, &unk_1D287E890);
    (*(v76 + 8))(v47, v2);
    goto LABEL_15;
  }

  sub_1D22BD238(v39, &qword_1EC6D99B8, &unk_1D287E890);
  sub_1D22BD238(v40, &qword_1EC6D99B8, &unk_1D287E890);
  if (v38(&v46[v45], 1, v2) != 1)
  {
LABEL_15:
    sub_1D22BD238(v46, &qword_1EC6E0DB0, &qword_1D288C390);
    goto LABEL_17;
  }

  sub_1D22BD238(v46, &qword_1EC6D99B8, &unk_1D287E890);
LABEL_17:
  sub_1D2877848();
  sub_1D28748C8();
  v52 = v70;
  (*(v67 + 32))(v70, v66, v68);
  v53 = (v52 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC380, &qword_1D288C3E0) + 36));
  v54 = v80;
  *v53 = v79;
  v53[1] = v54;
  result = v81[0];
  v53[2] = *v81;
  return result;
}

uint64_t sub_1D249D9C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v37 = sub_1D2875F18();
  v35 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC340, &qword_1D288C3C0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC338, &qword_1D288C3B8);
  v34 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC328, &qword_1D288C3A8);
  v38 = *(v11 - 8);
  v39 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v36 = &v34 - v12;
  sub_1D2876318();
  v42 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC388, &qword_1D288C3E8);
  sub_1D22BB9D8(&qword_1EC6DC390, &qword_1EC6DC388, &qword_1D288C3E8, MEMORY[0x1E697D7B8]);
  sub_1D28743A8();
  type metadata accessor for FacePickerGridView(0);
  v40 = a1;
  sub_1D2876338();
  sub_1D2874298();
  v45 = v13;
  v46 = v14;
  v47 = v15;
  v48 = v16;
  v49 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC358, &qword_1D288C3C8);
  sub_1D2875EF8();
  v17 = sub_1D2874FB8();
  v18 = sub_1D2876358();
  v19 = &v7[*(v5 + 36)];
  *v19 = v17;
  v19[8] = v18;
  sub_1D2875798();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v20 = qword_1ED8B0058;
  v21 = sub_1D2876668();
  v23 = v22;
  v25 = v24;
  v26 = sub_1D24A0260();
  sub_1D28769F8();
  sub_1D22ED6E0(v21, v23, v25 & 1);

  sub_1D22BD238(v7, &qword_1EC6DC340, &qword_1D288C3C0);
  sub_1D2875F08();
  v43 = v5;
  v44 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = v36;
  sub_1D2876CF8();
  (*(v35 + 8))(v4, v37);
  v29 = (*(v34 + 8))(v10, v8);
  MEMORY[0x1EEE9AC00](v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC330, &qword_1D288C3B0);
  v43 = v8;
  v44 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC370, &qword_1D288C3D8);
  v31 = sub_1D22BB9D8(&qword_1EC6DC378, &qword_1EC6DC370, &qword_1D288C3D8, MEMORY[0x1E697BEF0]);
  v43 = v30;
  v44 = v31;
  swift_getOpaqueTypeConformance2();
  v32 = v39;
  sub_1D2876F08();
  return (*(v38 + 8))(v28, v32);
}

uint64_t sub_1D249DFA4(uint64_t a1)
{
  v2 = sub_1D2875C68();
  MEMORY[0x1EEE9AC00](v2);
  v3 = sub_1D28776E8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC398, &qword_1D288C3F0);
  sub_1D28776F8();
  *(swift_allocObject() + 16) = xmmword_1D287F500;
  *v6 = *(a1 + *(type metadata accessor for FacePickerGridView(0) + 28) + 32);
  (*(v4 + 104))(v6, *MEMORY[0x1E697D730], v3);
  sub_1D2877708();
  v9 = a1;
  sub_1D2875918();
  v10 = 0;
  sub_1D24A0A4C(&qword_1ED89D4C0, MEMORY[0x1E697FCB0], MEMORY[0x1E697FCC8]);
  sub_1D2879968();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC3A0, &qword_1D288C3F8);
  sub_1D24A0454();
  return sub_1D28779B8();
}

uint64_t sub_1D249E254(uint64_t a1)
{
  v2 = type metadata accessor for FacePickerGridView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC2F0, &unk_1D288C2D0);
  sub_1D2877618();
  swift_getKeyPath();
  sub_1D24A0A4C(&qword_1EC6DC0F8, type metadata accessor for FacePickerGridViewModel, &unk_1D288C5D8);
  sub_1D28719E8();

  v5 = OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__allLookAssets;
  swift_beginAccess();
  v6 = *(v10[1] + v5);
  sub_1D2870F68();

  v10[0] = v6;
  sub_1D24A09E4(a1, v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FacePickerGridView);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_1D24A0740(v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for FacePickerGridView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC3C0, &qword_1D288C430);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC3B8, &qword_1D288C400);
  sub_1D22BB9D8(&qword_1EC6DC3C8, &qword_1EC6DC3C0, &qword_1D288C430, MEMORY[0x1E69E6338]);
  sub_1D22BB9D8(&qword_1EC6DC3B0, &qword_1EC6DC3B8, &qword_1D288C400, MEMORY[0x1E6981870]);
  sub_1D24A0A4C(&qword_1EC6D8788, type metadata accessor for PhotosPersonAsset, &protocol conformance descriptor for PhotosPersonAsset);
  return sub_1D2877588();
}

uint64_t sub_1D249E540@<X0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a1;
  v5 = type metadata accessor for PhotosPersonAsset(0);
  v37 = *(v5 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FacePickerGridView(0);
  v9 = v8 - 8;
  v35 = *(v8 - 8);
  v10 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC3D0, &qword_1D288C438);
  v12 = *(v11 - 8);
  v39 = v11;
  v40 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v35 - v13;
  v15 = sub_1D2875188();
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a3 = sub_1D2875918();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC3D8, &qword_1D288C440) + 44);
  v19 = *(a2 + *(v9 + 36) + 16);
  v20 = *(v16 + 28);
  v21 = *MEMORY[0x1E697F468];
  v22 = sub_1D2875868();
  (*(*(v22 - 8) + 104))(&v18[v20], v21, v22);
  *v18 = v19;
  *(v18 + 1) = v19;
  v23 = v36;
  sub_1D249E9D8(v36, v18, v14);
  sub_1D24A09E4(a2, &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FacePickerGridView);
  sub_1D24A09E4(v23, v7, type metadata accessor for PhotosPersonAsset);
  v24 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v25 = (v10 + *(v37 + 80) + v24) & ~*(v37 + 80);
  v26 = swift_allocObject();
  sub_1D24A0740(&v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v24, type metadata accessor for FacePickerGridView);
  sub_1D24A0740(v7, v26 + v25, type metadata accessor for PhotosPersonAsset);
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC3E0, &qword_1D288C448);
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC3E8, &qword_1D288C450);
  v29 = sub_1D2875718();
  v30 = sub_1D24A0874();
  v31 = sub_1D24A0A4C(&qword_1ED89D6B0, MEMORY[0x1E697C4E8], MEMORY[0x1E697C4E0]);
  v41 = v28;
  v42 = v29;
  v43 = v30;
  v44 = v31;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = v27;
  v42 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v33 = v39;
  sub_1D2876908();

  (*(v40 + 8))(v14, v33);
  return sub_1D24A0A94(v18, MEMORY[0x1E697EAF0]);
}

uint64_t sub_1D249E9D8@<X0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a1;
  v34 = a2;
  v42 = a3;
  v3 = sub_1D28756B8();
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v39 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D2875718();
  v38 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D28771B8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC3E8, &qword_1D288C450);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC3E0, &qword_1D288C448);
  v16 = *(v15 - 8);
  v35 = v15;
  v36 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v33 - v17;
  type metadata accessor for PhotosPersonAsset(0);
  type metadata accessor for PhotosPersonImage(0);
  sub_1D262D4E8();
  sub_1D2877188();
  (*(v9 + 104))(v11, *MEMORY[0x1E6981630], v8);
  v19 = sub_1D2877228();

  (*(v9 + 8))(v11, v8);
  v20 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC400, &qword_1D288C458) + 36)];
  sub_1D24A09E4(v34, v20, MEMORY[0x1E697EAF0]);
  *(v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC410, &qword_1D288CC00) + 36)) = 256;
  *v14 = v19;
  *(v14 + 1) = 0;
  *(v14 + 8) = 257;
  v21 = sub_1D2877818();
  v23 = v22;
  v24 = &v14[*(v12 + 36)];
  sub_1D249F3E0(v33, v37, v24);
  v25 = (v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC420, &unk_1D288C460) + 36));
  *v25 = v21;
  v25[1] = v23;
  sub_1D2875708();
  v26 = sub_1D24A0874();
  v27 = sub_1D24A0A4C(&qword_1ED89D6B0, MEMORY[0x1E697C4E8], MEMORY[0x1E697C4E0]);
  sub_1D2876768();
  (*(v38 + 8))(v7, v5);
  sub_1D22BD238(v14, &qword_1EC6DC3E8, &qword_1D288C450);
  v28 = v39;
  v29 = v40;
  v30 = v41;
  (*(v40 + 104))(v39, *MEMORY[0x1E697F3A0], v41);
  v43 = v12;
  v44 = v5;
  v45 = v26;
  v46 = v27;
  swift_getOpaqueTypeConformance2();
  v31 = v35;
  sub_1D28768A8();
  (*(v29 + 8))(v28, v30);
  return (*(v36 + 8))(v18, v31);
}

uint64_t sub_1D249EEF4(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0, &unk_1D2881BE0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC2F0, &unk_1D288C2D0);
  sub_1D2877618();
  sub_1D24A09E4(a2, v5, type metadata accessor for PhotosPersonAsset);
  v6 = type metadata accessor for PhotosPersonAsset(0);
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  sub_1D24A0F18(v5);

  return sub_1D22BD238(v5, &unk_1EC6DDDC0, &unk_1D2881BE0);
}

uint64_t sub_1D249F024(uint64_t a1)
{
  v2 = sub_1D2875C08();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC370, &qword_1D288C3D8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  sub_1D2875BC8();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D30, &qword_1D287FDB0);
  sub_1D22BB9D8(&qword_1EC6D7700, &qword_1EC6D9D30, &qword_1D287FDB0, MEMORY[0x1E697D680]);
  sub_1D28745C8();
  v7 = sub_1D22BB9D8(&qword_1EC6DC378, &qword_1EC6DC370, &qword_1D288C3D8, MEMORY[0x1E697BEF0]);
  MEMORY[0x1D389E720](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1D249F210(uint64_t a1)
{
  v2 = type metadata accessor for FacePickerGridView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = sub_1D2874288();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2874268();
  sub_1D24A09E4(a1, &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FacePickerGridView);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  sub_1D24A0740(&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for FacePickerGridView);
  return MEMORY[0x1D389FDF0](v7, sub_1D24A03EC, v9);
}

double sub_1D249F38C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC2F0, &unk_1D288C2D0);
  sub_1D2877618();
  sub_1D24A12A4();

  return result;
}

uint64_t sub_1D249F3E0@<X0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v127 = a2;
  v125 = a3;
  v123 = sub_1D2875678();
  v118 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v113 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_1D2874FC8();
  v112 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v111 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC428, &qword_1D288C470);
  v119 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v114 = &v93 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC430, &qword_1D288C478);
  v120 = *(v7 - 8);
  v121 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v115 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v116 = &v93 - v10;
  v107 = sub_1D2873998();
  v104 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v12 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_1D2875718();
  v97 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v14 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99E8, &unk_1D288C480);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v93 - v17;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE880, &unk_1D28955E0);
  v96 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v95 = &v93 - v19;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC438, &qword_1D288C490);
  MEMORY[0x1EEE9AC00](v94);
  v21 = &v93 - v20;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC440, &qword_1D288C498);
  MEMORY[0x1EEE9AC00](v99);
  v102 = &v93 - v22;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC448, &qword_1D288C4A0);
  MEMORY[0x1EEE9AC00](v101);
  v126 = &v93 - v23;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC450, &qword_1D288C4A8);
  MEMORY[0x1EEE9AC00](v103);
  v106 = &v93 - v24;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC458, &qword_1D288C4B0);
  MEMORY[0x1EEE9AC00](v105);
  v110 = &v93 - v25;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC460, &qword_1D288C4B8);
  MEMORY[0x1EEE9AC00](v108);
  v109 = &v93 - v26;
  v27 = *(a1 + 1);
  v124 = a1;
  if (v27)
  {
    v28 = *a1;
    v29 = v27;
  }

  else
  {
    v28 = 0.0;
    v29 = 0xE000000000000000;
  }

  v140 = v28;
  v141 = *&v29;
  sub_1D22BD06C();
  sub_1D2870F68();
  sub_1D2877278();
  sub_1D2875708();
  sub_1D22BB9D8(&qword_1ED89D200, &qword_1EC6D99E8, &unk_1D288C480, MEMORY[0x1E697D658]);
  sub_1D24A0A4C(&qword_1ED89D6B0, MEMORY[0x1E697C4E8], MEMORY[0x1E697C4E0]);
  v30 = v95;
  v31 = v100;
  sub_1D2876768();
  (*(v97 + 8))(v14, v31);
  (*(v16 + 8))(v18, v15);
  v32 = &v21[*(v94 + 36)];
  v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9FF0, &qword_1D288C4C0) + 28);
  sub_1D2875988();
  v34 = sub_1D2875998();
  (*(*(v34 - 8) + 56))(v32 + v33, 0, 1, v34);
  *v32 = swift_getKeyPath();
  (*(v96 + 32))(v21, v30, v98);
  if (qword_1EC6D8B60 != -1)
  {
    swift_once();
  }

  v35 = v107;
  v36 = __swift_project_value_buffer(v107, qword_1EC6E3BC0);
  v37 = *(v104 + 16);
  v37(v12, v36, v35);
  v38 = sub_1D2877108();
  v39 = sub_1D2877018();
  v40 = v21;
  v41 = v102;
  sub_1D22EC9BC(v40, v102, &qword_1EC6DC438, &qword_1D288C490);
  v42 = (v41 + *(v99 + 36));
  *v42 = v38;
  v42[1] = v39;
  v104 = sub_1D2877848();
  v44 = v43;
  v37(v12, v36, v35);
  v45 = sub_1D2877108();
  v100 = v45;
  v107 = v127 + *(type metadata accessor for FacePickerGridView(0) + 28);
  sub_1D28745B8();
  v46 = v155;
  LODWORD(v35) = v156;
  v47 = v157;
  v48 = v158;
  v49 = v159;
  v50 = v160;
  v51 = sub_1D2877848();
  v53 = v52;
  *&v134 = v46 * 0.5;
  *(&v134 + 1) = v46;
  *&v135 = __PAIR64__(v47, v35);
  *(&v135 + 1) = v48;
  *&v136 = v49;
  *(&v136 + 1) = v50;
  *&v137 = v45;
  WORD4(v137) = 256;
  *(&v137 + 10) = v132;
  HIWORD(v137) = v133;
  *&v138 = v51;
  *(&v138 + 1) = v52;
  v54 = v104;
  *&v139 = v104;
  *(&v139 + 1) = v44;
  v55 = v41;
  v56 = v126;
  sub_1D22EC9BC(v55, v126, &qword_1EC6DC440, &qword_1D288C498);
  v57 = (v56 + *(v101 + 36));
  v58 = v137;
  v57[2] = v136;
  v57[3] = v58;
  v59 = v139;
  v57[4] = v138;
  v57[5] = v59;
  v60 = v135;
  *v57 = v134;
  v57[1] = v60;
  v140 = v46 * 0.5;
  v141 = v46;
  v142 = v35;
  v143 = v47;
  v144 = v48;
  v145 = v49;
  v146 = v50;
  v147 = v100;
  v148 = 256;
  v150 = v133;
  v149 = v132;
  v151 = v51;
  v152 = v53;
  v153 = v54;
  v154 = v44;
  sub_1D2282A98(&v134, &v128);
  sub_1D22BD238(&v140, &qword_1EC6DC468, &qword_1D28916D0);
  v61 = v106;
  v62 = &v106[*(v103 + 36)];
  v63 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9FE8, &unk_1D2880690) + 28);
  v64 = *MEMORY[0x1E69816C0];
  v65 = sub_1D2877218();
  (*(*(v65 - 8) + 104))(v62 + v63, v64, v65);
  *v62 = swift_getKeyPath();
  sub_1D22EC9BC(v126, v61, &qword_1EC6DC448, &qword_1D288C4A0);
  LOBYTE(v64) = sub_1D2876338();
  sub_1D2874298();
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v74 = v110;
  sub_1D22EC9BC(v61, v110, &qword_1EC6DC450, &qword_1D288C4A8);
  v75 = v74 + *(v105 + 36);
  *v75 = v64;
  *(v75 + 8) = v67;
  *(v75 + 16) = v69;
  *(v75 + 24) = v71;
  *(v75 + 32) = v73;
  *(v75 + 40) = 0;
  sub_1D2877AE8();
  v76 = v111;
  sub_1D2874FD8();
  v77 = v113;
  sub_1D2875668();
  v78 = sub_1D24A0A4C(&qword_1EC6D7960, MEMORY[0x1E697E898], MEMORY[0x1E697E890]);
  v79 = sub_1D24A0A4C(&qword_1ED89D6C8, MEMORY[0x1E697F260], MEMORY[0x1E697F258]);
  v80 = v114;
  v81 = v117;
  v82 = v123;
  sub_1D28743D8();
  (*(v118 + 8))(v77, v82);
  (*(v112 + 8))(v76, v81);
  v83 = 1.0;
  MEMORY[0x1D38A0390](0.5, 1.0, 0.0);
  v128 = v81;
  v129 = v82;
  v130 = v78;
  v131 = v79;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v85 = v116;
  v86 = v122;
  sub_1D28743E8();

  (*(v119 + 8))(v80, v86);
  v88 = v120;
  v87 = v121;
  (*(v120 + 16))(v115, v85, v121);
  v128 = v86;
  v129 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v89 = sub_1D2874988();
  (*(v88 + 8))(v85, v87);
  v90 = v109;
  sub_1D22EC9BC(v74, v109, &qword_1EC6DC458, &qword_1D288C4B0);
  *(v90 + *(v108 + 36)) = v89;
  if ((sub_1D249C9E4(v124) & 1) == 0)
  {
    v83 = 0.0;
  }

  v91 = v125;
  sub_1D22EC9BC(v90, v125, &qword_1EC6DC460, &qword_1D288C4B8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC470, &qword_1D288C528);
  *(v91 + *(result + 36)) = v83;
  return result;
}

uint64_t sub_1D24A0200(uint64_t a1)
{
  result = sub_1D24A0A4C(&qword_1EC6DC310, type metadata accessor for FacePickerGridView, &unk_1D288C320);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D24A0260()
{
  result = qword_1EC6DC348;
  if (!qword_1EC6DC348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC340, &qword_1D288C3C0);
    sub_1D24A02EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC348);
  }

  return result;
}

unint64_t sub_1D24A02EC()
{
  result = qword_1EC6DC350;
  if (!qword_1EC6DC350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC358, &qword_1D288C3C8);
    sub_1D22BB9D8(&qword_1EC6DC360, &qword_1EC6DC368, &qword_1D288C3D0, MEMORY[0x1E697BE60]);
    sub_1D24A0A4C(&qword_1EC6D77C8, MEMORY[0x1E6980270], MEMORY[0x1E6980268]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC350);
  }

  return result;
}

double sub_1D24A03EC()
{
  type metadata accessor for FacePickerGridView(0);

  return sub_1D249F38C();
}

unint64_t sub_1D24A0454()
{
  result = qword_1EC6DC3A8;
  if (!qword_1EC6DC3A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC3A0, &qword_1D288C3F8);
    sub_1D22BB9D8(&qword_1EC6DC3B0, &qword_1EC6DC3B8, &qword_1D288C400, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC3A8);
  }

  return result;
}

uint64_t objectdestroyTm_7()
{
  v1 = (type metadata accessor for FacePickerGridView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC2F0, &unk_1D288C2D0);
  (*(*(v3 - 8) + 8))(v2, v3);

  v4 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690, &qword_1D287F5B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1D2875E18();
    v6 = *(v5 - 8);
    if (!(*(v6 + 48))(v2 + v4, 1, v5))
    {
      (*(v6 + 8))(v2 + v4, v5);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D24A06C0@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for FacePickerGridView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1D249E540(a1, v6, a2);
}

uint64_t sub_1D24A0740(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D24A07A8()
{
  v1 = *(type metadata accessor for FacePickerGridView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for PhotosPersonAsset(0) - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1D249EEF4(v0 + v2, v5);
}

unint64_t sub_1D24A0874()
{
  result = qword_1EC6DC3F0;
  if (!qword_1EC6DC3F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC3E8, &qword_1D288C450);
    sub_1D24A092C();
    sub_1D22BB9D8(&qword_1EC6DC418, &qword_1EC6DC420, &unk_1D288C460, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC3F0);
  }

  return result;
}

unint64_t sub_1D24A092C()
{
  result = qword_1EC6DC3F8;
  if (!qword_1EC6DC3F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC400, &qword_1D288C458);
    sub_1D22F587C();
    sub_1D22BB9D8(&qword_1EC6DC408, &qword_1EC6DC410, &qword_1D288CC00, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC3F8);
  }

  return result;
}

uint64_t sub_1D24A09E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D24A0A4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D24A0A94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D24A0AF4()
{
  result = qword_1EC6DC480;
  if (!qword_1EC6DC480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC380, &qword_1D288C3E0);
    sub_1D22BB9D8(&qword_1EC6DC488, &qword_1EC6DC318, &qword_1D288C398, MEMORY[0x1E697C1A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC480);
  }

  return result;
}

uint64_t sub_1D24A0BAC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0, &unk_1D2881BE0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__selectedAsset;
  swift_beginAccess();
  sub_1D24A3128(v1 + v6, v5);
  v7 = sub_1D24A3198(v5, a1);
  sub_1D22BD238(v5, &unk_1EC6DDDC0, &unk_1D2881BE0);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1D24A3640(&qword_1EC6DC0F8, type metadata accessor for FacePickerGridViewModel, &unk_1D288C5D8);
    sub_1D28719D8();
  }

  else
  {
    swift_beginAccess();
    sub_1D24A3408(a1, v1 + v6);
    swift_endAccess();
  }

  return sub_1D22BD238(a1, &unk_1EC6DDDC0, &unk_1D2881BE0);
}

uint64_t sub_1D24A0D90@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1D24A3640(&qword_1EC6DC0F8, type metadata accessor for FacePickerGridViewModel, &unk_1D288C5D8);
  sub_1D28719E8();

  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__selectedAsset;
  swift_beginAccess();
  return sub_1D24A3128(v5 + v3, a1);
}

double sub_1D24A0E58()
{
  swift_getKeyPath();
  sub_1D24A3640(&qword_1EC6DC0F8, type metadata accessor for FacePickerGridViewModel, &unk_1D288C5D8);
  sub_1D28719E8();

  swift_beginAccess();
  sub_1D2870F68();
  return result;
}

uint64_t sub_1D24A0F18(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0, &unk_1D2881BE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - v11;
  v13 = type metadata accessor for PhotosPersonAsset(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v28 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v25 - v17;
  sub_1D24A3128(a1, v12);
  v19 = *(v14 + 48);
  if (v19(v12, 1, v13) == 1)
  {
    return sub_1D22BD238(v12, &unk_1EC6DDDC0, &unk_1D2881BE0);
  }

  sub_1D23DBC5C(v12, v18);
  v27 = v18;
  sub_1D24A35A4(v18, v9);
  v26 = *(v14 + 56);
  v26(v9, 0, 1, v13);
  sub_1D24A0BAC(v9);
  swift_getKeyPath();
  v21 = OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel___observationRegistrar;
  v30 = v2;
  sub_1D24A3640(&qword_1EC6DC0F8, type metadata accessor for FacePickerGridViewModel, &unk_1D288C5D8);
  v25 = v21;
  sub_1D28719E8();

  v22 = OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__selectedAsset;
  swift_beginAccess();
  sub_1D24A3128(v2 + v22, v6);
  if (v19(v6, 1, v13) == 1)
  {
    sub_1D22BD238(v6, &unk_1EC6DDDC0, &unk_1D2881BE0);
  }

  else
  {
    v23 = v28;
    sub_1D23DBC5C(v6, v28);
    swift_getKeyPath();
    v29 = v2;
    sub_1D28719E8();

    if (*(v2 + 32))
    {
      swift_unknownObjectRetain();
      sub_1D249036C(v23);
      swift_unknownObjectRelease();
    }

    sub_1D24A3494(v23);
  }

  v24 = v27;
  v26(v9, 1, 1, v13);
  sub_1D24A0BAC(v9);
  return sub_1D24A3494(v24);
}

uint64_t sub_1D24A12A4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0, &unk_1D2881BE0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - v2;
  swift_getKeyPath();
  v11 = v0;
  sub_1D24A3640(&qword_1EC6DC0F8, type metadata accessor for FacePickerGridViewModel, &unk_1D288C5D8);
  sub_1D28719E8();

  v4 = *(v0 + 32);
  if (v4)
  {
    swift_getKeyPath();
    v11 = v4;
    sub_1D24A3640(&qword_1EC6D9A38, type metadata accessor for FacePickerCarouselViewModel, &unk_1D288B168);
    swift_unknownObjectRetain();
    sub_1D28719E8();

    v5 = *(v4 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__shouldDismissFacePickerGrid);
    if (v5)
    {
      v6 = *(v4 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__shouldDismissFacePickerGrid + 8);
      v7 = sub_1D2870F78();
      v5(v7);
      sub_1D22D7900(v5, v6);
    }

    sub_1D24835A8(0);
    swift_unknownObjectRelease();
  }

  v8 = type metadata accessor for PhotosPersonAsset(0);
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  return sub_1D24A0BAC(v3);
}

uint64_t sub_1D24A14A8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__allLookAssets;
  swift_beginAccess();
  v4 = sub_1D2870F68();
  v5 = sub_1D2338E60(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D24A3640(&qword_1EC6DC0F8, type metadata accessor for FacePickerGridViewModel, &unk_1D288C5D8);
    sub_1D28719D8();
  }
}

double sub_1D24A15F8(__int128 *a1)
{
  v2 = a1[1];
  v21 = *a1;
  v22 = v2;
  v3 = a1[3];
  v5 = *a1;
  v4 = a1[1];
  v23 = a1[2];
  v24 = v3;
  v6 = (v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__person);
  v7 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__person + 16);
  v17 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__person);
  v18 = v7;
  v8 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__person + 48);
  v19 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__person + 32);
  v20 = v8;
  v16[0] = v5;
  v16[1] = v4;
  v9 = a1[3];
  v16[2] = a1[2];
  v16[3] = v9;
  if (_s23ImagePlaygroundInternal12PhotosPersonV2eeoiySbAC_ACtFZ_0(&v17, v16))
  {
    v10 = v6[1];
    v17 = *v6;
    v18 = v10;
    v11 = v6[3];
    v19 = v6[2];
    v20 = v11;
    v12 = v22;
    *v6 = v21;
    v6[1] = v12;
    v13 = v24;
    v6[2] = v23;
    v6[3] = v13;
    sub_1D22D640C(&v17);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *&v17 = v1;
    sub_1D24A3640(&qword_1EC6DC0F8, type metadata accessor for FacePickerGridViewModel, &unk_1D288C5D8);
    sub_1D28719D8();
    sub_1D22D640C(&v21);
  }

  return result;
}

double sub_1D24A1770()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60, &qword_1D28811F0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12 - v3;
  swift_getKeyPath();
  v13 = v0;
  sub_1D24A3640(&qword_1EC6DC0F8, type metadata accessor for FacePickerGridViewModel, &unk_1D288C5D8);
  sub_1D28719E8();

  v5 = OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__allLookAssets;
  swift_beginAccess();
  if (!*(*(v1 + v5) + 16))
  {
    v7 = sub_1D28785F8();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    v8 = swift_allocObject();
    swift_weakInit();
    sub_1D2878568();
    sub_1D2870F78();
    v9 = sub_1D2878558();
    v10 = swift_allocObject();
    v11 = MEMORY[0x1E69E85E0];
    v10[2] = v9;
    v10[3] = v11;
    v10[4] = v8;

    sub_1D22AE01C(0, 0, v4, &unk_1D288C690, v10);
  }

  return result;
}

uint64_t sub_1D24A195C()
{
  swift_getKeyPath();
  sub_1D24A3640(&qword_1EC6DC0F8, type metadata accessor for FacePickerGridViewModel, &unk_1D288C5D8);
  sub_1D28719E8();

  return swift_unknownObjectRetain();
}

uint64_t sub_1D24A1A04@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D24A3640(&qword_1EC6DC0F8, type metadata accessor for FacePickerGridViewModel, &unk_1D288C5D8);
  sub_1D28719E8();

  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__selectedAsset;
  swift_beginAccess();
  return sub_1D24A3128(v3 + v4, a2);
}

uint64_t sub_1D24A1ACC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0, &unk_1D2881BE0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1D24A3128(a1, &v6 - v3);
  return sub_1D24A0BAC(v4);
}

uint64_t sub_1D24A1B60(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__selectedAsset;
  swift_beginAccess();
  sub_1D24A3408(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_1D24A1BCC@<X0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  *&v8[0] = v1;
  sub_1D24A3640(&qword_1EC6DC0F8, type metadata accessor for FacePickerGridViewModel, &unk_1D288C5D8);
  sub_1D28719E8();

  v3 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__person + 16);
  v8[0] = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__person);
  v8[1] = v3;
  v5 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__person + 48);
  v9 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__person + 32);
  v4 = v9;
  v10 = v5;
  *a1 = v8[0];
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_1D22D63B0(v8, &v7);
}

uint64_t sub_1D24A1C9C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  *&v12[0] = v3;
  sub_1D24A3640(&qword_1EC6DC0F8, type metadata accessor for FacePickerGridViewModel, &unk_1D288C5D8);
  sub_1D28719E8();

  v4 = v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__person;
  v5 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__person + 32);
  v6 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__person + 48);
  v7 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__person + 16);
  v12[0] = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__person);
  v12[1] = v7;
  v12[2] = v5;
  v12[3] = v6;
  v8 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__person + 16);
  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__person);
  a2[1] = v8;
  v9 = *(v4 + 48);
  a2[2] = *(v4 + 32);
  a2[3] = v9;
  return sub_1D22D63B0(v12, &v11);
}

void sub_1D24A1D74(uint64_t a1, _OWORD *a2)
{
  v2 = (a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__person);
  v3 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__person + 32);
  v4 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__person + 40);
  v5 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__person + 48);
  v6 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__person + 56);
  v7 = a2[1];
  *v2 = *a2;
  v2[1] = v7;
  v8 = a2[3];
  v2[2] = a2[2];
  v2[3] = v8;
  sub_1D22D63B0(a2, &v9);

  sub_1D238D058(v3, v4, v5);
}

double sub_1D24A1E18@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D24A3640(&qword_1EC6DC0F8, type metadata accessor for FacePickerGridViewModel, &unk_1D288C5D8);
  sub_1D28719E8();

  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__allLookAssets;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  sub_1D2870F68();
  return result;
}

uint64_t sub_1D24A1F0C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__allLookAssets;
  swift_beginAccess();
  *(a1 + v4) = a2;
  sub_1D2870F68();
}

uint64_t sub_1D24A1F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[35] = a4;
  v5 = type metadata accessor for PhotosPersonAsset(0);
  v4[36] = v5;
  v4[37] = *(v5 - 8);
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0, &unk_1D2881BE0);
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC0E0, &unk_1D288B250);
  v4[44] = v6;
  v4[45] = *(v6 - 8);
  v4[46] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC0E8, &qword_1D288C6A0);
  v4[47] = v7;
  v4[48] = *(v7 - 8);
  v4[49] = swift_task_alloc();
  v8 = sub_1D2871798();
  v4[50] = v8;
  v4[51] = *(v8 - 8);
  v4[52] = swift_task_alloc();
  v4[53] = swift_task_alloc();
  v4[54] = sub_1D2878568();
  v4[55] = sub_1D2878558();
  v10 = sub_1D28784F8();
  v4[56] = v10;
  v4[57] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1D24A2214, v10, v9);
}

uint64_t sub_1D24A2214()
{
  v21 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 464) = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = *(v0 + 360);
    v4 = *(v0 + 368);
    v5 = *(v0 + 352);
    sub_1D24A14A8(MEMORY[0x1E69E7CC0]);
    sub_1D2871788();
    v6 = sub_1D23C6DDC();
    swift_getKeyPath();
    *(v0 + 472) = OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel___observationRegistrar;
    *(v0 + 216) = v2;
    *(v0 + 480) = sub_1D24A3640(&qword_1EC6DC0F8, type metadata accessor for FacePickerGridViewModel, &unk_1D288C5D8);
    sub_1D28719E8();

    v7 = (v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__person);
    v8 = *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__person + 48);
    v10 = *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__person);
    v9 = *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__person + 16);
    *(v0 + 48) = *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__person + 32);
    *(v0 + 64) = v8;
    *(v0 + 16) = v10;
    *(v0 + 32) = v9;
    v11 = v7[1];
    v20[0] = *v7;
    v20[1] = v11;
    v12 = v7[3];
    v20[2] = v7[2];
    v20[3] = v12;
    sub_1D22D63B0(v0 + 16, v0 + 80);
    sub_1D255AA0C(v20, 0);
    sub_1D22D640C(v0 + 16);
    sub_1D2878658();

    (*(v3 + 8))(v4, v5);
    *(v0 + 488) = OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__allLookAssets;
    *(v0 + 496) = MEMORY[0x1E69E7CC0];
    v13 = sub_1D2878558();
    *(v0 + 504) = v13;
    v14 = swift_task_alloc();
    *(v0 + 512) = v14;
    *v14 = v0;
    v14[1] = sub_1D24A2514;
    v15 = *(v0 + 376);
    v16 = *(v0 + 344);
    v17 = MEMORY[0x1E69E85E0];

    return MEMORY[0x1EEE6D9C8](v16, v13, v17, v15);
  }

  else
  {

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_1D24A2514()
{
  v1 = *v0;

  v2 = *(v1 + 456);
  v3 = *(v1 + 448);

  return MEMORY[0x1EEE6DFA0](sub_1D24A2658, v3, v2);
}

uint64_t sub_1D24A2658()
{
  v1 = v0[43];
  v2 = *(v0[37] + 48);
  if (v2(v1, 1, v0[36]) != 1)
  {
    sub_1D23DBC5C(v1, v0[38]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = v0[62];
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_9;
    }

    goto LABEL_40;
  }

  v3 = v0[62];
  v56 = v2;
  v57 = v0[61];
  v4 = v0[60];
  v5 = v0[58];
  (*(v0[48] + 8))(v0[49], v0[47]);

  swift_getKeyPath();
  v0[28] = v5;
  sub_1D2870F68();
  sub_1D28719E8();

  v0[29] = v5;
  swift_getKeyPath();
  sub_1D2871A08();

  swift_beginAccess();
  sub_1D274E470(v3);
  swift_endAccess();
  v0[30] = v5;
  swift_getKeyPath();
  sub_1D28719F8();

  swift_getKeyPath();
  v0[31] = v5;
  sub_1D28719E8();

  v6 = *(v5 + v57);
  v7 = *(v6 + 16);
  sub_1D2870F68();
  if (v7)
  {
    v8 = 0;
    v9 = v0[36];
    while (v8 < *(v6 + 16))
    {
      v4 = v0[39];
      sub_1D24A35A4(v6 + ((*(v0[37] + 80) + 32) & ~*(v0[37] + 80)) + *(v0[37] + 72) * v8, v4);
      if (*(v4 + *(v9 + 24)))
      {
        v28 = v0[42];
        v29 = v0[39];
        v30 = v0[36];
        v31 = v0[37];

        sub_1D23DBC5C(v29, v28);
        v13 = *(v31 + 56);
        v13(v28, 0, 1, v30);
        goto LABEL_21;
      }

      ++v8;
      sub_1D24A3494(v0[39]);
      if (v7 == v8)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_40:
    v4 = sub_1D27CC868(0, v4[2] + 1, 1, v4);
LABEL_9:
    v16 = v4[2];
    v15 = v4[3];
    if (v16 >= v15 >> 1)
    {
      v4 = sub_1D27CC868((v15 > 1), v16 + 1, 1, v4);
    }

    v17 = v0[52];
    v18 = v0[50];
    v19 = v0[51];
    v21 = v0[37];
    v20 = v0[38];
    v4[2] = v16 + 1;
    v58 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v22 = *(v21 + 72);
    sub_1D23DBC5C(v20, v4 + v58 + v22 * v16);
    sub_1D2871788();
    sub_1D2871718();
    v24 = v23;
    v25 = *(v19 + 8);
    v25(v17, v18);
    if (v24 <= 0.2)
    {
      goto LABEL_36;
    }

    v55 = v25;
    v54 = v22;
    v26 = v0[58];
    swift_getKeyPath();
    v0[32] = v26;
    sub_1D2870F68();
    sub_1D28719E8();

    v0[33] = v26;
    swift_getKeyPath();
    sub_1D2871A08();

    swift_beginAccess();
    sub_1D274E470(v4);
    swift_endAccess();
    v0[34] = v26;
    swift_getKeyPath();
    sub_1D28719F8();

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v27 = v4[2];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_1D27CC868(0, v27, 1, v4);
      }

      swift_arrayDestroy();
      if (v27)
      {
        if (v27 * v54 > 0 || v4 + v58 >= v4 + v58 + v27 * v54 + (v4[2] - v27) * v54)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v54)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v4[2] -= v27;
      }

      goto LABEL_35;
    }

    if (v4[3] <= 1uLL)
    {

      v4 = MEMORY[0x1E69E7CC0];
LABEL_35:
      v49 = v0[52];
      v48 = v0[53];
      v50 = v0[50];
      v51 = v0[51];
      sub_1D2871788();
      v55(v48, v50);
      (*(v51 + 32))(v48, v49, v50);
LABEL_36:
      v0[62] = v4;
      v52 = sub_1D2878558();
      v0[63] = v52;
      v53 = swift_task_alloc();
      v0[64] = v53;
      *v53 = v0;
      v53[1] = sub_1D24A2514;
      v47 = v0[47];
      v44 = v0[43];
      v46 = MEMORY[0x1E69E85E0];
      v45 = v52;

      return MEMORY[0x1EEE6D9C8](v44, v45, v46, v47);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC4C8, &qword_1D288C6D0);
    v43 = swift_allocObject();
    v44 = _swift_stdlib_malloc_size(v43);
    if (v54)
    {
      if (v44 - v58 != 0x8000000000000000 || v54 != -1)
      {
        v43[2] = 0;
        v43[3] = 2 * ((v44 - v58) / v54);

        v4 = v43;
        goto LABEL_35;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return MEMORY[0x1EEE6D9C8](v44, v45, v46, v47);
  }

LABEL_7:
  v10 = v0[42];
  v11 = v0[36];
  v12 = v0[37];

  v13 = *(v12 + 56);
  v13(v10, 1, 1, v11);
LABEL_21:
  v32 = v0[42];
  v33 = v0[36];

  v34 = v56(v32, 1, v33);
  v35 = v0[53];
  v36 = v0[50];
  v37 = v0[51];
  v38 = v0[42];
  if (v34 == 1)
  {
    (*(v37 + 8))(v0[53], v0[50]);

    sub_1D22BD238(v38, &unk_1EC6DDDC0, &unk_1D2881BE0);
  }

  else
  {
    v40 = v0[40];
    v39 = v0[41];
    v59 = v0[36];
    sub_1D23DBC5C(v38, v40);
    sub_1D24A35A4(v40, v39);
    v13(v39, 0, 1, v59);
    sub_1D24A0BAC(v39);

    sub_1D24A3494(v40);
    (*(v37 + 8))(v35, v36);
  }

  v41 = v0[1];

  return v41();
}

uint64_t sub_1D24A2E4C()
{

  swift_unknownObjectRelease();
  sub_1D22BD238(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__selectedAsset, &unk_1EC6DDDC0, &unk_1D2881BE0);
  v1 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__person + 32);
  v2 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__person + 40);
  v3 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__person + 48);
  v4 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__person + 56);

  sub_1D238D058(v1, v2, v3);

  v5 = OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel___observationRegistrar;
  v6 = sub_1D2871A28();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FacePickerGridViewModel(uint64_t a1)
{
  result = qword_1EC6DC4B8;
  if (!qword_1EC6DC4B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D24A2FD8(uint64_t a1)
{
  sub_1D24A30D0(319);
  if (v1 <= 0x3F)
  {
    sub_1D2871A28();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1D24A30D0(uint64_t a1)
{
  if (!qword_1ED8A2EF0)
  {
    type metadata accessor for PhotosPersonAsset(255);
    v1 = sub_1D2878F18();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED8A2EF0);
    }
  }
}

uint64_t sub_1D24A3128(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0, &unk_1D2881BE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D24A3198(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosPersonAsset(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0, &unk_1D2881BE0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v20 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC478, &qword_1D288C530);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_1D24A3128(a1, &v20 - v12);
  sub_1D24A3128(a2, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1D24A3128(v13, v10);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      sub_1D23DBC5C(&v13[v15], v7);
      v18 = _s23ImagePlaygroundInternal17PhotosPersonAssetV2eeoiySbAC_ACtFZ_0(v10, v7);
      sub_1D24A3494(v7);
      sub_1D24A3494(v10);
      sub_1D22BD238(v13, &unk_1EC6DDDC0, &unk_1D2881BE0);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    sub_1D24A3494(v10);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1D22BD238(v13, &qword_1EC6DC478, &qword_1D288C530);
    v17 = 1;
    return v17 & 1;
  }

  sub_1D22BD238(v13, &unk_1EC6DDDC0, &unk_1D2881BE0);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1D24A3408(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0, &unk_1D2881BE0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D24A3494(uint64_t a1)
{
  v2 = type metadata accessor for PhotosPersonAsset(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D24A34F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D22BC8FC;

  return sub_1D24A1F7C(a1, v4, v5, v6);
}

uint64_t sub_1D24A35A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosPersonAsset(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D24A3640(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1D24A3688(char a1)
{
  swift_getKeyPath();
  sub_1D24AF050(&qword_1ED8A5860, type metadata accessor for ImageConditioningPickerViewModel, &unk_1D288C84C);
  sub_1D28719E8();

  if (*(*(v1 + 120) + 88) == 1)
  {
    sub_1D24A8C44(a1 & 1);
    sub_1D24A3810(a1 & 1, *(v1 + 176) - 5 < 2);
  }

  else if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal32ImageConditioningPickerViewModel__requestedReloadBeforePromptManagerReady) == 1)
  {
    *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal32ImageConditioningPickerViewModel__requestedReloadBeforePromptManagerReady) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D24A3810(char a1, int a2)
{
  v3 = v2;
  v399 = a2;
  v5 = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC4D0, &qword_1D288C910);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v407 = &v378 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v405 = &v378 - v9;
  *&v424 = type metadata accessor for Bubble.BubbleType(0);
  MEMORY[0x1EEE9AC00](v424);
  v411 = &v378 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v409 = type metadata accessor for Bubble(0);
  v422 = *(v409 - 8);
  MEMORY[0x1EEE9AC00](v409);
  v391 = &v378 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v390 = &v378 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v420 = &v378 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v387 = &v378 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v416 = &v378 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v423 = &v378 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v413 = &v378 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v408 = (&v378 - v25);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v378 - v27;
  v415 = type metadata accessor for SceneConditioningImage(0);
  MEMORY[0x1EEE9AC00](v415);
  v418 = (&v378 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v417 = sub_1D2873CB8();
  v419 = *(v417 - 8);
  MEMORY[0x1EEE9AC00](v417);
  v392 = &v378 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v410 = &v378 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v400 = &v378 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v395 = &v378 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v384 = &v378 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v383 = &v378 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v385 = &v378 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v380 = &v378 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v379 = &v378 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v382 = &v378 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v381 = &v378 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v386 = &v378 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v397 = &v378 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v401 = &v378 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v398 = &v378 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v394 = &v378 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v393 = &v378 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v402 = &v378 - v64;
  MEMORY[0x1EEE9AC00](v65);
  v412 = &v378 - v66;
  MEMORY[0x1EEE9AC00](v67);
  *&v406 = &v378 - v68;
  v396 = *(v2 + 96);
  v69 = sub_1D23C6DDC();
  *&v431 = v69;
  v70 = off_1F4DCA918[0];
  v71 = type metadata accessor for _PeopleRetrieval(0);
  v388 = v70;
  v389 = v71;
  v70(v71, &off_1F4DCA8A8);
  v73 = v72;

  v74 = *(v73 + 16);

  if (v74 >= sub_1D24AB6CC())
  {
    swift_getKeyPath();
    *&v431 = v3;
    sub_1D24AF050(&qword_1ED8A5860, type metadata accessor for ImageConditioningPickerViewModel, &unk_1D288C84C);
    sub_1D28719E8();

    v75 = *(v3 + 25);
    if (v75 & 1) != 0 || (a1)
    {
LABEL_7:
      if (v75)
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        *(&v378 - 2) = v3;
        *(&v378 - 8) = 0;
        *&v431 = v3;
        sub_1D24AF050(&qword_1ED8A5860, type metadata accessor for ImageConditioningPickerViewModel, &unk_1D288C84C);
        sub_1D28719D8();
      }

      else
      {
        *(v3 + 25) = 0;
      }

      LODWORD(v404) = 1;
      goto LABEL_11;
    }
  }

  else if (a1)
  {
    v75 = *(v3 + 25);
    goto LABEL_7;
  }

  LODWORD(v404) = 0;
LABEL_11:
  v77 = v406;
  sub_1D28725F8();
  v78 = sub_1D2873CA8();
  v79 = sub_1D2878A08();
  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    *v80 = 67109120;
    *(v80 + 4) = v404;
    _os_log_impl(&dword_1D226E000, v78, v79, "Will refresh bubble suggestions, resetOld: %{BOOL}d", v80, 8u);
    MEMORY[0x1D38A3520](v80, -1, -1);
  }

  v82 = v419 + 8;
  v81 = *(v419 + 8);
  v83 = v417;
  v81(v77, v417);
  v84 = v412;
  sub_1D28725F8();
  sub_1D2870F78();
  v85 = sub_1D2873CA8();
  v86 = sub_1D2878A08();

  LODWORD(v406) = v86;
  v87 = os_log_type_enabled(v85, v86);
  v421 = v3;
  v419 = v82;
  v414 = v81;
  if (v87)
  {
    v88 = swift_slowAlloc();
    v403 = swift_slowAlloc();
    *&v431 = v403;
    *v88 = 136315138;
    swift_getKeyPath();
    *&v428 = v421;
    sub_1D24AF050(&qword_1ED8A5860, type metadata accessor for ImageConditioningPickerViewModel, &unk_1D288C84C);
    sub_1D28719E8();

    v89 = sub_1D2870F68();
    v90 = MEMORY[0x1D38A0E70](v89, v409);
    v92 = v91;

    v93 = v90;
    v3 = v421;
    v94 = sub_1D23D7C84(v93, v92, &v431);

    *(v88 + 4) = v94;
    v95 = &unk_1ED8A5000;
    _os_log_impl(&dword_1D226E000, v85, v406, "Displayed suggested bubbles: %s", v88, 0xCu);
    v96 = v403;
    __swift_destroy_boxed_opaque_existential_0(v403);
    MEMORY[0x1D38A3520](v96, -1, -1);
    MEMORY[0x1D38A3520](v88, -1, -1);

    v81(v412, v417);
  }

  else
  {

    v81(v84, v83);
    v95 = &unk_1ED8A5000;
  }

  swift_getKeyPath();
  v97 = v95[271];
  *&v431 = v3;
  v98 = sub_1D24AF050(&qword_1ED8A5860, type metadata accessor for ImageConditioningPickerViewModel, &unk_1D288C84C);
  *&v406 = v97;
  v403 = v98;
  sub_1D28719E8();

  v99 = *(v3 + 16);
  isa = v99[2].isa;
  sub_1D2870F68();
  if (!isa)
  {
LABEL_21:

    LODWORD(v412) = 0;
    goto LABEL_23;
  }

  v82 = 0;
  v101 = &v99[4];
  v102 = &qword_1EC6D9A10;
  while (1)
  {
    if (v82 >= v99[2].isa)
    {
      __break(1u);
LABEL_206:
      __break(1u);
      goto LABEL_207;
    }

    sub_1D22D7044(v101, &v431);
    sub_1D227268C(&v431, &v428);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10, &qword_1D28851C0);
    if (swift_dynamicCast())
    {
      break;
    }

    ++v82;
    v101 += 40;
    if (isa == v82)
    {
      goto LABEL_21;
    }
  }

  sub_1D24ADF84(v418, type metadata accessor for SceneConditioningImage);
  LODWORD(v412) = 1;
LABEL_23:
  swift_getKeyPath();
  *&v431 = v3;
  sub_1D28719E8();

  v103 = *(v3 + 72);
  sub_1D2870F68();
  v104 = v402;
  sub_1D28725F8();
  sub_1D2870F68();
  v105 = sub_1D2873CA8();
  v106 = sub_1D2878A08();

  v107 = os_log_type_enabled(v105, v106);
  v418 = v103;
  if (v107)
  {
    v108 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    *&v431 = v82;
    *v108 = 136315138;
    v109 = MEMORY[0x1D38A0E70](v103, v409);
    v111 = sub_1D23D7C84(v109, v110, &v431);

    *(v108 + 4) = v111;
    v3 = v421;
    _os_log_impl(&dword_1D226E000, v105, v106, "Used suggested bubbles for the update: %s", v108, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v82);
    MEMORY[0x1D38A3520](v82, -1, -1);
    MEMORY[0x1D38A3520](v108, -1, -1);
  }

  v414(v104, v417);
  v112 = v413;
  if (v404)
  {
    v113 = v418;
    sub_1D2870F68();
    v99 = v113;
    goto LABEL_40;
  }

  v113 = v418;
  v102 = v418[2];
  if (v102)
  {
    v114 = 0;
    v99 = MEMORY[0x1E69E7CC0];
    while (v114 < *(v113 + 16))
    {
      v115 = (*(v422 + 80) + 32) & ~*(v422 + 80);
      v82 = *(v422 + 72);
      sub_1D24AE5B4(v113 + v115 + v82 * v114, v28, type metadata accessor for Bubble);
      sub_1D24A9730(v28, v3, v412);
      if (v116)
      {
        sub_1D24ADF1C(v28, v408, type metadata accessor for Bubble);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v431 = v99;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D23D8628(0, v99[2].isa + 1, 1);
          v99 = v431;
        }

        v119 = v99[2].isa;
        v118 = v99[3].isa;
        if (v119 >= v118 >> 1)
        {
          sub_1D23D8628((v118 > 1), v119 + 1, 1);
          v99 = v431;
        }

        v99[2].isa = (v119 + 1);
        sub_1D24ADF1C(v408, v99 + v115 + v119 * v82, type metadata accessor for Bubble);
        v3 = v421;
        v113 = v418;
      }

      else
      {
        sub_1D24ADF84(v28, type metadata accessor for Bubble);
      }

      if (v102 == ++v114)
      {
        goto LABEL_39;
      }
    }

LABEL_207:
    __break(1u);
LABEL_208:
    __break(1u);
LABEL_209:
    __break(1u);
LABEL_210:
    __break(1u);
LABEL_211:
    __break(1u);
LABEL_212:
    __break(1u);
    goto LABEL_213;
  }

  v99 = MEMORY[0x1E69E7CC0];
LABEL_39:
  v112 = v413;
LABEL_40:
  v120 = swift_allocObject();
  *(v120 + 16) = v99;
  v121 = swift_allocObject();
  swift_weakInit();
  v122 = swift_allocObject();
  *(v122 + 16) = v121;
  *(v122 + 24) = v412;
  *(v122 + 25) = v399 & 1;
  *(v122 + 32) = v113;
  *(v122 + 40) = v120;
  v402 = v122;
  *(v122 + 48) = v404;
  swift_bridgeObjectRetain_n();
  v404 = v120;
  sub_1D2870F78();
  v408 = (v120 + 16);
  v123 = sub_1D24ADB48(v113, (v120 + 16));
  v415 = 0;

  v124 = v123[2];
  v125 = MEMORY[0x1E69E7CC0];
  v126 = MEMORY[0x1E69E7CC0];
  if (v124)
  {
    v3 = 0;
    v127 = v411;
    while (v3 < v123[2])
    {
      v128 = (*(v422 + 80) + 32) & ~*(v422 + 80);
      v129 = *(v422 + 72);
      sub_1D24AE5B4(v123 + v128 + v129 * v3, v112, type metadata accessor for Bubble);
      sub_1D24AE5B4(v112, v127, type metadata accessor for Bubble.BubbleType);
      if (swift_getEnumCaseMultiPayload() - 3 >= 2)
      {
        sub_1D24ADF84(v112, type metadata accessor for Bubble);
        sub_1D24ADF84(v127, type metadata accessor for Bubble.BubbleType);
      }

      else
      {
        sub_1D24ADF84(v127, type metadata accessor for Bubble.BubbleType);
        sub_1D24ADF1C(v112, v423, type metadata accessor for Bubble);
        v130 = swift_isUniquelyReferenced_nonNull_native();
        *&v431 = v125;
        if ((v130 & 1) == 0)
        {
          sub_1D23D8628(0, v125[2].isa + 1, 1);
          v125 = v431;
        }

        v132 = v125[2].isa;
        v131 = v125[3].isa;
        if (v132 >= v131 >> 1)
        {
          sub_1D23D8628((v131 > 1), v132 + 1, 1);
          v125 = v431;
        }

        v125[2].isa = (v132 + 1);
        sub_1D24ADF1C(v423, v125 + v128 + v132 * v129, type metadata accessor for Bubble);
        v127 = v411;
        v112 = v413;
      }

      if (v124 == ++v3)
      {
        goto LABEL_51;
      }
    }

    __break(1u);
    goto LABEL_142;
  }

LABEL_51:

  v133 = v393;
  sub_1D28725F8();
  sub_1D2870F78();
  v134 = v125;
  v135 = sub_1D2873CA8();
  v136 = sub_1D2878A08();

  v137 = os_log_type_enabled(v135, v136);
  *&v424 = v134;
  if (v137)
  {
    v138 = swift_slowAlloc();
    v139 = swift_slowAlloc();
    *&v431 = v139;
    *v138 = 136315138;
    v140 = MEMORY[0x1D38A0E70](v134, v409);
    v142 = sub_1D23D7C84(v140, v141, &v431);

    *(v138 + 4) = v142;
    _os_log_impl(&dword_1D226E000, v135, v136, "Found persons in suggestions: %s", v138, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v139);
    MEMORY[0x1D38A3520](v139, -1, -1);
    MEMORY[0x1D38A3520](v138, -1, -1);
  }

  v143 = v417;
  v414(v133, v417);
  v102 = v404;
  v437 = v126;
  v144 = v394;
  sub_1D28725F8();
  sub_1D2870F78();
  v145 = sub_1D2873CA8();
  v146 = sub_1D2878A08();

  if (os_log_type_enabled(v145, v146))
  {
    v147 = swift_slowAlloc();
    v148 = swift_slowAlloc();
    *&v431 = v148;
    *v147 = 136315138;
    swift_beginAccess();
    v149 = sub_1D2870F68();
    v150 = MEMORY[0x1D38A0E70](v149, v409);
    v152 = v151;

    v153 = sub_1D23D7C84(v150, v152, &v431);
    v143 = v417;

    *(v147 + 4) = v153;
    v102 = v404;
    _os_log_impl(&dword_1D226E000, v145, v146, "Bubbles to update before people fetching: %s", v147, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v148);
    MEMORY[0x1D38A3520](v148, -1, -1);
    MEMORY[0x1D38A3520](v147, -1, -1);
  }

  v414(v144, v143);
  v154 = v398;
  sub_1D28725F8();
  v155 = v418;
  sub_1D2870F68();
  sub_1D2870F78();
  v156 = sub_1D2873CA8();
  v157 = sub_1D2878A08();

  if (os_log_type_enabled(v156, v157))
  {
    v158 = swift_slowAlloc();
    v159 = swift_slowAlloc();
    *&v431 = v159;
    *v158 = 136315138;
    v160 = sub_1D2870F68();
    v161 = v415;
    v162 = sub_1D24ADB48(v160, v408);
    v415 = v161;

    v163 = MEMORY[0x1D38A0E70](v162, v409);
    v165 = v164;

    v166 = sub_1D23D7C84(v163, v165, &v431);
    v143 = v417;

    *(v158 + 4) = v166;
    v102 = v404;
    _os_log_impl(&dword_1D226E000, v156, v157, "Remaining suggested bubbles before people fetching: %s", v158, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v159);
    MEMORY[0x1D38A3520](v159, -1, -1);
    MEMORY[0x1D38A3520](v158, -1, -1);

    v167 = v398;
  }

  else
  {

    v167 = v154;
  }

  v168 = v414;
  v414(v167, v143);
  v169 = v421;
  v170 = v401;
  sub_1D28725F8();
  sub_1D2870F78();
  sub_1D2870F68();
  sub_1D2870F78();
  v171 = sub_1D2873CA8();
  v172 = sub_1D2878A08();

  if (os_log_type_enabled(v171, v172))
  {
    v173 = swift_slowAlloc();
    v174 = swift_slowAlloc();
    *&v431 = v174;
    *v173 = 136315138;
    v175 = sub_1D24AB36C(v169, v155, v102);

    v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10, &qword_1D28851C0);
    v177 = MEMORY[0x1D38A0E70](v175, v176);
    v179 = v178;

    v102 = sub_1D23D7C84(v177, v179, &v431);
    v169 = v421;

    *(v173 + 4) = v102;
    _os_log_impl(&dword_1D226E000, v171, v172, "Excluded representations before people fetching: %s", v173, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v174);
    MEMORY[0x1D38A3520](v174, -1, -1);
    MEMORY[0x1D38A3520](v173, -1, -1);

    v414(v401, v417);
  }

  else
  {

    v168(v170, v143);
  }

  swift_getKeyPath();
  *&v431 = v169;
  sub_1D28719E8();

  v99 = *(v169 + 16);
  v28 = v99[2].isa;
  sub_1D2870F68();
  if (v28)
  {
    v180 = 0;
    v181 = &v99[4];
    v5 = &qword_1EC6D9A10;
    v82 = &qword_1EC6D9A28;
    v3 = &qword_1D287EDD0;
    while (1)
    {
      if (v180 >= v99[2].isa)
      {
        goto LABEL_206;
      }

      sub_1D22D7044(v181, &v431);
      sub_1D227268C(&v431, &v428);
      v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10, &qword_1D28851C0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28, &qword_1D287EDD0);
      if (swift_dynamicCast())
      {
        break;
      }

      v180 = (v180 + 1);
      v181 += 40;
      if (v28 == v180)
      {
        goto LABEL_66;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(&v434);
    v182 = 1;
  }

  else
  {
LABEL_66:

    v182 = 0;
  }

  v183 = v397;
  sub_1D28725F8();
  v184 = v421;
  sub_1D2870F78();
  v185 = sub_1D2873CA8();
  v186 = sub_1D2878A08();
  v187 = os_log_type_enabled(v185, v186);
  v3 = v408;
  v28 = v409;
  LODWORD(v423) = v182;
  if (v187)
  {
    v188 = swift_slowAlloc();
    *v188 = 67109376;
    *(v188 + 4) = v182;
    *(v188 + 8) = 1024;
    v189 = sub_1D23C6DDC();
    *&v431 = v189;
    v190 = *((v388)(v389) + 16);

    v183 = v397;
    *(v188 + 10) = v190 == 0;

    _os_log_impl(&dword_1D226E000, v185, v186, "Someone is selected: %{BOOL}d, suggested people in people retrieval is empty: %{BOOL}d", v188, 0xEu);
    MEMORY[0x1D38A3520](v188, -1, -1);
  }

  else
  {
  }

  v102 = v420;
  v191 = v400;
  v414(v183, v417);
  swift_getKeyPath();
  *&v431 = v184;
  sub_1D28719E8();

  sub_1D2870F78();
  v192 = sub_1D27ED8C8();

  if ((v192 & 1) != 0 && (v423 & 1) == 0 && (v193 = sub_1D23C6DDC(), *&v431 = v193, v194 = off_1F4DCA938, v195 = off_1F4DCA938(v389), v193, v196 = *(v195 + 16), , v196))
  {
    sub_1D23C7B7C();
    v197 = sub_1D22BF738();

    v82 = v407;
    if (v197 || (v412 & 1) != 0)
    {
    }

    else
    {
      v423 = v194;
      v269 = sub_1D24AB36C(v421, v418, v404);
      v270 = *(v269 + 16);
      if (v270)
      {
        v413 = v269;
        v271 = v269 + 32;
        v123 = MEMORY[0x1E69E7CC0];
        do
        {
          sub_1D22D7044(v271, &v431);
          sub_1D227268C(&v431, &v434);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10, &qword_1D28851C0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28, &qword_1D287EDD0);
          if (swift_dynamicCast())
          {
            sub_1D227268C(v425, &v428);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v123 = sub_1D27CCD28(0, v123[2] + 1, 1, v123);
            }

            v102 = v420;
            v273 = v123[2];
            v272 = v123[3];
            if (v273 >= v272 >> 1)
            {
              v123 = sub_1D27CCD28((v272 > 1), v273 + 1, 1, v123);
            }

            v123[2] = v273 + 1;
            sub_1D227268C(&v428, &v123[5 * v273 + 4]);
            v3 = v408;
          }

          else
          {
            v426 = 0;
            memset(v425, 0, sizeof(v425));
            sub_1D22BD238(v425, &qword_1EC6D9A58, &qword_1D287F000);
            v102 = v420;
          }

          v271 += 40;
          --v270;
        }

        while (v270);
      }

      else
      {

        v123 = MEMORY[0x1E69E7CC0];
      }

      v274 = v386;
      sub_1D28725F8();
      sub_1D2870F68();
      v275 = sub_1D2873CA8();
      v276 = sub_1D2878A08();

      if (os_log_type_enabled(v275, v276))
      {
        v277 = swift_slowAlloc();
        v278 = swift_slowAlloc();
        *&v431 = v278;
        *v277 = 136315138;
        v279 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28, &qword_1D287EDD0);
        v280 = MEMORY[0x1D38A0E70](v123, v279);
        v282 = sub_1D23D7C84(v280, v281, &v431);

        *(v277 + 4) = v282;
        v3 = v408;
        _os_log_impl(&dword_1D226E000, v275, v276, "Persons present: %s", v277, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v278);
        v283 = v278;
        v102 = v420;
        MEMORY[0x1D38A3520](v283, -1, -1);
        MEMORY[0x1D38A3520](v277, -1, -1);

        v284 = v386;
      }

      else
      {

        v284 = v274;
      }

      v414(v284, v417);
      v285 = sub_1D24AB6CC();
      v286 = v424;
      if (*(v424 + 16) < v285)
      {
        v112 = v285;
        v413 = *(v424 + 16);
        v127 = v381;
        sub_1D28725F8();
        sub_1D2870F78();
        v125 = sub_1D2873CA8();
        v287 = sub_1D2878A08();
        if (os_log_type_enabled(v125, v287))
        {
          v288 = swift_slowAlloc();
          *v288 = 134218240;
          v289 = *(v286 + 16);

          *(v288 + 4) = v289;

          *(v288 + 12) = 2048;
          *(v288 + 14) = v112;
          _os_log_impl(&dword_1D226E000, v125, v287, "Not enough persons in suggestions (current: %ld, expected: %ld)", v288, 0x16u);
          MEMORY[0x1D38A3520](v288, -1, -1);

          goto LABEL_143;
        }

LABEL_142:

LABEL_143:
        v414(v127, v417);
        v102 = sub_1D23C6DDC();
        *&v431 = v102;
        v290 = (v423)(v389);

        v291 = *(v290 + 16);

        v292 = v291 - v413;
        if (v291 - v413 >= v112)
        {
          v292 = v112;
        }

        v293 = v292 & ~(v292 >> 63);
        swift_beginAccess();
        v294 = *(*v3 + 16);
        v412 = v293;
        v5 = v293 - v294;
        v28 = (v293 - v294) & ~((v293 - v294) >> 63);
        v82 = v382;
        sub_1D28725F8();
        v295 = sub_1D2873CA8();
        v296 = sub_1D2878A08();
        if (os_log_type_enabled(v295, v296))
        {
          v102 = swift_slowAlloc();
          *v102 = 134217984;
          *(v102 + 4) = v28;
          _os_log_impl(&dword_1D226E000, v295, v296, "Need to update %ld bubbles to fit persons", v102, 0xCu);
          MEMORY[0x1D38A3520](v102, -1, -1);
        }

        v414(v82, v417);
        if (v5 < 1)
        {
          goto LABEL_154;
        }

        sub_1D268CAF4(v28, v418);
        v102 = v297;
        v299 = v298;
        v82 = v300;
        swift_beginAccess();
        sub_1D2870F68();
        v301 = swift_unknownObjectRetain();
        sub_1D274DE68(v301, v102, v299, v82);
        swift_endAccess();
        v5 = v379;
        sub_1D28725F8();
        swift_unknownObjectRetain();
        v225 = sub_1D2873CA8();
        v302 = sub_1D2878A08();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v225, v302))
        {
          v28 = swift_slowAlloc();
          v102 = swift_slowAlloc();
          *&v431 = v102;
          *v28 = 136315138;
          v303 = sub_1D2879018();
          v82 = sub_1D23D7C84(v303, v304, &v431);

          *(v28 + 4) = v82;
          _os_log_impl(&dword_1D226E000, v225, v302, "Dropping bubbles %s to make space for persons", v28, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v102);
          MEMORY[0x1D38A3520](v102, -1, -1);
          MEMORY[0x1D38A3520](v28, -1, -1);
          swift_unknownObjectRelease();

          goto LABEL_153;
        }

        goto LABEL_152;
      }

      v82 = v407;
      v191 = v400;
    }
  }

  else
  {

    v82 = v407;
  }

  v123 = v418;
LABEL_78:
  v198 = sub_1D2870F68();
  v199 = v415;
  v200 = sub_1D24ADB48(v198, v3);
  v401 = v199;

  v201 = *(v200 + 16);

  v99 = (7 - v201);
  swift_beginAccess();
  v202 = v437;
  v5 = *(v437 + 2);
  if (__OFSUB__(v99, v5))
  {
    goto LABEL_209;
  }

  if (v99 - v5 >= 1)
  {
    v413 = v437;
    sub_1D28725F8();
    swift_bridgeObjectRetain_n();
    sub_1D2870F78();
    sub_1D2870F78();
    v99 = sub_1D2873CA8();
    v28 = sub_1D2878A08();
    if (os_log_type_enabled(v99, v28))
    {
      v203 = swift_slowAlloc();
      *v203 = 134217984;
      v204 = sub_1D2870F68();
      v205 = v401;
      v102 = sub_1D24ADB48(v204, v3);
      v401 = v205;

      v206 = *(v102 + 16);

      v5 = 7 - v206;
      v3 = v123;
      v207 = *(v413 + 2);

      if (__OFSUB__(v5, v207))
      {
        goto LABEL_211;
      }

      *(v203 + 4) = v5 - v207;

      _os_log_impl(&dword_1D226E000, v99, v28, "Still missing %ld bubbles in the suggestions", v203, 0xCu);
      MEMORY[0x1D38A3520](v203, -1, -1);

      v102 = v420;
      v191 = v400;
      v3 = v408;
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v28 = v414;
    v414(v395, v417);
    v208 = sub_1D2870F68();
    v209 = v401;
    v99 = sub_1D24ADB48(v208, v3);
    v401 = v209;

    v210 = v99[2].isa;

    v211 = *(v413 + 2);
    v212 = __OFSUB__(7 - v210, v211);
    v5 = 7 - v210 - v211;
    if (v212)
    {
      goto LABEL_210;
    }

    *(&v432 + 1) = type metadata accessor for ImageConditioningSuggestionsFetcher();
    *&v433 = &off_1F4DC65D0;
    v213 = v402;
    sub_1D2870F78();
    *&v431 = sub_1D23C7CE0();
    __swift_project_boxed_opaque_existential_1(&v431, *(&v432 + 1));
    v214 = sub_1D249BDF4(v5, sub_1D24ADB30, v213, v399 & 1);
    __swift_destroy_boxed_opaque_existential_0(&v431);
    sub_1D28725F8();
    sub_1D2870F68();
    v215 = sub_1D2873CA8();
    v216 = sub_1D2878A08();

    if (os_log_type_enabled(v215, v216))
    {
      v217 = swift_slowAlloc();
      v218 = swift_slowAlloc();
      *&v431 = v218;
      *v217 = 136315138;
      v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10, &qword_1D28851C0);
      v220 = MEMORY[0x1D38A0E70](v214, v219);
      v222 = sub_1D23D7C84(v220, v221, &v431);

      *(v217 + 4) = v222;
      _os_log_impl(&dword_1D226E000, v215, v216, "Fetched %s curated prompt as suggestions", v217, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v218);
      v223 = v218;
      v102 = v420;
      MEMORY[0x1D38A3520](v223, -1, -1);
      MEMORY[0x1D38A3520](v217, -1, -1);

      v414(v400, v417);
    }

    else
    {

      (v28)(v191, v417);
    }

    v28 = v409;
    swift_beginAccess();
    sub_1D274DE40(v214);
    swift_endAccess();

    v202 = v437;
    v5 = *(v437 + 2);
    v123 = v418;
  }

  sub_1D2870F68();
  sub_1D2870F68();
  swift_beginAccess();
  v224 = 0;
  v412 = (v202 + 32);
  v225 = &v431;
  v415 = (v422 + 48);
  *&v226 = 136315138;
  v406 = v226;
  v403 = v123;
  v413 = v202;
  v411 = v5;
LABEL_90:
  v227 = v224;
  while (1)
  {
    v228 = 0uLL;
    v229 = v5;
    v230 = 0uLL;
    v231 = 0uLL;
    if (v227 == v5)
    {
      goto LABEL_96;
    }

    if (v227 >= *(v202 + 2))
    {
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:

      swift_unknownObjectRelease();
LABEL_153:
      v414(v5, v417);
      v3 = v408;
LABEL_154:
      v411 = sub_1D23C6DDC();
      *&v434 = v411;
      v305 = (v423)(v389);
      v306 = v305;
      *&v424 = *(v305 + 16);
      if (v424)
      {
        v307 = 0;
        v423 = v305 + 32;
        v413 = (v123 + 4);
        v99 = MEMORY[0x1E69E7CC0];
        while (v307 < *(v306 + 16))
        {
          v314 = v307 + 1;
          sub_1D22D7044(v423 + 40 * v307, &v431);
          v102 = -v123[2];
          v3 = -1;
          v28 = v413;
          while (v102 + v3 != -1)
          {
            if (++v3 >= v123[2])
            {
              goto LABEL_208;
            }

            sub_1D22D7044(v28, &v428);
            v5 = v415;
            v315 = sub_1D24AB7D0(&v428, &v431);
            v415 = v5;
            if (v5)
            {

              result = __swift_destroy_boxed_opaque_existential_0(&v428);
              __break(1u);
              return result;
            }

            v82 = v315;
            v28 += 40;
            __swift_destroy_boxed_opaque_existential_0(&v428);
            if (v82)
            {
              __swift_destroy_boxed_opaque_existential_0(&v431);
              v3 = v408;
              goto LABEL_159;
            }
          }

          sub_1D227268C(&v431, &v428);
          v316 = swift_isUniquelyReferenced_nonNull_native();
          *&v425[0] = v99;
          if ((v316 & 1) == 0)
          {
            sub_1D23D85A8(0, v99[2].isa + 1, 1);
            v99 = *&v425[0];
          }

          v3 = v408;
          v28 = v99[2].isa;
          v308 = v99[3].isa;
          if (v28 >= v308 >> 1)
          {
            sub_1D23D85A8((v308 > 1), v28 + 1, 1);
          }

          v309 = *(&v429 + 1);
          v102 = v430;
          v310 = __swift_mutable_project_boxed_opaque_existential_1(&v428, *(&v429 + 1));
          v5 = &v378;
          v311 = MEMORY[0x1EEE9AC00](v310);
          v82 = &v378 - ((v312 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v313 + 16))(v82, v311);
          sub_1D2564390(v28, v82, v425, v309, v102);
          __swift_destroy_boxed_opaque_existential_0(&v428);
          v99 = *&v425[0];
LABEL_159:
          v307 = v314;
          if (v314 == v424)
          {
            goto LABEL_170;
          }
        }

        goto LABEL_212;
      }

      v99 = MEMORY[0x1E69E7CC0];
LABEL_170:

      v317 = v99[2].isa;
      if (v317)
      {
        v318 = &v99[4];
        v319 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          sub_1D22D7044(v318, &v431);
          sub_1D227268C(&v431, &v428);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAC08, &qword_1D288C9A0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28, &qword_1D287EDD0);
          if (swift_dynamicCast())
          {
            if (*(&v435 + 1))
            {
              sub_1D227268C(&v434, &v428);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v319 = sub_1D27CCD28(0, v319[2] + 1, 1, v319);
              }

              v321 = v319[2];
              v320 = v319[3];
              if (v321 >= v320 >> 1)
              {
                v319 = sub_1D27CCD28((v320 > 1), v321 + 1, 1, v319);
              }

              v319[2] = v321 + 1;
              sub_1D227268C(&v428, &v319[5 * v321 + 4]);
              v3 = v408;
              goto LABEL_174;
            }
          }

          else
          {
            v436 = 0;
            v434 = 0u;
            v435 = 0u;
          }

          sub_1D22BD238(&v434, &qword_1EC6D9A58, &qword_1D287F000);
LABEL_174:
          v318 += 40;
          v317 = (v317 - 1);
          if (!v317)
          {

            goto LABEL_184;
          }
        }
      }

      v319 = MEMORY[0x1E69E7CC0];
LABEL_184:
      v322 = v380;
      sub_1D28725F8();
      sub_1D2870F68();
      v323 = sub_1D2873CA8();
      v324 = sub_1D2878A08();

      if (os_log_type_enabled(v323, v324))
      {
        v325 = swift_slowAlloc();
        v326 = swift_slowAlloc();
        *&v431 = v326;
        *v325 = 136315138;
        v327 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28, &qword_1D287EDD0);
        v328 = MEMORY[0x1D38A0E70](v319, v327);
        v330 = sub_1D23D7C84(v328, v329, &v431);

        *(v325 + 4) = v330;
        _os_log_impl(&dword_1D226E000, v323, v324, "Fetched suggested people: %s", v325, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v326);
        MEMORY[0x1D38A3520](v326, -1, -1);
        MEMORY[0x1D38A3520](v325, -1, -1);
      }

      v331 = v322;
      v332 = v414;
      v414(v331, v417);
      v82 = v385;
      v99 = sub_1D2695B00();
      if (v335)
      {
        v28 = v335;
        v102 = v334;
        v5 = v333;
        sub_1D2879678();
        swift_unknownObjectRetain_n();
        v338 = swift_dynamicCastClass();
        if (!v338)
        {
          swift_unknownObjectRelease();
          v338 = MEMORY[0x1E69E7CC0];
        }

        v339 = *(v338 + 16);

        if (__OFSUB__(v28 >> 1, v102))
        {
          goto LABEL_215;
        }

        if (v339 == (v28 >> 1) - v102)
        {
          v337 = swift_dynamicCastClass();
          swift_unknownObjectRelease();
          v332 = v414;
          if (v337)
          {
LABEL_195:
            v340 = sub_1D267972C(v337);

            sub_1D274DE40(v340);
            sub_1D28725F8();
            v341 = v404;
            sub_1D2870F78();
            v342 = sub_1D2873CA8();
            v343 = sub_1D2878A08();

            if (os_log_type_enabled(v342, v343))
            {
              v344 = swift_slowAlloc();
              v345 = swift_slowAlloc();
              *&v431 = v345;
              *v344 = 136315138;
              v346 = sub_1D2870F68();
              v347 = MEMORY[0x1D38A0E70](v346, v409);
              v349 = v348;

              v350 = sub_1D23D7C84(v347, v349, &v431);

              *(v344 + 4) = v350;
              _os_log_impl(&dword_1D226E000, v342, v343, "Bubbles to update after people fetching: %s", v344, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v345);
              v351 = v345;
              v341 = v404;
              MEMORY[0x1D38A3520](v351, -1, -1);
              v332 = v414;
              MEMORY[0x1D38A3520](v344, -1, -1);

              v352 = v385;
            }

            else
            {

              v352 = v82;
            }

            v332(v352, v417);
            v353 = v383;
            sub_1D28725F8();
            v123 = v418;
            sub_1D2870F68();
            sub_1D2870F78();
            v354 = sub_1D2873CA8();
            v355 = sub_1D2878A08();

            if (os_log_type_enabled(v354, v355))
            {
              v356 = swift_slowAlloc();
              *&v424 = swift_slowAlloc();
              *&v431 = v424;
              *v356 = 136315138;
              v357 = sub_1D2870F68();
              v358 = v415;
              v359 = sub_1D24ADB48(v357, v3);
              v415 = v358;

              v360 = MEMORY[0x1D38A0E70](v359, v409);
              v362 = v361;

              v363 = sub_1D23D7C84(v360, v362, &v431);

              *(v356 + 4) = v363;
              v341 = v404;
              _os_log_impl(&dword_1D226E000, v354, v355, "Remaining suggested after before people fetching: %s", v356, 0xCu);
              v364 = v424;
              __swift_destroy_boxed_opaque_existential_0(v424);
              MEMORY[0x1D38A3520](v364, -1, -1);
              v332 = v414;
              MEMORY[0x1D38A3520](v356, -1, -1);

              v365 = v383;
            }

            else
            {

              v365 = v353;
            }

            v332(v365, v417);
            v366 = v384;
            v367 = v421;
            sub_1D28725F8();
            sub_1D2870F78();
            sub_1D2870F68();
            sub_1D2870F78();
            v368 = sub_1D2873CA8();
            v369 = sub_1D2878A08();

            if (os_log_type_enabled(v368, v369))
            {
              v370 = swift_slowAlloc();
              v371 = swift_slowAlloc();
              *&v431 = v371;
              *v370 = 136315138;
              v372 = sub_1D24AB36C(v367, v123, v341);

              v373 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10, &qword_1D28851C0);
              v374 = MEMORY[0x1D38A0E70](v372, v373);
              v376 = v375;

              v377 = sub_1D23D7C84(v374, v376, &v431);

              *(v370 + 4) = v377;
              _os_log_impl(&dword_1D226E000, v368, v369, "Excluded representations after people fetching: %s", v370, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v371);
              MEMORY[0x1D38A3520](v371, -1, -1);
              MEMORY[0x1D38A3520](v370, -1, -1);

              v414(v384, v417);
            }

            else
            {

              v332(v366, v417);
            }

            v28 = v409;
            v82 = v407;
            v102 = v420;
            v191 = v400;
            goto LABEL_78;
          }

          v337 = MEMORY[0x1E69E7CC0];
LABEL_194:
          swift_unknownObjectRelease();
          goto LABEL_195;
        }

LABEL_216:
        swift_unknownObjectRelease();
        v335 = v28;
        v334 = v102;
        v333 = v5;
        v332 = v414;
      }

      sub_1D268E5E0(v99, v333, v334, v335);
      v337 = v336;
      goto LABEL_194;
    }

    v232 = v102;
    v233 = v28;
    v234 = v3;
    v235 = v227 + 1;
    *&v428 = v227;
    sub_1D22D7044(v412 + 40 * v227, &v428 + 8);
    v229 = v235;
    v3 = v234;
    v28 = v233;
    v102 = v232;
    v228 = v428;
    v230 = v429;
    v231 = v430;
LABEL_96:
    v431 = v228;
    v432 = v230;
    v433 = v231;
    if (!v231)
    {
      break;
    }

    v423 = v229;
    v424 = v228;
    sub_1D227268C((&v431 + 8), &v428);
    if (v424 >= *(*v3 + 16))
    {
      sub_1D22D7044(&v428, &v434);
      v427 = *(v421 + 176);
      sub_1D2847FA8(&v434, &v427, v82);
      if ((*v415)(v82, 1, v28) != 1)
      {
        v252 = v390;
        sub_1D24ADF1C(v82, v390, type metadata accessor for Bubble);
        sub_1D24AE5B4(v252, v391, type metadata accessor for Bubble);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v403 = sub_1D27CCBF4(0, v403[2] + 1, 1, v403);
        }

        v254 = v403[2];
        v253 = v403[3];
        if (v254 >= v253 >> 1)
        {
          v403 = sub_1D27CCBF4((v253 > 1), v254 + 1, 1, v403);
        }

        sub_1D24ADF84(v390, type metadata accessor for Bubble);
        __swift_destroy_boxed_opaque_existential_0(&v428);
        v255 = v403;
        v403[2] = v254 + 1;
        sub_1D24ADF1C(v391, v255 + ((*(v422 + 80) + 32) & ~*(v422 + 80)) + *(v422 + 72) * v254, type metadata accessor for Bubble);
LABEL_116:
        v5 = v411;
        v225 = &v431;
        v224 = v423;
        goto LABEL_90;
      }

      __swift_destroy_boxed_opaque_existential_0(&v428);
      sub_1D22BD238(v82, &qword_1EC6DC4D0, &qword_1D288C910);
      v227 = v423;
    }

    else
    {
      if ((v424 & 0x8000000000000000) != 0)
      {
        goto LABEL_151;
      }

      v99 = ((*(v422 + 80) + 32) & ~*(v422 + 80));
      v5 = *(v422 + 72);
      v236 = v123;
      v237 = v416;
      sub_1D24AE5B4(v99 + *v3 + v5 * v424, v416, type metadata accessor for Bubble);
      v238 = sub_1D2437E18(v237, v236);
      if ((v239 & 1) == 0)
      {
        v102 = v238;
        sub_1D22D7044(&v428, &v434);
        v427 = *(v421 + 176);
        v240 = v405;
        sub_1D2847FA8(&v434, &v427, v405);
        if ((*v415)(v240, 1, v28) != 1)
        {
          sub_1D24ADF1C(v240, v387, type metadata accessor for Bubble);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v403 = sub_1D278BD08(v403);
          }

          v123 = v418;
          v202 = v413;
          sub_1D24ADF84(v416, type metadata accessor for Bubble);
          __swift_destroy_boxed_opaque_existential_0(&v428);
          if ((v102 & 0x8000000000000000) == 0)
          {
            if (v102 < v403[2])
            {
              sub_1D24ADE30(v387, v99 + v403 + v102 * v5);
              v102 = v420;
              goto LABEL_116;
            }

LABEL_214:
            __break(1u);
LABEL_215:
            __break(1u);
            goto LABEL_216;
          }

LABEL_213:
          __break(1u);
          goto LABEL_214;
        }

        sub_1D22BD238(v240, &qword_1EC6DC4D0, &qword_1D288C910);
        v102 = v420;
        v237 = v416;
      }

      v241 = v410;
      sub_1D28725F8();
      sub_1D24AE5B4(v237, v102, type metadata accessor for Bubble);
      v242 = sub_1D2873CA8();
      v243 = sub_1D2878A18();
      if (os_log_type_enabled(v242, v243))
      {
        v244 = swift_slowAlloc();
        v245 = swift_slowAlloc();
        *&v434 = v245;
        *v244 = v406;
        v246 = sub_1D2846EE0();
        v248 = v247;
        sub_1D24ADF84(v420, type metadata accessor for Bubble);
        v249 = sub_1D23D7C84(v246, v248, &v434);
        v82 = v407;

        *(v244 + 4) = v249;
        v28 = v409;
        _os_log_impl(&dword_1D226E000, v242, v243, "Attempted to update a bubble that is not suggested: %s", v244, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v245);
        v250 = v245;
        v102 = v420;
        MEMORY[0x1D38A3520](v250, -1, -1);
        v251 = v244;
        v3 = v408;
        MEMORY[0x1D38A3520](v251, -1, -1);
      }

      else
      {

        sub_1D24ADF84(v102, type metadata accessor for Bubble);
      }

      v414(v241, v417);
      sub_1D24ADF84(v237, type metadata accessor for Bubble);
      __swift_destroy_boxed_opaque_existential_0(&v428);
      v227 = v423;
      v123 = v418;
      v202 = v413;
      v5 = v411;
      v225 = &v431;
    }
  }

  v256 = v392;
  sub_1D28725F8();
  v257 = sub_1D2873CA8();
  v258 = sub_1D2878A08();
  if (os_log_type_enabled(v257, v258))
  {
    v259 = swift_slowAlloc();
    v260 = v28;
    v261 = swift_slowAlloc();
    *&v431 = v261;
    *v259 = v406;
    v262 = sub_1D2870F68();
    v263 = MEMORY[0x1D38A0E70](v262, v260);
    v265 = v264;

    v266 = sub_1D23D7C84(v263, v265, &v431);

    *(v259 + 4) = v266;
    _os_log_impl(&dword_1D226E000, v257, v258, "New suggested bubbles: %s", v259, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v261);
    MEMORY[0x1D38A3520](v261, -1, -1);
    MEMORY[0x1D38A3520](v259, -1, -1);
  }

  v414(v256, v417);
  v267 = sub_1D2870F68();
  sub_1D24A844C(v267);
}