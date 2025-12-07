uint64_t sub_1D274EAE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_1D2873CB8();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = sub_1D2872008();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  sub_1D28718F8();
  v5[15] = swift_task_alloc();
  sub_1D2878048();
  v5[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D58, &qword_1D287FE70);
  v5[17] = swift_task_alloc();
  v8 = sub_1D2872128();
  v5[18] = v8;
  v5[19] = *(v8 - 8);
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v9 = sub_1D2872068();
  v5[22] = v9;
  v5[23] = *(v9 - 8);
  v5[24] = swift_task_alloc();
  sub_1D2878568();
  v5[25] = sub_1D2878558();
  v11 = sub_1D28784F8();
  v5[26] = v11;
  v5[27] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1D274EDA4, v11, v10);
}

uint64_t sub_1D274EDA4()
{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 176);
  (*(v2 + 104))(v1, *MEMORY[0x1E696E3A0], v3);
  v4 = sub_1D2872058();
  (*(v2 + 8))(v1, v3);
  if ((v4 & 1) == 0)
  {

LABEL_7:

    v18 = *(v0 + 8);
    v19 = MEMORY[0x1E69E7CC0];

    return v18(v19);
  }

  v6 = *(v0 + 160);
  v5 = *(v0 + 168);
  v7 = *(v0 + 144);
  v8 = *(v0 + 152);
  sub_1D2872188();
  sub_1D2872148();
  (*(v8 + 104))(v6, *MEMORY[0x1E696E418], v7);
  sub_1D2751114(&qword_1EC6DA148, 255, MEMORY[0x1E696E420], MEMORY[0x1E696E428]);
  v9 = sub_1D2877F98();
  v10 = *(v8 + 8);
  v10(v6, v7);
  v10(v5, v7);
  if (v9)
  {

    sub_1D28725D8();
    v11 = sub_1D2873CA8();
    v12 = sub_1D2878A18();
    v13 = os_log_type_enabled(v11, v12);
    v15 = *(v0 + 64);
    v14 = *(v0 + 72);
    v16 = *(v0 + 56);
    if (v13)
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1D226E000, v11, v12, "External provider unavailable for the current device and/or region.", v17, 2u);
      MEMORY[0x1D38A3520](v17, -1, -1);
    }

    (*(v15 + 8))(v14, v16);
    goto LABEL_7;
  }

  v21 = *(v0 + 136);
  v22 = *(v0 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAC80, &qword_1D28A39D0);
  *(v0 + 224) = *(v22 + 72);
  *(v0 + 288) = *(v22 + 80);
  v23 = swift_allocObject();
  *(v0 + 232) = v23;
  *(v23 + 16) = xmmword_1D287F500;
  sub_1D2871EC8();
  sub_1D2877FE8();
  sub_1D28718C8();
  sub_1D28780E8();
  sub_1D2870F68();
  sub_1D2870F68();
  sub_1D2871EE8();
  v24 = sub_1D2871F38();
  *(v0 + 240) = v24;
  v25 = *(v24 - 8);
  v26 = *(v25 + 56);
  *(v0 + 248) = v26;
  *(v0 + 256) = (v25 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v26(v21, 0, 1, v24);
  sub_1D2871FA8();
  *(v0 + 264) = sub_1D274F98C();
  v27 = swift_task_alloc();
  *(v0 + 272) = v27;
  *v27 = v0;
  v27[1] = sub_1D274F250;

  return sub_1D26346A8(0xD000000000000018, 0x80000001D28C1210);
}

uint64_t sub_1D274F250(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 280) = a1;

  v3 = *(v2 + 216);
  v4 = *(v2 + 208);

  return MEMORY[0x1EEE6DFA0](sub_1D274F39C, v4, v3);
}

uint64_t sub_1D274F39C()
{
  v1 = *(v0 + 280);

  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 88);
    v4 = (v3 + 8);
    v21 = (v3 + 32);
    v22 = (v3 + 16);
    v5 = *(v0 + 232);
    v6 = *(v0 + 280) + 56;
    v23 = (v3 + 8);
    do
    {
      v32 = v2;
      v28 = *(v0 + 248);
      v7 = v4;
      v26 = *(v0 + 136);
      v27 = *(v0 + 240);
      v8 = *(v0 + 104);
      v29 = *(v0 + 96);
      v9 = *(v0 + 80);
      v25 = *(v0 + 112);
      v24 = *(v6 - 24);
      v33 = *(v6 - 16);
      v10 = *(v6 + 48);
      sub_1D2870F68();
      sub_1D2870F68();
      sub_1D2870F68();
      sub_1D2870F68();
      sub_1D2870F68();
      v31 = v10;
      sub_1D2871EC8();
      sub_1D2871F98();
      v30 = *v7;
      (*v7)(v8, v9);
      sub_1D2870F68();
      MEMORY[0x1D38A0C50](95, 0xE100000000000000);

      sub_1D2870F68();
      MEMORY[0x1D38A0C50](v24, v33);

      sub_1D2871EA8();
      sub_1D2870F68();
      sub_1D2870F68();
      sub_1D2870F68();
      sub_1D2870F68();
      sub_1D2870F68();
      sub_1D2871EE8();
      v28(v26, 0, 1, v27);
      sub_1D2871F68();
      (*v22)(v29, v25, v9);
      v12 = *(v5 + 2);
      v11 = *(v5 + 3);
      if (v12 >= v11 >> 1)
      {
        v5 = sub_1D27CC780((v11 > 1), v12 + 1, 1, v5);
      }

      v6 += 80;
      v13 = *(v0 + 288);
      v14 = *(v0 + 224);
      v15 = *(v0 + 112);
      v16 = *(v0 + 96);
      v17 = *(v0 + 80);

      v18 = v15;
      v4 = v23;
      v30(v18, v17);
      *(v5 + 2) = v12 + 1;
      (*v21)(&v5[((v13 + 32) & ~v13) + v14 * v12], v16, v17);
      v2 = v32 - 1;
    }

    while (v32 != 1);
  }

  else
  {

    v5 = *(v0 + 232);
  }

  v19 = *(v0 + 8);

  return v19(v5);
}

uint64_t sub_1D274F788(uint64_t a1)
{
  v2 = sub_1D2873298();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v1 + 40))
  {
    goto LABEL_7;
  }

  sub_1D2870F78();
  sub_1D2873228();
  sub_1D2751114(&qword_1EC6E1708, 255, MEMORY[0x1E69DFFC8], MEMORY[0x1E69DFFD8]);
  sub_1D2878368();
  sub_1D2878368();
  if (v9[2] != v9[0] || v9[3] != v9[1])
  {
    v6 = sub_1D2879618();
    (*(v3 + 8))(v5, v2);

    if (v6)
    {
      goto LABEL_8;
    }

LABEL_7:
    sub_1D2873268();
    sub_1D2873218();
    goto LABEL_8;
  }

  (*(v3 + 8))(v5, v2);

LABEL_8:
  v7 = sub_1D2873248();

  return v7;
}

void *sub_1D274F98C()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v1 = sub_1D23C8160();
    *(v0 + 24) = v1;
    sub_1D2870F78();
  }

  sub_1D2870F78();
  return v1;
}

double sub_1D274F9F4(char a1)
{
  v2 = a1 & 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30, &qword_1D287EFC0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v58 - v7;
  v79 = sub_1D2872008();
  v75 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v77 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&result = MEMORY[0x1EEE9AC00](v10).n128_u64[0];
  v13 = &v58 - v12;
  if (*(v1 + 56) != v2)
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = *(v1 + 32);
    v61 = v8;
    if (isUniquelyReferenced_nonNull_native >> 62)
    {
      goto LABEL_64;
    }

    v15 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v63 = isUniquelyReferenced_nonNull_native;
    isUniquelyReferenced_nonNull_native = sub_1D2870F68();
    if (v15)
    {
      v16 = 0;
      v17 = v63 & 0xC000000000000001;
      v18 = v63 & 0xFFFFFFFFFFFFFF8;
      v19 = v63 + 32;
      v74 = (v75 + 16);
      v72 = (v75 + 8);
      v65 = (v75 + 56);
      v58 = (v75 + 32);
      v70 = v1;
      v60 = v5;
      v59 = v13;
      v69 = v15;
      v68 = v63 & 0xC000000000000001;
      v67 = v63 & 0xFFFFFFFFFFFFFF8;
      v66 = v63 + 32;
      do
      {
        if (v17)
        {
          v80 = MEMORY[0x1D38A1C30](v16, v63);
          v20 = __OFADD__(v16++, 1);
          if (v20)
          {
            goto LABEL_54;
          }
        }

        else
        {
          if (v16 >= *(v18 + 16))
          {
            goto LABEL_60;
          }

          v80 = *(v19 + 8 * v16);
          sub_1D2870F78();
          v20 = __OFADD__(v16++, 1);
          if (v20)
          {
LABEL_54:
            __break(1u);
            break;
          }
        }

        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          if (*(v1 + 56) == 1)
          {
            swift_getKeyPath();
            v21 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel___observationRegistrar;
            v22 = Strong;
            v81[0] = Strong;
            v23 = sub_1D2751114(qword_1EC6D8488, 255, type metadata accessor for StylePickerViewModel, &unk_1D289A8E0);
            sub_1D28719E8();

            v24 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__selectedItem;
            swift_beginAccess();
            v25 = v79;
            v73 = *v74;
            v73(v13, v22 + v24, v79);
            v26 = sub_1D2871F78();
            v71 = *v72;
            v71(v13, v25);
            if ((v26 & 1) != 0 && (swift_getKeyPath(), v81[0] = v22, sub_1D28719E8(), , sub_1D2870F78(), v27 = sub_1D23C6B54(), , v28 = *(v27 + 56), , v28 == 1))
            {
              v64 = v23;
              v76 = v21;
              __swift_project_boxed_opaque_existential_1((v22 + 16), *(v22 + 40));
              isUniquelyReferenced_nonNull_native = sub_1D23B7984();
              v29 = *(isUniquelyReferenced_nonNull_native + 16);
              if (v29)
              {
                v30 = isUniquelyReferenced_nonNull_native;
                v84 = MEMORY[0x1E69E7CC0];
                sub_1D2870F68();
                sub_1D23D81F8(0, v29, 0);
                v13 = v84;
                v31 = v30 + 32;
                v32 = v79;
                do
                {
                  sub_1D22D7044(v31, v81);
                  v33 = v82;
                  v34 = v83;
                  __swift_project_boxed_opaque_existential_1(v81, v82);
                  v35 = (*(v34 + 16))(v33, v34);
                  __swift_destroy_boxed_opaque_existential_0(v81);
                  v84 = v13;
                  v37 = *(v13 + 2);
                  v36 = *(v13 + 3);
                  if (v37 >= v36 >> 1)
                  {
                    sub_1D23D81F8((v36 > 1), v37 + 1, 1);
                    v13 = v84;
                  }

                  *(v13 + 2) = v37 + 1;
                  *&v13[8 * v37 + 32] = v35;
                  v31 += 40;
                  --v29;
                }

                while (v29);
              }

              else
              {
                v13 = MEMORY[0x1E69E7CC0];
                v32 = v79;
              }

              v5 = *(v13 + 2);
              v1 = v76;
              if (v5)
              {
                v39 = 0;
                v40 = MEMORY[0x1E69E7CC0];
                while (v39 < *(v13 + 2))
                {
                  v41 = *&v13[8 * v39 + 32];
                  v1 = *(v41 + 16);
                  v42 = v40[2];
                  v43 = v42 + v1;
                  if (__OFADD__(v42, v1))
                  {
                    goto LABEL_58;
                  }

                  sub_1D2870F68();
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  if (!isUniquelyReferenced_nonNull_native || v43 > v40[3] >> 1)
                  {
                    if (v42 <= v43)
                    {
                      v44 = v42 + v1;
                    }

                    else
                    {
                      v44 = v42;
                    }

                    isUniquelyReferenced_nonNull_native = sub_1D27CC780(isUniquelyReferenced_nonNull_native, v44, 1, v40);
                    v40 = isUniquelyReferenced_nonNull_native;
                  }

                  v32 = v79;
                  if (*(v41 + 16))
                  {
                    if ((v40[3] >> 1) - v40[2] < v1)
                    {
                      goto LABEL_61;
                    }

                    swift_arrayInitWithCopy();

                    if (v1)
                    {
                      v45 = v40[2];
                      v20 = __OFADD__(v45, v1);
                      v46 = v45 + v1;
                      if (v20)
                      {
                        goto LABEL_62;
                      }

                      v40[2] = v46;
                    }
                  }

                  else
                  {

                    if (v1)
                    {
                      goto LABEL_59;
                    }
                  }

                  ++v39;
                  v1 = v76;
                  if (v5 == v39)
                  {
                    goto LABEL_42;
                  }
                }

                __break(1u);
LABEL_58:
                __break(1u);
LABEL_59:
                __break(1u);
LABEL_60:
                __break(1u);
LABEL_61:
                __break(1u);
LABEL_62:
                __break(1u);
LABEL_63:
                __break(1u);
LABEL_64:
                v57 = isUniquelyReferenced_nonNull_native;
                v15 = sub_1D2879368();
                isUniquelyReferenced_nonNull_native = v57;
                goto LABEL_4;
              }

              v40 = MEMORY[0x1E69E7CC0];
LABEL_42:

              v5 = v40[2];
              if (v5)
              {
                v47 = 0;
                v62 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__allowedStyles;
                while (v47 < v40[2])
                {
                  v48 = (*(v75 + 80) + 32) & ~*(v75 + 80);
                  v13 = *(v75 + 72);
                  v49 = v47 + 1;
                  v73(v77, v40 + v48 + v13 * v47, v32);
                  swift_getKeyPath();
                  v50 = Strong;
                  v81[0] = Strong;
                  sub_1D28719E8();

                  v51 = *(v50 + v62);
                  v52 = *(v51 + 16);
                  v53 = v51 + v48;
                  sub_1D2870F68();
                  v54 = v52 + 1;
                  while (--v54)
                  {
                    sub_1D2751114(&qword_1ED8A6C08, 255, MEMORY[0x1E696E310], MEMORY[0x1E696E328]);
                    v53 += v13;
                    if (sub_1D2877F98())
                    {

                      v55 = v61;
                      (*v58)(v61, v77, v32);
                      v56 = 0;
                      goto LABEL_51;
                    }
                  }

                  isUniquelyReferenced_nonNull_native = (v71)(v77, v32);
                  v47 = v49;
                  v1 = v76;
                  if (v49 == v5)
                  {
                    goto LABEL_50;
                  }
                }

                goto LABEL_63;
              }

LABEL_50:

              v56 = 1;
              v55 = v61;
LABEL_51:
              (*v65)(v55, v56, 1, v32);
              sub_1D2644B70(v55);

              swift_unknownObjectRelease();
              isUniquelyReferenced_nonNull_native = sub_1D22BD238(v55, &qword_1EC6D9A30, &qword_1D287EFC0);
              v1 = v70;
              v5 = v60;
              v13 = v59;
              v15 = v69;
              v17 = v68;
              v18 = v67;
              v19 = v66;
            }

            else
            {
              swift_getKeyPath();
              v81[0] = v22;
              sub_1D28719E8();

              v38 = v79;
              v73(v5, v22 + v24, v79);
              (*v65)(v5, 0, 1, v38);
              sub_1D2644B70(v5);

              swift_unknownObjectRelease();
              isUniquelyReferenced_nonNull_native = sub_1D22BD238(v5, &qword_1EC6D9A30, &qword_1D287EFC0);
              v15 = v69;
              v17 = v68;
              v18 = v67;
              v19 = v66;
              v1 = v70;
            }
          }

          else
          {

            isUniquelyReferenced_nonNull_native = swift_unknownObjectRelease();
          }
        }

        else
        {
        }
      }

      while (v16 != v15);
    }
  }

  return result;
}

uint64_t sub_1D2750380()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_1D2750404(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  swift_allocObject();
  v4 = sub_1D2750E24(a1);

  *a2 = v4;
}

double sub_1D275045C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60, &qword_1D28811F0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  v9 = sub_1D28785F8();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_1D2878568();
  sub_1D2870F68();
  sub_1D2870F78();
  v10 = sub_1D2878558();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v3;
  v11[5] = a1;
  v11[6] = a2;
  sub_1D22AE01C(0, 0, v8, &unk_1D28A3998, v11);

  return result;
}

uint64_t sub_1D2750618(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D2879368();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D2879368();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D275115C(&qword_1EC6E16E0, &qword_1EC6E16D8, &qword_1D28A3970);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E16D8, &qword_1D28A3970);
            v9 = sub_1D23EC978(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1D22BCFD0(0, &unk_1EC6D74F0, 0x1E69787C8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D27507B8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D2879368();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D2879368();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D275115C(&qword_1EC6E1730, &qword_1EC6E1728, &qword_1D28A39D8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1728, &qword_1D28A39D8);
            v9 = sub_1D23ECA00(v13, i, a3);
            v11 = *v10;
            sub_1D2870F78();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE550, &qword_1D2895E10);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D2750954(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D2879368();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D2879368();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D275115C(&qword_1EC6E1700, &qword_1EC6E16F8, &qword_1D28A3988);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E16F8, &qword_1D28A3988);
            v9 = sub_1D23ECB30(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1D22BCFD0(0, &qword_1ED89CC40, 0x1E6978980);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D2750AF4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D2879368();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D2879368();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D275115C(&qword_1EC6E1710, &qword_1EC6DDFC8, &unk_1D2894BB0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDFC8, &unk_1D2894BB0);
            v9 = sub_1D23ECAA8(v13, i, a3);
            v11 = *v10;
            sub_1D2870F78();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for PhotoGridElementViewModel(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D2750C84(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D2879368();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D2879368();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D275115C(&qword_1EC6E16F0, &qword_1EC6E16E8, &qword_1D28A3978);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E16E8, &qword_1D28A3978);
            v9 = sub_1D23ECB30(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1D22BCFD0(0, &qword_1EC6D74E0, 0x1E6978630);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D2750E24(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D2872068();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v16[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69E7CC0];
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = v9;
  *(v2 + 56) = 1;
  *(v2 + 64) = v9;
  *(v2 + 16) = a1;
  (*(v5 + 104))(v8, *MEMORY[0x1E696E3A0], v4, v6);
  sub_1D2870F78();
  LOBYTE(a1) = sub_1D2872058();
  (*(v5 + 8))(v8, v4);
  if (a1)
  {
    sub_1D2873B58();
    sub_1D2873B48();
    sub_1D2751114(&qword_1EC6E16C8, v10, type metadata accessor for ExternalProviderInfoManager, &unk_1D28A3898);
    sub_1D2870F78();
    sub_1D2873B28();

    sub_1D2873B48();
    sub_1D2873B38();

    if (v17)
    {
      __swift_project_boxed_opaque_existential_1(v16, v17);
      v11 = sub_1D2873B68();
      __swift_destroy_boxed_opaque_existential_0(v16);
      v12 = v11 == 0;
    }

    else
    {
      sub_1D22BD238(v16, &qword_1EC6E16D0, &unk_1D28A38E0);
      v12 = 0;
    }

    v13 = *(v2 + 56);
    *(v2 + 56) = v12;
    sub_1D274F9F4(v13);
  }

  return v2;
}

uint64_t sub_1D275104C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D22BC8FC;

  return sub_1D274E994(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1D2751114(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1D275115C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1D27511B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2751218(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D2751278(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D27512E0(__int16 a1)
{
  sub_1D2879168();

  strcpy(v6, "objectName: ");
  BYTE5(v6[1]) = 0;
  HIWORD(v6[1]) = -5120;
  if (a1)
  {
    v2 = 0x6F6C42656E616C50;
  }

  else
  {
    v2 = 0x73676E69646E6962;
  }

  if (a1)
  {
    v3 = 0xE900000000000062;
  }

  else
  {
    v3 = 0xEC00000065646F4ELL;
  }

  MEMORY[0x1D38A0C50](v2, v3);

  MEMORY[0x1D38A0C50](0x747265706F72702FLL, 0xEF203A656D614E79);
  v4 = sub_1D27513EC(SHIBYTE(a1));
  MEMORY[0x1D38A0C50](v4);

  return v6[0];
}

unint64_t sub_1D27513EC(char a1)
{
  result = 0x7461526567616D69;
  switch(a1)
  {
    case 1:
      result = 0x69735F6567616D69;
      break;
    case 2:
      result = 0x6F705F656C707061;
      break;
    case 3:
      result = 0x63735F656C707061;
      break;
    case 4:
      result = 0x736F705F626F6C62;
      break;
    case 5:
      result = 0x6163735F626F6C62;
      break;
    case 6:
    case 26:
    case 44:
      result = 0xD000000000000012;
      break;
    case 7:
      v3 = 5;
      goto LABEL_29;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    case 13:
      result = 0xD000000000000010;
      break;
    case 14:
      result = 0xD000000000000010;
      break;
    case 15:
      result = 0xD000000000000010;
      break;
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
      result = 0xD000000000000014;
      break;
    case 25:
      result = 0x73736572676F7270;
      break;
    case 27:
      result = 0x646F4D746867696CLL;
      break;
    case 28:
      result = 0x725F6E6565726373;
      break;
    case 29:
      result = 0x5F79636E6574616CLL;
      break;
    case 30:
    case 33:
      result = 0xD000000000000016;
      break;
    case 31:
      result = 0xD000000000000018;
      break;
    case 32:
      result = 0xD000000000000017;
      break;
    case 34:
    case 45:
      v3 = 10;
LABEL_29:
      result = v3 | 0xD000000000000010;
      break;
    case 35:
      result = 0xD000000000000025;
      break;
    case 36:
      result = 0xD000000000000013;
      break;
    case 37:
      result = 0x67616D49776F6873;
      break;
    case 38:
      result = 0x6E65675F626F6C62;
      break;
    case 39:
      result = 0xD000000000000010;
      break;
    case 40:
      result = 0x6F74636172747461;
      break;
    case 41:
      result = 0x6F632E6567616D69;
      break;
    case 42:
      result = 0x625F656C63726963;
      break;
    case 43:
      result = 0x6F5F656C63726963;
      break;
    default:
      return result;
  }

  return result;
}

double sub_1D275186C@<D0>(__int16 a1@<W0>, _OWORD *a2@<X8>)
{
  v4 = sub_1D2873CB8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_1D2872668();
    v8 = sub_1D2873CA8();
    v9 = sub_1D2878A18();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19 = v11;
      *v10 = 136315138;
      v12 = sub_1D27512E0(a1 & 0xFF00 | 1u);
      v14 = sub_1D23D7C84(v12, v13, &v19);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_1D226E000, v8, v9, "No node for binding %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x1D38A3520](v11, -1, -1);
      MEMORY[0x1D38A3520](v10, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  else
  {
    v16 = sub_1D27513EC(SHIBYTE(a1));
    sub_1D2777570(v16, v17, a2);
  }

  return result;
}

void sub_1D2751A74(void *a1, uint64_t a2, double a3, uint64_t a4, void *a5)
{
  v6 = a2;
  v9 = sub_1D2873CB8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26[-2] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D2751D2C(a1, v6, a3);
  if (v13)
  {
    v14 = v13;
    [a1 bounds];
    *&v15 = CGRectGetWidth(v27);
    v25 = v15;
    [a1 bounds];
    Height = CGRectGetHeight(v28);
    *&v17.f64[0] = v25;
    v17.f64[1] = Height;
    v18 = [objc_opt_self() valueWithVFXFloat2_];
    v26[3] = sub_1D22BCFD0(0, &qword_1ED89CC90, 0x1E696B098);
    v26[0] = v18;
    v19 = v18;
    sub_1D2777178(v26, 0x69735F6567616D69, 0xEA0000000000657ALL, 1);
    __swift_destroy_boxed_opaque_existential_0(v26);
    swift_getObjectType();
    v26[0] = v14;
    swift_unknownObjectRetain();
    v20 = sub_1D2879608();
    v21 = sub_1D2878068();
    [a5 setValue:v20 forKeyPath:v21];

    swift_unknownObjectRelease_n();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1D2872668();
    v22 = sub_1D2873CA8();
    v23 = sub_1D2878A18();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1D226E000, v22, v23, "No content texture provided to load in blob's content", v24, 2u);
      MEMORY[0x1D38A3520](v24, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
  }
}

id sub_1D2751D2C(void *a1, char a2, double a3)
{
  v4 = v3;
  [a1 frame];
  if (v9 == 0.0 && v8 == 0.0)
  {
    return 0;
  }

  v10 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1B0]);
  v11 = MEMORY[0x1E69E7CC8];
  v38 = MEMORY[0x1E69E7CC8];
  v12 = sub_1D28780A8();
  v14 = v12;
  v15 = v13;
  if (v10)
  {
    type metadata accessor for CGColorSpace(0);
    v37 = v16;
    *&v36 = v10;
    sub_1D23C3FAC(&v36, v35);
    v17 = v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D24E935C(v35, v14, v15, isUniquelyReferenced_nonNull_native);

    v38 = v11;
  }

  else
  {
    sub_1D25D2C38(v12, v13, &v36);

    sub_1D22BD238(&v36, &qword_1EC6E1900, &qword_1D288CA00);
    v11 = v38;
  }

  v19 = sub_1D28780A8();
  v21 = v20;
  v37 = MEMORY[0x1E69E6370];
  LOBYTE(v36) = 1;
  sub_1D23C3FAC(&v36, v35);
  v22 = swift_isUniquelyReferenced_nonNull_native();
  sub_1D24E935C(v35, v19, v21, v22);

  v23 = sub_1D27552FC(*(v4 + 40), a3);
  if (!v23)
  {

    return 0;
  }

  v34 = v23;
  v24 = sub_1D275464C(v23, v11, a3);

  if (!v24)
  {
    swift_unknownObjectRelease();

    return 0;
  }

  v25 = *(v4 + 16);
  if (v25)
  {
    v26 = objc_opt_self();
    v27 = v25;
    [v26 begin];
    [v26 setDisableActions_];
    v28 = [v27 layer];
    if (v28 && (v29 = v28, sub_1D22BCFD0(0, &qword_1ED89CCB0, 0x1E6979398), v30 = a1, v31 = sub_1D2878D78(), v30, v29, (v31 & 1) != 0) && (a2 & 1) == 0)
    {
      v32 = &selRef_commit;
    }

    else
    {
      [v27 setLayer_];
      [v26 commit];
      v32 = &selRef_flush;
    }

    [v26 *v32];
  }

  [v24 beginFrameAtTime:0 timeStamp:CACurrentMediaTime()];
  [v24 updateBounds];
  [v24 addUpdateRect_];
  [v24 render];
  [v24 endFrame];

  return v34;
}

void sub_1D27520C0(void *a1)
{
  v2 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = sub_1D2879608();
  v4 = sub_1D2878068();
  [v2 setValue:v3 forKeyPath:v4];
  swift_unknownObjectRelease();
}

void sub_1D275215C()
{
  v1 = *(v0 + 8);
  v2 = sub_1D2878068();
  [v1 setValue:0 forKeyPath:v2];
}

void sub_1D27521D8()
{
  v1 = *(v0 + 16);
  *(v1 + 24) = 0;
  swift_unknownObjectRelease();
  v2 = *(v1 + 16);
  *(v1 + 16) = 0;
}

uint64_t sub_1D2752230(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6F6C42656E616C50;
  }

  else
  {
    v3 = 0x73676E69646E6962;
  }

  if (v2)
  {
    v4 = 0xEC00000065646F4ELL;
  }

  else
  {
    v4 = 0xE900000000000062;
  }

  if (*a2)
  {
    v5 = 0x6F6C42656E616C50;
  }

  else
  {
    v5 = 0x73676E69646E6962;
  }

  if (*a2)
  {
    v6 = 0xE900000000000062;
  }

  else
  {
    v6 = 0xEC00000065646F4ELL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D2879618();
  }

  return v8 & 1;
}

uint64_t sub_1D27522E4()
{
  sub_1D28797D8();
  sub_1D2877F38();

  return sub_1D2879828();
}

double sub_1D2752374(uint64_t a1)
{
  sub_1D2877F38();

  return result;
}

uint64_t sub_1D27523F0()
{
  sub_1D28797D8();
  sub_1D2877F38();

  return sub_1D2879828();
}

void sub_1D275247C(char *a2@<X8>)
{
  v3 = sub_1D2879488();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_1D27524DC(uint64_t *a1@<X8>)
{
  v2 = 0x73676E69646E6962;
  if (*v1)
  {
    v2 = 0x6F6C42656E616C50;
  }

  v3 = 0xEC00000065646F4ELL;
  if (*v1)
  {
    v3 = 0xE900000000000062;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D2752528(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1D27513EC(*a1);
  v5 = v4;
  if (v3 == sub_1D27513EC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D2879618();
  }

  return v8 & 1;
}

uint64_t sub_1D27525B0()
{
  v1 = *v0;
  sub_1D28797D8();
  sub_1D27513EC(v1);
  sub_1D2877F38();

  return sub_1D2879828();
}

double sub_1D2752614(uint64_t a1)
{
  sub_1D27513EC(*v1);
  sub_1D2877F38();

  return result;
}

uint64_t sub_1D2752668()
{
  v1 = *v0;
  sub_1D28797D8();
  sub_1D27513EC(v1);
  sub_1D2877F38();

  return sub_1D2879828();
}

unint64_t sub_1D27526C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D27552A8(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1D27526F8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1D27513EC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D2752724()
{
  v1 = *(v0 + 1);
  sub_1D28797D8();
  sub_1D2877F38();

  sub_1D27513EC(v1);
  sub_1D2877F38();

  return sub_1D2879828();
}

double sub_1D27527E8(uint64_t a1)
{
  v2 = *(v1 + 1);
  sub_1D2877F38();

  sub_1D27513EC(v2);
  sub_1D2877F38();

  return result;
}

uint64_t sub_1D275289C()
{
  v1 = *(v0 + 1);
  sub_1D28797D8();
  sub_1D2877F38();

  sub_1D27513EC(v1);
  sub_1D2877F38();

  return sub_1D2879828();
}

uint64_t *sub_1D2752988(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1770, &unk_1D28A3E98);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  *(v1 + 24) = 0;
  v7 = MEMORY[0x1E69E7CC0];
  *(v1 + 32) = sub_1D25DAAE0(MEMORY[0x1E69E7CC0]);
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  type metadata accessor for LayerRenderer();
  swift_allocObject();
  *(v1 + 64) = sub_1D275458C();
  *(v1 + 72) = 0;
  *(v1 + 80) = 0x4000000000000000;
  *(v1 + 88) = v7;
  *(v1 + 96) = v7;
  *(v1 + 104) = v7;
  sub_1D28738E8();
  sub_1D28738A8();
  v8 = sub_1D2873838();
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {

    sub_1D22BD238(v6, &unk_1EC6E1770, &unk_1D28A3E98);

    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    sub_1D22BD238(v6, &unk_1EC6E1770, &unk_1D28A3E98);
    *(v1 + 16) = a1;
    type metadata accessor for AnimationBezierCurveGenerator();
    swift_allocObject();
    *(v1 + 56) = sub_1D27544D0(60, 0x3F8000003ECCCCCDLL, 0x3F8000003F666666);
  }

  return v2;
}

double sub_1D2752B9C@<D0>(__int16 a1@<W0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1770, &unk_1D28A3E98);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_1D2873838();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v12 = *(v2 + 32);
  if (*(v12 + 16))
  {
    v13 = sub_1D25D100C(a1 & 0xFF01);
    if (v14)
    {
      sub_1D22D7044(*(v12 + 56) + 40 * v13, &v17);
      sub_1D22D79FC(&v17, v19);
      swift_endAccess();
LABEL_10:
      sub_1D22D79FC(v19, a2);
      return result;
    }
  }

  swift_endAccess();
  sub_1D28738E8();
  sub_1D28738A8();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1D22BD238(v7, &unk_1EC6E1770, &unk_1D28A3E98);
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0;
    return result;
  }

  (*(v9 + 32))(v11, v7, v8);
  if (a1)
  {
    sub_1D2879618();
  }

  sub_1D2873828();
  sub_1D27513EC(SHIBYTE(a1));
  sub_1D28737E8();

  if (v18)
  {
    sub_1D22D79FC(&v17, v19);
    sub_1D22D7044(v19, &v17);
    swift_beginAccess();
    sub_1D25CFF40(&v17, a1 & 0xFF01);
    swift_endAccess();
    (*(v9 + 8))(v11, v8);
    goto LABEL_10;
  }

  (*(v9 + 8))(v11, v8);
  sub_1D22BD238(&v17, &qword_1EC6E1750, &qword_1D2897350);
  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_1D2752F18(void *a1, char a2, double a3)
{
  *(v3 + 80) = a3;
  if ((*(v3 + 40) & 1) == 0)
  {
    v6 = a3;
    v7 = CACurrentMediaTime();
    a3 = v6;
    *(v3 + 48) = v7;
    *(v3 + 40) = 1;
  }

  result = sub_1D2751D2C(a1, a2 & 1, a3);
  if (result)
  {
    [a1 bounds];
    Width = CGRectGetWidth(v14);
    [a1 bounds];
    Height = CGRectGetHeight(v15);
    v10.f64[0] = Width;
    v10.f64[1] = Height;
    v11 = [objc_opt_self() valueWithVFXFloat2_];
    v13[3] = sub_1D22BCFD0(0, &qword_1ED89CC90, 0x1E696B098);
    v13[0] = v11;
    sub_1D2754BC0(v13, 256);
    __swift_destroy_boxed_opaque_existential_0(v13);
    result = swift_unknownObjectRelease();
  }

  if (*(v3 + 40) == 1)
  {
    *(v3 + 40) = 0;
  }

  return result;
}

void sub_1D2753044(uint64_t a1, uint64_t a2, int a3, int a4, double a5)
{
  v6 = v5;
  v87 = a3;
  v88 = a4;
  v86 = a2;
  v94 = sub_1D2873878();
  v9 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v93 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v92 = &v86 - v12;
  v13 = a1 + 64;
  v14 = 1 << *(a1 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a1 + 64);
  v99 = a1;
  sub_1D2870F68();
  swift_beginAccess();
  v17 = 0;
  v18 = 0;
  v19 = (v14 + 63) >> 6;
  v91 = *MEMORY[0x1E697A518];
  v89 = (v9 + 8);
  v90 = (v9 + 104);
  v20 = v16;
  v21 = MEMORY[0x1E69E7CC0];
  v103 = v6;
  v95 = v19;
  v96 = v13;
LABEL_4:
  v97 = v21;
LABEL_5:
  if (v20)
  {
    v22 = v17;
    v23 = v17;
    goto LABEL_15;
  }

  if (v19 <= v17 + 1)
  {
    v24 = v17 + 1;
  }

  else
  {
    v24 = v19;
  }

  v25 = v24 - 1;
  do
  {
    v23 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_121;
    }

    if (v23 >= v19)
    {
      v101 = 0;
      *&v113 = 0;
      v22 = v25;
      v111 = 0u;
      v112 = 0u;
      goto LABEL_16;
    }

    v20 = *(v13 + 8 * v23);
    ++v17;
  }

  while (!v20);
  v22 = v23;
LABEL_15:
  v101 = (v20 - 1) & v20;
  v26 = __clz(__rbit64(v20)) | (v23 << 6);
  v27 = (*(v99 + 48) + 2 * v26);
  v28 = *v27;
  v29 = v27[1];
  sub_1D23C3EE4(*(v99 + 56) + 32 * v26, &v109);
  LOBYTE(v111) = v28;
  BYTE1(v111) = v29;
  sub_1D23C3FAC(&v109, (&v111 + 8));
LABEL_16:
  v123[0] = v111;
  v123[1] = v112;
  v124 = v113;
  if (!v113)
  {
    goto LABEL_103;
  }

  v100 = v22;
  v30 = LOBYTE(v123[0]);
  v31 = BYTE1(v123[0]);
  sub_1D23C3FAC((v123 + 8), v122);
  v98 = v30 | (v31 << 8);
  sub_1D2752B9C(v30 | (v31 << 8), &v111);
  if (!*(&v112 + 1))
  {
    goto LABEL_124;
  }

  sub_1D22D79FC(&v111, v120);
  v32 = *(v6 + 11);
  if (!(v32 >> 62))
  {
    v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v34 = v33 - 1;
    if (!__OFSUB__(v33, 1))
    {
      goto LABEL_20;
    }

LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  v71 = sub_1D2879368();
  v34 = v71 - 1;
  if (__OFSUB__(v71, 1))
  {
    goto LABEL_121;
  }

LABEL_20:
  v102 = 0;
  while (1)
  {
    if (v34 > 0)
    {
      v35 = v34 - 1;
      goto LABEL_26;
    }

    if ((v34 != 0) | v102 & 1)
    {
      sub_1D23C3EE4(v122, &v111);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_76;
      }

      v60 = *&v109;
      sub_1D2752B9C(v98, &v109);
      if (v110)
      {
        sub_1D22D79FC(&v109, &v111);
        sub_1D28738E8();
        sub_1D28738C8();
        __swift_destroy_boxed_opaque_existential_0(&v111);
        if (*(&v119 + 1))
        {
          if (swift_dynamicCast())
          {
            if (vabds_f32(v60, *&v111) <= 0.0001)
            {
              __swift_destroy_boxed_opaque_existential_0(v122);
              __swift_destroy_boxed_opaque_existential_0(v120);
              v21 = v97;
LABEL_84:
              v19 = v95;
              v13 = v96;
              v17 = v100;
              v20 = v101;
              goto LABEL_5;
            }

            *(&v112 + 1) = MEMORY[0x1E69E6448];
            *(&v114 + 1) = MEMORY[0x1E69E6448];
            *&v113 = v60;
            sub_1D22D7044(v120, &v115);
            v21 = v97;
LABEL_96:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v21 = sub_1D27CD088(0, *(v21 + 16) + 1, 1, v21);
            }

            v73 = *(v21 + 16);
            v72 = *(v21 + 24);
            if (v73 >= v72 >> 1)
            {
              v21 = sub_1D27CD088((v72 > 1), v73 + 1, 1, v21);
            }

            __swift_destroy_boxed_opaque_existential_0(v122);
            *(v21 + 16) = v73 + 1;
            v74 = v21 + 104 * v73;
            v75 = v111;
            v76 = v113;
            *(v74 + 48) = v112;
            *(v74 + 64) = v76;
            *(v74 + 32) = v75;
            v77 = v114;
            v78 = v115;
            v79 = v116;
            *(v74 + 128) = v117;
            *(v74 + 96) = v78;
            *(v74 + 112) = v79;
            *(v74 + 80) = v77;
            __swift_destroy_boxed_opaque_existential_0(v120);
            v19 = v95;
            v13 = v96;
            v17 = v100;
            v20 = v101;
            goto LABEL_4;
          }

LABEL_76:
          __swift_project_boxed_opaque_existential_1(v120, v121);
          v61 = v92;
          sub_1D2873868();
          v62 = v93;
          v63 = v94;
          (*v90)(v93, v91, v94);
          sub_1D2754F18();
          sub_1D2878368();
          sub_1D2878368();
          v64 = *v89;
          (*v89)(v62, v63);
          v64(v61, v63);
          if (v111 != v109)
          {
            __swift_destroy_boxed_opaque_existential_0(v122);
            v21 = v97;
            goto LABEL_90;
          }

          sub_1D23C3EE4(v122, &v111);
          sub_1D22BCFD0(0, &qword_1ED89CC90, 0x1E696B098);
          v65 = swift_dynamicCast();
          v21 = v97;
          if (!v65)
          {
            goto LABEL_86;
          }

          v66 = v109;
          [v109 VFXFloat2Value];
          v68 = v67;

          sub_1D2752B9C(v98, &v109);
          if (!v110)
          {
            __swift_destroy_boxed_opaque_existential_0(v122);
            sub_1D22BD238(&v109, &qword_1EC6E1750, &qword_1D2897350);
            v118 = 0u;
            v119 = 0u;
            goto LABEL_89;
          }

          sub_1D22D79FC(&v109, &v111);
          sub_1D28738E8();
          sub_1D28738C8();
          __swift_destroy_boxed_opaque_existential_0(&v111);
          if (!*(&v119 + 1))
          {
            __swift_destroy_boxed_opaque_existential_0(v122);
LABEL_89:
            sub_1D22BD238(&v118, &qword_1EC6E1900, &qword_1D288CA00);
LABEL_90:
            v13 = v96;
            v20 = v101;
            __swift_destroy_boxed_opaque_existential_0(v120);
            v19 = v95;
            v17 = v100;
            goto LABEL_5;
          }

          v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1768, &qword_1D28A3E90);
          if ((swift_dynamicCast() & 1) == 0)
          {
LABEL_86:
            __swift_destroy_boxed_opaque_existential_0(v122);
            goto LABEL_90;
          }

          v70 = vsub_f32(v68, *&v111);
          if (fabsf(v70.f32[0]) <= 0.0001 && fabsf(v70.f32[1]) <= 0.0001)
          {
            __swift_destroy_boxed_opaque_existential_0(v122);
            __swift_destroy_boxed_opaque_existential_0(v120);
            goto LABEL_84;
          }

          *(&v112 + 1) = v69;
          *(&v114 + 1) = v69;
          *&v113 = v68;
          sub_1D22D7044(v120, &v115);
          goto LABEL_96;
        }
      }

      else
      {
        sub_1D22BD238(&v109, &qword_1EC6E1750, &qword_1D2897350);
        v118 = 0u;
        v119 = 0u;
      }

      sub_1D22BD238(&v118, &qword_1EC6E1900, &qword_1D288CA00);
      goto LABEL_76;
    }

    v35 = 0;
    v102 = 1;
LABEL_26:
    swift_beginAccess();
    v36 = *(v6 + 11);
    v106 = v35;
    if ((v36 & 0xC000000000000001) != 0)
    {
      v37 = MEMORY[0x1D38A1C30](v34);
    }

    else
    {
      if (v34 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_107:
        __break(1u);
LABEL_108:
        __break(1u);
LABEL_109:
        __break(1u);
LABEL_110:
        __break(1u);
LABEL_111:
        __break(1u);
LABEL_112:
        __break(1u);
LABEL_113:
        __break(1u);
        goto LABEL_114;
      }

      v37 = *(v36 + 8 * v34 + 32);
      sub_1D2870F78();
    }

    swift_endAccess();
    LOBYTE(v31) = v121;
    __swift_project_boxed_opaque_existential_1(v120, v121);
    v38 = sub_1D2873858();
    v40 = v39;
    swift_beginAccess();
    v6 = *(v37 + 16);
    sub_1D2870F68();
    v41 = sub_1D2755184(v6, v38, v40);
    if (v18)
    {
      break;
    }

    v21 = v41;
    v43 = v42;

    v104 = v34;
    v105 = 0;
    v107 = v37;
    if (v43)
    {
      v21 = *(v6 + 2);
      v44 = v21;
    }

    else
    {
      v108 = v38;
      v45 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_116;
      }

      v46 = *(v6 + 2);
      if (v45 != v46)
      {
        v53 = 104 * v21 + 136;
        v44 = v21 + 1;
        while ((v45 & 0x8000000000000000) == 0)
        {
          if (v44 >= v46)
          {
            goto LABEL_102;
          }

          sub_1D2754A20(&v6[v53], &v111);
          __swift_project_boxed_opaque_existential_1(&v115, *(&v116 + 1));
          if (sub_1D2873858() == v108 && v54 == v40)
          {

            sub_1D2754A58(&v111);
          }

          else
          {
            v56 = sub_1D2879618();

            sub_1D2754A58(&v111);
            if ((v56 & 1) == 0)
            {
              if (v44 != v21)
              {
                if ((v21 & 0x8000000000000000) != 0)
                {
                  goto LABEL_108;
                }

                v57 = *(v6 + 2);
                if (v21 >= v57)
                {
                  goto LABEL_109;
                }

                sub_1D2754A20(&v6[104 * v21 + 32], &v111);
                if (v44 >= v57)
                {
                  goto LABEL_110;
                }

                sub_1D2754A20(&v6[v53], &v109);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *(v107 + 16) = v6;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v6 = sub_1D278BDA8(v6);
                  *(v107 + 16) = v6;
                }

                if (v21 >= *(v6 + 2))
                {
                  goto LABEL_111;
                }

                sub_1D2755270(&v109, &v6[104 * v21 + 32]);
                v59 = v107;
                *(v107 + 16) = v6;
                if (v44 >= *(v6 + 2))
                {
                  goto LABEL_112;
                }

                sub_1D2755270(&v111, &v6[v53]);
                *(v59 + 16) = v6;
              }

              ++v21;
            }
          }

          ++v44;
          v46 = *(v6 + 2);
          v53 += 104;
          if (v44 == v46)
          {
            goto LABEL_35;
          }
        }

        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:

        if (*(v21 + 16))
        {
          if (v88 == 2)
          {
            sub_1D2870F78();
          }

LABEL_116:
          type metadata accessor for VisualEffectRENodes.VisualEffectFloatParameterAnimation();
          v80 = swift_allocObject();
          *(v80 + 24) = 0;
          *(v80 + 32) = 0;
          *(v80 + 40) = 1;
          *(v80 + 56) = 0;
          *(v80 + 64) = 0;
          swift_weakInit();
          *(v80 + 16) = v21;
          v81 = 1.0 / a5;
          *(v80 + 44) = v81;
          v82 = *&v86;
          v83 = v88;
          if (v87)
          {
            v82 = 0.0;
          }

          *(v80 + 48) = v82;
          *(v80 + 72) = v83;
          swift_weakAssign();

          v84 = swift_beginAccess();
          MEMORY[0x1D38A0E30](v84);
          if (*((*(v6 + 11) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v6 + 11) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
LABEL_119:
            sub_1D2878488();
            swift_endAccess();
            return;
          }

LABEL_122:
          sub_1D2878428();
          goto LABEL_119;
        }

LABEL_114:

        return;
      }

      v44 = v21 + 1;
LABEL_35:
      if (v44 < v21)
      {
        goto LABEL_107;
      }
    }

    v47 = v44;
    v48 = v107;
    sub_1D278CC00(v21, v47);
    swift_endAccess();

    if (*(*(v48 + 16) + 16))
    {
      v6 = v103;
      v49 = v104;
      v18 = v105;
      if (*(v48 + 24) != 1)
      {
        goto LABEL_21;
      }
    }

    else
    {
      *(v48 + 24) = 1;
      v6 = v103;
      v49 = v104;
      v18 = v105;
    }

    swift_beginAccess();
    v50 = *(v6 + 11);
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v50 < 0 || (v50 & 0x4000000000000000) != 0)
    {
      v50 = sub_1D278F320();
    }

    v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v49 >= v51)
    {
      goto LABEL_113;
    }

    v52 = v51 - 1;
    memmove(((v50 & 0xFFFFFFFFFFFFFF8) + 8 * v49 + 32), ((v50 & 0xFFFFFFFFFFFFFF8) + 8 * v49 + 40), 8 * (v51 - 1 - v49));
    *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) = v52;
    *(v6 + 11) = v50;
    swift_endAccess();

LABEL_21:

    v34 = v106;
  }

  swift_endAccess();
  __break(1u);
LABEL_124:
  sub_1D22BD238(&v111, &qword_1EC6E1750, &qword_1D2897350);
  *&v111 = 0;
  *(&v111 + 1) = 0xE000000000000000;
  sub_1D2879168();
  MEMORY[0x1D38A0C50](0xD000000000000034, 0x80000001D28C1760);
  v85 = sub_1D27513EC(v31);
  MEMORY[0x1D38A0C50](v85);

  sub_1D2879398();
  __break(1u);
}

uint64_t sub_1D2753D54()
{
  swift_beginAccess();
  v1 = v0[11];
  if (v1 >> 62)
  {
    goto LABEL_47;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v0; v2; i = v0)
  {
    v0 = v0[2];
    v31 = v1 & 0xFFFFFFFFFFFFFF8;
    v32 = v1 & 0xC000000000000001;
    v30 = v1 + 32;
    sub_1D2870F68();
    v3 = 0;
    while (v32)
    {
      v4 = MEMORY[0x1D38A1C30](v3, v1);
      v5 = __OFADD__(v3++, 1);
      if (v5)
      {
        goto LABEL_45;
      }

LABEL_11:
      swift_beginAccess();
      v6 = *(v4 + 16);
      v7 = *(v6 + 16);
      if (v7)
      {
        v8 = v1;
        v9 = v6 + 32;
        sub_1D2870F68();
        do
        {
          sub_1D2754A20(v9, v35);
          sub_1D23C3EE4(&v36, v34);
          sub_1D22D7044(&v37, v33);
          sub_1D2754A58(v35);
          sub_1D28738E8();
          sub_1D2873888();
          __swift_destroy_boxed_opaque_existential_0(v33);
          __swift_destroy_boxed_opaque_existential_0(v34);
          v9 += 104;
          --v7;
        }

        while (v7);

        v1 = v8;
      }

      *(v4 + 24) = 1;

      if (v3 == v2)
      {

        v0 = i;
        goto LABEL_16;
      }
    }

    if (v3 >= *(v31 + 16))
    {
      goto LABEL_46;
    }

    v4 = *(v30 + 8 * v3);
    sub_1D2870F78();
    v5 = __OFADD__(v3++, 1);
    if (!v5)
    {
      goto LABEL_11;
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    v2 = sub_1D2879368();
  }

LABEL_16:
  v10 = MEMORY[0x1E69E7CC0];
  v0[11] = MEMORY[0x1E69E7CC0];

  swift_beginAccess();
  v11 = v0[12];
  if (v11 >> 62)
  {
    v12 = sub_1D2879368();
    if (!v12)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
      goto LABEL_28;
    }
  }

  if (v12 < 1)
  {
    __break(1u);
    goto LABEL_56;
  }

  sub_1D2870F68();
  v13 = 0;
  do
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x1D38A1C30](v13, v11);
    }

    else
    {
      v16 = *(v11 + 8 * v13 + 32);
      sub_1D2870F78();
    }

    v17 = *(v16 + 32);
    if (v17)
    {
      v18 = *(v16 + 40);
      v19 = *(v16 + 52);
      v20 = sub_1D2870F78();
      v17(v20, v19);
      sub_1D22A576C(v17, v18);
      v14 = *(v16 + 32);
    }

    else
    {
      v14 = 0;
    }

    ++v13;
    *(v16 + 56) = 1;
    v15 = *(v16 + 40);
    *(v16 + 32) = 0;
    *(v16 + 40) = 0;
    sub_1D22A576C(v14, v15);
  }

  while (v12 != v13);

  v0 = i;
LABEL_28:
  v0[12] = v10;

  swift_beginAccess();
  v21 = v0[13];
  if (v21 >> 62)
  {
    v22 = sub_1D2879368();
    if (!v22)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v22)
    {
      goto LABEL_37;
    }
  }

  if (v22 < 1)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  sub_1D2870F68();
  v23 = 0;
  do
  {
    if ((v21 & 0xC000000000000001) != 0)
    {
      v24 = MEMORY[0x1D38A1C30](v23, v21);
    }

    else
    {
      v24 = *(v21 + 8 * v23 + 32);
      sub_1D2870F78();
    }

    ++v23;
    (*(v24 + 16))();
    *(v24 + 32) = 1;
  }

  while (v22 != v23);

  v0 = i;
LABEL_37:
  v0[13] = v10;

  v25 = v0[11];
  if (v25 >> 62)
  {
    if (sub_1D2879368())
    {
      return sub_1D2753D54();
    }
  }

  else if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return sub_1D2753D54();
  }

  v26 = v0[12];
  if (!(v26 >> 62))
  {
    if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return sub_1D2753D54();
    }

    goto LABEL_41;
  }

LABEL_57:
  if (sub_1D2879368())
  {
    return sub_1D2753D54();
  }

LABEL_41:
  v27 = v0[13];
  if (v27 >> 62)
  {
    result = sub_1D2879368();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  return sub_1D2753D54();
}

uint64_t sub_1D27541C8()
{

  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_1D2754208()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D2754240()
{

  sub_1D22A576C(*(v0 + 32), *(v0 + 40));

  return swift_deallocClassInstance();
}

void *sub_1D2754280()
{

  return v0;
}

uint64_t sub_1D27542D0()
{
  sub_1D2754280();

  return swift_deallocClassInstance();
}

double sub_1D27543BC@<D0>(__int16 a1@<W0>, _OWORD *a2@<X8>)
{
  sub_1D2752B9C(a1 & 0xFF01, &v4);
  if (v5)
  {
    sub_1D22D79FC(&v4, v6);
    sub_1D28738E8();
    sub_1D28738C8();
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  else
  {
    sub_1D22BD238(&v4, &qword_1EC6E1750, &qword_1D2897350);
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

void sub_1D2754458()
{
  v1 = *(*v0 + 64);
  *(v1 + 24) = 0;
  swift_unknownObjectRelease();
  v2 = *(v1 + 16);
  *(v1 + 16) = 0;
}

float32x2_t *sub_1D27544D0(uint64_t a1, float32x2_t a2, float32x2_t a3)
{
  v4 = MEMORY[0x1E69E7CC0];
  __asm { FMOV            V2.2S, #3.0 }

  v10 = vmul_f32(a2, _D2);
  v11 = vsub_f32(vmul_f32(vsub_f32(a3, a2), _D2), v10);
  __asm { FMOV            V1.2S, #1.0 }

  v3[3] = v11;
  v3[4] = v10;
  v3[2] = vsub_f32(vsub_f32(_D1, v10), v11);
  v3[5] = v4;
  v3[6] = a1;
  v3[5] = sub_1D2755538(a1);

  return v3;
}

uint64_t sub_1D2754530()
{

  return swift_deallocClassInstance();
}

void *sub_1D275458C()
{
  v0[2] = 0;
  v0[3] = 0;
  v0[4] = 71;
  if (qword_1ED8A4BA8 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED8B0258;
  v0[6] = qword_1ED8B0258;
  v0[7] = v1;
  v2 = MTLCreateSystemDefaultDevice();
  if (v2)
  {
    v0[5] = v2;
    return v0;
  }

  else
  {
    result = sub_1D2879398();
    __break(1u);
  }

  return result;
}

id sub_1D275464C(uint64_t a1, uint64_t a2, double a3)
{
  v4 = *(v3 + 16);
  v5 = v4;
  if (!v4)
  {
    sub_1D241748C(a2);
    v8 = sub_1D2877E78();

    v5 = [objc_opt_self() rendererWithMTLTexture:a1 options:v8];

    [v5 setBounds_];
    v9 = *(v3 + 16);
    *(v3 + 16) = v5;
    v10 = v5;
  }

  v11 = v4;
  return v5;
}

uint64_t sub_1D2754738()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1D27547C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D275480C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for VisualEffectBinding(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_1D275491C()
{
  result = qword_1EC6E1738;
  if (!qword_1EC6E1738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E1738);
  }

  return result;
}

unint64_t sub_1D2754974()
{
  result = qword_1EC6E1740;
  if (!qword_1EC6E1740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E1740);
  }

  return result;
}

unint64_t sub_1D27549CC()
{
  result = qword_1EC6E1748;
  if (!qword_1EC6E1748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E1748);
  }

  return result;
}

uint64_t sub_1D2754A88(__int16 a1, __int16 a2)
{
  v2 = HIBYTE(a2);
  v3 = HIBYTE(a1);
  v4 = (a1 & 1) == 0;
  if (a1)
  {
    v5 = 0x6F6C42656E616C50;
  }

  else
  {
    v5 = 0x73676E69646E6962;
  }

  if (v4)
  {
    v6 = 0xEC00000065646F4ELL;
  }

  else
  {
    v6 = 0xE900000000000062;
  }

  if (a2)
  {
    v7 = 0x6F6C42656E616C50;
  }

  else
  {
    v7 = 0x73676E69646E6962;
  }

  if (a2)
  {
    v8 = 0xE900000000000062;
  }

  else
  {
    v8 = 0xEC00000065646F4ELL;
  }

  if (v5 == v7 && v6 == v8)
  {
  }

  else
  {
    v9 = sub_1D2879618();

    v10 = 0;
    if ((v9 & 1) == 0)
    {
      return v10 & 1;
    }
  }

  v11 = sub_1D27513EC(v3);
  v13 = v12;
  if (v11 == sub_1D27513EC(v2) && v13 == v14)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1D2879618();
  }

  return v10 & 1;
}

uint64_t sub_1D2754BC0(uint64_t a1, __int16 a2)
{
  v4 = sub_1D2873878();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  sub_1D2752B9C(a2 & 0xFF01, &v20);
  if (!v21)
  {
    return sub_1D22BD238(&v20, &qword_1EC6E1750, &qword_1D2897350);
  }

  sub_1D22D79FC(&v20, v22);
  sub_1D23C3EE4(a1, &v20);
  v11 = MEMORY[0x1E69E6448];
  if (swift_dynamicCast())
  {
    v12 = *&v19;
  }

  else
  {
    sub_1D23C3EE4(a1, &v20);
    if (swift_dynamicCast())
    {
      v12 = *&v19;
    }

    else
    {
      sub_1D23C3EE4(a1, &v20);
      if (!swift_dynamicCast())
      {
        __swift_project_boxed_opaque_existential_1(v22, v22[3]);
        sub_1D2873868();
        (*(v5 + 104))(v7, *MEMORY[0x1E697A518], v4);
        sub_1D2754F18();
        sub_1D2878368();
        sub_1D2878368();
        v14 = *(v5 + 8);
        v14(v7, v4);
        v14(v10, v4);
        if (v20 == v19 && (sub_1D23C3EE4(a1, &v20), sub_1D22BCFD0(0, &qword_1ED89CC90, 0x1E696B098), (swift_dynamicCast() & 1) != 0))
        {
          v15 = v19;
          [v19 VFXFloat2Value];
          v17 = v16;
          v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1768, &qword_1D28A3E90);

          *&v20 = v17;
        }

        else
        {
          sub_1D23C3EE4(a1, &v20);
        }

        goto LABEL_10;
      }

      v12 = v19;
    }
  }

  v21 = v11;
  *&v20 = v12;
LABEL_10:
  sub_1D28738E8();
  sub_1D2873888();
  __swift_destroy_boxed_opaque_existential_0(&v20);
  return __swift_destroy_boxed_opaque_existential_0(v22);
}

unint64_t sub_1D2754F18()
{
  result = qword_1EC6E1758;
  if (!qword_1EC6E1758)
  {
    sub_1D2873878();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E1758);
  }

  return result;
}

double sub_1D2754F70(uint64_t a1, __int16 a2, char a3)
{
  v6 = sub_1D2873CB8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    sub_1D2872668();
    v10 = sub_1D2873CA8();
    v11 = sub_1D2878A18();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v21 = v13;
      *v12 = 136315138;
      v14 = sub_1D27512E0(a2 & 0xFF00 | 1u);
      v16 = sub_1D23D7C84(v14, v15, &v21);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_1D226E000, v10, v11, "No node for binding %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x1D38A3520](v13, -1, -1);
      MEMORY[0x1D38A3520](v12, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
  }

  else
  {
    v18 = sub_1D27513EC(SHIBYTE(a2));
    sub_1D2777178(a1, v18, v19, a3 & 1);
  }

  return result;
}

uint64_t sub_1D2755184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  for (i = (a1 + 96); ; i += 13)
  {
    __swift_project_boxed_opaque_existential_1(i, i[3]);
    if (sub_1D2873858() == a2 && v8 == a3)
    {
      break;
    }

    v10 = sub_1D2879618();

    if (v10)
    {
      return v6;
    }

    if (v3 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

unint64_t sub_1D27552A8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D2879698();

  if (v2 >= 0x2E)
  {
    return 46;
  }

  else
  {
    return v2;
  }
}

id sub_1D27552FC(void *a1, double a2)
{
  v3 = *(v2 + 24);
  if (v3)
  {
LABEL_11:
    swift_unknownObjectRetain();
    return v3;
  }

  result = objc_opt_self();
  v7 = *(v2 + 48) * a2;
  if (COERCE__INT64(fabs(v7)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = *(v2 + 56) * a2;
  if (COERCE__INT64(fabs(v8)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v8 < 9.22337204e18)
  {
    v9 = [result texture2DDescriptorWithPixelFormat:*(v2 + 32) width:v7 height:v8 mipmapped:0];
    [v9 setSampleCount_];
    [v9 setMipmapLevelCount_];
    [v9 setDepth_];
    [v9 setArrayLength_];
    [v9 setStorageMode_];
    [v9 setUsage_];
    v3 = [a1 newTextureWithDescriptor_];
    if (v3)
    {
      swift_unknownObjectRetain();
      v10 = sub_1D2878068();
      [v3 setLabel_];
      swift_unknownObjectRelease();
    }

    *(v2 + 24) = v3;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
  return result;
}

char *sub_1D2755538(uint64_t a1)
{
  v3 = 0;
  v4 = 0;
  v5 = a1;
  v6 = MEMORY[0x1E69E7CC0];
  v7 = a1 == 0;
  if (a1 <= 0)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = v4 + 1; ; i = a1)
  {
    v10 = v4 / v5;
    v11 = 0.0;
    if (v10 >= 0.0)
    {
      v11 = 1.0;
      if (v10 <= 1.0)
      {
        v12 = *(v1 + 16);
        v13 = *(v1 + 24);
        v14 = *(v1 + 32);
        v15 = v10 * (*&v14 + (v10 * ((v10 * *&v12) + *&v13)));
        if (vabds_f32(v15, v10) >= 0.00001)
        {
          v16 = 3.0 * *&v12;
          v17 = *&v13 + *&v13;
          v18 = *&v14 + (v10 * ((v10 * (3.0 * *&v12)) + (*&v13 + *&v13)));
          if (fabsf(v18) < 0.00001 || (v11 = v10 - ((v15 - v10) / v18), v24 = v11 * (*&v14 + (v11 * ((v11 * *&v12) + *&v13))), vabds_f32(v24, v10) >= 0.00001) && ((v30 = *&v14 + (v11 * ((v11 * v16) + v17)), fabsf(v30) < 0.00001) || (v11 = v11 - ((v24 - v10) / v30), v31 = v11 * (*&v14 + (v11 * ((v11 * *&v12) + *&v13))), vabds_f32(v31, v10) >= 0.00001) && ((v32 = *&v14 + (v11 * ((v11 * v16) + v17)), fabsf(v32) < 0.00001) || (v11 = v11 - ((v31 - v10) / v32), v33 = v11 * (*&v14 + (v11 * ((v11 * *&v12) + *&v13))), vabds_f32(v33, v10) >= 0.00001) && ((v34 = *&v14 + (v11 * ((v11 * v16) + v17)), fabsf(v34) < 0.00001) || (v11 = v11 - ((v33 - v10) / v34), v35 = v11 * (*&v14 + (v11 * ((v11 * *&v12) + *&v13))), vabds_f32(v35, v10) >= 0.00001) && ((v36 = *&v14 + (v11 * ((v11 * v16) + v17)), fabsf(v36) < 0.00001) || (v11 = v11 - ((v35 - v10) / v36), v37 = v11 * (*&v14 + (v11 * ((v11 * *&v12) + *&v13))), vabds_f32(v37, v10) >= 0.00001) && ((v38 = *&v14 + (v11 * ((v11 * v16) + v17)), fabsf(v38) < 0.00001) || (v11 = v11 - ((v37 - v10) / v38), v39 = v11 * (*&v14 + (v11 * ((v11 * *&v12) + *&v13))), vabds_f32(v39, v10) >= 0.00001) && ((v40 = *&v14 + (v11 * ((v11 * v16) + v17)), fabsf(v40) < 0.00001) || (v11 = v11 - ((v39 - v10) / v40), vabds_f32(v11 * (*&v14 + (v11 * ((v11 * *&v12) + *&v13))), v10) >= 0.00001))))))))
          {
            v19 = 1.0;
            v20 = 0.0;
            v21 = 512;
            v11 = v10;
            do
            {
              v22 = v11 * (*&v14 + (v11 * ((v11 * *&v12) + *&v13)));
              if (vabds_f32(v22, v10) < 0.00001)
              {
                break;
              }

              if ((v22 - v10) >= 0.0)
              {
                v19 = v11;
              }

              else
              {
                v20 = v11;
              }

              v11 = v20 + ((v19 - v20) * 0.5);
            }

            while (v20 < v19 && v21-- > 1);
          }
        }

        else
        {
          v11 = v4 / v5;
        }
      }
    }

    v25 = *(v1 + 20);
    v26 = *(v1 + 28);
    v27 = *(v1 + 36);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1D27CDA40(0, *(v6 + 2) + 1, 1, v6);
    }

    v29 = *(v6 + 2);
    v28 = *(v6 + 3);
    if (v29 >= v28 >> 1)
    {
      v6 = sub_1D27CDA40((v28 > 1), v29 + 1, 1, v6);
    }

    *(v6 + 2) = v29 + 1;
    *&v6[4 * v29 + 32] = v11 * (v27 + (v11 * ((v11 * v25) + v26)));
    v4 = i;
    v7 = i == a1;
    if (i < a1)
    {
      goto LABEL_2;
    }

LABEL_3:
    v9 = !v7;
    if ((v9 | v3))
    {
      break;
    }

    v3 = 1;
  }

  return v6;
}

id sub_1D2755968(void *a1)
{
  v2 = sub_1D2873CB8();
  v32 = *(v2 - 8);
  v33 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v32 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32 - v9;
  type metadata accessor for LayerRenderer();
  swift_allocObject();
  sub_1D275458C();
  v11 = [a1 rootNode];
  v12 = sub_1D2878068();
  v13 = [v11 childNodeWithName_];

  if (!v13)
  {
    sub_1D2872668();
    v23 = sub_1D2873CA8();
    v24 = sub_1D2878A18();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1D226E000, v23, v24, "Failed to load emmitter", v25, 2u);
      MEMORY[0x1D38A3520](v25, -1, -1);
    }

    (*(v32 + 8))(v10, v33);
    return 0;
  }

  v14 = [a1 rootNode];
  v15 = sub_1D2878068();
  v16 = [v14 childNodeWithName_];

  if (!v16)
  {
    sub_1D2872668();
    v26 = sub_1D2873CA8();
    v27 = sub_1D2878A18();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1D226E000, v26, v27, "Failed to load plane", v28, 2u);
      MEMORY[0x1D38A3520](v28, -1, -1);
    }

    else
    {
    }

    (*(v32 + 8))(v7, v33);
    return 0;
  }

  v17 = [v16 model];
  if (!v17)
  {
LABEL_19:
    sub_1D2872668();
    v29 = sub_1D2873CA8();
    v30 = sub_1D2878A18();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1D226E000, v29, v30, "Failed to load planeMaterial", v31, 2u);
      MEMORY[0x1D38A3520](v31, -1, -1);
    }

    else
    {
    }

    (*(v32 + 8))(v4, v33);
    return 0;
  }

  v18 = v17;
  v19 = [v17 materials];

  sub_1D22BCFD0(0, &unk_1ED89CDD8, 0x1E69DF2F8);
  v20 = sub_1D28783E8();

  if (!(v20 >> 62))
  {
    result = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

  result = sub_1D2879368();
  if (!result)
  {
LABEL_18:

    goto LABEL_19;
  }

LABEL_6:
  if ((v20 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1D38A1C30](0, v20);
    goto LABEL_9;
  }

  if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v22 = *(v20 + 32);
LABEL_9:

    return v13;
  }

  __break(1u);
  return result;
}

BOOL sub_1D2755E4C(void *a1)
{
  v2 = sub_1D2878068();
  v3 = [a1 valueForKeyPath_];

  if (v3)
  {
    sub_1D2879008();
    swift_unknownObjectRelease();
    sub_1D23C3FAC(&v5, v6);
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  sub_1D22BD238(v6, &qword_1EC6E1900, &qword_1D288CA00);
  return v3 != 0;
}

uint64_t sub_1D2755F30(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  sub_1D2879168();

  if (__OFADD__(a1, 1))
  {
    __break(1u);
  }

  else
  {
    v8 = sub_1D28795C8();
    MEMORY[0x1D38A0C50](v8);

    MEMORY[0x1D38A0C50](a3, a4);
    sub_1D2870F68();
    v9 = sub_1D27552A8(0x6F74636172747461, 0xE900000000000072);
    if (v9 != 46)
    {
      v10 = v9;

      return (v10 << 8);
    }
  }

  sub_1D2879168();

  MEMORY[0x1D38A0C50](0xD00000000000001CLL, 0x80000001D28C17A0);
  result = sub_1D2879398();
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for VisualEffectBinding.PropertyName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD3)
  {
    goto LABEL_17;
  }

  if (a2 + 45 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 45) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 45;
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

      return (*a1 | (v4 << 8)) - 45;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 45;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2E;
  v8 = v6 - 46;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VisualEffectBinding.PropertyName(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 45 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 45) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD3)
  {
    v4 = 0;
  }

  if (a2 > 0xD2)
  {
    v5 = ((a2 - 211) >> 8) + 1;
    *result = a2 + 45;
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
    *result = a2 + 45;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D2756214()
{
  result = qword_1EC6E1780;
  if (!qword_1EC6E1780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E1780);
  }

  return result;
}

unint64_t sub_1D275626C()
{
  result = qword_1EC6E1788;
  if (!qword_1EC6E1788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E1788);
  }

  return result;
}

uint64_t sub_1D27562CC()
{
  swift_getKeyPath();
  sub_1D2758C34();
  sub_1D28719E8();

  return *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__isCoveredByContent);
}

void sub_1D2756344(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__isCoveredByContent) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__isCoveredByContent) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2758C34();
    sub_1D28719D8();
  }
}

double sub_1D275642C()
{
  swift_getKeyPath();
  sub_1D2758C34();
  sub_1D28719E8();

  return *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__displayScale);
}

void sub_1D27564A4(double a1)
{
  if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__displayScale) == a1)
  {
    *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__displayScale) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2758C34();
    sub_1D28719D8();
  }
}

uint64_t sub_1D2756594()
{
  swift_getKeyPath();
  sub_1D2758C34();
  sub_1D28719E8();

  return swift_unknownObjectWeakLoadStrong();
}

void *sub_1D2756618()
{
  swift_getKeyPath();
  sub_1D2758C34();
  sub_1D28719E8();

  v1 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__vfxLoadingState);
  sub_1D233EDE0(v1, *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__vfxLoadingState + 8));
  return v1;
}

double sub_1D27566A8(char a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  sub_1D2758420(v1, sub_1D27591CC, v3);

  return result;
}

double sub_1D2756720()
{
  swift_getKeyPath();
  sub_1D2758C34();
  sub_1D28719E8();

  swift_beginAccess();
  sub_1D2870F68();
  return result;
}

double sub_1D27567B0()
{
  v1 = v0;
  v2 = sub_1D2873CB8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2872668();
  v6 = sub_1D2873CA8();
  v7 = sub_1D28789F8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1D226E000, v6, v7, "discardSceneManager", v8, 2u);
    MEMORY[0x1D38A3520](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v11[-4] = v1;
  *&v11[-3] = xmmword_1D28854B0;
  v11[1] = v1;
  sub_1D2758C34();
  sub_1D28719D8();

  return result;
}

double sub_1D2756990(uint64_t a1)
{
  v2 = sub_1D2873CB8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v18 = a1;
  sub_1D2758C34();
  sub_1D28719E8();

  v6 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__vfxLoadingState);
  if (v6 < 2)
  {
    swift_getKeyPath();
    v18 = a1;
    sub_1D28719E8();

    v18 = a1;
    swift_getKeyPath();
    sub_1D2871A08();

    v7 = OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__delayedJobs;
    swift_beginAccess();
    v8 = *(a1 + v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + v7) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1D27CCA60(0, v8[2] + 1, 1, v8);
      *(a1 + v7) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_1D27CCA60((v10 > 1), v11 + 1, 1, v8);
    }

    v8[2] = v11 + 1;
    v12 = &v8[2 * v11];
    v12[4] = sub_1D2757A80;
    v12[5] = 0;
    *(a1 + v7) = v8;
    swift_endAccess();
    v18 = a1;
    swift_getKeyPath();
    sub_1D28719F8();
    goto LABEL_12;
  }

  if (v6 != 2)
  {
    sub_1D233EDE0(v6, *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__vfxLoadingState + 8));
    sub_1D2769CA0(CGRectMake, 0);

LABEL_12:

    return result;
  }

  sub_1D2872668();
  v13 = sub_1D2873CA8();
  v14 = sub_1D2878A18();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1D226E000, v13, v14, "sceneManager is nil", v15, 2u);
    MEMORY[0x1D38A3520](v15, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return result;
}

double sub_1D2756CAC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60, &qword_1D28811F0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v35 - v3;
  v5 = sub_1D2873CB8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v35 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v35 - v13;
  sub_1D2872668();
  v15 = sub_1D2873CA8();
  v16 = sub_1D28789F8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1D226E000, v15, v16, "loadGenerationAnimatedEffectIfNeeded", v17, 2u);
    MEMORY[0x1D38A3520](v17, -1, -1);
  }

  v18 = *(v6 + 8);
  v18(v14, v5);
  if (sub_1D27EEA80())
  {
    sub_1D2872668();
    v19 = sub_1D2873CA8();
    v20 = sub_1D2878A38();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1D226E000, v19, v20, "Skipped loading VFX because we are running in unit tests or on unsupported platform", v21, 2u);
      MEMORY[0x1D38A3520](v21, -1, -1);
    }

    v18(v11, v5);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v35[-3] = 0;
    v35[-2] = 0;
    v35[-4] = v1;
    v36 = v1;
    sub_1D2758C34();
    sub_1D28719D8();
  }

  else
  {
    if (qword_1ED8A4928 != -1)
    {
      swift_once();
    }

    sub_1D23B7BB8();
    v24 = sub_1D2878A58();
    v25 = sub_1D2878068();
    v26 = [v24 BOOLForKey_];

    if ((v26 & 1) == 0)
    {
      swift_getKeyPath();
      v36 = v1;
      sub_1D2758C34();
      sub_1D28719E8();

      if (!*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__vfxLoadingState))
      {
        v27 = swift_getKeyPath();
        v35[1] = v35;
        MEMORY[0x1EEE9AC00](v27);
        v35[-4] = v1;
        *&v35[-3] = xmmword_1D2883070;
        v36 = v1;
        sub_1D28719D8();

        sub_1D2872668();
        v28 = sub_1D2873CA8();
        v29 = sub_1D2878A08();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          *v30 = 0;
          _os_log_impl(&dword_1D226E000, v28, v29, "SceneManager is loading…", v30, 2u);
          MEMORY[0x1D38A3520](v30, -1, -1);
        }

        v18(v8, v5);
        v31 = sub_1D28785F8();
        (*(*(v31 - 8) + 56))(v4, 1, 1, v31);
        sub_1D2878568();
        sub_1D2870F78();
        v32 = sub_1D2878558();
        v33 = swift_allocObject();
        v34 = MEMORY[0x1E69E85E0];
        v33[2] = v32;
        v33[3] = v34;
        v33[4] = v1;
        sub_1D22AE01C(0, 0, v4, &unk_1D28A4208, v33);
      }
    }
  }

  return result;
}

uint64_t sub_1D2757274@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2758C34();
  sub_1D28719E8();

  v4 = v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__delegate;
  result = swift_unknownObjectWeakLoadStrong();
  v6 = *(v4 + 8);
  *a2 = result;
  a2[1] = v6;
  return result;
}

double sub_1D2757300(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1D2758C34();
  sub_1D28719D8();

  return result;
}

void *sub_1D27573C8(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__vfxLoadingState);
  v4 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__vfxLoadingState);
  v5 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__vfxLoadingState + 8);
  *v3 = a2;
  v3[1] = a3;
  sub_1D233EDE0(a2, a3);
  return sub_1D233EE24(v4, v5);
}

void sub_1D2757494(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel_isAnimationPaused);
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 24) = v4;
  sub_1D277B970();
}

uint64_t sub_1D2757528(void *a1, const char *a2, void (*a3)(uint64_t), ...)
{
  v7 = v3;
  v8 = sub_1D2873CB8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2872668();
  sub_1D2870F78();
  v12 = sub_1D2873CA8();
  v13 = sub_1D28789F8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 67109120;
    *(v14 + 4) = *(v7 + *a1);

    _os_log_impl(&dword_1D226E000, v12, v13, a2, v14, 8u);
    MEMORY[0x1D38A3520](v14, -1, -1);
  }

  else
  {
  }

  (*(v9 + 8))(v11, v8);
  v15 = swift_allocObject();
  swift_weakInit();
  sub_1D2870F78();
  sub_1D2758DF8(v7, a3, v15);
}

void sub_1D27576F4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel_isBlurred);
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 25) = v4;
  sub_1D277BB4C();
}

double sub_1D2757760(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_isShowingError);
    *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_isShowingError) = *(Strong + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel_isShowingError);
    sub_1D2760028(v5);
  }

  return result;
}

uint64_t sub_1D27577E0(uint64_t a1, char a2)
{
  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_isCreating;
  *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_isCreating) = a2;
  sub_1D2758CD8(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController, &v8);
  if (v10)
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    sub_1D2758D34(&v8);
    v4 = *(&v12 + 1);
    if (*(&v12 + 1))
    {
LABEL_3:
      v5 = v13;
      __swift_project_boxed_opaque_existential_1(&v11, v4);
      v6 = *(a1 + v3);
      v9 = MEMORY[0x1E69E6370];
      LOBYTE(v8) = v6;
      (*(v5 + 8))(&v8, 7424, v4, v5);
      __swift_destroy_boxed_opaque_existential_0(&v8);
      return __swift_destroy_boxed_opaque_existential_0(&v11);
    }
  }

  else
  {
    sub_1D227268C(&v8, &v11);
    v4 = *(&v12 + 1);
    if (*(&v12 + 1))
    {
      goto LABEL_3;
    }
  }

  return sub_1D2758D88(&v11);
}

double sub_1D27578DC@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2758C34();
  sub_1D28719E8();

  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__delayedJobs;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  sub_1D2870F68();
  return result;
}

double sub_1D2757974(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1D2758C34();
  sub_1D28719D8();

  return result;
}

void sub_1D2757A10(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__delayedJobs;
  swift_beginAccess();
  *(a1 + v4) = a2;
  sub_1D2870F68();
}

uint64_t sub_1D2757ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  v5 = sub_1D2873CB8();
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  sub_1D2878568();
  v4[17] = sub_1D2878558();
  v7 = sub_1D28784F8();
  v4[18] = v7;
  v4[19] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D2757BBC, v7, v6);
}

uint64_t sub_1D2757BBC()
{
  v1 = *(v0 + 96);
  type metadata accessor for VisualEffectLoader();
  *(v0 + 184) = v1[17];
  v2 = v1[OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel_shouldUseVFXRenderingDelegate];
  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel_defaultAspectRatio;
  v4 = (*(*v1 + 416))();
  v5 = swift_task_alloc();
  *(v0 + 160) = v5;
  *v5 = v0;
  v5[1] = sub_1D2757CCC;

  return sub_1D275CD0C((v0 + 184), v2, &v1[v3], v4 & 1);
}

uint64_t sub_1D2757CCC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 168) = a1;
  *(v4 + 176) = a2;

  v5 = *(v3 + 152);
  v6 = *(v3 + 144);

  return MEMORY[0x1EEE6DFA0](sub_1D2757DF4, v6, v5);
}

uint64_t sub_1D2757DF4()
{
  v44 = v0;
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  v3 = *(v0 + 96);

  swift_getKeyPath();
  v4 = swift_task_alloc();
  v4[2] = v3;
  v4[3] = v1;
  v4[4] = v2;
  *(v0 + 64) = v3;
  sub_1D233EDE0(v1, v2);
  sub_1D2758C34();
  sub_1D28719D8();
  sub_1D233EE24(v1, v2);

  if (v1 >= 2)
  {
    if (v1 == 2)
    {
      sub_1D2872668();
      v7 = sub_1D2873CA8();
      v8 = sub_1D2878A08();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = *(v0 + 176);
        v11 = *(v0 + 112);
        v10 = *(v0 + 120);
        v12 = *(v0 + 104);
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_1D226E000, v7, v8, "SceneManager is shutting down", v13, 2u);
        MEMORY[0x1D38A3520](v13, -1, -1);

        sub_1D233EE24(2, v9);
        (*(v11 + 8))(v10, v12);
      }

      else
      {
        v40 = *(v0 + 112);
        v39 = *(v0 + 120);
        v41 = *(v0 + 104);

        (*(v40 + 8))(v39, v41);
      }
    }

    else
    {
      v15 = *(v0 + 168);
      v14 = *(v0 + 176);
      v16 = *(v0 + 96);
      swift_getKeyPath();
      *(v0 + 72) = v16;
      sub_1D28719E8();

      v17 = OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__delayedJobs;
      swift_beginAccess();
      v18 = *(v16 + v17);
      v19 = *(v18 + 16);
      if (v19)
      {
        sub_1D2870F68();
        v20 = v18 + 40;
        do
        {
          v21 = *(v20 - 8);
          v42 = v15;
          v43 = v14;
          sub_1D2870F78();
          v21(&v42, &v43);

          v20 += 16;
          --v19;
        }

        while (v19);
      }

      v22 = *(v0 + 96);
      swift_getKeyPath();
      v23 = swift_task_alloc();
      v24 = MEMORY[0x1E69E7CC0];
      *(v23 + 16) = v22;
      *(v23 + 24) = v24;
      *(v0 + 80) = v22;
      sub_1D28719D8();

      sub_1D2872668();
      v25 = sub_1D2873CA8();
      v26 = sub_1D2878A08();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_1D226E000, v25, v26, "SceneManager is loaded", v27, 2u);
        MEMORY[0x1D38A3520](v27, -1, -1);
      }

      v28 = *(v0 + 128);
      v30 = *(v0 + 104);
      v29 = *(v0 + 112);
      v31 = *(v0 + 96);

      (*(v29 + 8))(v28, v30);
      swift_getKeyPath();
      *(v0 + 88) = v31;
      sub_1D28719E8();

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v33 = Strong;
        swift_beginAccess();
        v34 = swift_unknownObjectWeakLoadStrong();
        v36 = *(v0 + 168);
        v35 = *(v0 + 176);
        if (v34)
        {
          v37 = *(v33 + 64);
          ObjectType = swift_getObjectType();
          (*(v37 + 48))(v33, ObjectType, v37);
          swift_unknownObjectRelease();
          sub_1D233EE24(v36, v35);
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
          sub_1D233EE24(v36, v35);
        }
      }

      else
      {
        sub_1D233EE24(*(v0 + 168), *(v0 + 176));
      }
    }
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t type metadata accessor for AbstractEffectViewModel(uint64_t a1)
{
  result = qword_1ED8A0C98;
  if (!qword_1ED8A0C98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D275830C(uint64_t a1)
{
  result = sub_1D2871DD8();
  if (v2 <= 0x3F)
  {
    result = sub_1D2871A28();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

double sub_1D2758420(uint64_t a1, void (*a2)(id), uint64_t a3)
{
  v6 = sub_1D2873CB8();
  v23 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  swift_getKeyPath();
  v24 = a1;
  sub_1D2758C34();
  sub_1D2870F78();
  sub_1D28719E8();

  v10 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__vfxLoadingState);
  if (v10 >= 2)
  {
    if (v10 == 2)
    {
      sub_1D2872668();
      v18 = sub_1D2873CA8();
      v19 = sub_1D2878A18();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_1D226E000, v18, v19, "sceneManager is nil", v20, 2u);
        MEMORY[0x1D38A3520](v20, -1, -1);
      }

      (*(v23 + 8))(v8, v6);
    }

    else
    {
      v21 = v10;
      sub_1D2870F78();
      a2(v21);
    }
  }

  else
  {
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1D2759384;
    *(v11 + 24) = v9;
    swift_getKeyPath();
    v24 = a1;
    sub_1D2870F78();
    sub_1D28719E8();

    v24 = a1;
    swift_getKeyPath();
    sub_1D2871A08();

    v12 = OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__delayedJobs;
    swift_beginAccess();
    v13 = *(a1 + v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + v12) = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_1D27CCA60(0, v13[2] + 1, 1, v13);
      *(a1 + v12) = v13;
    }

    v16 = v13[2];
    v15 = v13[3];
    if (v16 >= v15 >> 1)
    {
      v13 = sub_1D27CCA60((v15 > 1), v16 + 1, 1, v13);
    }

    v13[2] = v16 + 1;
    v17 = &v13[2 * v16];
    v17[4] = sub_1D2759388;
    v17[5] = v11;
    *(a1 + v12) = v13;
    swift_endAccess();
    v24 = a1;
    swift_getKeyPath();
    sub_1D28719F8();
  }

  return result;
}

double sub_1D27587B4(uint64_t a1, uint64_t a2, int a3, void (*a4)(__n128), uint64_t a5, unint64_t a6, unsigned int a7)
{
  v14 = sub_1D2873CB8();
  v37 = *(v14 - 8);
  v38 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  v33 = a3;
  *(v17 + 24) = a3;
  v34 = a4;
  v35 = a6;
  *(v17 + 32) = a4;
  *(v17 + 40) = a5;
  *(v17 + 48) = a6;
  v36 = a7;
  *(v17 + 56) = a7;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1D2758BF4;
  *(v18 + 24) = v17;
  swift_getKeyPath();
  v39 = a1;
  sub_1D2758C34();
  sub_1D2870F78();
  sub_1D2870F78();
  sub_1D2870F78();
  sub_1D28719E8();

  v19 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__vfxLoadingState);
  if (v19 >= 2)
  {
    if (v19 == 2)
    {
      sub_1D2872668();
      v27 = sub_1D2873CA8();
      v28 = sub_1D2878A18();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_1D226E000, v27, v28, "sceneManager is nil", v29, 2u);
        MEMORY[0x1D38A3520](v29, -1, -1);
      }

      (*(v37 + 8))(v16, v38);
    }

    else
    {
      v30 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__vfxLoadingState + 8);
      sub_1D2870F78();
      sub_1D2870F78();
      sub_1D233EDE0(v19, v30);
      sub_1D277F8B4(v19, a2, v33 & 1, v34, a5, v35, v36);
    }
  }

  else
  {
    v20 = swift_allocObject();
    *(v20 + 16) = sub_1D2758C0C;
    *(v20 + 24) = v18;
    swift_getKeyPath();
    v39 = a1;
    sub_1D2870F78();
    sub_1D28719E8();

    v39 = a1;
    swift_getKeyPath();
    sub_1D2871A08();

    v21 = OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__delayedJobs;
    swift_beginAccess();
    v22 = *(a1 + v21);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + v21) = v22;
    v38 = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v22 = sub_1D27CCA60(0, v22[2] + 1, 1, v22);
      *(a1 + v21) = v22;
    }

    v25 = v22[2];
    v24 = v22[3];
    if (v25 >= v24 >> 1)
    {
      v22 = sub_1D27CCA60((v24 > 1), v25 + 1, 1, v22);
    }

    v22[2] = v25 + 1;
    v26 = &v22[2 * v25];
    v26[4] = sub_1D2758C8C;
    v26[5] = v20;
    *(a1 + v21) = v22;
    swift_endAccess();
    v39 = a1;
    swift_getKeyPath();
    sub_1D28719F8();
  }

  return result;
}

unint64_t sub_1D2758C34()
{
  result = qword_1ED8A0CA8;
  if (!qword_1ED8A0CA8)
  {
    type metadata accessor for AbstractEffectViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A0CA8);
  }

  return result;
}

uint64_t sub_1D2758D88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1790, &qword_1D28A4830);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1D2758DF8(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v6 = sub_1D2873CB8();
  v24 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  swift_getKeyPath();
  v25 = a1;
  sub_1D2758C34();
  sub_1D2870F78();
  sub_1D28719E8();

  v10 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__vfxLoadingState);
  if (v10 >= 2)
  {
    if (v10 == 2)
    {
      sub_1D2872668();
      v18 = sub_1D2873CA8();
      v19 = sub_1D2878A18();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_1D226E000, v18, v19, "sceneManager is nil", v20, 2u);
        MEMORY[0x1D38A3520](v20, -1, -1);
      }

      (*(v24 + 8))(v8, v6);
    }

    else
    {
      v21 = v10;
      v22 = sub_1D2870F78();
      a2(v22);
    }
  }

  else
  {
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1D2759188;
    *(v11 + 24) = v9;
    swift_getKeyPath();
    v25 = a1;
    sub_1D2870F78();
    sub_1D28719E8();

    v25 = a1;
    swift_getKeyPath();
    sub_1D2871A08();

    v12 = OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__delayedJobs;
    swift_beginAccess();
    v13 = *(a1 + v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + v12) = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_1D27CCA60(0, v13[2] + 1, 1, v13);
      *(a1 + v12) = v13;
    }

    v16 = v13[2];
    v15 = v13[3];
    if (v16 >= v15 >> 1)
    {
      v13 = sub_1D27CCA60((v15 > 1), v16 + 1, 1, v13);
    }

    v13[2] = v16 + 1;
    v17 = &v13[2 * v16];
    v17[4] = sub_1D2759388;
    v17[5] = v11;
    *(a1 + v12) = v13;
    swift_endAccess();
    v25 = a1;
    swift_getKeyPath();
    sub_1D28719F8();
  }

  return result;
}

double sub_1D2759228()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__displayScale) = result;
  return result;
}

uint64_t sub_1D2759260(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D22BC8FC;

  return sub_1D2757ABC(a1, v4, v5, v6);
}

void *sub_1D2759314()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2] + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__vfxLoadingState;
  v4 = *v3;
  v5 = *(v3 + 8);
  *v3 = v1;
  *(v3 + 8) = v2;
  sub_1D233EDE0(v1, v2);
  return sub_1D233EE24(v4, v5);
}

uint64_t type metadata accessor for EffectView(uint64_t a1)
{
  result = qword_1ED8A5148;
  if (!qword_1ED8A5148)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D2759418(uint64_t a1)
{
  sub_1D27595BC(319, &qword_1ED89D058, type metadata accessor for AbstractEffectViewModel, MEMORY[0x1E6981AA0]);
  if (v1 <= 0x3F)
  {
    sub_1D27595BC(319, &qword_1ED89DFE8, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      sub_1D22EAE8C(319);
      if (v3 <= 0x3F)
      {
        sub_1D27595BC(319, &qword_1ED89E028, type metadata accessor for ObservableDebugSettings, MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          sub_1D27595BC(319, &qword_1ED89DFD0, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
          if (v5 <= 0x3F)
          {
            sub_1D24F8F5C();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1D27595BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D275963C(unsigned __int8 *a1@<X8>)
{
  sub_1D23B7BB8();
  v2 = sub_1D2878A58();
  v3 = sub_1D2878068();
  v4 = [v2 BOOLForKey_];

  *a1 = v4;
}

void sub_1D27596BC(unsigned __int8 *a1)
{
  sub_1D23B7BB8();
  v1 = sub_1D2878A58();
  v2 = sub_1D28784E8();
  v3 = sub_1D2878068();
  [v1 setValue:v2 forKey:v3];
}

void sub_1D2759758(unsigned __int8 *a1@<X8>)
{
  sub_1D23B7BB8();
  v2 = sub_1D2878A58();
  v3 = sub_1D2878068();
  v4 = [v2 BOOLForKey_];

  *a1 = v4;
}

void sub_1D27597D8(unsigned __int8 *a1)
{
  sub_1D23B7BB8();
  v1 = sub_1D2878A58();
  v2 = sub_1D28784E8();
  v3 = sub_1D2878068();
  [v1 setValue:v2 forKey:v3];
}

void sub_1D2759874(unsigned __int8 *a1@<X8>)
{
  sub_1D23B7BB8();
  v2 = sub_1D2878A58();
  v3 = sub_1D2878068();
  v4 = [v2 BOOLForKey_];

  *a1 = v4;
}

void sub_1D27598F4(unsigned __int8 *a1)
{
  sub_1D23B7BB8();
  v1 = sub_1D2878A58();
  v2 = sub_1D28784E8();
  v3 = sub_1D2878068();
  [v1 setValue:v2 forKey:v3];
}

uint64_t sub_1D2759990@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v2 = sub_1D2875628();
  v25 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v24 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for EffectView(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E17A0, &unk_1D28A4280);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  sub_1D2759D00(v1, &v22 - v9);
  sub_1D275C708(v1, &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for EffectView);
  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = swift_allocObject();
  sub_1D275BBD8(&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  v13 = &v10[*(v8 + 36)];
  *v13 = sub_1D275BC3C;
  v13[1] = v12;
  v13[2] = 0;
  v13[3] = 0;
  v14 = v1 + *(v5 + 44);
  v15 = *v14;
  if (*(v14 + 8) == 1)
  {
    v16 = *v14;
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v17 = sub_1D28762E8();
    v23 = v2;
    v18 = v17;
    sub_1D2873BE8();

    v19 = v24;
    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v15, 0);
    (*(v25 + 8))(v19, v23);
    v16 = v27;
  }

  v27 = v16;
  sub_1D275C708(v1, &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for EffectView);
  v20 = swift_allocObject();
  sub_1D275BBD8(&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v11);
  sub_1D275BD1C();
  sub_1D2403664();
  sub_1D2876F48();

  return sub_1D22BD238(v10, &qword_1EC6E17A0, &unk_1D28A4280);
}

uint64_t sub_1D2759D00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v153 = a2;
  v120 = type metadata accessor for VisualEffectViewRepresentable(0);
  MEMORY[0x1EEE9AC00](v120);
  v115 = &v107[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v144 = sub_1D2874438();
  v137 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v136 = &v107[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for EffectView(0);
  v131 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v134 = v6;
  v135 = &v107[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E17F0, &qword_1D28A4300);
  MEMORY[0x1EEE9AC00](v122);
  v128 = &v107[-v7];
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E17F8, &qword_1D28A4308);
  MEMORY[0x1EEE9AC00](v117);
  v118 = &v107[-v8];
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E17E8, &qword_1D28A42D0);
  MEMORY[0x1EEE9AC00](v121);
  v119 = &v107[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E17E0, &qword_1D28A42C8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v107[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v126 = &v107[-v14];
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E17D8, &qword_1D28A42C0);
  MEMORY[0x1EEE9AC00](v125);
  v124 = &v107[-v15];
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E17D0, &qword_1D28A42B8);
  MEMORY[0x1EEE9AC00](v123);
  v129 = &v107[-v16];
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E17C8, &qword_1D28A42B0);
  MEMORY[0x1EEE9AC00](v141);
  v130 = &v107[-v17];
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1800, &qword_1D28A4310);
  v132 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v138 = &v107[-v18];
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1808, &qword_1D28A4318);
  MEMORY[0x1EEE9AC00](v146);
  v147 = &v107[-v19];
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1810, &qword_1D28A4320);
  MEMORY[0x1EEE9AC00](v139);
  v140 = &v107[-v20];
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E17C0, &qword_1D28A42A8);
  MEMORY[0x1EEE9AC00](v145);
  v142 = &v107[-v21];
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E17B8, &qword_1D28A42A0);
  MEMORY[0x1EEE9AC00](v152);
  v148 = &v107[-v22];
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1818, &qword_1D28A4328);
  MEMORY[0x1EEE9AC00](v150);
  v151 = &v107[-v23];
  v24 = sub_1D2875628();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v107[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v133 = v5;
  v28 = *(v5 + 28);
  v149 = a1;
  v29 = a1 + v28;
  v30 = *v29;
  v31 = *(v29 + 8);
  if (v31 == 1)
  {
    v154 = *v29;
    sub_1D2870F78();
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v32 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();

    v25[1](v27, v24);
  }

  v116 = v25;
  v127 = v12;

  swift_getKeyPath();
  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  v33 = off_1ED8A4930;
  v34 = OBJC_IVAR____TtC23ImagePlaygroundInternal13DebugSettings___observationRegistrar;
  v154 = off_1ED8A4930;
  v35 = sub_1D275C348(&qword_1ED8A4920, type metadata accessor for DebugSettings, &protocol conformance descriptor for DebugSettings);
  v114 = v34;
  v113 = v35;
  sub_1D28719E8();
  v36 = sub_1D23B7BB8();
  sub_1D2870F78();
  v112 = v36;
  v37 = sub_1D2878A58();
  v38 = sub_1D2878068();
  v39 = [v37 BOOLForKey_];

  if (v39)
  {
    v40 = MEMORY[0x1E69E7CC0];
    v41 = v151;
    *v151 = 0xD000000000000011;
    v41[1] = 0x80000001D28C1940;
    *(v41 + 16) = 0;
    v41[3] = v40;
    swift_storeEnumTagMultiPayload();
    sub_1D275BEB8();
    return sub_1D2875AF8();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1798, &qword_1D28A4210);
  sub_1D2877618();
  v43 = v154;
  swift_getKeyPath();
  v154 = v43;
  sub_1D275C348(&qword_1ED8A0CA8, type metadata accessor for AbstractEffectViewModel, &unk_1D28A4108);
  sub_1D28719E8();

  v44 = *(v43 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__vfxLoadingState);
  v45 = *(v43 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__vfxLoadingState + 8);
  sub_1D233EDE0(v44, v45);

  if (v44 >= 2)
  {
    if (v44 == 2)
    {
      sub_1D2875798();
      if (qword_1ED89E0E8 != -1)
      {
        swift_once();
      }

      v57 = qword_1ED8B0058;
      v58 = sub_1D2876668();
      v59 = v147;
      *v147 = v58;
      v59[1] = v60;
      *(v59 + 16) = v61 & 1;
      v59[3] = v62;
      swift_storeEnumTagMultiPayload();
      sub_1D275BF44();
      v56 = v148;
      sub_1D2875AF8();
      goto LABEL_25;
    }

    v111 = v44;
    sub_1D2877618();
    v109 = v154;
    sub_1D2877618();
    v63 = v154;
    swift_getKeyPath();
    v154 = v63;
    sub_1D28719E8();

    v64 = *(v63 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__isCoveredByContent);

    if (v31)
    {
      v154 = v30;
      sub_1D2870F78();
    }

    else
    {
      sub_1D2870F78();
      sub_1D2878A28();
      v65 = sub_1D28762E8();
      sub_1D2873BE8();

      sub_1D2875618();
      swift_getAtKeyPath();

      v116[1](v27, v24);
    }

    v66 = v111;

    v67 = v66[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectType];
    v110 = v45;
    if (v67 > 1)
    {
    }

    else
    {
      v68 = sub_1D2879618();

      if ((v68 & 1) == 0)
      {
        v69 = *(v45 + 16);
        if (v69)
        {
          v70 = swift_allocObject();
          *(v70 + 16) = v69;
          swift_getKeyPath();
          v154 = v33;
          v116 = v69;
          sub_1D28719E8();
          swift_retain_n();
          v71 = sub_1D2878A58();
          v72 = sub_1D2878068();
          v108 = v64;
          v73 = v72;
          v74 = [v71 BOOLForKey_];

          LOBYTE(v73) = (*(*v109 + 472))();
          swift_getKeyPath();
          v154 = v33;
          sub_1D28719E8();
          v75 = sub_1D2878A58();
          v76 = sub_1D2878068();
          v77 = [v75 BOOLForKey_];

          v78 = v115;
          v79 = v111;
          *v115 = v111;
          *(v78 + 8) = sub_1D275C700;
          *(v78 + 16) = v70;
          *(v78 + 24) = v74;
          *(v78 + 25) = v73 & 1;
          *(v78 + 26) = v77 ^ 1;
          *(v78 + 27) = v108;
          *(v78 + 32) = swift_getKeyPath();
          *(v78 + 40) = 0;
          v80 = v120;
          v81 = *(v120 + 44);
          *(v78 + v81) = swift_getKeyPath();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1C40, &qword_1D2880030);
          swift_storeEnumTagMultiPayload();
          v82 = v78 + *(v80 + 48);
          *v82 = swift_getKeyPath();
          *(v82 + 8) = 0;
          sub_1D275C708(v78, v118, type metadata accessor for VisualEffectViewRepresentable);
          swift_storeEnumTagMultiPayload();
          sub_1D275C348(&qword_1ED89F078, type metadata accessor for VisualEffectViewRepresentable, &unk_1D28A4D30);
          v83 = v79;
          v84 = v119;
          sub_1D2875AF8();
          sub_1D275C770(v84, v128);
          swift_storeEnumTagMultiPayload();
          sub_1D275C28C();
          v85 = v127;
          sub_1D2875AF8();

          sub_1D22BD238(v84, &qword_1EC6E17E8, &qword_1D28A42D0);
          sub_1D275C7E0(v78);
        }

        else
        {
          swift_storeEnumTagMultiPayload();
          sub_1D275C28C();
          v85 = v127;
          sub_1D2875AF8();
        }

        goto LABEL_24;
      }
    }

    swift_storeEnumTagMultiPayload();
    sub_1D275C348(&qword_1ED89F078, type metadata accessor for VisualEffectViewRepresentable, &unk_1D28A4D30);
    v86 = v119;
    sub_1D2875AF8();
    sub_1D275C770(v86, v128);
    swift_storeEnumTagMultiPayload();
    sub_1D275C28C();
    v85 = v127;
    sub_1D2875AF8();

    sub_1D22BD238(v86, &qword_1EC6E17E8, &qword_1D28A42D0);
LABEL_24:
    v87 = v126;
    sub_1D22EC9BC(v85, v126, &qword_1EC6E17E0, &qword_1D28A42C8);
    v88 = v87;
    v89 = v124;
    sub_1D22EC9BC(v88, v124, &qword_1EC6E17E0, &qword_1D28A42C8);
    v89[*(v125 + 36)] = 0;
    v90 = v129;
    sub_1D22EC9BC(v89, v129, &qword_1EC6E17D8, &qword_1D28A42C0);
    v90[*(v123 + 36)] = 1;
    v91 = v149;
    v92 = v135;
    sub_1D275C708(v149, v135, type metadata accessor for EffectView);
    v93 = (*(v131 + 80) + 16) & ~*(v131 + 80);
    v94 = swift_allocObject();
    sub_1D275BBD8(v92, v94 + v93);
    v95 = v130;
    sub_1D22EC9BC(v90, v130, &qword_1EC6E17D0, &qword_1D28A42B8);
    v96 = v141;
    v97 = &v95[*(v141 + 36)];
    *v97 = sub_1D275C390;
    v97[1] = v94;
    v97[2] = 0;
    v97[3] = 0;
    v98 = v136;
    sub_1D24CC0E8(v136);
    sub_1D275C708(v91, v92, type metadata accessor for EffectView);
    v99 = swift_allocObject();
    sub_1D275BBD8(v92, v99 + v93);
    v100 = sub_1D275C05C();
    v101 = sub_1D275C348(&qword_1ED89E078, MEMORY[0x1E697DBD0], MEMORY[0x1E697DBE8]);
    v102 = v138;
    v103 = v144;
    sub_1D2876F58();

    (*(v137 + 8))(v98, v103);
    sub_1D22BD238(v95, &qword_1EC6E17C8, &qword_1D28A42B0);
    v104 = v132;
    v105 = v143;
    (*(v132 + 16))(v140, v102, v143);
    swift_storeEnumTagMultiPayload();
    v154 = v96;
    v155 = v103;
    v156 = v100;
    v157 = v101;
    swift_getOpaqueTypeConformance2();
    v106 = v142;
    sub_1D2875AF8();
    sub_1D22BD1D0(v106, v147, &qword_1EC6E17C0, &qword_1D28A42A8);
    swift_storeEnumTagMultiPayload();
    sub_1D275BF44();
    v56 = v148;
    sub_1D2875AF8();

    sub_1D22BD238(v106, &qword_1EC6E17C0, &qword_1D28A42A8);
    (*(v104 + 8))(v138, v105);
    goto LABEL_25;
  }

  v154 = 32;
  v155 = 0xE100000000000000;
  sub_1D22BD06C();
  v46 = sub_1D2876698();
  v48 = v47;
  v49 = v140;
  *v140 = v46;
  v49[1] = v47;
  v51 = v50 & 1;
  *(v49 + 16) = v50 & 1;
  v49[3] = v52;
  swift_storeEnumTagMultiPayload();
  sub_1D22BBFAC(v46, v48, v51);
  v53 = sub_1D275C05C();
  v54 = sub_1D275C348(&qword_1ED89E078, MEMORY[0x1E697DBD0], MEMORY[0x1E697DBE8]);
  sub_1D2870F68();
  v154 = v141;
  v155 = v144;
  v156 = v53;
  v157 = v54;
  swift_getOpaqueTypeConformance2();
  v55 = v142;
  sub_1D2875AF8();
  sub_1D22BD1D0(v55, v147, &qword_1EC6E17C0, &qword_1D28A42A8);
  swift_storeEnumTagMultiPayload();
  sub_1D275BF44();
  v56 = v148;
  sub_1D2875AF8();
  sub_1D22ED6E0(v46, v48, v51);

  sub_1D22BD238(v55, &qword_1EC6E17C0, &qword_1D28A42A8);
LABEL_25:
  sub_1D22BD1D0(v56, v151, &qword_1EC6E17B8, &qword_1D28A42A0);
  swift_storeEnumTagMultiPayload();
  sub_1D275BEB8();
  sub_1D2875AF8();
  return sub_1D22BD238(v56, &qword_1EC6E17B8, &qword_1D28A42A0);
}

double sub_1D275B490(uint64_t a1, uint64_t a2, void (*a3)(id))
{
  v27 = a2;
  v28 = a3;
  v26 = sub_1D2874EA8();
  v4 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v25[0] = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v25 - v7);
  v9 = sub_1D2874438();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (v25 - v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1798, &qword_1D28A4210);
  sub_1D2877618();
  v16 = v29;
  type metadata accessor for EffectView(0);
  v25[1] = a1;
  sub_1D24CC0E8(v15);
  if (v16[16])
  {
    v17 = 0;
  }

  else
  {
    (*(v10 + 104))(v12, *MEMORY[0x1E697DBB8], v9);
    v17 = sub_1D2874428();
    (*(v10 + 8))(v12, v9);
  }

  (*(*v16 + 408))(v17 & 1);

  (*(v10 + 8))(v15, v9);
  sub_1D2877618();
  v18 = v29;
  sub_1D24CC6D4(v8);
  v19 = v25[0];
  v20 = v26;
  (*(v4 + 104))(v25[0], *MEMORY[0x1E697E7D8], v26);
  v21 = sub_1D2874E98();
  v22 = *(v4 + 8);
  v22(v19, v20);
  v22(v8, v20);
  v23 = swift_allocObject();
  *(v23 + 16) = v21 & 1;
  sub_1D2758420(v18, v28, v23);

  return result;
}

void sub_1D275B7D8(uint64_t a1)
{
  v2 = sub_1D2875628();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1798, &qword_1D28A4210);
  sub_1D2877618();
  sub_1D2756CAC();

  sub_1D2877618();
  v6 = v13;
  v7 = a1 + *(type metadata accessor for EffectView(0) + 36);
  v8 = *v7;
  if (*(v7 + 8) == 1)
  {
    v9 = *v7;
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v10 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v8, 0);
    (*(v3 + 8))(v5, v2);
    v9 = v13;
  }

  if (*(*&v6 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__displayScale) == v9)
  {
    *(*&v6 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__displayScale) = v9;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v12 - 2) = v6;
    *(&v12 - 1) = v9;
    v13 = v6;
    sub_1D275C348(&qword_1ED8A0CA8, type metadata accessor for AbstractEffectViewModel, &unk_1D28A4108);
    sub_1D28719D8();
  }
}

void sub_1D275BA80(uint64_t a1, double *a2)
{
  v2 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1798, &qword_1D28A4210);
  sub_1D2877618();
  if (*(v4 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__displayScale) == v2)
  {
    *(v4 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__displayScale) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D275C348(&qword_1ED8A0CA8, type metadata accessor for AbstractEffectViewModel, &unk_1D28A4108);
    sub_1D28719D8();
  }
}

uint64_t sub_1D275BBD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EffectView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D275BC3C()
{
  v1 = *(type metadata accessor for EffectView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_1D275B7D8(v2);
}

void sub_1D275BC9C(uint64_t a1, double *a2)
{
  type metadata accessor for EffectView(0);

  sub_1D275BA80(a1, a2);
}

unint64_t sub_1D275BD1C()
{
  result = qword_1ED89DC10;
  if (!qword_1ED89DC10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E17A0, &unk_1D28A4280);
    sub_1D275BDA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DC10);
  }

  return result;
}

unint64_t sub_1D275BDA8()
{
  result = qword_1ED89D238;
  if (!qword_1ED89D238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E17A8, &qword_1D28A4290);
    sub_1D275BE2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D238);
  }

  return result;
}

unint64_t sub_1D275BE2C()
{
  result = qword_1ED89D5B8;
  if (!qword_1ED89D5B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E17B0, &qword_1D28A4298);
    sub_1D275BEB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D5B8);
  }

  return result;
}

unint64_t sub_1D275BEB8()
{
  result = qword_1ED89D520;
  if (!qword_1ED89D520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E17B8, &qword_1D28A42A0);
    sub_1D275BF44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D520);
  }

  return result;
}

unint64_t sub_1D275BF44()
{
  result = qword_1ED89D5C0;
  if (!qword_1ED89D5C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E17C0, &qword_1D28A42A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E17C8, &qword_1D28A42B0);
    sub_1D2874438();
    sub_1D275C05C();
    sub_1D275C348(&qword_1ED89E078, MEMORY[0x1E697DBD0], MEMORY[0x1E697DBE8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D5C0);
  }

  return result;
}

unint64_t sub_1D275C05C()
{
  result = qword_1ED89D940;
  if (!qword_1ED89D940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E17C8, &qword_1D28A42B0);
    sub_1D275C0E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D940);
  }

  return result;
}

unint64_t sub_1D275C0E8()
{
  result = qword_1ED89DB08;
  if (!qword_1ED89DB08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E17D0, &qword_1D28A42B8);
    sub_1D275C174();
    sub_1D250C854();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DB08);
  }

  return result;
}

unint64_t sub_1D275C174()
{
  result = qword_1ED89DDB8;
  if (!qword_1ED89DDB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E17D8, &qword_1D28A42C0);
    sub_1D275C200();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DDB8);
  }

  return result;
}

unint64_t sub_1D275C200()
{
  result = qword_1ED89D4F8;
  if (!qword_1ED89D4F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E17E0, &qword_1D28A42C8);
    sub_1D275C28C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D4F8);
  }

  return result;
}

unint64_t sub_1D275C28C()
{
  result = qword_1ED89D540;
  if (!qword_1ED89D540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E17E8, &qword_1D28A42D0);
    sub_1D275C348(&qword_1ED89F078, type metadata accessor for VisualEffectViewRepresentable, &unk_1D28A4D30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D540);
  }

  return result;
}

uint64_t sub_1D275C348(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroyTm_33()
{
  v1 = type metadata accessor for EffectView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1798, &qword_1D28A4210);
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1C40, &qword_1D2880030);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1D2874438();
    (*(*(v5 - 8) + 8))(v2 + v4, v5);
  }

  else
  {
  }

  v6 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690, &qword_1D287F5B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1D2875E18();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v2 + v6, 1, v7))
    {
      (*(v8 + 8))(v2 + v6, v7);
    }
  }

  else
  {
  }

  v9 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1C50, &qword_1D288EB20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1D2874EA8();
    (*(*(v10 - 8) + 8))(v2 + v9, v10);
  }

  else
  {
  }

  sub_1D2273818(*(v2 + v1[9]), *(v2 + v1[9] + 8));

  return swift_deallocObject();
}

uint64_t sub_1D275C708(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D275C770(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E17E8, &qword_1D28A42D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D275C7E0(uint64_t a1)
{
  v2 = type metadata accessor for VisualEffectViewRepresentable(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D275C860(uint64_t a1, uint64_t *a2)
{
  v37 = sub_1D2873CB8();
  v4 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v43 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D2871908();
  v40 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v41 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D2871988();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1920, &qword_1D28A1100);
  v13 = v12 - 8;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v34 - v15;
  (*(v9 + 16))(v11, a1, v8, v14);
  v17 = v8;
  v18 = MEMORY[0x1E6969B50];
  sub_1D2775F90(&qword_1ED8A6C60, MEMORY[0x1E6969B50], MEMORY[0x1E6969B78]);
  sub_1D2878318();
  v19 = *(v13 + 44);
  v20 = sub_1D2775F90(&unk_1ED8A6C50, v18, MEMORY[0x1E6969B88]);
  ++v40;
  v36 = (v4 + 8);
  *&v21 = 134217984;
  v35 = v21;
  v38 = v19;
  v39 = v17;
  while (1)
  {
    v24 = v41;
    sub_1D2878868();
    sub_1D2775F90(&unk_1ED8A6C70, MEMORY[0x1E6969B18], MEMORY[0x1E6969B28]);
    v25 = sub_1D2877F98();
    (*v40)(v24, v6);
    if (v25)
    {
      break;
    }

    v26 = sub_1D28788B8();
    v28 = *v27;
    v26(v42, 0);
    v29 = v20;
    sub_1D2878878();
    sub_1D2872668();
    v30 = sub_1D2873CA8();
    v31 = sub_1D2878A08();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = v35;
      *(v32 + 4) = v28;
      _os_log_impl(&dword_1D226E000, v30, v31, "indicesToRemove index: %ld VFX attractor - showAttractors: false", v32, 0xCu);
      MEMORY[0x1D38A3520](v32, -1, -1);
    }

    (*v36)(v43, v37);
    v22 = sub_1D2755514(v28);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42[0] = *a2;
    *a2 = 0x8000000000000000;
    sub_1D24EA42C(v22 & 0xFF01, isUniquelyReferenced_nonNull_native, 0.0);
    *a2 = v42[0];

    v20 = v29;
  }

  return sub_1D22BD238(v16, &unk_1EC6E1920, &qword_1D28A1100);
}

uint64_t sub_1D275CD0C(_BYTE *a1, char a2, uint64_t a3, char a4)
{
  *(v5 + 377) = a4;
  *(v5 + 16) = a3;
  *(v5 + 24) = v4;
  *(v5 + 376) = a2;
  v7 = sub_1D2873CB8();
  *(v5 + 32) = v7;
  *(v5 + 40) = *(v7 - 8);
  *(v5 + 48) = swift_task_alloc();
  *(v5 + 56) = swift_task_alloc();
  v8 = sub_1D2871DD8();
  *(v5 + 64) = v8;
  *(v5 + 72) = *(v8 - 8);
  *(v5 + 80) = swift_task_alloc();
  v9 = sub_1D2873C58();
  *(v5 + 88) = v9;
  *(v5 + 96) = *(v9 - 8);
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 112) = swift_task_alloc();
  *(v5 + 120) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1770, &unk_1D28A3E98);
  *(v5 + 128) = swift_task_alloc();
  *(v5 + 136) = swift_task_alloc();
  v10 = sub_1D2873838();
  *(v5 + 144) = v10;
  *(v5 + 152) = *(v10 - 8);
  *(v5 + 160) = swift_task_alloc();
  v11 = sub_1D2873C28();
  *(v5 + 168) = v11;
  *(v5 + 176) = *(v11 - 8);
  *(v5 + 184) = swift_task_alloc();
  *(v5 + 192) = swift_task_alloc();
  *(v5 + 200) = swift_task_alloc();
  *(v5 + 208) = swift_task_alloc();
  *(v5 + 216) = swift_task_alloc();
  v12 = sub_1D2873C48();
  *(v5 + 224) = v12;
  *(v5 + 232) = *(v12 - 8);
  *(v5 + 240) = swift_task_alloc();
  *(v5 + 378) = *a1;
  sub_1D2878568();
  *(v5 + 248) = sub_1D2878558();
  v14 = sub_1D28784F8();
  *(v5 + 256) = v14;
  *(v5 + 264) = v13;

  return MEMORY[0x1EEE6DFA0](sub_1D275D078, v14, v13);
}

uint64_t sub_1D275D078(uint64_t a1)
{
  v82 = v1;
  sub_1D28720E8();
  sub_1D2873C38();
  sub_1D2873BF8();
  v2 = sub_1D2873C38();
  v3 = sub_1D2878BB8();
  if (sub_1D2878EE8())
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v81[0] = v5;
    *v4 = 136315138;
    v6 = sub_1D2879198();
    v8 = sub_1D23D7C84(v6, v7, v81);

    *(v4 + 4) = v8;
    v9 = sub_1D2873C08();
    _os_signpost_emit_with_name_impl(&dword_1D226E000, v2, v3, v9, "EffectWorldWarming", "%s - start", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1D38A3520](v5, -1, -1);
    MEMORY[0x1D38A3520](v4, -1, -1);
  }

  v10 = *(v1 + 378);
  v12 = *(v1 + 208);
  v11 = *(v1 + 216);
  v13 = *(v1 + 168);
  v14 = *(v1 + 176);
  v15 = *(v14 + 16);
  *(v1 + 272) = v15;
  *(v1 + 280) = (v14 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v15(v12, v11, v13);
  *(v1 + 288) = sub_1D2873C88();
  swift_allocObject();
  *(v1 + 296) = sub_1D2873C78();
  v16 = v10 != 0;
  v17 = sub_1D2879618();

  if (v17)
  {
    sub_1D275F2D4(v16, *(v1 + 136));
    v18 = *(v1 + 144);
    v19 = *(v1 + 152);
    v20 = *(v1 + 136);
    v23 = *(v1 + 160);
    v24 = *(v1 + 128);
    v25 = *(v19 + 56);
    v25(v20, 0, 1, v18);
    (*(v19 + 32))(v23, v20, v18);
    sub_1D28738E8();
    swift_allocObject();
    v26 = sub_1D28738D8();
    (*(v19 + 16))(v24, v23, v18);
    v25(v24, 0, 1, v18);
    sub_1D28738B8();
    (*(v19 + 8))(v23, v18);
    *(v1 + 320) = v26;
    *(v1 + 328) = 0;
    v27 = sub_1D2873C38();
    sub_1D2873C68();
    v28 = sub_1D2878BA8();
    v29 = sub_1D2878EE8();
    if (v29)
    {
      v79 = v28;
      v30 = *(v1 + 120);
      v32 = *(v1 + 88);
      v31 = *(v1 + 96);
      sub_1D2870F78();
      sub_1D2873C98();

      if ((*(v31 + 88))(v30, v32) == *MEMORY[0x1E69E93E8])
      {
        v33 = 0;
        v34 = 0;
        v75 = "[Error] Interval already ended";
      }

      else
      {
        (*(*(v1 + 96) + 8))(*(v1 + 120), *(v1 + 88));
        v75 = "%s - end";
        v34 = 2;
        v33 = 1;
      }

      v39 = *(v1 + 200);
      v40 = *(v1 + 176);
      v77 = *(v1 + 168);
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v81[0] = v42;
      *v41 = v34;
      *(v41 + 1) = v33;
      *(v41 + 2) = 2080;
      v43 = sub_1D2879198();
      v45 = sub_1D23D7C84(v43, v44, v81);

      *(v41 + 4) = v45;
      v46 = sub_1D2873C08();
      _os_signpost_emit_with_name_impl(&dword_1D226E000, v27, v79, v46, "EffectWorldWarming", v75, v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x1D38A3520](v42, -1, -1);
      MEMORY[0x1D38A3520](v41, -1, -1);

      v38 = *(v40 + 8);
      v38(v39, v77);
    }

    else
    {
      v35 = *(v1 + 200);
      v36 = *(v1 + 168);
      v37 = *(v1 + 176);

      v38 = *(v37 + 8);
      v38(v35, v36);
    }

    *(v1 + 336) = v38;
    v47 = *(v1 + 72);
    v48 = *(v1 + 80);
    v49 = *(v1 + 64);
    v50 = *(v1 + 377);
    v51 = *(v1 + 16);
    v52 = *(v1 + 376);
    LOBYTE(v81[0]) = *(v1 + 378);
    (*(v47 + 16))(v48, v51, v49);
    objc_allocWithZone(type metadata accessor for VisualEffectSceneManager(0));
    sub_1D2870F78();
    v53 = sub_1D2771748(0, v26, v81, v52, v48, v50);
    *(v1 + 344) = v53;

    if (v53)
    {
      type metadata accessor for VisualEffectViewManager();
      v54 = swift_allocObject();
      *(v1 + 352) = v54;
      *(v54 + 16) = 0;
      *(v54 + 24) = 0;
      v55 = sub_1D2873C38();
      v56 = sub_1D2878BB8();
      if (sub_1D2878EE8())
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v81[0] = v58;
        *v57 = 136315138;
        v59 = sub_1D2879198();
        v61 = sub_1D23D7C84(v59, v60, v81);

        *(v57 + 4) = v61;
        v62 = sub_1D2873C08();
        _os_signpost_emit_with_name_impl(&dword_1D226E000, v55, v56, v62, "EffectViewWarming", "%s - start", v57, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v58);
        MEMORY[0x1D38A3520](v58, -1, -1);
        MEMORY[0x1D38A3520](v57, -1, -1);
      }

      (*(v1 + 272))(*(v1 + 208), *(v1 + 216), *(v1 + 168));
      swift_allocObject();
      *(v1 + 360) = sub_1D2873C78();
      v63 = swift_task_alloc();
      *(v1 + 368) = v63;
      *v63 = v1;
      v63[1] = sub_1D275E940;

      return sub_1D277BF6C(v53);
    }

    else
    {

      sub_1D2872668();
      v64 = sub_1D2873CA8();
      v65 = sub_1D2878A18();
      v66 = os_log_type_enabled(v64, v65);
      v68 = *(v1 + 232);
      v67 = *(v1 + 240);
      v78 = *(v1 + 216);
      v80 = *(v1 + 224);
      v76 = *(v1 + 168);
      v74 = *(v1 + 56);
      v70 = *(v1 + 32);
      v69 = *(v1 + 40);
      if (v66)
      {
        format = *(v1 + 240);
        v71 = swift_slowAlloc();
        *v71 = 0;
        _os_log_impl(&dword_1D226E000, v64, v65, "Failed to load SceneManager", v71, 2u);
        MEMORY[0x1D38A3520](v71, -1, -1);

        (*(v69 + 8))(v74, v70);
        v38(v78, v76);
        (*(v68 + 8))(format, v80);
      }

      else
      {

        (*(v69 + 8))(v74, v70);
        v38(v78, v76);
        (*(v68 + 8))(v67, v80);
      }

      v72 = *(v1 + 8);

      return v72(2, 0);
    }
  }

  else
  {
    v21 = swift_task_alloc();
    *(v1 + 304) = v21;
    *v21 = v1;
    v21[1] = sub_1D275DD98;

    return sub_1D2770ED8(v16);
  }
}

uint64_t sub_1D275DD98(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = v4[32];
    v6 = v4[33];
    v7 = sub_1D275E520;
  }

  else
  {
    v4[39] = a1;
    v5 = v4[32];
    v6 = v4[33];
    v7 = sub_1D275DEC4;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1D275DEC4(uint64_t a1)
{
  v60 = v1;
  v2 = *(v1 + 312);
  *(v1 + 320) = 0;
  *(v1 + 328) = v2;
  v3 = sub_1D2873C38();
  sub_1D2873C68();
  v4 = sub_1D2878BA8();
  if (sub_1D2878EE8())
  {
    v57 = v4;
    v5 = *(v1 + 120);
    v7 = *(v1 + 88);
    v6 = *(v1 + 96);
    sub_1D2870F78();
    sub_1D2873C98();

    if ((*(v6 + 88))(v5, v7) == *MEMORY[0x1E69E93E8])
    {
      v8 = 0;
      v9 = 0;
      format = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v1 + 96) + 8))(*(v1 + 120), *(v1 + 88));
      format = "%s - end";
      v9 = 2;
      v8 = 1;
    }

    v14 = *(v1 + 200);
    v15 = *(v1 + 176);
    v55 = *(v1 + 168);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v59 = v17;
    *v16 = v9;
    *(v16 + 1) = v8;
    *(v16 + 2) = 2080;
    v18 = sub_1D2879198();
    v20 = sub_1D23D7C84(v18, v19, &v59);

    *(v16 + 4) = v20;
    v21 = sub_1D2873C08();
    _os_signpost_emit_with_name_impl(&dword_1D226E000, v3, v57, v21, "EffectWorldWarming", format, v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x1D38A3520](v17, -1, -1);
    MEMORY[0x1D38A3520](v16, -1, -1);

    v13 = *(v15 + 8);
    v13(v14, v55);
  }

  else
  {
    v10 = *(v1 + 200);
    v11 = *(v1 + 168);
    v12 = *(v1 + 176);

    v13 = *(v12 + 8);
    v13(v10, v11);
  }

  *(v1 + 336) = v13;
  v22 = *(v1 + 72);
  v23 = *(v1 + 80);
  v24 = *(v1 + 64);
  v25 = *(v1 + 377);
  v26 = *(v1 + 16);
  v27 = *(v1 + 376);
  LOBYTE(v59) = *(v1 + 378);
  (*(v22 + 16))(v23, v26, v24);
  objc_allocWithZone(type metadata accessor for VisualEffectSceneManager(0));
  v28 = v2;
  v29 = sub_1D2771748(v2, 0, &v59, v27, v23, v25);
  *(v1 + 344) = v29;

  if (v29)
  {
    type metadata accessor for VisualEffectViewManager();
    v30 = swift_allocObject();
    *(v1 + 352) = v30;
    *(v30 + 16) = 0;
    *(v30 + 24) = 0;
    v31 = sub_1D2873C38();
    v32 = sub_1D2878BB8();
    if (sub_1D2878EE8())
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v59 = v34;
      *v33 = 136315138;
      v35 = sub_1D2879198();
      v37 = sub_1D23D7C84(v35, v36, &v59);

      *(v33 + 4) = v37;
      v38 = sub_1D2873C08();
      _os_signpost_emit_with_name_impl(&dword_1D226E000, v31, v32, v38, "EffectViewWarming", "%s - start", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x1D38A3520](v34, -1, -1);
      MEMORY[0x1D38A3520](v33, -1, -1);
    }

    (*(v1 + 272))(*(v1 + 208), *(v1 + 216), *(v1 + 168));
    swift_allocObject();
    *(v1 + 360) = sub_1D2873C78();
    v39 = swift_task_alloc();
    *(v1 + 368) = v39;
    *v39 = v1;
    v39[1] = sub_1D275E940;

    return sub_1D277BF6C(v29);
  }

  else
  {

    sub_1D2872668();
    v41 = sub_1D2873CA8();
    v42 = sub_1D2878A18();
    v43 = os_log_type_enabled(v41, v42);
    v45 = *(v1 + 232);
    v44 = *(v1 + 240);
    v56 = *(v1 + 216);
    v58 = *(v1 + 224);
    formata = *(v1 + 168);
    v46 = *(v1 + 56);
    v48 = *(v1 + 32);
    v47 = *(v1 + 40);
    if (v43)
    {
      v52 = *(v1 + 240);
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_1D226E000, v41, v42, "Failed to load SceneManager", v49, 2u);
      v50 = v49;
      v44 = v52;
      MEMORY[0x1D38A3520](v50, -1, -1);
    }

    (*(v47 + 8))(v46, v48);
    v13(v56, formata);
    (*(v45 + 8))(v44, v58);

    v51 = *(v1 + 8);

    return v51(2, 0);
  }
}

uint64_t sub_1D275E520()
{
  v41 = v0;

  sub_1D2872668();
  v1 = sub_1D2873CA8();
  v2 = sub_1D2878A18();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1D226E000, v1, v2, "Failed to load VFXWorld / SceneManager.", v3, 2u);
    MEMORY[0x1D38A3520](v3, -1, -1);
  }

  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[4];

  (*(v5 + 8))(v4, v6);
  v7 = sub_1D2873C38();
  sub_1D2873C68();
  v8 = sub_1D2878BA8();
  if (sub_1D2878EE8())
  {
    v39 = v8;
    v10 = v0[12];
    v9 = v0[13];
    v11 = v0[11];
    sub_1D2870F78();
    sub_1D2873C98();

    if ((*(v10 + 88))(v9, v11) == *MEMORY[0x1E69E93E8])
    {
      v12 = 0;
      v13 = 0;
      format = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[12] + 8))(v0[13], v0[11]);
      format = "%s - end with error";
      v13 = 2;
      v12 = 1;
    }

    v22 = v0[29];
    v37 = v0[28];
    v38 = v0[30];
    v36 = v0[27];
    v24 = v0[22];
    v23 = v0[23];
    v25 = v0[21];
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v40 = v27;
    *v26 = v13;
    *(v26 + 1) = v12;
    *(v26 + 2) = 2080;
    v28 = sub_1D2879198();
    v30 = sub_1D23D7C84(v28, v29, &v40);

    *(v26 + 4) = v30;
    v31 = sub_1D2873C08();
    _os_signpost_emit_with_name_impl(&dword_1D226E000, v7, v39, v31, "EffectWorldWarming", format, v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x1D38A3520](v27, -1, -1);
    MEMORY[0x1D38A3520](v26, -1, -1);

    v32 = *(v24 + 8);
    v32(v23, v25);
    v32(v36, v25);
    (*(v22 + 8))(v38, v37);
  }

  else
  {
    v15 = v0[29];
    v14 = v0[30];
    v17 = v0[27];
    v16 = v0[28];
    v19 = v0[22];
    v18 = v0[23];
    v20 = v0[21];

    v21 = *(v19 + 8);
    v21(v18, v20);
    v21(v17, v20);
    (*(v15 + 8))(v14, v16);
  }

  v33 = v0[1];

  return v33(2, 0);
}

uint64_t sub_1D275E940()
{
  v1 = *v0;

  v2 = *(v1 + 264);
  v3 = *(v1 + 256);

  return MEMORY[0x1EEE6DFA0](sub_1D275EA60, v3, v2);
}

uint64_t sub_1D275EA60()
{
  v37 = v0;

  v1 = sub_1D2873C38();
  sub_1D2873C68();
  v2 = sub_1D2878BA8();
  if (sub_1D2878EE8())
  {
    v33 = v2;
    v3 = v0[14];
    v5 = v0[11];
    v4 = v0[12];
    sub_1D2870F78();
    sub_1D2873C98();

    if ((*(v4 + 88))(v3, v5) == *MEMORY[0x1E69E93E8])
    {
      v6 = 0;
      v7 = 0;
      format = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[12] + 8))(v0[14], v0[11]);
      format = "%s - end";
      v7 = 2;
      v6 = 1;
    }

    v25 = v0[41];
    v13 = v0[29];
    v31 = v0[30];
    v27 = v0[42];
    v29 = v0[28];
    v26 = v0[27];
    v14 = v0[24];
    v15 = v0[21];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v36 = v17;
    *v16 = v7;
    *(v16 + 1) = v6;
    *(v16 + 2) = 2080;
    v18 = sub_1D2879198();
    v20 = sub_1D23D7C84(v18, v19, &v36);

    *(v16 + 4) = v20;
    v21 = sub_1D2873C08();
    _os_signpost_emit_with_name_impl(&dword_1D226E000, v1, v33, v21, "EffectViewWarming", format, v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x1D38A3520](v17, -1, -1);
    MEMORY[0x1D38A3520](v16, -1, -1);

    v27(v14, v15);
    v27(v26, v15);
    (*(v13 + 8))(v31, v29);
  }

  else
  {
    v8 = v0[41];
    v9 = v0[42];
    v10 = v0[29];
    v30 = v0[28];
    v34 = v0[30];
    v28 = v0[27];
    v11 = v0[24];
    v12 = v0[21];

    v9(v11, v12);
    v9(v28, v12);
    (*(v10 + 8))(v34, v30);
  }

  v32 = v0[43];
  v35 = v0[44];

  v22 = v0[1];

  return v22(v32, v35);
}

uint64_t sub_1D275EE48(char a1)
{
  v2 = v1;
  sub_1D2758CD8(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController, &v15);
  if (v17)
  {
    v4 = *(&v15 + 1);
    v5 = v16;
    v13 = MEMORY[0x1E69E6370];
    v6 = a1 & 1;
    LOBYTE(v12[0]) = a1 & 1;
    v7 = v15;
    sub_1D2777178(v12, 0x646F4D746867696CLL, 0xE900000000000065, 1);
  }

  else
  {
    sub_1D227268C(&v15, v12);
    v8 = v13;
    v9 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v11[3] = MEMORY[0x1E69E6370];
    v6 = a1 & 1;
    LOBYTE(v11[0]) = a1 & 1;
    (*(v9 + 8))(v11, 6912, v8, v9);
    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  result = __swift_destroy_boxed_opaque_existential_0(v12);
  *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_isInLightMode) = v6;
  return result;
}

uint64_t sub_1D275EF74(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x746365666645;
  if (v2 != 1)
  {
    v4 = 0x4433746365666645;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x65666645646E6157;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEA00000000007463;
  }

  v7 = 0xE600000000000000;
  v8 = 0x746365666645;
  if (*a2 != 1)
  {
    v8 = 0x4433746365666645;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x65666645646E6157;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEA00000000007463;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D2879618();
  }

  return v11 & 1;
}

uint64_t sub_1D275F070()
{
  sub_1D28797D8();
  sub_1D2877F38();

  return sub_1D2879828();
}

double sub_1D275F114(uint64_t a1)
{
  sub_1D2877F38();

  return result;
}

uint64_t sub_1D275F1A4()
{
  sub_1D28797D8();
  sub_1D2877F38();

  return sub_1D2879828();
}

unint64_t sub_1D275F244@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D2771DE0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D275F274(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007463;
  v4 = 0xE600000000000000;
  v5 = 0x746365666645;
  if (v2 != 1)
  {
    v5 = 0x4433746365666645;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x65666645646E6157;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D275F2D4@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v47[1] = a2;
  v3 = sub_1D2873CB8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v51 = v47 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v48 = v47 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA1B8, &qword_1D2884470);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v47 - v15;
  v17 = sub_1D28716B8();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v19);
  v52 = v47 - v20;
  v53 = v4;
  v49 = a1;
  v54 = v3;
  if (a1 > 1u)
  {
  }

  else
  {
    v21 = sub_1D2879618();

    if ((v21 & 1) == 0)
    {
      sub_1D2872668();
      v22 = sub_1D2873CA8();
      v23 = sub_1D2878A18();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_1D226E000, v22, v23, "Unsupported effect type for component loading", v24, 2u);
        MEMORY[0x1D38A3520](v24, -1, -1);
      }

      (*(v53 + 8))(v6, v54);
LABEL_20:
      sub_1D2775E68();
      swift_allocError();
      return swift_willThrow();
    }
  }

  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v25 = [qword_1ED8B0058 builtInPlugInsURL];
  if (v25)
  {
    v26 = v25;
    sub_1D2871638();

    (*(v18 + 56))(v13, 0, 1, v17);
  }

  else
  {
    (*(v18 + 56))(v13, 1, 1, v17);
  }

  sub_1D2775EBC(v13, v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_1D22BD238(v16, &qword_1EC6DA1B8, &qword_1D2884470);
LABEL_17:
    v33 = v54;
    v34 = v53;
    v35 = v51;
    sub_1D2872668();
    v36 = sub_1D2873CA8();
    v37 = sub_1D2878A18();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_1D226E000, v36, v37, "Did not find vfxlibrary", v38, 2u);
      MEMORY[0x1D38A3520](v38, -1, -1);
    }

    (*(v34 + 8))(v35, v33);
    goto LABEL_20;
  }

  sub_1D28715F8();
  v27 = *(v18 + 8);
  v27(v16, v17);
  v28 = v52;
  (*(v18 + 32))();
  v29 = objc_allocWithZone(MEMORY[0x1E696AAE8]);
  v30 = sub_1D28715B8();
  v31 = [v29 initWithURL_];

  if (!v31)
  {
    v27(v28, v17);
    goto LABEL_17;
  }

  v47[0] = v27;
  v32 = v48;
  sub_1D28737F8();
  v40 = v31;
  v41 = v50;
  sub_1D28737D8();
  if (v41)
  {

    sub_1D2872668();
    v42 = sub_1D2873CA8();
    v43 = sub_1D2878A18();
    v44 = os_log_type_enabled(v42, v43);
    v45 = v47[0];
    if (v44)
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_1D226E000, v42, v43, "Failed to create VFXResource", v46, 2u);
      MEMORY[0x1D38A3520](v46, -1, -1);
    }

    (*(v53 + 8))(v32, v54);
    sub_1D2775E68();
    swift_allocError();
    swift_willThrow();

    return v45(v52, v17);
  }

  else
  {

    sub_1D2873848();
    return (v47[0])(v28, v17);
  }
}

id sub_1D275FA24(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1D28715B8();
  if (a2)
  {
    type metadata accessor for VFXWorldLoaderOption(0);
    sub_1D2775F90(&qword_1ED89CD10, type metadata accessor for VFXWorldLoaderOption, &unk_1D287E488);
    v5 = sub_1D2877E78();
  }

  else
  {
    v5 = 0;
  }

  v14[0] = 0;
  v6 = [swift_getObjCClassFromMetadata() worldWithURL:v4 options:v5 error:v14];

  v7 = v14[0];
  if (v6)
  {
    v8 = sub_1D28716B8();
    v9 = *(*(v8 - 8) + 8);
    v10 = v7;
    v9(a1, v8);
  }

  else
  {
    v11 = v14[0];
    sub_1D28714B8();

    swift_willThrow();
    v12 = sub_1D28716B8();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  return v6;
}

uint64_t sub_1D275FC64()
{
  v1 = sub_1D2873CB8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v28 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v28 - v9;
  sub_1D2758CD8(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController, v28);
  if (v29 == 1)
  {
    v12 = v28[0];
    v11 = v28[1];
    v13 = v28[2];
    v14 = (v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_magicEffectPosition);
    if (*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_magicEffectPosition + 48))
    {
      sub_1D2872668();
      v15 = sub_1D2873CA8();
      v16 = sub_1D2878A18();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_1D226E000, v15, v16, "magicEffectPosition is nil", v17, 2u);
        MEMORY[0x1D38A3520](v17, -1, -1);
      }

      else
      {
      }

      return (*(v2 + 8))(v7, v1);
    }

    else
    {
      v22 = *v14;
      if (v14->f64[0] == 0.0 || v22.f64[1] == 0.0)
      {
        sub_1D2872668();
        v25 = sub_1D2873CA8();
        v26 = sub_1D2878A18();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 0;
          _os_log_impl(&dword_1D226E000, v25, v26, "effectSize is empty", v27, 2u);
          MEMORY[0x1D38A3520](v27, -1, -1);
        }

        return (*(v2 + 8))(v10, v1);
      }

      else
      {
        v23 = [objc_opt_self() valueWithVFXFloat2_];
        v28[3] = sub_1D22BCFD0(0, &qword_1ED89CC90, 0x1E696B098);
        v28[0] = v23;
        v24 = v12;
        sub_1D2777178(v28, 0x725F6E6565726373, 0xEC0000006F697461, 1);

        return __swift_destroy_boxed_opaque_existential_0(v28);
      }
    }
  }

  else
  {
    sub_1D2758D34(v28);
    sub_1D2872668();
    v18 = sub_1D2873CA8();
    v19 = sub_1D2878A18();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1D226E000, v18, v19, "wandNodes is nil", v20, 2u);
      MEMORY[0x1D38A3520](v20, -1, -1);
    }

    return (*(v2 + 8))(v4, v1);
  }
}

void sub_1D2760028(char a1)
{
  v2 = OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_isShowingError;
  if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_isShowingError) == (a1 & 1))
  {
    return;
  }

  v3 = v1;
  sub_1D2760488();
  if (*(v1 + v2))
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectType) && *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectType) != 1)
  {

LABEL_10:
    sub_1D2758CD8(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController, &aBlock);
    if (v27 == 1)
    {
      sub_1D2758D34(&aBlock);
    }

    else
    {
      sub_1D227268C(&aBlock, v22);
      sub_1D22D7044(v22, &aBlock);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E18F0, &qword_1D28A4828);
      type metadata accessor for VisualEffectRENodes();
      if (swift_dynamicCast())
      {
        sub_1D2760560((*(v1 + v2) & 1) == 0, 0x3FC999999999999AuLL, 0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1908, &qword_1D28A4848);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1D287F500;
        *(inited + 32) = 9216;
        v7 = inited + 32;
        *(inited + 64) = MEMORY[0x1E69E6448];
        *(inited + 40) = v4;
        v8 = sub_1D25D6D04(inited);
        swift_setDeallocating();
        sub_1D22BD238(v7, &unk_1EC6E1910, &unk_1D28A4850);
        sub_1D2753044(v8, 0, 1, 0, 0.2);

        sub_1D2760BB8(v21, 0, 1, 0.2);

        __swift_destroy_boxed_opaque_existential_0(v22);
        return;
      }

      __swift_destroy_boxed_opaque_existential_0(v22);
    }

    goto LABEL_15;
  }

  v5 = sub_1D2879618();

  if (v5)
  {
    goto LABEL_10;
  }

LABEL_15:
  v9 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_animationCoordinator);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = *&Strong[OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_gp_isAnimatingCount];
    v12 = __CFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      __break(1u);
      return;
    }

    *&Strong[OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_gp_isAnimatingCount] = v13;
    sub_1D277A35C(Strong);
    swift_unknownObjectRelease();
  }

  v14 = *MEMORY[0x1E6979EB8];
  v15 = swift_allocObject();
  swift_unknownObjectWeakLoadStrong();
  *(v15 + 24) = *(v9 + 24);
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  v16 = swift_allocObject();
  v16[3] = 0;
  v16[4] = 0;
  v16[2] = v15;
  v17 = objc_opt_self();
  sub_1D2870F78();
  v18 = [v17 functionWithName_];
  v19 = objc_opt_self();
  [v19 begin];
  v26 = sub_1D2776400;
  v27 = v16;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v24 = sub_1D23DFBA8;
  v25 = &block_descriptor_280;
  v20 = _Block_copy(&aBlock);
  sub_1D2870F78();

  [v19 setCompletionBlock_];
  _Block_release(v20);
  [v19 setAnimationDuration_];
  [v19 setAnimationTimingFunction_];
  sub_1D2760EA8(v3, v4);
  [v19 commit];
}

void sub_1D2760488()
{
  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_areAttractorsEnabled;
  if (*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_areAttractorsEnabled) == 1 && (sub_1D2758CD8(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController, v6), v2 = v7, sub_1D2758D34(v6), (v2 & 1) == 0))
  {
    v3 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_isShowingError) ^ 1;
  }

  else
  {
    v3 = 0;
  }

  sub_1D276B0A0(v3 & 1);
  if (*(v0 + v1) == 1 && (sub_1D2758CD8(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController, v6), v4 = v7, sub_1D2758D34(v6), (v4 & 1) == 0))
  {
    v5 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_isShowingError) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_vfxShouldReadColors) = v5 & 1;
}

uint64_t sub_1D2760560(uint64_t a1, unint64_t a2, char a3)
{
  v7 = a1;
  sub_1D2758CD8(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController, &v41);
  if (v44)
  {
    v47 = 0;
    v45 = 0u;
    v46 = 0u;
    sub_1D2758D34(&v41);
    if (*(&v46 + 1))
    {
      goto LABEL_3;
    }

    return sub_1D22BD238(&v45, &qword_1EC6E1790, &qword_1D28A4830);
  }

  sub_1D227268C(&v41, &v45);
  if (!*(&v46 + 1))
  {
    return sub_1D22BD238(&v45, &qword_1EC6E1790, &qword_1D28A4830);
  }

LABEL_3:
  sub_1D227268C(&v45, &v41);
  v8 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_attractorsMapper);
  if (*(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectType) && *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectType) != 1)
  {
    sub_1D2870F68();
  }

  else
  {
    v10 = sub_1D2879618();
    sub_1D2870F68();

    if ((v10 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  sub_1D22D7044(&v41, &v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E18F0, &qword_1D28A4828);
  type metadata accessor for VisualEffectRENodes();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    v11 = *(v8 + 16);
    if (v11)
    {
      a2 = 0;
      v12 = (v7 & 1);
      while (a2 < *(v8 + 16))
      {
        v13 = *(v8 + 8 * a2 + 32);
        v14 = v42;
        v15 = v43;
        __swift_project_boxed_opaque_existential_1(&v41, v42);
        *(&v46 + 1) = MEMORY[0x1E69E6448];
        *&v45 = v12;
        sub_1D2879168();

        if (__OFADD__(v13, 1))
        {
          goto LABEL_41;
        }

        v16 = sub_1D28795C8();
        MEMORY[0x1D38A0C50](v16);

        MEMORY[0x1D38A0C50](0x69736E65746E695FLL, 0xEA00000000007974);
        v4 = 0x6F74636172747461;
        sub_1D2870F68();
        v17 = sub_1D27552A8(0x6F74636172747461, 0xE900000000000072);
        if (v17 == 46)
        {
          goto LABEL_46;
        }

        v18 = v17;
        ++a2;

        (*(v15 + 16))(&v45, (v18 << 8), 0, v14, v15);
        __swift_destroy_boxed_opaque_existential_0(&v45);
        if (v11 == a2)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      sub_1D2879168();

      MEMORY[0x1D38A0C50](0xD00000000000001CLL, 0x80000001D28C17A0);
      while (1)
      {
        sub_1D2879398();
        __break(1u);
LABEL_48:
        *&v45 = 0;
        *(&v45 + 1) = 0xE000000000000000;
        sub_1D2879168();

        *&v45 = a2;
        *(&v45 + 1) = v4;
        MEMORY[0x1D38A0C50](0xD00000000000001CLL, 0x80000001D28C17A0);
      }
    }

LABEL_20:

    return __swift_destroy_boxed_opaque_existential_0(&v41);
  }

  if (a3)
  {

    goto LABEL_14;
  }

  v40 = *&a2;
  v19 = sub_1D25D6C04(MEMORY[0x1E69E7CC0]);
  v20 = *(v8 + 16);
  if (!v20)
  {
LABEL_39:

    v39 = sub_1D24171A8(v19);

    sub_1D2753044(v39, 0, 1, 0, v40);

    return __swift_destroy_boxed_opaque_existential_0(&v41);
  }

  v21 = 0;
  v22 = (v7 & 1);
  while (1)
  {
    if (v21 >= *(v8 + 16))
    {
      goto LABEL_42;
    }

    v23 = *(v8 + 32 + 8 * v21);
    *&v45 = 0;
    *(&v45 + 1) = 0xE000000000000000;
    sub_1D2879168();

    *&v45 = 0x6F74636172747461;
    *(&v45 + 1) = 0xE900000000000072;
    if (__OFADD__(v23, 1))
    {
      goto LABEL_43;
    }

    v24 = sub_1D28795C8();
    MEMORY[0x1D38A0C50](v24);

    MEMORY[0x1D38A0C50](0x69736E65746E695FLL, 0xEA00000000007974);
    v4 = *(&v45 + 1);
    a2 = v45;
    sub_1D2870F68();
    v25 = sub_1D27552A8(a2, v4);
    if (v25 == 46)
    {
      goto LABEL_48;
    }

    v26 = v25;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v45 = v19;
    a2 = (v26 << 8);
    v28 = sub_1D25D100C(v26 << 8);
    v30 = v19[2];
    v31 = (v29 & 1) == 0;
    v32 = __OFADD__(v30, v31);
    v33 = v30 + v31;
    if (v32)
    {
      goto LABEL_44;
    }

    v4 = v29;
    if (v19[3] < v33)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_34;
    }

    v38 = v28;
    sub_1D24EFC94();
    v28 = v38;
    v19 = v45;
    if (v4)
    {
LABEL_24:
      *(v19[7] + 4 * v28) = v22;
      goto LABEL_25;
    }

LABEL_35:
    v19[(v28 >> 6) + 8] |= 1 << v28;
    v35 = (v19[6] + 2 * v28);
    *v35 = 0;
    v35[1] = v26;
    *(v19[7] + 4 * v28) = v22;
    v36 = v19[2];
    v32 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v32)
    {
      goto LABEL_45;
    }

    v19[2] = v37;
LABEL_25:
    if (v20 == ++v21)
    {
      goto LABEL_39;
    }
  }

  sub_1D24E644C(v33, isUniquelyReferenced_nonNull_native);
  v28 = sub_1D25D100C(v26 << 8);
  if ((v4 & 1) == (v34 & 1))
  {
LABEL_34:
    v19 = v45;
    if (v4)
    {
      goto LABEL_24;
    }

    goto LABEL_35;
  }

  result = sub_1D28796E8();
  __break(1u);
  return result;
}

char *sub_1D2760BB8(uint64_t a1, uint64_t a2, char a3, double a4)
{
  if (a3)
  {
    v9 = *(v4 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_animationCoordinator);
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v11 = *&result[OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_gp_isAnimatingCount];
      v12 = __CFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        __break(1u);
        return result;
      }

      *&result[OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_gp_isAnimatingCount] = v13;
      sub_1D277A35C(result);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v14 = swift_allocObject();
    v9 = *(v4 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_animationCoordinator);
    swift_unknownObjectWeakLoadStrong();
    *(v14 + 24) = *(v9 + 24);
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    type metadata accessor for VisualEffectRENodes.VisualEffectAnimationClosure();
    v15 = swift_allocObject();
    *(v15 + 32) = 0;
    *(v15 + 40) = 0;
    *(v15 + 48) = 1;
    v16 = 1.0 / *&a2;
    *(v15 + 64) = 0;
    *(v15 + 72) = 0;
    *(v15 + 52) = v16;
    *(v15 + 56) = 0;
    *(v15 + 16) = sub_1D276ED00;
    *(v15 + 24) = v14;
    swift_beginAccess();
    v17 = swift_retain_n();
    MEMORY[0x1D38A0E30](v17);
    if (*((*(a1 + 104) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + 104) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D2878428();
    }

    sub_1D2878488();
    swift_endAccess();
  }

  v18 = swift_allocObject();
  swift_unknownObjectWeakLoadStrong();
  *(v18 + 24) = *(v9 + 24);
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  type metadata accessor for VisualEffectRENodes.VisualEffectAnimationClosure();
  v19 = swift_allocObject();
  *(v19 + 32) = 0;
  *(v19 + 40) = 0;
  *(v19 + 48) = 1;
  v20 = 1.0 / a4;
  *(v19 + 64) = 0;
  *(v19 + 72) = 0;
  *(v19 + 52) = v20;
  v21 = *&a2;
  if (a3)
  {
    v21 = 0.0;
  }

  *(v19 + 56) = v21;
  *(v19 + 16) = sub_1D276ECF8;
  *(v19 + 24) = v18;
  swift_beginAccess();
  v22 = swift_retain_n();
  MEMORY[0x1D38A0E30](v22);
  if (*((*(a1 + 104) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + 104) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D2878428();
  }

  sub_1D2878488();
  swift_endAccess();
}

uint64_t sub_1D2760EA8(uint64_t a1, float a2)
{
  sub_1D2758CD8(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController, &v15);
  if (v17)
  {
    v4 = *(&v15 + 1);
    v5 = v16;
    v13 = MEMORY[0x1E69E6448];
    *v12 = a2;
    v6 = v15;
    sub_1D2777178(v12, 0xD000000000000013, 0x80000001D28AEB00, 0);
  }

  else
  {
    sub_1D227268C(&v15, v12);
    v7 = OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_isShowingError;
    sub_1D2760560((*(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_isShowingError) & 1) == 0, 0, 1);
    v8 = v13;
    v9 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v11[3] = MEMORY[0x1E69E6448];
    *v11 = a2;
    (*(v9 + 16))(v11, 9216, 0, v8, v9);
    __swift_destroy_boxed_opaque_existential_0(v11);
    if (*(a1 + v7) == 1)
    {
      sub_1D2761000();
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v12);
}

uint64_t sub_1D2761000()
{
  v1 = sub_1D2873CB8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2758CD8(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController, &v14);
  if (v16)
  {
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    sub_1D2758D34(&v14);
    if (*(&v18 + 1))
    {
LABEL_3:
      sub_1D227268C(&v17, v20);
      v5 = v21;
      v6 = v22;
      __swift_project_boxed_opaque_existential_1(v20, v21);
      v7 = MEMORY[0x1E69E6448];
      v15 = MEMORY[0x1E69E6448];
      LODWORD(v14) = 0;
      (*(v6 + 8))(&v14, 6400, v5, v6);
      __swift_destroy_boxed_opaque_existential_0(&v14);
      v8 = v21;
      v9 = v22;
      __swift_project_boxed_opaque_existential_1(v20, v21);
      v15 = v7;
      LODWORD(v14) = 0;
      (*(v9 + 8))(&v14, 6656, v8, v9);
      __swift_destroy_boxed_opaque_existential_0(&v14);
      return __swift_destroy_boxed_opaque_existential_0(v20);
    }
  }

  else
  {
    sub_1D227268C(&v14, &v17);
    if (*(&v18 + 1))
    {
      goto LABEL_3;
    }
  }

  sub_1D22BD238(&v17, &qword_1EC6E1790, &qword_1D28A4830);
  sub_1D2872668();
  v11 = sub_1D2873CA8();
  v12 = sub_1D2878A18();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1D226E000, v11, v12, "gpNodes is nil", v13, 2u);
    MEMORY[0x1D38A3520](v13, -1, -1);
  }

  return (*(v2 + 8))(v4, v1);
}

void sub_1D2761250()
{
  if (*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_isForStickers) == 1)
  {
    sub_1D2758CD8(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController, &v10);
    if (v12)
    {
      v15 = 0;
      v13 = 0u;
      v14 = 0u;
      sub_1D2758D34(&v10);
      if (*(&v14 + 1))
      {
LABEL_4:
        sub_1D227268C(&v13, v16);
        v1 = v17;
        v2 = v18;
        __swift_project_boxed_opaque_existential_1(v16, v17);
        v11 = MEMORY[0x1E69E6370];
        LOBYTE(v10) = 1;
        (*(v2 + 8))(&v10, 9728, v1, v2);
        __swift_destroy_boxed_opaque_existential_0(&v10);
        if (*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectType) && *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectType) != 1)
        {
        }

        else
        {
          v3 = sub_1D2879618();

          if ((v3 & 1) == 0)
          {
            v4 = v17;
            v5 = v18;
            __swift_project_boxed_opaque_existential_1(v16, v17);
            v11 = MEMORY[0x1E69E6448];
            LODWORD(v10) = 1058642330;
            (*(v5 + 8))(&v10, 1280, v4, v5);
            __swift_destroy_boxed_opaque_existential_0(&v10);
            v6 = COERCE_DOUBLE(vdup_n_s32(0x3F19999Au));
LABEL_13:
            v7 = [objc_opt_self() valueWithVFXFloat2_];
            v8 = v17;
            v9 = v18;
            __swift_project_boxed_opaque_existential_1(v16, v17);
            v11 = sub_1D22BCFD0(0, &qword_1ED89CC90, 0x1E696B098);
            *&v10 = v7;
            (*(v9 + 8))(&v10, 1536, v8, v9);
            __swift_destroy_boxed_opaque_existential_0(&v10);
            __swift_destroy_boxed_opaque_existential_0(v16);
            return;
          }
        }

        sub_1D2766E4C(1);
        v6 = 2.00000048;
        goto LABEL_13;
      }
    }

    else
    {
      sub_1D227268C(&v10, &v13);
      if (*(&v14 + 1))
      {
        goto LABEL_4;
      }
    }

    sub_1D22BD238(&v13, &qword_1EC6E1790, &qword_1D28A4830);
  }
}

char *sub_1D27614F0()
{
  v1 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_isAnimatingScroll);
  result = swift_unknownObjectWeakLoadStrong();
  if (v1 == 1)
  {
    if (!result)
    {
      return result;
    }

    v3 = *&result[OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_gp_isAnimatingCount];
    v4 = __CFADD__(v3, 1);
    v5 = v3 + 1;
    if (v4)
    {
      __break(1u);
      return result;
    }

    *&result[OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_gp_isAnimatingCount] = v5;
    sub_1D277A35C(result);
  }

  else
  {
    if (!result)
    {
      return result;
    }

    sub_1D277B7F8();
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1D2761588()
{
  v1 = sub_1D2873CB8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D2871DD8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2758CD8(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController, &v19);
  if (v21)
  {
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    sub_1D2758D34(&v19);
    if (*(&v23 + 1))
    {
LABEL_3:
      sub_1D227268C(&v22, v25);
      v9 = v26;
      v10 = v27;
      __swift_project_boxed_opaque_existential_1(v25, v26);
      v11 = OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_aspectRatio;
      swift_beginAccess();
      (*(v6 + 16))(v8, v0 + v11, v5);
      sub_1D2871DA8();
      v13 = v12;
      (*(v6 + 8))(v8, v5);
      v14 = v13;
      v20 = MEMORY[0x1E69E6448];
      *&v19 = v14;
      (*(v10 + 8))(&v19, 0, v9, v10);
      __swift_destroy_boxed_opaque_existential_0(&v19);
      return __swift_destroy_boxed_opaque_existential_0(v25);
    }
  }

  else
  {
    sub_1D227268C(&v19, &v22);
    if (*(&v23 + 1))
    {
      goto LABEL_3;
    }
  }

  sub_1D22BD238(&v22, &qword_1EC6E1790, &qword_1D28A4830);
  sub_1D2872668();
  v16 = sub_1D2873CA8();
  v17 = sub_1D2878A18();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1D226E000, v16, v17, "gpNodes is nil", v18, 2u);
    MEMORY[0x1D38A3520](v18, -1, -1);
  }

  return (*(v2 + 8))(v4, v1);
}

void sub_1D2761880()
{
  v1 = sub_1D2873CB8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectType) && *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectType) != 1)
  {

    goto LABEL_12;
  }

  v5 = sub_1D2879618();

  if (v5)
  {
LABEL_12:

    sub_1D276B0A0(1);
    return;
  }

  v6 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_world);
  if (v6)
  {
    v21 = v4;
    v22 = v2;
    v23 = v1;
    v20 = v0;
    v26 = MEMORY[0x1E69E7CC0];
    v7 = v6;
    v8 = 1;
    while (1)
    {
      v9 = [v7 rootNode];
      strcpy(v25, "EmitterFlare");
      HIBYTE(v25[6]) = 0;
      v25[7] = -5120;
      v24 = v8;
      v10 = sub_1D28795C8();
      MEMORY[0x1D38A0C50](v10);

      v11 = sub_1D2878068();

      v12 = [v9 childNodeWithName_];

      if (!v12)
      {
        break;
      }

      v13 = v12;
      MEMORY[0x1D38A0E30]();
      if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D2878428();
      }

      sub_1D2878488();

      v14 = v26;
      if (++v8 == 9)
      {
        v19 = v20 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_vfxAttractorNodes;
        sub_1D2870F68();
        os_unfair_lock_lock(v19);

        *(v19 + 8) = v14;

        os_unfair_lock_unlock(v19);

        return;
      }
    }

    v15 = v21;
    sub_1D2872668();
    v16 = sub_1D2873CA8();
    v17 = sub_1D2878A18();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134217984;
      *(v18 + 4) = v8;
      _os_log_impl(&dword_1D226E000, v16, v17, "Failed to load 'EmitterFlare%ld'", v18, 0xCu);
      MEMORY[0x1D38A3520](v18, -1, -1);
    }

    (*(v22 + 8))(v15, v23);
  }
}

uint64_t sub_1D2761C30(char a1, char a2, char a3, char a4)
{
  v5 = v4;
  v9 = OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController;
  sub_1D2758CD8(v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController, &v107);
  v10 = MEMORY[0x1E69E6448];
  if ((v109 & 1) == 0)
  {
    sub_1D227268C(&v107, v104);
    v97 = *(v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectType);
    v95 = a1;
    if (*(v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectType) && *(v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectType) != 1)
    {

      v20 = 0.7;
    }

    else
    {
      v19 = sub_1D2879618();

      if (v19)
      {
        v20 = 0.7;
      }

      else
      {
        v20 = 0.42;
      }
    }

    v21 = v105;
    v22 = v106;
    __swift_project_boxed_opaque_existential_1(v104, v105);
    v102 = v10;
    *&v101 = v20;
    (*(v22 + 8))(&v101, 768, v21, v22);
    __swift_destroy_boxed_opaque_existential_0(&v101);
    v23 = v97;
    if (v97 > 1)
    {
    }

    else
    {
      v24 = sub_1D2879618();

      if ((v24 & 1) == 0)
      {
LABEL_21:
        v94 = v9;
        if (a2)
        {
          goto LABEL_24;
        }

        if (v23 > 1)
        {
          swift_bridgeObjectRelease_n();
          goto LABEL_32;
        }

        v30 = sub_1D2879618();

        if ((v30 & 1) == 0)
        {
LABEL_24:
          v31 = v105;
          v32 = v106;
          __swift_project_boxed_opaque_existential_1(v104, v105);
          v102 = v10;
          LODWORD(v101) = 1051372202;
          v33 = *(v32 + 8);
          v34 = v32;
          v23 = v97;
          v33(&v101, 1280, v31, v34);
          __swift_destroy_boxed_opaque_existential_0(&v101);
        }

        if (v23 > 1)
        {

          if (a2)
          {
            goto LABEL_41;
          }
        }

        else
        {
          v35 = sub_1D2879618();

          if (v35 & 1) == 0 || (a2)
          {
            goto LABEL_40;
          }
        }

LABEL_32:
        if ((*(v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_isForStickers) & 1) == 0)
        {
          sub_1D22D7044(v104, &v101);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E18F0, &qword_1D28A4828);
          type metadata accessor for VisualEffectRENodes();
          if (swift_dynamicCast())
          {
            v36 = v98[0];
            if (a4)
            {
              v37 = 1.0;
            }

            else
            {
              v37 = 0.0;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E18F8, &unk_1D28A4838);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_1D287F550;
            *(inited + 32) = 7680;
            *(inited + 36) = 0;
            *(inited + 40) = 10752;
            *(inited + 44) = v37;
            v39 = sub_1D25D6C04(inited);
            swift_setDeallocating();
            v40 = sub_1D24171A8(v39);

            sub_1D2753044(v40, 0, 1, 0, 0.2);

            v41 = swift_allocObject();
            swift_unknownObjectWeakInit();
            type metadata accessor for VisualEffectRENodes.VisualEffectAnimationClosure();
            v42 = swift_allocObject();
            *(v42 + 32) = 0;
            *(v42 + 40) = 0;
            *(v42 + 48) = 1;
            *(v42 + 64) = 0;
            *(v42 + 72) = 0;
            *(v42 + 52) = 1084227584;
            *(v42 + 56) = 0;
            *(v42 + 16) = sub_1D276ECE8;
            *(v42 + 24) = v41;
            swift_beginAccess();
            v43 = swift_retain_n();
            MEMORY[0x1D38A0E30](v43);
            if (*((*(v36 + 104) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v36 + 104) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1D2878428();
            }

            sub_1D2878488();
            swift_endAccess();

            sub_1D2760BB8(v36, 0, 1, 0.2);

            v23 = v97;
          }
        }

LABEL_40:
        if (v23 < 2)
        {
          v44 = v5;
          v46 = sub_1D2879618();

          if (v46)
          {
            v47 = -1;
          }

          else
          {
            v47 = 0;
          }

          v45 = vbsl_s8(vdup_n_s32(v47), vdup_n_s32(0x3FD55555u), 0x3F0000003F000000);
LABEL_46:
          v48 = objc_opt_self();
          v49 = [v48 valueWithVFXFloat2_];
          v51 = v105;
          v50 = v106;
          __swift_project_boxed_opaque_existential_1(v104, v105);
          v52 = sub_1D22BCFD0(0, &qword_1ED89CC90, 0x1E696B098);
          v102 = v52;
          *&v101 = v49;
          v53 = *(v50 + 8);
          v93 = v49;
          v53(&v101, 1536, v51, v50);
          __swift_destroy_boxed_opaque_existential_0(&v101);
          v54 = v44;
          sub_1D2761588();
          if ((v95 & 1) == 0)
          {
            sub_1D2765280(0, 1);
          }

          __asm { FMOV            V0.2S, #1.0 }

          v60 = [v48 valueWithVFXFloat2_];
          v61 = v105;
          v62 = v106;
          __swift_project_boxed_opaque_existential_1(v104, v105);
          v102 = v52;
          *&v101 = v60;
          v63 = *(v62 + 8);
          v64 = v60;
          v63(&v101, 7168, v61, v62);
          __swift_destroy_boxed_opaque_existential_0(&v101);
          v65 = MEMORY[0x1E69E6448];
          if (v95)
          {
            if (a2)
            {
LABEL_52:
              v67 = v105;
              v68 = v106;
              __swift_project_boxed_opaque_existential_1(v104, v105);
              v102 = v65;
              LODWORD(v101) = 0;
              (*(v68 + 8))(&v101, 7680, v67, v68);
              __swift_destroy_boxed_opaque_existential_0(&v101);
              goto LABEL_53;
            }

            if (v97 <= 1)
            {
              v66 = sub_1D2879618();

              if (v66)
              {
                goto LABEL_53;
              }

              goto LABEL_52;
            }
          }

LABEL_53:
          v69 = v105;
          v70 = v106;
          __swift_project_boxed_opaque_existential_1(v104, v105);
          v102 = v65;
          LODWORD(v101) = 0;
          (*(v70 + 8))(&v101, 0x2000, v69, v70);
          __swift_destroy_boxed_opaque_existential_0(&v101);
          v71 = v105;
          v72 = v106;
          __swift_project_boxed_opaque_existential_1(v104, v105);
          v102 = v65;
          LODWORD(v101) = 0;
          (*(v72 + 8))(&v101, 8704, v71, v72);
          __swift_destroy_boxed_opaque_existential_0(&v101);
          v73 = v105;
          v74 = v106;
          __swift_project_boxed_opaque_existential_1(v104, v105);
          v102 = v65;
          LODWORD(v101) = 1065353216;
          (*(v74 + 8))(&v101, 8448, v73, v74);
          __swift_destroy_boxed_opaque_existential_0(&v101);
          if (v97 > 1)
          {
          }

          else
          {
            v75 = sub_1D2879618();

            if ((v75 & 1) == 0)
            {
              v76 = v105;
              v77 = v106;
              __swift_project_boxed_opaque_existential_1(v104, v105);
              v102 = v65;
              LODWORD(v101) = 0;
              (*(v77 + 8))(&v101, 7936, v76, v77);
              __swift_destroy_boxed_opaque_existential_0(&v101);
              sub_1D2761000();
LABEL_58:
              v80 = v105;
              v81 = v106;
              __swift_project_boxed_opaque_existential_1(v104, v105);
              v102 = v65;
              LODWORD(v101) = 1032805416;
              (*(v81 + 8))(&v101, 1792, v80, v81);
              __swift_destroy_boxed_opaque_existential_0(&v101);
              v82 = v105;
              v83 = v106;
              __swift_project_boxed_opaque_existential_1(v104, v105);
              v102 = MEMORY[0x1E69E6370];
              LOBYTE(v101) = 0;
              (*(v83 + 8))(&v101, 7424, v82, v83);
              __swift_destroy_boxed_opaque_existential_0(&v101);
              v84 = v105;
              v85 = v106;
              __swift_project_boxed_opaque_existential_1(v104, v105);
              v102 = MEMORY[0x1E69E6530];
              *&v101 = 0;
              (*(v85 + 8))(&v101, 9984, v84, v85);
              __swift_destroy_boxed_opaque_existential_0(&v101);
              if (v97 > 1)
              {

                v87 = 0.1;
              }

              else
              {
                v86 = sub_1D2879618();

                if (v86)
                {
                  v87 = 0.1;
                }

                else
                {
                  v87 = 0.35;
                }
              }

              v88 = v105;
              v89 = v106;
              __swift_project_boxed_opaque_existential_1(v104, v105);
              v102 = MEMORY[0x1E69E63B0];
              *&v101 = v87;
              (*(v89 + 8))(&v101, 6144, v88, v89);
              __swift_destroy_boxed_opaque_existential_0(&v101);
              sub_1D2758CD8(v54 + v94, &v101);
              if (v103)
              {

                sub_1D2758D34(&v101);
              }

              else
              {
                sub_1D227268C(&v101, v98);
                v90 = v99;
                v91 = v100;
                __swift_project_boxed_opaque_existential_1(v98, v99);
                (*(v91 + 40))(v90, v91);

                __swift_destroy_boxed_opaque_existential_0(v98);
              }

              v18 = v104;
              return __swift_destroy_boxed_opaque_existential_0(v18);
            }
          }

          v78 = v105;
          v79 = v106;
          __swift_project_boxed_opaque_existential_1(v104, v105);
          v102 = v65;
          LODWORD(v101) = 0;
          (*(v79 + 8))(&v101, 6400, v78, v79);
          __swift_destroy_boxed_opaque_existential_0(&v101);
          goto LABEL_58;
        }

LABEL_41:
        v44 = v5;

        v45 = vdup_n_s32(0x3FD55555u);
        goto LABEL_46;
      }
    }

    sub_1D22D7044(v104, &v101);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E18F0, &qword_1D28A4828);
    type metadata accessor for VisualEffectRENodes();
    if (swift_dynamicCast())
    {
      v25 = v98[0];
      if (a3)
      {
        v102 = v10;
        LODWORD(v101) = 0;
        sub_1D2754BC0(&v101, 11008);
        __swift_destroy_boxed_opaque_existential_0(&v101);
        v26 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v27 = swift_allocObject();
        *(v27 + 16) = v26;
        *(v27 + 24) = v25;
        type metadata accessor for VisualEffectRENodes.VisualEffectAnimationClosure();
        v28 = swift_allocObject();
        *(v28 + 32) = 0;
        *(v28 + 40) = 0;
        *(v28 + 48) = 1;
        *(v28 + 64) = 0;
        *(v28 + 72) = 0;
        *(v28 + 52) = 1084227584;
        *(v28 + 56) = 0;
        *(v28 + 16) = sub_1D276ECF0;
        *(v28 + 24) = v27;
        swift_beginAccess();
        sub_1D2870F78();
        sub_1D2870F78();
        v29 = sub_1D2870F78();
        MEMORY[0x1D38A0E30](v29);
        if (*((*(v25 + 104) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v25 + 104) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D2878428();
        }

        sub_1D2878488();
        swift_endAccess();

        sub_1D2760BB8(v25, 0, 1, 0.2);

        v23 = v97;
      }

      else
      {
        v102 = v10;
        LODWORD(v101) = 1061997773;
        sub_1D2754BC0(&v101, 11008);

        __swift_destroy_boxed_opaque_existential_0(&v101);
      }
    }

    goto LABEL_21;
  }

  v11 = *(&v107 + 1);
  v12 = v108;
  v13 = 1.0;
  if (a1)
  {
    v13 = 0.0;
  }

  v102 = MEMORY[0x1E69E6448];
  *&v101 = v13;
  v14 = v107;
  sub_1D2777178(&v101, 0xD000000000000017, 0x80000001D28AF030, 1);

  __swift_destroy_boxed_opaque_existential_0(&v101);
  v102 = v10;
  LODWORD(v101) = 0;
  v15 = v14;
  sub_1D2777178(&v101, 0xD000000000000016, 0x80000001D28AEA90, 1);

  __swift_destroy_boxed_opaque_existential_0(&v101);
  v102 = v10;
  LODWORD(v101) = 0;
  v16 = v15;
  sub_1D2777178(&v101, 0xD00000000000001ALL, 0x80000001D28AEAB0, 1);

  __swift_destroy_boxed_opaque_existential_0(&v101);
  v102 = v10;
  LODWORD(v101) = 0;
  v17 = v16;
  sub_1D2777178(&v101, 0xD00000000000001CLL, 0x80000001D28AF050, 1);

  v18 = &v101;
  return __swift_destroy_boxed_opaque_existential_0(v18);
}

uint64_t sub_1D2762B40(int a1, int a2, int a3)
{
  v4 = v3;
  LODWORD(v43) = a3;
  LODWORD(v42) = a2;
  v41 = a1;
  v5 = sub_1D2877B48();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v47 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1D2877B68();
  v46 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v45 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1D2877B38();
  v9 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v11 = (v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_1D2877BA8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v39 - v17;
  v19 = *(v4 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectType);
  v49 = v6;
  v50 = v5;
  v44 = v20;
  if (v19 > 1)
  {
  }

  else
  {
    v21 = sub_1D2879618();

    if ((v21 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  sub_1D2758CD8(v4 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController, &aBlock);
  if (v56 == 1)
  {
    sub_1D2758D34(&aBlock);
  }

  else
  {
    sub_1D227268C(&aBlock, v51);
    sub_1D22D7044(v51, &aBlock);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E18F0, &qword_1D28A4828);
    type metadata accessor for VisualEffectRENodes();
    if (swift_dynamicCast())
    {
      sub_1D2753D54();
    }

    __swift_destroy_boxed_opaque_existential_0(v51);
  }

LABEL_10:
  v22 = v4;
  v23 = *(v4 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_animationCoordinator);
  result = swift_unknownObjectWeakLoadStrong();
  v25 = result;
  v26 = *(v23 + 24);
  if (!result)
  {
LABEL_13:
    v39[1] = v22;
    sub_1D2761C30(v41 & 1, 0, v42 & 1, v43 & 1);
    sub_1D22BCFD0(0, &qword_1ED89CD50, 0x1E69E9610);
    v43 = sub_1D2878AB8();
    sub_1D2877B88();
    *v11 = 1;
    v31 = v40;
    (*(v9 + 104))(v11, *MEMORY[0x1E69E7F48], v40);
    MEMORY[0x1D38A0630](v15, v11);
    (*(v9 + 8))(v11, v31);
    v42 = *(v13 + 8);
    v32 = v44;
    v42(v15, v44);
    v33 = swift_allocObject();
    *(v33 + 16) = v25;
    *(v33 + 24) = v26;
    v55 = sub_1D276ECA8;
    v56 = v33;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v53 = sub_1D23DFBA8;
    v54 = &block_descriptor_42;
    v34 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();
    v35 = v45;
    sub_1D2877B58();
    v51[0] = MEMORY[0x1E69E7CC0];
    sub_1D2775F90(&qword_1ED89CFE0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE80, &qword_1D287EE00);
    sub_1D22D5EFC();
    v36 = v47;
    v37 = v50;
    sub_1D2879088();
    v38 = v43;
    MEMORY[0x1D38A1510](v18, v35, v36, v34);
    _Block_release(v34);

    (*(v49 + 8))(v36, v37);
    (*(v46 + 8))(v35, v48);
    v42(v18, v32);

    sub_1D2761250();
    return swift_unknownObjectRelease();
  }

  v27 = *(result + OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_gp_isAnimatingCount);
  v28 = __CFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(result + OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_gp_isAnimatingCount) = v29;
    v30 = swift_unknownObjectRetain();
    sub_1D277A35C(v30);
    swift_unknownObjectRelease();
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void sub_1D276319C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, double a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60, &qword_1D28811F0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20 - v10;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_transitionToGeneratingTask;
    if (*(Strong + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_transitionToGeneratingTask))
    {
      sub_1D2870F78();
      sub_1D28786B8();
    }

    v15 = sub_1D28785F8();
    (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1D2878568();
    sub_1D2870F78();
    sub_1D2870F78();
    v17 = sub_1D2878558();
    v18 = swift_allocObject();
    v19 = MEMORY[0x1E69E85E0];
    *(v18 + 16) = v17;
    *(v18 + 24) = v19;
    *(v18 + 32) = v16;
    *(v18 + 40) = a2 & 1;
    *(v18 + 48) = a5;
    *(v18 + 56) = a3;
    *(v18 + 64) = a4;

    *&v13[v14] = sub_1D22AE01C(0, 0, v11, &unk_1D28A4868, v18);
  }
}

uint64_t sub_1D27633B0(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 472) = a7;
  *(v8 + 480) = a8;
  *(v8 + 464) = a1;
  *(v8 + 177) = a6;
  *(v8 + 456) = a5;
  v9 = sub_1D2873CB8();
  *(v8 + 488) = v9;
  *(v8 + 496) = *(v9 - 8);
  *(v8 + 504) = swift_task_alloc();
  sub_1D2878568();
  *(v8 + 512) = sub_1D2878558();
  v11 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D27634B0, v11, v10);
}

uint64_t sub_1D27634B0()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (sub_1D28786D8() & 1) != 0 || (sub_1D28786D8())
    {
      goto LABEL_32;
    }

    v3 = *(v0 + 464);
    v4 = *(v0 + 177);
    v5 = swift_allocObject();
    *(v5 + 16) = v2;
    *(v5 + 24) = v3;
    *(v5 + 32) = v4;
    *(v5 + 40) = *(v0 + 472);
    sub_1D2758CD8(&v2[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController], v0 + 136);
    if (*(v0 + 176))
    {
      *(v0 + 256) = 0;
      *(v0 + 224) = 0u;
      *(v0 + 240) = 0u;
      v6 = v2;
      swift_retain_n();
      v7 = v6;
      sub_1D2758D34(v0 + 136);
      if (*(v0 + 248))
      {
        goto LABEL_6;
      }
    }

    else
    {
      sub_1D227268C((v0 + 136), v0 + 224);
      v12 = v2;
      swift_retain_n();
      v13 = v12;
      if (*(v0 + 248))
      {
LABEL_6:
        v8 = *(v0 + 177);
        sub_1D227268C((v0 + 224), v0 + 184);
        v9 = *(v0 + 208);
        v10 = *(v0 + 216);
        __swift_project_boxed_opaque_existential_1((v0 + 184), v9);
        v11 = MEMORY[0x1E69E6448];
        *(v0 + 328) = MEMORY[0x1E69E6448];
        *(v0 + 304) = 0;
        (*(v10 + 16))(v0 + 304, 6400, 0, v9, v10);
        __swift_destroy_boxed_opaque_existential_0((v0 + 304));
        if ((v8 & 1) == 0)
        {
          v25 = *(v0 + 208);
          v26 = *(v0 + 216);
          __swift_project_boxed_opaque_existential_1((v0 + 184), v25);
          *(v0 + 360) = v11;
          *(v0 + 336) = 1036831949;
          (*(v26 + 16))(v0 + 336, 6400, 0, v25, v26);
          __swift_destroy_boxed_opaque_existential_0((v0 + 336));
          if (sub_1D28786D8())
          {
LABEL_24:
            __swift_destroy_boxed_opaque_existential_0((v0 + 184));
            goto LABEL_25;
          }

          v28 = *(v0 + 472);
          v27 = *(v0 + 480);
          v29 = *(v0 + 464);
          sub_1D2870F78();
          sub_1D2771E2C(0, v2, v28, v27, 0.1, 0.7, v29);
LABEL_23:

          goto LABEL_24;
        }

        if (v2[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectType] && v2[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectType] != 1)
        {
        }

        else
        {
          v30 = sub_1D2879618();

          if ((v30 & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        sub_1D22D7044(v0 + 184, v0 + 264);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E18F0, &qword_1D28A4828);
        type metadata accessor for VisualEffectRENodes();
        if (swift_dynamicCast())
        {
          v31 = *(v0 + 448);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1908, &qword_1D28A4848);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1D287F500;
          *(inited + 32) = 6400;
          v33 = inited + 32;
          *(inited + 64) = v11;
          *(inited + 40) = 1036831949;
          v34 = sub_1D25D6D04(inited);
          swift_setDeallocating();
          sub_1D22BD238(v33, &unk_1EC6E1910, &unk_1D28A4850);
          sub_1D2753044(v34, 0, 1, 2, 1.0);

          type metadata accessor for VisualEffectRENodes.VisualEffectAnimationClosure();
          v35 = swift_allocObject();
          *(v35 + 32) = 0;
          *(v35 + 40) = 0;
          *(v35 + 48) = 1;
          *(v35 + 64) = 0;
          *(v35 + 72) = 0;
          *(v35 + 52) = 1065353216;
          *(v35 + 56) = 0;
          *(v35 + 16) = sub_1D2774758;
          *(v35 + 24) = v5;
          swift_beginAccess();
          v36 = sub_1D2870F78();
          MEMORY[0x1D38A0E30](v36);
          if (*((*(v31 + 104) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v31 + 104) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
LABEL_22:
            sub_1D2878488();
            swift_endAccess();
            sub_1D2760BB8(v31, 0, 1, 1.0);
            goto LABEL_23;
          }

LABEL_37:
          sub_1D2878428();
          goto LABEL_22;
        }

LABEL_26:
        v37 = objc_allocWithZone(MEMORY[0x1E69793D0]);
        LODWORD(v38) = 1053609165;
        LODWORD(v39) = 1063675494;
        LODWORD(v40) = 1.0;
        LODWORD(v41) = 1.0;
        v42 = [v37 initWithControlPoints__:v38 :{v40, v39, v41}];
        v43 = swift_allocObject();
        *(v43 + 16) = sub_1D2774758;
        *(v43 + 24) = v5;
        v31 = *&v2[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_animationCoordinator];
        v44 = swift_unknownObjectWeakLoadStrong();
        if (!v44)
        {
          sub_1D2870F78();
          goto LABEL_30;
        }

        v45 = *(v44 + OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_gp_isAnimatingCount);
        v46 = __CFADD__(v45, 1);
        v47 = v45 + 1;
        if (!v46)
        {
          *(v44 + OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_gp_isAnimatingCount) = v47;
          v48 = sub_1D2870F78();
          sub_1D277A35C(v48);
          swift_unknownObjectRelease();
LABEL_30:
          v49 = swift_allocObject();
          swift_unknownObjectWeakLoadStrong();
          *(v49 + 24) = *(v31 + 24);
          swift_unknownObjectWeakInit();
          swift_unknownObjectRelease();
          v50 = swift_allocObject();
          v50[2] = v49;
          v50[3] = sub_1D22D79AC;
          v50[4] = v43;
          v51 = objc_opt_self();
          sub_1D2870F78();
          sub_1D2870F78();
          [v51 begin];
          *(v0 + 120) = sub_1D2776400;
          *(v0 + 128) = v50;
          *(v0 + 88) = MEMORY[0x1E69E9820];
          *(v0 + 96) = 1107296256;
          *(v0 + 104) = sub_1D23DFBA8;
          *(v0 + 112) = &block_descriptor_93;
          v52 = _Block_copy((v0 + 88));
          sub_1D2870F78();

          [v51 setCompletionBlock_];
          _Block_release(v52);
          [v51 setAnimationDuration_];
          [v51 setAnimationTimingFunction_];
          v54 = *(v0 + 208);
          v53 = *(v0 + 216);
          __swift_project_boxed_opaque_existential_1((v0 + 184), v54);
          *(v0 + 392) = MEMORY[0x1E69E6448];
          *(v0 + 368) = 1036831949;
          (*(v53 + 16))(v0 + 368, 6400, 0, v54, v53);
          __swift_destroy_boxed_opaque_existential_0((v0 + 368));
          [v51 commit];

          __swift_destroy_boxed_opaque_existential_0((v0 + 184));

          goto LABEL_31;
        }

        __break(1u);
        goto LABEL_37;
      }
    }

    sub_1D22BD238(v0 + 224, &qword_1EC6E1790, &qword_1D28A4830);
    sub_1D2872668();
    v14 = sub_1D2873CA8();
    v15 = sub_1D2878A18();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1D226E000, v14, v15, "gpNodes is nil", v16, 2u);
      MEMORY[0x1D38A3520](v16, -1, -1);
    }

    v18 = *(v0 + 496);
    v17 = *(v0 + 504);
    v19 = *(v0 + 488);

    (*(v18 + 8))(v17, v19);
    v20 = sub_1D28786D8();
    v21 = *(v0 + 480);
    if ((v20 & 1) == 0)
    {
      v22 = *(v0 + 472);
      v23 = *(v0 + 464);
      v24 = *(v0 + 177);
      sub_1D2870F78();
      sub_1D2771E2C(v24, v2, v22, v21, 0.1, 0.7, v23);

LABEL_31:

LABEL_32:
      goto LABEL_33;
    }

LABEL_25:

    goto LABEL_31;
  }

LABEL_33:

  v55 = *(v0 + 8);

  return v55();
}

double sub_1D2763D80(uint64_t a1, char a2, void (*a3)(void), uint64_t a4, double a5)
{
  if ((sub_1D28786D8() & 1) == 0)
  {
    sub_1D2870F78();
    sub_1D2771E2C(a2 & 1, a1, a3, a4, 0.1, 0.7, a5);
  }

  return result;
}

void sub_1D2763E28(uint64_t a1, char a2, uint64_t a3, uint64_t a4, double a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60, &qword_1D28811F0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20 - v10;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_transitionToGeneratingTask;
    if (*(Strong + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_transitionToGeneratingTask))
    {
      sub_1D2870F78();
      sub_1D28786B8();
    }

    v15 = sub_1D28785F8();
    (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
    sub_1D2878568();
    v16 = v13;
    sub_1D2870F78();
    v17 = sub_1D2878558();
    v18 = swift_allocObject();
    v19 = MEMORY[0x1E69E85E0];
    *(v18 + 16) = v17;
    *(v18 + 24) = v19;
    *(v18 + 32) = v16;
    *(v18 + 40) = a5;
    *(v18 + 48) = a2 & 1;
    *(v18 + 56) = a3;
    *(v18 + 64) = a4;
    *&v13[v14] = sub_1D22AE01C(0, 0, v11, &unk_1D28A4878, v18);
  }
}

uint64_t sub_1D2764004(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 56) = a6;
  *(v8 + 24) = a1;
  *(v8 + 16) = a5;
  sub_1D2878568();
  *(v8 + 48) = sub_1D2878558();
  v10 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D27640A8, v10, v9);
}

uint64_t sub_1D27640A8()
{

  if ((sub_1D28786D8() & 1) == 0)
  {
    v1 = *(v0 + 32);
    v2 = *(v0 + 40);
    v3 = *(v0 + 56);
    v4 = *(v0 + 24);
    v5 = *(v0 + 16);
    sub_1D2870F78();
    sub_1D27725F4(v3, v5, v1, v2, 0.0, 0.7, v4);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1D2764168(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 48) = a7;
  *(v8 + 56) = a8;
  *(v8 + 76) = a6;
  *(v8 + 72) = a1;
  *(v8 + 40) = a5;
  sub_1D2878568();
  *(v8 + 64) = sub_1D2878558();
  v10 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D276420C, v10, v9);
}

uint64_t sub_1D276420C()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v4 = *(v0 + 48);
    v3 = *(v0 + 56);
    v5 = *(v0 + 76);
    v6 = *(v0 + 72);
    sub_1D2870F78();
    v7 = v2;
    sub_1D2772DBC(v5, v7, v4, v3, v7, v6, 1.0, 0.3);
  }

  v8 = *(v0 + 8);

  return v8();
}

double sub_1D27642FC(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  a1();
  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_delayedGeneratedCompletions;
  swift_beginAccess();
  v5 = *(a3 + v4);
  v6 = *(v5 + 16);
  if (v6)
  {
    sub_1D2870F68();
    v7 = v5 + 40;
    do
    {
      v8 = *(v7 - 8);
      v9 = sub_1D2870F78();
      v8(v9);

      v7 += 16;
      --v6;
    }

    while (v6);
  }

  *(a3 + v4) = MEMORY[0x1E69E7CC0];

  *(a3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_transitionToGeneratedTask) = 0;

  return result;
}

uint64_t sub_1D27643D8(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1D2873CB8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v33[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D2758CD8(v4 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController, &v34);
  if (v36)
  {
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    sub_1D2758D34(&v34);
    if (*(&v38 + 1))
    {
LABEL_3:
      sub_1D227268C(&v37, v40);
      if (a1)
      {
        v12 = 0.0;
      }

      else
      {
        v12 = 1.0;
      }

      if ((a3 & 1) != 0 || (sub_1D22D7044(v40, &v34), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E18F0, &qword_1D28A4828), type metadata accessor for VisualEffectRENodes(), (swift_dynamicCast() & 1) == 0))
      {
        v20 = v41;
        v21 = v42;
        __swift_project_boxed_opaque_existential_1(v40, v41);
        v22 = MEMORY[0x1E69E6448];
        v35 = MEMORY[0x1E69E6448];
        LODWORD(v34) = 1065353216;
        (*(v21 + 16))(&v34, 7680, 0, v20, v21);
        __swift_destroy_boxed_opaque_existential_0(&v34);
        v23 = v41;
        v24 = v42;
        __swift_project_boxed_opaque_existential_1(v40, v41);
        v35 = v22;
        LODWORD(v34) = 0;
        (*(v24 + 16))(&v34, 7936, 0, v23, v24);
        __swift_destroy_boxed_opaque_existential_0(&v34);
        v25 = v41;
        v26 = v42;
        __swift_project_boxed_opaque_existential_1(v40, v41);
        v35 = v22;
        LODWORD(v34) = 0;
        (*(v26 + 16))(&v34, 8704, 0, v25, v26);
        __swift_destroy_boxed_opaque_existential_0(&v34);
        v27 = v41;
        v28 = v42;
        __swift_project_boxed_opaque_existential_1(v40, v41);
        v35 = v22;
        LODWORD(v34) = 0;
        (*(v28 + 16))(&v34, 0x2000, 0, v27, v28);
        __swift_destroy_boxed_opaque_existential_0(&v34);
        v29 = v41;
        v30 = v42;
        __swift_project_boxed_opaque_existential_1(v40, v41);
        v35 = v22;
        *&v34 = v12;
        (*(v30 + 16))(&v34, 6656, 0, v29, v30);
        __swift_destroy_boxed_opaque_existential_0(&v34);
        v31 = v41;
        v32 = v42;
        __swift_project_boxed_opaque_existential_1(v40, v41);
        v35 = v22;
        LODWORD(v34) = 1065353216;
        (*(v32 + 16))(&v34, 9472, 0, v31, v32);
        __swift_destroy_boxed_opaque_existential_0(&v34);
        sub_1D27648E8(1, 0, 1, 1, 0.0);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E18F8, &unk_1D28A4838);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1D2888690;
        *(inited + 32) = 7680;
        *(inited + 36) = 1065353216;
        *(inited + 40) = 7936;
        *(inited + 44) = 0;
        *(inited + 48) = 8704;
        *(inited + 52) = 0;
        *(inited + 56) = 0x2000;
        *(inited + 60) = 0;
        *(inited + 64) = 6656;
        *(inited + 68) = v12;
        *(inited + 72) = 9472;
        *(inited + 76) = 1065353216;
        v14 = sub_1D25D6C04(inited);
        swift_setDeallocating();
        v15 = sub_1D24171A8(v14);

        sub_1D2753044(v15, 0, 1, 0, *&a2);

        sub_1D27648E8(1, a2, 0, 1, 0.0);
      }

      return __swift_destroy_boxed_opaque_existential_0(v40);
    }
  }

  else
  {
    sub_1D227268C(&v34, &v37);
    if (*(&v38 + 1))
    {
      goto LABEL_3;
    }
  }

  sub_1D22BD238(&v37, &qword_1EC6E1790, &qword_1D28A4830);
  sub_1D2872668();
  v16 = sub_1D2873CA8();
  v17 = sub_1D2878A18();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1D226E000, v16, v17, "gpNodes is nil", v18, 2u);
    MEMORY[0x1D38A3520](v18, -1, -1);
  }

  return (*(v9 + 8))(v11, v8);
}

char *sub_1D27648E8(char a1, uint64_t a2, char a3, char a4, float a5)
{
  v11 = sub_1D2873CB8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v46[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController;
  sub_1D2758CD8(v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController, &aBlock);
  if (v52)
  {
    v55 = 0;
    v53 = 0u;
    v54 = 0u;
    sub_1D2758D34(&aBlock);
    if (*(&v54 + 1))
    {
      goto LABEL_3;
    }

LABEL_11:
    sub_1D22BD238(&v53, &qword_1EC6E1790, &qword_1D28A4830);
    sub_1D2872668();
    v21 = sub_1D2873CA8();
    v22 = sub_1D2878A18();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1D226E000, v21, v22, "gpNodes is nil", v23, 2u);
      MEMORY[0x1D38A3520](v23, -1, -1);
    }

    return (*(v12 + 8))(v14, v11);
  }

  sub_1D227268C(&aBlock, &v53);
  if (!*(&v54 + 1))
  {
    goto LABEL_11;
  }

LABEL_3:
  sub_1D227268C(&v53, v56);
  v16 = 0.0;
  v17 = 1.0;
  if (a1)
  {
    v16 = 1.0;
    v17 = 0.5;
  }

  v18 = v17 * a5;
  v19 = v16 + v18;
  if (a1)
  {
    if (a4)
    {
      v20 = a2;
    }

    else
    {
      v20 = 0;
    }

    sub_1D276713C(0, v20, a3 & 1 | ((a4 & 1) == 0), v16 + v18);
    return __swift_destroy_boxed_opaque_existential_0(v56);
  }

  if ((a4 & 1) == 0)
  {
    v25 = v57;
    v26 = v58;
    __swift_project_boxed_opaque_existential_1(v56, v57);
    v50 = MEMORY[0x1E69E6448];
    *&aBlock = v19;
    (*(v26 + 8))(&aBlock, 8704, v25, v26);
    p_aBlock = &aBlock;
    goto LABEL_19;
  }

  if (*(v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectType) && *(v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectType) != 1)
  {
  }

  else
  {
    v28 = sub_1D2879618();

    if ((v28 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  sub_1D2758CD8(v5 + v15, &aBlock);
  if (v52 != 1)
  {
    sub_1D227268C(&aBlock, &v53);
    sub_1D22D7044(&v53, &aBlock);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E18F0, &qword_1D28A4828);
    type metadata accessor for VisualEffectRENodes();
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(&v53);
      goto LABEL_28;
    }

    v29 = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1908, &qword_1D28A4848);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D287F500;
    *(inited + 32) = 8704;
    v31 = inited + 32;
    *(inited + 64) = MEMORY[0x1E69E6448];
    *(inited + 40) = v19;
    v32 = sub_1D25D6D04(inited);
    swift_setDeallocating();
    sub_1D22BD238(v31, &unk_1EC6E1910, &unk_1D28A4850);
    sub_1D2753044(v32, 0, 1, 0, 0.1);

    sub_1D2760BB8(v29, 0, 1, 0.1);

    p_aBlock = &v53;
LABEL_19:
    __swift_destroy_boxed_opaque_existential_0(p_aBlock);
    return __swift_destroy_boxed_opaque_existential_0(v56);
  }

  sub_1D2758D34(&aBlock);
LABEL_28:
  v33 = *(v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_animationCoordinator);
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
LABEL_31:
    v37 = *MEMORY[0x1E6979EB8];
    v38 = swift_allocObject();
    swift_unknownObjectWeakLoadStrong();
    *(v38 + 24) = *(v33 + 24);
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    v39 = swift_allocObject();
    v39[3] = 0;
    v39[4] = 0;
    v39[2] = v38;
    v40 = objc_opt_self();
    sub_1D2870F78();
    v41 = [v40 functionWithName_];
    v42 = objc_opt_self();
    [v42 begin];
    v51 = sub_1D2776400;
    v52 = v39;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v49 = sub_1D23DFBA8;
    v50 = &block_descriptor_179_0;
    v43 = _Block_copy(&aBlock);
    sub_1D2870F78();

    [v42 setCompletionBlock_];
    _Block_release(v43);
    [v42 setAnimationDuration_];
    [v42 setAnimationTimingFunction_];
    v44 = v57;
    v45 = v58;
    __swift_project_boxed_opaque_existential_1(v56, v57);
    v50 = MEMORY[0x1E69E6448];
    *&aBlock = v19;
    (*(v45 + 8))(&aBlock, 8704, v44, v45);
    __swift_destroy_boxed_opaque_existential_0(&aBlock);
    [v42 commit];

    return __swift_destroy_boxed_opaque_existential_0(v56);
  }

  v34 = *&result[OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_gp_isAnimatingCount];
  v35 = __CFADD__(v34, 1);
  v36 = v34 + 1;
  if (!v35)
  {
    *&result[OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_gp_isAnimatingCount] = v36;
    sub_1D277A35C(result);
    swift_unknownObjectRelease();
    goto LABEL_31;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D2764F68(uint64_t a1, char a2)
{
  v5 = sub_1D2873CB8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2758CD8(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController, &v21);
  if (v23)
  {
    v26 = 0;
    v24 = 0u;
    v25 = 0u;
    sub_1D2758D34(&v21);
    if (*(&v25 + 1))
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1D227268C(&v21, &v24);
    if (*(&v25 + 1))
    {
LABEL_3:
      sub_1D227268C(&v24, v27);
      sub_1D2765280(a1, a2 & 1);
      if ((a2 & 1) != 0 || (sub_1D22D7044(v27, &v21), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E18F0, &qword_1D28A4828), type metadata accessor for VisualEffectRENodes(), (swift_dynamicCast() & 1) == 0))
      {
        v16 = v28;
        v17 = v29;
        __swift_project_boxed_opaque_existential_1(v27, v28);
        v18 = MEMORY[0x1E69E6448];
        v22 = MEMORY[0x1E69E6448];
        LODWORD(v21) = 0;
        (*(v17 + 16))(&v21, 6656, 0, v16, v17);
        __swift_destroy_boxed_opaque_existential_0(&v21);
        v19 = v28;
        v20 = v29;
        __swift_project_boxed_opaque_existential_1(v27, v28);
        v22 = v18;
        LODWORD(v21) = 1065353216;
        (*(v20 + 16))(&v21, 8704, 0, v19, v20);
        __swift_destroy_boxed_opaque_existential_0(&v21);
      }

      else
      {
        v9 = *&a1;
        v10 = sub_1D25D6C04(&unk_1F4DBCC60);
        v11 = sub_1D24171A8(v10);

        sub_1D2753044(v11, 0, 1, 0, v9);
      }

      return __swift_destroy_boxed_opaque_existential_0(v27);
    }
  }

  sub_1D22BD238(&v24, &qword_1EC6E1790, &qword_1D28A4830);
  sub_1D2872668();
  v12 = sub_1D2873CA8();
  v13 = sub_1D2878A18();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1D226E000, v12, v13, "gpNodes is nil", v14, 2u);
    MEMORY[0x1D38A3520](v14, -1, -1);
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_1D2765280(uint64_t a1, char a2)
{
  v3 = v2;
  v61 = a1;
  v5 = sub_1D2873CB8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1D2877B48();
  v67 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v64 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1D2877B68();
  v65 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v63 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1D2877BA8();
  v62 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v59 - v14;
  v16 = sub_1D2871DD8();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2758CD8(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController, &aBlock);
  if (v75)
  {
    v78 = 0;
    v76 = 0u;
    v77 = 0u;
    sub_1D2758D34(&aBlock);
    if (*(&v77 + 1))
    {
      goto LABEL_3;
    }

LABEL_10:
    sub_1D22BD238(&v76, &qword_1EC6E1790, &qword_1D28A4830);
    sub_1D2872668();
    v28 = sub_1D2873CA8();
    v29 = sub_1D2878A18();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1D226E000, v28, v29, "gpNodes is nil", v30, 2u);
      MEMORY[0x1D38A3520](v30, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
    return;
  }

  sub_1D227268C(&aBlock, &v76);
  if (!*(&v77 + 1))
  {
    goto LABEL_10;
  }

LABEL_3:
  sub_1D227268C(&v76, &v79);
  v20 = OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_aspectRatio;
  swift_beginAccess();
  (*(v17 + 16))(v19, v3 + v20, v16);
  sub_1D2871DA8();
  v22 = v21;
  v24 = (*(v17 + 8))(v19, v16);
  v23 = v22;
  v24.n128_u32[0] = 1058362709;
  v24.n128_u32[0] = vdup_lane_s32(v24.n128_u64[0], 0).u32[0];
  v25.i32[0] = 1058362709;
  v26 = COERCE_DOUBLE(vdup_lane_s32(v25, 0));
  if (v23 < 1.0)
  {
    *&v26 = v23 * 0.58333;
    v27 = v26;
  }

  else
  {
    v24.n128_f32[1] = 0.58333 / v23;
    v27 = v24.n128_f64[0];
  }

  if (*(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectType) && *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectType) != 1)
  {

    goto LABEL_16;
  }

  v31 = sub_1D2879618();

  if (v31)
  {
LABEL_16:
    v27 = COERCE_DOUBLE(vmul_f32(*&v27, vdup_n_s32(0x40555555u)));
  }

  v32 = [objc_opt_self() valueWithVFXFloat2_];
  v33 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_world);
  if (v33)
  {
    v34 = [v33 rootNode];
    v35 = sub_1D2878068();
    v36 = [v34 childNodeWithName_];

    v37 = [v36 camera];
    if (v37)
    {
      if (v23 <= 1.0)
      {
        v38 = 2;
      }

      else
      {
        v38 = 3;
      }

      [v37 setFillMode_];
    }
  }

  if ((a2 & 1) == 0)
  {
    sub_1D22D7044(&v79, &aBlock);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E18F0, &qword_1D28A4828);
    type metadata accessor for VisualEffectRENodes();
    if (swift_dynamicCast())
    {
      v39 = *&v61;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1908, &qword_1D28A4848);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D287F500;
      *(inited + 32) = 1536;
      *(inited + 64) = sub_1D22BCFD0(0, &qword_1ED89CC90, 0x1E696B098);
      *(inited + 40) = v32;
      v41 = v32;
      v42 = sub_1D25D6D04(inited);
      swift_setDeallocating();
      sub_1D22BD238(inited + 32, &unk_1EC6E1910, &unk_1D28A4850);
      sub_1D2753044(v42, 0, 1, 1, v39);

      __swift_destroy_boxed_opaque_existential_0(&v79);
      return;
    }
  }

  sub_1D22D7044(&v79, &v76);
  v43 = swift_allocObject();
  sub_1D227268C(&v76, v43 + 16);
  *(v43 + 56) = v32;
  v44 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_animationCoordinator);
  Strong = swift_unknownObjectWeakLoadStrong();
  v60 = v32;
  if (!Strong)
  {
    v49 = v32;
    goto LABEL_30;
  }

  v46 = *(Strong + OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_gp_isAnimatingCount);
  v47 = __CFADD__(v46, 1);
  v48 = v46 + 1;
  if (!v47)
  {
    *(Strong + OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_gp_isAnimatingCount) = v48;
    sub_1D277A35C(v32);
    swift_unknownObjectRelease();
LABEL_30:
    v50 = swift_allocObject();
    swift_unknownObjectWeakLoadStrong();
    *(v50 + 24) = *(v44 + 24);
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    v51 = swift_allocObject();
    v51[2] = v50;
    sub_1D22BCFD0(0, &qword_1ED89CD50, 0x1E69E9610);
    v51[3] = 0;
    v51[4] = 0;
    sub_1D2870F78();
    v61 = sub_1D2878AB8();
    sub_1D2877B88();
    v59 = v15;
    sub_1D2877BC8();
    v62 = *(v62 + 8);
    (v62)(v12, v69);
    v52 = swift_allocObject();
    v52[2] = sub_1D277464C;
    v52[3] = v51;
    v52[4] = 0x3FD3333333333333;
    v52[5] = sub_1D2774640;
    v52[6] = v43;
    v74 = sub_1D277466C;
    v75 = v52;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v72 = sub_1D23DFBA8;
    v73 = &block_descriptor_61;
    v53 = _Block_copy(&aBlock);
    sub_1D2870F78();
    sub_1D2870F78();
    v54 = v63;
    sub_1D2877B58();
    v70 = MEMORY[0x1E69E7CC0];
    sub_1D2775F90(&qword_1ED89CFE0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE80, &qword_1D287EE00);
    sub_1D22D5EFC();
    v55 = v64;
    v56 = v68;
    sub_1D2879088();
    v57 = v59;
    v58 = v61;
    MEMORY[0x1D38A1510](v59, v54, v55, v53);
    _Block_release(v53);

    (*(v67 + 8))(v55, v56);
    (*(v65 + 8))(v54, v66);
    (v62)(v57, v69);
    __swift_destroy_boxed_opaque_existential_0(&v79);

    return;
  }

  __break(1u);
}

uint64_t sub_1D2765D3C(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_1D2873CB8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2758CD8(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController, &v25);
  if (v27)
  {
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    sub_1D2758D34(&v25);
    if (*(&v29 + 1))
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1D227268C(&v25, &v28);
    if (*(&v29 + 1))
    {
LABEL_3:
      sub_1D227268C(&v28, v31);
      v10 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_world);
      if (v10)
      {
        v11 = [v10 rootNode];
        v12 = sub_1D2878068();
        v13 = [v11 childNodeWithName_];

        v14 = [v13 camera];
        if (v14)
        {
          [v14 setFillMode_];
        }
      }

      if ((a2 & 1) != 0 || (sub_1D22D7044(v31, &v25), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E18F0, &qword_1D28A4828), type metadata accessor for VisualEffectRENodes(), (swift_dynamicCast() & 1) == 0))
      {
        v22 = v32;
        v23 = v33;
        __swift_project_boxed_opaque_existential_1(v31, v32);
        v26 = MEMORY[0x1E69E6448];
        LODWORD(v25) = 0;
        (*(v23 + 16))(&v25, 8704, 0, v22, v23);
        __swift_destroy_boxed_opaque_existential_0(&v25);
        sub_1D27648E8(1, 0, 1, 1, 0.0);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1908, &qword_1D28A4848);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1D287F500;
        *(inited + 32) = 8704;
        v16 = inited + 32;
        *(inited + 64) = MEMORY[0x1E69E6448];
        *(inited + 40) = 0;
        v17 = sub_1D25D6D04(inited);
        swift_setDeallocating();
        sub_1D22BD238(v16, &unk_1EC6E1910, &unk_1D28A4850);
        sub_1D2753044(v17, 0, 1, 0, *&a1);

        sub_1D27648E8(1, a1, 0, 1, 0.0);
      }

      return __swift_destroy_boxed_opaque_existential_0(v31);
    }
  }

  sub_1D22BD238(&v28, &qword_1EC6E1790, &qword_1D28A4830);
  sub_1D2872668();
  v18 = sub_1D2873CA8();
  v19 = sub_1D2878A18();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_1D226E000, v18, v19, "gpNodes is nil", v20, 2u);
    MEMORY[0x1D38A3520](v20, -1, -1);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1D2766134(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D2873CB8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController;
  sub_1D2758CD8(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController, &aBlock);
  if (v41)
  {
    v44 = 0;
    v42 = 0u;
    v43 = 0u;
    sub_1D2758D34(&aBlock);
    if (*(&v43 + 1))
    {
LABEL_3:
      sub_1D227268C(&v42, v45);
      v11 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_transitionToImageDuration);
      if (*(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectType) && *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectType) != 1)
      {
      }

      else
      {
        v16 = sub_1D2879618();

        if ((v16 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      sub_1D2758CD8(v3 + v10, &aBlock);
      if (v41 == 1)
      {
        sub_1D2758D34(&aBlock);
      }

      else
      {
        sub_1D227268C(&aBlock, &v42);
        sub_1D22D7044(&v42, &aBlock);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E18F0, &qword_1D28A4828);
        type metadata accessor for VisualEffectRENodes();
        if (swift_dynamicCast())
        {
          v17 = v36[1];
          v18 = sub_1D25D6C04(&unk_1F4DBD100);
          v19 = sub_1D24171A8(v18);

          sub_1D2753044(v19, 0, 1, 0, *&v11);

          sub_1D2765280(v11, 0);
          type metadata accessor for VisualEffectRENodes.VisualEffectAnimationClosure();
          v20 = swift_allocObject();
          *(v20 + 32) = 0;
          *(v20 + 40) = 0;
          *(v20 + 48) = 1;
          *(v20 + 64) = 0;
          *(v20 + 72) = 0;
          v21 = 1.0 / *&v11;
          *(v20 + 52) = v21;
          *(v20 + 56) = 0;
          *(v20 + 16) = a1;
          *(v20 + 24) = a2;
          swift_beginAccess();
          v22 = sub_1D2870F78();
          MEMORY[0x1D38A0E30](v22);
          if (*((v17[13] & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v17[13] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
LABEL_17:
            sub_1D2878488();
            swift_endAccess();
            sub_1D2760BB8(v17, 0, 1, *&v11);

            __swift_destroy_boxed_opaque_existential_0(&v42);
            return __swift_destroy_boxed_opaque_existential_0(v45);
          }

LABEL_26:
          sub_1D2878428();
          goto LABEL_17;
        }

        __swift_destroy_boxed_opaque_existential_0(&v42);
      }

LABEL_19:
      v17 = swift_allocObject();
      v17[2] = a1;
      v17[3] = a2;
      v23 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_animationCoordinator);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        sub_1D2870F78();
        goto LABEL_23;
      }

      v25 = *(Strong + OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_gp_isAnimatingCount);
      v26 = __CFADD__(v25, 1);
      v27 = v25 + 1;
      if (!v26)
      {
        *(Strong + OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_gp_isAnimatingCount) = v27;
        v28 = sub_1D2870F78();
        sub_1D277A35C(v28);
        swift_unknownObjectRelease();
LABEL_23:
        v29 = *MEMORY[0x1E6979EB8];
        v30 = swift_allocObject();
        swift_unknownObjectWeakLoadStrong();
        *(v30 + 24) = *(v23 + 24);
        swift_unknownObjectWeakInit();
        swift_unknownObjectRelease();
        v31 = swift_allocObject();
        v31[2] = v30;
        v31[3] = sub_1D22D5EBC;
        v31[4] = v17;
        v32 = objc_opt_self();
        sub_1D2870F78();
        sub_1D2870F78();
        v33 = [v32 functionWithName_];
        v34 = objc_opt_self();
        [v34 begin];
        v40 = sub_1D2776400;
        v41 = v31;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        v38 = sub_1D23DFBA8;
        v39 = &block_descriptor_245;
        v35 = _Block_copy(&aBlock);
        sub_1D2870F78();

        [v34 setCompletionBlock_];
        _Block_release(v35);
        [v34 setAnimationDuration_];
        [v34 setAnimationTimingFunction_];
        sub_1D2766788(v45);
        [v34 commit];

        return __swift_destroy_boxed_opaque_existential_0(v45);
      }

      __break(1u);
      goto LABEL_26;
    }
  }

  else
  {
    sub_1D227268C(&aBlock, &v42);
    if (*(&v43 + 1))
    {
      goto LABEL_3;
    }
  }

  sub_1D22BD238(&v42, &qword_1EC6E1790, &qword_1D28A4830);
  sub_1D2872668();
  v12 = sub_1D2873CA8();
  v13 = sub_1D2878A18();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1D226E000, v12, v13, "gpNodes is nil", v14, 2u);
    MEMORY[0x1D38A3520](v14, -1, -1);
  }

  return (*(v7 + 8))(v9, v6);
}