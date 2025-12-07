uint64_t sub_1D25FDBC4(char a1)
{
  *(*v1 + 1028) = a1;

  v3 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D25FDD08, v3, v2);
}

uint64_t sub_1D25FDD08()
{

  v1 = *(v0 + 768);
  v2 = *(v0 + 760);

  return MEMORY[0x1EEE6DFA0](sub_1D25FDD70, v2, v1);
}

uint64_t sub_1D25FDD70(uint64_t a1)
{
  if (*(v1 + 1028))
  {
    *(v1 + 976) = sub_1D2878558();
    v2 = swift_task_alloc();
    *(v1 + 984) = v2;
    *v2 = v1;
    v2[1] = sub_1D25FDF0C;

    return sub_1D2495E44();
  }

  else
  {
    v4 = *(v1 + 624);
    v5 = *(v1 + 464);
    v6 = *(v1 + 424);
    sub_1D260E160(*(v1 + 408), type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive);
    sub_1D22BD238(v6, &qword_1EC6DC0F0, &qword_1D288B3A0);
    sub_1D260E160(v5, type metadata accessor for GeneratedPreviewOptions);
    sub_1D260E160(v4, type metadata accessor for PhotosPersonAsset);
    v7 = sub_1D2878558();
    *(v1 + 872) = v7;
    if (v7)
    {
      swift_getObjectType();
      v8 = sub_1D28784F8();
      v10 = v9;
    }

    else
    {
      v8 = 0;
      v10 = 0;
    }

    *(v1 + 888) = v10;
    *(v1 + 880) = v8;

    return MEMORY[0x1EEE6DFA0](sub_1D25FC3E8, v8, v10);
  }
}

uint64_t sub_1D25FDF0C()
{
  *(*v1 + 992) = v0;

  v3 = sub_1D28784F8();
  if (v0)
  {
    v4 = sub_1D25FE90C;
  }

  else
  {
    v4 = sub_1D25FE068;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1D25FE068()
{

  v1 = *(v0 + 768);
  v2 = *(v0 + 760);

  return MEMORY[0x1EEE6DFA0](sub_1D25FE0D0, v2, v1);
}

uint64_t sub_1D25FE0D0()
{
  v67 = v0;
  sub_1D260E160(*(v0 + 408), type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive);
  if (sub_1D28786D8())
  {
    v1 = *(v0 + 624);
    v2 = *(v0 + 536);
    v3 = *(v0 + 528);
    v4 = *(v0 + 520);
    v5 = *(v0 + 464);
    sub_1D22BD238(*(v0 + 424), &qword_1EC6DC0F0, &qword_1D288B3A0);
    sub_1D260E160(v5, type metadata accessor for GeneratedPreviewOptions);
    (*(v3 + 8))(v2, v4);
    sub_1D260E160(v1, type metadata accessor for PhotosPersonAsset);
    v6 = *(v0 + 568);
    v7 = *(v0 + 552);
    v8 = *(v0 + 544);
    LOBYTE(v4) = sub_1D28786D8();
    (*(v7 + 8))(v6, v8);
    if ((v4 & 1) != 0 || (v9 = *(v0 + 864) + 1, v9 == *(v0 + 848)))
    {

      if (sub_1D28786D8())
      {
        sub_1D2872568();
        v10 = sub_1D2873CA8();
        v11 = sub_1D28789F8();
        v12 = os_log_type_enabled(v10, v11);
        v13 = *(v0 + 776);
        v14 = *(v0 + 712);
        v15 = *(v0 + 680);
        v16 = *(v0 + 640);
        if (v12)
        {
          v17 = swift_slowAlloc();
          *v17 = 0;
          _os_log_impl(&dword_1D226E000, v10, v11, "Cancelled prewarming of faces.", v17, 2u);
          MEMORY[0x1D38A3520](v17, -1, -1);
        }

        v13(v15, v16);
        v18 = *(v14 + 8);
      }

      else
      {
        v23 = *(v0 + 736);
        v24 = *(v0 + 728);
        v25 = *(v0 + 712);
        v26 = *(v0 + 704);
        *(*(v0 + 328) + 64) = 1;
        sub_1D2872568();
        (*(v25 + 16))(v24, v23, v26);
        v27 = sub_1D2873CA8();
        v28 = sub_1D28789F8();
        v29 = os_log_type_enabled(v27, v28);
        v30 = *(v0 + 776);
        v31 = *(v0 + 728);
        if (v29)
        {
          v32 = *(v0 + 720);
          v33 = *(v0 + 712);
          v34 = *(v0 + 704);
          v64 = *(v0 + 640);
          v65 = *(v0 + 672);
          v63 = *(v0 + 776);
          v35 = swift_slowAlloc();
          *v35 = 134217984;
          sub_1D2871788();
          sub_1D2871718();
          v37 = v36;
          v38 = *(v33 + 8);
          v38(v32, v34);
          v38(v31, v34);
          *(v35 + 4) = v37;
          _os_log_impl(&dword_1D226E000, v27, v28, "Finished prewarming of faces (%f seconds).", v35, 0xCu);
          MEMORY[0x1D38A3520](v35, -1, -1);

          v63(v65, v64);
          v18 = v38;
        }

        else
        {
          v56 = *(v0 + 712);
          v57 = *(v0 + 704);
          v58 = *(v0 + 672);
          v59 = *(v0 + 640);

          v60 = *(v56 + 8);
          v60(v31, v57);
          v30(v58, v59);
          v18 = v60;
        }
      }

      v61 = *(v0 + 328);
      v18(*(v0 + 736), *(v0 + 704));
      *(v61 + 56) = 0;

      v62 = *(v0 + 8);

      return v62();
    }

    else
    {
      *(v0 + 864) = v9;
      v39 = *(v0 + 632);
      v40 = *(v0 + 568);
      v41 = *(v0 + 560);
      v42 = *(v0 + 552);
      v43 = *(v0 + 544);
      v44 = *(v0 + 504);
      v45 = *(v0 + 512);
      v46 = *(v0 + 496);
      sub_1D260E0F8(*(v0 + 840) + ((*(v0 + 1024) + 32) & ~*(v0 + 1024)) + *(v0 + 856) * v9, v39, type metadata accessor for PhotosPersonAsset);
      v47 = v39[3];
      v49 = *v39;
      v48 = v39[1];
      *(v0 + 48) = v39[2];
      *(v0 + 64) = v47;
      *(v0 + 16) = v49;
      *(v0 + 32) = v48;
      sub_1D22D63B0(v0 + 16, v0 + 80);
      sub_1D260E160(v39, type metadata accessor for PhotosPersonAsset);
      v50 = *(v0 + 32);
      v66[0] = *(v0 + 16);
      v66[1] = v50;
      v51 = *(v0 + 64);
      v66[2] = *(v0 + 48);
      v66[3] = v51;
      sub_1D255AA0C(v66, 1);
      sub_1D22D640C(v0 + 16);
      (*(v42 + 16))(v41, v40, v43);
      sub_1D22BB9D8(&qword_1EC6DEFF0, &qword_1EC6DC0E0, &unk_1D288B250, MEMORY[0x1E69E86A0]);
      sub_1D2879468();
      MEMORY[0x1D38A1E80](v46);
      sub_1D2878718();
      sub_1D2879418();
      (*(v44 + 8))(v45, v46);
      sub_1D2879458();
      v52 = sub_1D2878558();
      *(v0 + 872) = v52;
      if (v52)
      {
        swift_getObjectType();
        v53 = sub_1D28784F8();
        v55 = v54;
      }

      else
      {
        v53 = 0;
        v55 = 0;
      }

      *(v0 + 888) = v55;
      *(v0 + 880) = v53;

      return MEMORY[0x1EEE6DFA0](sub_1D25FC3E8, v53, v55);
    }
  }

  else
  {
    v19 = swift_task_alloc();
    *(v0 + 1000) = v19;
    *v19 = v0;
    v19[1] = sub_1D25FF340;
    v20 = *(v0 + 624);
    v21 = *(v0 + 464);

    return sub_1D25F8358(v0 + 144, v20, v21);
  }
}

uint64_t sub_1D25FE90C()
{

  v1 = *(v0 + 768);
  v2 = *(v0 + 760);

  return MEMORY[0x1EEE6DFA0](sub_1D25FE974, v2, v1);
}

uint64_t sub_1D25FE974(uint64_t a1)
{
  v88 = v1;
  v2 = *(v1 + 992);
  sub_1D2872568();
  v3 = v2;
  v4 = sub_1D2873CA8();
  v5 = sub_1D2878A18();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 992);
    v82 = *(v1 + 688);
    v83 = *(v1 + 776);
    v7 = *(v1 + 640);
    v85 = *(v1 + 408);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *&v87[0] = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_1D2879748();
    v12 = sub_1D23D7C84(v10, v11, v87);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1D226E000, v4, v5, "Failed to purge old generated faces after model upgrade: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1D38A3520](v9, -1, -1);
    MEMORY[0x1D38A3520](v8, -1, -1);

    v83(v82, v7);
    v13 = v85;
  }

  else
  {
    v14 = *(v1 + 992);
    v15 = *(v1 + 776);
    v16 = *(v1 + 688);
    v17 = *(v1 + 640);
    v18 = *(v1 + 408);

    v15(v16, v17);
    v13 = v18;
  }

  sub_1D260E160(v13, type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive);
  if (sub_1D28786D8())
  {
    v19 = *(v1 + 624);
    v20 = *(v1 + 536);
    v21 = *(v1 + 528);
    v22 = *(v1 + 520);
    v23 = *(v1 + 464);
    sub_1D22BD238(*(v1 + 424), &qword_1EC6DC0F0, &qword_1D288B3A0);
    sub_1D260E160(v23, type metadata accessor for GeneratedPreviewOptions);
    (*(v21 + 8))(v20, v22);
    sub_1D260E160(v19, type metadata accessor for PhotosPersonAsset);
    v24 = *(v1 + 568);
    v25 = *(v1 + 552);
    v26 = *(v1 + 544);
    LOBYTE(v22) = sub_1D28786D8();
    (*(v25 + 8))(v24, v26);
    if ((v22 & 1) != 0 || (v27 = *(v1 + 864) + 1, v27 == *(v1 + 848)))
    {

      if (sub_1D28786D8())
      {
        sub_1D2872568();
        v28 = sub_1D2873CA8();
        v29 = sub_1D28789F8();
        v30 = os_log_type_enabled(v28, v29);
        v31 = *(v1 + 776);
        v32 = *(v1 + 712);
        v33 = *(v1 + 680);
        v34 = *(v1 + 640);
        if (v30)
        {
          v35 = swift_slowAlloc();
          *v35 = 0;
          _os_log_impl(&dword_1D226E000, v28, v29, "Cancelled prewarming of faces.", v35, 2u);
          MEMORY[0x1D38A3520](v35, -1, -1);
        }

        v31(v33, v34);
        v36 = *(v32 + 8);
      }

      else
      {
        v41 = *(v1 + 736);
        v42 = *(v1 + 728);
        v43 = *(v1 + 712);
        v44 = *(v1 + 704);
        *(*(v1 + 328) + 64) = 1;
        sub_1D2872568();
        (*(v43 + 16))(v42, v41, v44);
        v45 = sub_1D2873CA8();
        v46 = sub_1D28789F8();
        v47 = os_log_type_enabled(v45, v46);
        v48 = *(v1 + 776);
        v49 = *(v1 + 728);
        if (v47)
        {
          v50 = *(v1 + 720);
          v51 = *(v1 + 712);
          v52 = *(v1 + 704);
          v84 = *(v1 + 640);
          v86 = *(v1 + 672);
          v81 = *(v1 + 776);
          v53 = swift_slowAlloc();
          *v53 = 134217984;
          sub_1D2871788();
          sub_1D2871718();
          v55 = v54;
          v56 = *(v51 + 8);
          v56(v50, v52);
          v56(v49, v52);
          *(v53 + 4) = v55;
          _os_log_impl(&dword_1D226E000, v45, v46, "Finished prewarming of faces (%f seconds).", v53, 0xCu);
          MEMORY[0x1D38A3520](v53, -1, -1);

          v81(v86, v84);
          v36 = v56;
        }

        else
        {
          v74 = *(v1 + 712);
          v75 = *(v1 + 704);
          v76 = *(v1 + 672);
          v77 = *(v1 + 640);

          v78 = *(v74 + 8);
          v78(v49, v75);
          v48(v76, v77);
          v36 = v78;
        }
      }

      v79 = *(v1 + 328);
      v36(*(v1 + 736), *(v1 + 704));
      *(v79 + 56) = 0;

      v80 = *(v1 + 8);

      return v80();
    }

    else
    {
      *(v1 + 864) = v27;
      v57 = *(v1 + 632);
      v58 = *(v1 + 568);
      v59 = *(v1 + 560);
      v60 = *(v1 + 552);
      v61 = *(v1 + 544);
      v62 = *(v1 + 504);
      v63 = *(v1 + 512);
      v64 = *(v1 + 496);
      sub_1D260E0F8(*(v1 + 840) + ((*(v1 + 1024) + 32) & ~*(v1 + 1024)) + *(v1 + 856) * v27, v57, type metadata accessor for PhotosPersonAsset);
      v65 = v57[3];
      v67 = *v57;
      v66 = v57[1];
      *(v1 + 48) = v57[2];
      *(v1 + 64) = v65;
      *(v1 + 16) = v67;
      *(v1 + 32) = v66;
      sub_1D22D63B0(v1 + 16, v1 + 80);
      sub_1D260E160(v57, type metadata accessor for PhotosPersonAsset);
      v68 = *(v1 + 32);
      v87[0] = *(v1 + 16);
      v87[1] = v68;
      v69 = *(v1 + 64);
      v87[2] = *(v1 + 48);
      v87[3] = v69;
      sub_1D255AA0C(v87, 1);
      sub_1D22D640C(v1 + 16);
      (*(v60 + 16))(v59, v58, v61);
      sub_1D22BB9D8(&qword_1EC6DEFF0, &qword_1EC6DC0E0, &unk_1D288B250, MEMORY[0x1E69E86A0]);
      sub_1D2879468();
      MEMORY[0x1D38A1E80](v64);
      sub_1D2878718();
      sub_1D2879418();
      (*(v62 + 8))(v63, v64);
      sub_1D2879458();
      v70 = sub_1D2878558();
      *(v1 + 872) = v70;
      if (v70)
      {
        swift_getObjectType();
        v71 = sub_1D28784F8();
        v73 = v72;
      }

      else
      {
        v71 = 0;
        v73 = 0;
      }

      *(v1 + 888) = v73;
      *(v1 + 880) = v71;

      return MEMORY[0x1EEE6DFA0](sub_1D25FC3E8, v71, v73);
    }
  }

  else
  {
    v37 = swift_task_alloc();
    *(v1 + 1000) = v37;
    *v37 = v1;
    v37[1] = sub_1D25FF340;
    v38 = *(v1 + 624);
    v39 = *(v1 + 464);

    return sub_1D25F8358(v1 + 144, v38, v39);
  }
}

uint64_t sub_1D25FF340()
{
  v2 = *v1;
  *(*v1 + 1008) = v0;

  if (v0)
  {
    v3 = v2[96];
    v4 = v2[95];
    v5 = sub_1D25FF7C4;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v2 + 18);
    v3 = v2[96];
    v4 = v2[95];
    v5 = sub_1D25FF464;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D25FF464(uint64_t a1)
{
  sub_1D2879718();
  v2 = swift_task_alloc();
  *(v1 + 1016) = v2;
  *v2 = v1;
  v2[1] = sub_1D25FF530;

  return sub_1D233BA38(0x8AC7230489E80000, 0, 0, 0, 1);
}

uint64_t sub_1D25FF530()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[48];
  v5 = v2[47];
  v6 = v2[46];
  v7 = (v5 + 8);
  if (v0)
  {

    (*v7)(v4, v6);
    v8 = v3[96];
    v9 = v3[95];
    v10 = sub_1D260F5B8;
  }

  else
  {
    (*v7)(v4, v6);
    v8 = v3[96];
    v9 = v3[95];
    v10 = sub_1D25FF6D0;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, v8);
}

uint64_t sub_1D25FF6D0()
{
  v1 = v0[78];
  v2 = v0[58];
  sub_1D22BD238(v0[53], &qword_1EC6DC0F0, &qword_1D288B3A0);
  sub_1D260E160(v2, type metadata accessor for GeneratedPreviewOptions);
  sub_1D260E160(v1, type metadata accessor for PhotosPersonAsset);
  v3 = sub_1D2878558();
  v0[109] = v3;
  if (v3)
  {
    swift_getObjectType();
    v4 = sub_1D28784F8();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v0[111] = v6;
  v0[110] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D25FC3E8, v4, v6);
}

void sub_1D25FF7C4()
{
  v1 = v0[126];
  v0[37] = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0, &unk_1D287D430);
  if (swift_dynamicCast())
  {
    v3 = v0[78];
    v4 = v0[77];
    v5 = v0[76];
    (*(v0[44] + 8))(v0[45], v0[43]);
    sub_1D2872568();
    sub_1D260E0F8(v3, v4, type metadata accessor for PhotosPersonAsset);
    sub_1D260E0F8(v3, v5, type metadata accessor for PhotosPersonAsset);
    v6 = sub_1D2873CA8();
    v7 = sub_1D28789F8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = v0[77];
      v9 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v0[39] = v61;
      *v9 = 136315394;
      v10 = *(v8 + 8);
      v11 = v0[77];
      if (v10)
      {
        v12 = *v11;
        v13 = v10;
      }

      else
      {
        v12 = 0;
        v13 = 0xE000000000000000;
      }

      v32 = v0[114];
      sub_1D2870F68();
      sub_1D260E160(v11, type metadata accessor for PhotosPersonAsset);
      v33 = sub_1D23D7C84(v12, v13, v0 + 39);

      *(v9 + 4) = v33;
      *(v9 + 12) = 2080;
      v34 = sub_1D2878068();
      v35 = [v32 uuidFromLocalIdentifier_];

      if (v35)
      {
        v36 = v0[126];
        v37 = v0[97];
        v57 = v0[80];
        v60 = v0[83];
        v38 = v0[76];
        v39 = sub_1D28780A8();
        v41 = v40;

        sub_1D260E160(v38, type metadata accessor for PhotosPersonAsset);
        v42 = sub_1D23D7C84(v39, v41, v0 + 39);

        *(v9 + 14) = v42;
        _os_log_impl(&dword_1D226E000, v6, v7, "Cancelled prewarming of face %s-%s", v9, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1D38A3520](v61, -1, -1);
        MEMORY[0x1D38A3520](v9, -1, -1);

        v37(v60, v57);
        goto LABEL_17;
      }

      __break(1u);
LABEL_21:

      __break(1u);
      return;
    }

    v26 = v0[126];
    v27 = v0[97];
    v28 = v0[83];
    v29 = v0[80];
    v30 = v0[77];
    v31 = v0[76];
  }

  else
  {
    v14 = v0[126];
    v15 = v0[78];
    v16 = v0[75];
    v17 = v0[74];
    sub_1D2872568();
    sub_1D260E0F8(v15, v16, type metadata accessor for PhotosPersonAsset);
    sub_1D260E0F8(v15, v17, type metadata accessor for PhotosPersonAsset);
    v18 = v14;
    v19 = sub_1D2873CA8();
    v20 = sub_1D2878A18();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = v0[75];
      v22 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v0[38] = v62;
      *v22 = 136315650;
      v23 = v0[75];
      if (*(v21 + 8))
      {
        v24 = *v23;
        v25 = *(v21 + 8);
      }

      else
      {
        v24 = 0;
        v25 = 0xE000000000000000;
      }

      v43 = v0[114];
      sub_1D2870F68();
      sub_1D260E160(v23, type metadata accessor for PhotosPersonAsset);
      v44 = sub_1D23D7C84(v24, v25, v0 + 38);

      *(v22 + 4) = v44;
      *(v22 + 12) = 2080;
      v45 = sub_1D2878068();
      v46 = [v43 uuidFromLocalIdentifier_];

      v13 = v0[126];
      if (v46)
      {
        v47 = v0[97];
        v56 = v0[80];
        v58 = v0[82];
        v48 = v0[74];

        v49 = sub_1D28780A8();
        v51 = v50;

        sub_1D260E160(v48, type metadata accessor for PhotosPersonAsset);
        v52 = sub_1D23D7C84(v49, v51, v0 + 38);

        *(v22 + 14) = v52;
        *(v22 + 22) = 2112;
        v53 = v13;
        v54 = _swift_stdlib_bridgeErrorToNSError();
        *(v22 + 24) = v54;
        *v59 = v54;
        _os_log_impl(&dword_1D226E000, v19, v20, "Failed to prewarm face %s-%s: %@", v22, 0x20u);
        sub_1D22BD238(v59, qword_1EC6DA930, &qword_1D287E870);
        MEMORY[0x1D38A3520](v59, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x1D38A3520](v62, -1, -1);
        MEMORY[0x1D38A3520](v22, -1, -1);

        v47(v58, v56);
        goto LABEL_17;
      }

      goto LABEL_21;
    }

    v26 = v0[126];
    v27 = v0[97];
    v28 = v0[82];
    v29 = v0[80];
    v30 = v0[75];
    v31 = v0[74];
  }

  sub_1D260E160(v30, type metadata accessor for PhotosPersonAsset);
  v27(v28, v29);
  sub_1D260E160(v31, type metadata accessor for PhotosPersonAsset);
LABEL_17:
  sub_1D2879718();
  v55 = swift_task_alloc();
  v0[127] = v55;
  *v55 = v0;
  v55[1] = sub_1D25FF530;

  sub_1D233BA38(0x8AC7230489E80000, 0, 0, 0, 1);
}

uint64_t sub_1D25FFEBC(uint64_t a1)
{
  v4 = *(sub_1D2872008() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D22BC8FC;

  return sub_1D25FB2C4(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1D25FFFB4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70, &qword_1D2881410);
  v2[4] = swift_task_alloc();
  sub_1D2878568();
  v2[5] = sub_1D2878558();
  v4 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D2600084, v4, v3);
}

void sub_1D2600084()
{
  v1 = v0[4];
  v2 = v0[3];

  v3 = v2 + *(type metadata accessor for ImageKeyFaceLoader.Context(0) + 20);
  v4 = *(type metadata accessor for GeneratedPreviewOptions(0) + 20);
  v5 = sub_1D2871818();
  v6 = (*(v5 - 8) + 56);
  v53 = *v6;
  (*v6)(v1, 1, 1, v5);
  v57 = v2;
  if (v2[4])
  {
    v58 = v2[5];
    v59 = v2[6];
    sub_1D2870F68();
  }

  else
  {
    v58 = 0;
    v59 = 0;
  }

  v7 = v0[2];
  v8 = v0[3];
  v9 = type metadata accessor for ImageGeneration.GenerationParameters(0);
  v10 = v9[13];
  v11 = sub_1D2872008();
  (*(*(v11 - 8) + 16))(v7 + v10, &v3[v4], v11);
  v12 = v9[14];
  v13 = type metadata accessor for PlaygroundImage(0);
  v14 = *(*(v13 - 8) + 56);
  v14(v7 + v12, 1, 1, v13);
  v14(v7 + v9[15], 1, 1, v13);
  v15 = v7 + v9[16];
  v16 = *(v8 + 56);
  v55 = v14;
  v56 = v13;
  if (v16)
  {
    v17 = v16;
    v18 = [v17 localIdentifier];
    if (!v18)
    {
      sub_1D28780A8();
      v18 = sub_1D2878068();
    }

    v19 = [objc_opt_self() uuidFromLocalIdentifier_];

    if (!v19)
    {
      __break(1u);
      return;
    }

    sub_1D28780A8();

    sub_1D28717A8();
  }

  else
  {
    v53(v15, 1, 1, v5);
  }

  v20 = v0[3];
  v54 = v0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA4A8, &qword_1D2883670);
  v22 = v21[12];
  v23 = v15 + v21[16];
  v24 = v21[20];
  v25 = v21[24];
  v26 = (v15 + v21[28]);
  v27 = (v20 + *(type metadata accessor for PhotosPersonAsset(0) + 20));
  v28 = type metadata accessor for PhotosPersonImage(0);
  sub_1D260E0F8(v27 + *(v28 + 24), v15 + v22, type metadata accessor for PlaygroundImage);
  v55(v15 + v22, 0, 1, v56);
  __asm
  {
    FMOV            V0.2D, #0.125
    FMOV            V1.2D, #0.75
  }

  *v23 = _Q0;
  *(v23 + 16) = _Q1;
  *(v23 + 32) = 0;
  *(v15 + v24) = 4;
  v35 = type metadata accessor for ImageGenerationPerson.SkinTone(0);
  (*(*(v35 - 8) + 56))(v15 + v25, 1, 1, v35);
  v36 = v57[4];
  v37 = v57[5];
  v38 = v57[6];
  *v26 = v36;
  v26[1] = v37;
  v26[2] = v38;
  (*(*(v21 - 1) + 56))(v15, 0, 1, v21);
  sub_1D2396784(v36, v37, v38);
  sub_1D28722D8();
  v39 = *(v20 + 16);
  v40 = *(v20 + 24);
  if (v57[4])
  {
    v41 = sub_1D24FBD9C();
    if (v42)
    {
      v43 = v41;
    }

    else
    {
      v43 = 0;
    }

    if (v42)
    {
      v44 = v42;
    }

    else
    {
      v44 = 0xE000000000000000;
    }

    sub_1D2870F68();
    MEMORY[0x1D38A0C50](v43, v44);
  }

  else
  {
    sub_1D2870F68();
  }

  v45 = v54[4];
  v46 = v54[2];
  v47 = *v27;
  v48 = v27[1];
  sub_1D2870F68();
  MEMORY[0x1D38A0C50](v47, v48);

  sub_1D22EC9BC(v45, v46 + v9[21], &qword_1EC6D8F70, &qword_1D2881410);
  *v46 = 0;
  *(v46 + 8) = 0xE000000000000000;
  *(v46 + 16) = 0;
  *(v46 + 24) = 0xE000000000000000;
  *(v46 + 32) = 0;
  *(v46 + 40) = 0xE000000000000000;
  *(v46 + 48) = v58;
  *(v46 + 56) = v59;
  *(v46 + 64) = 0u;
  *(v46 + 80) = 0u;
  v49 = MEMORY[0x1E69E7CC0];
  *(v46 + 96) = MEMORY[0x1E69E7CC0];
  *(v46 + 104) = v49;
  *(v46 + 112) = 1;
  *(v46 + v9[17]) = 0;
  v50 = (v46 + v9[18]);
  *v50 = 0;
  v50[1] = 0;
  *(v46 + v9[19]) = 1;
  *(v46 + v9[20]) = 1;
  v51 = (v46 + v9[24]);
  *v51 = v39;
  v51[1] = v40;
  *(v46 + v9[22]) = 1;
  (*(*(v9 - 1) + 56))(v46, 0, 1, v9);

  v52 = v54[1];

  v52();
}

uint64_t sub_1D26005F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_1D2871798();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v5[9] = *(v7 + 64);
  v5[10] = swift_task_alloc();
  v8 = *(type metadata accessor for ImageKeyFaceLoader.Context(0) - 8);
  v5[11] = v8;
  v5[12] = *(v8 + 64);
  v5[13] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDA40, &unk_1D28982A0);
  v5[14] = v9;
  v10 = *(v9 - 8);
  v5[15] = v10;
  v5[16] = *(v10 + 64);
  v5[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60, &qword_1D28811F0);
  v5[18] = swift_task_alloc();
  v5[19] = sub_1D2878568();
  v5[20] = sub_1D2878558();
  v12 = sub_1D28784F8();
  v5[21] = v12;
  v5[22] = v11;

  return MEMORY[0x1EEE6DFA0](sub_1D2600800, v12, v11);
}

uint64_t sub_1D2600800()
{
  v1 = v0[18];
  v35 = v1;
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  v28 = v3;
  v5 = v0[13];
  v29 = v2;
  v30 = v5;
  v33 = v0[16];
  v34 = v0[12];
  v6 = v0[10];
  v31 = v0[11];
  v32 = v6;
  v7 = v0[8];
  v8 = v0[7];
  v25 = v0[5];
  v26 = v0[6];
  v27 = v0[4];
  v9 = v0[3];
  v10 = sub_1D28785F8();
  (*(*(v10 - 8) + 56))(v1, 1, 1, v10);
  (*(v4 + 16))(v2, v9, v3);
  sub_1D260E0F8(v25, v5, type metadata accessor for ImageKeyFaceLoader.Context);
  (*(v7 + 16))(v6, v26, v8);
  sub_1D2870F78();
  v11 = sub_1D2878558();
  v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v13 = (v33 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (*(v31 + 80) + v13 + 8) & ~*(v31 + 80);
  v15 = (v34 + *(v7 + 80) + v14) & ~*(v7 + 80);
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E85E0];
  *(v16 + 16) = v11;
  *(v16 + 24) = v17;
  (*(v4 + 32))(v16 + v12, v29, v28);
  *(v16 + v13) = v27;
  sub_1D260E2B8(v30, v16 + v14, type metadata accessor for ImageKeyFaceLoader.Context);
  (*(v7 + 32))(v16 + v15, v32, v8);
  v18 = sub_1D23C8C30(0, 0, v35, &unk_1D28982F0, v16);
  v0[23] = v18;
  v19 = swift_task_alloc();
  v0[24] = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA470, &unk_1D2884A40);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0, &unk_1D287D430);
  *v19 = v0;
  v19[1] = sub_1D2600AF8;
  v22 = v0[2];
  v23 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v22, v18, v20, v21, v23);
}

uint64_t sub_1D2600AF8()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 176);
  v4 = *(v2 + 168);
  if (v0)
  {
    v5 = sub_1D2600CE0;
  }

  else
  {
    v5 = sub_1D2600C34;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D2600C34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D2600CE0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D2600D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v7[3] = a1;
  v8 = sub_1D2871798();
  v7[8] = v8;
  v7[9] = *(v8 - 8);
  v7[10] = swift_task_alloc();
  v7[11] = swift_task_alloc();
  v7[12] = type metadata accessor for ImageKeyFaceLoader.Context(0);
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();
  v9 = sub_1D2873CB8();
  v7[15] = v9;
  v7[16] = *(v9 - 8);
  v7[17] = swift_task_alloc();
  v7[18] = type metadata accessor for ImageGeneration.PreviewImage(0);
  v7[19] = swift_task_alloc();
  v10 = type metadata accessor for ImageGeneration.PreviewStatus(0);
  v7[20] = v10;
  v7[21] = *(v10 - 8);
  v7[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDA30, &qword_1D2883F58);
  v7[23] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA750, &unk_1D2891990);
  v7[24] = v11;
  v7[25] = *(v11 - 8);
  v7[26] = swift_task_alloc();
  v7[27] = sub_1D2878568();
  v7[28] = sub_1D2878558();
  v13 = sub_1D28784F8();
  v7[29] = v13;
  v7[30] = v12;

  return MEMORY[0x1EEE6DFA0](sub_1D260105C, v13, v12);
}

uint64_t sub_1D260105C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDA40, &unk_1D28982A0);
  sub_1D2878658();
  v1 = sub_1D2878558();
  v0[31] = v1;
  v2 = swift_task_alloc();
  v0[32] = v2;
  *v2 = v0;
  v2[1] = sub_1D260113C;
  v3 = v0[23];
  v4 = v0[24];
  v5 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DB90](v3, v1, v5, v4, v0 + 2);
}

uint64_t sub_1D260113C()
{
  v2 = *v1;

  v3 = *(v2 + 232);
  v4 = *(v2 + 240);
  if (v0)
  {
    v5 = sub_1D26018B0;
  }

  else
  {
    v5 = sub_1D260125C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D260125C()
{
  v72 = v0;
  v1 = v0[23];
  if ((*(v0[21] + 48))(v1, 1, v0[20]) != 1)
  {
    sub_1D260E2B8(v1, v0[22], type metadata accessor for ImageGeneration.PreviewStatus);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1D260E160(v0[22], type metadata accessor for ImageGeneration.PreviewStatus);
      v3 = sub_1D2878558();
      v0[31] = v3;
      v4 = swift_task_alloc();
      v0[32] = v4;
      *v4 = v0;
      v4[1] = sub_1D260113C;
      v5 = v0[23];
      v6 = v0[24];
      v7 = MEMORY[0x1E69E85E0];
      v8 = v0 + 2;
      v9 = v3;

      return MEMORY[0x1EEE6DB90](v5, v9, v7, v6, v8);
    }

    v10 = v0[22];
    v11 = v0[18];
    v12 = v0[19];
    v13 = v0[14];
    v14 = v0[12];
    v15 = v0[9];
    v65 = v0[8];
    v68 = v0[11];
    v16 = v0[6];
    v61 = v0[13];
    loga = v0[7];

    sub_1D260E2B8(v10, v12, type metadata accessor for ImageGeneration.PreviewImage);
    v59 = *(v11 + 24);
    v60 = v12;
    sub_1D2494CB0(v12 + v59, v16 + *(v14 + 20));
    sub_1D2872568();
    sub_1D260E0F8(v16, v13, type metadata accessor for ImageKeyFaceLoader.Context);
    sub_1D260E0F8(v16, v61, type metadata accessor for ImageKeyFaceLoader.Context);
    (*(v15 + 16))(v68, loga, v65);
    v17 = sub_1D2873CA8();
    v18 = sub_1D28789F8();
    if (os_log_type_enabled(v17, v18))
    {
      v69 = v18;
      v19 = v0[14];
      v20 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v71 = v66;
      *v20 = 136315650;
      v21 = *(v19 + 8);
      v22 = v0[14];
      log = v17;
      if (v21)
      {
        v23 = *v22;
        v24 = v21;
      }

      else
      {
        v23 = 0;
        v24 = 0xE000000000000000;
      }

      sub_1D2870F68();
      sub_1D260E160(v22, type metadata accessor for ImageKeyFaceLoader.Context);
      v35 = sub_1D23D7C84(v23, v24, &v71);

      *(v20 + 4) = v35;
      *(v20 + 12) = 2080;
      type metadata accessor for PhotosPersonAsset(0);
      v36 = objc_opt_self();
      v37 = sub_1D2878068();
      v38 = [v36 uuidFromLocalIdentifier_];

      if (!v38)
      {
        __break(1u);
        return MEMORY[0x1EEE6DB90](v5, v9, v7, v6, v8);
      }

      v62 = v0[26];
      v57 = v0[25];
      v58 = v0[24];
      v54 = v0[16];
      v55 = v0[15];
      v56 = v0[17];
      v39 = v0[13];
      v40 = v0[10];
      v41 = v0[11];
      v43 = v0[8];
      v42 = v0[9];
      v44 = sub_1D28780A8();
      v46 = v45;

      sub_1D260E160(v39, type metadata accessor for ImageKeyFaceLoader.Context);
      v47 = sub_1D23D7C84(v44, v46, &v71);

      *(v20 + 14) = v47;
      *(v20 + 22) = 2048;
      sub_1D2871788();
      sub_1D2871718();
      v49 = v48;
      v50 = *(v42 + 8);
      v50(v40, v43);
      v50(v41, v43);
      *(v20 + 24) = v49;
      _os_log_impl(&dword_1D226E000, log, v69, "Finished generating face %s-%s (%f seconds).", v20, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D38A3520](v66, -1, -1);
      MEMORY[0x1D38A3520](v20, -1, -1);

      (*(v54 + 8))(v56, v55);
      (*(v57 + 8))(v62, v58);
    }

    else
    {
      v25 = v0[25];
      v67 = v0[24];
      v70 = v0[26];
      v26 = v17;
      v27 = v0[16];
      v28 = v0[17];
      v30 = v0[14];
      v29 = v0[15];
      v31 = v0[13];
      v32 = v0[11];
      v34 = v0[8];
      v33 = v0[9];

      (*(v33 + 8))(v32, v34);
      sub_1D260E160(v30, type metadata accessor for ImageKeyFaceLoader.Context);
      (*(v27 + 8))(v28, v29);
      (*(v25 + 8))(v70, v67);
      sub_1D260E160(v31, type metadata accessor for ImageKeyFaceLoader.Context);
    }

    v51 = v0[19];
    sub_1D22D7044(v60 + v59, v0[3]);
    sub_1D260E160(v51, type metadata accessor for ImageGeneration.PreviewImage);
    goto LABEL_15;
  }

  v2 = v0[3];
  (*(v0[25] + 8))(v0[26], v0[24]);

  *(v2 + 32) = 0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
LABEL_15:

  v52 = v0[1];

  return v52();
}

uint64_t sub_1D26018B0()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];

  (*(v1 + 8))(v2, v3);

  v4 = v0[1];

  return v4();
}

double sub_1D26019B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60, &qword_1D28811F0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_1D28785F8();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_1D2878568();
  sub_1D2870F78();
  v6 = sub_1D2878558();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = a1;
  sub_1D22AE01C(0, 0, v4, &unk_1D28982E0, v7);

  return result;
}

uint64_t sub_1D2601AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1D2878568();
  *(v4 + 24) = sub_1D2878558();
  v6 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D2601B70, v6, v5);
}

uint64_t sub_1D2601B70()
{

  sub_1D25FAC8C();
  sub_1D23B3A78();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D2601BE4()
{
  sub_1D28797D8();
  sub_1D2877F38();
  v1 = v0 + *(type metadata accessor for ImageKeyFaceLoader.Context.ID(0) + 20);
  sub_1D2877F38();
  v2 = type metadata accessor for GeneratedPreviewOptions(0);
  sub_1D2871F98();
  sub_1D2877F38();

  if (*(v1 + *(v2 + 24) + 8))
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

uint64_t sub_1D2601CC8(uint64_t a1, uint64_t a2)
{
  sub_1D2877F38();
  v4 = v2 + *(a2 + 20);
  sub_1D2877F38();
  v5 = type metadata accessor for GeneratedPreviewOptions(0);
  sub_1D2871F98();
  sub_1D2877F38();

  if (!*(v4 + *(v5 + 24) + 8))
  {
    return sub_1D28797F8();
  }

  sub_1D28797F8();

  return sub_1D2877F38();
}

uint64_t sub_1D2601DA0(uint64_t a1, uint64_t a2)
{
  sub_1D28797D8();
  sub_1D2877F38();
  v4 = v2 + *(a2 + 20);
  sub_1D2877F38();
  v5 = type metadata accessor for GeneratedPreviewOptions(0);
  sub_1D2871F98();
  sub_1D2877F38();

  if (*(v4 + *(v5 + 24) + 8))
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

uint64_t sub_1D2601E78(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_1D2879618() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 20);

  return sub_1D24992D0((a1 + v7), (a2 + v7));
}

void sub_1D2601EFC(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for PhotosPersonAsset(0);
  v5 = objc_opt_self();
  v6 = sub_1D2878068();
  v7 = [v5 uuidFromLocalIdentifier_];

  if (v7)
  {
    v8 = sub_1D28780A8();
    v10 = v9;

    v11 = *(a1 + 20);
    v12 = type metadata accessor for ImageKeyFaceLoader.Context.ID(0);
    sub_1D260E0F8(v2 + v11, a2 + *(v12 + 20), type metadata accessor for GeneratedPreviewOptions);
    *a2 = v8;
    a2[1] = v10;
  }

  else
  {
    __break(1u);
  }
}

uint64_t ImageKeyFaceLoader.deinit()
{

  return v0;
}

uint64_t ImageKeyFaceLoader.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t ImageKeyFaceLoader.__allocating_init(servicesFetcher:)(uint64_t a1)
{
  v1 = sub_1D23C6DDC();
  sub_1D23C6CA0();
  swift_allocObject();
  v2 = sub_1D260DDB0(v1);

  return v2;
}

void sub_1D2602100(uint64_t *a2@<X8>)
{
  v3 = sub_1D23C6DDC();
  sub_1D23C6CA0();
  swift_allocObject();
  v4 = sub_1D260DDB0(v3);

  *a2 = v4;
}

uint64_t sub_1D260218C(uint64_t a1, char a2, uint64_t a3, char a4)
{
  *(v4 + 24) = a1;
  *(v4 + 32) = a3;
  *(v4 + 64) = a2;
  *(v4 + 65) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D26021B4, 0, 0);
}

uint64_t sub_1D26021B4()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  v3[2] = v2;
  v3[3] = v0 + 8;
  v3[4] = v1;
  v3[5] = v0 + 65;
  v4 = swift_task_alloc();
  v0[6] = v4;
  v5 = sub_1D28731D8();
  *v4 = v0;
  v4[1] = sub_1D26022C4;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000010, 0x80000001D28BE490, sub_1D260F30C, v3, v5);
}

uint64_t sub_1D26022C4()
{
  v2 = *v1;
  v2[7] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D2602404, 0, 0);
  }

  else
  {

    v3 = v2[2];
    v4 = v2[1];

    return v4(v3);
  }
}

uint64_t sub_1D2602404()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D2602468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D2602490, 0, 0);
}

uint64_t sub_1D2602490()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = *(v0 + 40);
  *(v1 + 16) = *(v0 + 24);
  *(v1 + 32) = v2;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC0F0, &qword_1D288B3A0);
  *v3 = v0;
  v3[1] = sub_1D260259C;
  v5 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD000000000000010, 0x80000001D28BE490, sub_1D260EEAC, v1, v4);
}

uint64_t sub_1D260259C()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D260F5F4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1D26026D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D2602700, 0, 0);
}

uint64_t sub_1D2602700()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = *(v0 + 40);
  *(v1 + 16) = *(v0 + 24);
  *(v1 + 32) = v2;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA468, &qword_1D2883628);
  *v3 = v0;
  v3[1] = sub_1D260280C;
  v5 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD000000000000010, 0x80000001D28BE490, sub_1D260E28C, v1, v4);
}

uint64_t sub_1D260280C()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D2602948, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1D2602948()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1D26029AC(uint64_t a1, os_unfair_lock_s *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v7 = a3;
  os_unfair_lock_lock(a2 + 10);
  sub_1D2602F64(&a2[12], v7, a4, a1, a2, v5);
  v11 = v10;
  v12 = ~v10;
  os_unfair_lock_unlock(a2 + 10);
  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCAA0, &qword_1D288E820);
    if (v11)
    {
      sub_1D2878508();
    }

    else
    {
      sub_1D2878518();
    }
  }
}

uint64_t sub_1D2602A88(uint64_t (*a1)(uint64_t a1), os_unfair_lock_s *a2, uint64_t *a3, uint64_t (*a4)(uint64_t a1), uint64_t a5)
{
  v28 = a4;
  v29 = a5;
  v27 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC0F0, &qword_1D288B3A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v26 = &v25 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEFB8, &qword_1D2898308);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEFB0, &qword_1D2898300);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v25 - v20);
  os_unfair_lock_lock(a2 + 10);
  v22 = v28;
  v28 = a1;
  sub_1D2603D8C(&a2[12], v27, v22, a1, a2, v29, v21);
  os_unfair_lock_unlock(a2 + 10);
  sub_1D22BD1D0(v21, v18, &qword_1EC6DEFB0, &qword_1D2898300);
  if ((*(v10 + 48))(v18, 1, v9) == 1)
  {
    sub_1D22BD238(v21, &qword_1EC6DEFB0, &qword_1D2898300);
    v23 = v18;
  }

  else
  {
    sub_1D22EC9BC(v18, v15, &qword_1EC6DEFB8, &qword_1D2898308);
    sub_1D22BD1D0(v15, v12, &qword_1EC6DEFB8, &qword_1D2898308);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v30 = *v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA60, &unk_1D28972A0);
      sub_1D2878508();
    }

    else
    {
      sub_1D22EC9BC(v12, v26, &qword_1EC6DC0F0, &qword_1D288B3A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA60, &unk_1D28972A0);
      sub_1D2878518();
    }

    sub_1D22BD238(v15, &qword_1EC6DEFB8, &qword_1D2898308);
    v23 = v21;
  }

  return sub_1D22BD238(v23, &qword_1EC6DEFB0, &qword_1D2898300);
}

uint64_t sub_1D2602DD0(uint64_t (*a1)(uint64_t a1), os_unfair_lock_s *a2, void *a3, uint64_t a4, uint64_t a5)
{
  os_unfair_lock_lock(a2 + 10);
  sub_1D2604F8C(&a2[12], a3, a4, a1, a2, a5, v17);
  os_unfair_lock_unlock(a2 + 10);
  sub_1D22BD1D0(v17, &v13, &qword_1EC6DEF78, &qword_1D28981E0);
  if (v14[24] == 255)
  {
    sub_1D22BD238(v17, &qword_1EC6DEF78, &qword_1D28981E0);
    v10 = &v13;
  }

  else
  {
    v15 = v13;
    v16[0] = *v14;
    *(v16 + 9) = *&v14[9];
    sub_1D22BD1D0(&v15, &v13, &qword_1EC6DEF80, &unk_1D2898200);
    if (v14[24])
    {
      v12[0] = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA48, &qword_1D2897270);
      sub_1D2878508();
    }

    else
    {
      sub_1D22D79FC(&v13, v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA48, &qword_1D2897270);
      sub_1D2878518();
    }

    sub_1D22BD238(&v15, &qword_1EC6DEF80, &unk_1D2898200);
    v10 = v17;
  }

  return sub_1D22BD238(v10, &qword_1EC6DEF78, &qword_1D28981E0);
}

void sub_1D2602F64(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, _BYTE *a5, int a6)
{
  v135 = a6;
  v127 = a4;
  v128 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEC78, &unk_1D28972F0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v114 = &v106 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60, &qword_1D28811F0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v113 = &v106 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCAA0, &qword_1D288E820);
  v125 = *(v15 - 8);
  v126 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v120 = &v106 - v16;
  v17 = sub_1D28785F8();
  v18 = *(v17 - 8);
  v123 = v17;
  v124 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v109 = &v106 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v115 = &v106 - v21;
  v112 = v22;
  MEMORY[0x1EEE9AC00](v23);
  v122 = &v106 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEC88, &qword_1D2897310);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v119 = &v106 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v106 - v28;
  v30 = sub_1D2871818();
  v116 = *(v30 - 8);
  v117 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v118 = &v106 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v106 - v33;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA818, &unk_1D2884490);
  v132 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v111 = &v106 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v121 = &v106 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v106 - v39;
  v42 = MEMORY[0x1EEE9AC00](v41);
  v44 = &v106 - v43;
  v45 = a1[3];
  if (v45)
  {
    v7 = a1;
    v136 = a2;
    v45(&v133, &v136, v42);
    if (v134 != 255)
    {
      return;
    }
  }

  LODWORD(v131) = a2;
  if (sub_1D28786D8())
  {
    sub_1D2878538();
    sub_1D260E0B0(&unk_1ED89CFC0, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
    swift_allocError();
    sub_1D2877E68();
    LOBYTE(v133) = 1;
    return;
  }

  v46 = *a1;
  v47 = *(*a1 + 16);
  v110 = a1;
  if (!v47 || (v48 = sub_1D25DB1BC(), a1 = v110, (v49 & 1) == 0) || (v107 = *(v46 + 36), v108 = v48, sub_1D26061B8(v44, v48, v107, 0, v46), v7 = *&v44[*(v129 + 60)], sub_1D2870F78(), sub_1D22BD238(v44, &qword_1EC6DA818, &unk_1D2884490), (v106 = v7) == 0))
  {
    v130 = a5;
    v109 = v6;
    v65 = a1[1];
    v66 = *(v65 + 16);
    if (!v66)
    {
LABEL_26:
      v70 = v65;
      v71 = v129;
      v72 = *(v129 + 52);
      a5 = v121;
      sub_1D28786E8();
      v73 = sub_1D25D8BB4(MEMORY[0x1E69E7CC0]);
      *a5 = v135;
      v74 = v71[14];
      *&a5[v74] = v73;
      v119 = v71[15];
      *&a5[v119] = 0;
      a5[v71[16]] = 0;
      v75 = v120;
      (*(v125 + 16))(v120, v127, v126);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v133 = *&a5[v74];
      sub_1D24E7784(v75, v128, isUniquelyReferenced_nonNull_native);
      *&a5[v74] = v133;
      if (v110[2] >= *(v130 + 32))
      {
        v67 = v111;
        sub_1D22BD1D0(a5, v111, &qword_1EC6DA818, &unk_1D2884490);
        v7 = v70;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
LABEL_42:
          v7 = sub_1D27CC7A8(0, *(v7 + 16) + 1, 1, v7);
        }

        v89 = *(v7 + 16);
        v88 = *(v7 + 24);
        if (v89 >= v88 >> 1)
        {
          v7 = sub_1D27CC7A8((v88 > 1), v89 + 1, 1, v7);
        }

        *(v7 + 16) = v89 + 1;
        sub_1D22EC9BC(v67, v7 + ((*(v132 + 80) + 32) & ~*(v132 + 80)) + *(v132 + 72) * v89, &qword_1EC6DA818, &unk_1D2884490);
        v110[1] = v7;
        sub_1D22BD238(a5, &qword_1EC6DA818, &unk_1D2884490);
      }

      else
      {
        v77 = a5;
        v78 = v123;
        v79 = v124;
        v80 = *(v124 + 16);
        v81 = v113;
        v128 = v110[2];
        v80(v113, &v77[v72], v123);
        (*(v79 + 56))(v81, 0, 1, v78);
        v82 = v122;
        v80(v122, &v77[v72], v78);
        v83 = (*(v79 + 80) + 42) & ~*(v79 + 80);
        v84 = swift_allocObject();
        *(v84 + 16) = 0;
        *(v84 + 24) = 0;
        *(v84 + 32) = v130;
        *(v84 + 40) = v135;
        *(v84 + 41) = v131;
        (*(v79 + 32))(v84 + v83, v82, v78);
        sub_1D2870F78();
        v85 = sub_1D22AE01C(0, 0, v81, &unk_1D28983A0, v84);
        *&v77[v119] = v85;
        v86 = v114;
        sub_1D22BD1D0(v77, v114, &qword_1EC6DA818, &unk_1D2884490);
        (*(v132 + 56))(v86, 0, 1, v71);
        v87 = v110;
        sub_1D25CE074(v86, v131);
        v87[2] = v128 + 1;
        sub_1D22BD238(v77, &qword_1EC6DA818, &unk_1D2884490);
      }

      return;
    }

    v67 = 0;
    while (1)
    {
      if (v67 >= *(v65 + 16))
      {
        __break(1u);
        goto LABEL_42;
      }

      a5 = ((*(v132 + 80) + 32) & ~*(v132 + 80));
      v68 = v65;
      v69 = *(v132 + 72) * v67;
      sub_1D22BD1D0(&a5[v65 + v69], v40, &qword_1EC6DA818, &unk_1D2884490);
      swift_getAtKeyPath();
      v7 = v133;
      sub_1D22BD238(v40, &qword_1EC6DA818, &unk_1D2884490);
      if (v7 == v131)
      {
        break;
      }

      ++v67;
      v65 = v68;
      if (v66 == v67)
      {
        goto LABEL_26;
      }
    }

    (*(v116 + 16))(v118, v128, v117);
    v91 = v125;
    v90 = v126;
    v92 = v119;
    (*(v125 + 16))(v119, v127, v126);
    (*(v91 + 56))(v92, 0, 1, v90);
    v93 = v68;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v93 = sub_1D278BC7C(v68);
    }

    v94 = v129;
    v95 = v122;
    if (v67 >= *(v93 + 16))
    {
      __break(1u);
    }

    else
    {
      v96 = &a5[v93 + v69];
      sub_1D25CDE1C(v119, v118);
      v110[1] = v93;
      sub_1D28786E8();
      if (v67 < *(v93 + 16))
      {
        v97 = v93;
        v98 = *(v94 + 52);
        v99 = v124;
        v100 = *(v124 + 16);
        v132 = v96;
        v101 = &v96[v98];
        v102 = v115;
        v103 = v123;
        v100(v115, v101, v123);
        v104 = sub_1D2878598();
        v105 = *(v99 + 8);
        v105(v102, v103);
        v105(v95, v103);
        if ((v104 & 1) == 0)
        {
          return;
        }

        sub_1D28786E8();
        if (v67 < v97[2])
        {
          (*(v124 + 40))(v132 + *(v129 + 52), v95, v123);
          v110[1] = v97;
          return;
        }

        goto LABEL_48;
      }
    }

    __break(1u);
    goto LABEL_45;
  }

  (*(v116 + 16))(v34, v128, v117);
  v51 = v125;
  v50 = v126;
  (*(v125 + 16))(v29, v127, v126);
  (*(v51 + 56))(v29, 0, 1, v50);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v133 = v46;
    sub_1D24EB704();
    v46 = v133;
  }

  v52 = v107;
  v53 = v108;
  if (v108 < 0 || v108 >= 1 << *(v46 + 32))
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if ((*(v46 + 8 * (v108 >> 6) + 64) & (1 << v108)) == 0)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v130 = 1 << v108;
  v131 = v108 >> 6;
  if (v107 != *(v46 + 36))
  {
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v54 = v129;
  v132 = *(v132 + 72) * v108;
  sub_1D25CDE1C(v29, v34);
  *v110 = v46;
  v55 = v122;
  sub_1D28786E8();
  sub_1D26061B8(v40, v53, v52, 0, v46);
  v57 = v123;
  v56 = v124;
  v58 = v46;
  v59 = v115;
  (*(v124 + 16))(v115, &v40[*(v54 + 52)], v123);
  v60 = v40;
  v61 = v55;
  sub_1D22BD238(v60, &qword_1EC6DA818, &unk_1D2884490);
  LOBYTE(v54) = sub_1D2878598();
  v62 = *(v56 + 8);
  v62(v59, v57);
  v62(v61, v57);
  if (v54)
  {
    sub_1D28786E8();
    sub_1D2878688();
    v62(v61, v57);
    v63 = v109;
    sub_1D28786E8();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v133 = v58;
      sub_1D24EB704();
      v58 = v133;
    }

    v64 = v110;
    if (v108 < 1 << *(v58 + 32))
    {
      if ((*(v58 + 8 * v131 + 64) & v130) != 0)
      {
        if (v107 == *(v58 + 36))
        {
          (*(v124 + 40))(*(v58 + 56) + *(v129 + 52) + v132, v63, v57);

          *v64 = v58;
          return;
        }

        goto LABEL_51;
      }

LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      return;
    }

LABEL_49:
    __break(1u);
    goto LABEL_50;
  }
}

void sub_1D2603D8C(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t a1)@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v168 = a7;
  v155 = a6;
  v156 = a5;
  v161 = a4;
  v162 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEC58, &qword_1D2898330);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v144 = &v135 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60, &qword_1D28811F0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v150 = &v135 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA60, &unk_1D28972A0);
  v159 = *(v13 - 8);
  v160 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v148 = &v135 - v14;
  v15 = sub_1D28785F8();
  v163 = *(v15 - 8);
  v164 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v137 = &v135 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v151 = &v135 - v18;
  v143 = v19;
  MEMORY[0x1EEE9AC00](v20);
  v158 = &v135 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEC68, &qword_1D2898320);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v147 = &v135 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v140 = &v135 - v25;
  v26 = sub_1D2871818();
  v153 = *(v26 - 8);
  v154 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v145 = &v135 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v139 = &v135 - v29;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA810, &qword_1D28972B0);
  v157 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165);
  v142 = &v135 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v149 = &v135 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v138 = &v135 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v135 - v36;
  v38 = type metadata accessor for GeneratedPreviewOptions(0);
  v141 = *(v38 - 8);
  v39 = *(v141 + 64);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v146 = &v135 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v152 = (&v135 - v41);
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v135 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEFB0, &qword_1D2898300);
  MEMORY[0x1EEE9AC00](v45 - 8);
  v47 = &v135 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEFB8, &qword_1D2898308);
  v49 = *(v48 - 8);
  v51 = MEMORY[0x1EEE9AC00](v48);
  v53 = &v135 - v52;
  v54 = a1[3];
  v166 = a1;
  v167 = v55;
  if (v54)
  {
    v56 = a2;
    v57 = a2;
    v58 = v49;
    v59 = v50;
    v54(v57, v51);
    v60 = v59;
    v49 = v58;
    if ((*(v58 + 48))(v47, 1, v60) != 1)
    {
      sub_1D22EC9BC(v47, v53, &qword_1EC6DEFB8, &qword_1D2898308);
      v61 = v168;
      sub_1D22EC9BC(v53, v168, &qword_1EC6DEFB8, &qword_1D2898308);
      (*(v58 + 56))(v61, 0, 1, v167);
      return;
    }
  }

  else
  {
    v56 = a2;
    (*(v49 + 56))(v47, 1, 1, v50, v51);
  }

  sub_1D22BD238(v47, &qword_1EC6DEFB0, &qword_1D2898300);
  v62 = sub_1D28786D8();
  if (v62)
  {
    sub_1D2878538();
    sub_1D260E0B0(&unk_1ED89CFC0, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
    v63 = swift_allocError();
    sub_1D2877E68();
    v64 = v168;
    *v168 = v63;
    v65 = v167;
    swift_storeEnumTagMultiPayload();
    (*(v49 + 56))(v64, 0, 1, v65);
    return;
  }

  v66 = v165;
  v67 = *v166;
  v68 = v56;
  if (*(*v166 + 16))
  {
    v62 = sub_1D25D0488(v56);
    if (v69)
    {
      v70 = *(v67 + 36);
      v136 = v62;
      v135 = v70;
      sub_1D2606280(v44, v37, v62, v70, 0, v67, type metadata accessor for GeneratedPreviewOptions, type metadata accessor for GeneratedPreviewOptions, &qword_1EC6DA810, &qword_1D28972B0);
      sub_1D260E160(v44, type metadata accessor for GeneratedPreviewOptions);
      v71 = *&v37[v66[15]];
      sub_1D2870F78();
      v62 = sub_1D22BD238(v37, &qword_1EC6DA810, &qword_1D28972B0);
      if (v71)
      {
        v72 = v139;
        (*(v153 + 16))(v139, v162, v154);
        v74 = v159;
        v73 = v160;
        v75 = v140;
        (*(v159 + 16))(v140, v161, v160);
        (*(v74 + 56))(v75, 0, 1, v73);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v170 = v67;
          sub_1D24EDFEC();
          v67 = v170;
        }

        v76 = v135;
        v161 = v71;
        v162 = v49;
        if ((v136 & 0x8000000000000000) == 0 && v136 < 1 << *(v67 + 32))
        {
          if ((*(v67 + 8 * (v136 >> 6) + 64) & (1 << v136)) != 0)
          {
            v159 = 1 << v136;
            v160 = v136 >> 6;
            if (v135 == *(v67 + 36))
            {
              v77 = v165;
              v157 = *(v157 + 72) * v136;
              v78 = v75;
              v79 = v136;
              sub_1D25CF3D8(v78, v72);
              *v166 = v67;
              v80 = v158;
              sub_1D28786E8();
              v81 = v152;
              v82 = v138;
              sub_1D2606280(v152, v138, v79, v76, 0, v67, type metadata accessor for GeneratedPreviewOptions, type metadata accessor for GeneratedPreviewOptions, &qword_1EC6DA810, &qword_1D28972B0);
              sub_1D260E160(v81, type metadata accessor for GeneratedPreviewOptions);
              v83 = v163;
              v84 = v164;
              v85 = v151;
              (*(v163 + 16))(v151, v82 + *(v77 + 52), v164);
              sub_1D22BD238(v82, &qword_1EC6DA810, &qword_1D28972B0);
              LOBYTE(v77) = sub_1D2878598();
              v86 = *(v83 + 8);
              v86(v85, v84);
              v86(v80, v84);
              if (v77)
              {
                sub_1D28786E8();
                sub_1D2878688();
                v86(v80, v84);
                v87 = v137;
                sub_1D28786E8();
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v170 = v67;
                  sub_1D24EDFEC();
                  v67 = v170;
                }

                v88 = v166;
                if (v136 < 1 << *(v67 + 32))
                {
                  if ((*(v67 + 8 * v160 + 64) & v159) != 0)
                  {
                    v89 = v162;
                    if (v135 == *(v67 + 36))
                    {
                      (*(v163 + 40))(*(v67 + 56) + *(v165 + 52) + v157, v87, v164);

                      *v88 = v67;
LABEL_39:
                      (*(v89 + 56))(v168, 1, 1, v167);
                      return;
                    }

                    goto LABEL_51;
                  }

LABEL_50:
                  __break(1u);
LABEL_51:
                  __break(1u);
                  return;
                }

LABEL_49:
                __break(1u);
                goto LABEL_50;
              }

LABEL_38:
              v89 = v162;
              goto LABEL_39;
            }

LABEL_48:
            __break(1u);
            goto LABEL_49;
          }

LABEL_47:
          __break(1u);
          goto LABEL_48;
        }

LABEL_46:
        __break(1u);
        goto LABEL_47;
      }
    }
  }

  v90 = v166;
  v91 = v166[1];
  MEMORY[0x1EEE9AC00](v62);
  v92 = v156;
  v133 = v156;
  v134 = v68;
  v93 = v169;
  v94 = sub_1D25A628C(sub_1D260EEB8, (&v135 - 4), v91);
  v169 = v93;
  if (v95)
  {
    v154 = v68;
    v96 = v149;
    sub_1D260E0F8(v155, v149, type metadata accessor for GeneratedPreviewOptions);
    v153 = v66[13];
    sub_1D28786E8();
    v97 = sub_1D25D9B60(MEMORY[0x1E69E7CC0]);
    v98 = v66[14];
    *(v96 + v98) = v97;
    v151 = v66[15];
    *&v151[v96] = 0;
    *(v96 + v66[16]) = 0;
    v99 = v92;
    v100 = v148;
    (*(v159 + 16))(v148, v161, v160);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v170 = *(v96 + v98);
    v102 = v100;
    v103 = v99;
    sub_1D24E968C(v102, v162, isUniquelyReferenced_nonNull_native);
    *(v96 + v98) = v170;
    v104 = *(v90 + 16);
    if (v104 < *(v99 + 32))
    {
      v105 = v163;
      v106 = v164;
      v107 = *(v163 + 16);
      v108 = v150;
      v162 = v104;
      v107(v150, v96 + v153, v164);
      (*(v105 + 56))(v108, 0, 1, v106);
      v161 = type metadata accessor for GeneratedPreviewOptions;
      sub_1D260E0F8(v155, v152, type metadata accessor for GeneratedPreviewOptions);
      sub_1D260E0F8(v154, v146, type metadata accessor for GeneratedPreviewOptions);
      v107(v158, v96 + v153, v106);
      v109 = *(v141 + 80);
      v110 = (v109 + 40) & ~v109;
      v111 = (v39 + v109 + v110) & ~v109;
      v112 = (v39 + *(v105 + 80) + v111) & ~*(v105 + 80);
      v113 = swift_allocObject();
      *(v113 + 2) = 0;
      *(v113 + 3) = 0;
      *(v113 + 4) = v103;
      v114 = &v113[v110];
      v115 = v152;
      sub_1D260E2B8(v152, v114, type metadata accessor for GeneratedPreviewOptions);
      sub_1D260E2B8(v146, &v113[v111], type metadata accessor for GeneratedPreviewOptions);
      (*(v105 + 32))(&v113[v112], v158, v164);
      sub_1D2870F78();
      v116 = sub_1D22AE01C(0, 0, v150, &unk_1D2898340, v113);
      *&v151[v96] = v116;
      sub_1D260E0F8(v154, v115, v161);
      v117 = v144;
      sub_1D22BD1D0(v96, v144, &qword_1EC6DA810, &qword_1D28972B0);
      (*(v157 + 56))(v117, 0, 1, v165);
      v118 = v117;
      v119 = v166;
      sub_1D25CF630(v118, v115);
      v119[2] = v162 + 1;
      (*(v49 + 56))(v168, 1, 1, v167);
      sub_1D22BD238(v96, &qword_1EC6DA810, &qword_1D28972B0);
      return;
    }

    v92 = v142;
    sub_1D22BD1D0(v96, v142, &qword_1EC6DA810, &qword_1D28972B0);
    v123 = v96;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_34;
    }

    goto LABEL_44;
  }

  v120 = v94;
  v90 = v145;
  (*(v153 + 16))(v145, v162, v154);
  v122 = v159;
  v121 = v160;
  v123 = v147;
  (*(v159 + 16))(v147, v161, v160);
  (*(v122 + 56))(v123, 0, 1, v121);
  v124 = swift_isUniquelyReferenced_nonNull_native();
  v125 = v158;
  if (v124)
  {
    if ((v120 & 0x8000000000000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v91 = sub_1D278BD80(v91);
  if ((v120 & 0x8000000000000000) != 0)
  {
    goto LABEL_41;
  }

LABEL_28:
  v162 = v49;
  if (v120 < v91[2])
  {
    v49 = v91 + ((*(v157 + 80) + 32) & ~*(v157 + 80)) + *(v157 + 72) * v120;
    sub_1D25CF3D8(v123, v90);
    v166[1] = v91;
    sub_1D28786E8();
    if (v120 < v91[2])
    {
      v126 = v163;
      v127 = v164;
      v128 = v151;
      (*(v163 + 16))(v151, v49 + v66[13], v164);
      v129 = sub_1D2878598();
      v130 = *(v126 + 8);
      v130(v128, v127);
      v130(v125, v127);
      if ((v129 & 1) == 0)
      {
        goto LABEL_38;
      }

      sub_1D28786E8();
      if (v120 < v91[2])
      {
        (*(v163 + 40))(v49 + *(v165 + 52), v125, v164);
        v166[1] = v91;
        goto LABEL_38;
      }

      __break(1u);
      goto LABEL_46;
    }

    goto LABEL_43;
  }

LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  v91 = sub_1D27CD040(0, v91[2] + 1, 1, v91);
LABEL_34:
  v132 = v91[2];
  v131 = v91[3];
  if (v132 >= v131 >> 1)
  {
    v91 = sub_1D27CD040((v131 > 1), v132 + 1, 1, v91);
  }

  v91[2] = v132 + 1;
  sub_1D22EC9BC(v92, v91 + ((*(v157 + 80) + 32) & ~*(v157 + 80)) + *(v157 + 72) * v132, &qword_1EC6DA810, &qword_1D28972B0);
  *(v90 + 8) = v91;
  (*(v49 + 56))(v168, 1, 1, v167);
  sub_1D22BD238(v123, &qword_1EC6DA810, &qword_1D28972B0);
}

void sub_1D2604F8C(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t a1)@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v154 = a6;
  v162 = a3;
  v163 = a5;
  v161 = a4;
  v165 = a7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEC38, &qword_1D2898220);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v144 = &v132 - v10;
  v11 = type metadata accessor for ImageKeyFaceLoader.Context(0);
  v142 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v143 = v12;
  v149 = &v132 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60, &qword_1D28811F0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v150 = &v132 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA48, &qword_1D2897270);
  v159 = *(v15 - 8);
  v160 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v147 = &v132 - v16;
  v156 = sub_1D28785F8();
  v155 = *(v156 - 8);
  v17 = *(v155 + 64);
  MEMORY[0x1EEE9AC00](v156);
  v136 = &v132 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v151 = &v132 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v158 = &v132 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEC48, &qword_1D2898210);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v146 = &v132 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v139 = &v132 - v25;
  v26 = sub_1D2871818();
  v153 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v145 = &v132 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v138 = &v132 - v29;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA808, &unk_1D2884480);
  v157 = *(v164 - 8);
  MEMORY[0x1EEE9AC00](v164);
  v141 = &v132 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v148 = &v132 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v137 = &v132 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v132 - v36;
  v38 = type metadata accessor for ImageKeyFaceLoader.Context.ID(0);
  v140 = *(v38 - 8);
  v39 = *(v140 + 64);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v152 = (&v132 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = MEMORY[0x1EEE9AC00](v40);
  v43 = &v132 - v42;
  v44 = a1[3];
  if (v44)
  {
    v45 = a1;
    v46 = a2;
    v44(v166, a2, v41);
    if (v166[40] != 255)
    {
      *&v168[9] = *&v166[25];
      v167 = *v166;
      *v168 = *&v166[16];
      v47 = *&v166[16];
      v48 = v165;
      *v165 = *v166;
      *(v48 + 16) = v47;
      *(v48 + 25) = *&v168[9];
      return;
    }
  }

  else
  {
    v46 = a2;
    v45 = a1;
    memset(v166, 0, 40);
    v166[40] = -1;
  }

  sub_1D22BD238(v166, &qword_1EC6DEF78, &qword_1D28981E0);
  v49 = sub_1D28786D8();
  if (v49)
  {
    sub_1D2878538();
    sub_1D260E0B0(&unk_1ED89CFC0, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
    v50 = swift_allocError();
    sub_1D2877E68();
    v51 = v165;
    *v165 = v50;
    *(v51 + 40) = 1;
    return;
  }

  v52 = v45;
  v53 = *v45;
  v54 = *(*v45 + 16);
  v55 = v46;
  v135 = v52;
  if (!v54 || (v49 = sub_1D25D0F04(v46), v52 = v135, (v56 & 1) == 0) || (v57 = *(v53 + 36), v58 = v135, v134 = v49, v133 = v57, sub_1D2606280(v43, v37, v49, v57, 0, v53, type metadata accessor for ImageKeyFaceLoader.Context.ID, type metadata accessor for ImageKeyFaceLoader.Context.ID, &qword_1EC6DA808, &unk_1D2884480), sub_1D260E160(v43, type metadata accessor for ImageKeyFaceLoader.Context.ID), v59 = *&v37[*(v164 + 60)], sub_1D2870F78(), v52 = v58, v49 = sub_1D22BD238(v37, &qword_1EC6DA808, &unk_1D2884480), (v132 = v59) == 0))
  {
    v80 = v52[1];
    MEMORY[0x1EEE9AC00](v49);
    v81 = v163;
    v130 = v163;
    v131 = v55;
    v82 = v169;
    v83 = sub_1D25A62B4(sub_1D260E298, (&v132 - 4), v80);
    v169 = v82;
    if (v84)
    {
      v153 = v55;
      v85 = v148;
      sub_1D260E0F8(v154, v148, type metadata accessor for ImageKeyFaceLoader.Context);
      v86 = v164;
      v146 = *(v164 + 52);
      sub_1D28786E8();
      v87 = sub_1D25D9FB4(MEMORY[0x1E69E7CC0]);
      v88 = v86[14];
      *(v85 + v88) = v87;
      v151 = v86[15];
      *&v151[v85] = 0;
      *(v85 + v86[16]) = 0;
      v89 = v147;
      (*(v159 + 16))(v147, v161, v160);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v167 = *(v85 + v88);
      sub_1D24E9A3C(v89, v162, isUniquelyReferenced_nonNull_native);
      v91 = v135;
      *(v85 + v88) = v167;
      if (v91[2] < *(v81 + 32))
      {
        v92 = v155;
        v93 = *(v155 + 16);
        v94 = v146;
        v95 = v150;
        v96 = v156;
        v162 = v91[2];
        v93(v150, v85 + v146, v156);
        (*(v92 + 56))(v95, 0, 1, v96);
        sub_1D260E0F8(v154, v149, type metadata accessor for ImageKeyFaceLoader.Context);
        v161 = type metadata accessor for ImageKeyFaceLoader.Context.ID;
        sub_1D260E0F8(v153, v152, type metadata accessor for ImageKeyFaceLoader.Context.ID);
        v97 = v85 + v94;
        v98 = v96;
        v93(v158, v97, v96);
        v99 = (*(v142 + 80) + 40) & ~*(v142 + 80);
        v100 = (v143 + *(v140 + 80) + v99) & ~*(v140 + 80);
        v101 = (v39 + *(v92 + 80) + v100) & ~*(v92 + 80);
        v102 = swift_allocObject();
        *(v102 + 2) = 0;
        *(v102 + 3) = 0;
        *(v102 + 4) = v163;
        sub_1D260E2B8(v149, &v102[v99], type metadata accessor for ImageKeyFaceLoader.Context);
        v103 = v152;
        sub_1D260E2B8(v152, &v102[v100], type metadata accessor for ImageKeyFaceLoader.Context.ID);
        (*(v92 + 32))(&v102[v101], v158, v98);
        sub_1D2870F78();
        v104 = sub_1D22AE01C(0, 0, v150, &unk_1D2898230, v102);
        *&v151[v85] = v104;
        sub_1D260E0F8(v153, v103, v161);
        v105 = v144;
        sub_1D22BD1D0(v85, v144, &qword_1EC6DA808, &unk_1D2884480);
        (*(v157 + 56))(v105, 0, 1, v164);
        v106 = v105;
        v107 = v135;
        sub_1D25CFC5C(v106, v103);
        v107[2] = v162 + 1;
        v108 = v165;
        *v165 = 0u;
        *(v108 + 16) = 0u;
        *(v108 + 32) = 0;
        *(v108 + 40) = -1;
        v109 = v85;
LABEL_39:
        sub_1D22BD238(v109, &qword_1EC6DA808, &unk_1D2884480);
        return;
      }

      v110 = v141;
      sub_1D22BD1D0(v85, v141, &qword_1EC6DA808, &unk_1D2884480);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_36:
        v128 = v80[2];
        v127 = v80[3];
        if (v128 >= v127 >> 1)
        {
          v80 = sub_1D27CD064((v127 > 1), v128 + 1, 1, v80);
        }

        v80[2] = v128 + 1;
        sub_1D22EC9BC(v110, v80 + ((*(v157 + 80) + 32) & ~*(v157 + 80)) + *(v157 + 72) * v128, &qword_1EC6DA808, &unk_1D2884480);
        v135[1] = v80;
        v129 = v165;
        *v165 = 0u;
        *(v129 + 16) = 0u;
        *(v129 + 32) = 0;
        *(v129 + 40) = -1;
        v109 = v85;
        goto LABEL_39;
      }

LABEL_44:
      v80 = sub_1D27CD064(0, v80[2] + 1, 1, v80);
      goto LABEL_36;
    }

    v110 = v83;
    v111 = v145;
    (*(v153 + 16))(v145, v162, v26);
    v113 = v159;
    v112 = v160;
    v114 = v146;
    (*(v159 + 16))(v146, v161, v160);
    v115 = *(v113 + 56);
    v85 = v113 + 56;
    v115(v114, 0, 1, v112);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v80 = sub_1D278BD94(v80);
    }

    v116 = v156;
    v117 = v155;
    v118 = v164;
    if ((v110 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v110 < v80[2])
    {
      v85 = v80 + ((*(v157 + 80) + 32) & ~*(v157 + 80)) + *(v157 + 72) * v110;
      sub_1D25CFA04(v114, v111);
      v135[1] = v80;
      v119 = v158;
      sub_1D28786E8();
      if (v110 < v80[2])
      {
        v120 = *(v118 + 52);
        v121 = *(v117 + 16);
        v163 = v85;
        v122 = v85 + v120;
        v123 = v151;
        v121(v151, v122, v116);
        v124 = sub_1D2878598();
        v125 = *(v117 + 8);
        v125(v123, v116);
        v125(v119, v116);
        if ((v124 & 1) == 0)
        {
          goto LABEL_34;
        }

        sub_1D28786E8();
        if (v110 < v80[2])
        {
          (*(v117 + 40))(v163 + *(v164 + 52), v119, v116);
          v135[1] = v80;
          goto LABEL_34;
        }

        __break(1u);
        goto LABEL_46;
      }

      goto LABEL_43;
    }

    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v60 = v138;
  (*(v153 + 16))(v138, v162, v26);
  v62 = v159;
  v61 = v160;
  v63 = v139;
  (*(v159 + 16))(v139, v161, v160);
  (*(v62 + 56))(v63, 0, 1, v61);
  v64 = v53;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    *&v167 = v53;
    sub_1D24EE950();
    v64 = v167;
  }

  v65 = v133;
  v66 = v134;
  if (v134 < 0 || v134 >= 1 << *(v64 + 32))
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if ((*(v64 + 8 * (v134 >> 6) + 64) & (1 << v134)) == 0)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v162 = 1 << v134;
  v163 = v134 >> 6;
  if (v133 != *(v64 + 36))
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v67 = v164;
  v160 = *(v157 + 72) * v134;
  sub_1D25CFA04(v63, v60);
  *v135 = v64;
  v68 = v158;
  sub_1D28786E8();
  v69 = v152;
  v70 = v137;
  sub_1D2606280(v152, v137, v66, v65, 0, v64, type metadata accessor for ImageKeyFaceLoader.Context.ID, type metadata accessor for ImageKeyFaceLoader.Context.ID, &qword_1EC6DA808, &unk_1D2884480);
  sub_1D260E160(v69, type metadata accessor for ImageKeyFaceLoader.Context.ID);
  v71 = v155;
  v72 = *(v155 + 16);
  v73 = v70 + *(v67 + 52);
  v161 = v64;
  v74 = v151;
  v75 = v156;
  v72(v151, v73, v156);
  sub_1D22BD238(v70, &qword_1EC6DA808, &unk_1D2884480);
  LOBYTE(v67) = sub_1D2878598();
  v76 = *(v71 + 8);
  v76(v74, v75);
  v76(v68, v75);
  if ((v67 & 1) == 0)
  {

    goto LABEL_34;
  }

  sub_1D28786E8();
  sub_1D2878688();
  v76(v68, v75);
  v77 = v136;
  sub_1D28786E8();
  v78 = v161;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    *&v167 = v78;
    sub_1D24EE950();
    v78 = v167;
  }

  v79 = v135;
  if (v134 >= 1 << *(v78 + 32))
  {
    goto LABEL_49;
  }

  if ((*(v78 + v163 + 8) & v162) != 0)
  {
    if (v133 == *(v78 + 9))
    {
      (*(v71 + 40))(*(v78 + 7) + *(v164 + 52) + v160, v77, v75);

      *v79 = v78;
LABEL_34:
      v126 = v165;
      *(v165 + 32) = 0;
      *v126 = 0u;
      *(v126 + 16) = 0u;
      *(v126 + 40) = -1;
      return;
    }

    goto LABEL_51;
  }

LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
}

uint64_t sub_1D26061B8(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v6 = result;
    v7 = *(a5 + 56);
    v8 = *(*(a5 + 48) + a2);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA818, &unk_1D2884490);
    sub_1D22BD1D0(v7 + *(*(v9 - 8) + 72) * a2, v6, &qword_1EC6DA818, &unk_1D2884490);
    return v8;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1D2606280(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void), uint64_t (*a8)(void), uint64_t *a9, uint64_t *a10)
{
  if (a3 < 0 || 1 << *(a6 + 32) <= a3)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a6 + 8 * (a3 >> 6) + 64) >> a3) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a6 + 36) == a4)
  {
    v14 = result;
    v15 = *(a6 + 48);
    v16 = a7(0);
    sub_1D260E0F8(v15 + *(*(v16 - 8) + 72) * a3, v14, a8);
    v17 = *(a6 + 56);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(a9, a10);
    return sub_1D22BD1D0(v17 + *(*(v18 - 8) + 72) * a3, a2, a9, a10);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1D260637C(os_unfair_lock_s *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEC88, &qword_1D2897310);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEFD0, &qword_1D2898380);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (v22 - v13);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v22 - v16;
  os_unfair_lock_lock(a1 + 10);
  sub_1D2606D6C(&a1[12], v4, a3, a1, v17);
  os_unfair_lock_unlock(a1 + 10);
  sub_1D22BD1D0(v17, v14, &qword_1EC6DEFD0, &qword_1D2898380);
  if (*v14)
  {
    sub_1D28786B8();
  }

  sub_1D22BD238(v14 + *(v9 + 48), &qword_1EC6DEC88, &qword_1D2897310);
  sub_1D22BD1D0(v17, v11, &qword_1EC6DEFD0, &qword_1D2898380);

  sub_1D22EC9BC(&v11[*(v9 + 48)], v8, &qword_1EC6DEC88, &qword_1D2897310);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCAA0, &qword_1D288E820);
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v8, 1, v18) == 1)
  {
    sub_1D22BD238(v17, &qword_1EC6DEFD0, &qword_1D2898380);
    return sub_1D22BD238(v8, &qword_1EC6DEC88, &qword_1D2897310);
  }

  else
  {
    sub_1D2878538();
    sub_1D260E0B0(&unk_1ED89CFC0, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
    v21 = swift_allocError();
    sub_1D2877E68();
    v22[1] = v21;
    sub_1D2878508();
    sub_1D22BD238(v17, &qword_1EC6DEFD0, &qword_1D2898380);
    return (*(v19 + 8))(v8, v18);
  }
}

uint64_t sub_1D26066CC(os_unfair_lock_s *a1, uint64_t *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEC68, &qword_1D2898320);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEFC0, &qword_1D2898328);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (v22 - v13);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v22 - v16;
  os_unfair_lock_lock(a1 + 10);
  sub_1D260755C(&a1[12], a2, a3, a1, v17);
  os_unfair_lock_unlock(a1 + 10);
  sub_1D22BD1D0(v17, v14, &qword_1EC6DEFC0, &qword_1D2898328);
  if (*v14)
  {
    sub_1D28786B8();
  }

  sub_1D22BD238(v14 + *(v9 + 48), &qword_1EC6DEC68, &qword_1D2898320);
  sub_1D22BD1D0(v17, v11, &qword_1EC6DEFC0, &qword_1D2898328);

  sub_1D22EC9BC(&v11[*(v9 + 48)], v8, &qword_1EC6DEC68, &qword_1D2898320);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA60, &unk_1D28972A0);
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v8, 1, v18) == 1)
  {
    sub_1D22BD238(v17, &qword_1EC6DEFC0, &qword_1D2898328);
    return sub_1D22BD238(v8, &qword_1EC6DEC68, &qword_1D2898320);
  }

  else
  {
    sub_1D2878538();
    sub_1D260E0B0(&unk_1ED89CFC0, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
    v21 = swift_allocError();
    sub_1D2877E68();
    v22[1] = v21;
    sub_1D2878508();
    sub_1D22BD238(v17, &qword_1EC6DEFC0, &qword_1D2898328);
    return (*(v19 + 8))(v8, v18);
  }
}

uint64_t sub_1D2606A1C(os_unfair_lock_s *a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEC48, &qword_1D2898210);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEF88, &qword_1D2898218);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (v22 - v13);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v22 - v16;
  os_unfair_lock_lock(a1 + 10);
  sub_1D2607E00(&a1[12], a2, a3, a1, v17);
  os_unfair_lock_unlock(a1 + 10);
  sub_1D22BD1D0(v17, v14, &qword_1EC6DEF88, &qword_1D2898218);
  if (*v14)
  {
    sub_1D28786B8();
  }

  sub_1D22BD238(v14 + *(v9 + 48), &qword_1EC6DEC48, &qword_1D2898210);
  sub_1D22BD1D0(v17, v11, &qword_1EC6DEF88, &qword_1D2898218);

  sub_1D22EC9BC(&v11[*(v9 + 48)], v8, &qword_1EC6DEC48, &qword_1D2898210);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA48, &qword_1D2897270);
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v8, 1, v18) == 1)
  {
    sub_1D22BD238(v17, &qword_1EC6DEF88, &qword_1D2898218);
    return sub_1D22BD238(v8, &qword_1EC6DEC48, &qword_1D2898210);
  }

  else
  {
    sub_1D2878538();
    sub_1D260E0B0(&unk_1ED89CFC0, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
    v21 = swift_allocError();
    sub_1D2877E68();
    v22[1] = v21;
    sub_1D2878508();
    sub_1D22BD238(v17, &qword_1EC6DEF88, &qword_1D2898218);
    return (*(v19 + 8))(v8, v18);
  }
}

void sub_1D2606D6C(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v71 = a4;
  v64 = a3;
  LODWORD(v74) = a2;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA818, &unk_1D2884490);
  v73 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v72 = &v59 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEC88, &qword_1D2897310);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v63 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v59 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCAA0, &qword_1D288E820);
  v68 = *(v15 - 8);
  v69 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v62 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v59 - v18;
  v70 = a1;
  v20 = *a1;
  v21 = *(*a1 + 16);
  v67 = a5;
  if (v21)
  {
    v22 = sub_1D25DB1BC();
    if (v23)
    {
      v24 = v22;
      v6 = *(v20 + 36);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v75 = v20;
        sub_1D24EB704();
        v20 = v75;
      }

      if (v24 < 0 || v24 >= 1 << *(v20 + 32))
      {
LABEL_35:
        __break(1u);
      }

      else if ((*(v20 + 8 * (v24 >> 6) + 64) & (1 << v24)) != 0)
      {
        if (v6 == *(v20 + 36))
        {
          v60 = 1 << v24;
          v61 = v24 >> 6;
          v66 = v6;
          v25 = v65;
          v59 = *(v73 + 72) * v24;
          sub_1D25F69A8(v64, &qword_1EC6DCAA0, &qword_1D288E820, sub_1D25D36C4, sub_1D24EB6E0, v14);
          v26 = v69;
          *v70 = v20;
          v6 = v68;
          if ((*(v68 + 48))(v14, 1, v26) != 1)
          {
            v73 = *(v6 + 32);
            (v73)(v19, v14, v26);
            v74 = v19;
            v38 = v72;
            sub_1D26061B8(v72, v24, v66, 0, v20);
            v39 = *(v38 + *(v25 + 56));
            sub_1D2870F68();
            sub_1D22BD238(v38, &qword_1EC6DA818, &unk_1D2884490);
            v40 = v26;
            v41 = *(v39 + 16);

            if (v41)
            {
              v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEFD0, &qword_1D2898380) + 48);
              v43 = v67;
              *v67 = 0;
              (v73)(&v43[v42], v74, v40);
              (*(v6 + 56))(&v43[v42], 0, 1, v40);
              return;
            }

            v50 = v74;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v75 = v20;
              sub_1D24EB704();
              v20 = v75;
            }

            v51 = v72;
            if (v24 < 1 << *(v20 + 32))
            {
              if ((*(v20 + 8 * v61 + 64) & v60) != 0)
              {
                v52 = v66;
                if (v66 == *(v20 + 36))
                {
                  v53 = v65;
                  *(*(v20 + 56) + v59 + *(v65 + 64)) = 1;
                  *v70 = v20;
                  v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEFD0, &qword_1D2898380) + 48);
                  sub_1D26061B8(v51, v24, v52, 0, v20);
                  v55 = v51;
                  v56 = *(v51 + *(v53 + 60));
                  sub_1D2870F78();
                  sub_1D22BD238(v55, &qword_1EC6DA818, &unk_1D2884490);
                  v57 = v67;
                  *v67 = v56;
                  v58 = v69;
                  (v73)(&v57[v54], v50, v69);
                  (*(v68 + 56))(&v57[v54], 0, 1, v58);
                  return;
                }

                goto LABEL_43;
              }

LABEL_42:
              __break(1u);
LABEL_43:
              __break(1u);
              return;
            }

LABEL_41:
            __break(1u);
            goto LABEL_42;
          }

          sub_1D22BD238(v14, &qword_1EC6DEC88, &qword_1D2897310);
          goto LABEL_11;
        }

LABEL_37:
        __break(1u);
LABEL_38:
        v20 = sub_1D278BC7C(v20);
        goto LABEL_18;
      }

      __break(1u);
      goto LABEL_37;
    }
  }

LABEL_11:
  v66 = v5;
  v20 = v70[1];
  ++v70;
  v27 = *(v20 + 16);
  if (!v27)
  {
LABEL_21:
    v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEFD0, &qword_1D2898380) + 48);
    v36 = v67;
    v37 = v68;
    *v67 = 0;
    (*(v37 + 56))(&v36[v35], 1, 1, v69);
    return;
  }

  v14 = 0;
  while (1)
  {
    if (v14 >= *(v20 + 16))
    {
      __break(1u);
      goto LABEL_35;
    }

    v28 = v72;
    v19 = ((*(v73 + 80) + 32) & ~*(v73 + 80));
    v6 = *(v73 + 72) * v14;
    sub_1D22BD1D0(&v19[v20 + v6], v72, &qword_1EC6DA818, &unk_1D2884490);
    swift_getAtKeyPath();
    v29 = v75;
    sub_1D22BD238(v28, &qword_1EC6DA818, &unk_1D2884490);
    if (v29 == v74)
    {
      break;
    }

    if (v27 == ++v14)
    {
      goto LABEL_21;
    }
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_18:
  v30 = v68;
  v31 = v65;
  v32 = v63;
  if (v14 >= *(v20 + 16))
  {
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v33 = &v19[v20 + v6];
  sub_1D25F69A8(v64, &qword_1EC6DCAA0, &qword_1D288E820, sub_1D25D36C4, sub_1D24EB6E0, v63);
  v34 = v69;
  *v70 = v20;
  if ((*(v30 + 48))(v32, 1, v34) == 1)
  {
    sub_1D22BD238(v32, &qword_1EC6DEC88, &qword_1D2897310);
    goto LABEL_21;
  }

  v44 = v32;
  v45 = *(v30 + 32);
  v45(v62, v44, v34);
  if (v14 >= *(v20 + 16))
  {
    goto LABEL_40;
  }

  if (!*(*&v33[*(v31 + 56)] + 16))
  {
    v46 = v72;
    sub_1D23BBD08(v14, v72);
    sub_1D22BD238(v46, &qword_1EC6DA818, &unk_1D2884490);
  }

  v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEFD0, &qword_1D2898380) + 48);
  v48 = v67;
  *v67 = 0;
  v49 = v69;
  v45(&v48[v47], v62, v69);
  (*(v30 + 56))(&v48[v47], 0, 1, v49);
}

void sub_1D260755C(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void (*a4)(char *, char *, uint64_t)@<X3>, char *a5@<X8>)
{
  v6 = v5;
  v73 = a3;
  v74 = a4;
  v75 = a5;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA810, &qword_1D28972B0);
  v72 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v69 = &v62 - v9;
  v10 = type metadata accessor for GeneratedPreviewOptions(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEC68, &qword_1D2898320);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v62 - v17;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA60, &unk_1D28972A0);
  v19 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v71 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v70 = &v62 - v23;
  v24 = *a1;
  if (*(*a1 + 16))
  {
    v67 = v12;
    v22 = sub_1D25D0488(a2);
    if (v25)
    {
      v26 = v22;
      v27 = *(v24 + 36);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v66 = v27;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v78 = v24;
        sub_1D24EDFEC();
        LODWORD(v27) = v66;
        v24 = v78;
      }

      if (v26 < 0 || v26 >= 1 << *(v24 + 32))
      {
        goto LABEL_33;
      }

      if ((*(v24 + 8 * (v26 >> 6) + 64) & (1 << v26)) == 0)
      {
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      if (v27 != *(v24 + 36))
      {
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v64 = 1 << v26;
      v65 = v26 >> 6;
      v68 = v5;
      v63 = *(v72 + 72) * v26;
      sub_1D25F69A8(v73, &qword_1EC6DCA60, &unk_1D28972A0, sub_1D25D5330, sub_1D24EDFC8, v18);
      *a1 = v24;
      v29 = v77;
      if ((*(v19 + 48))(v18, 1, v77) != 1)
      {
        v74 = *(v19 + 32);
        v74(v70, v18, v29);
        v45 = v67;
        v46 = v69;
        sub_1D2606280(v67, v69, v26, v66, 0, v24, type metadata accessor for GeneratedPreviewOptions, type metadata accessor for GeneratedPreviewOptions, &qword_1EC6DA810, &qword_1D28972B0);
        sub_1D260E160(v45, type metadata accessor for GeneratedPreviewOptions);
        v47 = *(v46 + *(v76 + 56));
        sub_1D2870F68();
        sub_1D22BD238(v46, &qword_1EC6DA810, &qword_1D28972B0);
        v48 = *(v47 + 16);

        if (v48)
        {
          v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEFC0, &qword_1D2898328) + 48);
          v50 = v74;
          v51 = v75;
          *v75 = 0;
          v50(&v51[v49], v70, v29);
          (*(v19 + 56))(&v51[v49], 0, 1, v29);
          return;
        }

        v73 = v19 + 32;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v78 = v24;
          sub_1D24EDFEC();
          v24 = v78;
        }

        v52 = v76;
        v53 = v66;
        if (v26 < 1 << *(v24 + 32))
        {
          if ((*(v24 + 8 * v65 + 64) & v64) != 0)
          {
            if (v66 == *(v24 + 36))
            {
              *(*(v24 + 56) + v63 + *(v76 + 64)) = 1;
              *a1 = v24;
              v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEFC0, &qword_1D2898328) + 48);
              v55 = v67;
              sub_1D2606280(v67, v46, v26, v53, 0, v24, type metadata accessor for GeneratedPreviewOptions, type metadata accessor for GeneratedPreviewOptions, &qword_1EC6DA810, &qword_1D28972B0);
              sub_1D260E160(v55, type metadata accessor for GeneratedPreviewOptions);
              v56 = *(v46 + *(v52 + 60));
              sub_1D2870F78();
              sub_1D22BD238(v46, &qword_1EC6DA810, &qword_1D28972B0);
              v57 = v74;
              v58 = v75;
              *v75 = v56;
              v59 = v77;
              v57(&v58[v54], v70, v77);
              (*(v19 + 56))(&v58[v54], 0, 1, v59);
              return;
            }

            goto LABEL_39;
          }

LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
          return;
        }

LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v22 = sub_1D22BD238(v18, &qword_1EC6DEC68, &qword_1D2898320);
      v6 = v68;
    }
  }

  v32 = a1[1];
  v31 = a1 + 1;
  v30 = v32;
  MEMORY[0x1EEE9AC00](v22);
  v60 = v74;
  v61 = a2;
  v33 = sub_1D25A628C(sub_1D260F5D8, (&v62 - 4), v32);
  v34 = v77;
  if (v35)
  {
LABEL_17:
    v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEFC0, &qword_1D2898328) + 48);
    v39 = v75;
    *v75 = 0;
    (*(v19 + 56))(&v39[v38], 1, 1, v34);
    return;
  }

  v36 = v33;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v36 & 0x8000000000000000) == 0)
    {
      goto LABEL_14;
    }

LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v30 = sub_1D278BD80(v30);
  if ((v36 & 0x8000000000000000) != 0)
  {
    goto LABEL_31;
  }

LABEL_14:
  if (v36 >= v30[2])
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v37 = v30 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v36;
  sub_1D25F69A8(v73, &qword_1EC6DCA60, &unk_1D28972A0, sub_1D25D5330, sub_1D24EDFC8, v15);
  *v31 = v30;
  if ((*(v19 + 48))(v15, 1, v34) == 1)
  {
    sub_1D22BD238(v15, &qword_1EC6DEC68, &qword_1D2898320);
    goto LABEL_17;
  }

  v68 = v6;
  v40 = *(v19 + 32);
  v40(v71, v15, v34);
  if (v36 >= v30[2])
  {
    goto LABEL_36;
  }

  if (!*(*(v37 + *(v76 + 56)) + 16))
  {
    v41 = v69;
    sub_1D23BBF8C(v36, v69);
    sub_1D22BD238(v41, &qword_1EC6DA810, &qword_1D28972B0);
  }

  v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEFC0, &qword_1D2898328) + 48);
  v43 = v75;
  *v75 = 0;
  v44 = v77;
  v40(&v43[v42], v71, v77);
  (*(v19 + 56))(&v43[v42], 0, 1, v44);
}

void sub_1D2607E00(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void (*a4)(char *, char *, uint64_t)@<X3>, char *a5@<X8>)
{
  v6 = v5;
  v73 = a3;
  v74 = a4;
  v75 = a5;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA808, &unk_1D2884480);
  v72 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v69 = &v62 - v9;
  v10 = type metadata accessor for ImageKeyFaceLoader.Context.ID(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEC48, &qword_1D2898210);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v62 - v17;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA48, &qword_1D2897270);
  v19 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v71 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v70 = &v62 - v23;
  v24 = *a1;
  if (*(*a1 + 16))
  {
    v67 = v12;
    v22 = sub_1D25D0F04(a2);
    if (v25)
    {
      v26 = v22;
      v27 = *(v24 + 36);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v66 = v27;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v78 = v24;
        sub_1D24EE950();
        LODWORD(v27) = v66;
        v24 = v78;
      }

      if (v26 < 0 || v26 >= 1 << *(v24 + 32))
      {
        goto LABEL_33;
      }

      if ((*(v24 + 8 * (v26 >> 6) + 64) & (1 << v26)) == 0)
      {
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      if (v27 != *(v24 + 36))
      {
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v64 = 1 << v26;
      v65 = v26 >> 6;
      v68 = v5;
      v63 = *(v72 + 72) * v26;
      sub_1D25F69A8(v73, &qword_1EC6DCA48, &qword_1D2897270, sub_1D25D59FC, sub_1D24EE5E0, v18);
      *a1 = v24;
      v29 = v77;
      if ((*(v19 + 48))(v18, 1, v77) != 1)
      {
        v74 = *(v19 + 32);
        v74(v70, v18, v29);
        v45 = v67;
        v46 = v69;
        sub_1D2606280(v67, v69, v26, v66, 0, v24, type metadata accessor for ImageKeyFaceLoader.Context.ID, type metadata accessor for ImageKeyFaceLoader.Context.ID, &qword_1EC6DA808, &unk_1D2884480);
        sub_1D260E160(v45, type metadata accessor for ImageKeyFaceLoader.Context.ID);
        v47 = *(v46 + *(v76 + 56));
        sub_1D2870F68();
        sub_1D22BD238(v46, &qword_1EC6DA808, &unk_1D2884480);
        v48 = *(v47 + 16);

        if (v48)
        {
          v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEF88, &qword_1D2898218) + 48);
          v50 = v74;
          v51 = v75;
          *v75 = 0;
          v50(&v51[v49], v70, v29);
          (*(v19 + 56))(&v51[v49], 0, 1, v29);
          return;
        }

        v73 = v19 + 32;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v78 = v24;
          sub_1D24EE950();
          v24 = v78;
        }

        v52 = v76;
        v53 = v66;
        if (v26 < 1 << *(v24 + 32))
        {
          if ((*(v24 + 8 * v65 + 64) & v64) != 0)
          {
            if (v66 == *(v24 + 36))
            {
              *(*(v24 + 56) + v63 + *(v76 + 64)) = 1;
              *a1 = v24;
              v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEF88, &qword_1D2898218) + 48);
              v55 = v67;
              sub_1D2606280(v67, v46, v26, v53, 0, v24, type metadata accessor for ImageKeyFaceLoader.Context.ID, type metadata accessor for ImageKeyFaceLoader.Context.ID, &qword_1EC6DA808, &unk_1D2884480);
              sub_1D260E160(v55, type metadata accessor for ImageKeyFaceLoader.Context.ID);
              v56 = *(v46 + *(v52 + 60));
              sub_1D2870F78();
              sub_1D22BD238(v46, &qword_1EC6DA808, &unk_1D2884480);
              v57 = v74;
              v58 = v75;
              *v75 = v56;
              v59 = v77;
              v57(&v58[v54], v70, v77);
              (*(v19 + 56))(&v58[v54], 0, 1, v59);
              return;
            }

            goto LABEL_39;
          }

LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
          return;
        }

LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v22 = sub_1D22BD238(v18, &qword_1EC6DEC48, &qword_1D2898210);
      v6 = v68;
    }
  }

  v32 = a1[1];
  v31 = a1 + 1;
  v30 = v32;
  MEMORY[0x1EEE9AC00](v22);
  v60 = v74;
  v61 = a2;
  v33 = sub_1D25A62B4(sub_1D260F5BC, (&v62 - 4), v32);
  v34 = v77;
  if (v35)
  {
LABEL_17:
    v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEF88, &qword_1D2898218) + 48);
    v39 = v75;
    *v75 = 0;
    (*(v19 + 56))(&v39[v38], 1, 1, v34);
    return;
  }

  v36 = v33;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v36 & 0x8000000000000000) == 0)
    {
      goto LABEL_14;
    }

LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v30 = sub_1D278BD94(v30);
  if ((v36 & 0x8000000000000000) != 0)
  {
    goto LABEL_31;
  }

LABEL_14:
  if (v36 >= v30[2])
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v37 = v30 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v36;
  sub_1D25F69A8(v73, &qword_1EC6DCA48, &qword_1D2897270, sub_1D25D59FC, sub_1D24EE5E0, v15);
  *v31 = v30;
  if ((*(v19 + 48))(v15, 1, v34) == 1)
  {
    sub_1D22BD238(v15, &qword_1EC6DEC48, &qword_1D2898210);
    goto LABEL_17;
  }

  v68 = v6;
  v40 = *(v19 + 32);
  v40(v71, v15, v34);
  if (v36 >= v30[2])
  {
    goto LABEL_36;
  }

  if (!*(*(v37 + *(v76 + 56)) + 16))
  {
    v41 = v69;
    sub_1D23BC0F8(v36, v69);
    sub_1D22BD238(v41, &qword_1EC6DA808, &unk_1D2884480);
  }

  v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEF88, &qword_1D2898218) + 48);
  v43 = v75;
  *v75 = 0;
  v44 = v77;
  v40(&v43[v42], v71, v77);
  (*(v19 + 56))(&v43[v42], 0, 1, v44);
}

uint64_t sub_1D26086A4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = type metadata accessor for GeneratedPreviewOptions(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getAtKeyPath();
  LOBYTE(a3) = sub_1D24992D0(v6, a3);
  sub_1D260E160(v6, type metadata accessor for GeneratedPreviewOptions);
  return a3 & 1;
}

uint64_t sub_1D260876C(uint64_t a1, uint64_t a2, void *a3, __n128 a4)
{
  v5 = type metadata accessor for ImageKeyFaceLoader.Context.ID(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getAtKeyPath();
  v8 = *v7 == *a3 && v7[1] == a3[1];
  if (v8 || (v9 = 0, (sub_1D2879618() & 1) != 0))
  {
    v9 = sub_1D24992D0((v7 + *(v5 + 20)), (a3 + *(v5 + 20)));
  }

  sub_1D260E160(v7, type metadata accessor for ImageKeyFaceLoader.Context.ID);
  return v9 & 1;
}

uint64_t sub_1D2608864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, uint64_t a7)
{
  *(v7 + 98) = a6;
  *(v7 + 97) = a5;
  *(v7 + 40) = a4;
  *(v7 + 48) = a7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCAA0, &qword_1D288E820);
  *(v7 + 56) = v9;
  *(v7 + 64) = *(v9 - 8);
  *(v7 + 72) = swift_task_alloc();
  *(v7 + 96) = a5;

  return MEMORY[0x1EEE6DFA0](sub_1D2608940, 0, 0);
}

uint64_t sub_1D2608940()
{
  v3 = (*(*(v0 + 40) + 16) + **(*(v0 + 40) + 16));
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_1D2608A38;

  return v3(v0 + 16, v0 + 96);
}

uint64_t sub_1D2608A38()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1D2608D1C;
  }

  else
  {
    v2 = sub_1D2608B4C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1D2608B4C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 88);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = *(v0 + 97);
  v6 = *(v0 + 98);
  os_unfair_lock_lock((v4 + 40));
  sub_1D2609DD4((v4 + 48), v6, v4, v3, v5, v1, v2 != 0);
  v8 = v7;
  os_unfair_lock_unlock((v4 + 40));
  if (!v2)
  {
    v9 = *(v8 + 16);
    if (v9)
    {
      v10 = *(v0 + 64);
      v12 = *(v10 + 16);
      v11 = v10 + 16;
      v20 = v12;
      v13 = v8 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
      v14 = *(v11 + 56);
      do
      {
        v16 = *(v0 + 88);
        v20(*(v0 + 72), v13, *(v0 + 56));
        v17 = *(v0 + 72);
        v18 = *(v0 + 56);
        if (v16)
        {
          *(v0 + 24) = v1;
          v15 = v1;
          sub_1D2878508();
        }

        else
        {
          *(v0 + 32) = v1;
          sub_1D2870F78();
          sub_1D2878518();
        }

        (*(v11 - 8))(v17, v18);
        v13 += v14;
        --v9;
      }

      while (v9);
    }

    sub_1D245C6D0(v1, *(v0 + 88) != 0);

    v19 = *(v0 + 8);

    v19();
  }
}

uint64_t sub_1D2608D1C()
{
  v1 = *(v0 + 88);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 97);
  v5 = *(v0 + 98);
  os_unfair_lock_lock((v3 + 40));
  sub_1D2609DD4((v3 + 48), v5, v3, v2, v4, v1, v1 != 0);
  v7 = v6;
  os_unfair_lock_unlock((v3 + 40));
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = *(v0 + 64);
    v11 = *(v9 + 16);
    v10 = v9 + 16;
    v20 = v11;
    v12 = v7 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v13 = *(v10 + 56);
    do
    {
      v15 = *(v0 + 88);
      v20(*(v0 + 72), v12, *(v0 + 56));
      v16 = *(v0 + 72);
      v17 = *(v0 + 56);
      if (v15)
      {
        *(v0 + 24) = v1;
        v14 = v1;
        sub_1D2878508();
      }

      else
      {
        *(v0 + 32) = v1;
        sub_1D2870F78();
        sub_1D2878518();
      }

      (*(v10 - 8))(v16, v17);
      v12 += v13;
      --v8;
    }

    while (v8);
  }

  sub_1D245C6D0(v1, *(v0 + 88) != 0);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1D2608EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA60, &unk_1D28972A0);
  v7[7] = v8;
  v7[8] = *(v8 - 8);
  v7[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC0F0, &qword_1D288B3A0);
  v7[10] = swift_task_alloc();
  v7[11] = swift_task_alloc();
  v7[12] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEFB8, &qword_1D2898308);
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2609048, 0, 0);
}

uint64_t sub_1D2609048()
{
  v5 = (*(v0[3] + 16) + **(v0[3] + 16));
  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = sub_1D2609140;
  v2 = v0[11];
  v3 = v0[4];

  return v5(v2, v3);
}

uint64_t sub_1D2609140()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1D26094C4;
  }

  else
  {
    v2 = sub_1D2609254;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1D2609254()
{
  sub_1D22EC9BC(v0[11], v0[14], &qword_1EC6DC0F0, &qword_1D288B3A0);
  swift_storeEnumTagMultiPayload();
  v1 = v0[16];
  v2 = v0[14];
  v4 = v0[5];
  v3 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  os_unfair_lock_lock((v6 + 40));
  sub_1D260A614((v6 + 48), v4, v6, v3, v5, v2);
  v8 = v7;
  os_unfair_lock_unlock((v6 + 40));
  if (!v1)
  {
    v9 = *(v8 + 16);
    if (v9)
    {
      v10 = v0[8];
      v12 = *(v10 + 16);
      v10 += 16;
      v11 = v12;
      v13 = v8 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
      v14 = (v10 - 8);
      v15 = *(v10 + 56);
      do
      {
        v19 = v0[13];
        v18 = v0[14];
        v11(v0[9], v13, v0[7]);
        sub_1D22BD1D0(v18, v19, &qword_1EC6DEFB8, &qword_1D2898308);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v21 = v0[13];
        if (EnumCaseMultiPayload == 1)
        {
          v16 = v0[9];
          v17 = v0[7];
          v0[2] = *v21;
          sub_1D2878508();
          (*v14)(v16, v17);
        }

        else
        {
          v22 = v0[9];
          v23 = v0[7];
          sub_1D22EC9BC(v21, v0[10], &qword_1EC6DC0F0, &qword_1D288B3A0);
          sub_1D2878518();
          (*v14)(v22, v23);
        }

        v13 += v15;
        --v9;
      }

      while (v9);
    }

    sub_1D22BD238(v0[14], &qword_1EC6DEFB8, &qword_1D2898308);

    v24 = v0[1];

    v24();
  }
}

uint64_t sub_1D26094C4()
{
  *v0[14] = v0[16];
  swift_storeEnumTagMultiPayload();
  v1 = v0[14];
  v3 = v0[5];
  v2 = v0[6];
  v5 = v0[3];
  v4 = v0[4];
  os_unfair_lock_lock((v5 + 40));
  sub_1D260A614((v5 + 48), v3, v5, v2, v4, v1);
  v7 = v6;
  os_unfair_lock_unlock((v5 + 40));
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = v0[8];
    v11 = *(v9 + 16);
    v9 += 16;
    v10 = v11;
    v12 = v7 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v13 = (v9 - 8);
    v14 = *(v9 + 56);
    do
    {
      v18 = v0[13];
      v17 = v0[14];
      v10(v0[9], v12, v0[7]);
      sub_1D22BD1D0(v17, v18, &qword_1EC6DEFB8, &qword_1D2898308);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v20 = v0[13];
      if (EnumCaseMultiPayload == 1)
      {
        v15 = v0[9];
        v16 = v0[7];
        v0[2] = *v20;
        sub_1D2878508();
        (*v13)(v15, v16);
      }

      else
      {
        v21 = v0[9];
        v22 = v0[7];
        sub_1D22EC9BC(v20, v0[10], &qword_1EC6DC0F0, &qword_1D288B3A0);
        sub_1D2878518();
        (*v13)(v21, v22);
      }

      v12 += v14;
      --v8;
    }

    while (v8);
  }

  sub_1D22BD238(v0[14], &qword_1EC6DEFB8, &qword_1D2898308);

  v23 = v0[1];

  return v23();
}

uint64_t sub_1D260971C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[27] = a6;
  v7[28] = a7;
  v7[25] = a4;
  v7[26] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA48, &qword_1D2897270);
  v7[29] = v8;
  v7[30] = *(v8 - 8);
  v7[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D26097EC, 0, 0);
}

uint64_t sub_1D26097EC()
{
  v4 = (*(v0[25] + 16) + **(v0[25] + 16));
  v1 = swift_task_alloc();
  v0[32] = v1;
  *v1 = v0;
  v1[1] = sub_1D26098E4;
  v2 = v0[26];

  return v4(v0 + 14, v2);
}

uint64_t sub_1D26098E4()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_1D2609BE8;
  }

  else
  {
    v2 = sub_1D26099F8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1D26099F8()
{
  sub_1D22D79FC((v0 + 112), v0 + 16);
  v1 = *(v0 + 264);
  v2 = *(v0 + 216);
  v3 = *(v0 + 224);
  v5 = *(v0 + 200);
  v4 = *(v0 + 208);
  *(v0 + 56) = v1 != 0;
  os_unfair_lock_lock((v5 + 40));
  sub_1D260B248((v5 + 48), v2, v5, v3, v4, v0 + 16);
  v7 = v6;
  os_unfair_lock_unlock((v5 + 40));
  if (!v1)
  {
    v8 = *(v7 + 16);
    if (v8)
    {
      v9 = *(v0 + 240);
      v12 = *(v9 + 16);
      v10 = v9 + 16;
      v11 = v12;
      v13 = v7 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
      v14 = *(v10 + 56);
      v12(*(v0 + 248), v13, *(v0 + 232));
      while (1)
      {
        sub_1D22BD1D0(v0 + 16, v0 + 64, &qword_1EC6DEF80, &unk_1D2898200);
        v15 = *(v0 + 248);
        v16 = *(v0 + 232);
        if (*(v0 + 104))
        {
          *(v0 + 192) = *(v0 + 64);
          sub_1D2878508();
        }

        else
        {
          sub_1D22D79FC((v0 + 64), v0 + 152);
          sub_1D2878518();
        }

        (*(v10 - 8))(v15, v16);
        v13 += v14;
        if (!--v8)
        {
          break;
        }

        v11(*(v0 + 248), v13, *(v0 + 232));
      }
    }

    sub_1D22BD238(v0 + 16, &qword_1EC6DEF80, &unk_1D2898200);

    v17 = *(v0 + 8);

    v17();
  }
}

uint64_t sub_1D2609BE8()
{
  v1 = *(v0 + 264);
  *(v0 + 16) = v1;
  v3 = *(v0 + 216);
  v2 = *(v0 + 224);
  v5 = *(v0 + 200);
  v4 = *(v0 + 208);
  *(v0 + 56) = v1 != 0;
  os_unfair_lock_lock((v5 + 40));
  sub_1D260B248((v5 + 48), v3, v5, v2, v4, v0 + 16);
  v7 = v6;
  os_unfair_lock_unlock((v5 + 40));
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = *(v0 + 240);
    v12 = *(v9 + 16);
    v11 = v9 + 16;
    v10 = v12;
    v13 = v7 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v14 = *(v11 + 56);
    v12(*(v0 + 248), v13, *(v0 + 232));
    while (1)
    {
      sub_1D22BD1D0(v0 + 16, v0 + 64, &qword_1EC6DEF80, &unk_1D2898200);
      v15 = *(v0 + 248);
      v16 = *(v0 + 232);
      if (*(v0 + 104))
      {
        *(v0 + 192) = *(v0 + 64);
        sub_1D2878508();
      }

      else
      {
        sub_1D22D79FC((v0 + 64), v0 + 152);
        sub_1D2878518();
      }

      (*(v11 - 8))(v15, v16);
      v13 += v14;
      if (!--v8)
      {
        break;
      }

      v10(*(v0 + 248), v13, *(v0 + 232));
    }
  }

  sub_1D22BD238(v0 + 16, &qword_1EC6DEF80, &unk_1D2898200);

  v17 = *(v0 + 8);

  return v17();
}

void sub_1D2609DD4(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7)
{
  LODWORD(v77) = a7;
  v78 = a6;
  v86 = a5;
  v76 = a4;
  v82 = a3;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEFD8, &qword_1D28983B0);
  MEMORY[0x1EEE9AC00](v80);
  v79 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v81 = &v66 - v12;
  v13 = sub_1D28785F8();
  v74 = *(v13 - 8);
  v75 = v13;
  v14 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60, &qword_1D28811F0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v66 - v17;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA818, &unk_1D2884490);
  MEMORY[0x1EEE9AC00](v83);
  v20 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = (&v66 - v23);
  v25 = *a1;
  if (!*(*a1 + 16))
  {
    return;
  }

  v73 = v22;
  v69 = a2;
  v26 = sub_1D25DB1BC();
  if ((v27 & 1) == 0)
  {
    return;
  }

  v28 = *(v25 + 36);
  v72 = v26;
  v70 = a1;
  v71 = v28;
  sub_1D26061B8(v24, v26, v28, 0, v25);
  v29 = *(v24 + v83[16]);
  sub_1D22BD238(v24, &qword_1EC6DA818, &unk_1D2884490);
  v68 = v7;
  if (v29 != 1)
  {
    v31 = v70;
    v41 = v70[3];
    if (v41)
    {
      v42 = v70[5];
      v24 = v70[4];
      v43 = v78;
      v84 = v78;
      v44 = v77 & 1;
      LOBYTE(v85) = v77 & 1;
      v87 = v69;
      sub_1D260F434(v41);
      sub_1D245C6AC(v43, v44);
      v42(&v87, &v84);

      sub_1D245C6D0(v43, v44);
    }

LABEL_18:
    v45 = v80;
    v46 = v81;
    sub_1D260CDF4(v81 + *(v80 + 48), v72, v71);
    *v46 = v47;
    v48 = v79;
    sub_1D22BD1D0(v46, v79, &qword_1EC6DEFD8, &qword_1D28983B0);
    v49 = v48 + *(v45 + 48);
    v50 = *(v49 + v83[14]);
    sub_1D2870F68();
    sub_1D22BD238(v49, &qword_1EC6DA818, &unk_1D2884490);
    v51 = *(v50 + 16);
    if (v51)
    {
      v52 = sub_1D27CE984(*(v50 + 16), 0);
      v24 = &qword_1D288E820;
      v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCAA0, &qword_1D288E820) - 8);
      sub_1D260D468(&v84, &v52[(*(v53 + 80) + 32) & ~*(v53 + 80)], v51, v50, &qword_1EC6DCAA0, &qword_1D288E820);
      v55 = v54;
      sub_1D23EEDB0(v84);
      if (v55 == v51)
      {
        goto LABEL_22;
      }

      __break(1u);
    }

LABEL_22:
    a2 = sub_1D260BE68(v31);
    sub_1D22BD238(v46, &qword_1EC6DEFD8, &qword_1D28983B0);
    if (a2)
    {
      return;
    }

    v56 = v31[2];
    v57 = __OFSUB__(v56, 1);
    v58 = v56 - 1;
    if (!v57)
    {
      v31[2] = v58;
      return;
    }

    goto LABEL_36;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = v70;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v84 = v25;
    sub_1D24EB704();
    v25 = v84;
  }

  v32 = v72;
  if (v72 < 0 || v72 >= 1 << *(v25 + 32))
  {
    __break(1u);
    goto LABEL_34;
  }

  a2 = v72 >> 6;
  if ((*(v25 + 8 * (v72 >> 6) + 64) & (1 << v72)) == 0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v77 = 1 << v72;
  v33 = v71;
  if (v71 != *(v25 + 36))
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v34 = *(v25 + 56);
  v78 = *(v73 + 72);
  v67 = v78 * v72;
  v35 = v83;
  *(v34 + v78 * v72 + v83[16]) = 0;
  *v31 = v25;
  sub_1D26061B8(v24, v32, v33, 0, v25);
  v36 = *(v24 + v35[14]);
  sub_1D2870F68();
  sub_1D22BD238(v24, &qword_1EC6DA818, &unk_1D2884490);
  v37 = *(v36 + 16);
  v31 = v70;

  if (!v37)
  {
    goto LABEL_18;
  }

  v81 = a2;
  a2 = v31[1];
  if (!*(a2 + 16))
  {
    v59 = v74;
    v60 = v75;
    v61 = *(v74 + 16);
    v61(v18, v76, v75);
    (*(v59 + 56))(v18, 0, 1, v60);
    v61(&v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v76, v60);
    v62 = (*(v59 + 80) + 42) & ~*(v59 + 80);
    v63 = swift_allocObject();
    *(v63 + 16) = 0;
    *(v63 + 24) = 0;
    *(v63 + 32) = v82;
    *(v63 + 40) = v86;
    *(v63 + 41) = v69;
    (*(v59 + 32))(v63 + v62, v15, v60);
    sub_1D2870F78();
    v64 = sub_1D22AE01C(0, 0, v18, &unk_1D28983B8, v63);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v84 = v25;
      sub_1D24EB704();
      v25 = v84;
    }

    if (v72 >= 1 << *(v25 + 32))
    {
      __break(1u);
    }

    else if ((*(v25 + 8 * v81 + 64) & v77) != 0)
    {
      if (v71 == *(v25 + 36))
      {
        *(*(v25 + 56) + v67 + v83[15]) = v64;

        *v31 = v25;
        return;
      }

LABEL_40:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_40;
  }

  sub_1D26061B8(v20, v72, v71, 0, v25);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_37:
    a2 = sub_1D27CC7A8(0, *(a2 + 16) + 1, 1, a2);
  }

  v38 = v73;
  v40 = *(a2 + 16);
  v39 = *(a2 + 24);
  if (v40 >= v39 >> 1)
  {
    v65 = sub_1D27CC7A8((v39 > 1), v40 + 1, 1, a2);
    v38 = v73;
    a2 = v65;
  }

  *(a2 + 16) = v40 + 1;
  sub_1D22EC9BC(v20, a2 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + v40 * v78, &qword_1EC6DA818, &unk_1D2884490);
  v31[1] = a2;
  sub_1D260CDF4(v24, v72, v71);
  sub_1D22BD238(v24, &qword_1EC6DA818, &unk_1D2884490);
  sub_1D260BE68(v31);
}

void sub_1D260A614(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v93 = a6;
  v86 = a5;
  v89 = a4;
  v97 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEFB0, &qword_1D2898300);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v77 - v10;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEFC8, &qword_1D2898348);
  MEMORY[0x1EEE9AC00](v94);
  v99 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v95 = &v77 - v14;
  v15 = sub_1D28785F8();
  v87 = *(v15 - 8);
  v88 = v15;
  v16 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v92 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60, &qword_1D28811F0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v91 = &v77 - v18;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA810, &qword_1D28972B0);
  v96 = *(v102 - 1);
  MEMORY[0x1EEE9AC00](v102);
  v90 = (&v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v77 - v21;
  v23 = type metadata accessor for GeneratedPreviewOptions(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v77 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v100 = &v77 - v31;
  v98 = a1;
  v32 = *a1;
  if (!*(v32 + 16))
  {
    return;
  }

  v82 = v30;
  v83 = a2;
  v33 = sub_1D25D0488(a2);
  if ((v34 & 1) == 0)
  {
    return;
  }

  v80 = v28;
  v81 = v6;
  v35 = *(v32 + 36);
  v36 = &qword_1D28972B0;
  v37 = v100;
  v85 = v33;
  v84 = v35;
  sub_1D2606280(v100, v22, v33, v35, 0, v32, type metadata accessor for GeneratedPreviewOptions, type metadata accessor for GeneratedPreviewOptions, &qword_1EC6DA810, &qword_1D28972B0);
  sub_1D260E160(v37, type metadata accessor for GeneratedPreviewOptions);
  LODWORD(v37) = v22[v102[16]];
  sub_1D22BD238(v22, &qword_1EC6DA810, &qword_1D28972B0);
  if (v37 != 1)
  {
    v42 = v98;
    if (v98[3])
    {
      v50 = v98[5];
      v51 = v100;
      sub_1D260E0F8(v83, v100, type metadata accessor for GeneratedPreviewOptions);
      sub_1D22BD1D0(v93, v11, &qword_1EC6DEFB8, &qword_1D2898308);
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEFB8, &qword_1D2898308);
      (*(*(v52 - 8) + 56))(v11, 0, 1, v52);
      sub_1D2870F78();
      sub_1D2870F78();
      sub_1D2870F78();
      v50(v51, v11);

      sub_1D22BD238(v11, &qword_1EC6DEFB0, &qword_1D2898300);
      sub_1D260E160(v51, type metadata accessor for GeneratedPreviewOptions);
    }

LABEL_18:
    v11 = v94;
    v53 = v95;
    sub_1D260CF08(v95, v95 + *(v94 + 48), v85, v84);
    v54 = v99;
    sub_1D22BD1D0(v53, v99, &qword_1EC6DEFC8, &qword_1D2898348);
    v55 = v54 + *(v11 + 12);
    v56 = *(v55 + v102[14]);
    sub_1D2870F68();
    sub_1D22BD238(v55, &qword_1EC6DA810, &qword_1D28972B0);
    v57 = *(v56 + 16);
    v36 = v42;
    if (v57)
    {
      v11 = sub_1D27CEA50(*(v56 + 16), 0);
      v58 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA60, &unk_1D28972A0) - 8);
      v22 = v11;
      sub_1D260D468(&v101, &v11[(*(v58 + 80) + 32) & ~*(v58 + 80)], v57, v56, &qword_1EC6DCA60, &unk_1D28972A0);
      v60 = v59;
      sub_1D23EEDB0(v101);
      if (v60 == v57)
      {
LABEL_22:
        sub_1D260E160(v99, type metadata accessor for GeneratedPreviewOptions);
        v61 = sub_1D260C270(v42);
        sub_1D22BD238(v53, &qword_1EC6DEFC8, &qword_1D2898348);
        if (v61)
        {
          return;
        }

        v62 = *(v42 + 16);
        v63 = __OFSUB__(v62, 1);
        v64 = v62 - 1;
        if (!v63)
        {
          *(v42 + 16) = v64;
          return;
        }

        goto LABEL_35;
      }

      __break(1u);
    }

    v22 = MEMORY[0x1E69E7CC0];
    goto LABEL_22;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v101 = v32;
    sub_1D24EDFEC();
    v32 = v101;
  }

  v38 = v84;
  v39 = v85;
  if ((v85 & 0x8000000000000000) != 0 || v85 >= 1 << *(v32 + 32))
  {
    __break(1u);
    goto LABEL_33;
  }

  if ((*(v32 + 8 * (v85 >> 6) + 64) & (1 << v85)) == 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v78 = 1 << v85;
  v79 = v85 >> 6;
  if (v84 != *(v32 + 36))
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v40 = *(v32 + 56);
  v93 = *(v96 + 72);
  v77 = v93 * v85;
  v41 = v102;
  *(v40 + v93 * v85 + v102[16]) = 0;
  v42 = v98;
  *v98 = v32;
  v43 = v100;
  sub_1D2606280(v100, v22, v39, v38, 0, v32, type metadata accessor for GeneratedPreviewOptions, type metadata accessor for GeneratedPreviewOptions, &qword_1EC6DA810, &qword_1D28972B0);
  sub_1D260E160(v43, type metadata accessor for GeneratedPreviewOptions);
  v44 = *&v22[v41[14]];
  sub_1D2870F68();
  sub_1D22BD238(v22, &qword_1EC6DA810, &qword_1D28972B0);
  v45 = *(v44 + 16);

  if (!v45)
  {
    goto LABEL_18;
  }

  v11 = *(v42 + 8);
  if (!*(v11 + 2))
  {
    v65 = v87;
    v66 = v88;
    v67 = *(v87 + 16);
    v68 = v91;
    v69 = v89;
    v67(v91, v89, v88);
    (*(v65 + 56))(v68, 0, 1, v66);
    sub_1D260E0F8(v86, v100, type metadata accessor for GeneratedPreviewOptions);
    sub_1D260E0F8(v83, v80, type metadata accessor for GeneratedPreviewOptions);
    v67(v92, v69, v66);
    v70 = *(v82 + 80);
    v71 = (v70 + 40) & ~v70;
    v72 = (v24 + v70 + v71) & ~v70;
    v73 = (v24 + *(v65 + 80) + v72) & ~*(v65 + 80);
    v74 = swift_allocObject();
    *(v74 + 2) = 0;
    *(v74 + 3) = 0;
    *(v74 + 4) = v97;
    sub_1D260E2B8(v100, &v74[v71], type metadata accessor for GeneratedPreviewOptions);
    sub_1D260E2B8(v80, &v74[v72], type metadata accessor for GeneratedPreviewOptions);
    (*(v65 + 32))(&v74[v73], v92, v66);
    sub_1D2870F78();
    v75 = sub_1D22AE01C(0, 0, v91, &unk_1D2898350, v74);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v101 = v32;
      sub_1D24EDFEC();
      v32 = v101;
    }

    v76 = v98;
    if (v85 >= 1 << *(v32 + 32))
    {
      __break(1u);
    }

    else if ((*(v32 + 8 * v79 + 64) & v78) != 0)
    {
      if (v84 == *(v32 + 36))
      {
        *(*(v32 + 56) + v77 + v102[15]) = v75;

        *v76 = v32;
        return;
      }

LABEL_39:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_39;
  }

  v36 = v90;
  sub_1D2606280(v25, v90, v85, v84, 0, v32, type metadata accessor for GeneratedPreviewOptions, type metadata accessor for GeneratedPreviewOptions, &qword_1EC6DA810, &qword_1D28972B0);
  sub_1D260E160(v25, type metadata accessor for GeneratedPreviewOptions);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_36:
    v11 = sub_1D27CD040(0, *(v11 + 2) + 1, 1, v11);
  }

  v46 = v98;
  v48 = *(v11 + 2);
  v47 = *(v11 + 3);
  if (v48 >= v47 >> 1)
  {
    v11 = sub_1D27CD040((v47 > 1), v48 + 1, 1, v11);
  }

  *(v11 + 2) = v48 + 1;
  sub_1D22EC9BC(v36, &v11[((*(v96 + 80) + 32) & ~*(v96 + 80)) + v48 * v93], &qword_1EC6DA810, &qword_1D28972B0);
  *(v46 + 8) = v11;
  v49 = v100;
  sub_1D260CF08(v100, v22, v85, v84);
  sub_1D22BD238(v22, &qword_1EC6DA810, &qword_1D28972B0);
  sub_1D260E160(v49, type metadata accessor for GeneratedPreviewOptions);
  sub_1D260C270(v46);
}

void sub_1D260B248(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v88 = a6;
  v80 = a5;
  v84 = a4;
  v93 = a3;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEF90, &qword_1D2898238);
  MEMORY[0x1EEE9AC00](v89);
  v90 = (&v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v91 = &v70 - v10;
  v11 = sub_1D28785F8();
  v86 = *(v11 - 8);
  v87 = v11;
  v12 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v85 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ImageKeyFaceLoader.Context(0);
  v79 = *(v13 - 8);
  v14 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v82 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60, &qword_1D28811F0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v83 = &v70 - v16;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA808, &unk_1D2884480);
  v92 = *(v94 - 1);
  MEMORY[0x1EEE9AC00](v94);
  v81 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v70 - v19);
  v21 = type metadata accessor for ImageKeyFaceLoader.Context.ID(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v70 - v26;
  v28 = *a1;
  if (!*(*a1 + 16))
  {
    return;
  }

  v73 = v25;
  v75 = a2;
  v29 = sub_1D25D0F04(a2);
  if ((v30 & 1) == 0)
  {
    return;
  }

  v76 = a1;
  v31 = *(v28 + 36);
  v32 = v27;
  v33 = &unk_1D2884480;
  v78 = v29;
  v77 = v31;
  sub_1D2606280(v32, v20, v29, v31, 0, v28, type metadata accessor for ImageKeyFaceLoader.Context.ID, type metadata accessor for ImageKeyFaceLoader.Context.ID, &qword_1EC6DA808, &unk_1D2884480);
  v74 = v32;
  sub_1D260E160(v32, type metadata accessor for ImageKeyFaceLoader.Context.ID);
  LODWORD(v32) = *(v20 + v94[16]);
  sub_1D22BD238(v20, &qword_1EC6DA808, &unk_1D2884480);
  if (v32 != 1)
  {
    v35 = v76;
    if (v76[3])
    {
      v20 = v76[5];
      v33 = v74;
      sub_1D260E0F8(v75, v74, type metadata accessor for ImageKeyFaceLoader.Context.ID);
      sub_1D22BD1D0(v88, &v95, &qword_1EC6DEF80, &unk_1D2898200);
      sub_1D2870F78();
      sub_1D2870F78();
      sub_1D2870F78();
      (v20)(v33, &v95);

      sub_1D22BD238(&v95, &qword_1EC6DEF78, &qword_1D28981E0);
      sub_1D260E160(v33, type metadata accessor for ImageKeyFaceLoader.Context.ID);
    }

LABEL_18:
    v47 = v89;
    v12 = v91;
    sub_1D260D058(v91, v91 + *(v89 + 48), v78, v77);
    v22 = v90;
    sub_1D22BD1D0(v12, v90, &qword_1EC6DEF90, &qword_1D2898238);
    v48 = v22 + *(v47 + 48);
    v49 = *(v48 + v94[14]);
    sub_1D2870F68();
    sub_1D22BD238(v48, &qword_1EC6DA808, &unk_1D2884480);
    v50 = *(v49 + 16);
    if (v50)
    {
      v51 = sub_1D27CEA74(*(v49 + 16), 0);
      v33 = &qword_1EC6DCA48;
      v20 = &qword_1D2897270;
      v52 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA48, &qword_1D2897270) - 8);
      sub_1D260D468(&v95, &v51[(*(v52 + 80) + 32) & ~*(v52 + 80)], v50, v49, &qword_1EC6DCA48, &qword_1D2897270);
      v54 = v53;
      sub_1D23EEDB0(v95);
      if (v54 == v50)
      {
        goto LABEL_22;
      }

      __break(1u);
    }

LABEL_22:
    sub_1D260E160(v22, type metadata accessor for ImageKeyFaceLoader.Context.ID);
    v55 = sub_1D260C7F0(v35);
    sub_1D22BD238(v12, &qword_1EC6DEF90, &qword_1D2898238);
    if (v55)
    {
      return;
    }

    v56 = v35[2];
    v57 = __OFSUB__(v56, 1);
    v58 = v56 - 1;
    if (!v57)
    {
      v35[2] = v58;
      return;
    }

    goto LABEL_36;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v35 = v76;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v95 = v28;
    sub_1D24EE950();
    v28 = v95;
  }

  v36 = v78;
  if ((v78 & 0x8000000000000000) != 0 || v78 >= 1 << *(v28 + 32))
  {
    __break(1u);
    goto LABEL_34;
  }

  if ((*(v28 + 8 * (v78 >> 6) + 64) & (1 << v78)) == 0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v71 = 1 << v78;
  v72 = v78 >> 6;
  v37 = v77;
  if (v77 != *(v28 + 36))
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v38 = *(v28 + 56);
  v88 = *(v92 + 72);
  v70 = v88 * v78;
  v39 = v94;
  *(v38 + v88 * v78 + v94[16]) = 0;
  *v35 = v28;
  v40 = v74;
  sub_1D2606280(v74, v20, v36, v37, 0, v28, type metadata accessor for ImageKeyFaceLoader.Context.ID, type metadata accessor for ImageKeyFaceLoader.Context.ID, &qword_1EC6DA808, &unk_1D2884480);
  sub_1D260E160(v40, type metadata accessor for ImageKeyFaceLoader.Context.ID);
  v41 = *(v20 + v39[14]);
  sub_1D2870F68();
  sub_1D22BD238(v20, &qword_1EC6DA808, &unk_1D2884480);
  v42 = *(v41 + 16);
  v35 = v76;

  if (!v42)
  {
    goto LABEL_18;
  }

  v43 = v35[1];
  if (!v43[2])
  {
    v59 = v86;
    v60 = *(v86 + 16);
    v61 = v83;
    v60(v83, v84, v87);
    v62 = v61;
    v63 = v87;
    (*(v59 + 56))(v62, 0, 1, v87);
    sub_1D260E0F8(v80, v82, type metadata accessor for ImageKeyFaceLoader.Context);
    sub_1D260E0F8(v75, v74, type metadata accessor for ImageKeyFaceLoader.Context.ID);
    v60(v85, v84, v63);
    v64 = (*(v79 + 80) + 40) & ~*(v79 + 80);
    v65 = (v14 + *(v73 + 80) + v64) & ~*(v73 + 80);
    v66 = v86;
    v67 = (v22 + *(v86 + 80) + v65) & ~*(v86 + 80);
    v68 = swift_allocObject();
    *(v68 + 2) = 0;
    *(v68 + 3) = 0;
    *(v68 + 4) = v93;
    sub_1D260E2B8(v82, &v68[v64], type metadata accessor for ImageKeyFaceLoader.Context);
    sub_1D260E2B8(v74, &v68[v65], type metadata accessor for ImageKeyFaceLoader.Context.ID);
    (*(v66 + 32))(&v68[v67], v85, v63);
    sub_1D2870F78();
    v69 = sub_1D22AE01C(0, 0, v83, &unk_1D2898240, v68);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v95 = v28;
      sub_1D24EE950();
      v28 = v95;
    }

    if (v78 >= 1 << *(v28 + 32))
    {
      __break(1u);
    }

    else if ((*(v28 + 8 * v72 + 64) & v71) != 0)
    {
      if (v77 == *(v28 + 36))
      {
        *(*(v28 + 56) + v70 + v94[15]) = v69;

        *v35 = v28;
        return;
      }

LABEL_40:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_40;
  }

  v12 = v81;
  sub_1D2606280(v23, v81, v78, v77, 0, v28, type metadata accessor for ImageKeyFaceLoader.Context.ID, type metadata accessor for ImageKeyFaceLoader.Context.ID, &qword_1EC6DA808, &unk_1D2884480);
  sub_1D260E160(v23, type metadata accessor for ImageKeyFaceLoader.Context.ID);
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v33 = v74;
  v22 = v43;
  if ((v44 & 1) == 0)
  {
LABEL_37:
    v22 = sub_1D27CD064(0, v22[2] + 1, 1, v22);
  }

  v46 = v22[2];
  v45 = v22[3];
  if (v46 >= v45 >> 1)
  {
    v22 = sub_1D27CD064((v45 > 1), v46 + 1, 1, v22);
  }

  v22[2] = v46 + 1;
  sub_1D22EC9BC(v12, v22 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + v46 * v88, &qword_1EC6DA808, &unk_1D2884480);
  v35[1] = v22;
  sub_1D260D058(v33, v20, v78, v77);
  sub_1D22BD238(v20, &qword_1EC6DA808, &unk_1D2884480);
  sub_1D260E160(v33, type metadata accessor for ImageKeyFaceLoader.Context.ID);
  sub_1D260C7F0(v35);
}

BOOL sub_1D260BE68(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEC78, &unk_1D28972F0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v34 - v4;
  v6 = sub_1D28785F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v43 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60, &qword_1D28811F0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA818, &unk_1D2884490);
  MEMORY[0x1EEE9AC00](v12);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v34 - v14;
  v18 = *(a1 + 8);
  v19 = *(v18 + 16);
  if (v19)
  {
    v42 = *(v18 + 16);
    v20 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v39 = v16;
    v40 = v15;
    sub_1D22BD1D0(v18 + v20, &v34 - v14, &qword_1EC6DA818, &unk_1D2884490);
    swift_getAtKeyPath();
    v41 = a1;
    v21 = *(v12 + 52);
    v22 = *v17;
    v37 = v12;
    v38 = v5;
    v34 = v1;
    v23 = *(v7 + 16);
    v35 = v44;
    v36 = v22;
    v23(v11, &v17[v21], v6);
    (*(v7 + 56))(v11, 0, 1, v6);
    v24 = v43;
    v23(v43, &v17[v21], v6);
    v25 = (*(v7 + 80) + 42) & ~*(v7 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    *(v26 + 24) = 0;
    *(v26 + 32) = v34;
    v27 = v35;
    *(v26 + 40) = v36;
    *(v26 + 41) = v27;
    (*(v7 + 32))(v26 + v25, v24, v6);
    sub_1D2870F78();
    v28 = sub_1D22AE01C(0, 0, v11, &unk_1D28983C0, v26);
    v29 = v37;
    v30 = *(v37 + 60);

    *&v17[v30] = v28;
    v31 = v39;
    sub_1D23BBD08(0, v39);
    sub_1D22BD238(v31, &qword_1EC6DA818, &unk_1D2884490);
    v32 = v38;
    sub_1D22BD1D0(v17, v38, &qword_1EC6DA818, &unk_1D2884490);
    (*(v40 + 56))(v32, 0, 1, v29);
    sub_1D25CE074(v32, v27);
    sub_1D22BD238(v17, &qword_1EC6DA818, &unk_1D2884490);
    v19 = v42;
  }

  return v19 != 0;
}

BOOL sub_1D260C270(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEC58, &qword_1D2898330);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v52 - v3;
  v5 = sub_1D28785F8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v63 = v7;
  v64 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60, &qword_1D28811F0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v66 = &v52 - v9;
  v10 = type metadata accessor for GeneratedPreviewOptions(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v62 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v52 - v14);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v52 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA810, &qword_1D28972B0);
  MEMORY[0x1EEE9AC00](v19);
  MEMORY[0x1EEE9AC00](v20);
  v25 = &v52 - v22;
  v61 = a1;
  v28 = *(a1 + 8);
  v27 = a1 + 8;
  v26 = v28;
  v29 = *(v28 + 16);
  if (v29)
  {
    v59 = v23;
    v60 = v29;
    v30 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v53 = v11;
    v31 = v21;
    v55 = v21;
    v56 = v24;
    sub_1D22BD1D0(v26 + v30, &v52 - v22, &qword_1EC6DA810, &qword_1D28972B0);
    v57 = v27;
    swift_getAtKeyPath();
    v65 = v15;
    v32 = *(v31 + 52);
    v58 = v4;
    v33 = *(v6 + 16);
    v34 = v66;
    v33(v66, &v25[v32], v5);
    (*(v6 + 56))(v34, 0, 1, v5);
    v54 = type metadata accessor for GeneratedPreviewOptions;
    sub_1D260E0F8(v25, v15, type metadata accessor for GeneratedPreviewOptions);
    v35 = v62;
    sub_1D260E0F8(v18, v62, type metadata accessor for GeneratedPreviewOptions);
    v36 = &v25[v32];
    v37 = v64;
    v33(v64, v36, v5);
    v38 = v53[80];
    v39 = (v38 + 40) & ~v38;
    v40 = (v12 + v38 + v39) & ~v38;
    v41 = *(v6 + 80);
    v52 = v5;
    v53 = v18;
    v42 = (v12 + v41 + v40) & ~v41;
    v43 = swift_allocObject();
    *(v43 + 2) = 0;
    *(v43 + 3) = 0;
    *(v43 + 4) = v67;
    sub_1D260E2B8(v65, &v43[v39], type metadata accessor for GeneratedPreviewOptions);
    sub_1D260E2B8(v35, &v43[v40], type metadata accessor for GeneratedPreviewOptions);
    (*(v6 + 32))(&v43[v42], v37, v52);
    sub_1D2870F78();
    v44 = sub_1D22AE01C(0, 0, v66, &unk_1D2898358, v43);
    v45 = v55;
    v46 = *(v55 + 60);

    *&v25[v46] = v44;
    v47 = v56;
    sub_1D23BBF8C(0, v56);
    sub_1D22BD238(v47, &qword_1EC6DA810, &qword_1D28972B0);
    v48 = v53;
    v49 = v65;
    sub_1D260E0F8(v53, v65, v54);
    v50 = v58;
    sub_1D22BD1D0(v25, v58, &qword_1EC6DA810, &qword_1D28972B0);
    (*(v59 + 56))(v50, 0, 1, v45);
    sub_1D25CF630(v50, v49);
    sub_1D260E160(v48, type metadata accessor for GeneratedPreviewOptions);
    sub_1D22BD238(v25, &qword_1EC6DA810, &qword_1D28972B0);
    v29 = v60;
  }

  return v29 != 0;
}

BOOL sub_1D260C7F0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEC38, &qword_1D2898220);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v47 - v5;
  v59 = sub_1D28785F8();
  v7 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v62 = v8;
  v64 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ImageKeyFaceLoader.Context(0);
  v60 = *(v9 - 8);
  v10 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v61 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60, &qword_1D28811F0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v47 - v12;
  v14 = type metadata accessor for ImageKeyFaceLoader.Context.ID(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v63 = (&v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v47 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA808, &unk_1D2884480);
  MEMORY[0x1EEE9AC00](v20);
  MEMORY[0x1EEE9AC00](v21);
  v26 = &v47 - v23;
  v27 = *(a1 + 8);
  v28 = *(v27 + 16);
  if (v28)
  {
    v58 = *(v27 + 16);
    v29 = *(v24 + 80);
    v55 = a1 + 8;
    v56 = v24;
    v47 = v15;
    v30 = v22;
    v52 = v22;
    v53 = v25;
    sub_1D22BD1D0(v27 + ((v29 + 32) & ~v29), &v47 - v23, &qword_1EC6DA808, &unk_1D2884480);
    v50 = v19;
    swift_getAtKeyPath();
    v57 = a1;
    v31 = *(v30 + 52);
    v54 = v6;
    v48 = v2;
    v49 = v13;
    v32 = *(v7 + 16);
    v33 = v59;
    v32(v13, &v26[v31], v59);
    (*(v7 + 56))(v13, 0, 1, v33);
    v34 = v61;
    sub_1D260E0F8(v26, v61, type metadata accessor for ImageKeyFaceLoader.Context);
    v51 = type metadata accessor for ImageKeyFaceLoader.Context.ID;
    sub_1D260E0F8(v19, v63, type metadata accessor for ImageKeyFaceLoader.Context.ID);
    v32(v64, &v26[v31], v33);
    v35 = (*(v60 + 80) + 40) & ~*(v60 + 80);
    v36 = (v10 + *(v47 + 80) + v35) & ~*(v47 + 80);
    v37 = (v16 + *(v7 + 80) + v36) & ~*(v7 + 80);
    v38 = swift_allocObject();
    *(v38 + 2) = 0;
    *(v38 + 3) = 0;
    *(v38 + 4) = v48;
    sub_1D260E2B8(v34, &v38[v35], type metadata accessor for ImageKeyFaceLoader.Context);
    v39 = v63;
    sub_1D260E2B8(v63, &v38[v36], type metadata accessor for ImageKeyFaceLoader.Context.ID);
    (*(v7 + 32))(&v38[v37], v64, v33);
    sub_1D2870F78();
    v40 = sub_1D22AE01C(0, 0, v49, &unk_1D2898248, v38);
    v41 = v52;
    v42 = *(v52 + 60);

    *&v26[v42] = v40;
    v43 = v53;
    sub_1D23BC0F8(0, v53);
    sub_1D22BD238(v43, &qword_1EC6DA808, &unk_1D2884480);
    v44 = v50;
    sub_1D260E0F8(v50, v39, v51);
    v45 = v54;
    sub_1D22BD1D0(v26, v54, &qword_1EC6DA808, &unk_1D2884480);
    (*(v56 + 56))(v45, 0, 1, v41);
    sub_1D25CFC5C(v45, v39);
    sub_1D260E160(v44, type metadata accessor for ImageKeyFaceLoader.Context.ID);
    sub_1D22BD238(v26, &qword_1EC6DA808, &unk_1D2884480);
    v28 = v58;
  }

  return v28 != 0;
}

void sub_1D260CDF4(uint64_t a1, int64_t a2, int a3)
{
  v4 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1D24EB704();
    *v4 = v9;
  }

  if (a2 < 0 || 1 << *(v9 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(v9 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v9 + 36) == a3)
  {
    v10 = *(v9 + 56);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA818, &unk_1D2884490);
    sub_1D22EC9BC(v10 + *(*(v11 - 8) + 72) * a2, a1, &qword_1EC6DA818, &unk_1D2884490);
    sub_1D25D36D8(a2, v9);
    *v4 = v9;
    return;
  }

LABEL_10:
  __break(1u);
}

void sub_1D260CF08(uint64_t a1, uint64_t a2, int64_t a3, int a4)
{
  v5 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1D24EDFEC();
    *v5 = v11;
  }

  if (a3 < 0 || 1 << *(v11 + 32) <= a3)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(v11 + 8 * (a3 >> 6) + 64) >> a3) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v11 + 36) == a4)
  {
    v12 = *(v11 + 48);
    v13 = type metadata accessor for GeneratedPreviewOptions(0);
    sub_1D260E2B8(v12 + *(*(v13 - 8) + 72) * a3, a1, type metadata accessor for GeneratedPreviewOptions);
    v14 = *(v11 + 56);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA810, &qword_1D28972B0);
    sub_1D22EC9BC(v14 + *(*(v15 - 8) + 72) * a3, a2, &qword_1EC6DA810, &qword_1D28972B0);
    sub_1D25D5344(a3, v11);
    *v5 = v11;
    return;
  }

LABEL_10:
  __break(1u);
}

void sub_1D260D058(uint64_t a1, uint64_t a2, int64_t a3, int a4)
{
  v5 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1D24EE950();
    *v5 = v11;
  }

  if (a3 < 0 || 1 << *(v11 + 32) <= a3)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(v11 + 8 * (a3 >> 6) + 64) >> a3) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v11 + 36) == a4)
  {
    v12 = *(v11 + 48);
    v13 = type metadata accessor for ImageKeyFaceLoader.Context.ID(0);
    sub_1D260E2B8(v12 + *(*(v13 - 8) + 72) * a3, a1, type metadata accessor for ImageKeyFaceLoader.Context.ID);
    v14 = *(v11 + 56);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA808, &unk_1D2884480);
    sub_1D22EC9BC(v14 + *(*(v15 - 8) + 72) * a3, a2, &qword_1EC6DA808, &unk_1D2884480);
    sub_1D25D5A10(a3, v11, v16);
    *v5 = v11;
    return;
  }

LABEL_10:
  __break(1u);
}

void *sub_1D260D1A8(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {
        sub_1D2870F78();
        goto LABEL_24;
      }

      ++v11;
      sub_1D2870F78();
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
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1D260D2FC(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {
        sub_1D2870F68();
        goto LABEL_24;
      }

      v11 += 2;
      sub_1D2870F68();
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

void sub_1D260D468(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v44 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v43 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v41 = &v35 - v13;
  v14 = a4 + 64;
  v15 = -1 << *(a4 + 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v33 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v14;
    *(a1 + 16) = ~v15;
    *(a1 + 24) = v33;
    *(a1 + 32) = v17;
    return;
  }

  if (!a3)
  {
    v33 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v35 = -1 << *(a4 + 32);
    v36 = a1;
    v18 = 0;
    v19 = (63 - v15) >> 6;
    v37 = v44 + 32;
    v38 = v44 + 16;
    a1 = 1;
    v39 = a4 + 64;
    v40 = a3;
    v20 = v41;
    while (v17)
    {
      v46 = a2;
LABEL_15:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v45 = v18;
      v24 = a4;
      v25 = *(a4 + 56);
      v26 = v43;
      v27 = v44;
      v28 = *(v44 + 72);
      v29 = v42;
      (*(v44 + 16))(v43, v25 + v28 * (v23 | (v18 << 6)), v42, v12);
      v30 = *(v27 + 32);
      v30(v20, v26, v29);
      v31 = v46;
      v30(v46, v20, v29);
      if (a1 == v40)
      {
        v15 = v35;
        a1 = v36;
        a4 = v24;
        v33 = v45;
        v14 = v39;
        goto LABEL_25;
      }

      a2 = &v31[v28];
      v32 = __OFADD__(a1++, 1);
      a4 = v24;
      v18 = v45;
      v14 = v39;
      if (v32)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v21 = v18;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v22 >= v19)
      {
        break;
      }

      v17 = *(v14 + 8 * v22);
      ++v21;
      if (v17)
      {
        v46 = a2;
        v18 = v22;
        goto LABEL_15;
      }
    }

    v17 = 0;
    if (v19 <= v18 + 1)
    {
      v34 = v18 + 1;
    }

    else
    {
      v34 = v19;
    }

    v33 = v34 - 1;
    v15 = v35;
    a1 = v36;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void sub_1D260D710(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_1D2872008();
  v42 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v41 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
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

void *sub_1D260D9B4(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
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
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1D260DB08(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, char *a5)
{
  *(v5 + 16) = a1;
  v8 = *a5;
  v9 = *a3;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_1D260DBC0;

  return sub_1D260218C(a2, v9, a4, v8);
}

uint64_t sub_1D260DBC0(uint64_t a1)
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

uint64_t sub_1D260DCD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, char *a6, uint64_t a7)
{
  v13 = *a6;
  v14 = *a5;
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1D22BC8FC;

  return sub_1D2608864(a1, a2, a3, a4, v14, v13, a7);
}

uint64_t sub_1D260DDB0(void *a1)
{
  v2 = v1;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 72) = xmmword_1D2898040;
  *(v1 + 88) = 10;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 40) = a1;
  v3 = a1;
  v4 = _SystemPhotoLibrary.photoLibrary.getter();
  type metadata accessor for FacePickerPersistentStorage();
  swift_allocObject();
  *(v2 + 32) = sub_1D2494120(v4);
  return v2;
}

uint64_t sub_1D260DED8(uint64_t a1)
{
  result = type metadata accessor for GeneratedPreviewOptions(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D260DF9C(uint64_t a1)
{
  result = type metadata accessor for PhotosPersonAsset(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for GeneratedPreviewOptions(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D260E0B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D260E0F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D260E160(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D260E1C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D22BDFF8;

  return sub_1D26026D8(a1, v4, v5, v7, v6);
}

uint64_t sub_1D260E2B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D260E320(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for ImageKeyFaceLoader.Context(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for ImageKeyFaceLoader.Context.ID(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_1D28785F8() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = v1[2];
  v14 = v1[3];
  v15 = v1[4];
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_1D22BDFF8;

  return sub_1D260971C(a1, v13, v14, v15, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t objectdestroy_32Tm()
{
  v1 = type metadata accessor for ImageKeyFaceLoader.Context(0);
  v2 = *(*(v1 - 8) + 80);
  v27 = *(*(v1 - 8) + 64);
  v28 = type metadata accessor for ImageKeyFaceLoader.Context.ID(0);
  v3 = *(*(v28 - 8) + 80);
  v26 = *(*(v28 - 8) + 64);
  v4 = sub_1D28785F8();
  v29 = *(v4 - 8);
  v30 = v4;
  v5 = *(v29 + 80);
  swift_unknownObjectRelease();

  v6 = v0 + ((v2 + 40) & ~v2);

  if (*(v6 + 32))
  {
  }

  v7 = v6 + *(type metadata accessor for PhotosPersonAsset(0) + 20);

  v8 = (v7 + *(type metadata accessor for PhotosPersonImage(0) + 24));

  v9 = type metadata accessor for PlaygroundImage(0);
  v10 = v9[8];
  v11 = sub_1D2871818();
  (*(*(v11 - 8) + 8))(v8 + v10, v11);
  v12 = (v8 + v9[10]);
  v13 = v12[1];
  if (v13 >> 60 != 15)
  {
    sub_1D22D6D60(*v12, v13);
  }

  v14 = v9[11];
  v15 = sub_1D2873AA8();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v8 + v14, 1, v15))
  {
    (*(v16 + 8))(v8 + v14, v15);
  }

  v17 = (((v2 + 40) & ~v2) + v27 + v3) & ~v3;
  v18 = (v17 + v26 + v5) & ~v5;
  v19 = v6 + *(v1 + 20);

  v20 = type metadata accessor for GeneratedPreviewOptions(0);
  v21 = *(v20 + 20);
  v22 = sub_1D2872008();
  v23 = *(*(v22 - 8) + 8);
  v23(v19 + v21, v22);

  v24 = v0 + v17 + *(v28 + 20);

  v23(v24 + *(v20 + 20), v22);

  (*(v29 + 8))(v0 + v18, v30);

  return swift_deallocObject();
}

uint64_t sub_1D260E8B4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D22BDFF8;

  return sub_1D25F8CC4(a1, a2);
}

uint64_t sub_1D260E960(uint64_t a1)
{
  v4 = *(type metadata accessor for ImageKeyFaceLoader.Context(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D22BC8FC;

  return sub_1D25FFFB4(a1, v1 + v5);
}

uint64_t sub_1D260EA3C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D22BDFF8;

  return sub_1D26005F0(a1, v4, v5, v7, v6);
}

unint64_t sub_1D260EB04()
{
  result = qword_1EC6DEFA8;
  if (!qword_1EC6DEFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DEFA8);
  }

  return result;
}

uint64_t sub_1D260EB58(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D22BDFF8;

  return sub_1D2601AD8(a1, v4, v5, v6);
}

uint64_t sub_1D260EC0C(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDA40, &unk_1D28982A0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for ImageKeyFaceLoader.Context(0) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_1D2871798() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = *(v1 + v7);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_1D22BDFF8;

  return sub_1D2600D8C(a1, v13, v14, v1 + v6, v15, v1 + v9, v1 + v12);
}

uint64_t sub_1D260EDE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D22BDFF8;

  return sub_1D2602468(a1, v4, v5, v7, v6);
}

uint64_t sub_1D260EED8(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for GeneratedPreviewOptions(0) - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 40) & ~v6;
  v8 = *(v5 + 64);
  v9 = (v8 + v6 + v7) & ~v6;
  v10 = *(sub_1D28785F8() - 8);
  v11 = (v9 + v8 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = v1[2];
  v13 = v1[3];
  v14 = v1[4];
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1D22BDFF8;

  return sub_1D2608EEC(a1, v12, v13, v14, v1 + v7, v1 + v9, v1 + v11);
}

uint64_t objectdestroy_76Tm()
{
  v1 = (type metadata accessor for GeneratedPreviewOptions(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  v5 = (v4 + v2 + v3) & ~v2;
  v12 = sub_1D28785F8();
  v6 = *(v12 - 8);
  v7 = (v5 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  swift_unknownObjectRelease();

  v8 = v1[7];
  v9 = sub_1D2872008();
  v10 = *(*(v9 - 8) + 8);
  v10(v0 + v3 + v8, v9);

  v10(v0 + v5 + v1[7], v9);

  (*(v6 + 8))(v0 + v7, v12);

  return swift_deallocObject();
}

uint64_t sub_1D260F230(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D22BDFF8;

  return sub_1D260DB08(a1, v4, v5, v7, v6);
}

uint64_t sub_1D260F320(uint64_t a1)
{
  v4 = *(sub_1D28785F8() - 8);
  v5 = (*(v4 + 80) + 42) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D22BDFF8;

  return sub_1D260DCD0(a1, v6, v7, v8, (v1 + 40), (v1 + 41), v1 + v5);
}

uint64_t sub_1D260F434(uint64_t result)
{
  if (result)
  {
    sub_1D2870F78();
    sub_1D2870F78();

    return sub_1D2870F78();
  }

  return result;
}

uint64_t objectdestroy_98Tm()
{
  v1 = sub_1D28785F8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 42) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

unint64_t sub_1D260F564()
{
  result = qword_1EC6DF000;
  if (!qword_1EC6DF000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF000);
  }

  return result;
}

double sub_1D260F5FC()
{
  v1 = sub_1D2877B48();
  v12 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D2877B68();
  v4 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 40);
  v7 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1D2612B04;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D23DFBA8;
  aBlock[3] = &block_descriptor_28;
  v8 = _Block_copy(aBlock);
  sub_1D2870F78();
  sub_1D2877B58();
  v13 = MEMORY[0x1E69E7CC0];
  sub_1D2612B24(&qword_1ED89CFE0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE80, &qword_1D287EE00);
  sub_1D249AF34(&qword_1ED89CEB0, &unk_1EC6DAE80, &qword_1D287EE00);
  sub_1D2879088();
  MEMORY[0x1D38A1540](0, v6, v3, v8);
  _Block_release(v8);
  (*(v12 + 8))(v3, v1);
  (*(v4 + 8))(v6, v11);

  return result;
}

uint64_t sub_1D260F8D0(uint64_t *a1, uint64_t a2)
{
  v51 = a2;
  v3 = sub_1D2873CB8();
  v49 = *(v3 - 8);
  v50 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v47 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v40 - v6;
  v8 = sub_1D28716B8();
  v42 = *(v8 - 8);
  v43 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70, &qword_1D2881410);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v40 - v11;
  v13 = sub_1D2871818();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v44 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v48 = &v40 - v17;
  v18 = sub_1D2872068();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *a1;
  v23 = a1[1];
  v46 = a1[2];
  (*(v19 + 104))(v22, *MEMORY[0x1E696E398], v18, v20);
  LOBYTE(a1) = sub_1D2872058();
  result = (*(v19 + 8))(v22, v18);
  if (a1)
  {
    sub_1D25E3608(v51, v12);
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      sub_1D22BD238(v12, &qword_1EC6D8F70, &qword_1D2881410);
      sub_1D28726B8();
      v26 = sub_1D2873CA8();
      v27 = sub_1D2878A18();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_1D226E000, v26, v27, "Could not save appearance, personIdentifier is nil", v28, 2u);
        MEMORY[0x1D38A3520](v28, -1, -1);
      }

      return (*(v49 + 8))(v7, v50);
    }

    else
    {
      v29 = v13;
      v30 = *(v14 + 32);
      v31 = v48;
      v51 = v29;
      v30(v48, v12);
      v32 = v45;
      v52 = v24;
      v53 = v23;
      v54 = v46;
      sub_1D2612AB0();
      v33 = sub_1D2871408();
      v35 = v34;
      v36 = v41;
      sub_1D26117B0(v41);
      v37 = sub_1D28716F8();
      v50 = &v40;
      v38 = *(v32 + 32);
      MEMORY[0x1EEE9AC00](v37);
      *(&v40 - 4) = v31;
      *(&v40 - 3) = v24;
      v39 = v46;
      *(&v40 - 2) = v23;
      *(&v40 - 1) = v39;
      os_unfair_lock_lock((v38 + 24));
      sub_1D2612B8C((v38 + 16));
      os_unfair_lock_unlock((v38 + 24));
      sub_1D22D6D60(v33, v35);
      (*(v42 + 8))(v36, v43);
      return (*(v14 + 8))(v31, v51);
    }
  }

  return result;
}

uint64_t sub_1D2610058@<X0>(char **a1@<X0>, int a2@<W1>, char **a3@<X8>)
{
  v63 = a2;
  v68 = a1;
  v4 = sub_1D2873CB8();
  v66 = *(v4 - 8);
  v67 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v60 = &v57 - v8;
  v9 = sub_1D28716B8();
  v61 = *(v9 - 8);
  v62 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v65 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70, &qword_1D2881410);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v57 - v12;
  v14 = sub_1D2871818();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v59 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v57 - v18;
  v20 = sub_1D2872068();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 104))(v24, *MEMORY[0x1E696E398], v20, v22);
  v25 = sub_1D2872058();
  result = (*(v21 + 8))(v24, v20);
  if ((v25 & 1) == 0)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return result;
  }

  v58 = a3;
  sub_1D25E3608(v68, v13);
  if ((*(v15 + 48))(v13, 1, v14) != 1)
  {
    v31 = v15;
    v32 = v19;
    v33 = (*(v15 + 32))(v19, v13, v14);
    if (v63)
    {
      v35 = v64;
      v34 = v65;
    }

    else
    {
      v35 = v64;
      v36 = *(v64 + 32);
      MEMORY[0x1EEE9AC00](v33);
      *(&v57 - 2) = v32;
      os_unfair_lock_lock(v36 + 6);
      sub_1D2612754(&v36[4], &v69);
      os_unfair_lock_unlock(v36 + 6);
      v34 = v65;
      if (v69 != 1)
      {
        v47 = v70;
        v48 = v58;
        *v58 = v69;
        *(v48 + 1) = v47;
        return (*(v31 + 8))(v32, v14);
      }
    }

    sub_1D26117B0(v34);
    v37 = [objc_opt_self() defaultManager];
    sub_1D2871658();
    v38 = sub_1D2878068();

    v39 = [v37 fileExistsAtPath_];

    if (v39)
    {
      v41 = sub_1D28716C8();
      v43 = v42;
      sub_1D261278C();
      v44 = sub_1D28713D8();
      v68 = &v57;
      v50 = v69;
      v49 = v70;
      v51 = v35;
      v52 = *(&v70 + 1);
      v57 = v32;
      v53 = *(v51 + 32);
      MEMORY[0x1EEE9AC00](v44);
      *(&v57 - 4) = v54;
      *(&v57 - 3) = v50;
      *(&v57 - 2) = v49;
      *(&v57 - 1) = v52;
      os_unfair_lock_lock((v53 + 24));
      sub_1D2612B8C((v53 + 16));
      os_unfair_lock_unlock((v53 + 24));
      sub_1D22D6D60(v41, v43);
      (*(v61 + 8))(v65, v62);
      v55 = v57;
      v56 = v58;
      *v58 = v50;
      v56[1] = v49;
      v56[2] = v52;
      return (*(v31 + 8))(v55, v14);
    }

    v45 = *(v35 + 32);
    MEMORY[0x1EEE9AC00](v40);
    *(&v57 - 2) = v32;
    os_unfair_lock_lock((v45 + 24));
    sub_1D2612770((v45 + 16));
    os_unfair_lock_unlock((v45 + 24));
    (*(v61 + 8))(v34, v62);
    v46 = v58;
    *v58 = 0;
    v46[1] = 0;
    v46[2] = 0;
    return (*(v31 + 8))(v32, v14);
  }

  sub_1D22BD238(v13, &qword_1EC6D8F70, &qword_1D2881410);
  sub_1D28726B8();
  v27 = sub_1D2873CA8();
  v28 = sub_1D2878A18();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_1D226E000, v27, v28, "Could not retrieve appearance, personIdentifier is nil", v29, 2u);
    MEMORY[0x1D38A3520](v29, -1, -1);
  }

  result = (*(v66 + 8))(v6, v67);
  v30 = v58;
  *v58 = 0;
  v30[1] = 0;
  v30[2] = 0;
  return result;
}

void sub_1D2610988()
{
  v1 = v0;
  v117 = sub_1D2873CB8();
  v107 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v114 = &v89 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v116 = &v89 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70, &qword_1D2881410);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v115 = &v89 - v6;
  v119 = sub_1D2871818();
  v106 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v112 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v121 = &v89 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA1B8, &qword_1D2884470);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v89 - v11;
  v109 = sub_1D2871528();
  v108 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v123 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D28716B8();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v118 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v89 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v89 - v21;
  v23 = sub_1D2872068();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v89 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 104))(v27, *MEMORY[0x1E696E398], v23, v25);
  v28 = sub_1D2872058();
  (*(v24 + 8))(v27, v23);
  if (v28)
  {
    v29 = *(v1 + 32);
    os_unfair_lock_lock((v29 + 24));
    v30 = *(*(v29 + 16) + 16);
    os_unfair_lock_unlock((v29 + 24));
    if (!v30)
    {
      v31 = [objc_opt_self() defaultManager];
      sub_1D2611BAC(v22);
      v32 = sub_1D28789D8();

      v33 = *(v15 + 8);
      v122 = v15 + 8;
      v120 = v33;
      v33(v22, v14);
      if (v32)
      {
        v94 = v1;
        v90 = (v29 + 16);
        v91 = v29;
        v92 = v32;
        sub_1D28789B8();
        sub_1D2871518();
        v35 = v114;
        v36 = v115;
        v37 = v116;
        if (v125)
        {
          v104 = 0;
          v38 = (v15 + 56);
          v110 = (v15 + 32);
          v113 = 0x80000001D28BE530;
          v105 = (v106 + 48);
          v100 = (v106 + 32);
          v98 = (v106 + 16);
          v106 += 8;
          ++v107;
          v99 = (v15 + 16);
          *&v34 = 136315138;
          v95 = v34;
          *&v34 = 136315394;
          v93 = v34;
          v102 = v22;
          v101 = v19;
          v111 = (v15 + 56);
          do
          {
            v39 = swift_dynamicCast();
            v40 = *v38;
            if (v39)
            {
              v40(v12, 0, 1, v14);
              (*v110)(v19, v12, v14);
              v41 = sub_1D2871548();
              v43 = v118;
              if (v41 == 0xD000000000000010 && v113 == v42)
              {

LABEL_13:
                sub_1D28715C8();
                sub_1D2871598();
                v120(v22, v14);
                sub_1D28717A8();

                v45 = v119;
                if ((*v105)(v36, 1, v119) == 1)
                {
                  sub_1D22BD238(v36, &qword_1EC6D8F70, &qword_1D2881410);
                  sub_1D28726B8();
                  (*v99)(v43, v19, v14);
                  v46 = sub_1D2873CA8();
                  v47 = v43;
                  v48 = sub_1D2878A18();
                  if (os_log_type_enabled(v46, v48))
                  {
                    v49 = swift_slowAlloc();
                    v50 = swift_slowAlloc();
                    v124[0] = v50;
                    *v49 = v95;
                    sub_1D2612B24(&qword_1EC6DA1D8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
                    v51 = sub_1D28795C8();
                    v53 = v52;
                    v54 = v120;
                    v120(v47, v14);
                    v55 = v51;
                    v22 = v102;
                    v56 = sub_1D23D7C84(v55, v53, v124);
                    v36 = v115;

                    *(v49 + 4) = v56;
                    _os_log_impl(&dword_1D226E000, v46, v48, "Encountered a file without a decodable name: %s", v49, 0xCu);
                    __swift_destroy_boxed_opaque_existential_0(v50);
                    v57 = v50;
                    v35 = v114;
                    MEMORY[0x1D38A3520](v57, -1, -1);
                    v58 = v49;
                    v37 = v116;
                    MEMORY[0x1D38A3520](v58, -1, -1);

                    (*v107)(v37, v117);
                    v54(v101, v14);
                    v19 = v101;
                  }

                  else
                  {

                    v62 = v120;
                    v120(v47, v14);
                    (*v107)(v37, v117);
                    v62(v19, v14);
                  }

                  v38 = v111;
                  goto LABEL_7;
                }

                (*v100)(v121, v36, v45);
                v59 = v104;
                v60 = sub_1D28716C8();
                v103 = v106 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
                if (v59)
                {
                  v104 = 0;
                  sub_1D28726B8();
                  v66 = v112;
                  (*v98)(v112, v121, v45);
                  v67 = v59;
                  v68 = v45;
                  v69 = sub_1D2873CA8();
                  v70 = sub_1D2878A18();

                  if (os_log_type_enabled(v69, v70))
                  {
                    v71 = swift_slowAlloc();
                    v96 = swift_slowAlloc();
                    v97 = swift_slowAlloc();
                    v124[0] = v97;
                    *v71 = v93;
                    sub_1D2612B24(&qword_1ED8A6C90, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
                    v72 = sub_1D28795C8();
                    v73 = v66;
                    v75 = v74;
                    v76 = v68;
                    v88 = *v106;
                    (*v106)(v73, v76);
                    v77 = sub_1D23D7C84(v72, v75, v124);

                    *(v71 + 4) = v77;
                    *(v71 + 12) = 2112;
                    v78 = v59;
                    v79 = _swift_stdlib_bridgeErrorToNSError();
                    *(v71 + 14) = v79;
                    v80 = v96;
                    *v96 = v79;
                    _os_log_impl(&dword_1D226E000, v69, v70, "Could not decode appearance file for person: %s with error: %@", v71, 0x16u);
                    sub_1D22BD238(v80, qword_1EC6DA930, &qword_1D287E870);
                    MEMORY[0x1D38A3520](v80, -1, -1);
                    v81 = v97;
                    __swift_destroy_boxed_opaque_existential_0(v97);
                    MEMORY[0x1D38A3520](v81, -1, -1);
                    v82 = v71;
                    v35 = v114;
                    MEMORY[0x1D38A3520](v82, -1, -1);

                    (*v107)(v35, v117);
                    v120(v19, v14);
LABEL_25:
                    v37 = v116;
                    v83 = v119;
                  }

                  else
                  {

                    v88 = *v106;
                    (*v106)(v66, v45);
                    (*v107)(v35, v117);
                    v120(v19, v14);
                    v37 = v116;
                    v83 = v45;
                  }

                  v88(v121, v83);
                  v36 = v115;
                  v22 = v102;
                  v38 = v111;
                  goto LABEL_7;
                }

                v63 = v60;
                v64 = v61;
                sub_1D261278C();
                v65 = sub_1D28713D8();
                v97 = &v89;
                v84 = v124[0];
                v85 = v124[2];
                MEMORY[0x1EEE9AC00](v65);
                *(&v89 - 4) = v121;
                *(&v89 - 3) = v84;
                *(&v89 - 2) = v86;
                *(&v89 - 1) = v85;
                v87 = v91;
                os_unfair_lock_lock(v91 + 6);
                sub_1D2612B6C(v90);
                v104 = 0;
                os_unfair_lock_unlock(v87 + 6);
                sub_1D22D6D60(v63, v64);
                v35 = v114;

                v120(v19, v14);
                v88 = *v106;
                goto LABEL_25;
              }

              v44 = sub_1D2879618();

              if (v44)
              {
                goto LABEL_13;
              }

              v120(v19, v14);
              v38 = v111;
            }

            else
            {
              v40(v12, 1, 1, v14);
              sub_1D22BD238(v12, &qword_1EC6DA1B8, &qword_1D2884470);
            }

LABEL_7:
            sub_1D2871518();
          }

          while (v125);
        }

        (*(v108 + 8))(v123, v109);
      }
    }
  }
}

uint64_t sub_1D26117B0@<X0>(uint64_t a1@<X8>)
{
  v17[1] = a1;
  v1 = sub_1D2871538();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D28716B8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v17 - v10;
  v18 = sub_1D28717B8();
  v19 = v12;
  sub_1D2870F68();
  MEMORY[0x1D38A0C50](46, 0xE100000000000000);

  sub_1D2870F68();
  MEMORY[0x1D38A0C50](0xD000000000000010, 0x80000001D28BE530);

  v13 = v18;
  v14 = v19;
  sub_1D2611BAC(v8);
  v18 = v13;
  v19 = v14;
  (*(v2 + 104))(v4, *MEMORY[0x1E6968F70], v1);
  sub_1D22BD06C();
  sub_1D2871698();
  (*(v2 + 8))(v4, v1);
  v15 = *(v6 + 8);
  v15(v8, v5);

  sub_1D2871608();
  return (v15)(v11, v5);
}

unint64_t sub_1D2611A38@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *result;
  if (*(*result + 16))
  {
    result = sub_1D25D064C(a2);
    if (v5)
    {
      v6 = (*(v4 + 56) + 24 * result);
      v7 = *v6;
      v8 = v6[1];
      v9 = v6[2];
      *a3 = *v6;
      a3[1] = v8;
      a3[2] = v9;
      return sub_1D2396784(v7, v8, v9);
    }

    else
    {
      a3[1] = 0;
      a3[2] = 0;
      *a3 = 1;
    }
  }

  else
  {
    a3[1] = 0;
    a3[2] = 0;
    *a3 = 1;
  }

  return result;
}

uint64_t sub_1D2611AC0(uint64_t *a1, uint64_t a2)
{
  result = sub_1D25D064C(a2);
  if (v4)
  {
    v5 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *a1;
    v14 = *a1;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D24EF4E4();
      v7 = v14;
    }

    v8 = *(v7 + 48);
    v9 = sub_1D2871818();
    (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
    v10 = (*(v7 + 56) + 24 * v5);
    v11 = *v10;
    v12 = v10[1];
    v13 = v10[2];
    sub_1D25D5F98(v5, v7);
    result = sub_1D238D058(v11, v12, v13);
    *a1 = v7;
  }

  return result;
}

uint64_t sub_1D2611BAC@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v42[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1D2873AA8();
  v39 = *(v1 - 8);
  v40 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v36 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA1B8, &qword_1D2884470);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v35 - v4;
  v6 = sub_1D28716B8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35 - v11;
  v13 = objc_opt_self();
  v14 = [v13 defaultManager];
  v15 = sub_1D2878068();
  v16 = [v14 containerURLForSecurityApplicationGroupIdentifier_];

  v37 = v7;
  v38 = v6;
  if (v16)
  {
    sub_1D2871638();

    v17 = *(v7 + 32);
    v17(v5, v9, v6);
    (*(v7 + 56))(v5, 0, 1, v6);
    v17(v12, v5, v6);
    v18 = v13;
  }

  else
  {
    (*(v7 + 56))(v5, 1, 1, v6);
    v19 = [v13 defaultManager];
    v42[0] = 0;
    v20 = [v19 URLForDirectory:9 inDomain:1 appropriateForURL:0 create:1 error:v42];

    v17 = v42[0];
    if (!v20)
    {
LABEL_12:
      v34 = v17;
      sub_1D28714B8();

      swift_willThrow();
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    v18 = v13;
    sub_1D2871638();
    v21 = v17;

    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {
      sub_1D22BD238(v5, &qword_1EC6DA1B8, &qword_1D2884470);
    }
  }

  v22 = v36;
  sub_1D2873A78();
  sub_1D28715D8();
  (*(v39 + 8))(v22, v40);
  v23 = [v18 defaultManager];
  sub_1D2871658();
  v24 = sub_1D2878068();

  v25 = [v23 directoryExistsAtPath_];

  if (v25)
  {
    return (*(v37 + 8))(v12, v38);
  }

  v27 = [v18 defaultManager];
  v28 = sub_1D28715B8();
  v42[0] = 0;
  v29 = [v27 createDirectoryAtURL:v28 withIntermediateDirectories:1 attributes:0 error:v42];

  v30 = v38;
  if (!v29)
  {
    v33 = v42[0];
    sub_1D28714B8();

    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    goto LABEL_12;
  }

  v31 = *(v37 + 8);
  v32 = v42[0];
  return v31(v12, v30);
}

uint64_t sub_1D26120FC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1D2870F68();
  sub_1D2870F68();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *a1;
  result = sub_1D24EA23C(a3, a4, a5, a2, isUniquelyReferenced_nonNull_native);
  *a1 = v12;
  return result;
}

void sub_1D2612194(uint64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  v1 = sub_1D2873CB8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D28716B8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v38 - v10;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v41 = v4;
    v45 = objc_opt_self();
    v14 = [v45 defaultManager];
    v42 = v13;
    sub_1D2611BAC(v11);
    v15 = sub_1D28715B8();
    v43 = *(v6 + 8);
    v44 = v6 + 8;
    v43(v11, v5);
    v46 = 0;
    v16 = [v14 contentsOfDirectoryAtURL:v15 includingPropertiesForKeys:0 options:0 error:&v46];

    v17 = v46;
    if (v16)
    {
      v39 = v2;
      v40 = v1;
      v18 = sub_1D28783E8();
      v19 = v17;

      v20 = *(v18 + 16);
      if (!v20)
      {
LABEL_8:

        return;
      }

      v21 = 0;
      while (1)
      {
        if (v21 >= *(v18 + 16))
        {
          __break(1u);
        }

        (*(v6 + 16))(v8, v18 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v21, v5);
        v22 = [v45 defaultManager];
        v23 = sub_1D28715B8();
        v46 = 0;
        v24 = [v22 removeItemAtURL:v23 error:&v46];

        v25 = v46;
        if (!v24)
        {
          break;
        }

        ++v21;
        v43(v8, v5);
        if (v20 == v21)
        {
          goto LABEL_8;
        }
      }

      v28 = v25;

      v27 = sub_1D28714B8();

      swift_willThrow();
      v43(v8, v5);
      v2 = v39;
      v1 = v40;
    }

    else
    {
      v26 = v46;
      v27 = sub_1D28714B8();

      swift_willThrow();
    }

    v29 = v41;
    sub_1D28726B8();
    v30 = v27;
    v31 = sub_1D2873CA8();
    v32 = sub_1D2878A18();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v46 = v34;
      *v33 = 136315138;
      swift_getErrorValue();
      v35 = sub_1D2879748();
      v37 = sub_1D23D7C84(v35, v36, &v46);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_1D226E000, v31, v32, "Could not purge attributes: %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x1D38A3520](v34, -1, -1);
      MEMORY[0x1D38A3520](v33, -1, -1);
    }

    else
    {
    }

    (*(v2 + 8))(v29, v1);
  }
}

uint64_t sub_1D261267C()
{

  return swift_deallocClassInstance();
}

void sub_1D2612700(uint64_t *a2@<X8>)
{
  swift_allocObject();
  v3 = sub_1D26127E0();

  *a2 = v3;
}

unint64_t sub_1D261278C()
{
  result = qword_1EC6DF008;
  if (!qword_1EC6DF008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF008);
  }

  return result;
}

uint64_t sub_1D26127E0()
{
  v1 = v0;
  v11[0] = sub_1D2878A88();
  MEMORY[0x1EEE9AC00](v11[0]);
  v2 = sub_1D2877B68();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1D2878AA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2871428();
  swift_allocObject();
  *(v0 + 16) = sub_1D2871418();
  sub_1D28713F8();
  swift_allocObject();
  *(v0 + 24) = sub_1D28713E8();
  v7 = MEMORY[0x1E69E7CC0];
  v8 = sub_1D25D77D8(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF010, &unk_1D2898508);
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  *(v9 + 16) = v8;
  *(v1 + 32) = v9;
  sub_1D24614C4();
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8098], v3);
  sub_1D2877B58();
  v11[1] = v7;
  sub_1D2612B24(&qword_1ED89CD60, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE50, &unk_1D2881A40);
  sub_1D249AF34(&qword_1ED89CE80, &unk_1EC6DAE50, &unk_1D2881A40);
  sub_1D2879088();
  *(v1 + 40) = sub_1D2878AD8();
  return v1;
}

unint64_t sub_1D2612AB0()
{
  result = qword_1EC6DF018;
  if (!qword_1EC6DF018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF018);
  }

  return result;
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1D2870F78();
}

uint64_t sub_1D2612B24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D2612BA4()
{
  dword_1EC6DF020 = 0;
  qword_1EC6DF028 = 0;
  qword_1EC6DF030 = 0;
}

void sub_1D2612BDC(void *a1)
{
  v2 = a1[2];
  if (v2 <= 0x64)
  {
    sub_1D2870F68();
  }

  else
  {
    sub_1D268E4E4(a1, (a1 + 4), 0, 0xC9uLL);
  }

  sub_1D23B7BB8();
  v3 = sub_1D2878A58();
  v4 = sub_1D28783C8();

  v5 = sub_1D2878068();
  [v3 setValue:v4 forKey:v5];

  if (qword_1EC6D8D28 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EC6DF020);

  if (v2)
  {
    if (!a1[2])
    {
      __break(1u);
      return;
    }

    v7 = a1[4];
    v6 = a1[5];
    sub_1D2870F68();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  qword_1EC6DF028 = v7;
  qword_1EC6DF030 = v6;

  os_unfair_lock_unlock(&dword_1EC6DF020);
}

uint64_t sub_1D2612D44()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D2878068();
  v2 = [v0 arrayForKey_];

  if (v2)
  {
    v3 = sub_1D28783E8();

    v4 = sub_1D23CA910(v3);

    if (v4)
    {
      return v4;
    }
  }

  return MEMORY[0x1E69E7CC0];
}

void sub_1D2612E14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2612D44();
  v5 = v4;
  v12 = v4;
  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = (v4 + 40);
    while (1)
    {
      v9 = *(v8 - 1) == a1 && *v8 == a2;
      if (v9 || (sub_1D2879618() & 1) != 0)
      {
        break;
      }

      ++v7;
      v8 += 2;
      if (v6 == v7)
      {
        goto LABEL_11;
      }
    }

    sub_1D23BBD30(v7);

    v5 = v12;
  }

LABEL_11:
  v10 = *(v5 + 2);
  sub_1D2870F68();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v10 >= *(v5 + 3) >> 1)
  {
    v5 = sub_1D27CC674(isUniquelyReferenced_nonNull_native, v10 + 1, 1, v5);
  }

  sub_1D278CD60(0, 0, 1, a1, a2);

  sub_1D2612BDC(v5);
}

unint64_t sub_1D2612F30()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D2878068();
  v2 = [v0 dictionaryForKey_];

  if (!v2 || (v3 = sub_1D2877E98(), v2, sub_1D24DCAD8(v3), v5 = v4, , !v5))
  {
    v5 = sub_1D25D76C8(MEMORY[0x1E69E7CC0]);
  }

  return v5;
}

uint64_t sub_1D2613014(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2612F30();
  if (*(v4 + 16) && (v5 = sub_1D25D0410(a1, a2), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
    sub_1D2870F68();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_1D2613084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D2612F30();
  if (*(v8 + 16) && (v9 = sub_1D25D0410(a3, a4), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
    v12 = *(v11 + 2);
    if (v12)
    {
      v13 = 0;
      v14 = v11 + 40;
      while (1)
      {
        v15 = *(v14 - 1) == a1 && *v14 == a2;
        if (v15 || (sub_1D2879618() & 1) != 0)
        {
          break;
        }

        ++v13;
        v14 += 2;
        if (v12 == v13)
        {
          goto LABEL_11;
        }
      }

      sub_1D2870F68();
      sub_1D23BBD30(v13);
    }

    else
    {
LABEL_11:
      sub_1D2870F68();
    }

    v19 = *(v11 + 2);
    sub_1D2870F68();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v19 >= *(v11 + 3) >> 1)
    {
      v11 = sub_1D27CC674(isUniquelyReferenced_nonNull_native, v19 + 1, 1, v11);
    }

    sub_1D278CD60(0, 0, 1, a1, a2);

    sub_1D2870F68();
    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D24E77A8(v11, a3, a4, v21);

    v18 = v8;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE60, &unk_1D28897D0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1D287F500;
    *(v16 + 32) = a1;
    *(v16 + 40) = a2;
    sub_1D2870F68();
    sub_1D2870F68();
    v17 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D24E77A8(v16, a3, a4, v17);

    v18 = v8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBBE0, &unk_1D288BCC0);
  v22 = sub_1D28793C8();
  v23 = v22;
  v24 = 0;
  v25 = v18 + 64;
  v26 = 1 << *(v18 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(v18 + 64);
  v29 = (v26 + 63) >> 6;
  v48 = v18;
  v49 = (v22 + 64);
  if (v28)
  {
    while (1)
    {
      v30 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
LABEL_27:
      v33 = v30 | (v24 << 6);
      v34 = *(v18 + 56);
      v35 = (*(v18 + 48) + 16 * v33);
      v36 = *v35;
      v37 = v35[1];
      v38 = *(v34 + 8 * v33);
      if (v38[2] <= 5uLL)
      {
        sub_1D2870F68();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE60, &unk_1D28897D0);
        v39 = swift_allocObject();
        v40 = _swift_stdlib_malloc_size(v39);
        v41 = v40 - 32;
        if (v40 < 32)
        {
          v41 = v40 - 17;
        }

        v39[2] = 5;
        v39[3] = 2 * (v41 >> 4);
        swift_arrayInitWithCopy();
        v38 = v39;
      }

      *&v49[(v33 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v33;
      v42 = (v23[6] + 16 * v33);
      *v42 = v36;
      v42[1] = v37;
      *(v23[7] + 8 * v33) = v38;
      v43 = v23[2];
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        break;
      }

      v23[2] = v45;
      sub_1D2870F68();
      v18 = v48;
      if (!v28)
      {
        goto LABEL_22;
      }
    }

LABEL_39:
    __break(1u);
  }

  else
  {
LABEL_22:
    v31 = v24;
    while (1)
    {
      v24 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v24 >= v29)
      {
        break;
      }

      v32 = *(v25 + 8 * v24);
      ++v31;
      if (v32)
      {
        v30 = __clz(__rbit64(v32));
        v28 = (v32 - 1) & v32;
        goto LABEL_27;
      }
    }

    sub_1D23B7BB8();
    v46 = sub_1D2878A58();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA358, &qword_1D2883920);
    v47 = sub_1D2877E78();

    v50 = sub_1D2878068();
    [v46 setValue:v47 forKey:v50];
  }
}

BOOL sub_1D26134C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  v3 = sub_1D2612F30();
  if (*(v3 + 16) && (v4 = sub_1D25D0410(v1, v2), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 8 * v4);
    sub_1D2870F68();

    v7 = *(v6 + 16);

    return v7 != 0;
  }

  else
  {

    return 0;
  }
}

uint64_t type metadata accessor for AppProtectionShieldView(uint64_t a1)
{
  result = qword_1EC6D83D0;
  if (!qword_1EC6D83D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D26135E4(uint64_t a1)
{
  sub_1D261365C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for AppProtectionShieldViewModel();
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1D261365C(uint64_t a1)
{
  if (!qword_1ED89DFC8)
  {
    sub_1D2875118();
    v1 = sub_1D28744A8();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED89DFC8);
    }
  }
}

void sub_1D26136E8()
{
  type metadata accessor for AppProtectionShieldView(0);
  sub_1D23C7B7C();
  v0 = sub_1D22BE114(0xD000000000000019, 0x80000001D28AEBE0);
  if (v0)
  {
    v1 = v0;
    v2 = [v0 localizedName];

    sub_1D28780A8();
  }

  sub_1D23C7B7C();
  v3 = sub_1D22BE518(0xD000000000000019, 0x80000001D28AEBE0);

  if (v3)
  {
    v4 = objc_allocWithZone(MEMORY[0x1E698B100]);
    v5 = sub_1D2878068();

    v6 = [v4 initWithLocalizedApplicationName:v5 iconImage:v3];

    v7 = objc_opt_self();
    v8 = v6;
    v9 = [v7 clearColor];
    [v8 setBackgroundColor_];

    [v8 setDelegate_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D26138B4()
{
  v0 = sub_1D2875118();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - v5;
  sub_1D24CC6AC((&v10 - v5));
  sub_1D2875108();
  v7 = sub_1D28750F8();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);
  if (v7)
  {
    return 0x4074000000000000;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D26139F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D2613B3C(&qword_1EC6DF038, &unk_1D2898588);

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1D2613A78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D2613B3C(&qword_1EC6DF038, &unk_1D2898588);

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1D2613AF8(uint64_t a1)
{
  sub_1D2613B3C(&qword_1EC6DF038, &unk_1D2898588);
  sub_1D2875A98();
  __break(1u);
}

uint64_t sub_1D2613B3C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AppProtectionShieldView(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for CharacterEditingView(uint64_t a1)
{
  result = qword_1ED8A1A48;
  if (!qword_1ED8A1A48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D2613BF4(uint64_t a1)
{
  sub_1D2613CD0(319);
  if (v1 <= 0x3F)
  {
    sub_1D22EAE8C(319);
    if (v2 <= 0x3F)
    {
      sub_1D2613D28(319, &qword_1ED89E040, &type metadata for CreationViewStyle);
      if (v3 <= 0x3F)
      {
        sub_1D2613D28(319, &qword_1ED89DFB0, MEMORY[0x1E69E6370]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D2613CD0(uint64_t a1)
{
  if (!qword_1ED89D1B0)
  {
    type metadata accessor for CharacterEditingViewModel(255);
    v1 = sub_1D2877338();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED89D1B0);
    }
  }
}

void sub_1D2613D28(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1D28744A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1D2613DA8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 96);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D2613DF0(uint64_t result, int a2, int a3)
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
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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
      *(result + 96) = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D2613E7C@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v2 = sub_1D28714D8();
  v25 = *(v2 - 8);
  v26 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D28718F8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  v12 = sub_1D2878048();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v24 - v17;
  v19 = v1[1];
  v29 = *v1;
  v30 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA338, &qword_1D28828C8);
  sub_1D2877308();
  v20 = *(v28 + 32);

  if (v20 == 1)
  {
    sub_1D2877FE8();
    if (qword_1ED89E0E8 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  sub_1D2877FE8();
  if (qword_1ED89E0E8 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  v21 = qword_1ED8B0058;
  sub_1D28718C8();
  (*(v13 + 16))(v15, v18, v12);
  (*(v6 + 16))(v8, v11, v5);
  v22 = [v21 bundleURL];
  sub_1D2871638();

  (*(v25 + 104))(v4, *MEMORY[0x1E6968DF8], v26);
  sub_1D2871508();
  (*(v6 + 8))(v11, v5);
  return (*(v13 + 8))(v18, v12);
}

double sub_1D261429C()
{
  v0 = sub_1D2875E18();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v24 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0DB0, &qword_1D288C390);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99B8, &unk_1D287E890);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v23 - v14);
  type metadata accessor for CharacterEditingView(0);
  sub_1D24CC0C4(v15);
  (*(v1 + 104))(v12, *MEMORY[0x1E697FF38], v0);
  (*(v1 + 56))(v12, 0, 1, v0);
  v16 = *(v4 + 56);
  sub_1D22BD1D0(v15, v6, &qword_1EC6D99B8, &unk_1D287E890);
  sub_1D22BD1D0(v12, &v6[v16], &qword_1EC6D99B8, &unk_1D287E890);
  v17 = *(v1 + 48);
  if (v17(v6, 1, v0) == 1)
  {
    sub_1D22BD238(v12, &qword_1EC6D99B8, &unk_1D287E890);
    sub_1D22BD238(v15, &qword_1EC6D99B8, &unk_1D287E890);
    if (v17(&v6[v16], 1, v0) == 1)
    {
      sub_1D22BD238(v6, &qword_1EC6D99B8, &unk_1D287E890);
      return 12.0;
    }

    goto LABEL_6;
  }

  sub_1D22BD1D0(v6, v9, &qword_1EC6D99B8, &unk_1D287E890);
  if (v17(&v6[v16], 1, v0) == 1)
  {
    sub_1D22BD238(v12, &qword_1EC6D99B8, &unk_1D287E890);
    sub_1D22BD238(v15, &qword_1EC6D99B8, &unk_1D287E890);
    (*(v1 + 8))(v9, v0);
LABEL_6:
    sub_1D22BD238(v6, &qword_1EC6E0DB0, &qword_1D288C390);
    return 0.0;
  }

  v19 = &v6[v16];
  v20 = v24;
  (*(v1 + 32))(v24, v19, v0);
  sub_1D2620AA4(&qword_1ED89D3D0, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
  v21 = sub_1D2877F98();
  v22 = *(v1 + 8);
  v22(v20, v0);
  sub_1D22BD238(v12, &qword_1EC6D99B8, &unk_1D287E890);
  sub_1D22BD238(v15, &qword_1EC6D99B8, &unk_1D287E890);
  v22(v9, v0);
  sub_1D22BD238(v6, &qword_1EC6D99B8, &unk_1D287E890);
  result = 0.0;
  if (v21)
  {
    return 12.0;
  }

  return result;
}

double sub_1D2614700@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CharacterEditingView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1D262064C(v1, &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], type metadata accessor for CharacterEditingView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_1D26206B4(&v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v7 + v6, type metadata accessor for CharacterEditingView);
  v8 = sub_1D2875918();
  sub_1D2615C28(&v27);
  v9 = sub_1D2874838();
  v10 = MEMORY[0x1D389EE30]((2 * v9));
  v11 = sub_1D2874FB8();
  *(v26 + 9) = *(v33 + 9);
  v25 = v32;
  v26[0] = v33[0];
  v23 = v30;
  v24 = v31;
  v20 = v27;
  v21 = v28;
  v22 = v29;
  v19[160] = 1;
  v34[4] = v31;
  v34[5] = v32;
  v34[2] = v29;
  v34[3] = v30;
  v34[0] = v27;
  v34[1] = v28;
  v34[6] = v33[0];
  v34[7] = v26[1];
  v35 = v11;
  v36 = 0;
  LOBYTE(v37) = 1;
  BYTE1(v37) = v10;
  *(&v37 + 1) = v8;
  v44 = v27;
  v45 = v28;
  v48 = v31;
  v49 = v32;
  v46 = v29;
  v47 = v30;
  v52 = v11;
  v53 = v37;
  v50 = v33[0];
  v51 = v26[1];
  v38[4] = v31;
  v38[5] = v32;
  v38[6] = v33[0];
  v38[7] = v26[1];
  v38[0] = v27;
  v38[1] = v28;
  v38[2] = v29;
  v38[3] = v30;
  v39 = v11;
  v40 = 0;
  v41 = 1;
  v42 = v10;
  v43 = v8;
  sub_1D22BD1D0(v34, v19, &qword_1EC6DF040, &unk_1D2898790);
  sub_1D22BD238(v38, &qword_1EC6DF040, &unk_1D2898790);
  *a1 = sub_1D261EF34;
  *(a1 + 8) = v7;
  v12 = v51;
  *(a1 + 112) = v50;
  *(a1 + 128) = v12;
  v13 = v53;
  *(a1 + 144) = v52;
  *(a1 + 160) = v13;
  v14 = v47;
  *(a1 + 48) = v46;
  *(a1 + 64) = v14;
  v15 = v49;
  *(a1 + 80) = v48;
  *(a1 + 96) = v15;
  result = *&v44;
  v17 = v45;
  *(a1 + 16) = v44;
  *(a1 + 32) = v17;
  return result;
}

uint64_t sub_1D2614968(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF048, &qword_1D2898820);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF050, &qword_1D2898828);
  sub_1D261FB04();
  swift_getOpaqueTypeConformance2();
  return sub_1D2874F78();
}

uint64_t sub_1D2614A1C@<X0>(uint64_t a1@<X8>)
{
  v17[0] = a1;
  v1 = sub_1D28714E8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF050, &qword_1D2898828);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v17 - v9;
  sub_1D2614C0C(v17 - v9);
  sub_1D2613E7C(v7);
  (*(v2 + 16))(v4, v7, v1);
  v11 = sub_1D2876688();
  v13 = v12;
  v15 = v14;
  sub_1D261FB04();
  sub_1D28769F8();
  sub_1D22ED6E0(v11, v13, v15 & 1);

  (*(v2 + 8))(v7, v1);
  return sub_1D22BD238(v10, &qword_1EC6DF050, &qword_1D2898828);
}

uint64_t sub_1D2614C0C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D2875028();
  v102 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v101 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_1D2875B78();
  v95 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v94 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF0F0, &qword_1D2898880);
  v86 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v85 = &v84 - v5;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF0D8, &qword_1D2898878);
  MEMORY[0x1EEE9AC00](v88);
  v89 = &v84 - v6;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF0F8, &qword_1D2898888);
  v91 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v90 = &v84 - v7;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF0C8, &qword_1D2898870);
  MEMORY[0x1EEE9AC00](v111);
  v92 = &v84 - v8;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF0C0, &qword_1D2898868);
  v98 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v97 = &v84 - v9;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF100, &qword_1D2898890);
  v100 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v99 = &v84 - v10;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF108, &qword_1D2898898);
  MEMORY[0x1EEE9AC00](v109);
  v112 = &v84 - v11;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF110, &qword_1D28988A0);
  v106 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v105 = &v84 - v12;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF078, &qword_1D2898838);
  MEMORY[0x1EEE9AC00](v104);
  v14 = &v84 - v13;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF068, &qword_1D2898830);
  MEMORY[0x1EEE9AC00](v110);
  v16 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v107 = &v84 - v18;
  v19 = sub_1D28720D8();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v84 - v24;
  sub_1D28720C8();
  (*(v20 + 104))(v22, *MEMORY[0x1E696E3D8], v19);
  sub_1D2620AA4(&qword_1ED8A6BE0, MEMORY[0x1E696E3F8], MEMORY[0x1E696E408]);
  sub_1D2878368();
  sub_1D2878368();
  if (v121 == v128)
  {
    v26 = *(v20 + 8);
    v26(v22, v19);
    v26(v25, v19);

LABEL_4:
    v29 = v105;
    sub_1D2615EBC(v105);
    sub_1D2877848();
    sub_1D2875208();
    (*(v106 + 32))(v14, v29, v108);
    v30 = &v14[*(v104 + 36)];
    v31 = v126;
    v32 = v127;
    *(v30 + 4) = v125;
    *(v30 + 5) = v31;
    *(v30 + 6) = v32;
    v33 = v122;
    *v30 = v121;
    *(v30 + 1) = v33;
    v34 = v124;
    *(v30 + 2) = v123;
    *(v30 + 3) = v34;
    v35 = sub_1D2874FB8();
    v36 = sub_1D2876398();
    sub_1D22EC9BC(v14, v16, &qword_1EC6DF078, &qword_1D2898838);
    v37 = &v16[*(v110 + 36)];
    *v37 = v35;
    v37[8] = v36;
    v38 = v107;
    sub_1D22EC9BC(v16, v107, &qword_1EC6DF068, &qword_1D2898830);
    sub_1D22BD1D0(v38, v112, &qword_1EC6DF068, &qword_1D2898830);
    swift_storeEnumTagMultiPayload();
    sub_1D261FC40();
    v39 = sub_1D261FF2C();
    v40 = sub_1D22BAAF0();
    *&v128 = v111;
    *(&v128 + 1) = &type metadata for FixedPresentationSizing;
    v129 = v39;
    v130 = v40;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    *&v128 = v113;
    *(&v128 + 1) = MEMORY[0x1E69E6158];
    v129 = OpaqueTypeConformance2;
    v130 = MEMORY[0x1E69E6180];
    swift_getOpaqueTypeConformance2();
    sub_1D2875AF8();
    return sub_1D22BD238(v38, &qword_1EC6DF068, &qword_1D2898830);
  }

  v84 = v2;
  v27 = sub_1D2879618();
  v103 = a1;
  v28 = *(v20 + 8);
  v28(v22, v19);
  v28(v25, v19);

  if (v27)
  {
    goto LABEL_4;
  }

  v43 = sub_1D2876318();
  MEMORY[0x1EEE9AC00](v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF080, &qword_1D2898840);
  v45 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF088, &qword_1D2898848);
  v46 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF090, &qword_1D2898850);
  v47 = sub_1D261FE74();
  *&v121 = v46;
  *(&v121 + 1) = v47;
  v48 = swift_getOpaqueTypeConformance2();
  v49 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF0B0, &qword_1D2898860);
  v50 = sub_1D22BB9D8(&qword_1EC6DF0B8, &qword_1EC6DF0B0, &qword_1D2898860, MEMORY[0x1E697C5E0]);
  *&v121 = v49;
  *(&v121 + 1) = v50;
  v51 = swift_getOpaqueTypeConformance2();
  *&v121 = v44;
  *(&v121 + 1) = v45;
  *&v122 = v48;
  *(&v122 + 1) = v51;
  swift_getOpaqueTypeConformance2();
  v52 = v85;
  sub_1D28743A8();
  sub_1D2877848();
  sub_1D2875208();
  v53 = v89;
  (*(v86 + 32))(v89, v52, v87);
  v54 = (v53 + *(v88 + 36));
  v55 = v126;
  v56 = v127;
  v54[4] = v125;
  v54[5] = v55;
  v54[6] = v56;
  v57 = v122;
  *v54 = v121;
  v54[1] = v57;
  v58 = v124;
  v54[2] = v123;
  v54[3] = v58;
  v59 = v94;
  sub_1D2875B68();
  v60 = sub_1D2876318();
  sub_1D2876308();
  sub_1D2876308();
  if (sub_1D2876308() != v60)
  {
    sub_1D2876308();
  }

  sub_1D2620024();
  v61 = v90;
  sub_1D2876C28();
  (*(v95 + 8))(v59, v96);
  sub_1D22BD238(v53, &qword_1EC6DF0D8, &qword_1D2898878);
  sub_1D2876348();
  v62 = v115;
  sub_1D261429C();
  sub_1D2874298();
  *&v128 = v63;
  *(&v128 + 1) = v64;
  v129 = v65;
  v130 = v66;
  v131 = 0;
  v67 = v111;
  v68 = v92;
  sub_1D2875EF8();
  (*(v91 + 32))(v68, v61, v93);
  v116 = *(v62 + *(type metadata accessor for CharacterEditingView(0) + 32) + 120);
  v69 = sub_1D261FF2C();
  v70 = sub_1D22BAAF0();
  v71 = v97;
  sub_1D2876B18();
  sub_1D22BD238(v68, &qword_1EC6DF0C8, &qword_1D2898870);
  v72 = v101;
  sub_1D2875018();
  v73 = v62[1];
  *&v116 = *v62;
  *(&v116 + 1) = v73;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA338, &qword_1D28828C8);
  sub_1D2877308();
  v74 = sub_1D264F064();
  v76 = v75;

  v119 = v74;
  v120 = v76;
  *&v116 = v67;
  *(&v116 + 1) = &type metadata for FixedPresentationSizing;
  v117 = v69;
  v118 = v70;
  v77 = swift_getOpaqueTypeConformance2();
  v78 = MEMORY[0x1E69E6158];
  v79 = MEMORY[0x1E69E6180];
  v80 = v99;
  v81 = v113;
  sub_1D2876A08();

  (*(v102 + 8))(v72, v84);
  (*(v98 + 8))(v71, v81);
  v82 = v100;
  v83 = v114;
  (*(v100 + 16))(v112, v80, v114);
  swift_storeEnumTagMultiPayload();
  sub_1D261FC40();
  *&v116 = v81;
  *(&v116 + 1) = v78;
  v117 = v77;
  v118 = v79;
  swift_getOpaqueTypeConformance2();
  sub_1D2875AF8();
  return (*(v82 + 8))(v80, v83);
}

void sub_1D2615C28(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99B8, &unk_1D287E890);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = (v32 - v4);
  v6 = type metadata accessor for CharacterEditingView(0);
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v1[1];
  v32[1] = *v1;
  v32[2] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA338, &qword_1D28828C8);
  sub_1D2877308();
  v12 = *(v32[0] + 32);

  sub_1D262064C(v1, v10, type metadata accessor for CharacterEditingView);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = swift_allocObject();
  sub_1D26206B4(v10, v14 + v13, type metadata accessor for CharacterEditingView);
  KeyPath = swift_getKeyPath();
  v16 = sub_1D2876358();
  v17 = *(v1 + *(v7 + 40) + 40);
  sub_1D24CC0C4(v5);
  sub_1D261F4F4(v5);
  sub_1D22BD238(v5, &qword_1EC6D99B8, &unk_1D287E890);
  sub_1D2874298();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  LOBYTE(v32[0]) = 0;
  v33 = 0;
  v26 = sub_1D2876348();
  v27 = 0uLL;
  v28 = v26;
  v29 = 0uLL;
  if ((v17 & 1) == 0)
  {
    sub_1D2874298();
    *(&v27 + 1) = v30;
    *(&v29 + 1) = v31;
  }

  *a1 = KeyPath;
  *(a1 + 8) = 0;
  *(a1 + 9) = v12;
  *(a1 + 16) = sub_1D261EF4C;
  *(a1 + 24) = v14;
  *(a1 + 32) = v16;
  *(a1 + 40) = v19;
  *(a1 + 48) = v21;
  *(a1 + 56) = v23;
  *(a1 + 64) = v25;
  *(a1 + 72) = 0;
  *(a1 + 80) = v28;
  *(a1 + 88) = v27;
  *(a1 + 104) = v29;
  *(a1 + 120) = v17;
}

uint64_t sub_1D2615EBC@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v27 = sub_1D2875F18();
  v2 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99B8, &unk_1D287E890);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v26 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF090, &qword_1D2898850);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - v9;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF080, &qword_1D2898840);
  v11 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v13 = &v26 - v12;
  *v10 = sub_1D2875918();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF118, &qword_1D28988A8);
  sub_1D2616290(v1, &v10[*(v14 + 44)]);
  v15 = sub_1D2876328();
  type metadata accessor for CharacterEditingView(0);
  sub_1D24CC0C4(v7);
  sub_1D261EFBC(v7);
  sub_1D22BD238(v7, &qword_1EC6D99B8, &unk_1D287E890);
  sub_1D2874298();
  v16 = &v10[*(v8 + 36)];
  *v16 = v15;
  *(v16 + 1) = v17;
  *(v16 + 2) = v18;
  *(v16 + 3) = v19;
  *(v16 + 4) = v20;
  v16[40] = 0;
  sub_1D2875F08();
  v21 = sub_1D261FE74();
  sub_1D2876CF8();
  (*(v2 + 8))(v4, v27);
  sub_1D22BD238(v10, &qword_1EC6DF090, &qword_1D2898850);
  v30 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF088, &qword_1D2898848);
  v31 = v8;
  v32 = v21;
  swift_getOpaqueTypeConformance2();
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF0B0, &qword_1D2898860);
  v23 = sub_1D22BB9D8(&qword_1EC6DF0B8, &qword_1EC6DF0B0, &qword_1D2898860, MEMORY[0x1E697C5E0]);
  v31 = v22;
  v32 = v23;
  swift_getOpaqueTypeConformance2();
  v24 = v28;
  sub_1D2876F08();
  return (*(v11 + 8))(v13, v24);
}

uint64_t sub_1D2616290@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = sub_1D28720D8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v39 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v38 = &v34 - v7;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF160, &qword_1D2898948);
  MEMORY[0x1EEE9AC00](v37);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF168, &qword_1D2898950);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF170, &qword_1D2898958);
  MEMORY[0x1EEE9AC00](v36);
  v14 = &v34 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF178, &qword_1D2898960);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v34 - v19;
  v21 = a1[1];
  v42 = *a1;
  v43 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA338, &qword_1D28828C8);
  sub_1D2877308();
  v22 = *(v41 + 32);

  v35 = a1;
  if (v22 == 1)
  {
    sub_1D2616770(a1, v14);
    sub_1D22BD1D0(v14, v12, &qword_1EC6DF170, &qword_1D2898958);
    swift_storeEnumTagMultiPayload();
    sub_1D2620358();
    sub_1D2620408();
    sub_1D2875AF8();
    v23 = v14;
    v24 = &qword_1EC6DF170;
    v25 = &qword_1D2898958;
  }

  else
  {
    sub_1D2616B84(a1, v9);
    sub_1D22BD1D0(v9, v12, &qword_1EC6DF160, &qword_1D2898948);
    swift_storeEnumTagMultiPayload();
    sub_1D2620358();
    sub_1D2620408();
    sub_1D2875AF8();
    v23 = v9;
    v24 = &qword_1EC6DF160;
    v25 = &qword_1D2898948;
  }

  sub_1D22BD238(v23, v24, v25);
  v26 = v38;
  sub_1D28720C8();
  v27 = v39;
  (*(v4 + 104))(v39, *MEMORY[0x1E696E3D8], v3);
  sub_1D2620AA4(&qword_1ED8A6BE8, MEMORY[0x1E696E3F8], MEMORY[0x1E696E400]);
  v28 = sub_1D2877F98();
  v29 = *(v4 + 8);
  v29(v27, v3);
  v29(v26, v3);
  if (v28)
  {
    v30 = 0;
  }

  else
  {
    v30 = *(v35 + *(type metadata accessor for CharacterEditingView(0) + 32) + 112);
  }

  sub_1D22BD1D0(v20, v17, &qword_1EC6DF178, &qword_1D2898960);
  v31 = v40;
  sub_1D22BD1D0(v17, v40, &qword_1EC6DF178, &qword_1D2898960);
  v32 = v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF190, &qword_1D2898978) + 64);
  *v32 = v30;
  *(v32 + 8) = 0;
  *(v32 + 9) = v28 & 1;
  sub_1D22BD238(v20, &qword_1EC6DF178, &qword_1D2898960);
  return sub_1D22BD238(v17, &qword_1EC6DF178, &qword_1D2898960);
}

uint64_t sub_1D2616770@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF198, &qword_1D2898980);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v29 = &v28[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v28[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF1A0, &qword_1D2898988);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v28[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28[-v12];
  v14 = *(a1 + *(type metadata accessor for CharacterEditingView(0) + 32) + 80);
  v15 = a1[1];
  *&v35 = *a1;
  v16 = v35;
  *(&v35 + 1) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA338, &qword_1D28828C8);
  sub_1D2877308();

  *v13 = sub_1D2875918();
  *(v13 + 1) = v14;
  v13[16] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF1A8, &qword_1D2898990);
  sub_1D2617B0C(a1, &v13[*(v17 + 44)]);
  sub_1D2877848();
  sub_1D2875208();
  *&v33[55] = v38;
  *&v33[71] = v39;
  *&v33[87] = v40;
  *&v33[103] = v41;
  *&v33[7] = v35;
  *&v33[23] = v36;
  v34 = 0;
  *&v33[39] = v37;
  v31 = v16;
  v32 = v15;
  sub_1D2877308();

  *v7 = sub_1D2875918();
  *(v7 + 1) = v14;
  v7[16] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF1B0, &qword_1D2898998);
  sub_1D26188D4(a1, &v7[*(v18 + 44)]);
  v19 = v10;
  sub_1D22BD1D0(v13, v10, &qword_1EC6DF1A0, &qword_1D2898988);
  v20 = v29;
  sub_1D22BD1D0(v7, v29, &qword_1EC6DF198, &qword_1D2898980);
  v21 = v30;
  sub_1D22BD1D0(v19, v30, &qword_1EC6DF1A0, &qword_1D2898988);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF1B8, &qword_1D28989A0);
  v23 = v21 + *(v22 + 48);
  *v23 = v14;
  v24 = *&v33[80];
  *(v23 + 73) = *&v33[64];
  *(v23 + 89) = v24;
  *(v23 + 105) = *&v33[96];
  v25 = *&v33[16];
  *(v23 + 9) = *v33;
  *(v23 + 25) = v25;
  v26 = *&v33[48];
  *(v23 + 41) = *&v33[32];
  *(v23 + 8) = 0;
  *(v23 + 120) = *&v33[111];
  *(v23 + 57) = v26;
  sub_1D22BD1D0(v20, v21 + *(v22 + 64), &qword_1EC6DF198, &qword_1D2898980);
  sub_1D22BD238(v7, &qword_1EC6DF198, &qword_1D2898980);
  sub_1D22BD238(v13, &qword_1EC6DF1A0, &qword_1D2898988);
  sub_1D22BD238(v20, &qword_1EC6DF198, &qword_1D2898980);
  return sub_1D22BD238(v19, &qword_1EC6DF1A0, &qword_1D2898988);
}

uint64_t sub_1D2616B84@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF1A0, &qword_1D2898988);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v35 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF198, &qword_1D2898980);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v36 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (v35 - v12);
  v14 = (a1 + *(type metadata accessor for CharacterEditingView(0) + 32));
  v15 = v14[10];
  v16 = *a1;
  v17 = a1[1];
  *&v42 = *a1;
  *(&v42 + 1) = v17;
  v35[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA338, &qword_1D28828C8);
  sub_1D2877308();

  *v13 = sub_1D2875918();
  v13[1] = v15;
  *(v13 + 16) = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF1B0, &qword_1D2898998);
  sub_1D26188D4(a1, v13 + *(v18 + 44));
  v19 = v14[11];
  sub_1D2877848();
  if (v15 > v19)
  {
    sub_1D2878A28();
    v20 = sub_1D28762E8();
    v35[0] = a1;
    v21 = v17;
    v22 = v5;
    v23 = v16;
    v24 = v20;
    sub_1D2873BE8();

    v16 = v23;
    v5 = v22;
    v17 = v21;
    a1 = v35[0];
  }

  sub_1D2875208();
  *&v40[55] = v45;
  *&v40[71] = v46;
  *&v40[87] = v47;
  *&v40[103] = v48;
  *&v40[7] = v42;
  *&v40[23] = v43;
  v41 = 1;
  *&v40[39] = v44;
  v38 = v16;
  v39 = v17;
  sub_1D2877308();

  *v8 = sub_1D2875918();
  v8[1] = v15;
  *(v8 + 16) = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF1A8, &qword_1D2898990);
  sub_1D2617B0C(a1, v8 + *(v25 + 44));
  v26 = v36;
  sub_1D22BD1D0(v13, v36, &qword_1EC6DF198, &qword_1D2898980);
  v27 = v5;
  sub_1D22BD1D0(v8, v5, &qword_1EC6DF1A0, &qword_1D2898988);
  v28 = v37;
  sub_1D22BD1D0(v26, v37, &qword_1EC6DF198, &qword_1D2898980);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF3B8, &qword_1D2898CD0);
  v30 = v28 + *(v29 + 48);
  v31 = *&v40[80];
  *(v30 + 73) = *&v40[64];
  *(v30 + 89) = v31;
  *(v30 + 105) = *&v40[96];
  v32 = *&v40[16];
  *(v30 + 9) = *v40;
  *(v30 + 25) = v32;
  v33 = *&v40[48];
  *(v30 + 41) = *&v40[32];
  *v30 = 0;
  *(v30 + 8) = 1;
  *(v30 + 120) = *&v40[111];
  *(v30 + 57) = v33;
  sub_1D22BD1D0(v27, v28 + *(v29 + 64), &qword_1EC6DF1A0, &qword_1D2898988);
  sub_1D22BD238(v8, &qword_1EC6DF1A0, &qword_1D2898988);
  sub_1D22BD238(v13, &qword_1EC6DF198, &qword_1D2898980);
  sub_1D22BD238(v27, &qword_1EC6DF1A0, &qword_1D2898988);
  return sub_1D22BD238(v26, &qword_1EC6DF198, &qword_1D2898980);
}

uint64_t sub_1D2616FBC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF0B0, &qword_1D2898860);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - v2;
  sub_1D26170E0(&v6 - v2);
  v4 = sub_1D22BB9D8(&qword_1EC6DF0B8, &qword_1EC6DF0B0, &qword_1D2898860, MEMORY[0x1E697C5E0]);
  MEMORY[0x1D389E720](v3, v0, v4);
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1D26170E0@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF120, &qword_1D28988B0);
  MEMORY[0x1EEE9AC00](v23);
  v3 = v20 - v2;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF128, &qword_1D28988B8);
  v4 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v6 = v20 - v5;
  v7 = sub_1D2875C08();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF130, &qword_1D28988C0);
  v8 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v10 = v20 - v9;
  sub_1D2875BC8();
  v26 = v1;
  v20[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF138, &unk_1D28988C8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9D30, &qword_1D287FDB0);
  v12 = sub_1D2875718();
  v13 = sub_1D22BB9D8(&qword_1EC6D7700, &qword_1EC6D9D30, &qword_1D287FDB0, MEMORY[0x1E697D680]);
  v14 = sub_1D2620AA4(&qword_1ED89D6B0, MEMORY[0x1E697C4E8], MEMORY[0x1E697C4E0]);
  v27 = v11;
  v28 = v12;
  v29 = v13;
  v30 = v14;
  swift_getOpaqueTypeConformance2();
  sub_1D28745C8();
  sub_1D2875BD8();
  v25 = v20[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF140, &qword_1D28988D8);
  sub_1D2620118();
  sub_1D28745C8();
  v15 = *(v23 + 48);
  v16 = v21;
  (*(v8 + 16))(v3, v10, v21);
  v17 = &v3[v15];
  v18 = v22;
  (*(v4 + 16))(v17, v6, v22);
  sub_1D28759C8();
  (*(v4 + 8))(v6, v18);
  return (*(v8 + 8))(v10, v16);
}

double sub_1D26174B0(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA338, &qword_1D28828C8);
  sub_1D2877308();
  sub_1D26516C4();
  sub_1D264F37C(1);

  return result;
}

double sub_1D2617514(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA338, &qword_1D28828C8);
  sub_1D2877308();
  sub_1D264F37C(0);

  return result;
}

uint64_t sub_1D2617574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = sub_1D2875718();
  v4 = *(v3 - 8);
  v22 = v3;
  v23 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CharacterEditingView(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = sub_1D2874288();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D30, &qword_1D287FDB0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v21 - v15;
  sub_1D2874268();
  sub_1D262064C(a1, &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CharacterEditingView);
  v17 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v18 = swift_allocObject();
  sub_1D26206B4(&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for CharacterEditingView);
  MEMORY[0x1D389FDF0](v12, sub_1D26202CC, v18);
  sub_1D2875708();
  sub_1D22BB9D8(&qword_1EC6D7700, &qword_1EC6D9D30, &qword_1D287FDB0, MEMORY[0x1E697D680]);
  sub_1D2620AA4(&qword_1ED89D6B0, MEMORY[0x1E697C4E8], MEMORY[0x1E697C4E0]);
  v19 = v22;
  sub_1D2876768();
  (*(v23 + 8))(v6, v19);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_1D26178B4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CharacterEditingView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = sub_1D2874288();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2874278();
  sub_1D262064C(a1, v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CharacterEditingView);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  sub_1D26206B4(v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for CharacterEditingView);
  MEMORY[0x1D389FDF0](v9, sub_1D26202B4, v11);
  v12 = sub_1D2877018();
  KeyPath = swift_getKeyPath();
  v14 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF158, &qword_1D28988E0) + 36));
  *v14 = KeyPath;
  v14[1] = v12;
  v15 = a1[1];
  v20[2] = *a1;
  v20[3] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA338, &qword_1D28828C8);
  sub_1D2877308();
  LOBYTE(v12) = sub_1D264F5EC();

  v16 = swift_getKeyPath();
  v17 = swift_allocObject();
  *(v17 + 16) = (v12 & 1) == 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF140, &qword_1D28988D8);
  v19 = (a2 + *(result + 36));
  *v19 = v16;
  v19[1] = sub_1D22C03D8;
  v19[2] = v17;
  return result;
}

uint64_t sub_1D2617B0C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v3 = type metadata accessor for CharacterEditingView(0);
  v58 = *(v3 - 8);
  v4 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = sub_1D2871798();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v56 - v10;
  v60 = sub_1D2875F98();
  v59 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v67 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v56 - v14;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF240, &qword_1D2898A70);
  v62 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v61 = &v56 - v16;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF248, &qword_1D2898A78);
  MEMORY[0x1EEE9AC00](v68);
  v70 = &v56 - v17;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF250, &qword_1D2898A80);
  MEMORY[0x1EEE9AC00](v69);
  v19 = &v56 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF258, &qword_1D2898A88);
  v64 = *(v20 - 8);
  v65 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v63 = &v56 - v24;
  v25 = *a1;
  v26 = a1[1];
  v66 = a1;
  v73 = v25;
  v74 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA338, &qword_1D28828C8);
  sub_1D2877308();
  LODWORD(a1) = *(v80 + 32);

  if (a1 == 1)
  {
    sub_1D2875798();
    v67 = sub_1D28756A8();
    sub_1D261933C(&v73);
    v27 = v73;
    v28 = v74;
    v29 = v75;
    v30 = v76;
    v62 = v77;
    v31 = v78;

    LOBYTE(v73) = 1;
    LOBYTE(v80) = v29;
    v79 = v31;
    v32 = v63;
    sub_1D261847C(v63);
    v33 = *(v64 + 16);
    v34 = v32;
    v35 = v65;
    v33(v22, v34, v65);
    *v19 = v67;
    *(v19 + 1) = 0;
    v19[16] = 1;
    *(v19 + 3) = v27;
    *(v19 + 4) = v28;
    v19[40] = v29;
    v36 = v62;
    *(v19 + 6) = v30;
    *(v19 + 7) = v36;
    v19[64] = v31;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF290, &qword_1D2898AB8);
    v33(&v19[*(v37 + 48)], v22, v35);
    sub_1D22BBFAC(v27, v28, v29);
    sub_1D2870F68();
    sub_1D22BBFAC(v27, v28, v29);
    v38 = *(v64 + 8);
    sub_1D2870F68();
    v38(v22, v35);
    sub_1D22ED6E0(v27, v28, v29);

    sub_1D22BD1D0(v19, v70, &qword_1EC6DF250, &qword_1D2898A80);
    swift_storeEnumTagMultiPayload();
    sub_1D22BB9D8(&qword_1EC6D75D0, &qword_1EC6DF250, &qword_1D2898A80, MEMORY[0x1E6981F48]);
    sub_1D2620AEC();
    sub_1D2875AF8();
    sub_1D22ED6E0(v27, v28, v29);

    sub_1D22BD238(v19, &qword_1EC6DF250, &qword_1D2898A80);
    return (v38)(v63, v65);
  }

  else
  {
    sub_1D2871778();
    (*(v6 + 16))(v8, v11, v5);
    v57 = v15;
    sub_1D2875F88();
    (*(v6 + 8))(v11, v5);
    sub_1D262064C(v66, &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CharacterEditingView);
    v40 = (*(v58 + 80) + 16) & ~*(v58 + 80);
    v41 = swift_allocObject();
    sub_1D26206B4(&v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v41 + v40, type metadata accessor for CharacterEditingView);
    v42 = v59;
    v43 = v60;
    (*(v59 + 16))(v67, v15, v60);
    v44 = swift_allocObject();
    *(v44 + 16) = sub_1D26208B4;
    *(v44 + 24) = v41;
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF260, &qword_1D2898A90);
    sub_1D2620AA4(&qword_1EC6DF268, MEMORY[0x1E69803F0], MEMORY[0x1E69803E8]);
    v45 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF270, &qword_1D2898A98);
    v46 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF278, &qword_1D2898AA0);
    v47 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF280, &qword_1D2898AA8);
    v48 = sub_1D2620968();
    v49 = v62;
    v50 = v48;
    v51 = sub_1D2620A20();
    v73 = v46;
    v74 = v47;
    v75 = v50;
    v76 = v51;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v53 = sub_1D2620AA4(&qword_1EC6D8BD0, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
    v73 = v45;
    v74 = v5;
    v75 = OpaqueTypeConformance2;
    v76 = v53;
    swift_getOpaqueTypeConformance2();
    v54 = v61;
    sub_1D2874828();
    (*(v42 + 8))(v57, v43);
    v55 = v71;
    (*(v49 + 16))(v70, v54, v71);
    swift_storeEnumTagMultiPayload();
    sub_1D22BB9D8(&qword_1EC6D75D0, &qword_1EC6DF250, &qword_1D2898A80, MEMORY[0x1E6981F48]);
    sub_1D2620AEC();
    sub_1D2875AF8();
    return (*(v49 + 8))(v54, v55);
  }
}

uint64_t sub_1D261847C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v26 = a1;
  v3 = type metadata accessor for CharacterEditingView(0);
  v21 = *(v3 - 8);
  v27 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  v7 = v1[1];
  v22 = v1;
  *&v41 = v6;
  *(&v41 + 1) = v7;
  v8 = v6;
  v24 = v7;
  v25 = v6;
  v9 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA338, &qword_1D28828C8);
  sub_1D2877308();
  v10 = sub_1D23C75E0();

  v23 = v10[4];
  sub_1D2870F68();

  *&v29 = v8;
  *(&v29 + 1) = v9;
  sub_1D2877328();
  v11 = v41;
  v12 = v42;
  swift_getKeyPath();
  v41 = v11;
  *&v42 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF1E0, &qword_1D28989F8);
  sub_1D2877508();

  v20 = *(&v29 + 1);
  v13 = v29;
  HIDWORD(v19) = v30;

  sub_1D262064C(v2, v5, type metadata accessor for CharacterEditingView);
  v14 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v15 = swift_allocObject();
  sub_1D26206B4(v5, v15 + v14, type metadata accessor for CharacterEditingView);
  v53 = 1;
  sub_1D2877848();
  sub_1D2875208();
  *&v29 = v13;
  *(&v29 + 1) = v20;
  LOBYTE(v30) = BYTE4(v19);
  *(&v30 + 1) = v23;
  *&v31 = 0;
  BYTE8(v31) = 1;
  *&v32 = sub_1D2621448;
  *(&v32 + 1) = 0;
  *&v33 = sub_1D2620C58;
  *(&v33 + 1) = v15;
  *&v41 = v25;
  *(&v41 + 1) = v24;
  sub_1D2877308();
  v16 = v28;
  swift_getKeyPath();
  *&v41 = v16;
  sub_1D2620AA4(&qword_1EC6D8360, type metadata accessor for CharacterEditingViewModel, &unk_1D289AF40);
  sub_1D28719E8();

  LOBYTE(v15) = *(v16 + OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__selectedAppearance);

  LOBYTE(v28) = v15;
  sub_1D262064C(v22, v5, type metadata accessor for CharacterEditingView);
  v17 = swift_allocObject();
  sub_1D26206B4(v5, v17 + v14, type metadata accessor for CharacterEditingView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF298, &qword_1D2898AE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF280, &qword_1D2898AA8);
  sub_1D2620C84();
  sub_1D2620A20();
  sub_1D2876F58();

  v49 = v37;
  v50 = v38;
  v51 = v39;
  v52 = v40;
  v45 = v33;
  v46 = v34;
  v47 = v35;
  v48 = v36;
  v41 = v29;
  v42 = v30;
  v43 = v31;
  v44 = v32;
  return sub_1D22BD238(&v41, &qword_1EC6DF298, &qword_1D2898AE8);
}

uint64_t sub_1D26188D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF1C0, &qword_1D28989A8);
  v32 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v31 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v29 = a1;
  v30 = &v27 - v7;
  v8 = a1[1];
  *&v42 = *a1;
  *(&v42 + 1) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA338, &qword_1D28828C8);
  sub_1D2877308();
  LODWORD(a1) = *(*&v40[0] + 32);

  if (a1 == 1)
  {
    sub_1D2875798();
    v27 = sub_1D28756A8();
    sub_1D261933C(&v42);
    v10 = *(&v42 + 1);
    v9 = v42;
    v28 = v4;
    v11 = v43;
    v13 = *(&v43 + 1);
    v12 = v44;
    v14 = BYTE8(v44);

    LOBYTE(v40[0]) = 1;
    LOBYTE(v38[0]) = v11;
    LOBYTE(v33) = v14;
    sub_1D22BBFAC(v9, v10, v11);
    LOBYTE(v43) = 1;
    BYTE8(v44) = v11;
    v4 = v28;
    sub_1D2870F68();
    v15 = v27;
  }

  else
  {
    v15 = 0;
    v9 = 0;
    v10 = 0;
    v13 = 0;
    v12 = 0;
    v14 = 0;
    *&v43 = 0;
    *(&v44 + 1) = 0;
  }

  v42 = v15;
  *(&v43 + 1) = v9;
  *&v44 = v10;
  *&v45 = v13;
  *(&v45 + 1) = v12;
  v46 = v14;
  v16 = v30;
  sub_1D2618C14(v30);
  v35 = v44;
  v36 = v45;
  v37 = v46;
  v33 = v42;
  v34 = v43;
  v18 = v31;
  v17 = v32;
  v19 = *(v32 + 16);
  v19(v31, v16, v4);
  v20 = v36;
  v38[2] = v35;
  v38[3] = v36;
  v21 = v37;
  v39 = v37;
  v23 = v33;
  v22 = v34;
  v38[0] = v33;
  v38[1] = v34;
  *(a2 + 32) = v35;
  *(a2 + 48) = v20;
  *(a2 + 64) = v21;
  *a2 = v23;
  *(a2 + 16) = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF1C8, &qword_1D28989B0);
  v19((a2 + *(v24 + 48)), v18, v4);
  sub_1D22BD1D0(v38, v40, &qword_1EC6DF1D0, &unk_1D28989B8);
  sub_1D22BD238(&v42, &qword_1EC6DF1D0, &unk_1D28989B8);
  v25 = *(v17 + 8);
  v25(v16, v4);
  v25(v18, v4);
  v40[2] = v35;
  v40[3] = v36;
  v41 = v37;
  v40[0] = v33;
  v40[1] = v34;
  return sub_1D22BD238(v40, &qword_1EC6DF1D0, &unk_1D28989B8);
}

uint64_t sub_1D2618C14@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E33C0, &unk_1D2883750);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v28 - v2;
  v3 = type metadata accessor for CharacterEditingView(0);
  v32 = *(v3 - 8);
  v36 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF1D8, &qword_1D28989C8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v28 - v7;
  v9 = v1[1];
  v37 = *v1;
  v38 = v9;
  v10 = v37;
  v30 = v9;
  v31 = v37;
  v11 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA338, &qword_1D28828C8);
  sub_1D2877308();
  sub_1D2650030();
  v29 = v12;

  v40 = v10;
  v41 = v11;
  sub_1D2877328();
  v14 = v37;
  v13 = v38;
  v15 = v39;
  swift_getKeyPath();
  v37 = v14;
  v38 = v13;
  v39 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF1E0, &qword_1D28989F8);
  sub_1D2877508();

  v16 = v1;
  v28 = v1;
  sub_1D262064C(v1, v5, type metadata accessor for CharacterEditingView);
  v17 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v18 = swift_allocObject();
  sub_1D26206B4(v5, v18 + v17, type metadata accessor for CharacterEditingView);
  sub_1D262064C(v16, v5, type metadata accessor for CharacterEditingView);
  v19 = swift_allocObject();
  sub_1D26206B4(v5, v19 + v17, type metadata accessor for CharacterEditingView);
  *&v8[v6[13]] = v29;
  v20 = &v8[v6[14]];
  *v20 = 0;
  v20[8] = 1;
  v21 = &v8[v6[15]];
  *v21 = sub_1D26204B8;
  v21[1] = v18;
  v22 = &v8[v6[16]];
  *v22 = sub_1D2620528;
  v22[1] = v19;
  v37 = v31;
  v38 = v30;
  sub_1D2877308();
  v23 = v40;
  swift_getKeyPath();
  v37 = v23;
  sub_1D2620AA4(&qword_1EC6D8360, type metadata accessor for CharacterEditingViewModel, &unk_1D289AF40);
  sub_1D28719E8();

  v24 = OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__selectedSkinTone;
  swift_beginAccess();
  v25 = v33;
  sub_1D22BD1D0(v23 + v24, v33, &unk_1EC6E33C0, &unk_1D2883750);

  sub_1D262064C(v28, v5, type metadata accessor for CharacterEditingView);
  v26 = swift_allocObject();
  sub_1D26206B4(v5, v26 + v17, type metadata accessor for CharacterEditingView);
  sub_1D22BB9D8(qword_1EC6D8528, &qword_1EC6DF1D8, &qword_1D28989C8, &unk_1D28AD0A8);
  sub_1D2620598();
  sub_1D2876F58();

  sub_1D22BD238(v25, &unk_1EC6E33C0, &unk_1D2883750);
  return sub_1D22BD238(v8, &qword_1EC6DF1D8, &qword_1D28989C8);
}

double sub_1D26190F0(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA338, &qword_1D28828C8);
  sub_1D2877308();
  v2 = OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__shouldShowCreationTips;
  if (*(v7 + OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__shouldShowCreationTips) == 1)
  {
    *(v7 + OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__shouldShowCreationTips) = 1;
    swift_getKeyPath();
    sub_1D2620AA4(&qword_1EC6D8360, type metadata accessor for CharacterEditingViewModel, &unk_1D289AF40);
    sub_1D28719E8();

    if (*(v7 + v2) == 1 && (swift_getKeyPath(), sub_1D28719E8(), , swift_unknownObjectWeakLoadStrong()))
    {
      v3 = *(v7 + 24);
      ObjectType = swift_getObjectType();
      (*(v3 + 24))(v7, ObjectType, v3);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2620AA4(&qword_1EC6D8360, type metadata accessor for CharacterEditingViewModel, &unk_1D289AF40);
    sub_1D28719D8();
  }

  return result;
}

double sub_1D261933C@<D0>(uint64_t a5@<X8>)
{
  v6 = qword_1ED89E0E8;
  sub_1D2870F68();
  sub_1D2870F68();
  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_1ED8B0058;
  v8 = sub_1D2876668();
  v10 = v9;
  v12 = v11;
  sub_1D28764D8();
  v13 = sub_1D2876658();
  v15 = v14;
  v17 = v16;
  v19 = v18;

  sub_1D22ED6E0(v8, v10, v12 & 1);

  *a5 = v13;
  *(a5 + 8) = v15;
  *(a5 + 16) = v17 & 1;
  *(a5 + 24) = v19;
  *(a5 + 32) = 0;
  *(a5 + 40) = 1;
  sub_1D22BBFAC(v13, v15, v17 & 1);
  sub_1D2870F68();
  sub_1D22ED6E0(v13, v15, v17 & 1);

  return result;
}

uint64_t sub_1D26194C0@<X0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a2;
  v7 = 0xEB00000000646569;
  v8 = 0x6669636570736E75;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF2B0, &qword_1D2898B00);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v30 - v13;
  *v14 = sub_1D28756A8();
  *(v14 + 1) = 0;
  v14[16] = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF2B8, &qword_1D2898B08);
  sub_1D261ACF4(a1, a2, &v14[*(v15 + 44)]);
  v16 = 0x6669636570736E75;
  v17 = 0xEB00000000646569;
  if (v6 != 3)
  {
    v16 = sub_1D2873768();
    v17 = v18;
  }

  v19 = *(a1 + 1);
  *&v30[2] = *a1;
  v30[3] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA338, &qword_1D28828C8);
  sub_1D2877308();
  v20 = sub_1D23C75E0();

  v21 = v20[4];
  sub_1D2870F68();

  v22 = *(v21 + 16);
  if (!v22)
  {

    goto LABEL_12;
  }

  v23 = *(v21 + v22 + 31);

  if (v23 != 3)
  {
    v8 = sub_1D2873768();
    v7 = v24;
  }

  if (v16 != v8 || v17 != v7)
  {
    v25 = sub_1D2879618();

    if (v25)
    {
      goto LABEL_11;
    }

LABEL_12:
    v27 = 0;
    v26 = 1;
    goto LABEL_13;
  }

LABEL_11:
  v26 = 0;
  v27 = 1;
LABEL_13:
  sub_1D22BD1D0(v14, v11, &qword_1EC6DF2B0, &qword_1D2898B00);
  sub_1D22BD1D0(v11, a3, &qword_1EC6DF2B0, &qword_1D2898B00);
  v28 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF2C0, &qword_1D2898B10) + 48);
  *v28 = 0;
  *(v28 + 8) = v26;
  *(v28 + 9) = v27;
  sub_1D22BD238(v14, &qword_1EC6DF2B0, &qword_1D2898B00);
  return sub_1D22BD238(v11, &qword_1EC6DF2B0, &qword_1D2898B00);
}

uint64_t sub_1D2619774@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a1;
  v46 = a3;
  v45 = sub_1D2871798();
  v47 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v41 = &v35[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for CharacterEditingView(0);
  v40 = *(v5 - 8);
  v49 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v35[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF270, &qword_1D2898A98);
  v9 = *(v8 - 8);
  v43 = v8;
  v44 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v50 = a2;
  v51 = &v35[-v10];
  v11 = a2[1];
  *&v65 = *a2;
  *(&v65 + 1) = v11;
  v12 = v65;
  v38 = v11;
  v39 = v65;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA338, &qword_1D28828C8);
  sub_1D2877308();
  v14 = sub_1D23C75E0();

  v37 = v14[4];
  sub_1D2870F68();

  *&v53 = v12;
  *(&v53 + 1) = v13;
  sub_1D2877328();
  v15 = v65;
  v16 = v66;
  swift_getKeyPath();
  v65 = v15;
  *&v66 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF1E0, &qword_1D28989F8);
  sub_1D2877508();

  v17 = v53;
  v36 = v54;

  v18 = v7;
  v48 = v7;
  sub_1D262064C(a2, v7, type metadata accessor for CharacterEditingView);
  v19 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v20 = swift_allocObject();
  sub_1D26206B4(v18, v20 + v19, type metadata accessor for CharacterEditingView);
  v77 = 1;
  sub_1D2877848();
  sub_1D2875208();
  v53 = v17;
  LOBYTE(v54) = v36;
  *(&v54 + 1) = v37;
  *&v55 = 0;
  BYTE8(v55) = 1;
  *&v56 = sub_1D2621448;
  *(&v56 + 1) = 0;
  *&v57 = sub_1D2620DAC;
  *(&v57 + 1) = v20;
  *&v65 = v39;
  *(&v65 + 1) = v38;
  sub_1D2877308();
  v21 = v52;
  swift_getKeyPath();
  *&v65 = v21;
  sub_1D2620AA4(&qword_1EC6D8360, type metadata accessor for CharacterEditingViewModel, &unk_1D289AF40);
  sub_1D28719E8();

  LOBYTE(v20) = *(v21 + OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__selectedAppearance);

  LOBYTE(v52) = v20;
  v22 = v48;
  sub_1D262064C(v50, v48, type metadata accessor for CharacterEditingView);
  v23 = swift_allocObject();
  sub_1D26206B4(v22, v23 + v19, type metadata accessor for CharacterEditingView);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF278, &qword_1D2898AA0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF280, &qword_1D2898AA8);
  v26 = sub_1D2620968();
  v27 = sub_1D2620A20();
  sub_1D2876F58();

  v73 = v61;
  v74 = v62;
  v75 = v63;
  v76 = v64;
  v69 = v57;
  v70 = v58;
  v71 = v59;
  v72 = v60;
  v65 = v53;
  v66 = v54;
  v67 = v55;
  v68 = v56;
  sub_1D22BD238(&v65, &qword_1EC6DF278, &qword_1D2898AA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF320, &qword_1D2898C38);
  v28 = v41;
  sub_1D2874818();
  v29 = v48;
  sub_1D262064C(v50, v48, type metadata accessor for CharacterEditingView);
  v30 = swift_allocObject();
  sub_1D26206B4(v29, v30 + v19, type metadata accessor for CharacterEditingView);
  *&v53 = v24;
  *(&v53 + 1) = v25;
  *&v54 = v26;
  *(&v54 + 1) = v27;
  swift_getOpaqueTypeConformance2();
  sub_1D2620AA4(&qword_1EC6D8BD0, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v31 = v45;
  v32 = v43;
  v33 = v51;
  sub_1D2876F58();

  (*(v47 + 8))(v28, v31);
  return (*(v44 + 8))(v33, v32);
}