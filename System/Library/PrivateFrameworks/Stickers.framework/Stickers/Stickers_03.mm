uint64_t sub_1B89E4E14()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B89E4EA0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B89E4F10(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91E48, &qword_1B8A28018);
  v2[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B89E4FAC, 0, 0);
}

uint64_t sub_1B89E4FAC()
{
  v1 = *(v0 + 32);
  v2 = sub_1B8A239B4();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_1B89E5090;
  v4 = *(v0 + 32);

  return sub_1B89E9ED8(v4, 0, 0);
}

uint64_t sub_1B89E5090(uint64_t a1)
{
  v4 = *v2;
  v4[6] = v1;

  v5 = v4[4];
  if (v1)
  {
    sub_1B89A8A78(v5, &qword_1EBA91E48, &qword_1B8A28018);
    v6 = sub_1B89E5268;
  }

  else
  {
    v4[7] = a1;
    sub_1B89A8A78(v5, &qword_1EBA91E48, &qword_1B8A28018);
    v6 = sub_1B89E51F8;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1B89E51F8()
{
  **(v0 + 16) = *(v0 + 56);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B89E5268()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B89E52CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1B8A23904();
  v59 = *(v6 - 8);
  v60 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v58 = &v56[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v61 = &v56[-v9];
  v10 = sub_1B8A239A4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v56[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v56[-v15];
  v17 = *(a2 + 16);
  v18 = *(v11 + 16);
  v63 = a1;
  if (!v17)
  {
    v20 = *MEMORY[0x1E69D4780];
LABEL_15:
    v18(v14, v63, v10);
    v26 = (*(v11 + 88))(v14, v10);
    if (v26 == v20)
    {
      goto LABEL_16;
    }

    if (v26 == *MEMORY[0x1E69D4770])
    {
      result = (*(v11 + 96))(v14, v10);
      v27 = v14[1];
      *a3 = *v14;
      a3[1] = v27;
      v28 = 1;
    }

    else
    {
      if (v26 == *MEMORY[0x1E69D4778])
      {
        (*(v11 + 96))(v14, v10);
        v30 = v59;
        v31 = v60;
        v32 = v61;
        (*(v59 + 32))(v61, v14, v60);
        if (qword_1EBA916C0 != -1)
        {
          swift_once();
        }

        v65 = 0;
        v33 = v64;
        v34 = sub_1B89D3BB0(v32, &v65);
        v35 = v58;
        if (v33)
        {
          sub_1B89AADD4(v65);
          if (qword_1EBA91528 != -1)
          {
            swift_once();
          }

          v36 = sub_1B8A23BC4();
          __swift_project_value_buffer(v36, qword_1EBA91530);
          (*(v30 + 16))(v35, v32, v31);
          v37 = v33;
          v38 = sub_1B8A23BA4();
          v39 = sub_1B8A24234();

          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            v41 = v30;
            v62 = a3;
            v42 = v40;
            v63 = swift_slowAlloc();
            v64 = swift_slowAlloc();
            v65 = v64;
            *v42 = 136315394;
            sub_1B89ECA60(&qword_1ED82DE78, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
            v57 = v39;
            v43 = sub_1B8A24934();
            v45 = v44;
            v46 = *(v41 + 8);
            v46(v35, v31);
            v47 = sub_1B89A907C(v43, v45, &v65);

            *(v42 + 4) = v47;
            *(v42 + 12) = 2112;
            v48 = v33;
            v49 = _swift_stdlib_bridgeErrorToNSError();
            *(v42 + 14) = v49;
            v50 = v63;
            *v63 = v49;
            _os_log_impl(&dword_1B89A7000, v38, v57, "Failed to fetch sticker w/ identifier %s: %@", v42, 0x16u);
            sub_1B89A8A78(v50, &qword_1EBA919E0, &qword_1B8A262D0);
            MEMORY[0x1B8CC5170](v50, -1, -1);
            v51 = v64;
            __swift_destroy_boxed_opaque_existential_0(v64);
            MEMORY[0x1B8CC5170](v51, -1, -1);
            v52 = v42;
            a3 = v62;
            MEMORY[0x1B8CC5170](v52, -1, -1);

            result = (v46)(v61, v31);
          }

          else
          {

            v55 = *(v30 + 8);
            v55(v35, v31);
            result = v55(v32, v31);
          }
        }

        else
        {
          v54 = v34;
          sub_1B89AADD4(v65);
          result = (*(v30 + 8))(v32, v31);
          if (v54)
          {
            *a3 = v54;
            a3[1] = 0;
            *(a3 + 16) = 0;
            return result;
          }
        }

LABEL_17:
        *a3 = 0;
        a3[1] = 0;
        *(a3 + 16) = -1;
        return result;
      }

      if (v26 != *MEMORY[0x1E69D4788])
      {
LABEL_16:
        result = (*(v11 + 8))(v14, v10);
        goto LABEL_17;
      }

      result = (*(v11 + 96))(v14, v10);
      v53 = v14[1];
      *a3 = *v14;
      a3[1] = v53;
      v28 = 2;
    }

    *(a3 + 16) = v28;
    return result;
  }

  v18(&v56[-v15], a1, v10);
  v19 = (*(v11 + 88))(v16, v10);
  v20 = *MEMORY[0x1E69D4780];
  v62 = a3;
  if (v19 == v20)
  {
    v21 = 0;
  }

  else if (v19 == *MEMORY[0x1E69D4770])
  {
    v21 = 1;
  }

  else if (v19 == *MEMORY[0x1E69D4778])
  {
    v21 = 2;
  }

  else
  {
    if (v19 != *MEMORY[0x1E69D4788])
    {
      result = sub_1B8A24714();
      __break(1u);
      return result;
    }

    v21 = 3;
  }

  result = (*(v11 + 8))(v16, v10);
  v23 = *(a2 + 16);
  v24 = (a2 + 32);
  while (v23)
  {
    v25 = *v24++;
    --v23;
    if (v25 == v21)
    {
      a3 = v62;
      goto LABEL_15;
    }
  }

  v29 = v62;
  *v62 = 0;
  v29[1] = 0;
  *(v29 + 16) = -1;
  return result;
}

uint64_t ImageGlyphRecency.recentEmojis(limit:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B89E5A38, v2, 0);
}

uint64_t sub_1B89E5A38()
{
  if (qword_1EBA91528 != -1)
  {
    swift_once();
  }

  v1 = sub_1B8A23BC4();
  __swift_project_value_buffer(v1, qword_1EBA91530);
  v2 = sub_1B8A23BA4();
  v3 = sub_1B8A24224();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 24);
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_1B89A7000, v2, v3, "Local client initiated request recent emojis with limit: %ld", v5, 0xCu);
    MEMORY[0x1B8CC5170](v5, -1, -1);
  }

  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  *v6 = v0;
  v6[1] = sub_1B89E5BA4;
  v7 = *(v0 + 24);

  return sub_1B89E8AAC(v7, 0);
}

uint64_t sub_1B89E5BA4(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    v8 = *(v4 + 32);
    *(v4 + 48) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1B89E5CF0, v8, 0);
  }
}

uint64_t sub_1B89E5CF0()
{
  v1 = v0[6];
  v2 = v0[2];
  v2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA91F40, &unk_1B8A27050);
  v2[4] = sub_1B89CCD90(&qword_1EBA91D40, &unk_1EBA91F40, &unk_1B8A27050, MEMORY[0x1E69E6328]);
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t ImageGlyphRecency.recentStickers(limit:)(uint64_t a1, uint64_t a2)
{
  v3[95] = v2;
  v3[94] = a2;
  v3[93] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B89E5DD4, v2, 0);
}

uint64_t sub_1B89E5DD4()
{
  if (qword_1EBA91528 != -1)
  {
    swift_once();
  }

  v1 = sub_1B8A23BC4();
  __swift_project_value_buffer(v1, qword_1EBA91530);
  v2 = sub_1B8A23BA4();
  v3 = sub_1B8A24224();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[94];
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_1B89A7000, v2, v3, "Local client initiated request recent stickers with limit: %ld", v5, 0xCu);
    MEMORY[0x1B8CC5170](v5, -1, -1);
  }

  v6 = v0[95];
  v7 = v0[94];

  v8 = swift_allocObject();
  v0[96] = v8;
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;

  v0[97] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AB8, &unk_1B8A265F0);
  swift_asyncLet_begin();
  if (qword_1EBA916C0 != -1)
  {
    swift_once();
  }

  v0[98] = qword_1EBA91C28;

  return MEMORY[0x1EEE6DEC0](v0 + 2, v0 + 92, sub_1B89E5FB4, v0 + 82);
}

uint64_t sub_1B89E5FB4()
{
  *(v1 + 792) = v0;
  if (v0)
  {
    v2 = sub_1B89E6170;
  }

  else
  {
    v2 = sub_1B89E5FE8;
  }

  return MEMORY[0x1EEE6DFA0](v2, *(v1 + 760), 0);
}

uint64_t sub_1B89E5FE8()
{
  v7 = v0;
  v1 = v0[99];
  v2 = v0[93];
  v3 = v0[92];
  v0[90] = v0[97];
  v0[91] = sub_1B89CCD90(&qword_1EBA91D48, &qword_1EBA91AB8, &unk_1B8A265F0, MEMORY[0x1E69E6328]);
  v0[87] = v3;
  v6 = 0;

  sub_1B89D3F20(v0 + 87, &v6, v2);
  v0[100] = v1;
  sub_1B89AADD4(v6);
  __swift_destroy_boxed_opaque_existential_0(v0 + 87);
  if (v1)
  {
    v4 = sub_1B89E6210;
  }

  else
  {
    v4 = sub_1B89E60F0;
  }

  return MEMORY[0x1EEE6DEB0](v0 + 2, v0 + 92, v4, v0 + 82);
}

uint64_t sub_1B89E610C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B89E61AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B89E622C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B89E6290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B89E62B4, 0, 0);
}

uint64_t sub_1B89E62B4()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1B89E6354;
  v2 = *(v0 + 32);

  return sub_1B89E9118(v2, 0);
}

uint64_t sub_1B89E6354(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 48) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1B89E64A0, 0, 0);
  }
}

uint64_t ImageGlyphRecency.recentGenmoji(limit:)(uint64_t a1, uint64_t a2)
{
  v3[104] = v2;
  v3[103] = a2;
  v3[97] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B89E64EC, v2, 0);
}

uint64_t sub_1B89E64EC()
{
  if (qword_1EBA91528 != -1)
  {
    swift_once();
  }

  v1 = sub_1B8A23BC4();
  __swift_project_value_buffer(v1, qword_1EBA91530);
  v2 = sub_1B8A23BA4();
  v3 = sub_1B8A24224();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 824);
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_1B89A7000, v2, v3, "Local client initiated request recent genmoji with limit: %ld", v5, 0xCu);
    MEMORY[0x1B8CC5170](v5, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91D50, &qword_1B8A27388);
  swift_asyncLet_begin();

  return MEMORY[0x1EEE6DEC0](v0 + 16, v0 + 696, sub_1B89E6668, v0 + 656);
}

uint64_t sub_1B89E6668()
{
  *(v1 + 840) = v0;
  if (v0)
  {
    return MEMORY[0x1EEE6DEB0](v1 + 16, v1 + 696, sub_1B89E6A00, v1 + 736);
  }

  else
  {
    return MEMORY[0x1EEE6DFA0](sub_1B89E66AC, *(v1 + 832), 0);
  }
}

uint64_t sub_1B89E66AC()
{
  v1 = v0[103];
  v2 = v0[97];
  v3 = v0[90];
  v4 = __swift_project_boxed_opaque_existential_0(v0 + 87, v3);
  v5 = *(v3 - 8);
  v6 = swift_task_alloc();
  (*(v5 + 16))(v6, v4, v3);
  v7 = sub_1B8A24084();

  v8 = &qword_1EBA91D58;
  v9 = &qword_1B8A27390;
  v2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91D58, &qword_1B8A27390);
  v2[4] = sub_1B89CCD90(&qword_1EBA91D60, &qword_1EBA91D58, &qword_1B8A27390, MEMORY[0x1E69E6968]);
  v10 = swift_allocObject();
  *v2 = v10;
  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  v8 = v10;
  v9 = (v7 & 0xFFFFFFFFFFFFFF8);
  v1 = v7 >> 62;
  if (v7 >> 62)
  {
LABEL_23:
    v26 = sub_1B8A24554();
    v15 = sub_1B8A24554();
    if (v15 < 0)
    {
LABEL_34:
      __break(1u);
      return MEMORY[0x1EEE6DEB0](v15, v11, v12, v13);
    }

    v27 = v0[103];
    if (v26 >= v27)
    {
      v28 = v0[103];
    }

    else
    {
      v28 = v26;
    }

    if (v26 < 0)
    {
      v28 = v0[103];
    }

    if (v27)
    {
      v17 = v28;
    }

    else
    {
      v17 = 0;
    }

    v15 = sub_1B8A24554();
    if (v15 >= v17)
    {
      goto LABEL_10;
    }

LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v14 = v0[103];
  v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v15 >= v14)
  {
    v16 = v0[103];
  }

  else
  {
    v16 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v14)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v15 < v17)
  {
    goto LABEL_33;
  }

LABEL_10:
  if ((v7 & 0xC000000000000001) != 0)
  {

    if (v17)
    {
      type metadata accessor for Sticker(0);
      v18 = 0;
      do
      {
        v19 = v18 + 1;
        sub_1B8A24654();
        v18 = v19;
      }

      while (v17 != v19);
    }
  }

  else
  {
  }

  if (v1)
  {
    v9 = sub_1B8A24734();
    v21 = v23;
    v20 = v24;
    v22 = v25;
  }

  else
  {
    v20 = 0;
    v21 = v9 + 4;
    v22 = (2 * v17) | 1;
  }

  v8[2] = v9;
  v8[3] = v21;
  v8[4] = v20;
  v8[5] = v22;
  v12 = sub_1B89E6980;
  v15 = (v0 + 2);
  v11 = v0 + 87;
  v13 = v0 + 98;

  return MEMORY[0x1EEE6DEB0](v15, v11, v12, v13);
}

uint64_t sub_1B89E699C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B89E6A1C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B89E6A80(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B89BBE18;

  return ImageGlyphRecency.recentStickers(limit:)(a1, 32);
}

BOOL sub_1B89E6B20(void *a1)
{
  v1 = *a1 + OBJC_IVAR___STKSticker_searchText;
  swift_beginAccess();
  return *(v1 + 8) != 0;
}

uint64_t ImageGlyphRecency.recentCharacters(limit:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B89E6BA4, v2, 0);
}

uint64_t sub_1B89E6BA4()
{
  if (qword_1EBA91528 != -1)
  {
    swift_once();
  }

  v1 = sub_1B8A23BC4();
  __swift_project_value_buffer(v1, qword_1EBA91530);
  v2 = sub_1B8A23BA4();
  v3 = sub_1B8A24224();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 24);
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_1B89A7000, v2, v3, "Local client initiated request recent characters with limit: %ld", v5, 0xCu);
    MEMORY[0x1B8CC5170](v5, -1, -1);
  }

  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  *v6 = v0;
  v6[1] = sub_1B89E6D10;
  v7 = *(v0 + 24);

  return sub_1B89E98E4(v7, 0);
}

uint64_t sub_1B89E6D10(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    v8 = *(v4 + 32);
    *(v4 + 48) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1B89ECC84, v8, 0);
  }
}

uint64_t ImageGlyphRecency.resetDatabase()()
{
  v1[2] = v0;
  v2 = sub_1B8A239C4();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_1B8A23A24();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B89E6F78, v0, 0);
}

uint64_t sub_1B89E6F78()
{
  v1 = *(*(v0 + 16) + 112);
  *(v0 + 72) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B89E6F9C, v1, 0);
}

uint64_t sub_1B89E6F9C()
{
  (*(v0[4] + 104))(v0[5], *MEMORY[0x1E69D47A0], v0[3]);
  sub_1B8A239E4();
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_1B89E706C;
  v2 = v0[8];

  return sub_1B89EAD90(v2);
}

uint64_t sub_1B89E706C()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 72);
  if (v0)
  {
    v4 = sub_1B89E7220;
  }

  else
  {
    v4 = sub_1B89E7198;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B89E7198()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1B89E7220()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t ImageGlyphRecency.performInitialMigration()()
{
  v1[2] = v0;
  v2 = sub_1B8A239C4();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_1B8A23A24();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B89E73C4, v0, 0);
}

uint64_t sub_1B89E73C4()
{
  v1 = *(*(v0 + 16) + 112);
  *(v0 + 72) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B89E73E8, v1, 0);
}

uint64_t sub_1B89E73E8()
{
  (*(v0[4] + 104))(v0[5], *MEMORY[0x1E69D47A8], v0[3]);
  sub_1B8A239E4();
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_1B89E74B8;
  v2 = v0[8];

  return sub_1B89EAD90(v2);
}

uint64_t sub_1B89E74B8()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 72);
  if (v0)
  {
    v4 = sub_1B89ECC58;
  }

  else
  {
    v4 = sub_1B89ECC78;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t ImageGlyphRecency.saveDatabase(destination:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1B8A239C4();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_1B8A23A24();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B89E7700, v1, 0);
}

uint64_t sub_1B89E7700()
{
  v1 = *(*(v0 + 24) + 112);
  *(v0 + 80) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B89E7724, v1, 0);
}

uint64_t sub_1B89E7724()
{
  (*(v0[5] + 104))(v0[6], *MEMORY[0x1E69D47D0], v0[4]);
  sub_1B8A239E4();
  sub_1B8A23734();
  sub_1B8A23A04();
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_1B89E7810;
  v2 = v0[9];

  return sub_1B89EAD90(v2);
}

uint64_t sub_1B89E7810()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 80);
  if (v0)
  {
    v4 = sub_1B89ECC5C;
  }

  else
  {
    v4 = sub_1B89ECC7C;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t ImageGlyphRecency.loadDatabase(source:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1B8A239C4();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_1B8A23A24();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B89E7A58, v1, 0);
}

uint64_t sub_1B89E7A58()
{
  v1 = *(*(v0 + 24) + 112);
  *(v0 + 80) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B89E7A7C, v1, 0);
}

uint64_t sub_1B89E7A7C()
{
  (*(v0[5] + 104))(v0[6], *MEMORY[0x1E69D47C8], v0[4]);
  sub_1B8A239E4();
  sub_1B8A23734();
  sub_1B8A23A04();
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_1B89E7B68;
  v2 = v0[9];

  return sub_1B89EAD90(v2);
}

uint64_t sub_1B89E7B68()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 80);
  if (v0)
  {
    v4 = sub_1B89E7D1C;
  }

  else
  {
    v4 = sub_1B89E7C94;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B89E7C94()
{
  (*(v0[8] + 8))(v0[9], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1B89E7D1C()
{
  (*(v0[8] + 8))(v0[9], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t ImageGlyphRecency.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t ImageGlyphRecency.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1B89E7E10()
{
  if (*(v0 + 112))
  {

    sub_1B8A23C14();
  }

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1B89E7E98(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1B8A23A64();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91E58, &unk_1B8A28020);
  v3[8] = swift_task_alloc();
  v5 = sub_1B8A239C4();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v6 = sub_1B8A23A24();
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B89E804C, v2, 0);
}

uint64_t sub_1B89E804C()
{
  v1 = v0[8];
  v2 = v0[3];
  (*(v0[10] + 104))(v0[11], *MEMORY[0x1E69D47B8], v0[9]);
  sub_1B8A239E4();
  v3 = sub_1B8A239A4();
  v4 = *(v3 - 8);
  (*(v4 + 16))(v1, v2, v3);
  (*(v4 + 56))(v1, 0, 1, v3);
  sub_1B8A239D4();
  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v5[1] = sub_1B89E81B4;
  v6 = v0[14];
  v7 = v0[7];

  return sub_1B89EA8B8(v7, v6);
}

uint64_t sub_1B89E81B4()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_1B89E8418;
  }

  else
  {
    v4 = sub_1B89E82E0;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B89E82E0()
{
  sub_1B8A23A34();
  if (v1)
  {
    v2 = 1;
  }

  else
  {
    sub_1B8A23854();
    v2 = 0;
  }

  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];
  v6 = v0[2];
  (*(v0[6] + 8))(v0[7], v0[5]);
  (*(v4 + 8))(v3, v5);
  v7 = sub_1B8A23884();
  (*(*(v7 - 8) + 56))(v6, v2, 1, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1B89E8418()
{
  (*(v0[13] + 8))(v0[14], v0[12]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1B89E84BC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1B8A23A64();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91E58, &unk_1B8A28020);
  v2[7] = swift_task_alloc();
  v4 = sub_1B8A239C4();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = sub_1B8A23A24();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B89E866C, v1, 0);
}

uint64_t sub_1B89E866C()
{
  v1 = v0[7];
  v2 = v0[2];
  (*(v0[9] + 104))(v0[10], *MEMORY[0x1E69D47C0], v0[8]);
  sub_1B8A239E4();
  v3 = sub_1B8A239A4();
  v4 = *(v3 - 8);
  (*(v4 + 16))(v1, v2, v3);
  (*(v4 + 56))(v1, 0, 1, v3);
  sub_1B8A239D4();
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_1B89E87D4;
  v6 = v0[13];
  v7 = v0[6];

  return sub_1B89EA8B8(v7, v6);
}

uint64_t sub_1B89E87D4()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_1B89E8A08;
  }

  else
  {
    v4 = sub_1B89E8900;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B89E8900()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = v0[6];
  v6 = v0[4];
  v5 = v0[5];
  v7 = COERCE_DOUBLE(sub_1B8A23A54());
  v9 = v8;
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  if (v9)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v7;
  }

  v11 = v0[1];
  v12.n128_f64[0] = v10;

  return v11(v12);
}

uint64_t sub_1B89E8A08()
{
  (*(v0[12] + 8))(v0[13], v0[11]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1B89E8AAC(uint64_t a1, char a2)
{
  *(v3 + 96) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = sub_1B8A239A4();
  *(v3 + 32) = v4;
  *(v3 + 40) = *(v4 - 8);
  *(v3 + 48) = swift_task_alloc();
  *(v3 + 56) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91E48, &qword_1B8A28018);
  *(v3 + 64) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B89E8BB4, v2, 0);
}

uint64_t sub_1B89E8BB4()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 96);
  v3 = *MEMORY[0x1E69D4790];
  v4 = sub_1B8A239B4();
  v5 = *(v4 - 8);
  (*(v5 + 104))(v1, v3, v4);
  (*(v5 + 56))(v1, 0, 1, v4);
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = sub_1B89E8D00;
  v7 = *(v0 + 64);
  v8 = *(v0 + 16);

  return sub_1B89E9ED8(v7, v8, v2 & 1);
}

uint64_t sub_1B89E8D00(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 64);
  *(v4 + 80) = a1;
  *(v4 + 88) = v1;

  sub_1B89A8A78(v5, &qword_1EBA91E48, &qword_1B8A28018);
  v6 = *(v3 + 24);
  if (v1)
  {
    v7 = sub_1B89E90A0;
  }

  else
  {
    v7 = sub_1B89E8E60;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1B89E8E60()
{
  v1 = v0[10];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[5];
    v24 = v0[6];
    v4 = *(v3 + 16);
    v3 += 16;
    v5 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v26 = *(v3 + 56);
    v27 = v4;
    v6 = (v3 + 16);
    v7 = (v3 + 72);
    v25 = *MEMORY[0x1E69D4770];
    v22 = (v3 + 80);
    v23 = (v3 - 8);
    v8 = MEMORY[0x1E69E7CC0];
    do
    {
      v10 = v0[6];
      v9 = v0[7];
      v11 = v0[4];
      v27(v9, v5, v11);
      (*v6)(v10, v9, v11);
      v12 = (*v7)(v10, v11);
      v13 = v0[6];
      v14 = v0[4];
      if (v12 == v25)
      {
        (*v22)(v0[6], v14);
        v15 = *v13;
        v16 = *(v24 + 8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1B89DD314(0, *(v8 + 2) + 1, 1, v8);
        }

        v18 = *(v8 + 2);
        v17 = *(v8 + 3);
        if (v18 >= v17 >> 1)
        {
          v8 = sub_1B89DD314((v17 > 1), v18 + 1, 1, v8);
        }

        *(v8 + 2) = v18 + 1;
        v19 = &v8[16 * v18];
        *(v19 + 4) = v15;
        *(v19 + 5) = v16;
      }

      else
      {
        (*v23)(v0[6], v14);
      }

      v5 += v26;
      --v2;
    }

    while (v2);
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
  }

  v20 = v0[1];

  return v20(v8);
}

uint64_t sub_1B89E90A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B89E9118(uint64_t a1, char a2)
{
  *(v3 + 136) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = sub_1B8A23904();
  *(v3 + 32) = v4;
  *(v3 + 40) = *(v4 - 8);
  *(v3 + 48) = swift_task_alloc();
  *(v3 + 56) = swift_task_alloc();
  *(v3 + 64) = swift_task_alloc();
  v5 = sub_1B8A239A4();
  *(v3 + 72) = v5;
  *(v3 + 80) = *(v5 - 8);
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 96) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91E48, &qword_1B8A28018);
  *(v3 + 104) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B89E9294, v2, 0);
}

uint64_t sub_1B89E9294()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 136);
  v3 = *MEMORY[0x1E69D4790];
  v4 = sub_1B8A239B4();
  v5 = *(v4 - 8);
  (*(v5 + 104))(v1, v3, v4);
  (*(v5 + 56))(v1, 0, 1, v4);
  v6 = swift_task_alloc();
  *(v0 + 112) = v6;
  *v6 = v0;
  v6[1] = sub_1B89E93E0;
  v7 = *(v0 + 104);
  v8 = *(v0 + 16);

  return sub_1B89E9ED8(v7, v8, v2 & 1);
}

uint64_t sub_1B89E93E0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 104);
  *(v4 + 120) = a1;
  *(v4 + 128) = v1;

  sub_1B89A8A78(v5, &qword_1EBA91E48, &qword_1B8A28018);
  v6 = *(v3 + 24);
  if (v1)
  {
    v7 = sub_1B89E983C;
  }

  else
  {
    v7 = sub_1B89E9540;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1B89E9540()
{
  v1 = v0[15];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[10];
    v5 = *(v3 + 16);
    v3 += 16;
    v4 = v5;
    v6 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v7 = *(v3 + 56);
    v35 = (v3 + 72);
    v36 = (v3 + 16);
    v34 = *MEMORY[0x1E69D4778];
    v27 = (v3 + 80);
    v28 = (v3 - 8);
    v31 = v0[5];
    v33 = (v31 + 32);
    v8 = MEMORY[0x1E69E7CC0];
    v29 = v7;
    v30 = v5;
    do
    {
      v10 = v0[11];
      v9 = v0[12];
      v11 = v0[9];
      v4(v9, v6, v11);
      (*v36)(v10, v9, v11);
      v12 = (*v35)(v10, v11);
      v13 = v0[11];
      v14 = v0[9];
      if (v12 == v34)
      {
        v15 = v0[7];
        v32 = v0[8];
        v16 = v0[6];
        v17 = v8;
        v18 = v0[4];
        (*v27)(v13, v14);
        v19 = *v33;
        (*v33)(v16, v13, v18);
        v19(v15, v16, v18);
        v20 = v18;
        v8 = v17;
        v19(v32, v15, v20);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1B89DCEF0(0, v17[2] + 1, 1, v17);
        }

        v22 = v8[2];
        v21 = v8[3];
        v7 = v29;
        v4 = v30;
        if (v22 >= v21 >> 1)
        {
          v8 = sub_1B89DCEF0((v21 > 1), v22 + 1, 1, v8);
        }

        v23 = v0[8];
        v24 = v0[4];
        v8[2] = v22 + 1;
        v19(v8 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v22, v23, v24);
      }

      else
      {
        (*v28)(v0[11], v14);
      }

      v6 += v7;
      --v2;
    }

    while (v2);
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
  }

  v25 = v0[1];

  return v25(v8);
}

uint64_t sub_1B89E983C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B89E98E4(uint64_t a1, char a2)
{
  *(v3 + 96) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = sub_1B8A239A4();
  *(v3 + 32) = v4;
  *(v3 + 40) = *(v4 - 8);
  *(v3 + 48) = swift_task_alloc();
  *(v3 + 56) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91E48, &qword_1B8A28018);
  *(v3 + 64) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B89E99EC, v2, 0);
}

uint64_t sub_1B89E99EC()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 96);
  v3 = *MEMORY[0x1E69D4798];
  v4 = sub_1B8A239B4();
  v5 = *(v4 - 8);
  (*(v5 + 104))(v1, v3, v4);
  (*(v5 + 56))(v1, 0, 1, v4);
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = sub_1B89E9B38;
  v7 = *(v0 + 64);
  v8 = *(v0 + 16);

  return sub_1B89E9ED8(v7, v8, v2 & 1);
}

uint64_t sub_1B89E9B38(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 64);
  *(v4 + 80) = a1;
  *(v4 + 88) = v1;

  sub_1B89A8A78(v5, &qword_1EBA91E48, &qword_1B8A28018);
  v6 = *(v3 + 24);
  if (v1)
  {
    v7 = sub_1B89ECC80;
  }

  else
  {
    v7 = sub_1B89E9C98;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1B89E9C98()
{
  v1 = v0[10];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[5];
    v24 = v0[6];
    v4 = *(v3 + 16);
    v3 += 16;
    v5 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v26 = *(v3 + 56);
    v27 = v4;
    v6 = (v3 + 16);
    v7 = (v3 + 72);
    v25 = *MEMORY[0x1E69D4788];
    v22 = (v3 + 80);
    v23 = (v3 - 8);
    v8 = MEMORY[0x1E69E7CC0];
    do
    {
      v10 = v0[6];
      v9 = v0[7];
      v11 = v0[4];
      v27(v9, v5, v11);
      (*v6)(v10, v9, v11);
      v12 = (*v7)(v10, v11);
      v13 = v0[6];
      v14 = v0[4];
      if (v12 == v25)
      {
        (*v22)(v0[6], v14);
        v15 = *v13;
        v16 = *(v24 + 8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1B89DD314(0, *(v8 + 2) + 1, 1, v8);
        }

        v18 = *(v8 + 2);
        v17 = *(v8 + 3);
        if (v18 >= v17 >> 1)
        {
          v8 = sub_1B89DD314((v17 > 1), v18 + 1, 1, v8);
        }

        *(v8 + 2) = v18 + 1;
        v19 = &v8[16 * v18];
        *(v19 + 4) = v15;
        *(v19 + 5) = v16;
      }

      else
      {
        (*v23)(v0[6], v14);
      }

      v5 += v26;
      --v2;
    }

    while (v2);
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
  }

  v20 = v0[1];

  return v20(v8);
}

uint64_t sub_1B89E9ED8(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 136) = a3;
  *(v4 + 16) = a1;
  v5 = sub_1B8A23A64();
  *(v4 + 40) = v5;
  *(v4 + 48) = *(v5 - 8);
  *(v4 + 56) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91E48, &qword_1B8A28018);
  *(v4 + 64) = swift_task_alloc();
  v6 = sub_1B8A239C4();
  *(v4 + 72) = v6;
  *(v4 + 80) = *(v6 - 8);
  *(v4 + 88) = swift_task_alloc();
  v7 = sub_1B8A23A24();
  *(v4 + 96) = v7;
  *(v4 + 104) = *(v7 - 8);
  *(v4 + 112) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B89EA090, v3, 0);
}

uint64_t sub_1B89EA090()
{
  v1 = v0[8];
  v2 = v0[2];
  (*(v0[10] + 104))(v0[11], *MEMORY[0x1E69D47B0], v0[9]);
  sub_1B89F4C24(MEMORY[0x1E69E7CC0]);
  sub_1B8A239E4();
  sub_1B89ECBA8(v2, v1);
  sub_1B8A239F4();
  sub_1B8A23A14();
  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = sub_1B89EA1AC;
  v4 = v0[14];
  v5 = v0[7];

  return sub_1B89EA8B8(v5, v4);
}

uint64_t sub_1B89EA1AC()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_1B89E8418;
  }

  else
  {
    v4 = sub_1B89EA2D8;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B89EA2D8()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[7];
  v5 = v0[5];
  v6 = v0[6];
  v7 = sub_1B8A23A44();
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_1B89EA3CC()
{
  v1 = sub_1B8A23BF4();
  MEMORY[0x1EEE9AC00](v1 - 8);
  if (!*(v0 + 112) || *(v0 + 120) == 1)
  {
    sub_1B8A23C34();
    sub_1B8A23A84();
    sub_1B8A23A74();
    sub_1B8A23BE4();
    swift_allocObject();
    swift_weakInit();
    *(v0 + 112) = sub_1B8A23BD4();

    *(v0 + 120) = 0;
  }

  return 1;
}

uint64_t sub_1B89EA638(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B8A23C44();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA92200, &qword_1B8A28000);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = sub_1B8A24184();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
    (*(v4 + 16))(&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
    v12 = (*(v4 + 80) + 40) & ~*(v4 + 80);
    v13 = swift_allocObject();
    *(v13 + 2) = 0;
    *(v13 + 3) = 0;
    *(v13 + 4) = v10;
    (*(v4 + 32))(&v13[v12], &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
    sub_1B8A0B3B4(0, 0, v8, &unk_1B8A28010, v13);
  }

  return result;
}

uint64_t sub_1B89EA838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1B89EA858, a4, 0);
}

uint64_t sub_1B89EA858()
{
  sub_1B89EB160(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B89EA8B8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1B8A23C64();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_1B8A23A24();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B89EA9E4, v2, 0);
}

uint64_t sub_1B89EA9E4()
{
  v30 = v0;
  v1 = v0[4];
  sub_1B89EA3CC();
  if (*(v1 + 112))
  {
    v2 = qword_1EBA91528;

    if (v2 != -1)
    {
      swift_once();
    }

    v3 = v0[11];
    v4 = v0[8];
    v5 = v0[9];
    v6 = v0[3];
    v7 = sub_1B8A23BC4();
    __swift_project_value_buffer(v7, qword_1EBA91530);
    v8 = *(v5 + 16);
    v8(v3, v6, v4);
    v9 = sub_1B8A23BA4();
    v10 = sub_1B8A24224();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[11];
    if (v11)
    {
      v13 = v0[9];
      v14 = v0[10];
      v15 = v0[8];
      v16 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = v28;
      *v16 = 136315138;
      v8(v14, v12, v15);
      v17 = sub_1B8A23F44();
      v19 = v18;
      (*(v13 + 8))(v12, v15);
      v20 = sub_1B89A907C(v17, v19, &v29);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_1B89A7000, v9, v10, "Local client sending request to recency service endpoint: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x1B8CC5170](v28, -1, -1);
      MEMORY[0x1B8CC5170](v16, -1, -1);
    }

    else
    {
      v22 = v0[8];
      v21 = v0[9];

      (*(v21 + 8))(v12, v22);
    }

    sub_1B89ECA60(&qword_1EBA91628, MEMORY[0x1E69D47D8], MEMORY[0x1E69D47E0]);
    sub_1B8A23C24();
    v23 = v0[6];
    v24 = v0[7];
    v25 = v0[5];
    sub_1B8A23A64();
    sub_1B89ECA60(&qword_1EBA91620, MEMORY[0x1E69D47E8], MEMORY[0x1E69D47F0]);
    sub_1B8A23C54();
    (*(v23 + 8))(v24, v25);

    v26 = v0[1];
  }

  else
  {
    sub_1B89ECA0C();
    swift_allocError();
    swift_willThrow();

    v26 = v0[1];
  }

  return v26();
}

uint64_t sub_1B89EAD90(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1B8A23A24();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B89EAE5C, v1, 0);
}

uint64_t sub_1B89EAE5C()
{
  v27 = v0;
  v1 = v0[3];
  sub_1B89EA3CC();
  if (*(v1 + 112))
  {
    v2 = qword_1EBA91528;

    if (v2 != -1)
    {
      swift_once();
    }

    v3 = v0[7];
    v4 = v0[4];
    v5 = v0[5];
    v6 = v0[2];
    v7 = sub_1B8A23BC4();
    __swift_project_value_buffer(v7, qword_1EBA91530);
    v8 = *(v5 + 16);
    v8(v3, v6, v4);
    v9 = sub_1B8A23BA4();
    v10 = sub_1B8A24224();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[7];
    if (v11)
    {
      v13 = v0[5];
      v14 = v0[6];
      v15 = v0[4];
      v16 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = v25;
      *v16 = 136315138;
      v8(v14, v12, v15);
      v17 = sub_1B8A23F44();
      v19 = v18;
      (*(v13 + 8))(v12, v15);
      v20 = sub_1B89A907C(v17, v19, &v26);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_1B89A7000, v9, v10, "Local client sending request to recency service endpoint: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x1B8CC5170](v25, -1, -1);
      MEMORY[0x1B8CC5170](v16, -1, -1);
    }

    else
    {
      v22 = v0[4];
      v21 = v0[5];

      (*(v21 + 8))(v12, v22);
    }

    sub_1B89ECA60(&qword_1EBA91628, MEMORY[0x1E69D47D8], MEMORY[0x1E69D47E0]);
    sub_1B8A23C04();

    v23 = v0[1];
  }

  else
  {
    sub_1B89ECA0C();
    swift_allocError();
    swift_willThrow();

    v23 = v0[1];
  }

  return v23();
}

void sub_1B89EB160(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1B8A23C44();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EBA91528 != -1)
  {
    swift_once();
  }

  v8 = sub_1B8A23BC4();
  __swift_project_value_buffer(v8, qword_1EBA91530);
  v9 = *(v5 + 16);
  v9(v7, a1, v4);
  v10 = sub_1B8A23BA4();
  v11 = sub_1B8A24234();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v2;
    v14 = v13;
    *v12 = 138412290;
    sub_1B89ECA60(&qword_1EBA91608, MEMORY[0x1E69E84C0], MEMORY[0x1E69E84C8]);
    swift_allocError();
    v9(v15, v7, v4);
    v16 = _swift_stdlib_bridgeErrorToNSError();
    (*(v5 + 8))(v7, v4);
    *(v12 + 4) = v16;
    *v14 = v16;
    _os_log_impl(&dword_1B89A7000, v10, v11, "XPC connection to the recency service was cancelled with the following error: '%@'", v12, 0xCu);
    sub_1B89A8A78(v14, &qword_1EBA919E0, &qword_1B8A262D0);
    v17 = v14;
    v2 = v19;
    MEMORY[0x1B8CC5170](v17, -1, -1);
    MEMORY[0x1B8CC5170](v12, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  *(v2 + 120) = 1;
}

uint64_t _s8Stickers20RecencyRecordWrapperO2eeoiySbAC_ACtFZ_0(uint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = a2[1];
  v7 = *(a2 + 16);
  if (v4 <= 1)
  {
    if (!*(a1 + 16))
    {
      if (!*(a2 + 16))
      {
        sub_1B89AB538(0, &qword_1EBA91AE8, 0x1E69E58C0);
        sub_1B89ECC18(v6, v5, 0);
        sub_1B89ECC18(v3, v2, 0);
        v8 = sub_1B8A24404();
        sub_1B89EBA88(v3, v2, 0);
        v9 = v6;
        v10 = v5;
        v11 = 0;
LABEL_18:
        sub_1B89EBA88(v9, v10, v11);
        return v8 & 1;
      }

      goto LABEL_23;
    }

    if (v7 == 1)
    {
      v14 = *a1;
      if (v3 != v6 || v2 != v5)
      {
        LOBYTE(v8) = sub_1B8A24954();
        sub_1B89ECC18(v6, v5, 1);
        sub_1B89ECC18(v3, v2, 1);
        sub_1B89EBA88(v3, v2, 1);
        v9 = v6;
        v10 = v5;
        v11 = 1;
        goto LABEL_18;
      }

      sub_1B89ECC18(v14, v2, 1);
      sub_1B89ECC18(v3, v2, 1);
      sub_1B89EBA88(v3, v2, 1);
      v18 = v3;
      v19 = v2;
      v20 = 1;
      goto LABEL_27;
    }

LABEL_23:
    sub_1B89ECC18(*a2, a2[1], v7);
    sub_1B89ECC18(v3, v2, v4);
    sub_1B89EBA88(v3, v2, v4);
    sub_1B89EBA88(v6, v5, v7);
    return 0;
  }

  if (v4 == 2)
  {
    if (v7 == 2)
    {
      v12 = *a1;
      if (v3 != v6 || v2 != v5)
      {
        LOBYTE(v8) = sub_1B8A24954();
        sub_1B89ECC18(v6, v5, 2);
        sub_1B89ECC18(v3, v2, 2);
        sub_1B89EBA88(v3, v2, 2);
        v9 = v6;
        v10 = v5;
        v11 = 2;
        goto LABEL_18;
      }

      sub_1B89ECC18(v12, v2, 2);
      sub_1B89ECC18(v3, v2, 2);
      sub_1B89EBA88(v3, v2, 2);
      v18 = v3;
      v19 = v2;
      v20 = 2;
      goto LABEL_27;
    }

    goto LABEL_23;
  }

  if (v7 != 3 || (v5 | v6) != 0)
  {
    goto LABEL_23;
  }

  sub_1B89EBA88(*a1, v2, 3);
  v18 = 0;
  v19 = 0;
  v20 = 3;
LABEL_27:
  sub_1B89EBA88(v18, v19, v20);
  return 1;
}

unint64_t sub_1B89EB690()
{
  result = qword_1EBA91C58;
  if (!qword_1EBA91C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91C58);
  }

  return result;
}

unint64_t sub_1B89EB6E4()
{
  result = qword_1EBA91C60;
  if (!qword_1EBA91C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91C60);
  }

  return result;
}

unint64_t sub_1B89EB738()
{
  result = qword_1EBA91C68;
  if (!qword_1EBA91C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91C68);
  }

  return result;
}

unint64_t sub_1B89EB78C()
{
  result = qword_1EBA91C70;
  if (!qword_1EBA91C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91C70);
  }

  return result;
}

unint64_t sub_1B89EB7E0()
{
  result = qword_1EBA91C78;
  if (!qword_1EBA91C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91C78);
  }

  return result;
}

unint64_t sub_1B89EB834()
{
  result = qword_1EBA91CD8;
  if (!qword_1EBA91CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91CD8);
  }

  return result;
}

unint64_t sub_1B89EB888()
{
  result = qword_1EBA91CE0;
  if (!qword_1EBA91CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91CE0);
  }

  return result;
}

unint64_t sub_1B89EB8DC()
{
  result = qword_1EBA91CE8;
  if (!qword_1EBA91CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91CE8);
  }

  return result;
}

unint64_t sub_1B89EB930()
{
  result = qword_1EBA91CF0;
  if (!qword_1EBA91CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91CF0);
  }

  return result;
}

unint64_t sub_1B89EB984()
{
  result = qword_1EBA91CF8;
  if (!qword_1EBA91CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91CF8);
  }

  return result;
}

uint64_t sub_1B89EB9D8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1B89C3E20;

  return sub_1B89E4F10(a1, v1);
}

void sub_1B89EBA74(void *result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    sub_1B89EBA88(result, a2, a3);
  }
}

void sub_1B89EBA88(void *a1, uint64_t a2, char a3)
{
  if (a3 == 2 || a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

uint64_t sub_1B89EBAB0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B89BBE18;

  return sub_1B89E6290(a1, v5, v4);
}

uint64_t sub_1B89EBB5C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B89C3E20;

  return sub_1B89E6A80(a1);
}

unint64_t sub_1B89EBBFC()
{
  result = qword_1EBA91D68;
  if (!qword_1EBA91D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91D68);
  }

  return result;
}

unint64_t sub_1B89EBC54()
{
  result = qword_1EBA91D70;
  if (!qword_1EBA91D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91D70);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8Stickers20RecencyRecordWrapperO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1B89EBCD8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B89EBD20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B89EBD64(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_1B89EBEA8()
{
  result = qword_1EBA91D78;
  if (!qword_1EBA91D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91D78);
  }

  return result;
}

unint64_t sub_1B89EBF00()
{
  result = qword_1EBA91D80;
  if (!qword_1EBA91D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91D80);
  }

  return result;
}

unint64_t sub_1B89EBF58()
{
  result = qword_1EBA91D88;
  if (!qword_1EBA91D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91D88);
  }

  return result;
}

unint64_t sub_1B89EBFB0()
{
  result = qword_1EBA91D90;
  if (!qword_1EBA91D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91D90);
  }

  return result;
}

unint64_t sub_1B89EC008()
{
  result = qword_1EBA91D98;
  if (!qword_1EBA91D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91D98);
  }

  return result;
}

unint64_t sub_1B89EC060()
{
  result = qword_1EBA91DA0;
  if (!qword_1EBA91DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91DA0);
  }

  return result;
}

unint64_t sub_1B89EC0B8()
{
  result = qword_1EBA91DA8;
  if (!qword_1EBA91DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91DA8);
  }

  return result;
}

unint64_t sub_1B89EC110()
{
  result = qword_1EBA91DB0;
  if (!qword_1EBA91DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91DB0);
  }

  return result;
}

unint64_t sub_1B89EC168()
{
  result = qword_1EBA91DB8;
  if (!qword_1EBA91DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91DB8);
  }

  return result;
}

unint64_t sub_1B89EC1C0()
{
  result = qword_1EBA91DC0;
  if (!qword_1EBA91DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91DC0);
  }

  return result;
}

unint64_t sub_1B89EC218()
{
  result = qword_1EBA91DC8;
  if (!qword_1EBA91DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91DC8);
  }

  return result;
}

unint64_t sub_1B89EC270()
{
  result = qword_1EBA91DD0;
  if (!qword_1EBA91DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91DD0);
  }

  return result;
}

unint64_t sub_1B89EC2C8()
{
  result = qword_1EBA91DD8;
  if (!qword_1EBA91DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91DD8);
  }

  return result;
}

unint64_t sub_1B89EC320()
{
  result = qword_1EBA91DE0;
  if (!qword_1EBA91DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91DE0);
  }

  return result;
}

unint64_t sub_1B89EC378()
{
  result = qword_1EBA91DE8;
  if (!qword_1EBA91DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91DE8);
  }

  return result;
}

unint64_t sub_1B89EC3D0()
{
  result = qword_1EBA91DF0;
  if (!qword_1EBA91DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91DF0);
  }

  return result;
}

unint64_t sub_1B89EC428()
{
  result = qword_1EBA91DF8;
  if (!qword_1EBA91DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91DF8);
  }

  return result;
}

unint64_t sub_1B89EC480()
{
  result = qword_1EBA91E00;
  if (!qword_1EBA91E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91E00);
  }

  return result;
}

unint64_t sub_1B89EC4D8()
{
  result = qword_1EBA91E08;
  if (!qword_1EBA91E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91E08);
  }

  return result;
}

unint64_t sub_1B89EC530()
{
  result = qword_1EBA91E10;
  if (!qword_1EBA91E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91E10);
  }

  return result;
}

unint64_t sub_1B89EC588()
{
  result = qword_1EBA91E18;
  if (!qword_1EBA91E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91E18);
  }

  return result;
}

unint64_t sub_1B89EC5E0()
{
  result = qword_1EBA91E20;
  if (!qword_1EBA91E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91E20);
  }

  return result;
}

unint64_t sub_1B89EC638()
{
  result = qword_1EBA91E28;
  if (!qword_1EBA91E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91E28);
  }

  return result;
}

unint64_t sub_1B89EC690()
{
  result = qword_1EBA91E30;
  if (!qword_1EBA91E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91E30);
  }

  return result;
}

unint64_t sub_1B89EC6E8()
{
  result = qword_1EBA91E38;
  if (!qword_1EBA91E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91E38);
  }

  return result;
}

uint64_t sub_1B89EC73C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_1B8A24954() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72656B63697473 && a2 == 0xE700000000000000 || (sub_1B8A24954() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696A6F6D65 && a2 == 0xE500000000000000 || (sub_1B8A24954() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574636172616863 && a2 == 0xE900000000000072)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B8A24954();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1B89EC8A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_1B8A24954() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696A6F6D65 && a2 == 0xE500000000000000 || (sub_1B8A24954() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72656B63697473 && a2 == 0xE700000000000000 || (sub_1B8A24954() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574636172616863 && a2 == 0xE900000000000072)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B8A24954();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_1B89ECA0C()
{
  result = qword_1EBA91E40;
  if (!qword_1EBA91E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91E40);
  }

  return result;
}

uint64_t sub_1B89ECA60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B89ECAB0(uint64_t a1)
{
  v4 = *(sub_1B8A23C44() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1B89BBE18;

  return sub_1B89EA838(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1B89ECBA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91E48, &qword_1B8A28018);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1B89ECC18(id result, uint64_t a2, char a3)
{
  if (a3 == 2 || a3 == 1)
  {
  }

  if (!a3)
  {
    return result;
  }

  return result;
}

uint64_t sub_1B89ECC8C()
{
  v0 = sub_1B8A23BC4();
  __swift_allocate_value_buffer(v0, qword_1EBA91E60);
  __swift_project_value_buffer(v0, qword_1EBA91E60);
  return sub_1B8A23BB4();
}

id _STKMessagesObjCStoreFacade.init()()
{
  v1 = v0;
  v2 = type metadata accessor for StickerStore.PersistenceType(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B8A23784();
  (*(*(v5 - 8) + 56))(v4, 1, 3, v5);
  v6 = type metadata accessor for StickerStore();
  swift_allocObject();
  v7 = StickerStore.init(persistence:)(v4);
  v8 = &v1[OBJC_IVAR____STKMessagesObjCStoreFacade_store];
  v8[3] = v6;
  v8[4] = &protocol witness table for StickerStore;
  *v8 = v7;
  v9 = type metadata accessor for _STKMessagesObjCStoreFacade();
  v11.receiver = v1;
  v11.super_class = v9;
  return objc_msgSendSuper2(&v11, sel_init);
}

void *_STKMessagesObjCStoreFacade.__allocating_init(store:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  sub_1B89AA114(a1, v3 + OBJC_IVAR____STKMessagesObjCStoreFacade_store);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v4;
}

void *_STKMessagesObjCStoreFacade.init(store:)(void *a1)
{
  sub_1B89AA114(a1, v1 + OBJC_IVAR____STKMessagesObjCStoreFacade_store);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for _STKMessagesObjCStoreFacade();
  v3 = objc_msgSendSuper2(&v5, sel_init);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

void sub_1B89ED028(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v45[0] = MEMORY[0x1E69E7CC0];
  v14 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_20:
    v15 = sub_1B8A24554();
  }

  else
  {
    v15 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = 0;
  v46 = MEMORY[0x1E69E7CC0];
  while (v15 != v16)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x1B8CC44E0](v16, a3);
    }

    else
    {
      if (v16 >= *(v14 + 16))
      {
        goto LABEL_19;
      }

      v17 = *(a3 + 8 * v16 + 32);
    }

    v18 = v17;
    v19 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v20 = sub_1B89ED310(v16, v17);

    ++v16;
    if (v20)
    {
      MEMORY[0x1B8CC3F50]();
      if (*((v45[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B8A24114();
      }

      sub_1B8A24134();
      v46 = v45[0];
      v16 = v19;
    }
  }

  if (a13)
  {
    v21 = *(a13 + OBJC_IVAR____STKStickerAttributionInfo_adamID);
    v23 = *(a13 + OBJC_IVAR____STKStickerAttributionInfo_bundleIdentifier);
    v22 = *(a13 + OBJC_IVAR____STKStickerAttributionInfo_bundleIdentifier + 8);
    v24 = *(a13 + OBJC_IVAR____STKStickerAttributionInfo_name);
    v25 = *(a13 + OBJC_IVAR____STKStickerAttributionInfo_name + 8);
    v26 = type metadata accessor for Sticker.AttributionInfo();
    v27 = objc_allocWithZone(v26);
    v28 = &v27[OBJC_IVAR___STKStickerAttributionInfo_bundleIdentifier];
    *v28 = 0;
    *(v28 + 1) = 0;
    *&v27[OBJC_IVAR___STKStickerAttributionInfo_adamID] = v21;
    swift_beginAccess();
    *v28 = v23;
    *(v28 + 1) = v22;
    v29 = &v27[OBJC_IVAR___STKStickerAttributionInfo_name];
    *v29 = v24;
    *(v29 + 1) = v25;
    v44.receiver = v27;
    v44.super_class = v26;
    v30 = v21;

    v31 = objc_msgSendSuper2(&v44, sel_init);
  }

  else
  {
    v31 = 0;
  }

  v32 = *(v36 + OBJC_IVAR____STKMessagesObjCStoreFacade_store + 24);
  v33 = *(v36 + OBJC_IVAR____STKMessagesObjCStoreFacade_store + 32);
  __swift_project_boxed_opaque_existential_0((v36 + OBJC_IVAR____STKMessagesObjCStoreFacade_store), v32);
  v34 = sub_1B8A052DC(a4);
  (*(v33 + 96))(a1, a2, v46, v34, v35 & 1, a5, a6, a7, a8, a9, a10, a11, a12, v31, v32, v33);
}

id sub_1B89ED310(uint64_t a1, char *a2)
{
  v53 = a1;
  v54 = sub_1B8A23904();
  v3 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91EB8, &unk_1B8A28100);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v47 - v7;
  v9 = sub_1B8A23AD4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v47 - v14;
  v16 = *&a2[OBJC_IVAR____STKStickerUIStickerRepresentation_type];
  v17 = *&a2[OBJC_IVAR____STKStickerUIStickerRepresentation_type + 8];

  sub_1B8A23AE4();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1B89EE8E4(v8);
    if (qword_1EBA916C8 != -1)
    {
      swift_once();
    }

    v18 = sub_1B8A23BC4();
    __swift_project_value_buffer(v18, qword_1EBA91E60);
    v19 = a2;
    v20 = sub_1B8A23BA4();
    v21 = sub_1B8A24234();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v56[0] = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_1B89A907C(v16, v17, v56);
      _os_log_impl(&dword_1B89A7000, v20, v21, "Skipping unsupported type %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x1B8CC5170](v23, -1, -1);
      MEMORY[0x1B8CC5170](v22, -1, -1);
    }

    return 0;
  }

  (*(v10 + 32))(v15, v8, v9);
  v25 = *&a2[OBJC_IVAR____STKStickerUIStickerRepresentation_data + 8];
  v51 = *&a2[OBJC_IVAR____STKStickerUIStickerRepresentation_data];
  v52 = v13;
  v26 = *(v10 + 16);
  v50 = v15;
  v26(v13);
  v49 = *&a2[OBJC_IVAR____STKStickerUIStickerRepresentation_size];
  v27 = *&a2[OBJC_IVAR____STKStickerUIStickerRepresentation_role];
  v28 = *&a2[OBJC_IVAR____STKStickerUIStickerRepresentation_role + 8];
  if (v28)
  {
    v29 = *&a2[OBJC_IVAR____STKStickerUIStickerRepresentation_role];
  }

  else
  {
    v29 = 0;
  }

  v30 = 0xE000000000000000;
  if (v28)
  {
    v30 = *&a2[OBJC_IVAR____STKStickerUIStickerRepresentation_role + 8];
  }

  v47 = v30;
  v48 = v29;
  v31 = v28 && (v27 == 0xD000000000000020 && v28 == 0x80000001B8A2A290 || (sub_1B8A24954() & 1) != 0) || v53 == 0;
  LODWORD(v53) = v31;
  v32 = type metadata accessor for Sticker.Representation(0);
  v33 = objc_allocWithZone(v32);

  sub_1B8A238F4();
  (*(v3 + 32))(&v33[OBJC_IVAR___STKStickerRepresentation_identifier], v5, v54);
  v34 = &v33[OBJC_IVAR___STKStickerRepresentation_data];
  v35 = v51;
  v36 = v52;
  *v34 = v51;
  v34[1] = v25;
  result = (v26)(&v33[OBJC_IVAR___STKStickerRepresentation_uti], v36, v9);
  v37 = v25 >> 62;
  if ((v25 >> 62) > 1)
  {
    v38 = 0;
    if (v37 != 2)
    {
      goto LABEL_28;
    }

    v40 = *(v35 + 16);
    v39 = *(v35 + 24);
    v38 = v39 - v40;
    if (!__OFSUB__(v39, v40))
    {
LABEL_27:
      sub_1B89B4A18(v35, v25);
      goto LABEL_28;
    }

    __break(1u);
LABEL_25:
    if (__OFSUB__(HIDWORD(v35), v35))
    {
      __break(1u);
      return result;
    }

    v38 = HIDWORD(v35) - v35;
    goto LABEL_27;
  }

  if (v37)
  {
    goto LABEL_25;
  }

  v38 = BYTE6(v25);
LABEL_28:
  *&v33[OBJC_IVAR___STKStickerRepresentation_byteCount] = v38;
  *&v33[OBJC_IVAR___STKStickerRepresentation_size] = v49;
  v41 = &v33[OBJC_IVAR___STKStickerRepresentation_role];
  v42 = v47;
  *v41 = v48;
  v41[1] = v42;
  v33[OBJC_IVAR___STKStickerRepresentation_isPreferred] = v53;
  if (qword_1EBA91590 != -1)
  {
    swift_once();
  }

  v43 = qword_1EBA91598 + OBJC_IVAR____TtC8Stickers10Versioning_currentStickerRepresentationVersionOverride;
  swift_beginAccess();
  v44 = *v43;
  if (*(v43 + 8))
  {
    v44 = 1;
  }

  *&v33[OBJC_IVAR___STKStickerRepresentation_version] = v44;
  v55.receiver = v33;
  v55.super_class = v32;
  v45 = objc_msgSendSuper2(&v55, sel_init, v47, v48);
  v46 = *(v10 + 8);
  v46(v36, v9);
  v46(v50, v9);
  return v45;
}

uint64_t _STKStickerUIStickerRepresentation.data.getter()
{
  v1 = *(v0 + OBJC_IVAR____STKStickerUIStickerRepresentation_data);
  sub_1B89B4A18(v1, *(v0 + OBJC_IVAR____STKStickerUIStickerRepresentation_data + 8));
  return v1;
}

uint64_t _STKStickerUIStickerRepresentation.type.getter()
{
  v1 = *(v0 + OBJC_IVAR____STKStickerUIStickerRepresentation_type);

  return v1;
}

uint64_t _STKStickerUIStickerRepresentation.role.getter()
{
  v1 = *(v0 + OBJC_IVAR____STKStickerUIStickerRepresentation_role);

  return v1;
}

uint64_t sub_1B89EDDF8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA91F30, &qword_1B8A26600);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1B8A28030;
  v2 = *(v0 + OBJC_IVAR____STKStickerUIStickerRepresentation_role + 8);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____STKStickerUIStickerRepresentation_role);
  }

  else
  {
    v3 = 0x3E6C696E3CLL;
  }

  if (v2)
  {
    v4 = *(v0 + OBJC_IVAR____STKStickerUIStickerRepresentation_role + 8);
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x1B8CC3E20](v3, v4);

  *(v1 + 32) = 0x3D656C6F72;
  *(v1 + 40) = 0xE500000000000000;
  MEMORY[0x1B8CC3E20](*(v0 + OBJC_IVAR____STKStickerUIStickerRepresentation_type), *(v0 + OBJC_IVAR____STKStickerUIStickerRepresentation_type + 8));
  *(v1 + 48) = 0x3D65707974;
  *(v1 + 56) = 0xE500000000000000;
  v5 = sub_1B8A243A4();
  MEMORY[0x1B8CC3E20](v5);

  *(v1 + 64) = 0x3D657A6973;
  *(v1 + 72) = 0xE500000000000000;
  v7 = *(v0 + OBJC_IVAR____STKStickerUIStickerRepresentation_data);
  v8 = *(v0 + OBJC_IVAR____STKStickerUIStickerRepresentation_data + 8);
  v9 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v9 != 2)
    {
      v10 = 0;
      goto LABEL_17;
    }

    v12 = v7 + 16;
    v7 = *(v7 + 16);
    v11 = *(v12 + 8);
    v10 = v11 - v7;
    if (!__OFSUB__(v11, v7))
    {
      goto LABEL_17;
    }

    __break(1u);
  }

  else if (!v9)
  {
    v10 = BYTE6(v8);
LABEL_17:
    v15 = [objc_opt_self() stringFromByteCount:v10 countStyle:0];
    v16 = sub_1B8A23F24();
    v18 = v17;

    MEMORY[0x1B8CC3E20](v16, v18);

    *(v1 + 80) = 0x3D61746164;
    *(v1 + 88) = 0xE500000000000000;
    swift_getObjectType();
    v19 = sub_1B8A24A94();
    MEMORY[0x1B8CC3E20](v19);

    MEMORY[0x1B8CC3E20](8250, 0xE200000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA91F40, &unk_1B8A27050);
    sub_1B89EE77C();
    v20 = sub_1B8A23EB4();
    v22 = v21;

    MEMORY[0x1B8CC3E20](v20, v22);

    MEMORY[0x1B8CC3E20](62, 0xE100000000000000);
    return 60;
  }

  v13 = __OFSUB__(HIDWORD(v7), v7);
  v14 = HIDWORD(v7) - v7;
  if (!v13)
  {
    v10 = v14;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

void *_STKStickerAttributionInfo.adamID.getter()
{
  v1 = *(v0 + OBJC_IVAR____STKStickerAttributionInfo_adamID);
  v2 = v1;
  return v1;
}

uint64_t _STKStickerAttributionInfo.bundleIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____STKStickerAttributionInfo_bundleIdentifier);

  return v1;
}

uint64_t _STKStickerAttributionInfo.name.getter()
{
  v1 = *(v0 + OBJC_IVAR____STKStickerAttributionInfo_name);

  return v1;
}

id sub_1B89EE340(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1B8A23EF4();

  return v5;
}

uint64_t sub_1B89EE3B0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA91F30, &qword_1B8A26600);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1B8A28040;
  v3 = *(v0 + OBJC_IVAR____STKStickerAttributionInfo_adamID);
  if (v3)
  {
    v4 = [v3 description];
    v5 = sub_1B8A23F24();
    v7 = v6;
  }

  else
  {
    v7 = 0xE500000000000000;
    v5 = 0x3E6C696E3CLL;
  }

  MEMORY[0x1B8CC3E20](v5, v7);

  *(v2 + 32) = 0x3D44496D616461;
  *(v2 + 40) = 0xE700000000000000;
  sub_1B8A24634();

  if (*(v1 + OBJC_IVAR____STKStickerAttributionInfo_bundleIdentifier + 8))
  {
    v8 = *(v1 + OBJC_IVAR____STKStickerAttributionInfo_bundleIdentifier);
    v9 = *(v1 + OBJC_IVAR____STKStickerAttributionInfo_bundleIdentifier + 8);
  }

  else
  {
    v9 = 0xE500000000000000;
    v8 = 0x3E6C696E3CLL;
  }

  MEMORY[0x1B8CC3E20](v8, v9);

  *(v2 + 48) = 0xD000000000000011;
  *(v2 + 56) = 0x80000001B8A2AE10;
  v10 = *(v1 + OBJC_IVAR____STKStickerAttributionInfo_name + 8);
  if (v10)
  {
    v11 = *(v1 + OBJC_IVAR____STKStickerAttributionInfo_name);
  }

  else
  {
    v11 = 0x3E6C696E3CLL;
  }

  if (v10)
  {
    v12 = *(v1 + OBJC_IVAR____STKStickerAttributionInfo_name + 8);
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  MEMORY[0x1B8CC3E20](v11, v12);

  *(v2 + 64) = 0x3D656D616ELL;
  *(v2 + 72) = 0xE500000000000000;
  swift_getObjectType();
  v13 = sub_1B8A24A94();
  MEMORY[0x1B8CC3E20](v13);

  MEMORY[0x1B8CC3E20](8250, 0xE200000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA91F40, &unk_1B8A27050);
  sub_1B89EE77C();
  v14 = sub_1B8A23EB4();
  v16 = v15;

  MEMORY[0x1B8CC3E20](v14, v16);

  MEMORY[0x1B8CC3E20](62, 0xE100000000000000);
  return 60;
}

id _STKStickerAttributionInfo.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1B89EE6E0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_1B89EE77C()
{
  result = qword_1EBA911A0;
  if (!qword_1EBA911A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBA91F40, &unk_1B8A27050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA911A0);
  }

  return result;
}

uint64_t sub_1B89EE8E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91EB8, &unk_1B8A28100);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_1B89EE954()
{
  v1 = [v0 domain];
  v2 = sub_1B8A23F24();
  v4 = v3;

  if (sub_1B8A23F24() == v2 && v5 == v4)
  {

LABEL_8:

    if ([v0 code] == 259)
    {
      return 1;
    }

    v9 = 256;
    return [v0 code] == v9;
  }

  v7 = sub_1B8A24954();

  if (v7)
  {
    goto LABEL_8;
  }

  if (sub_1B8A23F24() == v2 && v10 == v4)
  {

    goto LABEL_20;
  }

  v12 = sub_1B8A24954();

  result = 0;
  if (v12)
  {
LABEL_20:
    if ([v0 code] == 11 || objc_msgSend(v0, sel_code) == 26 || objc_msgSend(v0, sel_code) == 20)
    {
      return 1;
    }

    v9 = 17;
    return [v0 code] == v9;
  }

  return result;
}

void sub_1B89EEAE8(void *a1, void *a2)
{
  v5 = v2;
  v135 = a2;
  v133 = sub_1B8A23904();
  v130 = *(v133 - 8);
  v7 = MEMORY[0x1EEE9AC00](v133);
  v134 = &v125 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v132 = &v125 - v9;
  if ([a1 isInserted])
  {
    [a1 setType_];
    v10 = sub_1B8A238B4();
    [a1 setIdentifier_];
  }

  v11 = OBJC_IVAR___STKSticker_byteCount;
  swift_beginAccess();
  v12 = *(v5 + v11);
  if (v12 < 0xFFFFFFFF80000000)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if (v12 > 0x7FFFFFFF)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  [a1 setByteCount_];
  swift_beginAccess();

  v13 = sub_1B8A23EF4();

  [a1 setName_];

  v14 = OBJC_IVAR___STKSticker_effect;
  swift_beginAccess();
  v15 = *(v5 + v14);
  if (v15 < 0xFFFFFFFF80000000)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v15 > 0x7FFFFFFF)
  {
LABEL_71:
    __break(1u);
LABEL_72:
    swift_once();
    goto LABEL_24;
  }

  [a1 setEffect_];
  v16 = (v5 + OBJC_IVAR___STKSticker_metadata);
  swift_beginAccess();
  v17 = 0;
  v18 = v16[1];
  if (v18 >> 60 != 15)
  {
    v19 = *v16;
    sub_1B89B4A18(v19, v18);
    v17 = sub_1B8A237A4();
    sub_1B89B4A04(v19, v18);
  }

  [a1 setMetadata_];

  swift_beginAccess();

  v20 = sub_1B8A23EF4();

  [a1 setExternalURI_];

  v21 = v5 + OBJC_IVAR___STKSticker_accessibilityName;
  swift_beginAccess();
  if (*(v21 + 8))
  {

    v22 = sub_1B8A23EF4();
  }

  else
  {
    v22 = 0;
  }

  [a1 setAccessibilityName_];

  v23 = OBJC_IVAR___STKSticker_attributionInfo;
  swift_beginAccess();
  v24 = *(v5 + v23);
  if (v24)
  {
    v25 = *(v24 + OBJC_IVAR___STKStickerAttributionInfo_adamID);
  }

  else
  {
    v25 = 0;
  }

  [a1 setAttributionAdamID_];

  v26 = *(v5 + v23);
  if (v26 && *(v26 + OBJC_IVAR___STKStickerAttributionInfo_name + 8))
  {

    v27 = sub_1B8A23EF4();
  }

  else
  {
    v27 = 0;
  }

  [a1 setAttributionName_];

  v28 = *(v5 + v23);
  if (v28 && (v29 = v28 + OBJC_IVAR___STKStickerAttributionInfo_bundleIdentifier, swift_beginAccess(), *(v29 + 8)))
  {

    v30 = sub_1B8A23EF4();
  }

  else
  {
    v30 = 0;
  }

  [a1 setAttributionBundleIdentifier_];

  v31 = OBJC_IVAR___STKSticker_creationDate;
  swift_beginAccess();
  [a1 setCreationDate_];
  v32 = OBJC_IVAR___STKSticker_lastUsedDate;
  swift_beginAccess();
  [a1 setLastUsedDate_];
  v33 = OBJC_IVAR___STKSticker_libraryIndex;
  swift_beginAccess();
  [a1 setLibraryIndex_];
  if (qword_1EBA91590 != -1)
  {
    goto LABEL_72;
  }

LABEL_24:
  v34 = qword_1EBA91598 + OBJC_IVAR____TtC8Stickers10Versioning_currentStickerVersionOverride;
  swift_beginAccess();
  if (*(v34 + 8))
  {
    v35 = 1;
  }

  else
  {
    v35 = *v34;
  }

  if (v35 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_74;
  }

  if (v35 > 0x7FFFFFFF)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  [a1 setVersion_];
  v36 = v5 + OBJC_IVAR___STKSticker_searchText;
  swift_beginAccess();
  if (*(v36 + 8))
  {

    v37 = sub_1B8A23EF4();
  }

  else
  {
    v37 = 0;
  }

  [a1 setSearchText_];

  v38 = v5 + OBJC_IVAR___STKSticker_sanitizedPrompt;
  swift_beginAccess();
  if (*(v38 + 8))
  {

    v39 = sub_1B8A23EF4();
  }

  else
  {
    v39 = 0;
  }

  [a1 setSanitizedPrompt_];

  v40 = v5 + OBJC_IVAR___STKSticker_rewrittenPrompt;
  swift_beginAccess();
  if (*(v40 + 8))
  {

    v41 = sub_1B8A23EF4();
  }

  else
  {
    v41 = 0;
  }

  [a1 setRewrittenPrompt_];

  v42 = v5 + OBJC_IVAR___STKSticker_promptPrimaryLanguageIdentifier;
  swift_beginAccess();
  if (*(v42 + 8))
  {

    v43 = sub_1B8A23EF4();
  }

  else
  {
    v43 = 0;
  }

  [a1 setPromptPrimaryLanguageIdentifier_];

  v131 = a1;
  v44 = [a1 representations];
  v45 = [v44 allObjects];

  v46 = sub_1B8A240F4();
  v3 = sub_1B89F2600(v46);

  v4 = sub_1B89F4A3C(MEMORY[0x1E69E7CC0]);
  a1 = (v3 & 0xFFFFFFFFFFFFFF8);
  if (v3 >> 62)
  {
LABEL_75:
    v47 = sub_1B8A24554();
    if (!v47)
    {
      goto LABEL_76;
    }

    goto LABEL_43;
  }

  v47 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v47)
  {
    goto LABEL_76;
  }

LABEL_43:
  v48 = 0;
  v128 = (v130 + 8);
  v129 = (v130 + 16);
  do
  {
    v49 = v48;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v50 = MEMORY[0x1B8CC44E0](v49, v3);
      }

      else
      {
        if (v49 >= a1[2])
        {
          goto LABEL_67;
        }

        v50 = *(v3 + 8 * v49 + 32);
      }

      v51 = v50;
      v48 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      v52 = [v50 identifier];
      if (v52)
      {
        break;
      }

      ++v49;
      if (v48 == v47)
      {
        goto LABEL_76;
      }
    }

    v126 = v5;
    v53 = v132;
    v54 = v52;
    sub_1B8A238D4();

    v55 = v134;
    v125 = *v129;
    v125(v134, v53, v133);
    v127 = v51;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v140 = v4;
    v58 = sub_1B8A0DF10(v55);
    v59 = v4[2];
    v60 = (v57 & 1) == 0;
    v61 = v59 + v60;
    if (__OFADD__(v59, v60))
    {
      goto LABEL_141;
    }

    if (v4[3] >= v61)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v4 = v140;
        if (v57)
        {
          goto LABEL_61;
        }
      }

      else
      {
        v78 = v57;
        sub_1B89F4108();
        v4 = v140;
        if (v78)
        {
          goto LABEL_61;
        }
      }

LABEL_57:
      v4[(v58 >> 6) + 8] |= 1 << v58;
      v66 = v130;
      v67 = v133;
      v125(v4[6] + *(v130 + 72) * v58, v134, v133);
      v68 = v127;
      *(v4[7] + 8 * v58) = v127;

      v69 = *(v66 + 8);
      v69(v134, v67);
      v69(v132, v67);
      v70 = v4[2];
      v71 = __OFADD__(v70, 1);
      v72 = v70 + 1;
      if (!v71)
      {
        v4[2] = v72;
        goto LABEL_62;
      }

      goto LABEL_142;
    }

    v62 = v57;
    sub_1B89F3D2C(v61, isUniquelyReferenced_nonNull_native);
    v63 = sub_1B8A0DF10(v134);
    if ((v62 & 1) != (v64 & 1))
    {
      goto LABEL_143;
    }

    v58 = v63;
    v65 = v62;
    v4 = v140;
    if ((v65 & 1) == 0)
    {
      goto LABEL_57;
    }

LABEL_61:
    v73 = v4[7];
    v74 = *(v73 + 8 * v58);
    v75 = v127;
    *(v73 + 8 * v58) = v127;

    v76 = *v128;
    v77 = v133;
    (*v128)(v134, v133);
    v76(v132, v77);
LABEL_62:
    v5 = v126;
  }

  while (v48 != v47);
LABEL_76:

  sub_1B89F28A4(v79);
  v139 = v80;
  v138 = MEMORY[0x1E69E7CC0];
  v81 = OBJC_IVAR___STKSticker_representations;
  swift_beginAccess();
  v82 = *(v5 + v81);
  if (!(v82 >> 62))
  {
    v83 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v83)
    {
      goto LABEL_78;
    }

LABEL_92:
    v93 = MEMORY[0x1E69E7CC0];
LABEL_93:

    v94 = v139;
    v133 = v139;
    if ((v139 & 0xC000000000000001) != 0)
    {
      v95 = v135;

      sub_1B8A24514();
      type metadata accessor for ManagedRepresentation();
      sub_1B89F6794(&qword_1EBA91300, type metadata accessor for ManagedRepresentation, MEMORY[0x1E69E81B8]);
      sub_1B8A241F4();
      v94 = v140;
      v96 = v141;
      v97 = v142;
      v98 = v143;
      v99 = v144;
    }

    else
    {
      v100 = -1 << *(v139 + 32);
      v96 = v139 + 56;
      v97 = ~v100;
      v101 = -v100;
      if (v101 < 64)
      {
        v102 = ~(-1 << v101);
      }

      else
      {
        v102 = -1;
      }

      v99 = v102 & *(v139 + 56);
      v103 = v135;

      v98 = 0;
    }

    v134 = v97;
    v104 = (v97 + 64) >> 6;
    if ((v94 & 0x8000000000000000) == 0)
    {
      goto LABEL_103;
    }

LABEL_100:
    v105 = sub_1B8A24584();
    if (v105)
    {
      v136 = v105;
      type metadata accessor for ManagedRepresentation();
      swift_dynamicCast();
      v106 = v137;
      v107 = v98;
      v108 = v99;
      if (v137)
      {
        while (1)
        {
          [v135 deleteObject_];

          v98 = v107;
          v99 = v108;
          if (v94 < 0)
          {
            goto LABEL_100;
          }

LABEL_103:
          v109 = v98;
          v110 = v99;
          v107 = v98;
          if (!v99)
          {
            break;
          }

LABEL_107:
          v108 = (v110 - 1) & v110;
          v106 = *(*(v94 + 48) + ((v107 << 9) | (8 * __clz(__rbit64(v110)))));
          if (!v106)
          {
            goto LABEL_110;
          }
        }

        while (1)
        {
          v107 = v109 + 1;
          if (__OFADD__(v109, 1))
          {
            __break(1u);
            goto LABEL_135;
          }

          if (v107 >= v104)
          {
            break;
          }

          v110 = *(v96 + 8 * v107);
          ++v109;
          if (v110)
          {
            goto LABEL_107;
          }
        }
      }
    }

LABEL_110:
    v111 = v135;

    sub_1B89F678C(v94);
    v135 = (v93 >> 62);
    if (v93 >> 62)
    {
      goto LABEL_139;
    }

    for (i = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1B8A24554())
    {
      swift_bridgeObjectRetain_n();
      if (i)
      {
        v113 = 0;
        while (1)
        {
          if ((v93 & 0xC000000000000001) != 0)
          {
            v114 = MEMORY[0x1B8CC44E0](v113, v93);
          }

          else
          {
            if (v113 >= *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_136;
            }

            v114 = *(v93 + 8 * v113 + 32);
          }

          v115 = v114;
          if (v113 == 0x80000000)
          {
            break;
          }

          [v114 setIndex_];

          if (i == ++v113)
          {
            goto LABEL_121;
          }
        }

LABEL_135:
        __break(1u);
LABEL_136:
        __break(1u);
      }

      else
      {
LABEL_121:

        if (v135)
        {
          v116 = sub_1B8A24554();
          v117 = v131;
          if (!v116)
          {
LABEL_133:

            sub_1B89F26D8(v93);

            v122 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
            v123 = sub_1B8A240E4();

            v124 = [v122 initWithArray_];

            [v117 setRepresentations_];
            return;
          }
        }

        else
        {
          v116 = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v117 = v131;
          if (!v116)
          {
            goto LABEL_133;
          }
        }

        v118 = 0;
        while (1)
        {
          if ((v93 & 0xC000000000000001) != 0)
          {
            v119 = MEMORY[0x1B8CC44E0](v118, v93);
          }

          else
          {
            if (v118 >= *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_138;
            }

            v119 = *(v93 + 8 * v118 + 32);
          }

          v120 = v119;
          v121 = v118 + 1;
          if (__OFADD__(v118, 1))
          {
            break;
          }

          [v119 setSticker_];

          ++v118;
          if (v121 == v116)
          {
            goto LABEL_133;
          }
        }
      }

      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      ;
    }
  }

  v83 = sub_1B8A24554();
  if (!v83)
  {
    goto LABEL_92;
  }

LABEL_78:
  if (v83 >= 1)
  {

    for (j = 0; j != v83; ++j)
    {
      if ((v82 & 0xC000000000000001) != 0)
      {
        v85 = MEMORY[0x1B8CC44E0](j, v82);
      }

      else
      {
        v85 = *(v82 + 8 * j + 32);
      }

      v86 = v85;
      if (v4[2] && (v87 = sub_1B8A0DF10(v85 + OBJC_IVAR___STKStickerRepresentation_identifier), (v88 & 1) != 0))
      {
        v89 = *(v4[7] + 8 * v87);

        v90 = v89;
      }

      else
      {
        type metadata accessor for ManagedRepresentation();
        v91 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        v90 = [v91 initWithContext_];
        v89 = v90;
      }

      sub_1B89F29E8(v90);
      v92 = v89;
      MEMORY[0x1B8CC3F50]();
      if (*((v138 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v138 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B8A24114();
      }

      sub_1B8A24134();
    }

    v93 = v138;

    goto LABEL_93;
  }

  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  sub_1B8A249A4();
  __break(1u);
}

uint64_t sub_1B89EFB98(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1B89B5D00(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1B89F2CBC(v6);
  return sub_1B8A246C4();
}

uint64_t sub_1B89EFC14()
{
  v0 = sub_1B8A23BC4();
  __swift_allocate_value_buffer(v0, qword_1EBA95F20);
  __swift_project_value_buffer(v0, qword_1EBA95F20);
  return sub_1B8A23BB4();
}

uint64_t sub_1B89EFC8C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for CoreDataDataMapper.StoreType(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StickerContainer(0);
  v10 = (v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B89AD0CC(a1, v3 + OBJC_IVAR____TtC8Stickers18CoreDataDataMapper_storeType, type metadata accessor for CoreDataDataMapper.StoreType);
  sub_1B89AD0CC(a1, v8, type metadata accessor for CoreDataDataMapper.StoreType);
  sub_1B89B8174(v8, a2, v12);
  v13 = (v3 + OBJC_IVAR____TtC8Stickers18CoreDataDataMapper_container);
  sub_1B89ACED0(v12, v3 + OBJC_IVAR____TtC8Stickers18CoreDataDataMapper_container);
  swift_beginAccess();
  v14 = *&v13[v10[7]];
  [v14 lock];
  type metadata accessor for StickerContainer.LoadMethod();
  swift_initStackObject();
  sub_1B89BD1D8(v13, v13[v10[8]], &v21);
  v15 = v22;
  v16 = &v13[v10[9]];
  v17 = *v16;
  v18 = *(v16 + 1);
  v19 = v16[16];
  *v16 = v21;
  v16[16] = v15;
  sub_1B89AF128(v17, v18, v19);
  [v14 unlock];
  swift_endAccess();
  sub_1B89AF208(a1, type metadata accessor for CoreDataDataMapper.StoreType);
  return v3;
}

uint64_t sub_1B89EFE74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  v7 = a6(a1, a2);
  sub_1B89A9028(a4);

  return v7;
}

void sub_1B89EFEC8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;

  v12 = a4;
  v13 = v6;
  sub_1B89F0F94(a3, v12, a5);
  if (!v6)
  {
    goto LABEL_13;
  }

  v40 = v6;
  v14 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A20, &qword_1B8A26468);
  sub_1B89F66BC();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  v15 = v39;
  if (!sub_1B89EE954())
  {

LABEL_11:
    swift_willThrow();
LABEL_13:

    goto LABEL_14;
  }

  if (a1 <= 0)
  {
    sub_1B89C353C();
    swift_allocError();
    *v25 = 6;
    swift_willThrow();

    goto LABEL_13;
  }

  if (qword_1EBA913F0 != -1)
  {
    swift_once();
  }

  v16 = sub_1B8A23BC4();
  __swift_project_value_buffer(v16, qword_1EBA95F20);
  v17 = v39;
  v18 = sub_1B8A23BA4();
  v19 = sub_1B8A24234();
  v34 = v17;

  log = v18;
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    *(v20 + 4) = v34;
    *v21 = v34;
    v22 = v34;
    _os_log_impl(&dword_1B89A7000, log, v19, "Database is corrupted, attempting recovery after %@", v20, 0xCu);
    sub_1B89A8A78(v21, &qword_1EBA919E0, &qword_1B8A262D0);
    MEMORY[0x1B8CC5170](v21, -1, -1);
    MEMORY[0x1B8CC5170](v20, -1, -1);
  }

  v23 = (a2 + OBJC_IVAR____TtC8Stickers18CoreDataDataMapper_container);
  swift_beginAccess();
  v24 = sub_1B89BBFAC();
  if (v24)
  {
    v33 = type metadata accessor for StickerContainer(0);
    loga = *&v23[v33[5]];
    [loga lock];
    type metadata accessor for StickerContainer.LoadMethod();
    swift_initStackObject();
    sub_1B89BD1D8(v23, v23[v33[6]], &v37);
    v26 = v38;
    v27 = &v23[v33[7]];
    v28 = *v27;
    v29 = *(v27 + 1);
    v30 = v27[16];
    *v27 = v37;
    v27[16] = v26;
    sub_1B89AF128(v28, v29, v30);
    [loga unlock];
  }

  swift_endAccess();
  v31 = a1 - 1;

  v32 = v12;
  sub_1B89EFEC8(v31, a2, a3, v32, a5);

LABEL_14:
}

uint64_t sub_1B89F0274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  sub_1B89F0B28(a3, a4, a5);
  if (!v5)
  {
    goto LABEL_17;
  }

  v36 = v5;
  v11 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A20, &qword_1B8A26468);
  sub_1B89F66BC();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:

    swift_willThrow();
    goto LABEL_17;
  }

  v12 = v35;
  if (!sub_1B89EE954())
  {

    goto LABEL_11;
  }

  if (a1 <= 0)
  {
    sub_1B89C353C();
    swift_allocError();
    *v22 = 6;
    swift_willThrow();
  }

  else
  {
    if (qword_1EBA913F0 != -1)
    {
      swift_once();
    }

    v13 = sub_1B8A23BC4();
    __swift_project_value_buffer(v13, qword_1EBA95F20);
    v14 = v35;
    v15 = sub_1B8A23BA4();
    v16 = sub_1B8A24234();
    v30 = v14;

    log = v15;
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      *(v17 + 4) = v30;
      *v18 = v30;
      v19 = v30;
      _os_log_impl(&dword_1B89A7000, log, v16, "Database is corrupted, attempting recovery after %@", v17, 0xCu);
      sub_1B89A8A78(v18, &qword_1EBA919E0, &qword_1B8A262D0);
      MEMORY[0x1B8CC5170](v18, -1, -1);
      MEMORY[0x1B8CC5170](v17, -1, -1);
    }

    v20 = (a2 + OBJC_IVAR____TtC8Stickers18CoreDataDataMapper_container);
    swift_beginAccess();
    v21 = sub_1B89BBFAC();
    if (v21)
    {
      v29 = type metadata accessor for StickerContainer(0);
      loga = *&v20[v29[5]];
      [loga lock];
      type metadata accessor for StickerContainer.LoadMethod();
      swift_initStackObject();
      sub_1B89BD1D8(v20, v20[v29[6]], &v33);
      v23 = v34;
      v24 = &v20[v29[7]];
      v25 = *v24;
      v26 = *(v24 + 1);
      v27 = v24[16];
      *v24 = v33;
      v24[16] = v23;
      sub_1B89AF128(v25, v26, v27);
      [loga unlock];
    }

    swift_endAccess();

    sub_1B89F0274(a1 - 1, a2, a3, a4, a5);
  }

LABEL_17:
}

uint64_t sub_1B89F060C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = sub_1B89F468C(a1, a2, a3, a4, a5);

  return v6;
}

uint64_t sub_1B89F0658(void *a1)
{
  v3 = *v1;

  v4 = a1;
  v5 = sub_1B89F468C(1, v1, v1, v4, v3);

  return v5;
}

uint64_t sub_1B89F06F4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = type metadata accessor for StickerContainer(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC8Stickers18CoreDataDataMapper_container;
  swift_beginAccess();
  sub_1B89AD0CC(a1 + v12, v11, type metadata accessor for StickerContainer);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  v14 = a2;
  v15 = sub_1B89B9D38(sub_1B89F67F8, v13);
  if (v4)
  {
    sub_1B89AF208(v11, type metadata accessor for StickerContainer);
  }

  else
  {
    v17 = v15;

    *a4 = v17;
    return sub_1B89AF208(v11, type metadata accessor for StickerContainer);
  }
}

uint64_t sub_1B89F0864@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v7 = sub_1B8A23BC4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EBA913F0 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v7, qword_1EBA95F20);
  (*(v8 + 16))(v10, v11, v7);
  _s14descr1F373DB19C3AddCMa(0);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  (*(v8 + 32))(v12 + OBJC_IVAR____TtCC8Stickers18CoreDataDataMapper15ExtractedMethod_logger, v10, v7);
  v13 = a1;
  sub_1B89CCDE8();
  if (v3)
  {
  }

  v18 = a3;
  type metadata accessor for ManagedSticker();
  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  sub_1B89EEAE8(v14, v13);

  sub_1B89CD138();
  v15 = a2;

  swift_setDeallocating();
  (*(v8 + 8))(v12 + OBJC_IVAR____TtCC8Stickers18CoreDataDataMapper15ExtractedMethod_logger, v7);
  result = swift_deallocClassInstance();
  *v18 = v15;
  return result;
}

uint64_t sub_1B89F0AB8(uint64_t a1)
{
  v3 = *v1;

  return sub_1B89F0274(1, v1, v1, a1, v3);
}

uint64_t sub_1B89F0B28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for StickerContainer(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC8Stickers18CoreDataDataMapper_container;
  swift_beginAccess();
  sub_1B89AD0CC(a1 + v9, v8, type metadata accessor for StickerContainer);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;

  sub_1B89BA7B8(sub_1B89F67DC, v10);
  sub_1B89AF208(v8, type metadata accessor for StickerContainer);
}

uint64_t sub_1B89F0C70(void *a1, uint64_t a2)
{
  v23 = a1;
  v24 = a2;
  v2 = sub_1B8A23BC4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v21 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - v10;
  if (qword_1EBA913F0 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v2, qword_1EBA95F20);
  v13 = *(v3 + 16);
  v13(v11, v12, v2);
  _s14descr1F373DB19C6RemoveCMa(0);
  v14 = swift_allocObject();
  v22 = v11;
  v15 = v14;
  v13(v9, v12, v2);
  v13(v6, v9, v2);
  sub_1B8A23B24();
  v16 = *(v3 + 8);
  v16(v9, v2);
  v17 = v22;
  v18 = v23;
  *(v15 + 16) = v23;
  (*(v3 + 32))(v15 + OBJC_IVAR____TtCC8Stickers18CoreDataDataMapper15ExtractedMethod_logger, v17, v2);
  v19 = v18;
  sub_1B8A1ABC4(v24);
  swift_setDeallocating();

  v16((v15 + OBJC_IVAR____TtCC8Stickers18CoreDataDataMapper15ExtractedMethod_logger), v2);
  sub_1B89AF208(v15 + OBJC_IVAR____TtCC8Stickers18CoreDataDataMapper6Remove_signposter, type metadata accessor for StickerSignposter);
  return swift_deallocClassInstance();
}

void sub_1B89F0F20(void *a1)
{
  v3 = *v1;

  sub_1B89EFEC8(1, v1, v1, a1, v3);
}

uint64_t sub_1B89F0F94(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for StickerContainer(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC8Stickers18CoreDataDataMapper_container;
  swift_beginAccess();
  sub_1B89AD0CC(a1 + v9, v8, type metadata accessor for StickerContainer);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v11 = a2;
  sub_1B89BA7B8(sub_1B89F6770, v10);
  sub_1B89AF208(v8, type metadata accessor for StickerContainer);
}

void sub_1B89F10D8(void *a1, uint64_t a2)
{
  v5 = sub_1B8A23BC4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EBA913F0 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v5, qword_1EBA95F20);
  (*(v6 + 16))(v8, v9, v5);
  _s14descr1F373DB19C6UpdateCMa(0);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  (*(v6 + 32))(v10 + OBJC_IVAR____TtCC8Stickers18CoreDataDataMapper15ExtractedMethod_logger, v8, v5);
  v11 = OBJC_IVAR___STKSticker_identifier;
  v12 = a1;
  v13 = sub_1B8A1FA3C(a2 + v11);
  if (v2)
  {
  }

  else
  {
    v14 = v13;
    sub_1B89EEAE8(v13, v12);
    sub_1B8A1FFB4();

    swift_setDeallocating();
    (*(v6 + 8))(v10 + OBJC_IVAR____TtCC8Stickers18CoreDataDataMapper15ExtractedMethod_logger, v5);
    swift_deallocClassInstance();
  }
}

uint64_t sub_1B89F1310(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for StickerContainer(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC8Stickers18CoreDataDataMapper_container;
  swift_beginAccess();
  sub_1B89AD0CC(v2 + v8, v7, type metadata accessor for StickerContainer);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = v4;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1B89F6728;
  *(v10 + 24) = v9;
  v11 = a1;
  sub_1B89B92B8(sub_1B89F6730, v10);

  return sub_1B89AF208(v7, type metadata accessor for StickerContainer);
}

uint64_t sub_1B89F1490(void *a1, void *a2)
{
  v18 = a1;
  v19 = a2;
  v2 = sub_1B8A23BC4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v18 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - v10;
  if (qword_1EBA913F0 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v2, qword_1EBA95F20);
  v13 = *(v3 + 16);
  v13(v11, v12, v2);
  _s14descr1F373DB19C5TouchCMa(0);
  v14 = swift_allocObject();
  v13(v9, v12, v2);
  v13(v6, v9, v2);
  sub_1B8A23B24();
  v15 = *(v3 + 8);
  v15(v9, v2);
  (*(v3 + 32))(v14 + OBJC_IVAR____TtCC8Stickers18CoreDataDataMapper15ExtractedMethod_logger, v11, v2);
  v16 = v18;
  sub_1B89C3E3C(v19);

  swift_setDeallocating();
  v15((v14 + OBJC_IVAR____TtCC8Stickers18CoreDataDataMapper15ExtractedMethod_logger), v2);
  sub_1B89AF208(v14 + OBJC_IVAR____TtCC8Stickers18CoreDataDataMapper5Touch_signposter, type metadata accessor for StickerSignposter);
  return swift_deallocClassInstance();
}

void *sub_1B89F172C()
{
  v34 = *v0;
  v33 = sub_1B8A23904();
  v1 = *(v33 - 1);
  v2 = MEMORY[0x1EEE9AC00](v33);
  v31 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v32 = &v30 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AA0, qword_1B8A265A0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AA8, qword_1B8A281D0);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  KeyPath = swift_getKeyPath();
  MEMORY[0x1B8CC3470](KeyPath, 1);
  sub_1B89AADD4(0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1B8A26260;
  v11 = swift_getKeyPath();
  MEMORY[0x1B8CC3470](v11, 1);
  swift_setDeallocating();
  (*(v6 + 8))(v8 + v7, v5);
  swift_deallocClassInstance();
  LOBYTE(rawValue) = 1;
  v36 = 0;
  v37[0] = 1;
  v38 = xmmword_1B8A28110;
  v40 = 0;
  v41 = 0;
  v39 = v10;
  v42 = 1;
  v43 = 8;
  v44 = 0;

  sub_1B89A8FB4(v37, &rawValue);
  v12 = sub_1B89B1AD0(1, v0, v0, v37, v34);
  sub_1B89A9028(v37);

  v13 = v33;
  v14 = v32;
  if (v12 >> 62)
  {
    v15 = sub_1B8A24554();
    if (v15)
    {
      goto LABEL_3;
    }

LABEL_16:

    v17._rawValue = MEMORY[0x1E69E7CC0];
    goto LABEL_17;
  }

  v15 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
    goto LABEL_16;
  }

LABEL_3:
  rawValue = MEMORY[0x1E69E7CC0];
  result = sub_1B8A0396C(0, v15 & ~(v15 >> 63), 0);
  if (v15 < 0)
  {
    __break(1u);
    return result;
  }

  v17._rawValue = rawValue;
  v18 = v12;
  v19 = v31;
  v34 = v12;
  if ((v12 & 0xC000000000000001) != 0)
  {
    v20 = 0;
    v33 = (v1 + 32);
    do
    {
      v21 = MEMORY[0x1B8CC44E0](v20, v18);
      (*(v1 + 16))(v14, v21 + OBJC_IVAR___STKSticker_identifier, v13);
      swift_unknownObjectRelease();
      rawValue = v17._rawValue;
      v22 = v13;
      v23 = v14;
      v25 = *(v17._rawValue + 2);
      v24 = *(v17._rawValue + 3);
      if (v25 >= v24 >> 1)
      {
        sub_1B8A0396C((v24 > 1), v25 + 1, 1);
        v17._rawValue = rawValue;
      }

      ++v20;
      *(v17._rawValue + 2) = v25 + 1;
      (*(v1 + 32))(v17._rawValue + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v25, v23, v22);
      v14 = v23;
      v13 = v22;
      v18 = v34;
    }

    while (v15 != v20);
  }

  else
  {
    v33 = *(v1 + 16);
    v26 = 32;
    do
    {
      (v33)(v19, *(v18 + v26) + OBJC_IVAR___STKSticker_identifier, v13);
      rawValue = v17._rawValue;
      v28 = *(v17._rawValue + 2);
      v27 = *(v17._rawValue + 3);
      if (v28 >= v27 >> 1)
      {
        sub_1B8A0396C((v27 > 1), v28 + 1, 1);
        v19 = v31;
        v17._rawValue = rawValue;
      }

      *(v17._rawValue + 2) = v28 + 1;
      (*(v1 + 32))(v17._rawValue + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v28, v19, v13);
      v26 += 8;
      --v15;
      v18 = v34;
    }

    while (v15);
  }

LABEL_17:
  if (qword_1EBA91388 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for StickerReindexer(0);
  __swift_project_value_buffer(v29, qword_1EBA91390);
  swift_beginAccess();
  StickerReindexer.reindexStickers(with:)(v17);
  swift_endAccess();
  sub_1B89A9028(v37);
}

uint64_t sub_1B89F1DE0()
{
  sub_1B89AF208(v0 + OBJC_IVAR____TtC8Stickers18CoreDataDataMapper_storeType, type metadata accessor for CoreDataDataMapper.StoreType);
  sub_1B89AF208(v0 + OBJC_IVAR____TtC8Stickers18CoreDataDataMapper_container, type metadata accessor for StickerContainer);

  return swift_deallocClassInstance();
}

uint64_t sub_1B89F1EA4(uint64_t a1)
{
  result = type metadata accessor for CoreDataDataMapper.StoreType(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for StickerContainer(319);
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

uint64_t sub_1B89F2054()
{
  v1 = OBJC_IVAR____TtCC8Stickers18CoreDataDataMapper15ExtractedMethod_logger;
  v2 = sub_1B8A23BC4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1B89F2120(uint64_t a1)
{
  result = sub_1B8A23BC4();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B89F21E8(uint64_t a1)
{
  v1 = sub_1B8A23784();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

unint64_t sub_1B89F2240(void **a1, unint64_t a2)
{
  v2 = a2;
  v3 = *a1;
  if (!*a1)
  {
    if (a2 >> 62)
    {
      goto LABEL_39;
    }

    v24 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v24)
    {
      goto LABEL_23;
    }

    return MEMORY[0x1E69E7CC0];
  }

  if (v3 == 1)
  {

    return v2;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
    if (v3 != 2)
    {
      v40 = MEMORY[0x1E69E7CC0];
      if (a2 >> 62)
      {
        v5 = sub_1B8A24554();
      }

      else
      {
        v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v35 = v3;
      if (v5)
      {
        v31 = v3;
        v32 = v5;
        v6 = 0;
        v33 = v2 & 0xFFFFFFFFFFFFFF8;
        v34 = v2 & 0xC000000000000001;
        v7 = &unk_1EBA91F50;
        v8 = &unk_1B8A26500;
        while (1)
        {
          if (v34)
          {
            v9 = MEMORY[0x1B8CC44E0](v6, v2);
          }

          else
          {
            if (v6 >= *(v33 + 16))
            {
              goto LABEL_36;
            }

            v9 = *(v2 + 8 * v6 + 32);
          }

          v10 = v9;
          v11 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            break;
          }

          v39[3] = type metadata accessor for ManagedRepresentation();
          v39[0] = v10;
          sub_1B89AF268(v39, v37, v7, v8);
          v12 = v38;
          if (v38)
          {
            v13 = __swift_project_boxed_opaque_existential_0(v37, v38);
            v36 = &v30;
            v14 = v8;
            v15 = v2;
            v16 = v7;
            v17 = *(v12 - 8);
            MEMORY[0x1EEE9AC00](v13);
            v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v17 + 16))(v19);
            v20 = v10;
            v21 = sub_1B8A24944();
            (*(v17 + 8))(v19, v12);
            v7 = v16;
            v2 = v15;
            v8 = v14;
            v5 = v32;
            __swift_destroy_boxed_opaque_existential_0(v37);
          }

          else
          {
            v22 = v10;
            v21 = 0;
          }

          v23 = [v35 evaluateWithObject_];
          swift_unknownObjectRelease();
          sub_1B89A8A78(v39, v7, v8);
          if (v23)
          {
            sub_1B8A246B4();
            sub_1B8A246E4();
            sub_1B8A246F4();
            sub_1B8A246C4();
          }

          else
          {
          }

          ++v6;
          if (v11 == v5)
          {
            v4 = v40;
            v3 = v31;
            goto LABEL_33;
          }
        }

        __break(1u);
LABEL_36:
        __break(1u);
        while (1)
        {
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          v24 = sub_1B8A24554();
          if (!v24)
          {
            return MEMORY[0x1E69E7CC0];
          }

LABEL_23:
          v25 = 0;
          v4 = MEMORY[0x1E69E7CC0];
          while (1)
          {
            if ((v2 & 0xC000000000000001) != 0)
            {
              v26 = MEMORY[0x1B8CC44E0](v25, v2);
            }

            else
            {
              if (v25 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_38;
              }

              v26 = *(v2 + 8 * v25 + 32);
            }

            v27 = v26;
            v28 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if ([v26 isPreferred])
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA921D0, &unk_1B8A281C0);
              v4 = swift_allocObject();
              *(v4 + 16) = xmmword_1B8A26280;
              *(v4 + 32) = v27;
              return v4;
            }

            ++v25;
            if (v28 == v24)
            {
              return v4;
            }
          }
        }
      }

LABEL_33:
      sub_1B89AADD4(v3);
    }
  }

  return v4;
}

uint64_t sub_1B89F2600(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v6 = MEMORY[0x1E69E7CC0];
    sub_1B8A246D4();
    v4 = a1 + 32;
    do
    {
      sub_1B89A9360(v4, &v5);
      type metadata accessor for ManagedRepresentation();
      swift_dynamicCast();
      sub_1B8A246B4();
      sub_1B8A246E4();
      sub_1B8A246F4();
      sub_1B8A246C4();
      v4 += 32;
      --v2;
    }

    while (v2);
    return v6;
  }

  return result;
}

char *sub_1B89F26D8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1B8A24554();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x1E69E7CC0];
  result = sub_1B89AB690(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x1B8CC44E0](i, a1);
        type metadata accessor for ManagedRepresentation();
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_1B89AB690((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_1B89AB7C0(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      type metadata accessor for ManagedRepresentation();
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1B89AB690((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_1B89AB7C0(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void sub_1B89F28A4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = type metadata accessor for ManagedRepresentation();
  v4 = sub_1B89F6794(&qword_1EBA91300, type metadata accessor for ManagedRepresentation, MEMORY[0x1E69E81B8]);
  v5 = 0;
  v12[1] = MEMORY[0x1B8CC4050](v2, v3, v4);
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    sub_1B8A0DFEC(v12, *(*(a1 + 56) + ((v10 << 9) | (8 * v11))));
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return;
    }

    v8 = *(a1 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
}

id sub_1B89F29E8(void *a1)
{
  v2 = v1;
  v4 = sub_1B8A238B4();
  [a1 setIdentifier_];

  v5 = (v2 + OBJC_IVAR___STKStickerRepresentation_data);
  swift_beginAccess();
  v7 = *v5;
  v6 = v5[1];
  sub_1B89B4A18(v7, v6);
  v8 = sub_1B8A237A4();
  sub_1B89AFC38(v7, v6);
  [a1 setData_];

  sub_1B8A23AB4();
  v9 = sub_1B8A23EF4();

  [a1 setUti_];

  v10 = OBJC_IVAR___STKStickerRepresentation_byteCount;
  swift_beginAccess();
  v11 = *(v2 + v10);
  if (v11 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v11 <= 0x7FFFFFFF)
  {
    [a1 setByteCount_];
    v12 = v2 + OBJC_IVAR___STKStickerRepresentation_size;
    [a1 setSize:*(v2 + OBJC_IVAR___STKStickerRepresentation_size) w:?];
    [a1 setSize:*(v12 + 8) h:?];
    swift_beginAccess();

    v13 = sub_1B8A23EF4();

    [a1 setRole_];

    v14 = OBJC_IVAR___STKStickerRepresentation_isPreferred;
    swift_beginAccess();
    [a1 setIsPreferred_];
    if (qword_1EBA91590 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  __break(1u);
LABEL_12:
  swift_once();
LABEL_4:
  v15 = qword_1EBA91598 + OBJC_IVAR____TtC8Stickers10Versioning_currentStickerRepresentationVersionOverride;
  result = swift_beginAccess();
  if (*(v15 + 8))
  {
    v17 = 1;
  }

  else
  {
    v17 = *v15;
  }

  if (v17 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v17 <= 0x7FFFFFFF)
  {
    return [a1 setVersion_];
  }

  __break(1u);
  return result;
}

void sub_1B89F2CBC(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1B8A24924();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for ManagedRepresentation();
        v6 = sub_1B8A24124();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1B89F2EB8(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1B89F2DC0(0, v2, 1, a1);
  }
}

void sub_1B89F2DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v17 = v7;
    v18 = v6;
    while (1)
    {
      v9 = *v6;
      v10 = v8;
      v11 = v9;
      v12 = [v10 index];
      v13 = [v11 index];

      if (v12 >= v13)
      {
LABEL_4:
        ++v4;
        v6 = v18 + 8;
        v7 = v17 - 1;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v14 = *v6;
      v8 = *(v6 + 8);
      *v6 = v8;
      *(v6 + 8) = v14;
      v6 -= 8;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1B89F2EB8(id *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_90:
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = sub_1B89F3898(v8);
    }

    v91 = *(v8 + 2);
    if (v91 >= 2)
    {
      while (*a3)
      {
        v92 = v8;
        v8 = (v91 - 1);
        v93 = *&v92[16 * v91];
        v94 = *&v92[16 * v91 + 24];
        sub_1B89F3528((*a3 + 8 * v93), (*a3 + 8 * *&v92[16 * v91 + 16]), (*a3 + 8 * v94), v7);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v94 < v93)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v92 = sub_1B89F3898(v92);
        }

        if (v91 - 2 >= *(v92 + 2))
        {
          goto LABEL_116;
        }

        v95 = &v92[16 * v91];
        *v95 = v93;
        *(v95 + 1) = v94;
        sub_1B89F380C(v91 - 1);
        v8 = v92;
        v91 = *(v92 + 2);
        if (v91 <= 1)
        {
          goto LABEL_100;
        }
      }

      goto LABEL_126;
    }

LABEL_100:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7;
    v7 = (v7 + 1);
    if (v7 < v6)
    {
      v101 = v5;
      v97 = 8 * v9;
      v10 = (*a3 + 8 * v9);
      v12 = *v10;
      v11 = v10 + 2;
      v13 = *(*a3 + 8 * v7);
      v14 = v12;
      v106 = [v13 index];
      v104 = [v14 index];

      v99 = v9;
      v15 = v9 + 2;
      while (v6 != v15)
      {
        v16 = *(v11 - 1);
        v17 = *v11;
        v18 = v16;
        v19 = v8;
        v20 = [v17 index];
        v7 = [v18 index];

        v21 = v20 < v7;
        v8 = v19;
        v22 = !v21;
        ++v15;
        ++v11;
        if ((((v106 < v104) ^ v22) & 1) == 0)
        {
          v6 = v15 - 1;
          break;
        }
      }

      v9 = v99;
      v5 = v101;
      v23 = v97;
      if (v106 < v104)
      {
        if (v6 < v99)
        {
          goto LABEL_119;
        }

        if (v99 < v6)
        {
          v24 = 8 * v6 - 8;
          v25 = v6;
          v26 = v99;
          do
          {
            if (v26 != --v25)
            {
              v28 = *a3;
              if (!*a3)
              {
                goto LABEL_125;
              }

              v27 = *(v28 + v23);
              *(v28 + v23) = *(v28 + v24);
              *(v28 + v24) = v27;
            }

            ++v26;
            v24 -= 8;
            v23 += 8;
          }

          while (v26 < v25);
        }
      }

      v7 = v6;
    }

    v29 = a3[1];
    if (v7 < v29)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        v30 = v9 + a4;
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v30 >= v29)
        {
          v30 = a3[1];
        }

        if (v30 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v30)
        {
          break;
        }
      }
    }

LABEL_39:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1B89DCDEC(0, *(v8 + 2) + 1, 1, v8);
    }

    v45 = *(v8 + 2);
    v44 = *(v8 + 3);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      v8 = sub_1B89DCDEC((v44 > 1), v45 + 1, 1, v8);
    }

    *(v8 + 2) = v46;
    v47 = &v8[16 * v45];
    *(v47 + 4) = v9;
    *(v47 + 5) = v7;
    v48 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = *(v8 + 4);
          v51 = *(v8 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_59:
          if (v53)
          {
            goto LABEL_106;
          }

          v66 = &v8[16 * v46];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_109;
          }

          v72 = &v8[16 * v49 + 32];
          v74 = *v72;
          v73 = *(v72 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_113;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_80;
          }

          goto LABEL_73;
        }

        v76 = &v8[16 * v46];
        v78 = *v76;
        v77 = *(v76 + 1);
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_73:
        if (v71)
        {
          goto LABEL_108;
        }

        v79 = &v8[16 * v49];
        v81 = *(v79 + 4);
        v80 = *(v79 + 5);
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_111;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_80:
        v87 = v49 - 1;
        if (v49 - 1 >= v46)
        {
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
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
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v88 = *&v8[16 * v87 + 32];
        v89 = *&v8[16 * v49 + 40];
        sub_1B89F3528((*a3 + 8 * v88), (*a3 + 8 * *&v8[16 * v49 + 32]), (*a3 + 8 * v89), v48);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v89 < v88)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1B89F3898(v8);
        }

        if (v87 >= *(v8 + 2))
        {
          goto LABEL_103;
        }

        v90 = &v8[16 * v87];
        *(v90 + 4) = v88;
        *(v90 + 5) = v89;
        sub_1B89F380C(v49);
        v46 = *(v8 + 2);
        if (v46 <= 1)
        {
          goto LABEL_3;
        }
      }

      v54 = &v8[16 * v46 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_104;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_105;
      }

      v61 = &v8[16 * v46];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_107;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_110;
      }

      if (v65 >= v57)
      {
        v83 = &v8[16 * v49 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_114;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_90;
    }
  }

  v98 = v8;
  v100 = v9;
  v102 = v5;
  v31 = *a3;
  v32 = *a3 + 8 * v7 - 8;
  v33 = v9 - v7;
  v105 = v30;
LABEL_32:
  v107 = v7;
  v34 = *(v31 + 8 * v7);
  v35 = v33;
  v36 = v32;
  while (1)
  {
    v37 = *v36;
    v38 = v34;
    v39 = v37;
    v40 = [v38 index];
    v41 = [v39 index];

    if (v40 >= v41)
    {
LABEL_31:
      v7 = (v107 + 1);
      v32 += 8;
      --v33;
      if ((v107 + 1) != v105)
      {
        goto LABEL_32;
      }

      v7 = v105;
      v9 = v100;
      v5 = v102;
      v8 = v98;
      goto LABEL_39;
    }

    if (!v31)
    {
      break;
    }

    v42 = *v36;
    v34 = *(v36 + 8);
    *v36 = v34;
    *(v36 + 8) = v42;
    v36 -= 8;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
}

uint64_t sub_1B89F3528(void **__dst, void **a2, id *a3, void **__src)
{
  v4 = a3;
  v5 = __dst;
  v6 = a2 - __dst;
  v7 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v7 = a2 - __dst;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    if (__src != a2 || &a2[v11] <= __src)
    {
      v23 = a2;
      v24 = __src;
      memmove(__src, a2, 8 * v11);
      __src = v24;
      a2 = v23;
    }

    v41 = __src;
    v14 = &__src[v11];
    if (v9 < 8)
    {
      v13 = __src;
    }

    else
    {
      v13 = __src;
      if (a2 > v5)
      {
        v38 = v5;
LABEL_27:
        v39 = a2;
        v25 = a2 - 1;
        --v4;
        v26 = v14;
        do
        {
          v27 = v14;
          v28 = v4 + 1;
          v29 = *(v26 - 1);
          v26 -= 8;
          v30 = v25;
          v31 = *v25;
          v32 = v29;
          v33 = v31;
          v34 = [v32 index];
          v35 = [v33 index];

          if (v34 < v35)
          {
            if (v28 != v39)
            {
              *v4 = *v30;
            }

            v13 = v41;
            v14 = v27;
            if (v27 <= v41 || (a2 = v30, v30 <= v38))
            {
              a2 = v30;
              goto LABEL_40;
            }

            goto LABEL_27;
          }

          if (v28 != v27)
          {
            *v4 = *v26;
          }

          --v4;
          v14 = v26;
          v13 = v41;
          v25 = v30;
        }

        while (v26 > v41);
        v14 = v26;
        a2 = v39;
      }
    }
  }

  else
  {
    v12 = a2;
    v13 = __src;
    if (__src != __dst || &__dst[v8] <= __src)
    {
      memmove(__src, __dst, 8 * v8);
    }

    v14 = &v13[v8];
    if (v6 < 8)
    {
      a2 = v5;
    }

    else
    {
      v40 = &v13[v8];
      if (v12 < v4)
      {
        v15 = v12;
        while (1)
        {
          v16 = *v13;
          v17 = *v15;
          v18 = v16;
          v19 = [v17 index];
          v20 = [v18 index];

          if (v19 >= v20)
          {
            break;
          }

          v21 = v15;
          v22 = v5 == v15++;
          if (!v22)
          {
            goto LABEL_17;
          }

LABEL_18:
          ++v5;
          if (v13 >= v40 || v15 >= v4)
          {
            goto LABEL_20;
          }
        }

        v21 = v13;
        v22 = v5 == v13++;
        if (v22)
        {
          goto LABEL_18;
        }

LABEL_17:
        *v5 = *v21;
        goto LABEL_18;
      }

LABEL_20:
      a2 = v5;
      v14 = v40;
    }
  }

LABEL_40:
  v36 = v14 - v13 + (v14 - v13 < 0 ? 7uLL : 0);
  if (a2 != v13 || a2 >= (v13 + (v36 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, v13, 8 * (v36 >> 3));
  }

  return 1;
}

uint64_t sub_1B89F380C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B89F3898(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1B89F38AC(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = a1;
    v6 = sub_1B8A24594();

    if (v6)
    {
      v7 = sub_1B89F3A34(v4, v5);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  type metadata accessor for ManagedRepresentation();
  v10 = sub_1B8A243F4();
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);
    v15 = sub_1B8A24404();

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v9;
  v19 = *v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1B8A0E45C();
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_1B89F3B8C(v12);
  result = v18;
  *v9 = v19;
  return result;
}

uint64_t sub_1B89F3A34(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = sub_1B8A24554();
  v5 = swift_unknownObjectRetain();
  v6 = sub_1B8A0E9DC(v5, v4);
  v15 = v6;

  v7 = sub_1B8A243F4();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    type metadata accessor for ManagedRepresentation();
    while (1)
    {
      v11 = *(*(v6 + 48) + 8 * v9);
      v12 = sub_1B8A24404();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v6 + 48) + 8 * v9);
  sub_1B89F3B8C(v9);
  result = sub_1B8A24404();
  if (result)
  {
    *v3 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1B89F3B8C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1B8A244E4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_1B8A243F4();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

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

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1B89F3D2C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1B8A23904();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91ED8, &qword_1B8A28210);
  v39 = v4;
  result = sub_1B8A24754();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_1B89F6794(&qword_1EBA91460, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = sub_1B8A23E94();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

char *sub_1B89F4108()
{
  v1 = v0;
  v31 = sub_1B8A23904();
  v33 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91ED8, &qword_1B8A28210);
  v3 = *v0;
  v4 = sub_1B8A24744();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        result = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

uint64_t sub_1B89F437C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8A23784();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CoreDataDataMapper.StoreType(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91EC0, &qword_1B8A28198);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_1B89AD0CC(a1, &v21 - v13, type metadata accessor for CoreDataDataMapper.StoreType);
  sub_1B89AD0CC(a2, &v14[v15], type metadata accessor for CoreDataDataMapper.StoreType);
  v16 = *(v5 + 48);
  v17 = v16(v14, 2, v4);
  if (!v17)
  {
    sub_1B89AD0CC(v14, v10, type metadata accessor for CoreDataDataMapper.StoreType);
    if (!v16(&v14[v15], 2, v4))
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      v18 = sub_1B8A23714();
      v20 = *(v5 + 8);
      v20(v7, v4);
      v20(v10, v4);
      sub_1B89AF208(v14, type metadata accessor for CoreDataDataMapper.StoreType);
      return v18 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_9;
  }

  if (v17 == 1)
  {
    if (v16(&v14[v15], 2, v4) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v16(&v14[v15], 2, v4) != 2)
  {
LABEL_9:
    sub_1B89A8A78(v14, &qword_1EBA91EC0, &qword_1B8A28198);
    v18 = 0;
    return v18 & 1;
  }

  sub_1B89AF208(v14, type metadata accessor for CoreDataDataMapper.StoreType);
  v18 = 1;
  return v18 & 1;
}

uint64_t sub_1B89F468C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;

  v12 = a4;
  v13 = v6;
  sub_1B89F06F4(a3, v12, a5, &v43);
  if (!v6)
  {

    return v43;
  }

  v42 = v6;
  v14 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A20, &qword_1B8A26468);
  sub_1B89F66BC();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v15 = v41;
  if (!sub_1B89EE954())
  {

LABEL_12:
    swift_willThrow();
LABEL_14:
  }

  if (a1 <= 0)
  {
    sub_1B89C353C();
    swift_allocError();
    *v26 = 6;
    swift_willThrow();

    goto LABEL_14;
  }

  if (qword_1EBA913F0 != -1)
  {
    swift_once();
  }

  v16 = sub_1B8A23BC4();
  __swift_project_value_buffer(v16, qword_1EBA95F20);
  v17 = v41;
  v18 = sub_1B8A23BA4();
  v19 = sub_1B8A24234();

  log = v18;
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    *(v20 + 4) = v17;
    *v21 = v17;
    v22 = v17;
    _os_log_impl(&dword_1B89A7000, log, v19, "Database is corrupted, attempting recovery after %@", v20, 0xCu);
    sub_1B89A8A78(v21, &qword_1EBA919E0, &qword_1B8A262D0);
    MEMORY[0x1B8CC5170](v21, -1, -1);
    MEMORY[0x1B8CC5170](v20, -1, -1);
  }

  v23 = (a2 + OBJC_IVAR____TtC8Stickers18CoreDataDataMapper_container);
  swift_beginAccess();
  v24 = sub_1B89BBFAC();
  if (v24)
  {
    loga = v17;
    v27 = type metadata accessor for StickerContainer(0);
    v36 = *&v23[v27[5]];
    [v36 lock];
    type metadata accessor for StickerContainer.LoadMethod();
    swift_initStackObject();
    sub_1B89BD1D8(v23, v23[v27[6]], &v39);
    v28 = v40;
    v29 = v27[7];
    v17 = loga;
    v30 = &v23[v29];
    v31 = *v30;
    v32 = *(v30 + 1);
    v33 = v30[16];
    *v30 = v39;
    v30[16] = v28;
    sub_1B89AF128(v31, v32, v33);
    [v36 unlock];
  }

  swift_endAccess();

  v34 = v12;
  v35 = sub_1B89F060C(a1 - 1, a2, a3, v34, a5);

  return v35;
}

unint64_t sub_1B89F4A3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91EE0, &qword_1B8A28218);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91ED8, &qword_1B8A28210);
    v7 = sub_1B8A24764();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1B89AF268(v9, v5, &qword_1EBA91EE0, &qword_1B8A28218);
      result = sub_1B8A0DF10(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1B8A23904();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B89F4C24(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91EE8, &qword_1B8A28220);
    v3 = sub_1B8A24764();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1B8A0DE98(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1B89F4D38(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91EB8, &unk_1B8A28100);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v65 - v5;
  v7 = sub_1B8A23AD4();
  v79 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v78 = &v65 - v11;
  v82 = sub_1B8A23904();
  v80 = *(v82 - 8);
  v12 = MEMORY[0x1EEE9AC00](v82);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v65 - v15;
  v17 = a2[2];

  sub_1B89AADD4(v17);

  v18 = [a1 uti];
  if (!v18)
  {
    goto LABEL_10;
  }

  v19 = v18;
  v77 = sub_1B8A23F24();

  v20 = [a1 identifier];
  if (!v20)
  {
    goto LABEL_9;
  }

  v21 = v20;
  sub_1B8A238D4();

  v22 = [a1 data];
  if (!v22)
  {
    (*(v80 + 8))(v16, v82);
LABEL_9:

LABEL_10:
    sub_1B89F6668();
    swift_allocError();
    *v35 = 2;
    swift_willThrow();

    return;
  }

  v76 = v14;
  v23 = v7;
  v74 = v10;
  v24 = v22;
  v25 = sub_1B8A237C4();
  v27 = v26;

  v28 = [a1 role];
  if (!v28)
  {
    (*(v80 + 8))(v16, v82);

    sub_1B89AFC38(v25, v27);
    goto LABEL_10;
  }

  v75 = v25;
  v29 = v28;
  v71 = sub_1B8A23F24();
  v72 = v30;

  v31 = v27 >> 62;
  v73 = v27;
  if ((v27 >> 62) > 1)
  {
    v33 = v23;
    if (v31 != 2)
    {
      v34 = 0;
      goto LABEL_19;
    }

    v32 = *(v75 + 16);
    v36 = *(v75 + 24);
    v34 = v36 - v32;
    v37 = v76;
    if (!__OFSUB__(v36, v32))
    {
      goto LABEL_20;
    }

    __break(1u);
  }

  else
  {
    v32 = v75;
    v33 = v23;
    if (!v31)
    {
      v34 = BYTE6(v27);
LABEL_19:
      v37 = v76;
      goto LABEL_20;
    }
  }

  v37 = v76;
  if (__OFSUB__(HIDWORD(v32), v32))
  {
    __break(1u);
    return;
  }

  v34 = HIDWORD(v32) - v32;
LABEL_20:
  v38 = [a1 byteCount];
  v39 = v74;
  if (v34 != v38)
  {

    sub_1B89F6668();
    swift_allocError();
    *v42 = 3;
    goto LABEL_24;
  }

  sub_1B8A23AE4();
  v40 = v79;
  if ((*(v79 + 48))(v6, 1, v33) == 1)
  {

    sub_1B89A8A78(v6, &qword_1EBA91EB8, &unk_1B8A28100);
    sub_1B89F6668();
    swift_allocError();
    *v41 = 1;
LABEL_24:
    swift_willThrow();

    sub_1B89AFC38(v75, v73);
    (*(v80 + 8))(v16, v82);
    return;
  }

  v43 = v33;
  v44 = v78;
  v45 = v43;
  (*(v40 + 32))();
  v46 = v40;
  v47 = *(v80 + 16);
  v70 = v80 + 16;
  v47(v37, v16, v82);
  v77 = *(v46 + 16);
  v67 = v46 + 16;
  v48 = v45;
  v77(v39, v44, v45);
  v69 = [a1 byteCount];
  [a1 size_w];
  v50 = v49;
  [a1 size_h];
  v52 = v51;
  v68 = [a1 isPreferred];
  v66 = [a1 version];
  v53 = type metadata accessor for Sticker.Representation(0);
  v54 = objc_allocWithZone(v53);
  v47(&v54[OBJC_IVAR___STKStickerRepresentation_identifier], v76, v82);
  v55 = &v54[OBJC_IVAR___STKStickerRepresentation_data];
  v56 = v75;
  v57 = v39;
  v58 = v73;
  *v55 = v75;
  v55[1] = v58;
  v77(&v54[OBJC_IVAR___STKStickerRepresentation_uti], v57, v48);
  *&v54[OBJC_IVAR___STKStickerRepresentation_byteCount] = v69;
  v59 = &v54[OBJC_IVAR___STKStickerRepresentation_size];
  *v59 = v50;
  v59[1] = v52;
  v60 = &v54[OBJC_IVAR___STKStickerRepresentation_role];
  v61 = v72;
  *v60 = v71;
  v60[1] = v61;
  v54[OBJC_IVAR___STKStickerRepresentation_isPreferred] = v68;
  *&v54[OBJC_IVAR___STKStickerRepresentation_version] = v66;
  sub_1B89B4A18(v56, v58);
  v81.receiver = v54;
  v81.super_class = v53;
  objc_msgSendSuper2(&v81, sel_init);

  sub_1B89AFC38(v56, v58);
  v62 = *(v79 + 8);
  v62(v57, v48);
  v63 = *(v80 + 8);
  v64 = v82;
  v63(v76, v82);
  v62(v78, v48);
  v63(v16, v64);
}

void *sub_1B89F5480(void *a1, __int128 *a2)
{
  v4 = sub_1B8A23904();
  v216 = *(v4 - 8);
  v217 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v184 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA92220, &unk_1B8A281A0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v184 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v184 - v11;
  v13 = a2[3];
  v232 = a2[2];
  v233 = v13;
  v234 = *(a2 + 64);
  v14 = a2[1];
  v230 = *a2;
  v231 = v14;
  v15 = [a1 type];
  v218 = v12;
  v215 = v6;
  if (v15)
  {
    if (v15 != 1)
    {
      sub_1B89A9028(&v230);
      sub_1B89F6668();
      v22 = swift_allocError();
      *v23 = 0;
      swift_willThrow();

      return v22;
    }

    v211 = 1;
  }

  else
  {
    v211 = 0;
  }

  v219 = a1;
  v16 = [a1 representations];
  v17 = [v16 allObjects];

  v18 = sub_1B8A240F4();
  v229[0] = MEMORY[0x1E69E7CC0];
  v19 = *(v18 + 16);
  v212 = v10;
  if (v19)
  {
    v20 = v18 + 32;
    v21 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1B89A9360(v20, v227);
      sub_1B89AB7C0(v227, v226);
      type metadata accessor for ManagedRepresentation();
      if ((swift_dynamicCast() & 1) != 0 && v225)
      {
        MEMORY[0x1B8CC3F50]();
        if (*((v229[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v229[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1B8A24114();
        }

        sub_1B8A24134();
        v21 = v229[0];
      }

      v20 += 32;
      --v19;
    }

    while (v19);
  }

  else
  {

    v21 = MEMORY[0x1E69E7CC0];
  }

  *&v227[0] = MEMORY[0x1E69E7CC0];
  if (v21 >> 62)
  {
    goto LABEL_35;
  }

  for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B8A24554())
  {
    v25 = 0;
    v221 = (v21 & 0xC000000000000001);
    v26 = v21 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v221)
      {
        v27 = MEMORY[0x1B8CC44E0](v25, v21);
      }

      else
      {
        if (v25 >= *(v26 + 16))
        {
          goto LABEL_34;
        }

        v27 = *(v21 + 8 * v25 + 32);
      }

      v28 = v27;
      v29 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      v30 = v21;
      v31 = [v27 version];
      if (qword_1EBA91590 != -1)
      {
        swift_once();
      }

      v32 = qword_1EBA91598 + OBJC_IVAR____TtC8Stickers10Versioning_currentStickerRepresentationVersionOverride;
      swift_beginAccess();
      if (*(v32 + 8) == 1)
      {
        if (v31 >= 2)
        {
          goto LABEL_31;
        }
      }

      else if (*v32 < v31)
      {
LABEL_31:

        goto LABEL_20;
      }

      sub_1B8A246B4();
      sub_1B8A246E4();
      sub_1B8A246F4();
      sub_1B8A246C4();
LABEL_20:
      v21 = v30;
      ++v25;
      if (v29 == i)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    ;
  }

LABEL_36:

  v33 = *&v227[0];
  if ((*&v227[0] & 0x8000000000000000) != 0 || (*&v227[0] & 0x4000000000000000) != 0)
  {
    goto LABEL_59;
  }

  v34 = *(*&v227[0] + 16);
  if (v34)
  {
LABEL_39:
    v35 = 0;
    v220 = v33;
    v221 = (v33 & 0xC000000000000001);
    v36 = 0x80000001B8A2A290;
    while (1)
    {
      if (v221)
      {
        v37 = MEMORY[0x1B8CC44E0](v35, v33);
      }

      else
      {
        if (v35 >= *(v33 + 16))
        {
          goto LABEL_58;
        }

        v37 = *(v33 + 8 * v35 + 32);
      }

      v38 = v37;
      v39 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        v34 = sub_1B8A24554();
        if (!v34)
        {
          goto LABEL_60;
        }

        goto LABEL_39;
      }

      v40 = [v37 role];
      if (!v40)
      {
        break;
      }

      v41 = v34;
      v42 = v36;
      v43 = v40;
      v44 = sub_1B8A23F24();
      v46 = v45;

      v36 = v42;
      if (v44 == 0xD000000000000020 && v42 == v46)
      {

        v34 = v41;
        v33 = v220;
      }

      else
      {
        v48 = sub_1B8A24954();

        v34 = v41;
        v33 = v220;
        if ((v48 & 1) == 0)
        {
          break;
        }
      }

      v49 = [v38 isPreferred];

      if (v49)
      {
        v210 = 1;
        goto LABEL_61;
      }

LABEL_41:
      ++v35;
      if (v39 == v34)
      {
        goto LABEL_60;
      }
    }

    goto LABEL_41;
  }

LABEL_60:
  v210 = 0;
LABEL_61:
  *&v227[0] = v231;
  sub_1B89A9148(v231);
  sub_1B89F2240(v227, v33);

  sub_1B89AADD4(*&v227[0]);

  *&v227[0] = sub_1B89CA00C(v50);
  v51 = v214;
  sub_1B89EFB98(v227);
  v221 = v51;
  if (!v51)
  {

    v52 = *&v227[0];
    if ((*&v227[0] & 0x8000000000000000) != 0 || (*&v227[0] & 0x4000000000000000) != 0)
    {
      goto LABEL_78;
    }

    v53 = *(*&v227[0] + 16);
    if (v53)
    {
      while (1)
      {
        v225 = MEMORY[0x1E69E7CC0];
        sub_1B8A246D4();
        if (v53 < 0)
        {
          break;
        }

        v54 = 0;
        while (1)
        {
          v55 = v54 + 1;
          if (__OFADD__(v54, 1))
          {
            break;
          }

          if ((v52 & 0xC000000000000001) != 0)
          {
            v56 = MEMORY[0x1B8CC44E0](v54, v52);
          }

          else
          {
            if (v54 >= *(v52 + 16))
            {
              goto LABEL_77;
            }

            v56 = *(v52 + 8 * v54 + 32);
          }

          v22 = v56;
          v227[2] = v232;
          v227[3] = v233;
          v228 = v234;
          v227[0] = v230;
          v227[1] = v231;
          sub_1B89A8FB4(&v230, v226);
          v57 = v221;
          sub_1B89F4D38(v22, v227);
          v221 = v57;
          if (v57)
          {

            sub_1B89A9028(&v230);

            return v22;
          }

          sub_1B8A246B4();
          sub_1B8A246E4();
          sub_1B8A246F4();
          sub_1B8A246C4();
          ++v54;
          if (v55 == v53)
          {
            sub_1B89A9028(&v230);

            v58 = v225;
            goto LABEL_80;
          }
        }

        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        v53 = sub_1B8A24554();
        if (!v53)
        {
          goto LABEL_79;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_79:
      sub_1B89A9028(&v230);

      v58 = MEMORY[0x1E69E7CC0];
LABEL_80:
      v59 = v219;
      v60 = [v219 attributionName];
      if (v60 || (v60 = [v59 attributionAdamID]) != 0 || (v60 = objc_msgSend(v59, sel_attributionBundleIdentifier)) != 0)
      {

        v61 = v219;
        v62 = [v219 attributionAdamID];
        v63 = [v61 attributionBundleIdentifier];
        if (v63)
        {
          v64 = v63;
          v220 = sub_1B8A23F24();
          v66 = v65;
        }

        else
        {
          v220 = 0;
          v66 = 0;
        }

        v67 = [v61 attributionName];
        if (v67)
        {
          v68 = v67;
          v69 = sub_1B8A23F24();
          v71 = v70;
        }

        else
        {
          v69 = 0;
          v71 = 0;
        }

        v72 = type metadata accessor for Sticker.AttributionInfo();
        v73 = objc_allocWithZone(v72);
        v74 = &v73[OBJC_IVAR___STKStickerAttributionInfo_bundleIdentifier];
        *v74 = 0;
        v74[1] = 0;
        *&v73[OBJC_IVAR___STKStickerAttributionInfo_adamID] = v62;
        swift_beginAccess();
        *v74 = v220;
        v74[1] = v66;
        v75 = &v73[OBJC_IVAR___STKStickerAttributionInfo_name];
        *v75 = v69;
        v75[1] = v71;
        v222.receiver = v73;
        v222.super_class = v72;
        v209 = objc_msgSendSuper2(&v222, sel_init);
      }

      else
      {
        v209 = 0;
      }

      v76 = v219;
      v77 = [v219 identifier];
      v78 = v216;
      if (v77)
      {
        v79 = v218;
        v80 = v77;
        sub_1B8A238D4();

        v81 = 0;
      }

      else
      {
        v81 = 1;
        v79 = v218;
      }

      v82 = *(v78 + 56);
      v82(v79, v81, 1, v217);
      v83 = [v76 name];
      v84 = sub_1B8A23F24();
      v207 = v85;
      v208 = v84;

      v86 = sub_1B8A052DC([v76 effect]);
      if (v87)
      {
        v88 = 0;
      }

      else
      {
        v88 = v86;
      }

      v206 = v88;
      [v76 byteCount];
      v89 = [v76 metadata];
      if (v89)
      {
        v90 = v89;
        v220 = sub_1B8A237C4();
        v214 = v91;
      }

      else
      {
        v220 = 0;
        v214 = 0xF000000000000000;
      }

      v92 = [v76 externalURI];
      v93 = sub_1B8A23F24();
      v204 = v94;
      v205 = v93;

      v95 = [v76 accessibilityName];
      if (v95)
      {
        v96 = v95;
        v97 = sub_1B8A23F24();
        v202 = v98;
        v203 = v97;
      }

      else
      {
        v202 = 0;
        v203 = 0;
      }

      v99 = [v76 searchText];
      if (v99)
      {
        v100 = v99;
        v101 = sub_1B8A23F24();
        v198 = v102;
        v199 = v101;
      }

      else
      {
        v198 = 0;
        v199 = 0;
      }

      [v76 creationDate];
      v104 = v103;
      [v76 lastUsedDate];
      v106 = v105;
      [v76 libraryIndex];
      v108 = v107;
      v109 = [v76 sanitizedPrompt];
      if (v109)
      {
        v110 = v109;
        v111 = sub_1B8A23F24();
        v196 = v112;
        v197 = v111;
      }

      else
      {
        v196 = 0;
        v197 = 0;
      }

      v113 = [v76 rewrittenPrompt];
      if (v113)
      {
        v114 = v113;
        v115 = sub_1B8A23F24();
        v194 = v116;
        v195 = v115;
      }

      else
      {
        v194 = 0;
        v195 = 0;
      }

      v117 = [v76 promptPrimaryLanguageIdentifier];
      v118 = v58;
      if (v117)
      {
        v119 = v117;
        v120 = sub_1B8A23F24();
        v192 = v121;
        v193 = v120;
      }

      else
      {
        v192 = 0;
        v193 = 0;
      }

      v191 = type metadata accessor for Sticker(0);
      v122 = objc_allocWithZone(v191);
      v123 = &v122[OBJC_IVAR___STKSticker_accessibilityName];
      *v123 = 0;
      v123[1] = 0;
      v124 = &v122[OBJC_IVAR___STKSticker_searchText];
      *v124 = 0;
      v124[1] = 0;
      v186 = v124;
      v125 = &v122[OBJC_IVAR___STKSticker_sanitizedPrompt];
      *v125 = 0;
      v125[1] = 0;
      v188 = v125;
      v126 = &v122[OBJC_IVAR___STKSticker_rewrittenPrompt];
      *v126 = 0;
      v126[1] = 0;
      v189 = v126;
      v127 = &v122[OBJC_IVAR___STKSticker_promptPrimaryLanguageIdentifier];
      *v127 = 0;
      v127[1] = 0;
      v190 = v127;
      v128 = &v122[OBJC_IVAR___STKSticker_metadata];
      *&v122[OBJC_IVAR___STKSticker_metadata] = xmmword_1B8A26F80;
      v129 = &v122[OBJC_IVAR___STKSticker_externalURI];
      *v129 = 0;
      v129[1] = 0;
      v200 = v129;
      v201 = OBJC_IVAR___STKSticker_attributionInfo;
      *&v122[OBJC_IVAR___STKSticker_attributionInfo] = 0;
      v130 = v217;
      v82(&v122[OBJC_IVAR___STKSticker__companionRecentUUID], 1, 1, v217);
      v213 = v122;
      v187 = OBJC_IVAR___STKSticker_animatedVariantIsPreferred;
      v122[OBJC_IVAR___STKSticker_animatedVariantIsPreferred] = 2;
      v131 = v212;
      sub_1B89AF268(v218, v212, &unk_1EBA92220, &unk_1B8A281A0);
      v132 = v216;
      v133 = *(v216 + 48);
      if (v133(v131, 1, v130) == 1)
      {
        v185 = v128;
        v134 = v215;
        sub_1B8A238F4();
        v135 = v133(v131, 1, v130);
        v136 = v134;
        v128 = v185;
        if (v135 != 1)
        {
          sub_1B89A8A78(v131, &unk_1EBA92220, &unk_1B8A281A0);
        }
      }

      else
      {
        v136 = v215;
        (*(v132 + 32))(v215, v131, v130);
      }

      v137 = v213;
      v213[OBJC_IVAR___STKSticker_type] = v211;
      (*(v132 + 16))(&v137[OBJC_IVAR___STKSticker_identifier], v136, v130);
      v138 = v118;
      *&v137[OBJC_IVAR___STKSticker_representations] = v118;
      swift_beginAccess();
      v139 = v202;
      *v123 = v203;
      v123[1] = v139;

      v140 = &v137[OBJC_IVAR___STKSticker_name];
      v141 = v207;
      *v140 = v208;
      v140[1] = v141;
      *&v137[OBJC_IVAR___STKSticker_effect] = v206;
      swift_beginAccess();
      v142 = v136;
      v143 = *v128;
      v144 = v128[1];
      v145 = v220;
      v146 = v214;
      *v128 = v220;
      v128[1] = v146;
      sub_1B89C3C44(v145, v146);
      sub_1B89B4A04(v143, v144);
      v147 = v200;
      swift_beginAccess();
      v148 = v204;
      *v147 = v205;
      v147[1] = v148;

      v149 = v201;
      swift_beginAccess();
      v150 = *&v137[v149];
      v151 = v209;
      *&v137[v149] = v209;
      v152 = v151;

      v153 = v142;
      if (v118 >> 62)
      {
        goto LABEL_138;
      }

      v154 = *((v118 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v154)
      {
        goto LABEL_139;
      }

      while (1)
      {
        v224 = MEMORY[0x1E69E7CC0];
        sub_1B8A0394C(0, v154 & ~(v154 >> 63), 0);
        if (v154 < 0)
        {
          break;
        }

        v212 = v152;
        v155 = v224;
        v156 = v138;
        if ((v138 & 0xC000000000000001) != 0)
        {
          v157 = 0;
          v138 = &OBJC_IVAR___STKStickerRepresentation_byteCount;
          do
          {
            v158 = MEMORY[0x1B8CC44E0](v157, v156);
            v159 = OBJC_IVAR___STKStickerRepresentation_byteCount;
            swift_beginAccess();
            v160 = *(v158 + v159);
            swift_unknownObjectRelease();
            v224 = v155;
            v162 = v155[2];
            v161 = v155[3];
            if (v162 >= v161 >> 1)
            {
              sub_1B8A0394C((v161 > 1), v162 + 1, 1);
              v155 = v224;
            }

            ++v157;
            v155[2] = v162 + 1;
            v155[v162 + 4] = v160;
            v156 = v118;
          }

          while (v154 != v157);
        }

        else
        {
          v163 = 32;
          v138 = &OBJC_IVAR___STKStickerRepresentation_byteCount;
          do
          {
            v164 = *(v156 + v163);
            v165 = OBJC_IVAR___STKStickerRepresentation_byteCount;
            swift_beginAccess();
            v166 = *(v164 + v165);
            v224 = v155;
            v168 = v155[2];
            v167 = v155[3];
            if (v168 >= v167 >> 1)
            {
              sub_1B8A0394C((v167 > 1), v168 + 1, 1);
              v155 = v224;
            }

            v155[2] = v168 + 1;
            v155[v168 + 4] = v166;
            v163 += 8;
            --v154;
            v156 = v118;
          }

          while (v154);
        }

        v153 = v215;
        v152 = v212;
        v169 = v155[2];
        if (!v169)
        {
LABEL_140:
          v170 = 0;
LABEL_141:
          (*(v216 + 8))(v153, v217);

          v174 = v213;
          *&v213[OBJC_IVAR___STKSticker_byteCount] = v170;
          *&v174[OBJC_IVAR___STKSticker_creationDate] = v104;
          *&v174[OBJC_IVAR___STKSticker_lastUsedDate] = v106;
          *&v174[OBJC_IVAR___STKSticker_libraryIndex] = v108;
          v175 = v186;
          swift_beginAccess();
          v176 = v198;
          *v175 = v199;
          v175[1] = v176;

          v177 = v188;
          swift_beginAccess();
          v178 = v196;
          *v177 = v197;
          v177[1] = v178;

          v179 = v189;
          swift_beginAccess();
          v180 = v194;
          *v179 = v195;
          v179[1] = v180;

          v181 = v190;
          swift_beginAccess();
          v182 = v192;
          *v181 = v193;
          v181[1] = v182;

          v174[v187] = v210;
          v223.receiver = v174;
          v223.super_class = v191;
          v22 = objc_msgSendSuper2(&v223, sel_init);

          sub_1B89B4A04(v220, v214);
          sub_1B89A8A78(v218, &unk_1EBA92220, &unk_1B8A281A0);
          return v22;
        }

        while (1)
        {
          v170 = 0;
          v171 = v155 + 4;
          while (1)
          {
            v172 = *v171++;
            v173 = __OFADD__(v170, v172);
            v170 += v172;
            if (v173)
            {
              break;
            }

            if (!--v169)
            {
              goto LABEL_141;
            }
          }

          __break(1u);
LABEL_138:
          v154 = sub_1B8A24554();
          if (v154)
          {
            break;
          }

LABEL_139:

          v155 = MEMORY[0x1E69E7CC0];
          v169 = *(MEMORY[0x1E69E7CC0] + 16);
          if (!v169)
          {
            goto LABEL_140;
          }
        }
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1B89F6668()
{
  result = qword_1EBA91EC8;
  if (!qword_1EBA91EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91EC8);
  }

  return result;
}

unint64_t sub_1B89F66BC()
{
  result = qword_1EBA91ED0;
  if (!qword_1EBA91ED0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBA91ED0);
  }

  return result;
}

uint64_t sub_1B89F6730@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = 0;
  return result;
}

uint64_t sub_1B89F6794(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s14descr1F373DB19C5FetchCMa(uint64_t a1)
{
  result = qword_1EBA915C8;
  if (!qword_1EBA915C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t XPCDataMapper.__allocating_init(proxier:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1B89D2F5C(a1, v2 + 16);
  return v2;
}

void *sub_1B89F68D0(void *a1)
{
  v3 = v1;
  v24[0] = a1;
  sub_1B8A23654();
  swift_allocObject();
  v4 = sub_1B8A23644();
  type metadata accessor for Sticker(0);
  sub_1B89B4E2C(&qword_1EBA911E0, &protocol conformance descriptor for Sticker);
  v5 = sub_1B8A23634();
  if (v2)
  {

    sub_1B89F7804();
    swift_allocError();
    *v7 = xmmword_1B8A28250;
    *(v7 + 16) = 0;
    swift_willThrow();
  }

  else
  {
    v8 = v5;
    v9 = v6;
    v23 = 0;

    v11 = v3[5];
    v10 = v3[6];
    v4 = __swift_project_boxed_opaque_existential_0(v3 + 2, v11);
    v26 = &v23;
    MEMORY[0x1EEE9AC00](v4);
    v22[2] = v8;
    v22[3] = v9;
    v12 = *(v10 + 8);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91F08, &unk_1B8A28290);
    v14 = v23;
    v12(v24, sub_1B89F7864, v22, v13, v11, v10);
    if (v14)
    {
      sub_1B89AFC38(v8, v9);
    }

    else
    {
      v15 = v8;
      v16 = v24[0];
      v17 = v24[1];
      v18 = v25;
      if (v25)
      {
        v19 = v24[0];
        v24[0] = v16;
        v20 = v16;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A20, &qword_1B8A26468);
        swift_willThrowTypedImpl();
        sub_1B89AFC38(v15, v9);
        sub_1B89B4AA8(v16, v17, v18);
        sub_1B89F78A4(v16);
      }

      else
      {
        sub_1B8A23624();
        swift_allocObject();
        sub_1B8A23614();
        sub_1B89B4E2C(&qword_1EBA914E0, &protocol conformance descriptor for Sticker);
        sub_1B8A23604();

        v4 = v24[0];
        sub_1B89AFC38(v15, v9);
        sub_1B89B4AA8(v16, v17, 0);
      }
    }
  }

  return v4;
}

void *sub_1B89F6BBC(uint64_t a1)
{
  v4 = v1[5];
  v5 = v1[6];
  __swift_project_boxed_opaque_existential_0(v1 + 2, v4);
  v9[2] = a1;
  v6 = *(v5 + 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91F10, &qword_1B8A282A0);
  result = v6(&v10, sub_1B89F78B0, v9, v7, v4, v5);
  if (!v2 && (v11 & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A20, &qword_1B8A26468);
    return swift_willThrowTypedImpl();
  }

  return result;
}

uint64_t sub_1B89F6CA4@<X0>(void *a1@<X0>, uint64_t a3@<X8>)
{
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = -1;
  sub_1B8A23904();
  v6 = sub_1B8A240E4();
  v11[4] = sub_1B89F7C1C;
  v11[5] = v5;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1B89C4BE4;
  v11[3] = &block_descriptor_21;
  v7 = _Block_copy(v11);

  [a1 removeStickersWithIdentifiers:v6 withReply:v7];
  _Block_release(v7);

  swift_beginAccess();
  v8 = *(v5 + 16);
  *a3 = v8;
  v9 = *(v5 + 24);
  *(a3 + 8) = v9;
  sub_1B89ABE70(v8, v9);
}

void *sub_1B89F6E24()
{
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v2);
  v4 = *(v3 + 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91F10, &qword_1B8A282A0);
  result = v4(&v7, sub_1B89F6F04, 0, v5, v2, v3);
  if (!v1 && (v8 & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A20, &qword_1B8A26468);
    return swift_willThrowTypedImpl();
  }

  return result;
}

id sub_1B89F6F04@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = [a1 reindexAllStickers];
  *a2 = 0;
  *(a2 + 8) = 0;
  return result;
}

void sub_1B89F6F64(void *a1, uint64_t a2)
{
  v21 = a1;
  sub_1B8A23654();
  swift_allocObject();
  sub_1B8A23644();
  type metadata accessor for Sticker(0);
  sub_1B89B4E2C(&qword_1EBA911E0, &protocol conformance descriptor for Sticker);
  v5 = sub_1B8A23634();
  if (v3)
  {

    sub_1B89F7804();
    swift_allocError();
    *v7 = xmmword_1B8A28250;
    *(v7 + 16) = 0;
    swift_willThrow();
  }

  else
  {
    v8 = v5;
    v9 = v6;
    v20 = 0;

    v10 = v2[5];
    v11 = v2[6];
    v12 = __swift_project_boxed_opaque_existential_0(v2 + 2, v10);
    v23 = &v19;
    MEMORY[0x1EEE9AC00](v12);
    v18[2] = v8;
    v18[3] = v9;
    v13 = *(v11 + 8);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91F10, &qword_1B8A282A0);
    v15 = v20;
    v13(&v21, a2, v18, v14, v10, v11);
    if (v15 || (v22 & 1) == 0)
    {
      sub_1B89AFC38(v8, v9);
    }

    else
    {
      v16 = v21;
      v17 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A20, &qword_1B8A26468);
      swift_willThrowTypedImpl();
      sub_1B89AFC38(v8, v9);
      sub_1B89AA414(v16, 1);
    }
  }
}

uint64_t sub_1B89F7194@<X0>(void *a1@<X0>, uint64_t a4@<X3>, uint64_t a5@<X4>, SEL *a6@<X5>, uint64_t a7@<X8>)
{
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = -1;
  v13 = sub_1B8A237A4();
  v18[4] = a4;
  v18[5] = v12;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = sub_1B89C4BE4;
  v18[3] = a5;
  v14 = _Block_copy(v18);

  [a1 *a6];
  _Block_release(v14);

  swift_beginAccess();
  v15 = *(v12 + 16);
  *a7 = v15;
  v16 = *(v12 + 24);
  *(a7 + 8) = v16;
  sub_1B89ABE70(v15, v16);
}

void sub_1B89F72DC(void *a1, uint64_t a2)
{
  if (a1)
  {
    swift_beginAccess();
    v4 = *(a2 + 16);
    *(a2 + 16) = a1;
    v5 = *(a2 + 24);
    *(a2 + 24) = 1;
    v6 = a1;
    v7 = v4;
    v8 = v5;
  }

  else
  {
    swift_beginAccess();
    v7 = *(a2 + 16);
    *(a2 + 16) = 0;
    v8 = *(a2 + 24);
    *(a2 + 24) = 0;
  }

  sub_1B89AFC1C(v7, v8);
}

uint64_t XPCDataMapper.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return swift_deallocClassInstance();
}

void *sub_1B89F748C()
{
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_0((*v0 + 16), v2);
  v4 = *(v3 + 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91F10, &qword_1B8A282A0);
  result = v4(&v7, sub_1B89F6F04, 0, v5, v2, v3);
  if (!v1 && (v8 & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A20, &qword_1B8A26468);
    return swift_willThrowTypedImpl();
  }

  return result;
}

uint64_t XPCDataMapperError.errorDescription.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (!*(v0 + 16))
  {
    sub_1B8A24634();

    MEMORY[0x1B8CC3E20](v1, v2);
    v3 = "' could not be encoded";
    goto LABEL_5;
  }

  if (*(v0 + 16) == 1)
  {
    sub_1B8A24634();

    MEMORY[0x1B8CC3E20](v1, v2);
    v3 = "' could not be decoded";
LABEL_5:
    MEMORY[0x1B8CC3E20](0xD000000000000016, (v3 - 32) | 0x8000000000000000);
    return 0x6574656D61726150;
  }

  v5 = 0x2064696C61766E49;
  if (v1 ^ 2 | v2)
  {
    v6 = 0x6C706D6920746F4ELL;
  }

  else
  {
    v6 = 0xD000000000000019;
  }

  if (!(v1 | v2))
  {
    v5 = 0xD000000000000010;
  }

  if (v1 <= 1)
  {
    return v5;
  }

  else
  {
    return v6;
  }
}

id sub_1B89F7730(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = a1;

  return a1;
}

void sub_1B89F7784(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

unint64_t sub_1B89F7804()
{
  result = qword_1EBA91EF8;
  if (!qword_1EBA91EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91EF8);
  }

  return result;
}

void sub_1B89F7858(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t get_enum_tag_for_layout_string_8Stickers18XPCDataMapperErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1B89F7B40(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B89F7B88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B89F7BCC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

id ManagedRepresentation.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedRepresentation.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedRepresentation();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedRepresentation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedRepresentation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B89F7DF4(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = type metadata accessor for Sticker.Representation(0);
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x1B8CC44E0](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x1B8CC44E0](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_1B8A24404();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_1B8A24404();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_1B8A24554();
  }

  result = sub_1B8A24554();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

char *Sticker.__allocating_init(type:identifier:representations:name:effect:byteCount:metadata:externalURI:accessibilityName:attributionInfo:searchText:creationDate:lastUsedDate:libraryIndex:sanitizedPrompt:rewrittenPrompt:promptPrimaryLanguageIdentifier:prefersAnimation:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, void *a12, unint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, unint64_t a28, char a29)
{
  v125 = a5;
  v126 = a6;
  v124 = a4;
  v129 = a3;
  v135 = a1;
  v122 = a15;
  v121 = a14;
  v127 = a13;
  v128 = a12;
  v134 = a11;
  v133 = a10;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA92220, &unk_1B8A281A0);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v34 = &v114 - v33;
  v35 = sub_1B8A23904();
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v114 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = v29;
  v39 = objc_allocWithZone(v29);
  v40 = &v39[OBJC_IVAR___STKSticker_accessibilityName];
  *v40 = 0;
  v40[1] = 0;
  v41 = &v39[OBJC_IVAR___STKSticker_searchText];
  *v41 = 0;
  *(v41 + 1) = 0;
  v117 = v41;
  v42 = &v39[OBJC_IVAR___STKSticker_sanitizedPrompt];
  *v42 = 0;
  *(v42 + 1) = 0;
  v118 = v42;
  v43 = &v39[OBJC_IVAR___STKSticker_rewrittenPrompt];
  *v43 = 0;
  *(v43 + 1) = 0;
  v119 = v43;
  v44 = &v39[OBJC_IVAR___STKSticker_promptPrimaryLanguageIdentifier];
  *v44 = 0;
  *(v44 + 1) = 0;
  v120 = v44;
  v45 = &v39[OBJC_IVAR___STKSticker_metadata];
  *&v39[OBJC_IVAR___STKSticker_metadata] = xmmword_1B8A26F80;
  v46 = &v39[OBJC_IVAR___STKSticker_externalURI];
  *v46 = 0;
  v46[1] = 0;
  v123 = OBJC_IVAR___STKSticker_attributionInfo;
  *&v39[OBJC_IVAR___STKSticker_attributionInfo] = 0;
  LODWORD(v132) = *v135;
  (*(v36 + 56))(&v39[OBJC_IVAR___STKSticker__companionRecentUUID], 1, 1, v35);
  v135 = v39;
  v114 = OBJC_IVAR___STKSticker_animatedVariantIsPreferred;
  v39[OBJC_IVAR___STKSticker_animatedVariantIsPreferred] = 2;
  v116 = a2;
  sub_1B89AF268(a2, v34, &unk_1EBA92220, &unk_1B8A281A0);
  v47 = *(v36 + 48);
  if (v47(v34, 1, v35) == 1)
  {
    sub_1B8A238F4();
    v48 = v47(v34, 1, v35);
    v49 = v35;
    v50 = v36;
    if (v48 != 1)
    {
      sub_1B89A8A78(v34, &unk_1EBA92220, &unk_1B8A281A0);
      v49 = v35;
      v50 = v36;
    }
  }

  else
  {
    (*(v36 + 32))(v38, v34, v35);
    v49 = v35;
    v50 = v36;
  }

  v51 = v135;
  v135[OBJC_IVAR___STKSticker_type] = v132;
  v130 = v50;
  v131 = v49;
  v52 = *(v50 + 16);
  v132 = v38;
  v52(&v51[OBJC_IVAR___STKSticker_identifier], v38);
  v53 = v129;
  *&v51[OBJC_IVAR___STKSticker_representations] = v129;
  swift_beginAccess();
  v54 = v122;
  *v40 = v121;
  v40[1] = v54;

  v55 = &v51[OBJC_IVAR___STKSticker_name];
  v56 = v125;
  *v55 = v124;
  v55[1] = v56;
  *&v51[OBJC_IVAR___STKSticker_effect] = v126;
  swift_beginAccess();
  v57 = *v45;
  v58 = v45[1];
  v59 = v133;
  v60 = v134;
  *v45 = v133;
  v45[1] = v60;
  sub_1B89C3C44(v59, v60);
  sub_1B89B4A04(v57, v58);
  v62 = v127;
  v61 = v128;
  if (!v127)
  {
    v63 = sub_1B8A238A4();
    v138 = 0xD00000000000001BLL;
    v139 = 0x80000001B8A2A9A0;
    MEMORY[0x1B8CC3E20](v63);

    v61 = v138;
    v62 = v139;
  }

  swift_beginAccess();
  *v46 = v61;
  v46[1] = v62;

  v64 = v123;
  swift_beginAccess();
  v65 = *&v51[v64];
  *&v51[v64] = a16;
  v66 = a16;

  v67 = (v53 >> 62);
  if (v53 >> 62)
  {
    goto LABEL_62;
  }

  for (i = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1B8A24554())
  {
    v69 = MEMORY[0x1E69E7CC0];
    v128 = v66;
    if (i)
    {
      v137 = MEMORY[0x1E69E7CC0];
      result = sub_1B8A0394C(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
        return result;
      }

      v71 = v67;
      v69 = v137;
      if ((v53 & 0xC000000000000001) != 0)
      {
        for (j = 0; j != i; ++j)
        {
          v73 = MEMORY[0x1B8CC44E0](j, v53);
          v74 = OBJC_IVAR___STKStickerRepresentation_byteCount;
          swift_beginAccess();
          v75 = *(v73 + v74);
          swift_unknownObjectRelease();
          v137 = v69;
          v77 = v69[2];
          v76 = v69[3];
          if (v77 >= v76 >> 1)
          {
            sub_1B8A0394C((v76 > 1), v77 + 1, 1);
            v69 = v137;
          }

          v69[2] = v77 + 1;
          v69[v77 + 4] = v75;
        }
      }

      else
      {
        v78 = (v53 + 32);
        do
        {
          v79 = *v78;
          v80 = OBJC_IVAR___STKStickerRepresentation_byteCount;
          swift_beginAccess();
          v81 = *(v79 + v80);
          v137 = v69;
          v83 = v69[2];
          v82 = v69[3];
          if (v83 >= v82 >> 1)
          {
            sub_1B8A0394C((v82 > 1), v83 + 1, 1);
            v69 = v137;
          }

          v69[2] = v83 + 1;
          v69[v83 + 4] = v81;
          ++v78;
          --i;
        }

        while (i);
      }

      v67 = v71;
    }

    v84 = v69[2];
    if (!v84)
    {
      break;
    }

    v66 = 0;
    v85 = v69 + 4;
    while (1)
    {
      v86 = *v85++;
      v87 = __OFADD__(v66, v86);
      v66 += v86;
      if (v87)
      {
        break;
      }

      if (!--v84)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    ;
  }

  v66 = 0;
LABEL_28:

  v88 = v135;
  *&v135[OBJC_IVAR___STKSticker_byteCount] = v66;
  if (a20)
  {
    v89 = [objc_opt_self() currentEnvironment];
    v90 = [v89 timeProvider];

    [v90 timestamp];
    v92 = v91;
    v93 = v135;
    swift_unknownObjectRelease();
  }

  else
  {
    v93 = v88;
    v92 = a19;
  }

  v94 = a29;
  v127 = a28;
  v126 = a27;
  v125 = a26;
  v124 = a25;
  v123 = a24;
  *&v93[OBJC_IVAR___STKSticker_creationDate] = v92;
  if (a22)
  {
    v95 = [objc_opt_self() currentEnvironment];
    v96 = [v95 timeProvider];

    [v96 timestamp];
    v98 = v97;
    v93 = v135;
    swift_unknownObjectRelease();
  }

  else
  {
    v98 = a21;
  }

  v99 = v120;
  *&v93[OBJC_IVAR___STKSticker_lastUsedDate] = v98;
  *&v93[OBJC_IVAR___STKSticker_libraryIndex] = a7;
  v100 = v117;
  swift_beginAccess();
  *v100 = a17;
  *(v100 + 1) = a18;

  v101 = v118;
  swift_beginAccess();
  v102 = v123;
  *v101 = a23;
  *(v101 + 1) = v102;

  v103 = v119;
  swift_beginAccess();
  v104 = v125;
  *v103 = v124;
  v103[1] = v104;

  swift_beginAccess();
  v105 = v127;
  *v99 = v126;
  v99[1] = v105;

  if (a29 == 2)
  {
    if (v67)
    {
      v106 = sub_1B8A24554();
    }

    else
    {
      v106 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v106)
    {
      v66 = 0;
      while (1)
      {
        if ((v53 & 0xC000000000000001) != 0)
        {
          v108 = MEMORY[0x1B8CC44E0](v66, v53);
        }

        else
        {
          if (v66 >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_61;
          }

          v108 = *(v53 + 8 * v66 + 32);
        }

        v109 = v108;
        v67 = (v66 + 1);
        if (__OFADD__(v66, 1))
        {
          goto LABEL_60;
        }

        v110 = &v108[OBJC_IVAR___STKStickerRepresentation_role];
        swift_beginAccess();
        v111 = *v110 == 0xD000000000000020 && 0x80000001B8A2A290 == *(v110 + 1);
        if (v111 || (sub_1B8A24954() & 1) != 0)
        {
          v107 = OBJC_IVAR___STKStickerRepresentation_isPreferred;
          swift_beginAccess();
          LODWORD(v107) = v109[v107];

          if (v107 == 1)
          {
            (*(v130 + 8))(v132, v131);

            v94 = 1;
            goto LABEL_57;
          }
        }

        else
        {
        }

        ++v66;
        if (v67 == v106)
        {

          (*(v130 + 8))(v132, v131);
          v94 = 0;
LABEL_57:
          v93 = v135;
          goto LABEL_58;
        }
      }
    }

    (*(v130 + 8))(v132, v131);

    v94 = 2;
  }

  else
  {
    (*(v130 + 8))(v132, v131);
  }

LABEL_58:
  v112 = v115;
  v93[v114] = v94;
  v136.receiver = v93;
  v136.super_class = v112;
  v113 = objc_msgSendSuper2(&v136, sel_init);

  sub_1B89B4A04(v133, v134);
  sub_1B89A8A78(v116, &unk_1EBA92220, &unk_1B8A281A0);
  return v113;
}

char *Sticker.__allocating_init(type:representations:name:metadata:externalURI:accessibilityName:attributionInfo:searchText:sanitizedPrompt:rewrittenPrompt:promptPrimaryLanguageIdentifier:)(unsigned __int8 *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unint64_t a19)
{
  v103 = a8;
  v102 = a7;
  v107 = a5;
  v100 = a4;
  v99 = a3;
  v89 = sub_1B8A23934();
  v88 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v87 = &v85[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = sub_1B8A23904();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v85[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = *a1;
  v104 = type metadata accessor for Sticker(0);
  v28 = objc_allocWithZone(v104);
  v29 = &v28[OBJC_IVAR___STKSticker_accessibilityName];
  *v29 = 0;
  v29[1] = 0;
  v101 = v29;
  v30 = &v28[OBJC_IVAR___STKSticker_searchText];
  *v30 = 0;
  v30[1] = 0;
  v31 = &v28[OBJC_IVAR___STKSticker_sanitizedPrompt];
  *v31 = 0;
  v31[1] = 0;
  v32 = &v28[OBJC_IVAR___STKSticker_rewrittenPrompt];
  *v32 = 0;
  v32[1] = 0;
  v33 = &v28[OBJC_IVAR___STKSticker_promptPrimaryLanguageIdentifier];
  *v33 = 0;
  v33[1] = 0;
  v34 = &v28[OBJC_IVAR___STKSticker_metadata];
  *&v28[OBJC_IVAR___STKSticker_metadata] = xmmword_1B8A26F80;
  v35 = &v28[OBJC_IVAR___STKSticker_externalURI];
  *v35 = 0;
  v35[1] = 0;
  v97 = v35;
  v98 = OBJC_IVAR___STKSticker_attributionInfo;
  *&v28[OBJC_IVAR___STKSticker_attributionInfo] = 0;
  (*(v24 + 56))(&v28[OBJC_IVAR___STKSticker__companionRecentUUID], 1, 1, v23);
  v28[OBJC_IVAR___STKSticker_animatedVariantIsPreferred] = 2;
  sub_1B8A238F4();
  v86 = v27;
  v28[OBJC_IVAR___STKSticker_type] = v27;
  v106 = v24;
  (*(v24 + 16))(&v28[OBJC_IVAR___STKSticker_identifier], v26, v23);
  *&v28[OBJC_IVAR___STKSticker_representations] = a2;
  if (a2 >> 62)
  {
    goto LABEL_29;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1B8A24554())
  {
    v105 = v26;
    v37 = MEMORY[0x1E69E7CC0];
    if (i)
    {
      v110 = MEMORY[0x1E69E7CC0];

      result = sub_1B8A0394C(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
        return result;
      }

      v95 = v23;
      v96 = a6;
      v37 = v110;
      if ((a2 & 0xC000000000000001) != 0)
      {
        for (j = 0; j != i; ++j)
        {
          v40 = MEMORY[0x1B8CC44E0](j, a2);
          v41 = OBJC_IVAR___STKStickerRepresentation_byteCount;
          swift_beginAccess();
          v42 = *(v40 + v41);
          swift_unknownObjectRelease();
          v110 = v37;
          v26 = v37[2];
          v43 = v37[3];
          if (v26 >= v43 >> 1)
          {
            sub_1B8A0394C((v43 > 1), v26 + 1, 1);
            v37 = v110;
          }

          v37[2] = v26 + 1;
          v37[v26 + 4] = v42;
        }
      }

      else
      {
        v44 = 32;
        do
        {
          v45 = *(a2 + v44);
          v46 = OBJC_IVAR___STKStickerRepresentation_byteCount;
          swift_beginAccess();
          v47 = *(v45 + v46);
          v110 = v37;
          v26 = v37[2];
          v48 = v37[3];
          if (v26 >= v48 >> 1)
          {
            sub_1B8A0394C((v48 > 1), v26 + 1, 1);
            v37 = v110;
          }

          v37[2] = v26 + 1;
          v37[v26 + 4] = v47;
          v44 += 8;
          --i;
        }

        while (i);
      }

      a6 = v96;
      v23 = v95;
    }

    v49 = v37[2];
    if (!v49)
    {
      break;
    }

    v50 = 0;
    v51 = v37 + 4;
    while (1)
    {
      v52 = *v51++;
      v53 = __OFADD__(v50, v52);
      v50 += v52;
      if (v53)
      {
        break;
      }

      if (!--v49)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_29:
    ;
  }

  v50 = 0;
LABEL_22:
  v96 = a19;
  v95 = a17;
  v94 = a16;
  v93 = a15;
  v92 = a14;
  v91 = a13;
  v90 = a12;

  *&v28[OBJC_IVAR___STKSticker_byteCount] = v50;
  v54 = &v28[OBJC_IVAR___STKSticker_name];
  v55 = v100;
  *v54 = v99;
  v54[1] = v55;
  *&v28[OBJC_IVAR___STKSticker_effect] = 0;
  swift_beginAccess();
  v56 = *v34;
  v57 = v34[1];
  v58 = v107;
  *v34 = v107;
  v34[1] = a6;
  sub_1B89C3C44(v58, a6);
  sub_1B89B4A04(v56, v57);
  v59 = v105;
  v60 = v103;
  v61 = v102;
  if (!v103)
  {
    v109[0] = v86;
    v61 = sub_1B8A04AC4(v109);
    v60 = v62;
  }

  v63 = v97;
  swift_beginAccess();
  *v63 = v61;
  v63[1] = v60;

  v64 = v101;
  swift_beginAccess();
  *v64 = a9;
  v64[1] = a10;

  v65 = v98;
  swift_beginAccess();
  v66 = *&v28[v65];
  *&v28[v65] = a11;
  v67 = a11;

  v68 = [objc_opt_self() currentEnvironment];
  v69 = [v68 timeProvider];

  [v69 timestamp];
  v71 = v70;
  swift_unknownObjectRelease();
  *&v28[OBJC_IVAR___STKSticker_creationDate] = v71;
  *&v28[OBJC_IVAR___STKSticker_lastUsedDate] = v71;
  *&v28[OBJC_IVAR___STKSticker_libraryIndex] = 0;
  v108.receiver = v28;
  v108.super_class = v104;
  v72 = objc_msgSendSuper2(&v108, sel_init);
  sub_1B89FE9A8();
  (*(v106 + 8))(v59, v23);
  v73 = &v72[OBJC_IVAR___STKSticker_searchText];
  swift_beginAccess();
  v74 = v91;
  *v73 = v90;
  v73[1] = v74;
  v75 = v72;

  v76 = &v75[OBJC_IVAR___STKSticker_promptPrimaryLanguageIdentifier];
  swift_beginAccess();
  *v76 = 0;
  *(v76 + 1) = 0;

  v77 = &v75[OBJC_IVAR___STKSticker_sanitizedPrompt];
  swift_beginAccess();
  v78 = v93;
  *v77 = v92;
  v77[1] = v78;

  v79 = &v75[OBJC_IVAR___STKSticker_rewrittenPrompt];
  swift_beginAccess();
  v80 = v95;
  *v79 = v94;
  v79[1] = v80;

  v81 = v96;
  if (v96)
  {

    sub_1B89B4A04(v107, a6);
  }

  else
  {
    v83 = v87;
    sub_1B8A23924();
    a18 = sub_1B8A23914();
    v81 = v84;

    sub_1B89B4A04(v107, a6);
    (*(v88 + 8))(v83, v89);
  }

  *v76 = a18;
  *(v76 + 1) = v81;

  return v75;
}

Stickers::Sticker::StickerType_optional __swiftcall Sticker.StickerType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1B89F931C(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x1B8CC44E0](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_1B8A24554();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_1B89F944C()
{
  v0 = sub_1B8A23BC4();
  __swift_allocate_value_buffer(v0, qword_1EBA911F0);
  __swift_project_value_buffer(v0, qword_1EBA911F0);
  return sub_1B8A23BB4();
}

id sub_1B89F94E0(uint64_t a1)
{
  v2 = sub_1B8A23904();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1 + OBJC_IVAR___STKSticker_identifier, v2);
  v6 = sub_1B8A238B4();
  (*(v3 + 8))(v5, v2);

  return v6;
}

uint64_t _s8Stickers7StickerC10identifier10Foundation4UUIDVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___STKSticker_identifier;
  v4 = sub_1B8A23904();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1B89F9794(uint64_t a1)
{
  v3 = OBJC_IVAR___STKSticker_representations;
  swift_beginAccess();
  *(v1 + v3) = a1;

  sub_1B89FE9A8();
  v4 = *(v1 + v3);
  if (v4 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1B8A24554())
  {

    if (!i)
    {
      break;
    }

    v13 = v1;
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1B8CC44E0](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v8 = *(v4 + 8 * v6 + 32);
      }

      v9 = v8;
      v1 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = &v8[OBJC_IVAR___STKStickerRepresentation_role];
      swift_beginAccess();
      v11 = *v10 == 0xD000000000000020 && 0x80000001B8A2A290 == *(v10 + 1);
      if (v11 || (sub_1B8A24954() & 1) != 0)
      {
        v7 = OBJC_IVAR___STKStickerRepresentation_isPreferred;
        swift_beginAccess();
        LOBYTE(v7) = v9[v7];

        if (v7)
        {
          LOBYTE(i) = 1;
          goto LABEL_20;
        }
      }

      else
      {
      }

      ++v6;
      if (v1 == i)
      {
        LOBYTE(i) = 0;
LABEL_20:
        v1 = v13;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

LABEL_21:

  *(v1 + OBJC_IVAR___STKSticker_animatedVariantIsPreferred) = i;
  return result;
}

uint64_t (*sub_1B89F995C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR___STKSticker_representations;
  *(v3 + 48) = v1;
  *(v3 + 56) = v4;
  swift_beginAccess();
  return sub_1B89F99E4;
}

void sub_1B89F99E4(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[6];
    v5 = v3[7];
    sub_1B89FE9A8();
    v6 = *(v4 + v5);
    if (v6 >> 62)
    {
      goto LABEL_27;
    }

    for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1B8A24554())
    {

      if (!i)
      {
        break;
      }

      v8 = 0;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x1B8CC44E0](v8, v6);
        }

        else
        {
          if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_26;
          }

          v10 = *(v6 + 8 * v8 + 32);
        }

        v11 = v10;
        v12 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        v13 = &v10[OBJC_IVAR___STKStickerRepresentation_role];
        swift_beginAccess();
        v14 = *v13 == 0xD000000000000020 && 0x80000001B8A2A290 == *(v13 + 1);
        if (v14 || (sub_1B8A24954() & 1) != 0)
        {
          v9 = OBJC_IVAR___STKStickerRepresentation_isPreferred;
          swift_beginAccess();
          LOBYTE(v9) = v11[v9];

          if (v9)
          {
            LOBYTE(i) = 1;
            goto LABEL_21;
          }
        }

        else
        {
        }

        ++v8;
        if (v12 == i)
        {
          LOBYTE(i) = 0;
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      ;
    }

LABEL_21:
    v15 = v3[6];

    *(v15 + OBJC_IVAR___STKSticker_animatedVariantIsPreferred) = i;
  }

  free(v3);
}

uint64_t sub_1B89F9C78()
{
  v1 = OBJC_IVAR___STKSticker_byteCount;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B89F9D8C()
{
  v1 = (v0 + OBJC_IVAR___STKSticker_name);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1B89F9E50(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___STKSticker_name);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}