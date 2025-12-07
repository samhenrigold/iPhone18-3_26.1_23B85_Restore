uint64_t sub_1C49FD16C()
{
  sub_1C43FBCD4();
  v1[20] = v2;
  v1[21] = v0;
  sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v1[22] = sub_1C43FE604();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v3 = sub_1C4EF9CD8();
  v1[26] = v3;
  sub_1C43FCF7C(v3);
  v1[27] = v4;
  v1[28] = sub_1C43FE604();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  sub_1C456902C(&qword_1EC0B9790, &unk_1C4F0F7C0);
  v1[31] = sub_1C43FE604();
  v1[32] = swift_task_alloc();
  v1[33] = type metadata accessor for LOIBasedSegment(0);
  v1[34] = sub_1C43FE604();
  v1[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C49FD2F4, 0, 0);
}

uint64_t sub_1C49FD2F4()
{
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v3 = *(v0 + 168);
  v4 = type metadata accessor for LOIBasedSegmentProvider(0);
  *(v0 + 288) = v4;
  v5 = *(v4 + 24);
  *(v0 + 344) = v5;
  sub_1C4460050(v3 + v5, v2, &qword_1EC0B9790, &unk_1C4F0F7C0);
  v6 = sub_1C44157D4(v2, 1, v1);
  v7 = *(v0 + 256);
  if (v6 == 1)
  {
    v8 = *(v0 + 168);
    sub_1C4420C3C(v7, &qword_1EC0B9790, &unk_1C4F0F7C0);
    sub_1C4418280(v8, *(v8 + 24));
    *(v0 + 296) = swift_getAssociatedTypeWitness();
    v9 = sub_1C4F01F48();
    *(v0 + 304) = v9;
    sub_1C43FCF7C(v9);
    *(v0 + 312) = v10;
    v11 = swift_task_alloc();
    *(v0 + 320) = v11;
    v12 = swift_task_alloc();
    *(v0 + 328) = v12;
    *v12 = v0;
    v12[1] = sub_1C49FD5FC;

    return MEMORY[0x1EEE6D8C8](v11);
  }

  else
  {
    v13 = *(v0 + 280);
    v14 = *(v0 + 264);
    v15 = *(v0 + 208);
    v16 = *(v0 + 216);
    v17 = *(v0 + 160);
    v18 = *(v0 + 168);
    sub_1C46CB668(v7, v13);
    v19 = *(v4 + 20);
    sub_1C4420C3C(v18 + v19, &unk_1EC0B84E0, qword_1C4F0D2D0);
    (*(v16 + 16))(v18 + v19, v13 + *(v14 + 20), v15);
    sub_1C43FBD94();
    sub_1C440BAA8(v20, v21, v22, v15);
    sub_1C4420C3C(v3 + v5, &qword_1EC0B9790, &unk_1C4F0F7C0);
    sub_1C43FCF64();
    sub_1C440BAA8(v23, v24, v25, v14);
    sub_1C46CB668(v13, v17);
    sub_1C43FBD94();
    sub_1C440BAA8(v26, v27, v28, v14);
    sub_1C4419F7C();

    sub_1C43FBDA0();

    return v29();
  }
}

uint64_t sub_1C49FD5FC()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = *v1;
  sub_1C43FBDAC();
  *v3 = v2;
  *(v4 + 336) = v0;

  if (v0)
  {
    v5 = sub_1C49FDD7C;
  }

  else
  {
    v5 = sub_1C49FD700;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C49FD700()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 296);
  if (sub_1C44157D4(v1, 1, v2) == 1)
  {
    (*(*(v0 + 312) + 8))(v1, *(v0 + 304));

LABEL_10:
    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    goto LABEL_11;
  }

  *(v0 + 120) = v2;
  v3 = sub_1C4422F90((v0 + 96));
  (*(*(v2 - 8) + 32))(v3, v1, v2);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_10;
  }

  if (*(v0 + 80))
  {
    v4 = *(v0 + 208);
    v5 = (v0 + 200);
    v6 = *(v0 + 72);
    *(v0 + 48) = *(v0 + 88);
    *(v0 + 16) = *(v0 + 56);
    *(v0 + 32) = v6;
    sub_1C4409678((v0 + 16), *(v0 + 40));
    v7 = sub_1C440749C();
    v8(v7);
    v9 = sub_1C44033D8();
    if (sub_1C44157D4(v9, v10, v4) != 1)
    {
      v5 = (v0 + 192);
      v11 = *(v0 + 208);
      v12 = *(*(v0 + 216) + 32);
      v12(*(v0 + 240), *(v0 + 200), v11);
      sub_1C4409678((v0 + 16), *(v0 + 40));
      v13 = sub_1C440749C();
      v14(v13);
      v15 = sub_1C44033D8();
      if (sub_1C44157D4(v15, v16, v11) != 1)
      {
        v26 = *(v0 + 288);
        v27 = *(v0 + 208);
        v28 = *(v0 + 184);
        v29 = *(v0 + 168);
        v12(*(v0 + 232), *(v0 + 192), v27);
        v64 = *(v26 + 20);
        v65 = v29;
        sub_1C4460050(v29 + v64, v28, &unk_1EC0B84E0, qword_1C4F0D2D0);
        v30 = sub_1C44033D8();
        if (sub_1C44157D4(v30, v31, v27) == 1)
        {
          sub_1C4420C3C(*(v0 + 184), &unk_1EC0B84E0, qword_1C4F0D2D0);
        }

        else
        {
          v12(*(v0 + 224), *(v0 + 184), *(v0 + 208));
          if (sub_1C4EF9C08())
          {
            v23 = *(v0 + 264);
            v32 = *(v0 + 248);
            v33 = *(v0 + 232);
            v60 = *(v0 + 272);
            v34 = *(v0 + 216);
            v58 = *(v0 + 344);
            v59 = *(v0 + 224);
            v35 = *(v0 + 208);
            v57 = *(v0 + 168);
            v61 = *(v0 + 160);
            v62 = *(v0 + 240);
            v36 = *(v34 + 16);
            v36(v32);
            (v36)(v32 + v23[5], v33, v35);
            sub_1C480BC20(v0 + 16, v32 + v23[6]);
            v37 = v32 + v23[7];
            *(v37 + 24) = &type metadata for LOIBasedSegmentType;
            *(v37 + 32) = &off_1F43F4678;
            *v37 = 0;
            sub_1C43FBD94();
            sub_1C440BAA8(v38, v39, v40, v23);
            sub_1C49FE1A8(v32, v57 + v58, &qword_1EC0B9790, &unk_1C4F0F7C0);
            (v36)(v60, v59, v35);
            (v36)(v60 + v23[5], v62, v35);
            v41 = v60 + v23[6];
            *(v41 + 32) = 0;
            *v41 = 0u;
            *(v41 + 16) = 0u;
            v42 = v60 + v23[7];
            *(v42 + 24) = &type metadata for LOIBasedSegmentType;
            *(v42 + 32) = &off_1F43F4678;
            *v42 = 0;
            v43 = *(v34 + 8);
            v43(v59, v35);
            v43(v33, v35);
            sub_1C46CB91C(v0 + 16);
            sub_1C4420C3C(v65 + v64, &unk_1EC0B84E0, qword_1C4F0D2D0);
            v12(v65 + v64, v62, v35);
            sub_1C43FBD94();
            sub_1C440BAA8(v44, v45, v46, v35);
            sub_1C46CB668(v60, v61);
            v20 = v61;
            v21 = 0;
            goto LABEL_12;
          }

          (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));
        }

        v18 = *(v0 + 264);
        v47 = *(v0 + 232);
        v63 = *(v0 + 240);
        v49 = *(v0 + 208);
        v48 = *(v0 + 216);
        v50 = *(v0 + 176);
        v51 = *(v0 + 160);
        v52 = *(v0 + 40);
        v53 = *(v0 + 48);
        sub_1C4409678((v0 + 16), v52);
        (*(v53 + 16))(v52, v53);
        sub_1C49FE1A8(v50, v65 + v64, &unk_1EC0B84E0, qword_1C4F0D2D0);
        v54 = *(v48 + 16);
        v54(v51, v63, v49);
        v54(v51 + v18[5], v47, v49);
        sub_1C480BC20(v0 + 16, v51 + v18[6]);
        v55 = v51 + v18[7];
        *(v55 + 24) = &type metadata for LOIBasedSegmentType;
        *(v55 + 32) = &off_1F43F4678;
        *v55 = 0;
        v56 = *(v48 + 8);
        v56(v47, v49);
        v56(v63, v49);
        sub_1C46CB91C(v0 + 16);
        v20 = v51;
        v21 = 0;
LABEL_9:
        v22 = v18;
        goto LABEL_13;
      }

      (*(*(v0 + 216) + 8))(*(v0 + 240), *(v0 + 208));
    }

    v17 = *v5;
    v18 = *(v0 + 264);
    v19 = *(v0 + 160);
    sub_1C46CB91C(v0 + 16);
    sub_1C4420C3C(v17, &unk_1EC0B84E0, qword_1C4F0D2D0);
    v20 = v19;
    v21 = 1;
    goto LABEL_9;
  }

LABEL_11:
  v23 = *(v0 + 264);
  sub_1C4420C3C(v0 + 56, &qword_1EC0B97A0, &qword_1C4F0F7D0);
  v20 = sub_1C44033D8();
LABEL_12:
  v22 = v23;
LABEL_13:
  sub_1C440BAA8(v20, v21, 1, v22);
  sub_1C4419F7C();

  sub_1C43FBDA0();

  return v24();
}

uint64_t sub_1C49FDD7C()
{
  v20 = v0;

  if (qword_1EDDFECB0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 336);
  v2 = sub_1C4F00978();
  sub_1C442B738(v2, qword_1EDDFECB8);
  v3 = v1;
  v4 = sub_1C4F00968();
  v5 = sub_1C4F01CF8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 336);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_1C4F02A38();
    v12 = sub_1C441D828(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1C43F8000, v4, v5, "Error when reading next completed LOI visit event - %s", v8, 0xCu);
    sub_1C440962C(v9);
    MEMORY[0x1C6942830](v9, -1, -1);
    MEMORY[0x1C6942830](v8, -1, -1);
  }

  else
  {
  }

  sub_1C43FCF64();
  sub_1C440BAA8(v13, v14, v15, v16);
  sub_1C4419F7C();

  sub_1C43FBDA0();

  return v17();
}

uint64_t sub_1C49FDFC0@<X0>(uint64_t a1@<X8>)
{
  sub_1C49FDFB4(a1);

  return sub_1C49FE1F8(v1);
}

uint64_t sub_1C49FDFEC()
{
  sub_1C43FBCD4();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C445229C;

  return sub_1C49FD16C();
}

uint64_t sub_1C49FE080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_1C4582C48;

  return (sub_1C4982BF8)(a1, a2, a3, v3 + 16);
}

unint64_t sub_1C49FE150()
{
  result = qword_1EDDF3658[0];
  if (!qword_1EDDF3658[0])
  {
    type metadata accessor for LOIBasedSegmentProvider(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDF3658);
  }

  return result;
}

uint64_t sub_1C49FE1A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1C43FBCA4(a1, a2, a3, a4);
  sub_1C43FBCE0();
  (*(v6 + 40))(v4, v5);
  return v4;
}

uint64_t sub_1C49FE1F8(uint64_t a1)
{
  v2 = type metadata accessor for LOIBasedSegmentProvider(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C49FE254(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LOIBasedSegmentProvider(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C49FE2B8()
{
  result = qword_1EDDF1588[0];
  if (!qword_1EDDF1588[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDF1588);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LOIBasedSegmentType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C49FE3EC()
{
  result = qword_1EC0C0FD8;
  if (!qword_1EC0C0FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0FD8);
  }

  return result;
}

void sub_1C49FE488(uint64_t a1)
{
  sub_1C49FE52C(319);
  if (v1 <= 0x3F)
  {
    sub_1C4EF9CD8();
    if (v2 <= 0x3F)
    {
      type metadata accessor for LOIBasedSegmentProvider(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C49FE52C(uint64_t a1)
{
  if (!qword_1EDDF67A0)
  {
    type metadata accessor for LOIBasedSegment(255);
    v1 = sub_1C4F01F48();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDDF67A0);
    }
  }
}

unint64_t sub_1C49FE588()
{
  result = qword_1EDDF0FE8;
  if (!qword_1EDDF0FE8)
  {
    type metadata accessor for LOIBasedSemanticLocationSegmentProvider(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF0FE8);
  }

  return result;
}

BOOL sub_1C49FE5E0(uint64_t a1, uint64_t a2)
{
  if ((sub_1C4EF9C68() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for LOIBasedSemanticLocationSegment(0);
  if ((sub_1C4EF9C68() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 28);
  sub_1C445FFF0(a1 + v5, v11, &qword_1EC0B97A0, &qword_1C4F0F7D0);
  sub_1C445FFF0(a2 + v5, &v13, &qword_1EC0B97A0, &qword_1C4F0F7D0);
  if (v12)
  {
    sub_1C445FFF0(v11, v10, &qword_1EC0B97A0, &qword_1C4F0F7D0);
    if (*(&v14 + 1))
    {
      v8[0] = v13;
      v8[1] = v14;
      v9 = v15;
      v6 = sub_1C4B70C8C(v10, v8);
      sub_1C46CB91C(v8);
      sub_1C46CB91C(v10);
      sub_1C4420C3C(v11, &qword_1EC0B97A0, &qword_1C4F0F7D0);
      if ((v6 & 1) == 0)
      {
        return 0;
      }

      return *(a1 + *(v4 + 24)) == *(a2 + *(v4 + 24));
    }

    sub_1C46CB91C(v10);
  }

  else if (!*(&v14 + 1))
  {
    sub_1C4420C3C(v11, &qword_1EC0B97A0, &qword_1C4F0F7D0);
    return *(a1 + *(v4 + 24)) == *(a2 + *(v4 + 24));
  }

  sub_1C4420C3C(v11, &qword_1EC0C0FD0, &unk_1C4F42140);
  return 0;
}

uint64_t sub_1C49FE76C()
{
  sub_1C43FBCD4();
  v1[37] = v2;
  v1[38] = v0;
  v3 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v3);
  v1[39] = swift_task_alloc();
  v4 = sub_1C4EF9CD8();
  v1[40] = v4;
  v1[41] = *(v4 - 8);
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v5 = type metadata accessor for LOIBasedSemanticLocationSegment(0);
  v1[44] = v5;
  sub_1C43FBD18(v5);
  v1[45] = swift_task_alloc();
  v6 = type metadata accessor for LOIBasedSegment(0);
  v1[46] = v6;
  sub_1C43FBD18(v6);
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v7 = sub_1C456902C(&qword_1EC0B9790, &unk_1C4F0F7C0);
  sub_1C43FBD18(v7);
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v8 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C49FE928()
{
  v1 = *(v0 + 304);
  v2 = type metadata accessor for LOIBasedSemanticLocationSegmentProvider(0);
  *(v0 + 432) = v2;
  v3 = *(v2 + 24);
  *(v0 + 456) = v3;
  if (*(v1 + v3) == 1)
  {
    sub_1C440BAA8(*(v0 + 296), 1, 1, *(v0 + 352));
    sub_1C442CF20();

    sub_1C43FBDA0();
    sub_1C43FEA3C();

    __asm { BRAA            X1, X16 }
  }

  v6 = *(v0 + 424);
  v7 = *(v0 + 368);
  sub_1C445FFF0(v1, v6, &qword_1EC0B9790, &unk_1C4F0F7C0);
  v8 = sub_1C44157D4(v6, 1, v7);
  sub_1C4420C3C(v6, &qword_1EC0B9790, &unk_1C4F0F7C0);
  if (v8 == 1)
  {
    v9 = swift_task_alloc();
    *(v0 + 440) = v9;
    *v9 = v0;
    v9[1] = sub_1C49FEB54;
  }

  else
  {
    v10 = *(v0 + 432);
    sub_1C445FFF0(*(v0 + 304), *(v0 + 400), &qword_1EC0B9790, &unk_1C4F0F7C0);
    *(v0 + 460) = *(v10 + 28);
    v11 = swift_task_alloc();
    v12 = sub_1C443268C(v11);
    *v12 = v13;
    sub_1C44074B0(v12);
  }

  sub_1C43FEA3C();

  return sub_1C49FD16C();
}

uint64_t sub_1C49FEB54()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v1 = *v0;
  sub_1C43FBDAC();
  *v2 = v1;

  v3 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C49FEC38()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 368);
  v3 = *(v0 + 304);
  sub_1C49FF830(*(v0 + 416), v3);
  sub_1C445FFF0(v3, v1, &qword_1EC0B9790, &unk_1C4F0F7C0);
  if (sub_1C44157D4(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 352);
    v5 = *(v0 + 296);
    sub_1C4420C3C(*(v0 + 408), &qword_1EC0B9790, &unk_1C4F0F7C0);
    sub_1C440BAA8(v5, 1, 1, v4);
    sub_1C442CF20();

    sub_1C43FBDA0();
    sub_1C43FEA3C();

    __asm { BRAA            X1, X16 }
  }

  v8 = *(v0 + 432);
  v9 = *(v0 + 384);
  v10 = *(v0 + 320);
  v11 = *(v0 + 328);
  v12 = *(v0 + 304);
  sub_1C4419F98();
  sub_1C49FF8A0(v13, v9, v14);
  v15 = *(v8 + 20);
  (*(v11 + 8))(v12 + v15, v10);
  (*(v11 + 16))(v12 + v15, v9, v10);
  sub_1C49FF900(v9, type metadata accessor for LOIBasedSegment);
  v16 = *(v0 + 432);
  sub_1C445FFF0(*(v0 + 304), *(v0 + 400), &qword_1EC0B9790, &unk_1C4F0F7C0);
  *(v0 + 460) = *(v16 + 28);
  v17 = swift_task_alloc();
  v18 = sub_1C443268C(v17);
  *v18 = v19;
  sub_1C44074B0(v18);
  sub_1C43FEA3C();

  return sub_1C49FD16C();
}

uint64_t sub_1C49FEE70()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v1 = *v0;
  sub_1C43FBDAC();
  *v2 = v1;

  v3 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C49FEF54()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 368);
  v3 = sub_1C44157D4(v1, 1, v2);
  v4 = *(v0 + 304);
  if (v3 == 1)
  {
    v5 = *(v0 + 456);
    sub_1C4420C3C(v1, &qword_1EC0B9790, &unk_1C4F0F7C0);
    *(v4 + v5) = 1;
    goto LABEL_22;
  }

  sub_1C4419F98();
  sub_1C49FF8A0(v1, v6, v7);
  if (sub_1C44157D4(v4, 1, v2))
  {
    v8 = 0;
    goto LABEL_11;
  }

  sub_1C445FFF0(*(v0 + 304) + *(*(v0 + 368) + 24), v0 + 176, &qword_1EC0B97A0, &qword_1C4F0F7D0);
  v8 = *(v0 + 200);
  if (v8)
  {
    v9 = *(v0 + 208);
    sub_1C4409678((v0 + 176), *(v0 + 200));
    (*(v9 + 32))(v8, v9);
    sub_1C46CB91C(v0 + 176);
    v8 = *(v0 + 160);
    if (v8)
    {
      v10 = *(v0 + 168);
      sub_1C4409678((v0 + 136), *(v0 + 160));
      v8 = (*(v10 + 24))(v8, v10);
      sub_1C440962C((v0 + 136));
      goto LABEL_11;
    }

    v11 = &qword_1EC0BB380;
    v12 = &unk_1C4F1F2E0;
    v13 = v0 + 136;
  }

  else
  {
    v11 = &qword_1EC0B97A0;
    v12 = &qword_1C4F0F7D0;
    v13 = v0 + 176;
  }

  sub_1C4420C3C(v13, v11, v12);
LABEL_11:
  sub_1C445FFF0(*(v0 + 376) + *(*(v0 + 368) + 24), v0 + 256, &qword_1EC0B97A0, &qword_1C4F0F7D0);
  if (*(v0 + 280))
  {
    sub_1C4409678((v0 + 256), *(v0 + 280));
    v14 = sub_1C43FD074();
    v15(v14);
    sub_1C46CB91C(v0 + 256);
    if (*(v0 + 240))
    {
      sub_1C4409678((v0 + 216), *(v0 + 240));
      v16 = sub_1C43FD074();
      v18 = v17(v16);
      sub_1C440962C((v0 + 216));
      goto LABEL_17;
    }

    v19 = &qword_1EC0BB380;
    v20 = &unk_1C4F1F2E0;
    v21 = v0 + 216;
  }

  else
  {
    v19 = &qword_1EC0B97A0;
    v20 = &qword_1C4F0F7D0;
    v21 = v0 + 256;
  }

  sub_1C4420C3C(v21, v19, v20);
  v18 = 0;
LABEL_17:
  if (v8 != v18)
  {
    v33 = *(v0 + 400);
    v35 = *(v0 + 368);
    v34 = *(v0 + 376);
    sub_1C4420C3C(v33, &qword_1EC0B9790, &unk_1C4F0F7C0);
    sub_1C4419F98();
    sub_1C49FF8A0(v34, v33, v36);
    sub_1C43FBD94();
    sub_1C440BAA8(v37, v38, v39, v35);
LABEL_22:
    v40 = *(v0 + 368);
    v41 = *(v0 + 304);
    v42 = *(*(v0 + 328) + 16);
    v83 = *(*(v0 + 432) + 20);
    v42(*(v0 + 344), v41 + v83, *(v0 + 320));
    if (sub_1C44157D4(v41, 1, v40))
    {
      v44 = *(v0 + 312);
      v43 = *(v0 + 320);
      sub_1C440BAA8(v44, 1, 1, v43);
      sub_1C4EF9CC8();
      if (sub_1C44157D4(v44, 1, v43) != 1)
      {
        sub_1C4420C3C(*(v0 + 312), &unk_1EC0B84E0, qword_1C4F0D2D0);
      }
    }

    else
    {
      v46 = *(v0 + 328);
      v45 = *(v0 + 336);
      v48 = *(v0 + 312);
      v47 = *(v0 + 320);
      v42(v48, *(v0 + 304) + *(*(v0 + 368) + 20), v47);
      sub_1C43FBD94();
      sub_1C440BAA8(v49, v50, v51, v47);
      (*(v46 + 32))(v45, v48, v47);
    }

    v52 = *(v0 + 368);
    v53 = *(v0 + 304);
    if (!sub_1C44157D4(v53, 1, v52))
    {
      sub_1C445FFF0(v53 + *(v52 + 24), v0 + 56, &qword_1EC0B97A0, &qword_1C4F0F7D0);
      if (*(v0 + 80))
      {
        sub_1C4409678((v0 + 56), *(v0 + 80));
        v54 = sub_1C43FD074();
        v55(v54);
        sub_1C46CB91C(v0 + 56);
        if (*(v0 + 40))
        {
          sub_1C4409678((v0 + 16), *(v0 + 40));
          v56 = sub_1C43FD074();
          v82 = v57(v56);
          sub_1C440962C((v0 + 16));
LABEL_34:
          v61 = *(v0 + 368);
          v62 = *(v0 + 304);
          if (sub_1C44157D4(v62, 1, v61))
          {
            *(v0 + 128) = 0;
            *(v0 + 96) = 0u;
            *(v0 + 112) = 0u;
            v81 = v62;
          }

          else
          {
            sub_1C445FFF0(v62 + *(v61 + 24), v0 + 96, &qword_1EC0B97A0, &qword_1C4F0F7D0);
            v81 = *(v0 + 304);
          }

          v80 = *(v0 + 400);
          v63 = *(v0 + 352);
          v64 = *(v0 + 360);
          v66 = *(v0 + 336);
          v65 = *(v0 + 344);
          v68 = *(v0 + 320);
          v67 = *(v0 + 328);
          v69 = *(v0 + 296);
          v70 = v64 + v63[8];
          *(v70 + 24) = &type metadata for LOIBasedSegmentType;
          *(v70 + 32) = &off_1F43F4678;
          *v70 = 1;
          v71 = *(v67 + 32);
          v71(v64, v65, v68);
          v72 = v63[5];
          v71(v64 + v72, v66, v68);
          *(v64 + v63[6]) = v82;
          v73 = v64 + v63[7];
          v74 = *(v0 + 128);
          v75 = *(v0 + 112);
          *v73 = *(v0 + 96);
          *(v73 + 16) = v75;
          *(v73 + 32) = v74;
          (*(v67 + 24))(v41 + v83, v64 + v72, v68);
          sub_1C49FF830(v80, v81);
          sub_1C49FF8A0(v64, v69, type metadata accessor for LOIBasedSemanticLocationSegment);
          sub_1C43FBD94();
          sub_1C440BAA8(v76, v77, v78, v63);
          sub_1C442CF20();

          sub_1C43FBDA0();

          return v79();
        }

        v58 = &qword_1EC0BB380;
        v59 = &unk_1C4F1F2E0;
        v60 = v0 + 16;
      }

      else
      {
        v58 = &qword_1EC0B97A0;
        v59 = &qword_1C4F0F7D0;
        v60 = v0 + 56;
      }

      sub_1C4420C3C(v60, v58, v59);
    }

    v82 = 0;
    goto LABEL_34;
  }

  v22 = *(v0 + 368);
  v23 = *(v0 + 376);
  v24 = *(v0 + 304);
  sub_1C4420C3C(v24, &qword_1EC0B9790, &unk_1C4F0F7C0);
  sub_1C4419F98();
  sub_1C49FF8A0(v23, v24, v25);
  sub_1C43FBD94();
  sub_1C440BAA8(v26, v27, v28, v22);
  v29 = swift_task_alloc();
  v30 = sub_1C443268C(v29);
  *v30 = v31;
  sub_1C44074B0(v30);

  return sub_1C49FD16C();
}

uint64_t sub_1C49FF6B0()
{
  sub_1C43FBCD4();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C445229C;

  return sub_1C49FE76C();
}

uint64_t sub_1C49FF744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_1C4582C48;

  return (sub_1C4981CDC)(a1, a2, a3, v3 + 16);
}

uint64_t sub_1C49FF830(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B9790, &unk_1C4F0F7C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C49FF8A0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C49FF900(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C49FF958(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LOIBasedSemanticLocationSegmentProvider(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1C49FF9E4(uint64_t a1)
{
  sub_1C4EF9CD8();
  if (v1 <= 0x3F)
  {
    type metadata accessor for RTPlaceInferenceUserSpecificPlaceType(319);
    if (v2 <= 0x3F)
    {
      sub_1C49FCCC0();
      if (v3 <= 0x3F)
      {
        sub_1C49FFA98();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1C49FFA98()
{
  result = qword_1EDDF4A18;
  if (!qword_1EDDF4A18)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDDF4A18);
  }

  return result;
}

uint64_t sub_1C49FFB3C(uint64_t a1)
{
  result = type metadata accessor for LOIBasedSegmentProvider(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C49FFBA8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v24 = a2;
  v3 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23 - v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v23 - v17;
  v19 = *(v5 + 16);
  v19(&v23 - v17, a1, v3, v16);
  v20 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  (v19)(v14, a1 + *(v20 + 36), v3);
  (v19)(v11, v18, v3);
  (v19)(v8, v14, v3);
  sub_1C49FCD10(v11, v8, v24);
  v21 = *(v5 + 8);
  v21(v14, v3);
  return (v21)(v18, v3);
}

uint64_t sub_1C49FFD84()
{
  v1 = v0;
  sub_1C456902C(&unk_1EC0C65C0, &qword_1C4F0D1F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  *(inited + 32) = 0xD000000000000022;
  *(inited + 40) = 0x80000001C4F9B280;
  v3 = type metadata accessor for LOIEventData(0);
  v4 = *(v1 + v3[7]);
  v5 = objc_opt_self();
  *(inited + 48) = [v5 featureValueWithInt64_];
  sub_1C4577DBC();
  v6 = sub_1C4F00F28();
  v7 = (v1 + v3[10]);
  v8 = v7[1];
  if (v8)
  {
    v9 = *v7;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v10 = sub_1C4AD5C68(v9, v8);
    sub_1C465BEF8();
    if ((v11 & 1) == 0)
    {
      v12 = sub_1C4B744F4(v10, byte_1F43D27E8);
      if (v13)
      {
        v14 = -1;
      }

      else
      {
        v14 = v12;
      }

      if ([v5 featureValueWithInt64_])
      {
        swift_isUniquelyReferenced_nonNull_native();
        sub_1C4660314();
      }

      else
      {
        v15 = sub_1C445FAA8(0xD000000000000010, 0x80000001C4F9B2B0);
        if (v16)
        {
          v17 = v15;
          swift_isUniquelyReferenced_nonNull_native();
          sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
          sub_1C4F02458();

          v18 = *(*(v6 + 56) + 8 * v17);
          sub_1C4F02478();
        }
      }
    }
  }

  v19 = v1 + v3[11];
  if ((*(v19 + 8) & 1) == 0)
  {
    if ([v5 featureValueWithDouble_])
    {
      swift_isUniquelyReferenced_nonNull_native();
      sub_1C4660314();
    }

    else
    {
      v20 = sub_1C445FAA8(0xD000000000000017, 0x80000001C4F9B2D0);
      if (v21)
      {
        v22 = v20;
        swift_isUniquelyReferenced_nonNull_native();
        sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
        sub_1C4F02458();

        v23 = *(*(v6 + 56) + 8 * v22);
        sub_1C4F02478();
      }
    }
  }

  return v6;
}

uint64_t sub_1C4A000C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D69547472617473 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656D6954646E65 && a2 == 0xE700000000000000;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000015 && 0x80000001C4F9B000 == a2;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x656475746974616CLL && a2 == 0xE800000000000000;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 6909808 && a2 == 0xE300000000000000;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6E6F437469736976 && a2 == 0xEF65636E65646966;
                if (v12 || (sub_1C4F02938() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000011 && 0x80000001C4FAC5D0 == a2;
                  if (v13 || (sub_1C4F02938() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0xD000000000000018 && 0x80000001C4FAC5F0 == a2)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = sub_1C4F02938();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
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
}

unint64_t sub_1C4A003F4(char a1)
{
  result = 0x6D69547472617473;
  switch(a1)
  {
    case 1:
      result = 0x656D6954646E65;
      break;
    case 2:
      result = 0x6E656469666E6F63;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0x656475746974616CLL;
      break;
    case 5:
      result = 0x64757469676E6F6CLL;
      break;
    case 6:
      result = 6909808;
      break;
    case 7:
      result = 0x6E6F437469736976;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4A00524(void *a1)
{
  v3 = v1;
  v5 = sub_1C456902C(&qword_1EC0C1008, &qword_1C4F425D8);
  sub_1C43FCDF8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16[-v9];
  sub_1C4409678(a1, a1[3]);
  sub_1C4A02208();
  sub_1C4F02BF8();
  v18 = 0;
  sub_1C4EF9CD8();
  sub_1C441210C();
  sub_1C4A01EA8(v11, v12, MEMORY[0x1E6969538]);
  sub_1C440E594(v3, &v18);
  if (!v2)
  {
    v13 = type metadata accessor for LOIEventData(0);
    v14 = v13[5];
    v17 = 1;
    sub_1C440E594(v3 + v14, &v17);
    sub_1C441FEDC(v13[6]);
    v16[29] = 2;
    sub_1C44074D0();
    sub_1C4F02758();
    v16[28] = *(v3 + v13[7]);
    v16[27] = 3;
    sub_1C4A02310();
    sub_1C4F027E8();
    sub_1C441FEDC(v13[8]);
    v16[26] = 4;
    sub_1C44074D0();
    sub_1C4F02758();
    sub_1C441FEDC(v13[9]);
    v16[25] = 5;
    sub_1C44074D0();
    sub_1C4F02758();
    v16[24] = 6;
    sub_1C44074D0();
    sub_1C4F02738();
    sub_1C441FEDC(v13[11]);
    v16[15] = 7;
    sub_1C44074D0();
    sub_1C4F02758();
    sub_1C441FEDC(v13[12]);
    v16[14] = 8;
    sub_1C44074D0();
    sub_1C4F02758();
    sub_1C441FEDC(v13[13]);
    v16[13] = 9;
    sub_1C44074D0();
    sub_1C4F02758();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1C4A007F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v4 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v51 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v43 - v10;
  v47 = sub_1C456902C(&qword_1EC0C0FF0, &qword_1C4F425D0);
  sub_1C43FCDF8();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v43 - v15;
  v48 = type metadata accessor for LOIEventData(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v17);
  v49 = a1;
  v50 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4409678(a1, a1[3]);
  sub_1C4A02208();
  v46 = v16;
  sub_1C4F02BC8();
  if (v2)
  {
    return sub_1C440962C(v49);
  }

  v44 = v13;
  v62 = 0;
  sub_1C441210C();
  sub_1C4A01EA8(v19, v20, MEMORY[0x1E6969558]);
  sub_1C4408DB4(v4, &v62);
  v21 = v50;
  v22 = v11;
  v23 = *(v51 + 32);
  v23(v50, v22, v4);
  v61 = 1;
  sub_1C4408DB4(v4, &v61);
  v24 = v48;
  v23(&v21[v48[5]], v8, v4);
  v60 = 2;
  sub_1C443269C();
  v25 = sub_1C4F02638();
  sub_1C4419FB0(v25, v26, v24[6]);
  v58 = 3;
  sub_1C4A0225C();
  sub_1C4F026C8();
  v21[v24[7]] = v59;
  v57 = 4;
  sub_1C443269C();
  v27 = sub_1C4F02638();
  sub_1C4419FB0(v27, v28, v24[8]);
  v56 = 5;
  sub_1C443269C();
  v29 = sub_1C4F02638();
  sub_1C4419FB0(v29, v30, v24[9]);
  v55 = 6;
  sub_1C443269C();
  v31 = sub_1C4F02618();
  v32 = &v21[v24[10]];
  *v32 = v31;
  v32[1] = v33;
  v54 = 7;
  sub_1C443269C();
  v34 = sub_1C4F02638();
  sub_1C4419FB0(v34, v35, v48[11]);
  v53 = 8;
  sub_1C443269C();
  v36 = sub_1C4F02638();
  sub_1C4419FB0(v36, v37, v48[12]);
  v52 = 9;
  sub_1C443269C();
  v38 = sub_1C4F02638();
  LOBYTE(v24) = v39;
  (*(v44 + 8))(v46, v47);
  v40 = v50;
  v41 = &v50[v48[13]];
  *v41 = v38;
  v41[8] = v24 & 1;
  sub_1C4A022B0(v40, v45, type metadata accessor for LOIEventData);
  sub_1C440962C(v49);
  return sub_1C4A01F10(v40, type metadata accessor for LOIEventData);
}

uint64_t sub_1C4A00D94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4A000C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4A00DBC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C4617B98();
  *a1 = result;
  return result;
}

uint64_t sub_1C4A00DE4(uint64_t a1)
{
  v2 = sub_1C4A02208();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4A00E20(uint64_t a1)
{
  v2 = sub_1C4A02208();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4A00F40()
{
  sub_1C43FBCD4();
  v0[62] = v1;
  v2 = sub_1C4EF9CD8();
  v0[63] = v2;
  v0[64] = *(v2 - 8);
  v0[65] = swift_task_alloc();
  v0[66] = swift_task_alloc();
  v0[67] = swift_task_alloc();
  v0[68] = swift_task_alloc();
  v0[69] = type metadata accessor for LOIEventData(0);
  v0[70] = swift_task_alloc();
  sub_1C456902C(&qword_1EC0B9790, &unk_1C4F0F7C0);
  v0[71] = swift_task_alloc();
  v0[72] = type metadata accessor for LOIBasedSegment(0);
  v0[73] = swift_task_alloc();
  v3 = swift_task_alloc();
  v0[74] = v3;
  *v3 = v0;
  v3[1] = sub_1C4A010F0;

  return sub_1C49FD16C();
}

uint64_t sub_1C4A010F0()
{
  sub_1C43FBCD4();
  v1 = *v0;
  sub_1C43FBDAC();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1C4A011E0, 0, 0);
}

uint64_t sub_1C4A011E0()
{
  v1 = v0[72];
  v2 = v0[71];
  if (sub_1C44157D4(v2, 1, v1) != 1)
  {
    v7 = v0[73];
    sub_1C4A01F68(v2, v7, type metadata accessor for LOIBasedSegment);
    v8 = *(v1 + 24);
    sub_1C46CB6CC(v7 + v8, (v0 + 7));
    v9 = v0[10];
    if (v9)
    {
      v10 = v0[11];
      sub_1C4409678(v0 + 7, v0[10]);
      (*(v10 + 32))(v9, v10);
      sub_1C46CB91C((v0 + 7));
      v11 = v0[5];
      if (v11)
      {
        v12 = v0[6];
        sub_1C4409678(v0 + 2, v0[5]);
        v13 = (*(v12 + 24))(v11, v12);
        sub_1C440962C(v0 + 2);
        goto LABEL_9;
      }

      v14 = &qword_1EC0BB380;
      v15 = &unk_1C4F1F2E0;
      v16 = (v0 + 2);
    }

    else
    {
      v14 = &qword_1EC0B97A0;
      v15 = &qword_1C4F0F7D0;
      v16 = (v0 + 7);
    }

    sub_1C4420C3C(v16, v14, v15);
    v13 = 0;
LABEL_9:
    v17 = v0[73];
    v18 = v0[72];
    v19 = v0[68];
    v20 = v0[67];
    v21 = v0[63];
    v22 = v0[64];
    v23 = sub_1C4442C70(v13);
    if (v23 == 5)
    {
      v24 = 0;
    }

    else
    {
      v24 = v23;
    }

    v84 = v24;
    v25 = *(v22 + 16);
    v25(v19, v17, v21);
    v87 = v17;
    v85 = *(v18 + 20);
    v86 = v25;
    v25(v20, v17 + v85, v21);
    sub_1C46CB6CC(v7 + v8, (v0 + 17));
    if (v0[20])
    {
      sub_1C43FF418(v0 + 17);
      v26 = sub_1C442CF40();
      v27(v26);
      sub_1C46CB91C((v0 + 17));
      if (v0[15])
      {
        sub_1C4409678(v0 + 12, v0[15]);
        v28 = sub_1C442CF40();
        v30 = v29(v28);
        sub_1C440962C(v0 + 12);
        v83 = 0;
        goto LABEL_18;
      }

      v31 = &qword_1EC0BDA78;
      v32 = &qword_1C4F30788;
      v33 = (v0 + 12);
    }

    else
    {
      v31 = &qword_1EC0B97A0;
      v32 = &qword_1C4F0F7D0;
      v33 = (v0 + 17);
    }

    sub_1C4420C3C(v33, v31, v32);
    v83 = 1;
    v30 = 0.0;
LABEL_18:
    sub_1C46CB6CC(v7 + v8, (v0 + 27));
    if (v0[30])
    {
      sub_1C43FF418(v0 + 27);
      v34 = sub_1C442CF40();
      v35(v34);
      sub_1C46CB91C((v0 + 27));
      if (v0[25])
      {
        sub_1C4409678(v0 + 22, v0[25]);
        v36 = sub_1C442CF40();
        v38 = v37(v36);
        sub_1C440962C(v0 + 22);
        v82 = 0;
        goto LABEL_24;
      }

      v39 = &qword_1EC0BDA78;
      v40 = &qword_1C4F30788;
      v41 = (v0 + 22);
    }

    else
    {
      v39 = &qword_1EC0B97A0;
      v40 = &qword_1C4F0F7D0;
      v41 = (v0 + 27);
    }

    sub_1C4420C3C(v41, v39, v40);
    v82 = 1;
    v38 = 0.0;
LABEL_24:
    sub_1C46CB6CC(v7 + v8, (v0 + 42));
    if (v0[45])
    {
      sub_1C43FF418(v0 + 42);
      v42 = sub_1C442CF40();
      v43(v42);
      sub_1C46CB91C((v0 + 42));
      if (v0[40])
      {
        sub_1C43FF418(v0 + 37);
        v44 = sub_1C442CF40();
        v45(v44);
        if (v0[35])
        {
          sub_1C4409678(v0 + 32, v0[35]);
          v46 = sub_1C442CF40();
          v48 = v47(v46);
          v80 = v49;
          v81 = v48;
          sub_1C440962C(v0 + 32);
          sub_1C440962C(v0 + 37);
LABEL_32:
          sub_1C46CB6CC(v7 + v8, (v0 + 47));
          v53 = v0[50];
          if (v53)
          {
            sub_1C442E860((v0 + 47), (v0 + 57));
            sub_1C46CB91C((v0 + 47));
            v54 = v0[60];
            v55 = v0[61];
            sub_1C4409678(v0 + 57, v54);
            v56 = (*(v55 + 40))(v54, v55);
            sub_1C440962C(v0 + 57);
          }

          else
          {
            sub_1C4420C3C((v0 + 47), &qword_1EC0B97A0, &qword_1C4F0F7D0);
            v56 = 0.0;
          }

          sub_1C46CB6CC(v7 + v8, (v0 + 52));
          v57 = v0[55];
          if (v57)
          {
            v58 = sub_1C4B70BBC();
            sub_1C46CB91C((v0 + 52));
          }

          else
          {
            sub_1C4420C3C((v0 + 52), &qword_1EC0B97A0, &qword_1C4F0F7D0);
            v58 = 0.0;
          }

          v77 = v53 == 0;
          v78 = v57 == 0;
          v59 = v0[73];
          v60 = v0[70];
          v61 = v0[69];
          v62 = v0[67];
          v63 = v0[66];
          v64 = v0[65];
          v65 = v0[63];
          v79 = v0[62];
          v66 = *(v0[64] + 32);
          v66(v60, v0[68], v65);
          v66(v60 + v61[5], v62, v65);
          v67 = v60 + v61[6];
          *v67 = 0;
          *(v67 + 8) = 1;
          *(v60 + v61[7]) = v84;
          v68 = v60 + v61[8];
          *v68 = v30;
          *(v68 + 8) = v83;
          v69 = v60 + v61[9];
          *v69 = v38;
          *(v69 + 8) = v82;
          v70 = (v60 + v61[10]);
          *v70 = v81;
          v70[1] = v80;
          v71 = v60 + v61[11];
          *v71 = 0;
          *(v71 + 8) = 1;
          v72 = v60 + v61[12];
          *v72 = v56;
          *(v72 + 8) = v77;
          v73 = v60 + v61[13];
          *v73 = v58;
          *(v73 + 8) = v78;
          v86(v63, v59, v65);
          v86(v64, v87 + v85, v65);
          sub_1C4A01F10(v59, type metadata accessor for LOIBasedSegment);
          v66(v79, v63, v65);
          v74 = sub_1C456902C(&qword_1EC0BFE98, qword_1C4F42410);
          v66(v79 + *(v74 + 28), v64, v65);
          sub_1C4A01F68(v60, v79 + *(v74 + 32), type metadata accessor for LOIEventData);
          v5 = v79;
          v6 = 0;
          v4 = v74;
          goto LABEL_39;
        }

        sub_1C440962C(v0 + 37);
        v50 = &unk_1EC0BB388;
        v51 = &unk_1C4F1F2F0;
        v52 = (v0 + 32);
      }

      else
      {
        v50 = &qword_1EC0BB380;
        v51 = &unk_1C4F1F2E0;
        v52 = (v0 + 37);
      }
    }

    else
    {
      v50 = &qword_1EC0B97A0;
      v51 = &qword_1C4F0F7D0;
      v52 = (v0 + 42);
    }

    sub_1C4420C3C(v52, v50, v51);
    v80 = 0;
    v81 = 0;
    goto LABEL_32;
  }

  v3 = v0[62];
  sub_1C4420C3C(v2, &qword_1EC0B9790, &unk_1C4F0F7C0);
  v4 = sub_1C456902C(&qword_1EC0BFE98, qword_1C4F42410);
  v5 = v3;
  v6 = 1;
LABEL_39:
  sub_1C440BAA8(v5, v6, 1, v4);

  v75 = v0[1];

  return v75();
}

uint64_t sub_1C4A01A10()
{
  sub_1C43FBCD4();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C4A01AA4;

  return sub_1C4A00F40();
}

uint64_t sub_1C4A01AA4()
{
  sub_1C43FBCD4();
  v1 = *v0;
  sub_1C43FBDAC();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1C4A01B90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_1C4A01C5C;

  return (sub_1C498271C)(a1, a2, a3, v3 + 16);
}

uint64_t sub_1C4A01C5C()
{
  sub_1C43FBCD4();
  v1 = *v0;
  sub_1C43FBDAC();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

unint64_t sub_1C4A01D94()
{
  result = qword_1EC0C0FE0;
  if (!qword_1EC0C0FE0)
  {
    sub_1C4572308(&qword_1EC0BFE98, qword_1C4F42410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0FE0);
  }

  return result;
}

uint64_t sub_1C4A01DF8(uint64_t a1)
{
  result = sub_1C4A01EA8(qword_1EDDE0698, type metadata accessor for LOISessionDataAsyncSequence, &unk_1C4F42380);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4A01E50(uint64_t a1)
{
  result = sub_1C4A01EA8(&qword_1EDDE0690, type metadata accessor for LOISessionDataAsyncSequence, &unk_1C4F423C8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4A01EA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C4A01F10(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C4A01F68(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C4A01FF0(uint64_t a1)
{
  v1 = sub_1C4EF9CD8();
  if (v2 <= 0x3F)
  {
    sub_1C44FCC6C(319, &qword_1EDDF05D8, MEMORY[0x1E69E63B0]);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_1C44FCC6C(319, &qword_1EDDFEAB0, MEMORY[0x1E69E6158]);
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

_BYTE *storeEnumTagSinglePayload for LOIType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4A021B4()
{
  result = qword_1EC0C0FE8;
  if (!qword_1EC0C0FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0FE8);
  }

  return result;
}

unint64_t sub_1C4A02208()
{
  result = qword_1EC0C0FF8;
  if (!qword_1EC0C0FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0FF8);
  }

  return result;
}

unint64_t sub_1C4A0225C()
{
  result = qword_1EC0C1000;
  if (!qword_1EC0C1000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1000);
  }

  return result;
}

uint64_t sub_1C4A022B0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

unint64_t sub_1C4A02310()
{
  result = qword_1EC0C1010;
  if (!qword_1EC0C1010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1010);
  }

  return result;
}

unint64_t sub_1C4A0237C()
{
  result = qword_1EC0C1018;
  if (!qword_1EC0C1018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1018);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LOIEventData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4A024C0()
{
  result = qword_1EC0C1020;
  if (!qword_1EC0C1020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1020);
  }

  return result;
}

unint64_t sub_1C4A02518()
{
  result = qword_1EC0C1028;
  if (!qword_1EC0C1028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1028);
  }

  return result;
}

unint64_t sub_1C4A02570()
{
  result = qword_1EC0C1030;
  if (!qword_1EC0C1030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1030);
  }

  return result;
}

void sub_1C4A02610(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v2 = type metadata accessor for LongitudinalDataCollection(0);
  sub_1C4F00318();
  v3 = (a1 + *(v2 + 24));
  *v3 = 0;
  v3[1] = 0;
  sub_1C445A9C8(*(v2 + 28));
}

uint64_t sub_1C4A02668@<X0>(uint64_t a2@<X8>)
{
  sub_1C4F00318();
  v3 = type metadata accessor for LongitudinalEvent(0);
  sub_1C445A9C8(*(v3 + 20));
  v5 = a2 + *(v4 + 24);
  *v5 = 0;
  *(v5 + 8) = v6;
  type metadata accessor for LongitudinalEventData(0);
  sub_1C43FCF64();

  return sub_1C440BAA8(v7, v8, v9, v10);
}

uint64_t sub_1C4A026D4()
{
  v1 = sub_1C4440988();
  sub_1C43FBD18(v1);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v2);
  v3 = sub_1C44042B0();
  sub_1C441BB58(v3);
  sub_1C43FC2BC();
  sub_1C4410308();
  type metadata accessor for LongitudinalEventData.MotionState(0);
  sub_1C4400334();
  if (!v4)
  {
    return sub_1C441B484();
  }

  sub_1C4F00318();
  v5 = sub_1C4401790();
  result = sub_1C441F900(v5);
  if (!v4)
  {
    return sub_1C4420C3C(v0, &qword_1EC0C1880, &unk_1C4F44880);
  }

  return result;
}

uint64_t sub_1C4A027B4()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0C1880, &unk_1C4F44880);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  if ((sub_1C446BF9C(v2) & 1) == 0)
  {
    sub_1C442E3C8();
    v3 = sub_1C43FD6F4();
    v4 = sub_1C4A08F28(v3);
    sub_1C44222F4(v4);
  }

  sub_1C447F1E8();
  v5 = type metadata accessor for LongitudinalEventData.MotionState(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C4A02890()
{
  v1 = sub_1C4440988();
  sub_1C43FBD18(v1);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v2);
  v3 = sub_1C44042B0();
  sub_1C441BB58(v3);
  sub_1C43FC2BC();
  sub_1C4410308();
  type metadata accessor for LongitudinalEventData.InferredMode(0);
  sub_1C4400334();
  if (!v4)
  {
    return sub_1C441B484();
  }

  sub_1C4F00318();
  v5 = sub_1C4401790();
  result = sub_1C441F900(v5);
  if (!v4)
  {
    return sub_1C4420C3C(v0, &qword_1EC0C1870, &qword_1C4F44870);
  }

  return result;
}

uint64_t sub_1C4A02970(void (*a1)(void))
{
  sub_1C4F00318();
  a1(0);
  v2 = type metadata accessor for FeatureValue(0);
  sub_1C43FCF64();
  sub_1C440BAA8(v3, v4, v5, v2);
  sub_1C43FCF64();

  return sub_1C440BAA8(v6, v7, v8, v2);
}

uint64_t sub_1C4A029F0()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0C1870, &qword_1C4F44870);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  if ((sub_1C446BF9C(v2) & 1) == 0)
  {
    sub_1C442E3C8();
    v3 = sub_1C43FD6F4();
    v4 = sub_1C4A08F28(v3);
    sub_1C44222F4(v4);
  }

  sub_1C447F1E8();
  v5 = type metadata accessor for LongitudinalEventData.InferredMode(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C4A02ACC()
{
  v1 = sub_1C4440988();
  sub_1C43FBD18(v1);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v2);
  v3 = sub_1C44042B0();
  sub_1C441BB58(v3);
  sub_1C43FC2BC();
  sub_1C4410308();
  type metadata accessor for LongitudinalEventData.LocalAppLaunch(0);
  sub_1C4400334();
  if (!v4)
  {
    return sub_1C441B484();
  }

  sub_1C4F00318();
  v5 = sub_1C4401790();
  result = sub_1C441F900(v5);
  if (!v4)
  {
    return sub_1C4420C3C(v0, &qword_1EC0C1860, &qword_1C4F44860);
  }

  return result;
}

uint64_t sub_1C4A02BAC()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0C1860, &qword_1C4F44860);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  if ((sub_1C446BF9C(v2) & 1) == 0)
  {
    sub_1C442E3C8();
    v3 = sub_1C43FD6F4();
    v4 = sub_1C4A08F28(v3);
    sub_1C44222F4(v4);
  }

  sub_1C447F1E8();
  v5 = type metadata accessor for LongitudinalEventData.LocalAppLaunch(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C4A02C88()
{
  v1 = sub_1C4440988();
  sub_1C43FBD18(v1);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v2);
  v3 = sub_1C44042B0();
  sub_1C441BB58(v3);
  sub_1C43FC2BC();
  sub_1C4410308();
  type metadata accessor for LongitudinalEventData.LocalAppIntent(0);
  sub_1C4400334();
  if (!v4)
  {
    return sub_1C441B484();
  }

  sub_1C4F00318();
  v5 = sub_1C4401790();
  result = sub_1C441F900(v5);
  if (!v4)
  {
    return sub_1C4420C3C(v0, &qword_1EC0C1850, &qword_1C4F44850);
  }

  return result;
}

uint64_t sub_1C4A02D68()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0C1850, &qword_1C4F44850);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  if ((sub_1C446BF9C(v2) & 1) == 0)
  {
    sub_1C442E3C8();
    v3 = sub_1C43FD6F4();
    v4 = sub_1C4A08F28(v3);
    sub_1C44222F4(v4);
  }

  sub_1C447F1E8();
  v5 = type metadata accessor for LongitudinalEventData.LocalAppIntent(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C4A02E64()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  if ((sub_1C446BF9C(v2) & 1) == 0)
  {
    sub_1C442E3C8();
    v3 = sub_1C43FD6F4();
    v4 = sub_1C4A08F28(v3);
    sub_1C44222F4(v4);
  }

  sub_1C4419FC4();
  sub_1C4404C28();
  sub_1C4A26040();
  v5 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C4A02F38()
{
  v1 = sub_1C4440988();
  sub_1C43FBD18(v1);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v2);
  v3 = sub_1C44042B0();
  sub_1C441BB58(v3);
  sub_1C43FC2BC();
  sub_1C4410308();
  type metadata accessor for LongitudinalEventData.Wifi(0);
  sub_1C4400334();
  if (!v4)
  {
    return sub_1C441B484();
  }

  sub_1C4F00318();
  v5 = sub_1C4401790();
  result = sub_1C441F900(v5);
  if (!v4)
  {
    return sub_1C4420C3C(v0, &qword_1EC0C1840, &unk_1C4F44838);
  }

  return result;
}

uint64_t sub_1C4A03018()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0C1840, &unk_1C4F44838);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  if ((sub_1C446BF9C(v2) & 1) == 0)
  {
    sub_1C442E3C8();
    v3 = sub_1C43FD6F4();
    v4 = sub_1C4A08F28(v3);
    sub_1C44222F4(v4);
  }

  sub_1C447F1E8();
  v5 = type metadata accessor for LongitudinalEventData.Wifi(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C4A03114()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  if ((sub_1C446BF9C(v2) & 1) == 0)
  {
    sub_1C442E3C8();
    v3 = sub_1C43FD6F4();
    v4 = sub_1C4A08F28(v3);
    sub_1C44222F4(v4);
  }

  sub_1C4419FC4();
  sub_1C4404C28();
  sub_1C4A26040();
  v5 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C4A03208()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  if ((sub_1C446BF9C(v2) & 1) == 0)
  {
    sub_1C442E3C8();
    v3 = sub_1C43FD6F4();
    v4 = sub_1C4A08F28(v3);
    sub_1C44222F4(v4);
  }

  sub_1C4419FC4();
  sub_1C4404C28();
  sub_1C4A26040();
  v5 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C4A032DC@<X0>(int a1@<W8>)
{
  v2 = sub_1C4440988();
  sub_1C43FBD18(v2);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v8 - v4;
  sub_1C4410FFC();
  sub_1C43FC2BC();
  sub_1C4414A7C();
  type metadata accessor for LongitudinalEventData.VirtualInteractions(0);
  sub_1C440A6F0(v5);
  if (v6)
  {
    sub_1C4F00318();
    if (qword_1EC0B6EE0 != -1)
    {
      swift_once();
    }

    result = sub_1C440E1D8();
    if (a1 != 1)
    {
      return sub_1C4420C3C(v5, &qword_1EC0C1830, &qword_1C4F44828);
    }
  }

  else
  {
    sub_1C441EE00();
    sub_1C43FD024();
    return sub_1C4A26040();
  }

  return result;
}

uint64_t sub_1C4A033FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C4405A6C();
  v8 = v7;
  sub_1C4F00318();
  v9 = *(v6(0) + 20);
  if (*v5 != -1)
  {
    swift_once();
  }

  *(v8 + v9) = *v4;
}

uint64_t sub_1C4A0347C()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0C1830, &qword_1C4F44828);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  if ((sub_1C446BF9C(v2) & 1) == 0)
  {
    sub_1C442E3C8();
    v3 = sub_1C43FD6F4();
    v4 = sub_1C4A08F28(v3);
    sub_1C44222F4(v4);
  }

  sub_1C441EE00();
  sub_1C4404C28();
  sub_1C4A26040();
  v5 = type metadata accessor for LongitudinalEventData.VirtualInteractions(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C4A03570()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  if ((sub_1C446BF9C(v2) & 1) == 0)
  {
    sub_1C442E3C8();
    v3 = sub_1C43FD6F4();
    v4 = sub_1C4A08F28(v3);
    sub_1C44222F4(v4);
  }

  sub_1C4419FC4();
  sub_1C4404C28();
  sub_1C4A26040();
  v5 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C4A03644@<X0>(int a1@<W8>)
{
  v2 = sub_1C4440988();
  sub_1C43FBD18(v2);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v8 - v4;
  sub_1C4410FFC();
  sub_1C43FC2BC();
  sub_1C4414A7C();
  type metadata accessor for LongitudinalEventData.AmbientLight(0);
  sub_1C440A6F0(v5);
  if (v6)
  {
    sub_1C4F00318();
    if (qword_1EC0B6F08 != -1)
    {
      swift_once();
    }

    result = sub_1C440E1D8();
    if (a1 != 1)
    {
      return sub_1C4420C3C(v5, &qword_1EC0C1820, &qword_1C4F44818);
    }
  }

  else
  {
    sub_1C4404588();
    sub_1C43FD024();
    return sub_1C4A26040();
  }

  return result;
}

uint64_t sub_1C4A03764()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0C1820, &qword_1C4F44818);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  if ((sub_1C446BF9C(v2) & 1) == 0)
  {
    sub_1C442E3C8();
    v3 = sub_1C43FD6F4();
    v4 = sub_1C4A08F28(v3);
    sub_1C44222F4(v4);
  }

  sub_1C4404588();
  sub_1C4404C28();
  sub_1C4A26040();
  v5 = type metadata accessor for LongitudinalEventData.AmbientLight(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C4A03838@<X0>(int a1@<W8>)
{
  v2 = sub_1C4440988();
  sub_1C43FBD18(v2);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v8 - v4;
  sub_1C4410FFC();
  sub_1C43FC2BC();
  sub_1C4414A7C();
  type metadata accessor for LongitudinalEventData.LocationVisit(0);
  sub_1C440A6F0(v5);
  if (v6)
  {
    sub_1C4F00318();
    if (qword_1EC0B6EB0 != -1)
    {
      swift_once();
    }

    result = sub_1C440E1D8();
    if (a1 != 1)
    {
      return sub_1C4420C3C(v5, &qword_1EC0C1810, &qword_1C4F44808);
    }
  }

  else
  {
    sub_1C43FD024();
    return sub_1C4A26040();
  }

  return result;
}

uint64_t sub_1C4A03968()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0C1810, &qword_1C4F44808);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  if ((sub_1C446BF9C(v2) & 1) == 0)
  {
    sub_1C442E3C8();
    v3 = sub_1C43FD6F4();
    v4 = sub_1C4A08F28(v3);
    sub_1C44222F4(v4);
  }

  sub_1C447F1E8();
  v5 = type metadata accessor for LongitudinalEventData.LocationVisit(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C4A03A44()
{
  v1 = sub_1C4440988();
  sub_1C43FBD18(v1);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v2);
  v3 = sub_1C44042B0();
  sub_1C441BB58(v3);
  sub_1C43FC2BC();
  sub_1C4410308();
  type metadata accessor for LongitudinalEventData.UserComputedFocusMode(0);
  sub_1C4400334();
  if (!v4)
  {
    return sub_1C441B484();
  }

  sub_1C4F00318();
  v5 = sub_1C4401790();
  result = sub_1C441F900(v5);
  if (!v4)
  {
    return sub_1C4420C3C(v0, &qword_1EC0C1800, &qword_1C4F447F8);
  }

  return result;
}

uint64_t sub_1C4A03B24()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0C1800, &qword_1C4F447F8);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  if ((sub_1C446BF9C(v2) & 1) == 0)
  {
    sub_1C442E3C8();
    v3 = sub_1C43FD6F4();
    v4 = sub_1C4A08F28(v3);
    sub_1C44222F4(v4);
  }

  sub_1C447F1E8();
  v5 = type metadata accessor for LongitudinalEventData.UserComputedFocusMode(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C4A03C00()
{
  v1 = sub_1C4440988();
  sub_1C43FBD18(v1);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v2);
  v3 = sub_1C44042B0();
  sub_1C441BB58(v3);
  sub_1C43FC2BC();
  sub_1C4410308();
  type metadata accessor for LongitudinalEventData.NowPlayingState(0);
  sub_1C4400334();
  if (!v4)
  {
    return sub_1C441B484();
  }

  sub_1C4F00318();
  v5 = sub_1C4401790();
  result = sub_1C441F900(v5);
  if (!v4)
  {
    return sub_1C4420C3C(v0, &qword_1EC0C17F0, &qword_1C4F447E8);
  }

  return result;
}

uint64_t sub_1C4A03CE0()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0C17F0, &qword_1C4F447E8);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  if ((sub_1C446BF9C(v2) & 1) == 0)
  {
    sub_1C442E3C8();
    v3 = sub_1C43FD6F4();
    v4 = sub_1C4A08F28(v3);
    sub_1C44222F4(v4);
  }

  sub_1C447F1E8();
  v5 = type metadata accessor for LongitudinalEventData.NowPlayingState(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C4A03DBC()
{
  v1 = sub_1C4440988();
  sub_1C43FBD18(v1);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v2);
  v3 = sub_1C44042B0();
  sub_1C441BB58(v3);
  sub_1C43FC2BC();
  sub_1C4410308();
  type metadata accessor for LongitudinalEventData.Wallet(0);
  sub_1C4400334();
  if (!v4)
  {
    return sub_1C441B484();
  }

  sub_1C4F00318();
  v5 = sub_1C4401790();
  result = sub_1C441F900(v5);
  if (!v4)
  {
    return sub_1C4420C3C(v0, &qword_1EC0C17E0, &qword_1C4F447D8);
  }

  return result;
}

uint64_t sub_1C4A03E9C()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0C17E0, &qword_1C4F447D8);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  if ((sub_1C446BF9C(v2) & 1) == 0)
  {
    sub_1C442E3C8();
    v3 = sub_1C43FD6F4();
    v4 = sub_1C4A08F28(v3);
    sub_1C44222F4(v4);
  }

  sub_1C447F1E8();
  v5 = type metadata accessor for LongitudinalEventData.Wallet(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C4A03F78()
{
  v1 = sub_1C4440988();
  sub_1C43FBD18(v1);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v2);
  v3 = sub_1C44042B0();
  sub_1C441BB58(v3);
  sub_1C43FC2BC();
  sub_1C4410308();
  type metadata accessor for LongitudinalEventData.Carplay(0);
  sub_1C4400334();
  if (!v4)
  {
    return sub_1C441B484();
  }

  sub_1C4F00318();
  v5 = sub_1C4401790();
  result = sub_1C441F900(v5);
  if (!v4)
  {
    return sub_1C4420C3C(v0, &qword_1EC0C17D0, &qword_1C4F447C8);
  }

  return result;
}

uint64_t sub_1C4A04058()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0C17D0, &qword_1C4F447C8);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  if ((sub_1C446BF9C(v2) & 1) == 0)
  {
    sub_1C442E3C8();
    v3 = sub_1C43FD6F4();
    v4 = sub_1C4A08F28(v3);
    sub_1C44222F4(v4);
  }

  sub_1C447F1E8();
  v5 = type metadata accessor for LongitudinalEventData.Carplay(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C4A04154()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  if ((sub_1C446BF9C(v2) & 1) == 0)
  {
    sub_1C442E3C8();
    v3 = sub_1C43FD6F4();
    v4 = sub_1C4A08F28(v3);
    sub_1C44222F4(v4);
  }

  sub_1C4419FC4();
  sub_1C4404C28();
  sub_1C4A26040();
  v5 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C4A04248()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  if ((sub_1C446BF9C(v2) & 1) == 0)
  {
    sub_1C442E3C8();
    v3 = sub_1C43FD6F4();
    v4 = sub_1C4A08F28(v3);
    sub_1C44222F4(v4);
  }

  sub_1C4419FC4();
  sub_1C4404C28();
  sub_1C4A26040();
  v5 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C4A0433C()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  if ((sub_1C446BF9C(v2) & 1) == 0)
  {
    sub_1C442E3C8();
    v3 = sub_1C43FD6F4();
    v4 = sub_1C4A08F28(v3);
    sub_1C44222F4(v4);
  }

  sub_1C4419FC4();
  sub_1C4404C28();
  sub_1C4A26040();
  v5 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C4A04410@<X0>(int a1@<W8>)
{
  v2 = sub_1C4440988();
  sub_1C43FBD18(v2);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v8 - v4;
  sub_1C4410FFC();
  sub_1C43FC2BC();
  sub_1C4414A7C();
  type metadata accessor for LongitudinalEventData.SemanticLocation(0);
  sub_1C440A6F0(v5);
  if (v6)
  {
    sub_1C4F00318();
    if (qword_1EC0B6EC8 != -1)
    {
      swift_once();
    }

    result = sub_1C440E1D8();
    if (a1 != 1)
    {
      return sub_1C4420C3C(v5, &qword_1EC0C17C0, &qword_1C4F447B8);
    }
  }

  else
  {
    sub_1C43FD024();
    return sub_1C4A26040();
  }

  return result;
}

uint64_t sub_1C4A04540()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0C17C0, &qword_1C4F447B8);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  if ((sub_1C446BF9C(v2) & 1) == 0)
  {
    sub_1C442E3C8();
    v3 = sub_1C43FD6F4();
    v4 = sub_1C4A08F28(v3);
    sub_1C44222F4(v4);
  }

  sub_1C447F1E8();
  v5 = type metadata accessor for LongitudinalEventData.SemanticLocation(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C4A0461C@<X0>(int a1@<W8>)
{
  v2 = sub_1C4440988();
  sub_1C43FBD18(v2);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v8 - v4;
  sub_1C4410FFC();
  sub_1C43FC2BC();
  sub_1C4414A7C();
  type metadata accessor for LongitudinalEventData.Bluetooth(0);
  sub_1C440A6F0(v5);
  if (v6)
  {
    sub_1C4F00318();
    if (qword_1EC0B6F48 != -1)
    {
      swift_once();
    }

    result = sub_1C440E1D8();
    if (a1 != 1)
    {
      return sub_1C4420C3C(v5, &qword_1EC0C17B0, &qword_1C4F447A8);
    }
  }

  else
  {
    sub_1C43FD024();
    return sub_1C4A26040();
  }

  return result;
}

uint64_t sub_1C4A0474C()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0C17B0, &qword_1C4F447A8);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  if ((sub_1C446BF9C(v2) & 1) == 0)
  {
    sub_1C442E3C8();
    v3 = sub_1C43FD6F4();
    v4 = sub_1C4A08F28(v3);
    sub_1C44222F4(v4);
  }

  sub_1C447F1E8();
  v5 = type metadata accessor for LongitudinalEventData.Bluetooth(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C4A04848()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  if ((sub_1C446BF9C(v2) & 1) == 0)
  {
    sub_1C442E3C8();
    v3 = sub_1C43FD6F4();
    v4 = sub_1C4A08F28(v3);
    sub_1C44222F4(v4);
  }

  sub_1C4419FC4();
  sub_1C4404C28();
  sub_1C4A26040();
  v5 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C4A0491C()
{
  v1 = sub_1C4440988();
  sub_1C43FBD18(v1);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v2);
  v3 = sub_1C44042B0();
  sub_1C441BB58(v3);
  sub_1C43FC2BC();
  sub_1C4410308();
  type metadata accessor for LongitudinalEventData.Microlocation(0);
  sub_1C4400334();
  if (!v4)
  {
    return sub_1C441B484();
  }

  sub_1C4F00318();
  v5 = sub_1C4401790();
  result = sub_1C441F900(v5);
  if (!v4)
  {
    return sub_1C4420C3C(v0, &qword_1EC0C17A0, &qword_1C4F44798);
  }

  return result;
}

uint64_t sub_1C4A049FC()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0C17A0, &qword_1C4F44798);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  if ((sub_1C446BF9C(v2) & 1) == 0)
  {
    sub_1C442E3C8();
    v3 = sub_1C43FD6F4();
    v4 = sub_1C4A08F28(v3);
    sub_1C44222F4(v4);
  }

  sub_1C447F1E8();
  v5 = type metadata accessor for LongitudinalEventData.Microlocation(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C4A04AD8@<X0>(int a1@<W8>)
{
  v2 = sub_1C4440988();
  sub_1C43FBD18(v2);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v8 - v4;
  sub_1C4410FFC();
  sub_1C43FC2BC();
  sub_1C4414A7C();
  type metadata accessor for LongitudinalEventData.Calendar(0);
  sub_1C440A6F0(v5);
  if (v6)
  {
    sub_1C4F00318();
    if (qword_1EC0B6F20 != -1)
    {
      swift_once();
    }

    result = sub_1C440E1D8();
    if (a1 != 1)
    {
      return sub_1C4420C3C(v5, &qword_1EC0C1790, &qword_1C4F44788);
    }
  }

  else
  {
    sub_1C43FD024();
    return sub_1C4A26040();
  }

  return result;
}

uint64_t sub_1C4A04C08()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0C1790, &qword_1C4F44788);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  if ((sub_1C446BF9C(v2) & 1) == 0)
  {
    sub_1C442E3C8();
    v3 = sub_1C43FD6F4();
    v4 = sub_1C4A08F28(v3);
    sub_1C44222F4(v4);
  }

  sub_1C447F1E8();
  v5 = type metadata accessor for LongitudinalEventData.Calendar(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C4A04D04()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  if ((sub_1C446BF9C(v2) & 1) == 0)
  {
    sub_1C442E3C8();
    v3 = sub_1C43FD6F4();
    v4 = sub_1C4A08F28(v3);
    sub_1C44222F4(v4);
  }

  sub_1C4419FC4();
  sub_1C4404C28();
  sub_1C4A26040();
  v5 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C4A050F8()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  v3 = type metadata accessor for LongitudinalEventData.LocationVisit(v2);
  if ((sub_1C4423B64(v3) & 1) == 0)
  {
    type metadata accessor for LongitudinalEventData.LocationVisit._StorageClass(0);
    sub_1C43FD23C();
    swift_allocObject();
    sub_1C4414248();
    sub_1C4A1AAE8();
    sub_1C44222F4(v4);
  }

  sub_1C4419FC4();
  sub_1C4404C28();
  sub_1C4A26040();
  v5 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C4A05218()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  v3 = type metadata accessor for LongitudinalEventData.LocationVisit(v2);
  if ((sub_1C4423B64(v3) & 1) == 0)
  {
    type metadata accessor for LongitudinalEventData.LocationVisit._StorageClass(0);
    sub_1C43FD23C();
    swift_allocObject();
    sub_1C4414248();
    sub_1C4A1AAE8();
    sub_1C44222F4(v4);
  }

  sub_1C4419FC4();
  sub_1C4404C28();
  sub_1C4A26040();
  v5 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C4A05338()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  v3 = type metadata accessor for LongitudinalEventData.SemanticLocation(v2);
  if ((sub_1C4423B64(v3) & 1) == 0)
  {
    type metadata accessor for LongitudinalEventData.SemanticLocation._StorageClass(0);
    sub_1C43FD23C();
    swift_allocObject();
    sub_1C4414248();
    sub_1C4A1AAE8();
    sub_1C44222F4(v4);
  }

  sub_1C4419FC4();
  sub_1C4404C28();
  sub_1C4A26040();
  v5 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C4A05458()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  v3 = type metadata accessor for LongitudinalEventData.SemanticLocation(v2);
  if ((sub_1C4423B64(v3) & 1) == 0)
  {
    type metadata accessor for LongitudinalEventData.SemanticLocation._StorageClass(0);
    sub_1C43FD23C();
    swift_allocObject();
    sub_1C4414248();
    sub_1C4A1AAE8();
    sub_1C44222F4(v4);
  }

  sub_1C4419FC4();
  sub_1C4404C28();
  sub_1C4A26040();
  v5 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C4A05578()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  v3 = type metadata accessor for LongitudinalEventData.SemanticLocation(v2);
  if ((sub_1C4423B64(v3) & 1) == 0)
  {
    type metadata accessor for LongitudinalEventData.SemanticLocation._StorageClass(0);
    sub_1C43FD23C();
    swift_allocObject();
    sub_1C4414248();
    sub_1C4A1AAE8();
    sub_1C44222F4(v4);
  }

  sub_1C4419FC4();
  sub_1C4404C28();
  sub_1C4A26040();
  v5 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C4A05698()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  v3 = type metadata accessor for LongitudinalEventData.VirtualInteractions(v2);
  if ((sub_1C4423B64(v3) & 1) == 0)
  {
    type metadata accessor for LongitudinalEventData.VirtualInteractions._StorageClass(0);
    sub_1C43FD23C();
    swift_allocObject();
    sub_1C441455C();
    sub_1C4A1D4F0();
    sub_1C44222F4(v4);
  }

  sub_1C4419FC4();
  sub_1C4404C28();
  sub_1C4A26040();
  v5 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C4A057C0()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  v3 = type metadata accessor for LongitudinalEventData.VirtualInteractions(v2);
  if ((sub_1C4423B64(v3) & 1) == 0)
  {
    type metadata accessor for LongitudinalEventData.VirtualInteractions._StorageClass(0);
    sub_1C43FD23C();
    swift_allocObject();
    sub_1C441455C();
    sub_1C4A1D4F0();
    sub_1C44222F4(v4);
  }

  sub_1C4419FC4();
  sub_1C4404C28();
  sub_1C4A26040();
  v5 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C4A058E8()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  v3 = type metadata accessor for LongitudinalEventData.VirtualInteractions(v2);
  if ((sub_1C4423B64(v3) & 1) == 0)
  {
    type metadata accessor for LongitudinalEventData.VirtualInteractions._StorageClass(0);
    sub_1C43FD23C();
    swift_allocObject();
    sub_1C441455C();
    sub_1C4A1D4F0();
    sub_1C44222F4(v4);
  }

  sub_1C4419FC4();
  sub_1C4404C28();
  sub_1C4A26040();
  v5 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C4A05A38(uint64_t (*a1)(uint64_t))
{
  v4 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v4);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = a1(v6);
  sub_1C4417FEC(*(v7 + 24));
  type metadata accessor for FeatureValue(0);
  sub_1C4400334();
  if (!v8)
  {
    return sub_1C4A26040();
  }

  sub_1C444ACD8(MEMORY[0x1E69E7CC0]);
  type metadata accessor for FeatureValue.BasicValue(0);
  sub_1C43FCF64();
  sub_1C440BAA8(v9, v10, v11, v12);
  result = sub_1C4400334();
  if (!v8)
  {
    return sub_1C4420C3C(v2, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  return result;
}

uint64_t sub_1C4A05B5C()
{
  v1 = sub_1C4403FC0();
  v3 = v2(v1);
  sub_1C4420C3C(v0 + *(v3 + 24), &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4419FC4();
  sub_1C44022A0();
  sub_1C4A26040();
  type metadata accessor for FeatureValue(0);
  v4 = sub_1C4410B98();

  return sub_1C440BAA8(v4, v5, v6, v7);
}

uint64_t sub_1C4A05BF0()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  v3 = type metadata accessor for LongitudinalEventData.AmbientLight(v2);
  if ((sub_1C4423B64(v3) & 1) == 0)
  {
    type metadata accessor for LongitudinalEventData.AmbientLight._StorageClass(0);
    sub_1C43FD23C();
    swift_allocObject();
    sub_1C441455C();
    sub_1C4A1D4F0();
    sub_1C44222F4(v4);
  }

  sub_1C4419FC4();
  sub_1C4404C28();
  sub_1C4A26040();
  v5 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C4A05D18()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  v3 = type metadata accessor for LongitudinalEventData.AmbientLight(v2);
  if ((sub_1C4423B64(v3) & 1) == 0)
  {
    type metadata accessor for LongitudinalEventData.AmbientLight._StorageClass(0);
    sub_1C43FD23C();
    swift_allocObject();
    sub_1C441455C();
    sub_1C4A1D4F0();
    sub_1C44222F4(v4);
  }

  sub_1C4419FC4();
  sub_1C4404C28();
  sub_1C4A26040();
  v5 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C4A05E40()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  v3 = type metadata accessor for LongitudinalEventData.AmbientLight(v2);
  if ((sub_1C4423B64(v3) & 1) == 0)
  {
    type metadata accessor for LongitudinalEventData.AmbientLight._StorageClass(0);
    sub_1C43FD23C();
    swift_allocObject();
    sub_1C441455C();
    sub_1C4A1D4F0();
    sub_1C44222F4(v4);
  }

  sub_1C4419FC4();
  sub_1C4404C28();
  sub_1C4A26040();
  v5 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C4A05F68()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  v3 = type metadata accessor for LongitudinalEventData.AmbientLight(v2);
  if ((sub_1C4423B64(v3) & 1) == 0)
  {
    type metadata accessor for LongitudinalEventData.AmbientLight._StorageClass(0);
    sub_1C43FD23C();
    swift_allocObject();
    sub_1C441455C();
    sub_1C4A1D4F0();
    sub_1C44222F4(v4);
  }

  sub_1C4419FC4();
  sub_1C4404C28();
  sub_1C4A26040();
  v5 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C4A06090()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  v3 = type metadata accessor for LongitudinalEventData.Calendar(v2);
  if ((sub_1C4423B64(v3) & 1) == 0)
  {
    type metadata accessor for LongitudinalEventData.Calendar._StorageClass(0);
    sub_1C43FD23C();
    swift_allocObject();
    sub_1C441455C();
    sub_1C4A1D4F0();
    sub_1C44222F4(v4);
  }

  sub_1C4419FC4();
  sub_1C4404C28();
  sub_1C4A26040();
  v5 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C4A061B8()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  v3 = type metadata accessor for LongitudinalEventData.Calendar(v2);
  if ((sub_1C4423B64(v3) & 1) == 0)
  {
    type metadata accessor for LongitudinalEventData.Calendar._StorageClass(0);
    sub_1C43FD23C();
    swift_allocObject();
    sub_1C441455C();
    sub_1C4A1D4F0();
    sub_1C44222F4(v4);
  }

  sub_1C4419FC4();
  sub_1C4404C28();
  sub_1C4A26040();
  v5 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C4A062E0()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  v3 = type metadata accessor for LongitudinalEventData.Calendar(v2);
  if ((sub_1C4423B64(v3) & 1) == 0)
  {
    type metadata accessor for LongitudinalEventData.Calendar._StorageClass(0);
    sub_1C43FD23C();
    swift_allocObject();
    sub_1C441455C();
    sub_1C4A1D4F0();
    sub_1C44222F4(v4);
  }

  sub_1C4419FC4();
  sub_1C4404C28();
  sub_1C4A26040();
  v5 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C4A06408()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  v3 = type metadata accessor for LongitudinalEventData.Calendar(v2);
  if ((sub_1C4423B64(v3) & 1) == 0)
  {
    type metadata accessor for LongitudinalEventData.Calendar._StorageClass(0);
    sub_1C43FD23C();
    swift_allocObject();
    sub_1C441455C();
    sub_1C4A1D4F0();
    sub_1C44222F4(v4);
  }

  sub_1C4419FC4();
  sub_1C4404C28();
  sub_1C4A26040();
  v5 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C4A06528(uint64_t (*a1)(uint64_t))
{
  v4 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v4);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = a1(v6);
  sub_1C4417FEC(*(v7 + 20));
  type metadata accessor for FeatureValue(0);
  sub_1C4400334();
  if (!v8)
  {
    return sub_1C4A26040();
  }

  sub_1C444ACD8(MEMORY[0x1E69E7CC0]);
  type metadata accessor for FeatureValue.BasicValue(0);
  sub_1C43FCF64();
  sub_1C440BAA8(v9, v10, v11, v12);
  result = sub_1C4400334();
  if (!v8)
  {
    return sub_1C4420C3C(v2, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  return result;
}

uint64_t sub_1C4A0664C()
{
  v1 = sub_1C4403FC0();
  v3 = v2(v1);
  sub_1C4420C3C(v0 + *(v3 + 20), &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4419FC4();
  sub_1C44022A0();
  sub_1C4A26040();
  type metadata accessor for FeatureValue(0);
  v4 = sub_1C4410B98();

  return sub_1C440BAA8(v4, v5, v6, v7);
}

uint64_t sub_1C4A066E0()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  v3 = type metadata accessor for LongitudinalEventData.Bluetooth(v2);
  if ((sub_1C4423B64(v3) & 1) == 0)
  {
    type metadata accessor for LongitudinalEventData.Bluetooth._StorageClass(0);
    sub_1C43FD23C();
    swift_allocObject();
    sub_1C4414248();
    sub_1C4A1AAE8();
    sub_1C44222F4(v4);
  }

  sub_1C4419FC4();
  sub_1C4404C28();
  sub_1C4A26040();
  v5 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C4A06800()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  v3 = type metadata accessor for LongitudinalEventData.Bluetooth(v2);
  if ((sub_1C4423B64(v3) & 1) == 0)
  {
    type metadata accessor for LongitudinalEventData.Bluetooth._StorageClass(0);
    sub_1C43FD23C();
    swift_allocObject();
    sub_1C4414248();
    sub_1C4A1AAE8();
    sub_1C44222F4(v4);
  }

  sub_1C4419FC4();
  sub_1C4404C28();
  sub_1C4A26040();
  v5 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C4A06920@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v8 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v8);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  v10 = sub_1C44042B0();
  v11 = *(v4 + *(a1(v10) + 20));
  v12 = *a2;
  sub_1C440D164(v11 + v12, v20);
  sub_1C4460108(v11 + v12, v3, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  type metadata accessor for FeatureValue(0);
  sub_1C4400334();
  if (!v13)
  {
    return sub_1C4A26040();
  }

  v14 = MEMORY[0x1E69E7CC0];
  *a3 = MEMORY[0x1E69E7CC0];
  a3[1] = v14;
  a3[2] = v14;
  sub_1C4F00318();
  type metadata accessor for FeatureValue.BasicValue(0);
  sub_1C43FCF64();
  sub_1C440BAA8(v15, v16, v17, v18);
  result = sub_1C4400334();
  if (!v13)
  {
    return sub_1C4420C3C(v3, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  return result;
}

uint64_t sub_1C4A06A70()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  v3 = type metadata accessor for LongitudinalEventData.Bluetooth(v2);
  if ((sub_1C4423B64(v3) & 1) == 0)
  {
    type metadata accessor for LongitudinalEventData.Bluetooth._StorageClass(0);
    sub_1C43FD23C();
    swift_allocObject();
    sub_1C4414248();
    sub_1C4A1AAE8();
    sub_1C44222F4(v4);
  }

  sub_1C4419FC4();
  sub_1C4404C28();
  sub_1C4A26040();
  v5 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C4A06B70()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC152650);
  sub_1C442B738(v0, qword_1EC152650);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0C890;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "rotating60DayUUID";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "event";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "protoVersion";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  return sub_1C4F004D8();
}

uint64_t sub_1C4A06DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for LongitudinalEvent(0);
  sub_1C4A24734(&qword_1EC0C1718, type metadata accessor for LongitudinalEvent, &unk_1C4F44570);
  return sub_1C4F003E8();
}

void sub_1C4A06EE0()
{
  sub_1C441800C();
  sub_1C448E07C();
  v5 = v4;
  sub_1C4A06FF8(v0, v4, v3, v2);
  if (!v1)
  {
    if (*(*v0 + 16))
    {
      type metadata accessor for LongitudinalEvent(0);
      sub_1C4A24734(&qword_1EC0C1718, type metadata accessor for LongitudinalEvent, &unk_1C4F44570);
      sub_1C43FD5B4();
      sub_1C4F004A8();
    }

    sub_1C4A07070(v0, v5, v3, v2);
    type metadata accessor for LongitudinalDataCollection(0);
    sub_1C4F00308();
  }

  sub_1C44512DC();
}

uint64_t sub_1C4A06FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for LongitudinalDataCollection(0);
  if (*(a1 + *(result + 24) + 8))
  {
    return sub_1C4F00498();
  }

  return result;
}

uint64_t sub_1C4A07070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for LongitudinalDataCollection(0);
  if ((*(a1 + *(result + 28) + 8) & 1) == 0)
  {
    return sub_1C4F00478();
  }

  return result;
}

uint64_t sub_1C4A070E8()
{
  v2 = sub_1C43FECE0();
  v3 = *(type metadata accessor for LongitudinalDataCollection(v2) + 24);
  v4 = (v1 + v3);
  v5 = *(v1 + v3 + 8);
  v6 = (v0 + v3);
  v7 = v6[1];
  if (v5)
  {
    if (!v7)
    {
      return 0;
    }

    v8 = *v4 == *v6 && v5 == v7;
    if (!v8 && (sub_1C4F02938() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  sub_1C47E63BC();
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  sub_1C44C12A8();
  if (v11)
  {
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    sub_1C43FD5A0();
    if (v13)
    {
      return 0;
    }
  }

  sub_1C4F00328();
  sub_1C442CF50();
  sub_1C4A24734(v14, v15, MEMORY[0x1E69AAC10]);
  return sub_1C4F010B8() & 1;
}

uint64_t sub_1C4A0726C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4A24734(&qword_1EC0C1750, type metadata accessor for LongitudinalDataCollection, &unk_1C4F446A0);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C4A0730C(uint64_t a1)
{
  sub_1C4A24734(&qword_1EC0C1738, type metadata accessor for LongitudinalDataCollection, &unk_1C4F446D8);

  return sub_1C4F00428();
}

uint64_t sub_1C4A073D4(uint64_t a1, uint64_t a2)
{
  sub_1C4A24734(&qword_1EC0C1738, type metadata accessor for LongitudinalDataCollection, &unk_1C4F446D8);

  return sub_1C4F00438();
}

uint64_t sub_1C4A07454()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC152668);
  sub_1C442B738(v0, qword_1EC152668);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0C890;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "startDate";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "endDate";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "eventData";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  return sub_1C4F004D8();
}

void sub_1C4A0765C()
{
  sub_1C441800C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  while (1)
  {
    sub_1C43FD018();
    v7 = sub_1C4F00378();
    if (v0 || (v8 & 1) != 0)
    {
      break;
    }

    switch(v7)
    {
      case 3:
        v11 = sub_1C43FC1C0();
        v2(v11);
        break;
      case 2:
        v10 = sub_1C43FC1C0();
        v4(v10);
        break;
      case 1:
        v9 = sub_1C43FC1C0();
        v6(v9);
        break;
    }
  }

  sub_1C44512DC();
}

uint64_t sub_1C4A077E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for LongitudinalEvent(0);
  type metadata accessor for LongitudinalEventData(0);
  sub_1C4A24734(&qword_1EC0C16F8, type metadata accessor for LongitudinalEventData, &unk_1C4F44408);
  return sub_1C4F003F8();
}

uint64_t sub_1C4A07898()
{
  sub_1C4405A6C();
  sub_1C43FEE74();
  result = sub_1C4A078FC(v1, v2, v3, v4);
  if (!v0)
  {
    sub_1C43FEE74();
    sub_1C4A07974(v6, v7, v8, v9);
    sub_1C43FEE74();
    sub_1C4A079EC(v10, v11, v12, v13);
    sub_1C43FE99C();
    return sub_1C4F00308();
  }

  return result;
}

uint64_t sub_1C4A078FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for LongitudinalEvent(0);
  if ((*(a1 + *(result + 20) + 8) & 1) == 0)
  {
    return sub_1C4F00478();
  }

  return result;
}

uint64_t sub_1C4A07974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for LongitudinalEvent(0);
  if ((*(a1 + *(result + 24) + 8) & 1) == 0)
  {
    return sub_1C4F00478();
  }

  return result;
}

uint64_t sub_1C4A079EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = sub_1C456902C(&qword_1EC0BD660, &unk_1C4F45450);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for LongitudinalEventData(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = type metadata accessor for LongitudinalEvent(0);
  sub_1C4460108(a1 + *(v9 + 28), v7, &qword_1EC0BD660, &unk_1C4F45450);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BD660, &unk_1C4F45450);
  }

  sub_1C4A26040();
  sub_1C4A24734(&qword_1EC0C16F8, type metadata accessor for LongitudinalEventData, &unk_1C4F44408);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

void sub_1C4A07BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FBD3C();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = type metadata accessor for LongitudinalEventData(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBCC4();
  v30 = v29 - v28;
  v31 = sub_1C456902C(&qword_1EC0BD660, &unk_1C4F45450);
  sub_1C43FBD18(v31);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &a9 - v33;
  v35 = sub_1C456902C(&qword_1EC0BD668, &qword_1C4F2F370);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &a9 - v37;
  type metadata accessor for LongitudinalEvent(0);
  sub_1C44C12A8();
  if (v40)
  {
    if (!v39)
    {
      goto LABEL_19;
    }
  }

  else
  {
    sub_1C43FD5A0();
    if (v41)
    {
      goto LABEL_19;
    }
  }

  sub_1C44C12A8();
  if (v44)
  {
    if (!v43)
    {
      goto LABEL_19;
    }
  }

  else
  {
    sub_1C43FD5A0();
    if (v45)
    {
      goto LABEL_19;
    }
  }

  v46 = *(v42 + 28);
  v47 = *(v35 + 48);
  sub_1C4460108(v25 + v46, v38, &qword_1EC0BD660, &unk_1C4F45450);
  sub_1C4460108(v23 + v46, &v38[v47], &qword_1EC0BD660, &unk_1C4F45450);
  sub_1C4406BE8(v38);
  if (v48)
  {
    sub_1C4406BE8(&v38[v47]);
    if (v48)
    {
      sub_1C4420C3C(v38, &qword_1EC0BD660, &unk_1C4F45450);
LABEL_23:
      sub_1C4F00328();
      sub_1C442CF50();
      sub_1C4A24734(v57, v58, MEMORY[0x1E69AAC10]);
      sub_1C4404C28();
      sub_1C4F010B8();
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  sub_1C4460108(v38, v34, &qword_1EC0BD660, &unk_1C4F45450);
  sub_1C4406BE8(&v38[v47]);
  if (v48)
  {
    sub_1C4A25FEC();
LABEL_17:
    v49 = &qword_1EC0BD668;
    v50 = &qword_1C4F2F370;
LABEL_18:
    sub_1C4420C3C(v38, v49, v50);
    goto LABEL_19;
  }

  sub_1C4A26040();
  if (*&v34[*(v26 + 20)] != *(v30 + *(v26 + 20)))
  {

    sub_1C4A11920();
    v52 = v51;

    if ((v52 & 1) == 0)
    {
      sub_1C4A25FEC();
      sub_1C4A25FEC();
      v49 = &qword_1EC0BD660;
      v50 = &unk_1C4F45450;
      goto LABEL_18;
    }
  }

  sub_1C4F00328();
  sub_1C442CF50();
  v55 = sub_1C4A24734(v53, v54, MEMORY[0x1E69AAC10]);
  v56 = sub_1C442A74C(v55);
  sub_1C4A25FEC();
  sub_1C4A25FEC();
  sub_1C4420C3C(v38, &qword_1EC0BD660, &unk_1C4F45450);
  if (v56)
  {
    goto LABEL_23;
  }

LABEL_19:
  sub_1C43FE9F0();
}

uint64_t sub_1C4A07FD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4A24734(&qword_1EC0C1888, type metadata accessor for LongitudinalEvent, &unk_1C4F44538);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C4A08078(uint64_t a1)
{
  sub_1C4A24734(&qword_1EC0C1718, type metadata accessor for LongitudinalEvent, &unk_1C4F44570);

  return sub_1C4F00428();
}

uint64_t sub_1C4A08140(uint64_t a1, uint64_t a2)
{
  sub_1C4A24734(&qword_1EC0C1718, type metadata accessor for LongitudinalEvent, &unk_1C4F44570);

  return sub_1C4F00438();
}

uint64_t sub_1C4A081C0()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC152680);
  sub_1C442B738(v0, qword_1EC152680);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v71 = swift_allocObject();
  *(v71 + 16) = xmmword_1C4F37E00;
  v4 = v71 + v3;
  v5 = v71 + v3 + v1[14];
  *(v71 + v3) = 1;
  *v5 = "motionState";
  *(v5 + 8) = 11;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C4F004C8();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "inferredMode";
  *(v9 + 8) = 12;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "localAppLaunch";
  *(v11 + 1) = 14;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "localAppIntent";
  *(v13 + 1) = 14;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "remoteAppCategory";
  *(v15 + 1) = 17;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "wifi";
  *(v17 + 1) = 4;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "deviceUnlocked";
  *(v19 + 1) = 14;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "deviceBacklightOn";
  *(v21 + 1) = 17;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "virtualInteractions";
  *(v23 + 1) = 19;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "phoneCharging";
  *(v25 + 1) = 13;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "ambientLight";
  *(v27 + 1) = 12;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "locationVisit";
  *(v29 + 1) = 13;
  v29[16] = 2;
  v8();
  v30 = (v4 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 13;
  *v31 = "userComputedFocusMode";
  *(v31 + 1) = 21;
  v31[16] = 2;
  v8();
  v32 = (v4 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 14;
  *v33 = "nowPlayingState";
  *(v33 + 1) = 15;
  v33[16] = 2;
  v8();
  v34 = (v4 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 15;
  *v35 = "wallet";
  *(v35 + 1) = 6;
  v35[16] = 2;
  v8();
  v36 = (v4 + 15 * v2);
  v37 = v36 + v1[14];
  *v36 = 16;
  *v37 = "cdInBedDetected";
  *(v37 + 1) = 15;
  v37[16] = 2;
  v8();
  v38 = (v4 + 16 * v2);
  v39 = v38 + v1[14];
  *v38 = 17;
  *v39 = "carplay";
  *(v39 + 1) = 7;
  v39[16] = 2;
  v8();
  v40 = (v4 + 17 * v2);
  v41 = v40 + v1[14];
  *v40 = 18;
  *v41 = "alarmType";
  *(v41 + 1) = 9;
  v41[16] = 2;
  v8();
  v42 = (v4 + 18 * v2);
  v43 = v42 + v1[14];
  *v42 = 19;
  *v43 = "airplaneModeEnabled";
  *(v43 + 1) = 19;
  v43[16] = 2;
  v8();
  v44 = (v4 + 19 * v2);
  v45 = v44 + v1[14];
  *v44 = 20;
  *v45 = "eventFoundInAppsCategory";
  *(v45 + 1) = 24;
  v45[16] = 2;
  v8();
  v46 = (v4 + 20 * v2);
  v47 = v46 + v1[14];
  *v46 = 21;
  *v47 = "semanticLocation";
  *(v47 + 1) = 16;
  v47[16] = 2;
  v8();
  v48 = (v4 + 21 * v2);
  v49 = v48 + v1[14];
  *v48 = 22;
  *v49 = "bluetooth";
  *(v49 + 1) = 9;
  v49[16] = 2;
  v8();
  v50 = (v4 + 22 * v2);
  v51 = v50 + v1[14];
  *v50 = 23;
  *v51 = "lowPowerMode";
  *(v51 + 1) = 12;
  v51[16] = 2;
  v8();
  v52 = (v4 + 23 * v2);
  v53 = v52 + v1[14];
  *v52 = 24;
  *v53 = "microlocation";
  *(v53 + 1) = 13;
  v53[16] = 2;
  v8();
  v54 = (v4 + 24 * v2);
  v55 = v54 + v1[14];
  *v54 = 25;
  *v55 = "calendar";
  *(v55 + 1) = 8;
  v55[16] = 2;
  v8();
  v56 = (v4 + 25 * v2);
  v57 = v56 + v1[14];
  *v56 = 26;
  *v57 = "systemSpaceInteraction";
  *(v57 + 1) = 22;
  v57[16] = 2;
  v8();
  v58 = (v4 + 26 * v2);
  v59 = v58 + v1[14];
  *v58 = 27;
  *v59 = "airplay";
  *(v59 + 1) = 7;
  v59[16] = 2;
  v8();
  v60 = (v4 + 27 * v2);
  v61 = v60 + v1[14];
  *v60 = 28;
  *v61 = "homekitAccessoryId";
  *(v61 + 1) = 18;
  v61[16] = 2;
  v8();
  v62 = (v4 + 28 * v2);
  v63 = v62 + v1[14];
  *v62 = 29;
  *v63 = "geoHash";
  *(v63 + 1) = 7;
  v63[16] = 2;
  v8();
  v64 = (v4 + 29 * v2);
  v65 = v64 + v1[14];
  *v64 = 30;
  *v65 = "unigrams";
  *(v65 + 1) = 8;
  v65[16] = 2;
  v8();
  v66 = (v4 + 30 * v2);
  v67 = v66 + v1[14];
  *v66 = 31;
  *v67 = "linkActions";
  *(v67 + 1) = 11;
  v67[16] = 2;
  v8();
  v68 = (v4 + 31 * v2);
  v69 = v68 + v1[14];
  *v68 = 32;
  *v69 = "widget";
  *(v69 + 1) = 6;
  v69[16] = 2;
  v8();
  return sub_1C4F004D8();
}

uint64_t sub_1C4A08AAC()
{
  sub_1C442E3C8();
  result = sub_1C4A08ADC();
  qword_1EC0C1038 = result;
  return result;
}

uint64_t sub_1C4A08ADC()
{
  v1 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__motionState;
  v2 = type metadata accessor for LongitudinalEventData.MotionState(0);
  sub_1C440BAA8(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__inferredMode;
  v4 = type metadata accessor for LongitudinalEventData.InferredMode(0);
  sub_1C440BAA8(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__localAppLaunch;
  v6 = type metadata accessor for LongitudinalEventData.LocalAppLaunch(0);
  sub_1C440BAA8(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__localAppIntent;
  v8 = type metadata accessor for LongitudinalEventData.LocalAppIntent(0);
  sub_1C440BAA8(v0 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__remoteAppCategory;
  v10 = type metadata accessor for FeatureValue(0);
  sub_1C440BAA8(v0 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__wifi;
  v12 = type metadata accessor for LongitudinalEventData.Wifi(0);
  sub_1C440BAA8(v0 + v11, 1, 1, v12);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__deviceUnlocked, 1, 1, v10);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__deviceBacklightOn, 1, 1, v10);
  v13 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__virtualInteractions;
  v14 = type metadata accessor for LongitudinalEventData.VirtualInteractions(0);
  sub_1C440BAA8(v0 + v13, 1, 1, v14);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__phoneCharging, 1, 1, v10);
  v15 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__ambientLight;
  v16 = type metadata accessor for LongitudinalEventData.AmbientLight(0);
  sub_1C440BAA8(v0 + v15, 1, 1, v16);
  v17 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__locationVisit;
  v18 = type metadata accessor for LongitudinalEventData.LocationVisit(0);
  sub_1C440BAA8(v0 + v17, 1, 1, v18);
  v19 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__userComputedFocusMode;
  v20 = type metadata accessor for LongitudinalEventData.UserComputedFocusMode(0);
  sub_1C440BAA8(v0 + v19, 1, 1, v20);
  v21 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__nowPlayingState;
  v22 = type metadata accessor for LongitudinalEventData.NowPlayingState(0);
  sub_1C440BAA8(v0 + v21, 1, 1, v22);
  v23 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__wallet;
  v24 = type metadata accessor for LongitudinalEventData.Wallet(0);
  sub_1C440BAA8(v0 + v23, 1, 1, v24);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__cdInBedDetected, 1, 1, v10);
  v25 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__carplay;
  v26 = type metadata accessor for LongitudinalEventData.Carplay(0);
  sub_1C440BAA8(v0 + v25, 1, 1, v26);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__alarmType, 1, 1, v10);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__airplaneModeEnabled, 1, 1, v10);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__eventFoundInAppsCategory, 1, 1, v10);
  v27 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__semanticLocation;
  v28 = type metadata accessor for LongitudinalEventData.SemanticLocation(0);
  sub_1C440BAA8(v0 + v27, 1, 1, v28);
  v29 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__bluetooth;
  v30 = type metadata accessor for LongitudinalEventData.Bluetooth(0);
  sub_1C440BAA8(v0 + v29, 1, 1, v30);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__lowPowerMode, 1, 1, v10);
  v31 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__microlocation;
  v32 = type metadata accessor for LongitudinalEventData.Microlocation(0);
  sub_1C440BAA8(v0 + v31, 1, 1, v32);
  v33 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__calendar;
  v34 = type metadata accessor for LongitudinalEventData.Calendar(0);
  sub_1C440BAA8(v0 + v33, 1, 1, v34);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__systemSpaceInteraction, 1, 1, v10);
  v35 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__airplay;
  v36 = type metadata accessor for LongitudinalEventData.Airplay(0);
  sub_1C440BAA8(v0 + v35, 1, 1, v36);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__homekitAccessoryID, 1, 1, v10);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__geoHash, 1, 1, v10);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__unigrams, 1, 1, v10);
  v37 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__linkActions;
  v38 = type metadata accessor for LongitudinalEventData.LinkActions(0);
  sub_1C440BAA8(v0 + v37, 1, 1, v38);
  v39 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__widget;
  v40 = type metadata accessor for LongitudinalEventData.Widget(0);
  sub_1C440BAA8(v0 + v39, 1, 1, v40);
  return v0;
}

uint64_t sub_1C4A08F28(uint64_t a1)
{
  v3 = sub_1C456902C(&qword_1EC0C1760, &qword_1C4F44758);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v216 = &v167 - v4;
  v5 = sub_1C456902C(&qword_1EC0C1770, &qword_1C4F44768);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v215 = &v167 - v6;
  v7 = sub_1C456902C(&qword_1EC0C1780, &qword_1C4F44778);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v214 = &v167 - v8;
  v9 = sub_1C456902C(&qword_1EC0C1790, &qword_1C4F44788);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v213 = &v167 - v10;
  v11 = sub_1C456902C(&qword_1EC0C17A0, &qword_1C4F44798);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v212 = &v167 - v12;
  v13 = sub_1C456902C(&qword_1EC0C17B0, &qword_1C4F447A8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v211 = &v167 - v14;
  v15 = sub_1C456902C(&qword_1EC0C17C0, &qword_1C4F447B8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v210 = &v167 - v16;
  v17 = sub_1C456902C(&qword_1EC0C17D0, &qword_1C4F447C8);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v209 = &v167 - v18;
  v19 = sub_1C456902C(&qword_1EC0C17E0, &qword_1C4F447D8);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v207 = &v167 - v20;
  v21 = sub_1C456902C(&qword_1EC0C17F0, &qword_1C4F447E8);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v204 = &v167 - v22;
  v23 = sub_1C456902C(&qword_1EC0C1800, &qword_1C4F447F8);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v201 = &v167 - v24;
  v25 = sub_1C456902C(&qword_1EC0C1810, &qword_1C4F44808);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v198 = &v167 - v26;
  v27 = sub_1C456902C(&qword_1EC0C1820, &qword_1C4F44818);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v194 = &v167 - v28;
  v29 = sub_1C456902C(&qword_1EC0C1830, &qword_1C4F44828);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v189 = &v167 - v30;
  v31 = sub_1C456902C(&qword_1EC0C1840, &unk_1C4F44838);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v183 = &v167 - v32;
  v33 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v35 = &v167 - v34;
  v36 = sub_1C456902C(&qword_1EC0C1850, &qword_1C4F44850);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v177 = &v167 - v37;
  v38 = sub_1C456902C(&qword_1EC0C1860, &qword_1C4F44860);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v174 = &v167 - v39;
  v40 = sub_1C456902C(&qword_1EC0C1870, &qword_1C4F44870);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v170 = &v167 - v41;
  v42 = sub_1C456902C(&qword_1EC0C1880, &unk_1C4F44880);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v44 = &v167 - v43;
  v45 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__motionState;
  v46 = type metadata accessor for LongitudinalEventData.MotionState(0);
  sub_1C440BAA8(v1 + v45, 1, 1, v46);
  v47 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__inferredMode;
  v168 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__inferredMode;
  v48 = type metadata accessor for LongitudinalEventData.InferredMode(0);
  sub_1C440BAA8(v1 + v47, 1, 1, v48);
  v49 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__localAppLaunch;
  v169 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__localAppLaunch;
  v50 = type metadata accessor for LongitudinalEventData.LocalAppLaunch(0);
  sub_1C440BAA8(v1 + v49, 1, 1, v50);
  v51 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__localAppIntent;
  v171 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__localAppIntent;
  v52 = type metadata accessor for LongitudinalEventData.LocalAppIntent(0);
  sub_1C440BAA8(v1 + v51, 1, 1, v52);
  v53 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__remoteAppCategory;
  v172 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__remoteAppCategory;
  v54 = type metadata accessor for FeatureValue(0);
  sub_1C440BAA8(v1 + v53, 1, 1, v54);
  v55 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__wifi;
  v173 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__wifi;
  v56 = type metadata accessor for LongitudinalEventData.Wifi(0);
  sub_1C440BAA8(v1 + v55, 1, 1, v56);
  v175 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__deviceUnlocked;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__deviceUnlocked, 1, 1, v54);
  v176 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__deviceBacklightOn;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__deviceBacklightOn, 1, 1, v54);
  v57 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__virtualInteractions;
  v178 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__virtualInteractions;
  v58 = type metadata accessor for LongitudinalEventData.VirtualInteractions(0);
  sub_1C440BAA8(v1 + v57, 1, 1, v58);
  v179 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__phoneCharging;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__phoneCharging, 1, 1, v54);
  v59 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__ambientLight;
  v180 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__ambientLight;
  v60 = type metadata accessor for LongitudinalEventData.AmbientLight(0);
  sub_1C440BAA8(v1 + v59, 1, 1, v60);
  v61 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__locationVisit;
  v181 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__locationVisit;
  v62 = type metadata accessor for LongitudinalEventData.LocationVisit(0);
  sub_1C440BAA8(v1 + v61, 1, 1, v62);
  v63 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__userComputedFocusMode;
  v182 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__userComputedFocusMode;
  v64 = type metadata accessor for LongitudinalEventData.UserComputedFocusMode(0);
  sub_1C440BAA8(v1 + v63, 1, 1, v64);
  v65 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__nowPlayingState;
  v184 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__nowPlayingState;
  v66 = type metadata accessor for LongitudinalEventData.NowPlayingState(0);
  sub_1C440BAA8(v1 + v65, 1, 1, v66);
  v67 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__wallet;
  v185 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__wallet;
  v68 = type metadata accessor for LongitudinalEventData.Wallet(0);
  sub_1C440BAA8(v1 + v67, 1, 1, v68);
  v186 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__cdInBedDetected;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__cdInBedDetected, 1, 1, v54);
  v69 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__carplay;
  v187 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__carplay;
  v70 = type metadata accessor for LongitudinalEventData.Carplay(0);
  sub_1C440BAA8(v1 + v69, 1, 1, v70);
  v188 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__alarmType;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__alarmType, 1, 1, v54);
  v190 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__airplaneModeEnabled;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__airplaneModeEnabled, 1, 1, v54);
  v191 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__eventFoundInAppsCategory;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__eventFoundInAppsCategory, 1, 1, v54);
  v71 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__semanticLocation;
  v192 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__semanticLocation;
  v72 = type metadata accessor for LongitudinalEventData.SemanticLocation(0);
  sub_1C440BAA8(v1 + v71, 1, 1, v72);
  v73 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__bluetooth;
  v193 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__bluetooth;
  v74 = type metadata accessor for LongitudinalEventData.Bluetooth(0);
  sub_1C440BAA8(v1 + v73, 1, 1, v74);
  v195 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__lowPowerMode;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__lowPowerMode, 1, 1, v54);
  v75 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__microlocation;
  v196 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__microlocation;
  v76 = type metadata accessor for LongitudinalEventData.Microlocation(0);
  sub_1C440BAA8(v1 + v75, 1, 1, v76);
  v77 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__calendar;
  v197 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__calendar;
  v78 = type metadata accessor for LongitudinalEventData.Calendar(0);
  sub_1C440BAA8(v1 + v77, 1, 1, v78);
  v199 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__systemSpaceInteraction;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__systemSpaceInteraction, 1, 1, v54);
  v79 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__airplay;
  v200 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__airplay;
  v80 = type metadata accessor for LongitudinalEventData.Airplay(0);
  sub_1C440BAA8(v1 + v79, 1, 1, v80);
  v202 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__homekitAccessoryID;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__homekitAccessoryID, 1, 1, v54);
  v203 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__geoHash;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__geoHash, 1, 1, v54);
  v205 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__unigrams;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__unigrams, 1, 1, v54);
  v81 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__linkActions;
  v206 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__linkActions;
  v82 = type metadata accessor for LongitudinalEventData.LinkActions(0);
  sub_1C440BAA8(v1 + v81, 1, 1, v82);
  v83 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__widget;
  v208 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__widget;
  v84 = type metadata accessor for LongitudinalEventData.Widget(0);
  sub_1C440BAA8(v1 + v83, 1, 1, v84);
  v85 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__motionState;
  swift_beginAccess();
  sub_1C4460108(a1 + v85, v44, &qword_1EC0C1880, &unk_1C4F44880);
  swift_beginAccess();
  sub_1C44408D4(v44, v1 + v45, &qword_1EC0C1880, &unk_1C4F44880);
  swift_endAccess();
  v86 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__inferredMode;
  swift_beginAccess();
  v87 = v170;
  sub_1C4460108(a1 + v86, v170, &qword_1EC0C1870, &qword_1C4F44870);
  v88 = v168;
  swift_beginAccess();
  sub_1C44408D4(v87, v1 + v88, &qword_1EC0C1870, &qword_1C4F44870);
  swift_endAccess();
  v89 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__localAppLaunch;
  swift_beginAccess();
  v90 = v174;
  sub_1C4460108(a1 + v89, v174, &qword_1EC0C1860, &qword_1C4F44860);
  v91 = v169;
  swift_beginAccess();
  sub_1C44408D4(v90, v1 + v91, &qword_1EC0C1860, &qword_1C4F44860);
  swift_endAccess();
  v92 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__localAppIntent;
  swift_beginAccess();
  v93 = v177;
  sub_1C4460108(a1 + v92, v177, &qword_1EC0C1850, &qword_1C4F44850);
  v94 = v171;
  swift_beginAccess();
  sub_1C44408D4(v93, v1 + v94, &qword_1EC0C1850, &qword_1C4F44850);
  swift_endAccess();
  v95 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__remoteAppCategory;
  swift_beginAccess();
  sub_1C4460108(a1 + v95, v35, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v96 = v172;
  swift_beginAccess();
  sub_1C44408D4(v35, v1 + v96, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v97 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__wifi;
  swift_beginAccess();
  v98 = v183;
  sub_1C4460108(a1 + v97, v183, &qword_1EC0C1840, &unk_1C4F44838);
  v99 = v173;
  swift_beginAccess();
  sub_1C44408D4(v98, v1 + v99, &qword_1EC0C1840, &unk_1C4F44838);
  swift_endAccess();
  v100 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__deviceUnlocked;
  swift_beginAccess();
  sub_1C4460108(a1 + v100, v35, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v101 = v175;
  swift_beginAccess();
  sub_1C44408D4(v35, v1 + v101, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v102 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__deviceBacklightOn;
  swift_beginAccess();
  sub_1C4460108(a1 + v102, v35, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v103 = v176;
  swift_beginAccess();
  sub_1C44408D4(v35, v1 + v103, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v104 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__virtualInteractions;
  swift_beginAccess();
  v105 = v189;
  sub_1C4460108(a1 + v104, v189, &qword_1EC0C1830, &qword_1C4F44828);
  v106 = v178;
  swift_beginAccess();
  sub_1C44408D4(v105, v1 + v106, &qword_1EC0C1830, &qword_1C4F44828);
  swift_endAccess();
  v107 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__phoneCharging;
  swift_beginAccess();
  sub_1C4460108(a1 + v107, v35, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v108 = v179;
  swift_beginAccess();
  sub_1C44408D4(v35, v1 + v108, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v109 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__ambientLight;
  swift_beginAccess();
  v110 = v194;
  sub_1C4460108(a1 + v109, v194, &qword_1EC0C1820, &qword_1C4F44818);
  v111 = v180;
  swift_beginAccess();
  sub_1C44408D4(v110, v1 + v111, &qword_1EC0C1820, &qword_1C4F44818);
  swift_endAccess();
  v112 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__locationVisit;
  swift_beginAccess();
  v113 = v198;
  sub_1C4460108(a1 + v112, v198, &qword_1EC0C1810, &qword_1C4F44808);
  v114 = v181;
  swift_beginAccess();
  sub_1C44408D4(v113, v1 + v114, &qword_1EC0C1810, &qword_1C4F44808);
  swift_endAccess();
  v115 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__userComputedFocusMode;
  swift_beginAccess();
  v116 = v201;
  sub_1C4460108(a1 + v115, v201, &qword_1EC0C1800, &qword_1C4F447F8);
  v117 = v182;
  swift_beginAccess();
  sub_1C44408D4(v116, v1 + v117, &qword_1EC0C1800, &qword_1C4F447F8);
  swift_endAccess();
  v118 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__nowPlayingState;
  swift_beginAccess();
  v119 = v204;
  sub_1C4460108(a1 + v118, v204, &qword_1EC0C17F0, &qword_1C4F447E8);
  v120 = v184;
  swift_beginAccess();
  sub_1C44408D4(v119, v1 + v120, &qword_1EC0C17F0, &qword_1C4F447E8);
  swift_endAccess();
  v121 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__wallet;
  swift_beginAccess();
  v122 = v207;
  sub_1C4460108(a1 + v121, v207, &qword_1EC0C17E0, &qword_1C4F447D8);
  v123 = v185;
  swift_beginAccess();
  sub_1C44408D4(v122, v1 + v123, &qword_1EC0C17E0, &qword_1C4F447D8);
  swift_endAccess();
  v124 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__cdInBedDetected;
  swift_beginAccess();
  sub_1C4460108(a1 + v124, v35, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v125 = v186;
  swift_beginAccess();
  sub_1C44408D4(v35, v1 + v125, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v126 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__carplay;
  swift_beginAccess();
  v127 = v209;
  sub_1C4460108(a1 + v126, v209, &qword_1EC0C17D0, &qword_1C4F447C8);
  v128 = v187;
  swift_beginAccess();
  sub_1C44408D4(v127, v1 + v128, &qword_1EC0C17D0, &qword_1C4F447C8);
  swift_endAccess();
  v129 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__alarmType;
  swift_beginAccess();
  sub_1C4460108(a1 + v129, v35, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v130 = v188;
  swift_beginAccess();
  sub_1C44408D4(v35, v1 + v130, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v131 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__airplaneModeEnabled;
  swift_beginAccess();
  sub_1C4460108(a1 + v131, v35, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v132 = v190;
  swift_beginAccess();
  sub_1C44408D4(v35, v1 + v132, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v133 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__eventFoundInAppsCategory;
  swift_beginAccess();
  sub_1C4460108(a1 + v133, v35, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v134 = v191;
  swift_beginAccess();
  sub_1C44408D4(v35, v1 + v134, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v135 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__semanticLocation;
  swift_beginAccess();
  v136 = v210;
  sub_1C4460108(a1 + v135, v210, &qword_1EC0C17C0, &qword_1C4F447B8);
  v137 = v192;
  swift_beginAccess();
  sub_1C44408D4(v136, v1 + v137, &qword_1EC0C17C0, &qword_1C4F447B8);
  swift_endAccess();
  v138 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__bluetooth;
  swift_beginAccess();
  v139 = v211;
  sub_1C4460108(a1 + v138, v211, &qword_1EC0C17B0, &qword_1C4F447A8);
  v140 = v193;
  swift_beginAccess();
  sub_1C44408D4(v139, v1 + v140, &qword_1EC0C17B0, &qword_1C4F447A8);
  swift_endAccess();
  v141 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__lowPowerMode;
  swift_beginAccess();
  sub_1C4460108(a1 + v141, v35, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v142 = v195;
  swift_beginAccess();
  sub_1C44408D4(v35, v1 + v142, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v143 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__microlocation;
  swift_beginAccess();
  v144 = v212;
  sub_1C4460108(a1 + v143, v212, &qword_1EC0C17A0, &qword_1C4F44798);
  v145 = v196;
  swift_beginAccess();
  sub_1C44408D4(v144, v1 + v145, &qword_1EC0C17A0, &qword_1C4F44798);
  swift_endAccess();
  v146 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__calendar;
  swift_beginAccess();
  v147 = v213;
  sub_1C4460108(a1 + v146, v213, &qword_1EC0C1790, &qword_1C4F44788);
  v148 = v197;
  swift_beginAccess();
  sub_1C44408D4(v147, v1 + v148, &qword_1EC0C1790, &qword_1C4F44788);
  swift_endAccess();
  v149 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__systemSpaceInteraction;
  swift_beginAccess();
  sub_1C4460108(a1 + v149, v35, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v150 = v199;
  swift_beginAccess();
  sub_1C44408D4(v35, v1 + v150, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v151 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__airplay;
  swift_beginAccess();
  v152 = v214;
  sub_1C4460108(a1 + v151, v214, &qword_1EC0C1780, &qword_1C4F44778);
  v153 = v200;
  swift_beginAccess();
  sub_1C44408D4(v152, v1 + v153, &qword_1EC0C1780, &qword_1C4F44778);
  swift_endAccess();
  v154 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__homekitAccessoryID;
  swift_beginAccess();
  sub_1C4460108(a1 + v154, v35, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v155 = v202;
  swift_beginAccess();
  sub_1C44408D4(v35, v1 + v155, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v156 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__geoHash;
  swift_beginAccess();
  sub_1C4460108(a1 + v156, v35, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v157 = v203;
  swift_beginAccess();
  sub_1C44408D4(v35, v1 + v157, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v158 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__unigrams;
  swift_beginAccess();
  sub_1C4460108(a1 + v158, v35, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v159 = v205;
  swift_beginAccess();
  sub_1C44408D4(v35, v1 + v159, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v160 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__linkActions;
  swift_beginAccess();
  v161 = v215;
  sub_1C4460108(a1 + v160, v215, &qword_1EC0C1770, &qword_1C4F44768);
  v162 = v206;
  swift_beginAccess();
  sub_1C44408D4(v161, v1 + v162, &qword_1EC0C1770, &qword_1C4F44768);
  swift_endAccess();
  v163 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__widget;
  swift_beginAccess();
  v164 = v216;
  sub_1C4460108(a1 + v163, v216, &qword_1EC0C1760, &qword_1C4F44758);

  v165 = v208;
  swift_beginAccess();
  sub_1C44408D4(v164, v1 + v165, &qword_1EC0C1760, &qword_1C4F44758);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C4A0A854()
{
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__motionState, &qword_1EC0C1880, &unk_1C4F44880);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__inferredMode, &qword_1EC0C1870, &qword_1C4F44870);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__localAppLaunch, &qword_1EC0C1860, &qword_1C4F44860);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__localAppIntent, &qword_1EC0C1850, &qword_1C4F44850);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__remoteAppCategory, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__wifi, &qword_1EC0C1840, &unk_1C4F44838);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__deviceUnlocked, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__deviceBacklightOn, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__virtualInteractions, &qword_1EC0C1830, &qword_1C4F44828);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__phoneCharging, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__ambientLight, &qword_1EC0C1820, &qword_1C4F44818);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__locationVisit, &qword_1EC0C1810, &qword_1C4F44808);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__userComputedFocusMode, &qword_1EC0C1800, &qword_1C4F447F8);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__nowPlayingState, &qword_1EC0C17F0, &qword_1C4F447E8);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__wallet, &qword_1EC0C17E0, &qword_1C4F447D8);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__cdInBedDetected, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__carplay, &qword_1EC0C17D0, &qword_1C4F447C8);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__alarmType, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__airplaneModeEnabled, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__eventFoundInAppsCategory, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__semanticLocation, &qword_1EC0C17C0, &qword_1C4F447B8);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__bluetooth, &qword_1EC0C17B0, &qword_1C4F447A8);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__lowPowerMode, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__microlocation, &qword_1EC0C17A0, &qword_1C4F44798);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__calendar, &qword_1EC0C1790, &qword_1C4F44788);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__systemSpaceInteraction, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__airplay, &qword_1EC0C1780, &qword_1C4F44778);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__homekitAccessoryID, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__geoHash, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__unigrams, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__linkActions, &qword_1EC0C1770, &qword_1C4F44768);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__widget, &qword_1EC0C1760, &qword_1C4F44758);
  return v0;
}

uint64_t sub_1C4A0AC24()
{
  sub_1C4A0A854();

  return swift_deallocClassInstance();
}

void sub_1C4A0ACA0(uint64_t a1)
{
  sub_1C4A0B594(319, &qword_1EC0C1188, type metadata accessor for LongitudinalEventData.MotionState, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1C4A0B594(319, &qword_1EC0C1190, type metadata accessor for LongitudinalEventData.InferredMode, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C4A0B594(319, &qword_1EC0C1198, type metadata accessor for LongitudinalEventData.LocalAppLaunch, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1C4A0B594(319, &qword_1EC0C11A0, type metadata accessor for LongitudinalEventData.LocalAppIntent, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1C4A0B594(319, &qword_1EDDF8B70, type metadata accessor for FeatureValue, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1C4A0B594(319, &qword_1EC0C11A8, type metadata accessor for LongitudinalEventData.Wifi, MEMORY[0x1E69E6720]);
            if (v6 <= 0x3F)
            {
              sub_1C4A0B594(319, &qword_1EC0C11B0, type metadata accessor for LongitudinalEventData.VirtualInteractions, MEMORY[0x1E69E6720]);
              if (v7 <= 0x3F)
              {
                sub_1C4A0B594(319, &qword_1EC0C11B8, type metadata accessor for LongitudinalEventData.AmbientLight, MEMORY[0x1E69E6720]);
                if (v8 <= 0x3F)
                {
                  sub_1C4A0B594(319, &qword_1EC0C11C0, type metadata accessor for LongitudinalEventData.LocationVisit, MEMORY[0x1E69E6720]);
                  if (v9 <= 0x3F)
                  {
                    sub_1C4A0B594(319, &qword_1EC0C11C8, type metadata accessor for LongitudinalEventData.UserComputedFocusMode, MEMORY[0x1E69E6720]);
                    if (v10 <= 0x3F)
                    {
                      sub_1C4A0B594(319, &qword_1EC0C11D0, type metadata accessor for LongitudinalEventData.NowPlayingState, MEMORY[0x1E69E6720]);
                      if (v11 <= 0x3F)
                      {
                        sub_1C4A0B594(319, &qword_1EC0C11D8, type metadata accessor for LongitudinalEventData.Wallet, MEMORY[0x1E69E6720]);
                        if (v12 <= 0x3F)
                        {
                          sub_1C4A0B594(319, &qword_1EC0C11E0, type metadata accessor for LongitudinalEventData.Carplay, MEMORY[0x1E69E6720]);
                          if (v13 <= 0x3F)
                          {
                            sub_1C4A0B594(319, &qword_1EC0C11E8, type metadata accessor for LongitudinalEventData.SemanticLocation, MEMORY[0x1E69E6720]);
                            if (v14 <= 0x3F)
                            {
                              sub_1C4A0B594(319, &qword_1EC0C11F0, type metadata accessor for LongitudinalEventData.Bluetooth, MEMORY[0x1E69E6720]);
                              if (v15 <= 0x3F)
                              {
                                sub_1C4A0B594(319, &qword_1EC0C11F8, type metadata accessor for LongitudinalEventData.Microlocation, MEMORY[0x1E69E6720]);
                                if (v16 <= 0x3F)
                                {
                                  sub_1C4A0B594(319, &qword_1EC0C1200, type metadata accessor for LongitudinalEventData.Calendar, MEMORY[0x1E69E6720]);
                                  if (v17 <= 0x3F)
                                  {
                                    sub_1C4A0B594(319, &qword_1EC0C1208, type metadata accessor for LongitudinalEventData.Airplay, MEMORY[0x1E69E6720]);
                                    if (v18 <= 0x3F)
                                    {
                                      sub_1C4A0B594(319, &qword_1EC0C1210, type metadata accessor for LongitudinalEventData.LinkActions, MEMORY[0x1E69E6720]);
                                      if (v19 <= 0x3F)
                                      {
                                        sub_1C4A0B594(319, &qword_1EC0C1218, type metadata accessor for LongitudinalEventData.Widget, MEMORY[0x1E69E6720]);
                                        if (v20 <= 0x3F)
                                        {
                                          swift_updateClassMetadata2();
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
}

void sub_1C4A0B594(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C4A0B838()
{
  sub_1C441800C();
  v0 = sub_1C43FD704();
  v1 = type metadata accessor for LongitudinalEventData(v0);
  if ((sub_1C442A918(v1) & 1) == 0)
  {
    type metadata accessor for LongitudinalEventData._StorageClass(0);
    sub_1C43FD23C();
    swift_allocObject();
    v2 = sub_1C43FD6F4();
    v3 = sub_1C4A08F28(v2);
    sub_1C4416740(v3);
  }

  v4 = sub_1C440F77C();
  sub_1C4A0B89C(v4, v5, v6, v7);
  sub_1C44512DC();
}

uint64_t sub_1C4A0B89C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1C4F00378();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1C4A0BC8C(a2, a1, a3, a4);
        break;
      case 2:
        sub_1C4A0BD68(a2, a1, a3, a4);
        break;
      case 3:
        sub_1C4A0BE44(a2, a1, a3, a4);
        break;
      case 4:
        sub_1C4A0BF20(a2, a1, a3, a4);
        break;
      case 5:
        sub_1C4A0BFFC(a2, a1, a3, a4);
        break;
      case 6:
        sub_1C4A0C0D8(a2, a1, a3, a4);
        break;
      case 7:
        sub_1C4A0C1B4(a2, a1, a3, a4);
        break;
      case 8:
        sub_1C4A0C290(a2, a1, a3, a4);
        break;
      case 9:
        sub_1C4A0C36C(a2, a1, a3, a4);
        break;
      case 10:
        sub_1C4A0C448(a2, a1, a3, a4);
        break;
      case 11:
        sub_1C4A0C524(a2, a1, a3, a4);
        break;
      case 12:
        sub_1C4A0C600(a2, a1, a3, a4);
        break;
      case 13:
        sub_1C4A0C6DC(a2, a1, a3, a4);
        break;
      case 14:
        sub_1C4A0C7B8(a2, a1, a3, a4);
        break;
      case 15:
        sub_1C4A0C894(a2, a1, a3, a4);
        break;
      case 16:
        sub_1C4A0C970(a2, a1, a3, a4);
        break;
      case 17:
        sub_1C4A0CA4C(a2, a1, a3, a4);
        break;
      case 18:
        sub_1C4A0CB28(a2, a1, a3, a4);
        break;
      case 19:
        sub_1C4A0CC04(a2, a1, a3, a4);
        break;
      case 20:
        sub_1C4A0CCE0(a2, a1, a3, a4);
        break;
      case 21:
        sub_1C4A0CDBC(a2, a1, a3, a4);
        break;
      case 22:
        sub_1C4A0CE98(a2, a1, a3, a4);
        break;
      case 23:
        sub_1C4A0CF74(a2, a1, a3, a4);
        break;
      case 24:
        sub_1C4A0D050(a2, a1, a3, a4);
        break;
      case 25:
        sub_1C4A0D12C(a2, a1, a3, a4);
        break;
      case 26:
        sub_1C4A0D208(a2, a1, a3, a4);
        break;
      case 27:
        sub_1C4A0D2E4(a2, a1, a3, a4);
        break;
      case 28:
        sub_1C4A0D3C0(a2, a1, a3, a4);
        break;
      case 29:
        sub_1C4A0D49C(a2, a1, a3, a4);
        break;
      case 30:
        sub_1C4A0D578(a2, a1, a3, a4);
        break;
      case 31:
        sub_1C4A0D654(a2, a1, a3, a4);
        break;
      case 32:
        sub_1C4A0D730(a2, a1, a3, a4);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C4A0BC8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for LongitudinalEventData.MotionState(0);
  sub_1C4A24734(&qword_1EC0C16D8, type metadata accessor for LongitudinalEventData.MotionState, &unk_1C4F442A0);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A0BD68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for LongitudinalEventData.InferredMode(0);
  sub_1C4A24734(&qword_1EC0C1658, type metadata accessor for LongitudinalEventData.InferredMode, &unk_1C4F43D00);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A0BE44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for LongitudinalEventData.LocalAppLaunch(0);
  sub_1C4A24734(&qword_1EC0C1618, type metadata accessor for LongitudinalEventData.LocalAppLaunch, &unk_1C4F43A30);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A0BF20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for LongitudinalEventData.LocalAppIntent(0);
  sub_1C4A24734(&qword_1EC0C15F8, type metadata accessor for LongitudinalEventData.LocalAppIntent, &unk_1C4F438C8);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A0BFFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A0C0D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for LongitudinalEventData.Wifi(0);
  sub_1C4A24734(&qword_1EC0C1678, type metadata accessor for LongitudinalEventData.Wifi, &unk_1C4F43E68);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A0C1B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A0C290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A0C36C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for LongitudinalEventData.VirtualInteractions(0);
  sub_1C4A24734(&qword_1EC0C1578, type metadata accessor for LongitudinalEventData.VirtualInteractions, &unk_1C4F43328);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A0C448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A0C524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for LongitudinalEventData.AmbientLight(0);
  sub_1C4A24734(&qword_1EC0C1538, type metadata accessor for LongitudinalEventData.AmbientLight, &unk_1C4F43058);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A0C600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for LongitudinalEventData.LocationVisit(0);
  sub_1C4A24734(&qword_1EC0C15B8, type metadata accessor for LongitudinalEventData.LocationVisit, &unk_1C4F435F8);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A0C6DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for LongitudinalEventData.UserComputedFocusMode(0);
  sub_1C4A24734(&qword_1EC0C1638, type metadata accessor for LongitudinalEventData.UserComputedFocusMode, &unk_1C4F43B98);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A0C7B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for LongitudinalEventData.NowPlayingState(0);
  sub_1C4A24734(&qword_1EC0C1558, type metadata accessor for LongitudinalEventData.NowPlayingState, &unk_1C4F431C0);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A0C894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for LongitudinalEventData.Wallet(0);
  sub_1C4A24734(&qword_1EC0C15D8, type metadata accessor for LongitudinalEventData.Wallet, &unk_1C4F43760);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A0C970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A0CA4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for LongitudinalEventData.Carplay(0);
  sub_1C4A24734(&qword_1EC0C1698, type metadata accessor for LongitudinalEventData.Carplay, &unk_1C4F43FD0);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A0CB28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A0CC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A0CCE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A0CDBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for LongitudinalEventData.SemanticLocation(0);
  sub_1C4A24734(&qword_1EC0C1598, type metadata accessor for LongitudinalEventData.SemanticLocation, &unk_1C4F43490);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A0CE98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for LongitudinalEventData.Bluetooth(0);
  sub_1C4A24734(&qword_1EC0C14D8, type metadata accessor for LongitudinalEventData.Bluetooth, &unk_1C4F42C20);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A0CF74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A0D050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for LongitudinalEventData.Microlocation(0);
  sub_1C4A24734(&qword_1EC0C14F8, type metadata accessor for LongitudinalEventData.Microlocation, &unk_1C4F42D88);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A0D12C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for LongitudinalEventData.Calendar(0);
  sub_1C4A24734(&qword_1EC0C1518, type metadata accessor for LongitudinalEventData.Calendar, &unk_1C4F42EF0);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A0D208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A0D2E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for LongitudinalEventData.Airplay(0);
  sub_1C4A24734(&qword_1EC0C16B8, type metadata accessor for LongitudinalEventData.Airplay, &unk_1C4F44138);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A0D3C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A0D49C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A0D578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A0D654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for LongitudinalEventData.LinkActions(0);
  sub_1C4A24734(&qword_1EC0C1498, type metadata accessor for LongitudinalEventData.LinkActions, &unk_1C4F42950);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A0D730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for LongitudinalEventData.Widget(0);
  sub_1C4A24734(&qword_1EC0C14B8, type metadata accessor for LongitudinalEventData.Widget, &unk_1C4F42AB8);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A0D80C()
{
  v1 = sub_1C4416088();
  v2 = type metadata accessor for LongitudinalEventData(v1);
  sub_1C442F668(v2);
  sub_1C43FEE74();
  result = sub_1C4A0D858(v3, v4, v5, v6);
  if (!v0)
  {
    sub_1C43FE99C();
    return sub_1C4F00308();
  }

  return result;
}

uint64_t sub_1C4A0D858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1C4A0DB78(a1, a2, a3, a4);
  if (!v4)
  {
    sub_1C4A0DD60(a1, a2, a3, a4);
    sub_1C4A0DF48(a1, a2, a3, a4);
    sub_1C4A0E130(a1, a2, a3, a4);
    sub_1C4A0E318(a1, a2, a3, a4);
    sub_1C4A0E500(a1, a2, a3, a4);
    sub_1C4A0E6E8(a1, a2, a3, a4);
    sub_1C4A0E8D0(a1, a2, a3, a4);
    sub_1C4A0EAB8(a1, a2, a3, a4);
    sub_1C4A0ECA0(a1, a2, a3, a4);
    sub_1C4A0EE88(a1, a2, a3, a4);
    sub_1C4A0F070(a1, a2, a3, a4);
    sub_1C4A0F258(a1, a2, a3, a4);
    sub_1C4A0F440(a1, a2, a3, a4);
    sub_1C4A0F628(a1, a2, a3, a4);
    sub_1C4A0F810(a1, a2, a3, a4);
    sub_1C4A0F9F8(a1, a2, a3, a4);
    sub_1C4A0FBE0(a1, a2, a3, a4);
    sub_1C4A0FDC8(a1, a2, a3, a4);
    sub_1C4A0FFB0(a1, a2, a3, a4);
    sub_1C4A10198(a1, a2, a3, a4);
    sub_1C4A10380(a1, a2, a3, a4);
    sub_1C4A10568(a1, a2, a3, a4);
    sub_1C4A10750(a1, a2, a3, a4);
    sub_1C4A10938(a1, a2, a3, a4);
    sub_1C4A10B20(a1, a2, a3, a4);
    sub_1C4A10D08(a1, a2, a3, a4);
    sub_1C4A10EF0(a1, a2, a3, a4);
    sub_1C4A110D8(a1, a2, a3, a4);
    sub_1C4A112C0(a1, a2, a3, a4);
    sub_1C4A114A8(a1, a2, a3, a4);
    return sub_1C4A11690(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_1C4A0DB78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0C1880, &unk_1C4F44880);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for LongitudinalEventData.MotionState(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__motionState;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0C1880, &unk_1C4F44880);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0C1880, &unk_1C4F44880);
  }

  sub_1C4A26040();
  sub_1C4A24734(&qword_1EC0C16D8, type metadata accessor for LongitudinalEventData.MotionState, &unk_1C4F442A0);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A0DD60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0C1870, &qword_1C4F44870);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for LongitudinalEventData.InferredMode(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__inferredMode;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0C1870, &qword_1C4F44870);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0C1870, &qword_1C4F44870);
  }

  sub_1C4A26040();
  sub_1C4A24734(&qword_1EC0C1658, type metadata accessor for LongitudinalEventData.InferredMode, &unk_1C4F43D00);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A0DF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0C1860, &qword_1C4F44860);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for LongitudinalEventData.LocalAppLaunch(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__localAppLaunch;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0C1860, &qword_1C4F44860);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0C1860, &qword_1C4F44860);
  }

  sub_1C4A26040();
  sub_1C4A24734(&qword_1EC0C1618, type metadata accessor for LongitudinalEventData.LocalAppLaunch, &unk_1C4F43A30);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A0E130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0C1850, &qword_1C4F44850);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for LongitudinalEventData.LocalAppIntent(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__localAppIntent;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0C1850, &qword_1C4F44850);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0C1850, &qword_1C4F44850);
  }

  sub_1C4A26040();
  sub_1C4A24734(&qword_1EC0C15F8, type metadata accessor for LongitudinalEventData.LocalAppIntent, &unk_1C4F438C8);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A0E318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__remoteAppCategory;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4A26040();
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A0E500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0C1840, &unk_1C4F44838);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for LongitudinalEventData.Wifi(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__wifi;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0C1840, &unk_1C4F44838);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0C1840, &unk_1C4F44838);
  }

  sub_1C4A26040();
  sub_1C4A24734(&qword_1EC0C1678, type metadata accessor for LongitudinalEventData.Wifi, &unk_1C4F43E68);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A0E6E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__deviceUnlocked;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4A26040();
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A0E8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__deviceBacklightOn;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4A26040();
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A0EAB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0C1830, &qword_1C4F44828);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for LongitudinalEventData.VirtualInteractions(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__virtualInteractions;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0C1830, &qword_1C4F44828);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0C1830, &qword_1C4F44828);
  }

  sub_1C4A26040();
  sub_1C4A24734(&qword_1EC0C1578, type metadata accessor for LongitudinalEventData.VirtualInteractions, &unk_1C4F43328);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A0ECA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__phoneCharging;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4A26040();
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A0EE88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0C1820, &qword_1C4F44818);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for LongitudinalEventData.AmbientLight(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__ambientLight;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0C1820, &qword_1C4F44818);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0C1820, &qword_1C4F44818);
  }

  sub_1C4A26040();
  sub_1C4A24734(&qword_1EC0C1538, type metadata accessor for LongitudinalEventData.AmbientLight, &unk_1C4F43058);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A0F070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0C1810, &qword_1C4F44808);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for LongitudinalEventData.LocationVisit(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__locationVisit;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0C1810, &qword_1C4F44808);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0C1810, &qword_1C4F44808);
  }

  sub_1C4A26040();
  sub_1C4A24734(&qword_1EC0C15B8, type metadata accessor for LongitudinalEventData.LocationVisit, &unk_1C4F435F8);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A0F258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0C1800, &qword_1C4F447F8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for LongitudinalEventData.UserComputedFocusMode(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__userComputedFocusMode;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0C1800, &qword_1C4F447F8);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0C1800, &qword_1C4F447F8);
  }

  sub_1C4A26040();
  sub_1C4A24734(&qword_1EC0C1638, type metadata accessor for LongitudinalEventData.UserComputedFocusMode, &unk_1C4F43B98);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A0F440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0C17F0, &qword_1C4F447E8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for LongitudinalEventData.NowPlayingState(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__nowPlayingState;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0C17F0, &qword_1C4F447E8);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0C17F0, &qword_1C4F447E8);
  }

  sub_1C4A26040();
  sub_1C4A24734(&qword_1EC0C1558, type metadata accessor for LongitudinalEventData.NowPlayingState, &unk_1C4F431C0);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A0F628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0C17E0, &qword_1C4F447D8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for LongitudinalEventData.Wallet(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__wallet;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0C17E0, &qword_1C4F447D8);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0C17E0, &qword_1C4F447D8);
  }

  sub_1C4A26040();
  sub_1C4A24734(&qword_1EC0C15D8, type metadata accessor for LongitudinalEventData.Wallet, &unk_1C4F43760);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A0F810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__cdInBedDetected;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4A26040();
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A0F9F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0C17D0, &qword_1C4F447C8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for LongitudinalEventData.Carplay(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__carplay;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0C17D0, &qword_1C4F447C8);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0C17D0, &qword_1C4F447C8);
  }

  sub_1C4A26040();
  sub_1C4A24734(&qword_1EC0C1698, type metadata accessor for LongitudinalEventData.Carplay, &unk_1C4F43FD0);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A0FBE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__alarmType;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4A26040();
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A0FDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__airplaneModeEnabled;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4A26040();
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A0FFB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__eventFoundInAppsCategory;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4A26040();
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A10198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0C17C0, &qword_1C4F447B8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for LongitudinalEventData.SemanticLocation(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__semanticLocation;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0C17C0, &qword_1C4F447B8);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0C17C0, &qword_1C4F447B8);
  }

  sub_1C4A26040();
  sub_1C4A24734(&qword_1EC0C1598, type metadata accessor for LongitudinalEventData.SemanticLocation, &unk_1C4F43490);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A10380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0C17B0, &qword_1C4F447A8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for LongitudinalEventData.Bluetooth(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__bluetooth;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0C17B0, &qword_1C4F447A8);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0C17B0, &qword_1C4F447A8);
  }

  sub_1C4A26040();
  sub_1C4A24734(&qword_1EC0C14D8, type metadata accessor for LongitudinalEventData.Bluetooth, &unk_1C4F42C20);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A10568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__lowPowerMode;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4A26040();
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A10750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0C17A0, &qword_1C4F44798);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for LongitudinalEventData.Microlocation(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__microlocation;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0C17A0, &qword_1C4F44798);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0C17A0, &qword_1C4F44798);
  }

  sub_1C4A26040();
  sub_1C4A24734(&qword_1EC0C14F8, type metadata accessor for LongitudinalEventData.Microlocation, &unk_1C4F42D88);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A10938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0C1790, &qword_1C4F44788);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for LongitudinalEventData.Calendar(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__calendar;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0C1790, &qword_1C4F44788);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0C1790, &qword_1C4F44788);
  }

  sub_1C4A26040();
  sub_1C4A24734(&qword_1EC0C1518, type metadata accessor for LongitudinalEventData.Calendar, &unk_1C4F42EF0);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A10B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__systemSpaceInteraction;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4A26040();
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A10D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0C1780, &qword_1C4F44778);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for LongitudinalEventData.Airplay(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__airplay;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0C1780, &qword_1C4F44778);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0C1780, &qword_1C4F44778);
  }

  sub_1C4A26040();
  sub_1C4A24734(&qword_1EC0C16B8, type metadata accessor for LongitudinalEventData.Airplay, &unk_1C4F44138);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A10EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__homekitAccessoryID;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4A26040();
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A110D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__geoHash;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4A26040();
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A112C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__unigrams;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4A26040();
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A114A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0C1770, &qword_1C4F44768);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for LongitudinalEventData.LinkActions(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__linkActions;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0C1770, &qword_1C4F44768);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0C1770, &qword_1C4F44768);
  }

  sub_1C4A26040();
  sub_1C4A24734(&qword_1EC0C1498, type metadata accessor for LongitudinalEventData.LinkActions, &unk_1C4F42950);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A11690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0C1760, &qword_1C4F44758);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for LongitudinalEventData.Widget(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__widget;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0C1760, &qword_1C4F44758);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0C1760, &qword_1C4F44758);
  }

  sub_1C4A26040();
  sub_1C4A24734(&qword_1EC0C14B8, type metadata accessor for LongitudinalEventData.Widget, &unk_1C4F42AB8);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A11878()
{
  v1 = sub_1C43FECE0();
  type metadata accessor for LongitudinalEventData(v1);
  sub_1C44183FC();
  if (!v2)
  {

    sub_1C4404084();
    sub_1C4A11920();
    sub_1C44BBCB8();

    if ((v0 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1C4F00328();
  sub_1C442CF50();
  v5 = sub_1C4A24734(v3, v4, MEMORY[0x1E69AAC10]);
  return sub_1C4404EC0(v5) & 1;
}

void sub_1C4A11920()
{
  sub_1C43FBD3C();
  v1 = v0;
  v3 = v2;
  v918 = type metadata accessor for LongitudinalEventData.Widget(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FD2D8();
  v919 = v5;
  v915 = sub_1C456902C(&qword_1EC0C1758, &qword_1C4F44750);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBC74();
  v920 = v7;
  v8 = sub_1C456902C(&qword_1EC0C1760, &qword_1C4F44758);
  v9 = sub_1C43FBD18(v8);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBFDC();
  v917 = v10;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FD230();
  v916 = v12;
  v13 = sub_1C43FBE44();
  v910 = type metadata accessor for LongitudinalEventData.LinkActions(v13);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FD2D8();
  v913 = v15;
  v909 = sub_1C456902C(&qword_1EC0C1768, &qword_1C4F44760);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBC74();
  v914 = v17;
  v18 = sub_1C456902C(&qword_1EC0C1770, &qword_1C4F44768);
  v19 = sub_1C43FBD18(v18);
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBFDC();
  v912 = v20;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FD230();
  v911 = v22;
  v23 = sub_1C43FBE44();
  v906 = type metadata accessor for LongitudinalEventData.Airplay(v23);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FD2D8();
  v907 = v25;
  v903 = sub_1C456902C(&qword_1EC0C1778, &qword_1C4F44770);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBC74();
  v908 = v27;
  v28 = sub_1C456902C(&qword_1EC0C1780, &qword_1C4F44778);
  v29 = sub_1C43FBD18(v28);
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBFDC();
  v905 = v30;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FD230();
  v904 = v32;
  v33 = sub_1C43FBE44();
  v897 = type metadata accessor for LongitudinalEventData.Calendar(v33);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FD2D8();
  v901 = v35;
  v896 = sub_1C456902C(&qword_1EC0C1788, &qword_1C4F44780);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBC74();
  v902 = v37;
  v38 = sub_1C456902C(&qword_1EC0C1790, &qword_1C4F44788);
  v39 = sub_1C43FBD18(v38);
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FBFDC();
  v900 = v40;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FD230();
  v899 = v42;
  v43 = sub_1C43FBE44();
  v890 = type metadata accessor for LongitudinalEventData.Microlocation(v43);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FD2D8();
  v891 = v45;
  v884 = sub_1C456902C(&qword_1EC0C1798, &qword_1C4F44790);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v46);
  sub_1C43FBC74();
  v892 = v47;
  v48 = sub_1C456902C(&qword_1EC0C17A0, &qword_1C4F44798);
  v49 = sub_1C43FBD18(v48);
  MEMORY[0x1EEE9AC00](v49);
  sub_1C43FBFDC();
  v889 = v50;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v51);
  sub_1C43FD230();
  v888 = v52;
  v53 = sub_1C43FBE44();
  v876 = type metadata accessor for LongitudinalEventData.Bluetooth(v53);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v54);
  sub_1C43FD2D8();
  v879 = v55;
  v875 = sub_1C456902C(&qword_1EC0C17A8, &qword_1C4F447A0);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v56);
  sub_1C43FBC74();
  v881 = v57;
  v58 = sub_1C456902C(&qword_1EC0C17B0, &qword_1C4F447A8);
  v59 = sub_1C43FBD18(v58);
  MEMORY[0x1EEE9AC00](v59);
  sub_1C43FBFDC();
  v878 = v60;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v61);
  sub_1C43FD230();
  v877 = v62;
  v63 = sub_1C43FBE44();
  v868 = type metadata accessor for LongitudinalEventData.SemanticLocation(v63);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v64);
  sub_1C43FD2D8();
  v871 = v65;
  v867 = sub_1C456902C(&qword_1EC0C17B8, &qword_1C4F447B0);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v66);
  sub_1C43FBC74();
  v872 = v67;
  v68 = sub_1C456902C(&qword_1EC0C17C0, &qword_1C4F447B8);
  v69 = sub_1C43FBD18(v68);
  MEMORY[0x1EEE9AC00](v69);
  sub_1C43FBFDC();
  v870 = v70;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v71);
  sub_1C43FD230();
  v869 = v72;
  v73 = sub_1C43FBE44();
  v923 = type metadata accessor for LongitudinalEventData.Carplay(v73);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v74);
  sub_1C43FD2D8();
  v863 = v75;
  v921 = sub_1C456902C(&qword_1EC0C17C8, &qword_1C4F447C0);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v76);
  sub_1C43FBC74();
  v924 = v77;
  v78 = sub_1C456902C(&qword_1EC0C17D0, &qword_1C4F447C8);
  v79 = sub_1C43FBD18(v78);
  MEMORY[0x1EEE9AC00](v79);
  sub_1C43FBFDC();
  v862 = v80;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v81);
  sub_1C43FD230();
  v922 = v82;
  v83 = sub_1C43FBE44();
  v933 = type metadata accessor for LongitudinalEventData.Wallet(v83);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v84);
  sub_1C43FD2D8();
  v925 = v85;
  v930 = sub_1C456902C(&qword_1EC0C17D8, &qword_1C4F447D0);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v86);
  sub_1C43FBC74();
  v937 = v87;
  v88 = sub_1C456902C(&qword_1EC0C17E0, &qword_1C4F447D8);
  v89 = sub_1C43FBD18(v88);
  MEMORY[0x1EEE9AC00](v89);
  sub_1C43FBFDC();
  v931 = v90;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v91);
  sub_1C43FD230();
  v934 = v92;
  v93 = sub_1C43FBE44();
  v939 = type metadata accessor for LongitudinalEventData.NowPlayingState(v93);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v94);
  sub_1C43FD2D8();
  v927 = v95;
  v935 = sub_1C456902C(&qword_1EC0C17E8, &qword_1C4F447E0);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v96);
  sub_1C43FBC74();
  v942 = v97;
  v98 = sub_1C456902C(&qword_1EC0C17F0, &qword_1C4F447E8);
  v99 = sub_1C43FBD18(v98);
  MEMORY[0x1EEE9AC00](v99);
  sub_1C43FBFDC();
  v936 = v100;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v101);
  sub_1C43FD230();
  v938 = v102;
  v103 = sub_1C43FBE44();
  v944 = type metadata accessor for LongitudinalEventData.UserComputedFocusMode(v103);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v104);
  sub_1C43FD2D8();
  v932 = v105;
  v940 = sub_1C456902C(&qword_1EC0C17F8, &qword_1C4F447F0);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v106);
  sub_1C43FBC74();
  v947 = v107;
  v108 = sub_1C456902C(&qword_1EC0C1800, &qword_1C4F447F8);
  v109 = sub_1C43FBD18(v108);
  MEMORY[0x1EEE9AC00](v109);
  sub_1C43FBFDC();
  v941 = v110;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v111);
  sub_1C43FD230();
  v945 = v112;
  v113 = sub_1C43FBE44();
  v951 = type metadata accessor for LongitudinalEventData.LocationVisit(v113);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v114);
  sub_1C43FD2D8();
  v943 = v115;
  v946 = sub_1C456902C(&qword_1EC0C1808, &qword_1C4F44800);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v116);
  sub_1C43FBC74();
  v953 = v117;
  v118 = sub_1C456902C(&qword_1EC0C1810, &qword_1C4F44808);
  v119 = sub_1C43FBD18(v118);
  MEMORY[0x1EEE9AC00](v119);
  sub_1C43FBFDC();
  v948 = v120;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v121);
  sub_1C43FD230();
  v950 = v122;
  v123 = sub_1C43FBE44();
  v958 = type metadata accessor for LongitudinalEventData.AmbientLight(v123);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v124);
  sub_1C43FD2D8();
  v949 = v125;
  v952 = sub_1C456902C(&qword_1EC0C1818, &qword_1C4F44810);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v126);
  sub_1C43FBC74();
  v960 = v127;
  v128 = sub_1C456902C(&qword_1EC0C1820, &qword_1C4F44818);
  v129 = sub_1C43FBD18(v128);
  MEMORY[0x1EEE9AC00](v129);
  sub_1C43FBFDC();
  v954 = v130;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v131);
  sub_1C43FD230();
  v957 = v132;
  v133 = sub_1C43FBE44();
  v964 = type metadata accessor for LongitudinalEventData.VirtualInteractions(v133);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v134);
  sub_1C43FD2D8();
  v956 = v135;
  v963 = sub_1C456902C(&qword_1EC0C1828, &qword_1C4F44820);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v136);
  sub_1C43FBC74();
  v965 = v137;
  v138 = sub_1C456902C(&qword_1EC0C1830, &qword_1C4F44828);
  v139 = sub_1C43FBD18(v138);
  MEMORY[0x1EEE9AC00](v139);
  sub_1C43FBFDC();
  v962 = v140;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v141);
  sub_1C43FD230();
  v969 = v142;
  v143 = sub_1C43FBE44();
  v977 = type metadata accessor for LongitudinalEventData.Wifi(v143);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v144);
  sub_1C43FD2D8();
  v971 = v145;
  v976 = sub_1C456902C(&qword_1EC0C1838, &qword_1C4F44830);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v146);
  sub_1C43FBC74();
  v978 = v147;
  v148 = sub_1C456902C(&qword_1EC0C1840, &unk_1C4F44838);
  v149 = sub_1C43FBD18(v148);
  MEMORY[0x1EEE9AC00](v149);
  sub_1C43FBFDC();
  v973 = v150;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v151);
  sub_1C43FD230();
  v982 = v152;
  v153 = sub_1C43FBE44();
  v984 = type metadata accessor for FeatureValue(v153);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v154);
  sub_1C43FD2D8();
  v975 = v155;
  v983 = sub_1C456902C(&qword_1EC0BB6C0, &unk_1C4F20AE0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v156);
  sub_1C43FBFDC();
  v898 = v157;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v158);
  sub_1C43FBF38();
  v894 = v159;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v160);
  sub_1C43FBF38();
  v886 = v161;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v162);
  sub_1C43FBF38();
  v880 = v163;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v164);
  sub_1C43FBF38();
  v866 = v165;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v166);
  sub_1C43FBF38();
  v861 = v167;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v168);
  sub_1C43FBF38();
  v860 = v169;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v170);
  sub_1C43FBF38();
  v857 = v171;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v172);
  sub_1C43FBF38();
  v929 = v173;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v174);
  sub_1C43FBF38();
  v959 = v175;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v176);
  sub_1C43FBF38();
  v968 = v177;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v178);
  sub_1C43FBF38();
  v972 = v179;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v180);
  sub_1C43FD230();
  v981 = v181;
  v182 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v183 = sub_1C43FBD18(v182);
  MEMORY[0x1EEE9AC00](v183);
  sub_1C43FBFDC();
  v895 = v184;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v185);
  sub_1C43FBF38();
  v893 = v186;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v187);
  sub_1C43FBF38();
  v887 = v188;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v189);
  sub_1C43FBF38();
  v885 = v190;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v191);
  sub_1C43FBF38();
  v883 = v192;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v193);
  sub_1C43FBF38();
  v882 = v194;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v195);
  sub_1C43FBF38();
  v874 = v196;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v197);
  sub_1C43FBF38();
  v873 = v198;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v199);
  sub_1C43FBF38();
  v865 = v200;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v201);
  sub_1C43FBF38();
  v864 = v202;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v203);
  sub_1C43FBF38();
  v859 = v204;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v205);
  sub_1C43FBF38();
  v858 = v206;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v207);
  sub_1C43FBF38();
  v856 = v208;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v209);
  sub_1C43FBF38();
  v855 = v210;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v211);
  sub_1C43FBF38();
  v854 = v212;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v213);
  sub_1C43FBF38();
  v853 = v214;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v215);
  sub_1C43FBF38();
  v926 = v216;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v217);
  sub_1C43FBF38();
  v928 = v218;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v219);
  sub_1C43FBF38();
  v955 = v220;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v221);
  sub_1C43FBF38();
  v961 = v222;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v223);
  sub_1C43FBF38();
  v966 = v224;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v225);
  sub_1C43FBF38();
  v967 = v226;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v227);
  sub_1C43FBF38();
  v970 = v228;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v229);
  sub_1C43FBF38();
  v974 = v230;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v231);
  sub_1C43FBF38();
  v979 = v232;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v233);
  sub_1C43FD230();
  v986 = v234;
  v235 = sub_1C43FBE44();
  v989 = type metadata accessor for LongitudinalEventData.LocalAppIntent(v235);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v236);
  sub_1C43FD2D8();
  v980 = v237;
  v988 = sub_1C456902C(&qword_1EC0C1848, &qword_1C4F44848);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v238);
  sub_1C43FBC74();
  v990 = v239;
  v240 = sub_1C456902C(&qword_1EC0C1850, &qword_1C4F44850);
  v241 = sub_1C43FBD18(v240);
  MEMORY[0x1EEE9AC00](v241);
  sub_1C43FBFDC();
  v985 = v242;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v243);
  sub_1C43FD230();
  v992 = v244;
  v245 = sub_1C43FBE44();
  v995 = type metadata accessor for LongitudinalEventData.LocalAppLaunch(v245);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v246);
  sub_1C43FD2D8();
  v987 = v247;
  v994 = sub_1C456902C(&qword_1EC0C1858, &qword_1C4F44858);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v248);
  sub_1C43FBC74();
  v996 = v249;
  v250 = sub_1C456902C(&qword_1EC0C1860, &qword_1C4F44860);
  v251 = sub_1C43FBD18(v250);
  MEMORY[0x1EEE9AC00](v251);
  sub_1C43FBFDC();
  v991 = v252;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v253);
  sub_1C43FD230();
  v1003 = v254;
  v255 = sub_1C43FBE44();
  v1001 = type metadata accessor for LongitudinalEventData.InferredMode(v255);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v256);
  sub_1C43FD2D8();
  v993 = v257;
  v999 = sub_1C456902C(&qword_1EC0C1868, &qword_1C4F44868);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v258);
  sub_1C43FBC74();
  v1002 = v259;
  v260 = sub_1C456902C(&qword_1EC0C1870, &qword_1C4F44870);
  v261 = sub_1C43FBD18(v260);
  MEMORY[0x1EEE9AC00](v261);
  sub_1C43FBFDC();
  v997 = v262;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v263);
  sub_1C43FD230();
  v1000 = v264;
  v265 = sub_1C43FBE44();
  v1005 = type metadata accessor for LongitudinalEventData.MotionState(v265);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v266);
  sub_1C43FD2D8();
  v998 = v267;
  v268 = sub_1C456902C(&qword_1EC0C1878, &qword_1C4F44878) - 8;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v269);
  v271 = &v853 - v270;
  v272 = sub_1C456902C(&qword_1EC0C1880, &unk_1C4F44880);
  v273 = sub_1C43FBD18(v272);
  MEMORY[0x1EEE9AC00](v273);
  sub_1C43FBFDC();
  v1004 = v274;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v275);
  v277 = &v853 - v276;
  v278 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__motionState;
  sub_1C440D164(v3 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__motionState, &v1069);
  sub_1C4460108(v3 + v278, v277, &qword_1EC0C1880, &unk_1C4F44880);
  v279 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__motionState;
  sub_1C440D164(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__motionState, &v1068);
  v280 = *(v268 + 56);
  v281 = sub_1C43FC1C0();
  sub_1C4460108(v281, v282, &qword_1EC0C1880, &unk_1C4F44880);
  v283 = v1005;
  sub_1C4460108(v1 + v279, &v271[v280], &qword_1EC0C1880, &unk_1C4F44880);
  v284 = sub_1C4401860();
  sub_1C440175C(v284, v285, v283);
  if (v287)
  {

    sub_1C4420C3C(v277, &qword_1EC0C1880, &unk_1C4F44880);
    sub_1C440175C(&v271[v280], 1, v283);
    v286 = v1;
    if (v287)
    {
      sub_1C4420C3C(v271, &qword_1EC0C1880, &unk_1C4F44880);
      goto LABEL_12;
    }

LABEL_9:
    v288 = &qword_1EC0C1878;
    v289 = &qword_1C4F44878;
LABEL_10:
    v290 = v271;
LABEL_22:
    sub_1C4420C3C(v290, v288, v289);
    goto LABEL_23;
  }

  v286 = v1;
  sub_1C4460108(v271, v1004, &qword_1EC0C1880, &unk_1C4F44880);
  sub_1C440175C(&v271[v280], 1, v283);
  if (v287)
  {

    sub_1C4420C3C(v277, &qword_1EC0C1880, &unk_1C4F44880);
    sub_1C4A25FEC();
    goto LABEL_9;
  }

  sub_1C4A26040();

  sub_1C43FD018();
  sub_1C4A21F9C();
  v292 = v291;
  sub_1C44158DC();
  sub_1C4A25FEC();
  v293 = sub_1C4410428();
  sub_1C4420C3C(v293, v294, &unk_1C4F44880);
  sub_1C4A25FEC();
  sub_1C4420C3C(v271, &qword_1EC0C1880, &unk_1C4F44880);
  if ((v292 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_12:
  sub_1C440D164(v3 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__inferredMode, &v1067);
  v295 = v1000;
  sub_1C440BBC0();
  sub_1C4460108(v296, v297, v298, v299);
  sub_1C440D164(v286 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__inferredMode, &v1066);
  v300 = *(v999 + 48);
  v301 = v1002;
  sub_1C440BBC0();
  sub_1C4460108(v302, v303, v304, v305);
  v306 = sub_1C443FE5C();
  v307 = v301;
  sub_1C4460108(v306, v308, v309, v310);
  v311 = sub_1C4401860();
  sub_1C442FF8C(v311, v312);
  if (v287)
  {
    sub_1C4420C3C(v295, &qword_1EC0C1870, &qword_1C4F44870);
    sub_1C4406BE8(v301 + v300);
    v313 = v1003;
    if (v287)
    {
      sub_1C4420C3C(v301, &qword_1EC0C1870, &qword_1C4F44870);
      goto LABEL_26;
    }

LABEL_20:
    v288 = &qword_1EC0C1868;
    v289 = &qword_1C4F44868;
LABEL_21:
    v290 = v307;
    goto LABEL_22;
  }

  sub_1C4460108(v301, v997, &qword_1EC0C1870, &qword_1C4F44870);
  sub_1C4406BE8(v301 + v300);
  v313 = v1003;
  if (v314)
  {
    sub_1C4420C3C(v295, &qword_1EC0C1870, &qword_1C4F44870);
    sub_1C4A25FEC();
    goto LABEL_20;
  }

  sub_1C4A26040();
  sub_1C43FE99C();
  sub_1C4A21F9C();
  LODWORD(v1005) = v315;
  sub_1C4A25FEC();
  sub_1C4420C3C(v295, &qword_1EC0C1870, &qword_1C4F44870);
  sub_1C44333A0();
  sub_1C4A25FEC();
  v316 = sub_1C4404084();
  sub_1C4420C3C(v316, v317, &qword_1C4F44870);
  if ((v1005 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_26:
  sub_1C440D164(v3 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__localAppLaunch, &v1065);
  sub_1C440BBC0();
  sub_1C4460108(v318, v319, v320, v321);
  sub_1C440D164(v286 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__localAppLaunch, &v1064);
  sub_1C4441784();
  v271 = v996;
  sub_1C440BBC0();
  sub_1C4460108(v322, v323, v324, v325);
  v326 = sub_1C443FE5C();
  sub_1C4460108(v326, v327, v328, v329);
  v330 = sub_1C4401860();
  sub_1C442FF8C(v330, v331);
  if (v287)
  {
    sub_1C4420C3C(v313, &qword_1EC0C1860, &qword_1C4F44860);
    sub_1C4406BE8(&qword_1EC0C1000 + v271);
    if (v287)
    {
      sub_1C4420C3C(v271, &qword_1EC0C1860, &qword_1C4F44860);
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  sub_1C4460108(v271, v991, &qword_1EC0C1860, &qword_1C4F44860);
  sub_1C4406BE8(&qword_1EC0C1000 + v271);
  if (v332)
  {
    sub_1C4420C3C(v313, &qword_1EC0C1860, &qword_1C4F44860);
    sub_1C4A25FEC();
LABEL_34:
    v288 = &qword_1EC0C1858;
    v289 = &qword_1C4F44858;
    goto LABEL_10;
  }

  sub_1C4A26040();
  sub_1C43FE99C();
  sub_1C4A21F9C();
  sub_1C442EC58();
  sub_1C44BBE8C(v313);
  sub_1C4A25FEC();
  sub_1C44BBE8C(v271);
  if ((&qword_1C4F44860 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_36:
  v333 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__localAppIntent;
  sub_1C440D164(v3 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__localAppIntent, &v1063);
  v334 = v992;
  sub_1C4460108(v3 + v333, v992, &qword_1EC0C1850, &qword_1C4F44850);
  v335 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__localAppIntent;
  sub_1C440D164(v286 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__localAppIntent, &v1062);
  v336 = sub_1C4441784();
  v307 = v990;
  sub_1C4460108(v336, v990, &qword_1EC0C1850, &qword_1C4F44850);
  sub_1C4460108(v286 + v335, &qword_1EC0C1000 + v307, &qword_1EC0C1850, &qword_1C4F44850);
  sub_1C442FF8C(v307, 1);
  if (v287)
  {
    sub_1C4420C3C(v334, &qword_1EC0C1850, &qword_1C4F44850);
    sub_1C4406BE8(&qword_1EC0C1000 + v307);
    if (v287)
    {
      sub_1C4420C3C(v307, &qword_1EC0C1850, &qword_1C4F44850);
      goto LABEL_46;
    }

    goto LABEL_44;
  }

  sub_1C4460108(v307, v985, &qword_1EC0C1850, &qword_1C4F44850);
  sub_1C4406BE8(&qword_1EC0C1000 + v307);
  if (v337)
  {
    sub_1C4420C3C(v992, &qword_1EC0C1850, &qword_1C4F44850);
    sub_1C4A25FEC();
LABEL_44:
    v288 = &qword_1EC0C1848;
    v289 = &qword_1C4F44848;
    goto LABEL_21;
  }

  sub_1C4A26040();
  sub_1C43FE99C();
  sub_1C4A21F9C();
  sub_1C442EC58();
  sub_1C4420C3C(v992, &qword_1EC0C1850, &qword_1C4F44850);
  sub_1C44333A0();
  sub_1C4A25FEC();
  v338 = sub_1C440BB4C();
  sub_1C4420C3C(v338, v339, &qword_1C4F44850);
  if ((v307 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_46:
  v340 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__remoteAppCategory;
  sub_1C440D164(v3 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__remoteAppCategory, &v1061);
  v341 = v986;
  sub_1C4460108(v3 + v340, v986, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v342 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__remoteAppCategory;
  sub_1C440D164(v286 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__remoteAppCategory, &v1060);
  v343 = sub_1C4480800();
  v307 = v981;
  sub_1C4460108(v343, v981, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v286 + v342, &qword_1EC0C1000 + v307, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C442FF8C(v307, 1);
  if (v287)
  {
    sub_1C4420C3C(v341, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4406BE8(&qword_1EC0C1000 + v307);
    v344 = v982;
    if (v287)
    {
      sub_1C4420C3C(v307, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_56;
    }

    goto LABEL_54;
  }

  sub_1C4460108(v307, v979, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4406BE8(&qword_1EC0C1000 + v307);
  v344 = v982;
  if (v345)
  {
    sub_1C4420C3C(v986, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C44074E0();
    sub_1C4A25FEC();
LABEL_54:
    v288 = &qword_1EC0BB6C0;
    v289 = &unk_1C4F20AE0;
    goto LABEL_21;
  }

  sub_1C43FF434();
  sub_1C4A26040();
  v346 = sub_1C43FE99C();
  sub_1C47E3504(v346, v347);
  sub_1C442EC58();
  sub_1C4420C3C(v986, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C44333A0();
  sub_1C4A25FEC();
  sub_1C4420C3C(v307, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v307 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_56:
  sub_1C440D164(v3 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__wifi, &v1059);
  sub_1C440BBC0();
  sub_1C4460108(v348, v349, v350, v351);
  sub_1C440D164(v286 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__wifi, &v1058);
  v352 = *(v976 + 48);
  v353 = v344;
  v271 = v978;
  sub_1C440BBC0();
  sub_1C4460108(v354, v355, v356, v357);
  v358 = sub_1C443FE5C();
  sub_1C4460108(v358, v359, v360, v361);
  v362 = sub_1C4401860();
  sub_1C442FF8C(v362, v363);
  if (v287)
  {
    sub_1C4420C3C(v353, &qword_1EC0C1840, &unk_1C4F44838);
    sub_1C4406BE8(&v271[v352]);
    if (v287)
    {
      sub_1C4420C3C(v271, &qword_1EC0C1840, &unk_1C4F44838);
      goto LABEL_66;
    }

    goto LABEL_64;
  }

  sub_1C4460108(v271, v973, &qword_1EC0C1840, &unk_1C4F44838);
  sub_1C4406BE8(&v271[v352]);
  if (v364)
  {
    sub_1C4420C3C(v982, &qword_1EC0C1840, &unk_1C4F44838);
    sub_1C4A25FEC();
LABEL_64:
    v288 = &qword_1EC0C1838;
    v289 = &qword_1C4F44830;
    goto LABEL_10;
  }

  sub_1C4A26040();
  sub_1C4A21F9C();
  sub_1C442EC58();
  sub_1C44BBE8C(v982);
  sub_1C4A25FEC();
  sub_1C44BBE8C(v271);
  if ((&unk_1C4F44838 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_66:
  sub_1C440D164(v3 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__deviceUnlocked, &v1057);
  v365 = v974;
  sub_1C440BBC0();
  sub_1C4460108(v366, v367, v368, v369);
  sub_1C440D164(v286 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__deviceUnlocked, &v1056);
  v370 = *(v983 + 48);
  v271 = v972;
  sub_1C440BBC0();
  sub_1C4460108(v371, v372, v373, v374);
  sub_1C440BBC0();
  sub_1C4460108(v375, v376, v377, v378);
  v379 = sub_1C4401860();
  sub_1C442FF8C(v379, v380);
  if (v287)
  {
    sub_1C4420C3C(v365, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4406BE8(&v271[v370]);
    if (!v287)
    {
      goto LABEL_85;
    }

    sub_1C4420C3C(v271, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  else
  {
    sub_1C4460108(v271, v970, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4406BE8(&v271[v370]);
    if (v381)
    {
      v382 = v974;
      goto LABEL_83;
    }

    sub_1C43FF434();
    sub_1C4A26040();
    v383 = sub_1C43FE99C();
    sub_1C47E3504(v383, v384);
    sub_1C442EC58();
    sub_1C4420C3C(v974, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C44333A0();
    sub_1C4A25FEC();
    v385 = sub_1C440BB4C();
    sub_1C4420C3C(v385, v386, &unk_1C4F2E1B0);
    if ((&unk_1C4F2E1B0 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  sub_1C440D164(v3 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__deviceBacklightOn, &v1055);
  v387 = v967;
  sub_1C440BBC0();
  sub_1C4460108(v388, v389, v390, v391);
  sub_1C440D164(v286 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__deviceBacklightOn, &v1054);
  sub_1C4480800();
  v271 = v968;
  sub_1C440BBC0();
  sub_1C4460108(v392, v393, v394, v395);
  v396 = sub_1C443FE5C();
  sub_1C4460108(v396, v397, v398, v399);
  v400 = sub_1C4401860();
  sub_1C442FF8C(v400, v401);
  if (!v287)
  {
    sub_1C4460108(v271, v966, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4406BE8(&qword_1EC0C1000 + v271);
    v402 = v969;
    if (!v403)
    {
      sub_1C43FF434();
      sub_1C4A26040();
      v404 = sub_1C43FE99C();
      sub_1C47E3504(v404, v405);
      sub_1C442EC58();
      sub_1C44BBE8C(v387);
      sub_1C4A25FEC();
      sub_1C44BBE8C(v271);
      if ((&unk_1C4F2E1B0 & 1) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_87;
    }

    v382 = v387;
LABEL_83:
    sub_1C4420C3C(v382, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C44074E0();
LABEL_84:
    sub_1C4A25FEC();
LABEL_85:
    v288 = &qword_1EC0BB6C0;
    v289 = &unk_1C4F20AE0;
    goto LABEL_10;
  }

  sub_1C4420C3C(v387, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4406BE8(&qword_1EC0C1000 + v271);
  v402 = v969;
  if (!v287)
  {
    goto LABEL_85;
  }

  sub_1C4420C3C(v271, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
LABEL_87:
  sub_1C440D164(v3 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__virtualInteractions, &v1053);
  sub_1C440BBC0();
  sub_1C4460108(v406, v407, v408, v409);
  v410 = OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__virtualInteractions;
  sub_1C440D164(v286 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__virtualInteractions, &v1052);
  sub_1C4441784();
  v411 = v965;
  sub_1C440BBC0();
  sub_1C4460108(v412, v413, v414, v415);
  v416 = v411;
  sub_1C4460108(v286 + v410, &qword_1EC0C1000 + v411, &qword_1EC0C1830, &qword_1C4F44828);
  v417 = sub_1C4401860();
  v418 = v964;
  sub_1C440175C(v417, v419, v964);
  if (v287)
  {
    sub_1C4420C3C(v402, &qword_1EC0C1830, &qword_1C4F44828);
    sub_1C440A6F0(&qword_1EC0C1000 + v411);
    if (v287)
    {
      sub_1C4420C3C(v411, &qword_1EC0C1830, &qword_1C4F44828);
      v420 = v961;
      goto LABEL_99;
    }

LABEL_95:
    v288 = &qword_1EC0C1828;
    v289 = &qword_1C4F44820;
    v290 = v416;
    goto LABEL_22;
  }

  v421 = v411;
  v422 = v962;
  sub_1C4460108(v421, v962, &qword_1EC0C1830, &qword_1C4F44828);
  sub_1C440A6F0(&qword_1EC0C1000 + v416);
  if (v423)
  {
    sub_1C4420C3C(v402, &qword_1EC0C1830, &qword_1C4F44828);
    sub_1C4A25FEC();
    goto LABEL_95;
  }

  sub_1C441EE00();
  v424 = v956;
  sub_1C4A26040();
  if (*(v422 + *(v418 + 20)) != *(v424 + *(v418 + 20)))
  {

    v425 = sub_1C4410428();
    sub_1C4A1F9A0(v425, v426, v427, v428, v429, v430, v431, v432, v853, v854, v855, v856, v857, v858, v859, v860, v861, v862, v863, v864);
    sub_1C4429098();

    if ((&qword_1EC0C1000 & 1) == 0)
    {
      sub_1C4A25FEC();
      sub_1C4426A5C();
      sub_1C4420C3C(v472, v473, v474);
      sub_1C4A25FEC();
      sub_1C4426A5C();
      goto LABEL_22;
    }
  }

  sub_1C4F00328();
  sub_1C442CF50();
  v435 = sub_1C4A24734(v433, v434, MEMORY[0x1E69AAC10]);
  v436 = sub_1C442A74C(v435);
  sub_1C4A25FEC();
  sub_1C44BBE8C(v402);
  sub_1C4A25FEC();
  sub_1C44BBE8C(v965);
  v420 = v961;
  if ((v436 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_99:
  sub_1C440D164(v3 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__phoneCharging, &v1051);
  sub_1C440BBC0();
  sub_1C4460108(v437, v438, v439, v440);
  sub_1C440D164(v286 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__phoneCharging, &v1050);
  sub_1C4480800();
  v271 = v959;
  sub_1C440BBC0();
  sub_1C4460108(v441, v442, v443, v444);
  v445 = sub_1C443FE5C();
  sub_1C4460108(v445, v446, v447, v448);
  v449 = sub_1C4401860();
  sub_1C442FF8C(v449, v450);
  if (v287)
  {
    sub_1C4420C3C(v420, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4406BE8(&qword_1EC0C1000 + v271);
    if (v287)
    {
      sub_1C4420C3C(v271, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_108;
    }

    goto LABEL_85;
  }

  v451 = v955;
  sub_1C4460108(v271, v955, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4406BE8(&qword_1EC0C1000 + v271);
  if (v452)
  {
    sub_1C4420C3C(v420, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C44074E0();
    goto LABEL_84;
  }

  sub_1C43FF434();
  v453 = v975;
  sub_1C4A26040();
  sub_1C47E3504(v451, v453);
  sub_1C442EC58();
  sub_1C44BBE8C(v420);
  sub_1C4A25FEC();
  sub_1C44BBE8C(v271);
  if ((&unk_1C4F2E1B0 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_108:
  sub_1C440D164(v3 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__ambientLight, &v1049);
  v454 = v3;
  sub_1C440BBC0();
  sub_1C4460108(v455, v456, v457, v458);
  sub_1C440D164(v286 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__ambientLight, &v1048);
  v459 = *(v952 + 48);
  v460 = v960;
  sub_1C440BBC0();
  sub_1C4460108(v461, v462, v463, v464);
  v465 = v286;
  sub_1C440BBC0();
  sub_1C4460108(v466, v467, v468, v469);
  sub_1C440175C(v460, 1, v958);
  if (v287)
  {
    sub_1C4420C3C(v957, &qword_1EC0C1820, &qword_1C4F44818);
    v470 = sub_1C441AFC8(v960);
    sub_1C440175C(v470, v471, v958);
    if (v287)
    {
      sub_1C4420C3C(v960, &qword_1EC0C1820, &qword_1C4F44818);
      goto LABEL_121;
    }

LABEL_117:
    v478 = &qword_1EC0C1818;
    v479 = &qword_1C4F44810;
    v480 = v960;
LABEL_150:
    sub_1C4420C3C(v480, v478, v479);
    goto LABEL_23;
  }

  sub_1C4460108(v960, v954, &qword_1EC0C1820, &qword_1C4F44818);
  v475 = sub_1C44691E8();
  sub_1C440175C(v475, v476, v958);
  if (v477)
  {
    sub_1C4420C3C(v957, &qword_1EC0C1820, &qword_1C4F44818);
    sub_1C4A25FEC();
    goto LABEL_117;
  }

  sub_1C4404588();
  sub_1C4A26040();
  sub_1C4460314();
  if (!v481)
  {

    v482 = sub_1C4410428();
    sub_1C4A1F9A0(v482, v483, v484, v485, v486, v487, v488, v489, v853, v854, v855, v856, v857, v858, v859, v860, v861, v862, v863, v864);
    sub_1C4429098();

    if ((v459 & 1) == 0)
    {
      goto LABEL_149;
    }
  }

  sub_1C4F00328();
  sub_1C442CF50();
  sub_1C4A24734(v490, v491, MEMORY[0x1E69AAC10]);
  v492 = sub_1C4F010B8();
  sub_1C4A25FEC();
  sub_1C44BBE8C(v957);
  sub_1C441D6D8();
  sub_1C4A25FEC();
  sub_1C44BBE8C(v960);
  if ((v492 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_121:
  sub_1C440D164(v454 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__locationVisit, &v1047);
  sub_1C440BBC0();
  sub_1C4460108(v493, v494, v495, v496);
  sub_1C440D164(v286 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__locationVisit, &v1046);
  sub_1C441DDCC();
  sub_1C440BBC0();
  sub_1C4460108(v497, v498, v499, v500);
  sub_1C442BD28();
  v501 = sub_1C442FFA8();
  sub_1C440175C(v501, v502, v951);
  if (v287)
  {
    sub_1C4420C3C(v950, &qword_1EC0C1810, &qword_1C4F44808);
    v503 = sub_1C441AFC8(v953);
    sub_1C440175C(v503, v504, v951);
    if (v287)
    {
      sub_1C4420C3C(v953, &qword_1EC0C1810, &qword_1C4F44808);
      goto LABEL_133;
    }

    goto LABEL_129;
  }

  sub_1C4460108(v953, v948, &qword_1EC0C1810, &qword_1C4F44808);
  v505 = sub_1C44691E8();
  sub_1C440175C(v505, v506, v951);
  if (v507)
  {
    sub_1C4420C3C(v950, &qword_1EC0C1810, &qword_1C4F44808);
    sub_1C4A25FEC();
LABEL_129:
    v478 = &qword_1EC0C1808;
    v479 = &qword_1C4F44800;
    v480 = v953;
    goto LABEL_150;
  }

  sub_1C4A26040();
  sub_1C4460314();
  if (!v508)
  {

    v509 = sub_1C4410428();
    sub_1C4A23B30(v509, v510, v511, v512, v513, v514, v515, v516, v853, v854, v855, v856, v857, v858, v859, v860, v861, v862, v863, v864);
    sub_1C4429098();

    if ((&qword_1EC0C1000 & 1) == 0)
    {
      goto LABEL_149;
    }
  }

  sub_1C4F00328();
  sub_1C442CF50();
  sub_1C4A24734(v517, v518, MEMORY[0x1E69AAC10]);
  v519 = sub_1C4F010B8();
  sub_1C4A25FEC();
  sub_1C44BBE8C(v950);
  sub_1C441D6D8();
  sub_1C4A25FEC();
  sub_1C44BBE8C(v953);
  if ((v519 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_133:
  sub_1C440D164(v454 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__userComputedFocusMode, &v1045);
  sub_1C440BBC0();
  sub_1C4460108(v520, v521, v522, v523);
  sub_1C440D164(v286 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__userComputedFocusMode, &v1044);
  sub_1C441DDCC();
  sub_1C440BBC0();
  sub_1C4460108(v524, v525, v526, v527);
  sub_1C442BD28();
  v528 = sub_1C442FFA8();
  sub_1C440175C(v528, v529, v944);
  if (v287)
  {
    sub_1C4420C3C(v945, &qword_1EC0C1800, &qword_1C4F447F8);
    v530 = sub_1C441AFC8(v947);
    sub_1C440175C(v530, v531, v944);
    if (v287)
    {
      sub_1C4420C3C(v947, &qword_1EC0C1800, &qword_1C4F447F8);
      goto LABEL_144;
    }

    goto LABEL_142;
  }

  sub_1C4460108(v947, v941, &qword_1EC0C1800, &qword_1C4F447F8);
  v532 = sub_1C44691E8();
  sub_1C440175C(v532, v533, v944);
  if (v534)
  {
    sub_1C4420C3C(v945, &qword_1EC0C1800, &qword_1C4F447F8);
    sub_1C4A25FEC();
LABEL_142:
    v478 = &qword_1EC0C17F8;
    v479 = &qword_1C4F447F0;
    v480 = v947;
    goto LABEL_150;
  }

  sub_1C4A26040();
  sub_1C4401D48();
  sub_1C4A21F9C();
  sub_1C442EC58();
  sub_1C44BBE8C(v945);
  sub_1C449DB10();
  sub_1C4435C2C();
  if ((&qword_1C4F447F8 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_144:
  sub_1C440D164(v454 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__nowPlayingState, &v1043);
  sub_1C440BBC0();
  sub_1C4460108(v535, v536, v537, v538);
  sub_1C440D164(v286 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__nowPlayingState, &v1042);
  sub_1C441DDCC();
  sub_1C440BBC0();
  sub_1C4460108(v539, v540, v541, v542);
  sub_1C442BD28();
  v543 = sub_1C442FFA8();
  sub_1C440175C(v543, v544, v939);
  if (v287)
  {
    sub_1C4420C3C(v938, &qword_1EC0C17F0, &qword_1C4F447E8);
    v545 = sub_1C441AFC8(v942);
    sub_1C440175C(v545, v546, v939);
    if (v287)
    {
      sub_1C4420C3C(v942, &qword_1EC0C17F0, &qword_1C4F447E8);
      goto LABEL_157;
    }

LABEL_155:
    v478 = &qword_1EC0C17E8;
    v479 = &qword_1C4F447E0;
    v480 = v942;
    goto LABEL_150;
  }

  sub_1C4460108(v942, v936, &qword_1EC0C17F0, &qword_1C4F447E8);
  v550 = sub_1C44691E8();
  sub_1C440175C(v550, v551, v939);
  if (v552)
  {
    sub_1C4420C3C(v938, &qword_1EC0C17F0, &qword_1C4F447E8);
    sub_1C4A25FEC();
    goto LABEL_155;
  }

  sub_1C4A26040();
  sub_1C4401D48();
  sub_1C4A21F9C();
  sub_1C442EC58();
  sub_1C44BBE8C(v938);
  sub_1C449DB10();
  sub_1C4435C2C();
  if ((&qword_1C4F447E8 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_157:
  sub_1C440D164(v454 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__wallet, &v1041);
  sub_1C440BBC0();
  sub_1C4460108(v553, v554, v555, v556);
  sub_1C440D164(v286 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__wallet, &v1040);
  sub_1C441DDCC();
  sub_1C440BBC0();
  sub_1C4460108(v557, v558, v559, v560);
  sub_1C442BD28();
  v561 = sub_1C442FFA8();
  sub_1C440175C(v561, v562, v933);
  if (v287)
  {
    sub_1C4420C3C(v934, &qword_1EC0C17E0, &qword_1C4F447D8);
    v563 = sub_1C441AFC8(v937);
    sub_1C440175C(v563, v564, v933);
    if (v287)
    {
      sub_1C4420C3C(v937, &qword_1EC0C17E0, &qword_1C4F447D8);
      goto LABEL_167;
    }

LABEL_165:
    v478 = &qword_1EC0C17D8;
    v479 = &qword_1C4F447D0;
    v480 = v937;
    goto LABEL_150;
  }

  sub_1C4460108(v937, v931, &qword_1EC0C17E0, &qword_1C4F447D8);
  v565 = sub_1C44691E8();
  sub_1C440175C(v565, v566, v933);
  if (v567)
  {
    sub_1C4420C3C(v934, &qword_1EC0C17E0, &qword_1C4F447D8);
    sub_1C4A25FEC();
    goto LABEL_165;
  }

  sub_1C4A26040();
  sub_1C4401D48();
  sub_1C4A21F9C();
  sub_1C442EC58();
  sub_1C44BBE8C(v934);
  sub_1C449DB10();
  sub_1C4435C2C();
  if ((&qword_1C4F447D8 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_167:
  sub_1C440D164(v454 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__cdInBedDetected, &v1039);
  sub_1C440BBC0();
  sub_1C4460108(v568, v569, v570, v571);
  sub_1C440D164(v286 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__cdInBedDetected, &v1038);
  sub_1C44252E0();
  v572 = v929;
  sub_1C440BBC0();
  sub_1C4460108(v573, v574, v575, v576);
  sub_1C442BD28();
  sub_1C44034BC(v572);
  if (v287)
  {
    sub_1C4420C3C(v928, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C44034BC(&qword_1EC0C1000 + v929);
    if (v287)
    {
      sub_1C4420C3C(v929, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_177;
    }

LABEL_175:
    v478 = &qword_1EC0BB6C0;
    v479 = &unk_1C4F20AE0;
    v480 = v929;
    goto LABEL_150;
  }

  v577 = v929;
  sub_1C4460108(v929, v926, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C44034BC(&qword_1EC0C1000 + v577);
  if (v578)
  {
    sub_1C4420C3C(v928, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C44074E0();
    sub_1C4A25FEC();
    goto LABEL_175;
  }

  sub_1C4A26040();
  v579 = sub_1C4401D48();
  sub_1C47E3504(v579, v580);
  sub_1C442EC58();
  sub_1C44BBE8C(v928);
  sub_1C449DB10();
  sub_1C4435C2C();
  if ((&unk_1C4F2E1B0 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_177:
  sub_1C440D164(v454 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__carplay, &v1037);
  sub_1C440BBC0();
  sub_1C4460108(v581, v582, v583, v584);
  sub_1C440D164(v465 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__carplay, &v1036);
  sub_1C441DDCC();
  sub_1C440BBC0();
  sub_1C4460108(v585, v586, v587, v588);
  sub_1C442BD28();
  v589 = sub_1C442FFA8();
  sub_1C440175C(v589, v590, v923);
  if (v287)
  {
    sub_1C4420C3C(v922, &qword_1EC0C17D0, &qword_1C4F447C8);
    v591 = sub_1C441AFC8(v924);
    sub_1C440175C(v591, v592, v923);
    if (v287)
    {
      sub_1C4420C3C(v924, &qword_1EC0C17D0, &qword_1C4F447C8);
      goto LABEL_187;
    }

LABEL_185:
    v478 = &qword_1EC0C17C8;
    v479 = &qword_1C4F447C0;
    v480 = v924;
    goto LABEL_150;
  }

  sub_1C4460108(v924, v862, &qword_1EC0C17D0, &qword_1C4F447C8);
  v593 = sub_1C44691E8();
  sub_1C440175C(v593, v594, v923);
  if (v595)
  {
    sub_1C4420C3C(v922, &qword_1EC0C17D0, &qword_1C4F447C8);
    sub_1C4A25FEC();
    goto LABEL_185;
  }

  sub_1C4A26040();
  sub_1C4401D48();
  sub_1C4A21F9C();
  sub_1C442EC58();
  sub_1C44BBE8C(v922);
  sub_1C449DB10();
  sub_1C4435C2C();
  if ((&qword_1C4F447C8 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_187:
  sub_1C440D164(v454 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__alarmType, &v1035);
  sub_1C440BBC0();
  sub_1C4460108(v596, v597, v598, v599);
  sub_1C440D164(v465 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__alarmType, &v1034);
  sub_1C44252E0();
  v600 = v857;
  sub_1C440BBC0();
  sub_1C4460108(v601, v602, v603, v604);
  sub_1C442BD28();
  sub_1C44034BC(v600);
  if (v287)
  {
    sub_1C4420C3C(v853, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C44034BC(&qword_1EC0C1000 + v857);
    if (v287)
    {
      sub_1C4420C3C(v857, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_197;
    }

LABEL_195:
    v478 = &qword_1EC0BB6C0;
    v479 = &unk_1C4F20AE0;
    v480 = v857;
    goto LABEL_150;
  }

  v605 = v857;
  sub_1C4460108(v857, v854, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C44034BC(&qword_1EC0C1000 + v605);
  if (v606)
  {
    sub_1C4420C3C(v853, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C44074E0();
    sub_1C4A25FEC();
    goto LABEL_195;
  }

  sub_1C4A26040();
  v607 = sub_1C4401D48();
  sub_1C47E3504(v607, v608);
  sub_1C442EC58();
  sub_1C44BBE8C(v853);
  sub_1C449DB10();
  sub_1C4435C2C();
  if ((&unk_1C4F2E1B0 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_197:
  sub_1C440D164(v454 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__airplaneModeEnabled, &v1033);
  sub_1C440BBC0();
  sub_1C4460108(v609, v610, v611, v612);
  sub_1C440D164(v465 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__airplaneModeEnabled, &v1032);
  sub_1C44252E0();
  v613 = v860;
  sub_1C440BBC0();
  sub_1C4460108(v614, v615, v616, v617);
  sub_1C442BD28();
  sub_1C44034BC(v613);
  if (v287)
  {
    sub_1C4420C3C(v855, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C44034BC(&qword_1EC0C1000 + v860);
    if (v287)
    {
      sub_1C4420C3C(v860, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_207;
    }

LABEL_205:
    v478 = &qword_1EC0BB6C0;
    v479 = &unk_1C4F20AE0;
    v480 = v860;
    goto LABEL_150;
  }

  v618 = v860;
  sub_1C4460108(v860, v856, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C44034BC(&qword_1EC0C1000 + v618);
  if (v619)
  {
    sub_1C4420C3C(v855, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C44074E0();
    sub_1C4A25FEC();
    goto LABEL_205;
  }

  sub_1C4A26040();
  v620 = sub_1C4401D48();
  sub_1C47E3504(v620, v621);
  sub_1C442EC58();
  sub_1C44BBE8C(v855);
  sub_1C449DB10();
  sub_1C4435C2C();
  if ((&unk_1C4F2E1B0 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_207:
  sub_1C440D164(v454 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__eventFoundInAppsCategory, &v1031);
  sub_1C440BBC0();
  sub_1C4460108(v622, v623, v624, v625);
  sub_1C440D164(v465 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__eventFoundInAppsCategory, &v1030);
  sub_1C44252E0();
  v626 = v861;
  sub_1C440BBC0();
  sub_1C4460108(v627, v628, v629, v630);
  sub_1C442BD28();
  sub_1C44034BC(v626);
  if (v287)
  {
    sub_1C4420C3C(v858, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C44034BC(&qword_1EC0C1000 + v861);
    if (v287)
    {
      sub_1C4420C3C(v861, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_217;
    }

LABEL_215:
    v478 = &qword_1EC0BB6C0;
    v479 = &unk_1C4F20AE0;
    v480 = v861;
    goto LABEL_150;
  }

  v631 = v861;
  sub_1C4460108(v861, v859, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C44034BC(&qword_1EC0C1000 + v631);
  if (v632)
  {
    sub_1C4420C3C(v858, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C44074E0();
    sub_1C4A25FEC();
    goto LABEL_215;
  }

  sub_1C4A26040();
  v633 = sub_1C4401D48();
  sub_1C47E3504(v633, v634);
  sub_1C442EC58();
  sub_1C44BBE8C(v858);
  sub_1C449DB10();
  sub_1C4435C2C();
  if ((&unk_1C4F2E1B0 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_217:
  sub_1C440D164(v454 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__semanticLocation, &v1029);
  sub_1C440BBC0();
  sub_1C4460108(v635, v636, v637, v638);
  sub_1C440D164(v465 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__semanticLocation, &v1028);
  sub_1C441DDCC();
  sub_1C440BBC0();
  sub_1C4460108(v639, v640, v641, v642);
  sub_1C442BD28();
  v643 = sub_1C442FFA8();
  sub_1C440175C(v643, v644, v868);
  if (v287)
  {
    sub_1C4420C3C(v869, &qword_1EC0C17C0, &qword_1C4F447B8);
    v645 = sub_1C441AFC8(v872);
    sub_1C440175C(v645, v646, v868);
    if (v287)
    {
      sub_1C4420C3C(v872, &qword_1EC0C17C0, &qword_1C4F447B8);
      goto LABEL_229;
    }

LABEL_225:
    v478 = &qword_1EC0C17B8;
    v479 = &qword_1C4F447B0;
    v480 = v872;
    goto LABEL_150;
  }

  sub_1C4460108(v872, v870, &qword_1EC0C17C0, &qword_1C4F447B8);
  v647 = sub_1C44691E8();
  sub_1C440175C(v647, v648, v868);
  if (v649)
  {
    sub_1C4420C3C(v869, &qword_1EC0C17C0, &qword_1C4F447B8);
    sub_1C4A25FEC();
    goto LABEL_225;
  }

  sub_1C4A26040();
  sub_1C4460314();
  if (!v650)
  {

    v651 = sub_1C4410428();
    sub_1C4A23B30(v651, v652, v653, v654, v655, v656, v657, v658, v853, v854, v855, v856, v857, v858, v859, v860, v861, v862, v863, v864);
    sub_1C4429098();

    if ((&qword_1EC0C1000 & 1) == 0)
    {
      goto LABEL_149;
    }
  }

  sub_1C4F00328();
  sub_1C442CF50();
  sub_1C4A24734(v659, v660, MEMORY[0x1E69AAC10]);
  sub_1C44158DC();
  v661 = sub_1C4F010B8();
  sub_1C4A25FEC();
  sub_1C44BBE8C(v869);
  sub_1C441D6D8();
  sub_1C4A25FEC();
  sub_1C44BBE8C(v872);
  if ((v661 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_229:
  sub_1C440D164(v454 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__bluetooth, &v1027);
  sub_1C440BBC0();
  sub_1C4460108(v662, v663, v664, v665);
  sub_1C440D164(v465 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__bluetooth, &v1026);
  sub_1C441DDCC();
  sub_1C440BBC0();
  sub_1C4460108(v666, v667, v668, v669);
  sub_1C442BD28();
  v670 = sub_1C442FFA8();
  sub_1C440175C(v670, v671, v876);
  if (v287)
  {
    sub_1C4420C3C(v877, &qword_1EC0C17B0, &qword_1C4F447A8);
    v672 = sub_1C441AFC8(v881);
    sub_1C440175C(v672, v673, v876);
    if (v287)
    {
      sub_1C4420C3C(v881, &qword_1EC0C17B0, &qword_1C4F447A8);
      goto LABEL_241;
    }

LABEL_237:
    v478 = &qword_1EC0C17A8;
    v479 = &qword_1C4F447A0;
    v480 = v881;
    goto LABEL_150;
  }

  sub_1C4460108(v881, v878, &qword_1EC0C17B0, &qword_1C4F447A8);
  v674 = sub_1C44691E8();
  sub_1C440175C(v674, v675, v876);
  if (v676)
  {
    sub_1C4420C3C(v877, &qword_1EC0C17B0, &qword_1C4F447A8);
    sub_1C4A25FEC();
    goto LABEL_237;
  }

  sub_1C4A26040();
  sub_1C4460314();
  if (!v677)
  {

    v678 = sub_1C4410428();
    sub_1C4A23B30(v678, v679, v680, v681, v682, v683, v684, v685, v853, v854, v855, v856, v857, v858, v859, v860, v861, v862, v863, v864);
    sub_1C4429098();

    if ((&qword_1EC0C1000 & 1) == 0)
    {
      goto LABEL_149;
    }
  }

  sub_1C4F00328();
  sub_1C442CF50();
  sub_1C4A24734(v686, v687, MEMORY[0x1E69AAC10]);
  sub_1C44158DC();
  v688 = sub_1C4F010B8();
  sub_1C4A25FEC();
  sub_1C44BBE8C(v877);
  sub_1C441D6D8();
  sub_1C4A25FEC();
  sub_1C44BBE8C(v881);
  if ((v688 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_241:
  sub_1C440D164(v454 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__lowPowerMode, &v1025);
  sub_1C440BBC0();
  sub_1C4460108(v689, v690, v691, v692);
  sub_1C440D164(v465 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__lowPowerMode, &v1024);
  sub_1C44252E0();
  v693 = v866;
  sub_1C440BBC0();
  sub_1C4460108(v694, v695, v696, v697);
  sub_1C442BD28();
  sub_1C44034BC(v693);
  if (v287)
  {
    sub_1C4420C3C(v864, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C44034BC(&qword_1EC0C1000 + v866);
    if (v287)
    {
      sub_1C4420C3C(v866, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_252;
    }

LABEL_250:
    v478 = &qword_1EC0BB6C0;
    v479 = &unk_1C4F20AE0;
    v480 = v866;
    goto LABEL_150;
  }

  v698 = v866;
  sub_1C4460108(v866, v865, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C44034BC(&qword_1EC0C1000 + v698);
  if (v699)
  {
    sub_1C4420C3C(v864, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C44074E0();
    sub_1C4A25FEC();
    goto LABEL_250;
  }

  sub_1C4A26040();
  v700 = sub_1C4401D48();
  sub_1C47E3504(v700, v701);
  sub_1C442EC58();
  sub_1C44BBE8C(v864);
  sub_1C449DB10();
  sub_1C4435C2C();
  if ((&unk_1C4F2E1B0 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_252:
  sub_1C440D164(v454 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__microlocation, &v1023);
  sub_1C440BBC0();
  sub_1C4460108(v702, v703, v704, v705);
  sub_1C440D164(v465 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__microlocation, &v1022);
  sub_1C441DDCC();
  sub_1C440BBC0();
  sub_1C4460108(v706, v707, v708, v709);
  sub_1C442BD28();
  v710 = sub_1C442FFA8();
  sub_1C440175C(v710, v711, v890);
  if (v287)
  {
    sub_1C4420C3C(v888, &qword_1EC0C17A0, &qword_1C4F44798);
    v712 = sub_1C441AFC8(v892);
    sub_1C440175C(v712, v713, v890);
    if (v287)
    {
      sub_1C4420C3C(v892, &qword_1EC0C17A0, &qword_1C4F44798);
      goto LABEL_263;
    }

LABEL_261:
    v478 = &qword_1EC0C1798;
    v479 = &qword_1C4F44790;
    v480 = v892;
    goto LABEL_150;
  }

  sub_1C4460108(v892, v889, &qword_1EC0C17A0, &qword_1C4F44798);
  v714 = sub_1C44691E8();
  sub_1C440175C(v714, v715, v890);
  if (v716)
  {
    sub_1C4420C3C(v888, &qword_1EC0C17A0, &qword_1C4F44798);
    sub_1C4A25FEC();
    goto LABEL_261;
  }

  sub_1C4A26040();
  sub_1C4401D48();
  sub_1C4A21F9C();
  sub_1C442EC58();
  sub_1C44BBE8C(v888);
  sub_1C449DB10();
  sub_1C4435C2C();
  if ((&qword_1C4F44798 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_263:
  sub_1C440D164(v454 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__calendar, &v1021);
  sub_1C440BBC0();
  sub_1C4460108(v717, v718, v719, v720);
  sub_1C440D164(v465 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__calendar, &v1020);
  sub_1C441DDCC();
  sub_1C440BBC0();
  sub_1C4460108(v721, v722, v723, v724);
  sub_1C442BD28();
  v725 = sub_1C442FFA8();
  sub_1C440175C(v725, v726, v897);
  if (v287)
  {
    sub_1C4420C3C(v899, &qword_1EC0C1790, &qword_1C4F44788);
    v727 = sub_1C441AFC8(v902);
    sub_1C440175C(v727, v728, v897);
    if (v287)
    {
      sub_1C4420C3C(v902, &qword_1EC0C1790, &qword_1C4F44788);
      goto LABEL_275;
    }

LABEL_271:
    v478 = &qword_1EC0C1788;
    v479 = &qword_1C4F44780;
    v480 = v902;
    goto LABEL_150;
  }

  sub_1C4460108(v902, v900, &qword_1EC0C1790, &qword_1C4F44788);
  v729 = sub_1C44691E8();
  sub_1C440175C(v729, v730, v897);
  if (v731)
  {
    sub_1C4420C3C(v899, &qword_1EC0C1790, &qword_1C4F44788);
    sub_1C4A25FEC();
    goto LABEL_271;
  }

  sub_1C4A26040();
  sub_1C4460314();
  if (!v732)
  {

    v733 = sub_1C4410428();
    sub_1C4A1F9A0(v733, v734, v735, v736, v737, v738, v739, v740, v853, v854, v855, v856, v857, v858, v859, v860, v861, v862, v863, v864);
    sub_1C4429098();

    if ((&qword_1EC0C1000 & 1) == 0)
    {
LABEL_149:
      sub_1C4A25FEC();
      sub_1C4426A5C();
      sub_1C4420C3C(v547, v548, v549);
      sub_1C4A25FEC();
      sub_1C4426A5C();
      goto LABEL_150;
    }
  }

  sub_1C4F00328();
  sub_1C442CF50();
  sub_1C4A24734(v741, v742, MEMORY[0x1E69AAC10]);
  sub_1C44158DC();
  v743 = sub_1C4F010B8();
  sub_1C4A25FEC();
  sub_1C44BBE8C(v899);
  sub_1C441D6D8();
  sub_1C4A25FEC();
  sub_1C44BBE8C(v902);
  if ((v743 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_275:
  sub_1C440D164(v454 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__systemSpaceInteraction, &v1019);
  sub_1C440BBC0();
  sub_1C4460108(v744, v745, v746, v747);
  sub_1C440D164(v465 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__systemSpaceInteraction, &v1018);
  sub_1C44252E0();
  v748 = v880;
  sub_1C440BBC0();
  sub_1C4460108(v749, v750, v751, v752);
  sub_1C442BD28();
  sub_1C44034BC(v748);
  if (v287)
  {
    sub_1C4420C3C(v873, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C44034BC(&qword_1EC0C1000 + v880);
    if (v287)
    {
      sub_1C4420C3C(v880, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_285;
    }

LABEL_283:
    v478 = &qword_1EC0BB6C0;
    v479 = &unk_1C4F20AE0;
    v480 = v880;
    goto LABEL_150;
  }

  v753 = v880;
  sub_1C4460108(v880, v874, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C44034BC(&qword_1EC0C1000 + v753);
  if (v754)
  {
    sub_1C4420C3C(v873, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C44074E0();
    sub_1C4A25FEC();
    goto LABEL_283;
  }

  sub_1C4A26040();
  v755 = sub_1C4401D48();
  sub_1C47E3504(v755, v756);
  sub_1C442EC58();
  sub_1C44BBE8C(v873);
  sub_1C449DB10();
  sub_1C4435C2C();
  if ((&unk_1C4F2E1B0 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_285:
  sub_1C440D164(v454 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__airplay, &v1017);
  sub_1C440BBC0();
  sub_1C4460108(v757, v758, v759, v760);
  sub_1C440D164(v465 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__airplay, &v1016);
  sub_1C441DDCC();
  sub_1C440BBC0();
  sub_1C4460108(v761, v762, v763, v764);
  sub_1C442BD28();
  v765 = sub_1C442FFA8();
  sub_1C440175C(v765, v766, v906);
  if (v287)
  {
    sub_1C4420C3C(v904, &qword_1EC0C1780, &qword_1C4F44778);
    v767 = sub_1C441AFC8(v908);
    sub_1C440175C(v767, v768, v906);
    if (v287)
    {
      sub_1C4420C3C(v908, &qword_1EC0C1780, &qword_1C4F44778);
      goto LABEL_296;
    }

LABEL_294:
    v478 = &qword_1EC0C1778;
    v479 = &qword_1C4F44770;
    v480 = v908;
    goto LABEL_150;
  }

  sub_1C4460108(v908, v905, &qword_1EC0C1780, &qword_1C4F44778);
  v769 = sub_1C44691E8();
  sub_1C440175C(v769, v770, v906);
  if (v771)
  {
    sub_1C4420C3C(v904, &qword_1EC0C1780, &qword_1C4F44778);
    sub_1C4A25FEC();
    goto LABEL_294;
  }

  sub_1C4A26040();
  sub_1C4401D48();
  sub_1C4A21F9C();
  sub_1C442EC58();
  sub_1C44BBE8C(v904);
  sub_1C449DB10();
  sub_1C4435C2C();
  if ((&qword_1C4F44778 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_296:
  sub_1C440D164(v454 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__homekitAccessoryID, &v1015);
  sub_1C440BBC0();
  sub_1C4460108(v772, v773, v774, v775);
  sub_1C440D164(v465 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__homekitAccessoryID, &v1014);
  sub_1C44252E0();
  v776 = v886;
  sub_1C440BBC0();
  sub_1C4460108(v777, v778, v779, v780);
  sub_1C442BD28();
  sub_1C44034BC(v776);
  if (v287)
  {
    sub_1C4420C3C(v882, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C44034BC(&qword_1EC0C1000 + v886);
    if (v287)
    {
      sub_1C4420C3C(v886, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_306;
    }

LABEL_304:
    v478 = &qword_1EC0BB6C0;
    v479 = &unk_1C4F20AE0;
    v480 = v886;
    goto LABEL_150;
  }

  v781 = v886;
  sub_1C4460108(v886, v883, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C44034BC(&qword_1EC0C1000 + v781);
  if (v782)
  {
    sub_1C4420C3C(v882, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C44074E0();
    sub_1C4A25FEC();
    goto LABEL_304;
  }

  sub_1C4A26040();
  v783 = sub_1C4401D48();
  sub_1C47E3504(v783, v784);
  sub_1C442EC58();
  sub_1C44BBE8C(v882);
  sub_1C449DB10();
  sub_1C4435C2C();
  if ((&unk_1C4F2E1B0 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_306:
  sub_1C440D164(v454 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__geoHash, &v1013);
  sub_1C440BBC0();
  sub_1C4460108(v785, v786, v787, v788);
  sub_1C440D164(v465 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__geoHash, &v1012);
  sub_1C44252E0();
  v789 = v894;
  sub_1C440BBC0();
  sub_1C4460108(v790, v791, v792, v793);
  sub_1C442BD28();
  sub_1C44034BC(v789);
  if (v287)
  {
    sub_1C4420C3C(v885, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C44034BC(&qword_1EC0C1000 + v894);
    if (v287)
    {
      sub_1C4420C3C(v894, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_316;
    }

LABEL_314:
    v478 = &qword_1EC0BB6C0;
    v479 = &unk_1C4F20AE0;
    v480 = v894;
    goto LABEL_150;
  }

  v794 = v894;
  sub_1C4460108(v894, v887, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C44034BC(&qword_1EC0C1000 + v794);
  if (v795)
  {
    sub_1C4420C3C(v885, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C44074E0();
    sub_1C4A25FEC();
    goto LABEL_314;
  }

  sub_1C4A26040();
  v796 = sub_1C4401D48();
  sub_1C47E3504(v796, v797);
  sub_1C442EC58();
  sub_1C44BBE8C(v885);
  sub_1C449DB10();
  sub_1C4435C2C();
  if ((&unk_1C4F2E1B0 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_316:
  sub_1C440D164(v454 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__unigrams, &v1011);
  sub_1C440BBC0();
  sub_1C4460108(v798, v799, v800, v801);
  sub_1C440D164(v465 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__unigrams, &v1010);
  sub_1C44252E0();
  v802 = v898;
  sub_1C440BBC0();
  sub_1C4460108(v803, v804, v805, v806);
  sub_1C442BD28();
  sub_1C44034BC(v802);
  if (v287)
  {
    sub_1C4420C3C(v893, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C44034BC(&qword_1EC0C1000 + v898);
    if (v287)
    {
      sub_1C4420C3C(v898, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_326;
    }

LABEL_324:
    v478 = &qword_1EC0BB6C0;
    v479 = &unk_1C4F20AE0;
    v480 = v898;
    goto LABEL_150;
  }

  v807 = v898;
  sub_1C4460108(v898, v895, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C44034BC(&qword_1EC0C1000 + v807);
  if (v808)
  {
    sub_1C4420C3C(v893, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C44074E0();
    sub_1C4A25FEC();
    goto LABEL_324;
  }

  sub_1C4A26040();
  v809 = sub_1C4401D48();
  sub_1C47E3504(v809, v810);
  sub_1C442EC58();
  sub_1C44BBE8C(v893);
  sub_1C449DB10();
  sub_1C4435C2C();
  if ((&unk_1C4F2E1B0 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_326:
  sub_1C440D164(v454 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__linkActions, &v1009);
  sub_1C440BBC0();
  sub_1C4460108(v811, v812, v813, v814);
  sub_1C440D164(v465 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__linkActions, &v1008);
  sub_1C441DDCC();
  sub_1C440BBC0();
  sub_1C4460108(v815, v816, v817, v818);
  sub_1C442BD28();
  v819 = sub_1C442FFA8();
  sub_1C440175C(v819, v820, v910);
  if (!v287)
  {
    sub_1C4460108(v914, v912, &qword_1EC0C1770, &qword_1C4F44768);
    v823 = sub_1C44691E8();
    sub_1C440175C(v823, v824, v910);
    if (!v825)
    {
      sub_1C4A26040();
      sub_1C4460314();
      if (v826 || (, , v827 = sub_1C4410428(), sub_1C4A23B30(v827, v828, v829, v830, v831, v832, v833, v834, v853, v854, v855, v856, v857, v858, v859, v860, v861, v862, v863, v864), sub_1C4429098(), , (&qword_1EC0C1000 & 1) != 0))
      {
        sub_1C4F00328();
        sub_1C442CF50();
        sub_1C4A24734(v835, v836, MEMORY[0x1E69AAC10]);
        sub_1C44158DC();
        v837 = sub_1C4F010B8();
        sub_1C4A25FEC();
        sub_1C44BBE8C(v911);
        sub_1C441D6D8();
        sub_1C4A25FEC();
        sub_1C44BBE8C(v914);
        if (v837)
        {
          goto LABEL_338;
        }

LABEL_23:

        goto LABEL_24;
      }

      goto LABEL_149;
    }

    sub_1C4420C3C(v911, &qword_1EC0C1770, &qword_1C4F44768);
    sub_1C4A25FEC();
LABEL_334:
    v478 = &qword_1EC0C1768;
    v479 = &qword_1C4F44760;
    v480 = v914;
    goto LABEL_150;
  }

  sub_1C4420C3C(v911, &qword_1EC0C1770, &qword_1C4F44768);
  v821 = sub_1C441AFC8(v914);
  sub_1C440175C(v821, v822, v910);
  if (!v287)
  {
    goto LABEL_334;
  }

  sub_1C4420C3C(v914, &qword_1EC0C1770, &qword_1C4F44768);
LABEL_338:
  sub_1C440D164(v454 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__widget, &v1007);
  sub_1C440BBC0();
  sub_1C4460108(v838, v839, v840, v841);
  sub_1C440D164(v465 + OBJC_IVAR____TtCV24IntelligencePlatformCore21LongitudinalEventDataP33_CF26A39E376EFD107920388298DF68A613_StorageClass__widget, &v1006);
  sub_1C441DDCC();
  sub_1C440BBC0();
  sub_1C4460108(v842, v843, v844, v845);
  sub_1C442BD28();
  v846 = sub_1C442FFA8();
  sub_1C440175C(v846, v847, v918);
  if (!v287)
  {
    sub_1C4460108(v920, v917, &qword_1EC0C1760, &qword_1C4F44758);
    v850 = sub_1C44691E8();
    sub_1C440175C(v850, v851, v918);
    if (!v852)
    {
      sub_1C4A26040();
      sub_1C4401D48();
      sub_1C4A21F9C();

      sub_1C4A25FEC();
      sub_1C44BBE8C(v916);
      sub_1C449DB10();
      sub_1C4435C2C();
      goto LABEL_24;
    }

    sub_1C4420C3C(v916, &qword_1EC0C1760, &qword_1C4F44758);
    sub_1C4A25FEC();
LABEL_346:
    sub_1C4420C3C(v920, &qword_1EC0C1758, &qword_1C4F44750);
    goto LABEL_24;
  }

  sub_1C4420C3C(v916, &qword_1EC0C1760, &qword_1C4F44758);
  v848 = sub_1C441AFC8(v920);
  sub_1C440175C(v848, v849, v918);
  if (!v287)
  {
    goto LABEL_346;
  }

  sub_1C4420C3C(v920, &qword_1EC0C1760, &qword_1C4F44758);
LABEL_24:
  sub_1C43FE9F0();
}

uint64_t sub_1C4A169E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4A24734(&qword_1EC0C1890, type metadata accessor for LongitudinalEventData, &unk_1C4F443D0);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C4A16A84(uint64_t a1)
{
  sub_1C4A24734(&qword_1EC0C16F8, type metadata accessor for LongitudinalEventData, &unk_1C4F44408);

  return sub_1C4F00428();
}

uint64_t sub_1C4A16B4C(uint64_t a1, uint64_t a2)
{
  sub_1C4A24734(&qword_1EC0C16F8, type metadata accessor for LongitudinalEventData, &unk_1C4F44408);

  return sub_1C4F00438();
}

uint64_t sub_1C4A16BF8()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC1526A8);
  sub_1C442B738(v0, qword_1EC1526A8);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0CE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "motionType";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "confidence";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_1C4F004D8();
}

uint64_t sub_1C4A16E70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4A24734(&qword_1EC0C1898, type metadata accessor for LongitudinalEventData.MotionState, &unk_1C4F44268);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C4A16F10(uint64_t a1)
{
  sub_1C4A24734(&qword_1EC0C16D8, type metadata accessor for LongitudinalEventData.MotionState, &unk_1C4F442A0);

  return sub_1C4F00428();
}

uint64_t sub_1C4A16FD8(uint64_t a1, uint64_t a2)
{
  sub_1C4A24734(&qword_1EC0C16D8, type metadata accessor for LongitudinalEventData.MotionState, &unk_1C4F442A0);

  return sub_1C4F00438();
}

uint64_t sub_1C4A170A8()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC1526D0);
  sub_1C442B738(v0, qword_1EC1526D0);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0CE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "airplayConnected";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "airplayRoute";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_1C4F004D8();
}

void sub_1C4A17270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    v4 = sub_1C4F00378();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (v4 == 2)
    {
      sub_1C4428E60();
      sub_1C4A21BC8();
    }

    else if (v4 == 1)
    {
      sub_1C4428E60();
      sub_1C4A21B58();
    }
  }
}

uint64_t sub_1C4A172F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  sub_1C4405A6C();
  sub_1C43FEE74();
  result = sub_1C4A21C38(v8, v9, v10, v11, a4);
  if (!v5)
  {
    sub_1C43FEE74();
    sub_1C4A21DEC(v13, v14, v15, v16, a4, a5);
    sub_1C43FE99C();
    return sub_1C4F00308();
  }

  return result;
}

uint64_t sub_1C4A17410(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4A24734(&qword_1EC0C18A0, type metadata accessor for LongitudinalEventData.Airplay, &unk_1C4F44100);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C4A174B0(uint64_t a1)
{
  sub_1C4A24734(&qword_1EC0C16B8, type metadata accessor for LongitudinalEventData.Airplay, &unk_1C4F44138);

  return sub_1C4F00428();
}

uint64_t sub_1C4A17578(uint64_t a1, uint64_t a2)
{
  sub_1C4A24734(&qword_1EC0C16B8, type metadata accessor for LongitudinalEventData.Airplay, &unk_1C4F44138);

  return sub_1C4F00438();
}

uint64_t sub_1C4A17648()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC1526F8);
  sub_1C442B738(v0, qword_1EC1526F8);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0CE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "carplayConnected";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "carplayReason";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  return sub_1C4F004D8();
}

uint64_t sub_1C4A178C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4A24734(&qword_1EC0C18A8, type metadata accessor for LongitudinalEventData.Carplay, &unk_1C4F43F98);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C4A17960(uint64_t a1)
{
  sub_1C4A24734(&qword_1EC0C1698, type metadata accessor for LongitudinalEventData.Carplay, &unk_1C4F43FD0);

  return sub_1C4F00428();
}

uint64_t sub_1C4A17A28(uint64_t a1, uint64_t a2)
{
  sub_1C4A24734(&qword_1EC0C1698, type metadata accessor for LongitudinalEventData.Carplay, &unk_1C4F43FD0);

  return sub_1C4F00438();
}

uint64_t sub_1C4A17AF4()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC152720);
  sub_1C442B738(v0, qword_1EC152720);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0CE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "wifiConnected";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "wifiSsid";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_1C4F004D8();
}

uint64_t sub_1C4A17D6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4A24734(&qword_1EC0C18B0, type metadata accessor for LongitudinalEventData.Wifi, &unk_1C4F43E30);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C4A17E0C(uint64_t a1)
{
  sub_1C4A24734(&qword_1EC0C1678, type metadata accessor for LongitudinalEventData.Wifi, &unk_1C4F43E68);

  return sub_1C4F00428();
}

uint64_t sub_1C4A17ED4(uint64_t a1, uint64_t a2)
{
  sub_1C4A24734(&qword_1EC0C1678, type metadata accessor for LongitudinalEventData.Wifi, &unk_1C4F43E68);

  return sub_1C4F00438();
}

uint64_t sub_1C4A17FB0()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC152748);
  sub_1C442B738(v0, qword_1EC152748);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0CE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "inferredModeType";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "confidence";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_1C4F004D8();
}

uint64_t sub_1C4A18228(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4A24734(&qword_1EC0C18B8, type metadata accessor for LongitudinalEventData.InferredMode, &unk_1C4F43CC8);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C4A182C8(uint64_t a1)
{
  sub_1C4A24734(&qword_1EC0C1658, type metadata accessor for LongitudinalEventData.InferredMode, &unk_1C4F43D00);

  return sub_1C4F00428();
}

uint64_t sub_1C4A18390(uint64_t a1, uint64_t a2)
{
  sub_1C4A24734(&qword_1EC0C1658, type metadata accessor for LongitudinalEventData.InferredMode, &unk_1C4F43D00);

  return sub_1C4F00438();
}

uint64_t sub_1C4A1843C()
{
  result = MEMORY[0x1C6940010](0xD000000000000016, 0x80000001C4FACDF0);
  qword_1EC152760 = 0xD000000000000016;
  *algn_1EC152768 = 0x80000001C4FACCB0;
  return result;
}

uint64_t sub_1C4A184AC()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC152770);
  sub_1C442B738(v0, qword_1EC152770);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0CE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "userComputedFocusModeType";
  *(v6 + 8) = 25;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "userComputedFocusModeIdentifier";
  *(v10 + 1) = 31;
  v10[16] = 2;
  v9();
  return sub_1C4F004D8();
}

uint64_t sub_1C4A18724(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4A24734(&qword_1EC0C18C0, type metadata accessor for LongitudinalEventData.UserComputedFocusMode, &unk_1C4F43B60);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C4A187C4(uint64_t a1)
{
  sub_1C4A24734(&qword_1EC0C1638, type metadata accessor for LongitudinalEventData.UserComputedFocusMode, &unk_1C4F43B98);

  return sub_1C4F00428();
}

uint64_t sub_1C4A1888C(uint64_t a1, uint64_t a2)
{
  sub_1C4A24734(&qword_1EC0C1638, type metadata accessor for LongitudinalEventData.UserComputedFocusMode, &unk_1C4F43B98);

  return sub_1C4F00438();
}

uint64_t sub_1C4A18968()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC152798);
  sub_1C442B738(v0, qword_1EC152798);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0CE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "localAppCategory";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "localAppBundleId";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  return sub_1C4F004D8();
}

uint64_t sub_1C4A18BE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4A24734(&qword_1EC0C18C8, type metadata accessor for LongitudinalEventData.LocalAppLaunch, &unk_1C4F439F8);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C4A18C80(uint64_t a1)
{
  sub_1C4A24734(&qword_1EC0C1618, type metadata accessor for LongitudinalEventData.LocalAppLaunch, &unk_1C4F43A30);

  return sub_1C4F00428();
}

uint64_t sub_1C4A18D48(uint64_t a1, uint64_t a2)
{
  sub_1C4A24734(&qword_1EC0C1618, type metadata accessor for LongitudinalEventData.LocalAppLaunch, &unk_1C4F43A30);

  return sub_1C4F00438();
}

uint64_t sub_1C4A18E24()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC1527C0);
  sub_1C442B738(v0, qword_1EC1527C0);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0CE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "localAppBundleId";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "localAppIntentClass";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v9();
  return sub_1C4F004D8();
}

uint64_t sub_1C4A1909C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4A24734(&qword_1EC0C18D0, type metadata accessor for LongitudinalEventData.LocalAppIntent, &unk_1C4F43890);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C4A1913C(uint64_t a1)
{
  sub_1C4A24734(&qword_1EC0C15F8, type metadata accessor for LongitudinalEventData.LocalAppIntent, &unk_1C4F438C8);

  return sub_1C4F00428();
}

uint64_t sub_1C4A19204(uint64_t a1, uint64_t a2)
{
  sub_1C4A24734(&qword_1EC0C15F8, type metadata accessor for LongitudinalEventData.LocalAppIntent, &unk_1C4F438C8);

  return sub_1C4F00438();
}

uint64_t sub_1C4A192D4()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC1527E8);
  sub_1C442B738(v0, qword_1EC1527E8);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0CE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "paymentOccurred";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "passStyle";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_1C4F004D8();
}

void sub_1C4A194A0()
{
  sub_1C448E07C();
  while (1)
  {
    sub_1C43FE99C();
    v1 = sub_1C4F00378();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 3)
    {
      sub_1C44306D0();
      sub_1C4A21BC8();
    }

    else if (v1 == 1)
    {
      sub_1C44306D0();
      sub_1C4A21B58();
    }
  }
}

uint64_t sub_1C4A195A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4A24734(&qword_1EC0C18D8, type metadata accessor for LongitudinalEventData.Wallet, &unk_1C4F43728);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C4A19648(uint64_t a1)
{
  sub_1C4A24734(&qword_1EC0C15D8, type metadata accessor for LongitudinalEventData.Wallet, &unk_1C4F43760);

  return sub_1C4F00428();
}

uint64_t sub_1C4A19710(uint64_t a1, uint64_t a2)
{
  sub_1C4A24734(&qword_1EC0C15D8, type metadata accessor for LongitudinalEventData.Wallet, &unk_1C4F43760);

  return sub_1C4F00438();
}

uint64_t sub_1C4A197EC()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC152810);
  sub_1C442B738(v0, qword_1EC152810);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0C890;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "userSpecificPlaceType";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "PlaceType";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "confidence";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  return sub_1C4F004D8();
}

uint64_t sub_1C4A199F4()
{
  type metadata accessor for LongitudinalEventData.LocationVisit._StorageClass(0);
  swift_allocObject();
  result = sub_1C4920FCC();
  qword_1EC0C1040 = result;
  return result;
}

void sub_1C4A19A94()
{
  sub_1C441800C();
  v0 = sub_1C43FD704();
  v1 = type metadata accessor for LongitudinalEventData.LocationVisit(v0);
  if ((sub_1C442A918(v1) & 1) == 0)
  {
    type metadata accessor for LongitudinalEventData.LocationVisit._StorageClass(0);
    sub_1C43FD23C();
    swift_allocObject();
    sub_1C4414248();
    sub_1C4A1AAE8();
    sub_1C4416740(v2);
  }

  v3 = sub_1C440F77C();
  sub_1C4A19B14(v3, v4, v5, v6);
  sub_1C44512DC();
}

uint64_t sub_1C4A19B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1C4F00378();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 4:
        sub_1C4A19D7C(a2, a1, a3, a4);
        break;
      case 3:
        sub_1C4A19CA0(a2, a1, a3, a4);
        break;
      case 2:
        sub_1C4A19BC4(a2, a1, a3, a4);
        break;
    }
  }

  return result;
}

uint64_t sub_1C4A19BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A19CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A19D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A19E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCVV24IntelligencePlatformCore21LongitudinalEventData13LocationVisitP33_CF26A39E376EFD107920388298DF68A613_StorageClass__userSpecificPlaceType;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4A26040();
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A1A040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCVV24IntelligencePlatformCore21LongitudinalEventData13LocationVisitP33_CF26A39E376EFD107920388298DF68A613_StorageClass__placeType;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4A26040();
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A1A228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCVV24IntelligencePlatformCore21LongitudinalEventData13LocationVisitP33_CF26A39E376EFD107920388298DF68A613_StorageClass__confidence;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4A26040();
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A1A5E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4A24734(&qword_1EC0C18E0, type metadata accessor for LongitudinalEventData.LocationVisit, &unk_1C4F435C0);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C4A1A684(uint64_t a1)
{
  sub_1C4A24734(&qword_1EC0C15B8, type metadata accessor for LongitudinalEventData.LocationVisit, &unk_1C4F435F8);

  return sub_1C4F00428();
}

uint64_t sub_1C4A1A74C(uint64_t a1, uint64_t a2)
{
  sub_1C4A24734(&qword_1EC0C15B8, type metadata accessor for LongitudinalEventData.LocationVisit, &unk_1C4F435F8);

  return sub_1C4F00438();
}

uint64_t sub_1C4A1A810()
{
  result = MEMORY[0x1C6940010](0xD000000000000011, 0x80000001C4F9B020);
  qword_1EC152828 = 0xD000000000000016;
  unk_1EC152830 = 0x80000001C4FACCB0;
  return result;
}

uint64_t sub_1C4A1A884()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC152838);
  sub_1C442B738(v0, qword_1EC152838);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0C890;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "placeType";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "userSpecificPlaceType";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "loiIdentifier";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  return sub_1C4F004D8();
}

uint64_t sub_1C4A1AA8C()
{
  type metadata accessor for LongitudinalEventData.SemanticLocation._StorageClass(0);
  swift_allocObject();
  result = sub_1C4920FCC();
  qword_1EC0C1048 = result;
  return result;
}

void sub_1C4A1AAE8()
{
  sub_1C43FBD3C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v9);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v47[-v11];
  v13 = *v6;
  v14 = type metadata accessor for FeatureValue(0);
  sub_1C43FCF64();
  sub_1C440BAA8(v15, v16, v17, v14);
  v18 = *v4;
  sub_1C43FCF64();
  sub_1C440BAA8(v19, v20, v21, v14);
  v22 = *v2;
  sub_1C43FCF64();
  sub_1C440BAA8(v23, v24, v25, v14);
  v26 = *v6;
  sub_1C440D164(v8 + v26, &v50);
  sub_1C4460108(v8 + v26, v12, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4403138(v0 + v13, v49);
  sub_1C442A428();
  sub_1C44408D4(v27, v28, v29, v30);
  swift_endAccess();
  sub_1C440D164(v8 + *v4, v49);
  sub_1C44885C4();
  sub_1C442A428();
  sub_1C4460108(v31, v32, v33, v34);
  sub_1C4403138(v0 + v18, v48);
  sub_1C442A428();
  sub_1C44408D4(v35, v36, v37, v38);
  swift_endAccess();
  sub_1C440D164(v8 + *v2, v48);
  sub_1C44885C4();
  sub_1C442A428();
  sub_1C4460108(v39, v40, v41, v42);

  sub_1C4403138(v0 + v22, v47);
  sub_1C442A428();
  sub_1C44408D4(v43, v44, v45, v46);
  swift_endAccess();
  sub_1C43FE9F0();
}