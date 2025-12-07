uint64_t sub_22C78D828()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  *(v6 + 200) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C78D920()
{
  v1 = v0[10];
  sub_22C78DCFC(v0[16], v0[9]);
  v2 = sub_22C383C3C();
  v4 = sub_22C370B74(v2, v3, v1);
  v5 = v0[22];
  if (v4 == 1)
  {
    v6 = v0[9];
    v7 = sub_22C36ECB4();
    v8(v7);
    v9 = sub_22C36BAFC();
    v5(v9);
    sub_22C376B84(v6, &qword_27D9BFFD0, &qword_22C925C78);
    v10 = 0;
  }

  else
  {
    v21 = v0[22];
    v11 = v0[12];
    v12 = sub_22C7920BC();
    v13(v12);
    v10 = sub_22C7836AC(v11);
    v14 = sub_22C36FC2C();
    v15(v14);
    v16 = sub_22C36ECB4();
    v17(v16);
    v18 = sub_22C36BAFC();
    v21(v18);
  }

  sub_22C36D5E0();

  return v19(v10);
}

uint64_t sub_22C78DAD0()
{
  v33 = v0;
  v2 = *(v0 + 200);
  (*(v0 + 176))(*(v0 + 168), *(v0 + 144));
  sub_22C9040CC();

  v3 = v2;
  v4 = sub_22C9063CC();
  v5 = sub_22C90AABC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 200);
  v9 = *(v0 + 48);
  v8 = *(v0 + 56);
  if (v6)
  {
    v31 = *(v0 + 40);
    v10 = sub_22C383050();
    swift_slowAlloc();
    v32 = sub_22C791C28();
    *v10 = 136315394;
    sub_22C90430C();
    v11 = sub_22C37EF94();
    v12 = MEMORY[0x2318B7AD0](v11);
    v30 = v8;
    v14 = sub_22C36F9F4(v12, v13, &v32);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2112;
    v15 = v7;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v16;
    *v1 = v16;
    _os_log_impl(&dword_22C366000, v4, v5, "Entity was not convertable to %s: %@", v10, 0x16u);
    sub_22C376B84(v1, &qword_27D9BB158, qword_22C910FD0);
    sub_22C37B09C();
    sub_22C3817B8();
    sub_22C370510();

    v17 = (*(v9 + 8))(v30, v31);
  }

  else
  {

    v25 = sub_22C3805D8();
    v17 = v27(v25, v26);
  }

  sub_22C791E4C(v17, v18, v19, v20, v21, v22, v23, v24);

  sub_22C36D5E0();

  return v28(0);
}

uint64_t sub_22C78DCFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = sub_22C9063DC();
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22C90931C();
  v26 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22C9093BC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - v14;
  v16 = *(v10 + 16);
  v16(&v26 - v14, a1, v9);
  if ((*(v10 + 88))(v15, v9) == *MEMORY[0x277D72A58])
  {
    v16(v13, v15, v9);
    (*(v10 + 96))(v13, v9);
    v17 = swift_projectBox();
    v18 = v26;
    if ((*(v26 + 88))(v17, v6) == *MEMORY[0x277D72998])
    {
      (*(v18 + 16))(v8, v17, v6);
      (*(v18 + 96))(v8, v6);
      v19 = sub_22C90929C();
      v20 = v29;
      (*(*(v19 - 8) + 32))(v29, v8, v19);
      sub_22C36C640(v20, 0, 1, v19);

      return (*(v10 + 8))(v15, v9);
    }
  }

  sub_22C9040CC();
  v21 = sub_22C9063CC();
  v22 = sub_22C90AADC();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_22C366000, v21, v22, "Coercion did not yield a file", v23, 2u);
    MEMORY[0x2318B9880](v23, -1, -1);
  }

  (*(v27 + 8))(v5, v28);
  v24 = sub_22C90929C();
  sub_22C36C640(v29, 1, 1, v24);
  return (*(v10 + 8))(v15, v9);
}

uint64_t sub_22C78E0F4(uint64_t a1)
{
  v42 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  MEMORY[0x28223BE20](v42);
  v41 = &v39 - v2;
  v44 = sub_22C90929C();
  v47 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v46 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22C9063DC();
  v43 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v45 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22C3A5908(&qword_27D9BB610, &qword_22C925BC0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v39 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v39 - v13;
  v15 = sub_22C90A17C();
  MEMORY[0x28223BE20](v15 - 8);
  v16 = sub_22C90928C();
  v17 = [v16 data];

  v18 = sub_22C90051C();
  v20 = v19;

  sub_22C90A15C();
  v21 = sub_22C90A13C();
  v23 = v22;
  sub_22C38B120(v18, v20);
  if (v23)
  {
    v24 = sub_22C90021C();
    sub_22C36C640(v14, 1, 1, v24);
    sub_22C36C640(v12, 1, 1, v24);
    sub_22C36C640(v9, 1, 1, v24);
    type metadata accessor for PayloadLayout(0);
    swift_allocObject();
    PayloadLayout.init(heading:key:nestedLayout:leafString:leafDictionary:leafCollection:indent:preserveHeaderFormatting:preserveKeyFormatting:)(v14, v12, 0, v9, 0, 0, 0, 0, 0);
    v25 = sub_22C796314(v21, v23);
  }

  else
  {
    v26 = v41;
    v40 = v4;
    v27 = v45;
    sub_22C9040CC();
    v28 = v44;
    (*(v47 + 16))(v46, a1, v44);
    v29 = sub_22C9063CC();
    v30 = sub_22C90AADC();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v48 = v32;
      *v31 = 136315138;
      v33 = v46;
      sub_22C90927C();
      sub_22C79123C();
      v34 = sub_22C909F4C();
      v36 = v35;
      sub_22C376B84(v26, &qword_27D9BC390, &qword_22C912AC0);
      (*(v47 + 8))(v33, v28);
      v37 = sub_22C36F9F4(v34, v36, &v48);

      *(v31 + 4) = v37;
      _os_log_impl(&dword_22C366000, v29, v30, "Could not unpack converted file value: %s", v31, 0xCu);
      sub_22C36FF94(v32);
      MEMORY[0x2318B9880](v32, -1, -1);
      MEMORY[0x2318B9880](v31, -1, -1);
    }

    else
    {

      (*(v47 + 8))(v46, v28);
    }

    (*(v43 + 8))(v27, v40);
    return 0;
  }

  return v25;
}

uint64_t sub_22C78E61C(uint64_t a1)
{
  v67 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  MEMORY[0x28223BE20](v67);
  v66 = &v60 - v2;
  v3 = sub_22C90929C();
  v70 = *(v3 - 8);
  v71 = v3;
  MEMORY[0x28223BE20](v3);
  v69 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22C9063DC();
  v72 = *(v5 - 8);
  v73 = v5;
  MEMORY[0x28223BE20](v5);
  v74 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_22C90021C();
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v63 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22C3A5908(&qword_27D9BB610, &qword_22C925BC0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v62 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v61 = &v60 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v60 - v13;
  v15 = sub_22C90A17C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = a1;
  v19 = sub_22C90928C();
  v20 = [v19 data];

  v21 = sub_22C90051C();
  v23 = v22;

  sub_22C3A5908(&qword_27D9BFFA8, &qword_22C925C38);
  inited = swift_initStackObject();
  v25 = MEMORY[0x277D74098];
  *(inited + 16) = xmmword_22C90F870;
  v26 = *v25;
  *(inited + 32) = *v25;
  v27 = *MEMORY[0x277D74130];
  type metadata accessor for DocumentType(0);
  *(inited + 40) = v27;
  v28 = *MEMORY[0x277D74088];
  *(inited + 64) = v29;
  *(inited + 72) = v28;
  v30 = v26;
  v31 = v27;
  v32 = v28;
  sub_22C90A15C();
  v33 = sub_22C90A16C();
  (*(v16 + 8))(v18, v15);
  *(inited + 104) = MEMORY[0x277D83E88];
  *(inited + 80) = v33;
  type metadata accessor for DocumentReadingOptionKey(0);
  sub_22C7914C4(&qword_27D9BA9B8, type metadata accessor for DocumentReadingOptionKey, &unk_22C90CF6C);
  v34 = sub_22C909F0C();
  v35 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v36 = sub_22C78F3DC(v21, v23, v34, 0);
  v51 = v36;
  v52 = v14;
  v53 = v61;
  v54 = v62;
  v55 = v63;
  v56 = v64;
  v57 = v65;
  if (v36)
  {
    sub_22C36C640(v52, 1, 1, v65);
    sub_22C36C640(v53, 1, 1, v57);
    sub_22C36C640(v54, 1, 1, v57);
    type metadata accessor for PayloadLayout(0);
    swift_allocObject();
    PayloadLayout.init(heading:key:nestedLayout:leafString:leafDictionary:leafCollection:indent:preserveHeaderFormatting:preserveKeyFormatting:)(v52, v53, 0, v54, 0, 0, 0, 0, 0);
    v58 = v51;
    sub_22C90023C();
    v50 = sub_22C796218(v55);

    (*(v56 + 8))(v55, v57);
  }

  else
  {
    v37 = v74;
    sub_22C9040CC();
    v39 = v70;
    v38 = v71;
    v40 = v69;
    (*(v70 + 16))(v69, v68, v71);
    v41 = sub_22C9063CC();
    v42 = sub_22C90AADC();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v75 = v44;
      *v43 = 136315138;
      v45 = v66;
      sub_22C90927C();
      sub_22C79123C();
      v46 = sub_22C909F4C();
      v48 = v47;
      sub_22C376B84(v45, &qword_27D9BC390, &qword_22C912AC0);
      (*(v39 + 8))(v40, v38);
      v49 = sub_22C36F9F4(v46, v48, &v75);

      *(v43 + 4) = v49;
      _os_log_impl(&dword_22C366000, v41, v42, "Could not unpack converted rtf file value: %s", v43, 0xCu);
      sub_22C36FF94(v44);
      MEMORY[0x2318B9880](v44, -1, -1);
      MEMORY[0x2318B9880](v43, -1, -1);

      (*(v72 + 8))(v74, v73);
    }

    else
    {

      (*(v39 + 8))(v40, v38);
      (*(v72 + 8))(v37, v73);
    }

    return 0;
  }

  return v50;
}

uint64_t sub_22C78ED84(void *a1)
{
  v51 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  MEMORY[0x28223BE20](v51);
  v50 = &v49 - v2;
  v3 = sub_22C90929C();
  v55 = *(v3 - 8);
  v56 = v3;
  MEMORY[0x28223BE20](v3);
  v54 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22C9063DC();
  v58 = *(v5 - 8);
  v59 = v5;
  MEMORY[0x28223BE20](v5);
  v57 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C3A5908(&qword_27D9BB610, &qword_22C925BC0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v52 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v49 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v49 - v13;
  v15 = sub_22C3A5908(&qword_27D9BB138, &qword_22C90DB70);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v49 - v19;
  v21 = sub_22C90046C();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a1;
  v25 = sub_22C90928C();
  v26 = [v25 data];

  v27 = sub_22C90051C();
  v29 = v28;

  sub_22C36C640(v18, 1, 1, v21);
  sub_22C90039C();
  sub_22C38B120(v27, v29);
  sub_22C376B84(v18, &qword_27D9BB138, &qword_22C90DB70);
  if (sub_22C370B74(v20, 1, v21) == 1)
  {
    sub_22C376B84(v20, &qword_27D9BB138, &qword_22C90DB70);
    v30 = v57;
    sub_22C9040CC();
    v31 = v54;
    v32 = v55;
    v33 = v56;
    (*(v55 + 16))(v54, v53, v56);
    v34 = sub_22C9063CC();
    v35 = sub_22C90AADC();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v60 = v53;
      *v36 = 136315138;
      v37 = v50;
      sub_22C90927C();
      sub_22C79123C();
      v38 = sub_22C909F4C();
      v40 = v39;
      sub_22C376B84(v37, &qword_27D9BC390, &qword_22C912AC0);
      (*(v32 + 8))(v31, v33);
      v41 = sub_22C36F9F4(v38, v40, &v60);

      *(v36 + 4) = v41;
      _os_log_impl(&dword_22C366000, v34, v35, "Could not unpack converted file as URL: %s", v36, 0xCu);
      v42 = v53;
      sub_22C36FF94(v53);
      MEMORY[0x2318B9880](v42, -1, -1);
      MEMORY[0x2318B9880](v36, -1, -1);
    }

    else
    {

      (*(v32 + 8))(v31, v33);
    }

    (*(v58 + 8))(v30, v59);
    return 0;
  }

  else
  {
    (*(v22 + 32))(v24, v20, v21);
    v43 = sub_22C90021C();
    sub_22C36C640(v14, 1, 1, v43);
    sub_22C36C640(v12, 1, 1, v43);
    v44 = v52;
    sub_22C36C640(v52, 1, 1, v43);
    type metadata accessor for PayloadLayout(0);
    swift_allocObject();
    PayloadLayout.init(heading:key:nestedLayout:leafString:leafDictionary:leafCollection:indent:preserveHeaderFormatting:preserveKeyFormatting:)(v14, v12, 0, v44, 0, 0, 0, 0, 0);
    v45 = sub_22C90036C();
    v47 = sub_22C796314(v45, v46);

    (*(v22 + 8))(v24, v21);
  }

  return v47;
}

id sub_22C78F3DC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v15[1] = *MEMORY[0x277D85DE8];
  v9 = sub_22C90050C();
  type metadata accessor for DocumentReadingOptionKey(0);
  sub_22C7914C4(&qword_27D9BA9B8, type metadata accessor for DocumentReadingOptionKey, &unk_22C90CF6C);
  v10 = sub_22C909EAC();

  v15[0] = 0;
  v11 = [v5 initWithData:v9 options:v10 documentAttributes:a4 error:v15];

  if (v11)
  {
    v12 = v15[0];
  }

  else
  {
    v13 = v15[0];
    sub_22C90030C();

    swift_willThrow();
  }

  sub_22C38B120(a1, a2);
  return v11;
}

uint64_t sub_22C78F540(uint64_t *a1)
{
  v2 = *(sub_22C3A5908(&qword_27D9BADA0, &unk_22C90FA80) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C56C528();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_22C78F5F4(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_22C78F5F4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22C90B45C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22C3A5908(&qword_27D9BADA0, &unk_22C90FA80);
        v6 = sub_22C90A64C();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_22C3A5908(&qword_27D9BADA0, &unk_22C90FA80) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22C78F9B8(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_22C78F73C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22C78F73C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v36 = sub_22C3A5908(&qword_27D9BADA0, &unk_22C90FA80);
  v8 = MEMORY[0x28223BE20](v36);
  v35 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = (&v27 - v11);
  result = MEMORY[0x28223BE20](v10);
  v16 = (&v27 - v15);
  v29 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v34 = v17;
    v28 = v18;
    v22 = v17 + v18 * a3;
    while (2)
    {
      v32 = v19;
      v33 = a3;
      v30 = v22;
      v31 = v21;
      while (1)
      {
        sub_22C791344(v22, v16, &qword_27D9BADA0, &unk_22C90FA80);
        sub_22C791344(v19, v12, &qword_27D9BADA0, &unk_22C90FA80);
        if (*v16 == *v12 && v16[1] == v12[1])
        {
          break;
        }

        v24 = sub_22C90B4FC();
        sub_22C376B84(v12, &qword_27D9BADA0, &unk_22C90FA80);
        result = sub_22C376B84(v16, &qword_27D9BADA0, &unk_22C90FA80);
        if (v24)
        {
          if (!v34)
          {
            __break(1u);
            return result;
          }

          v25 = v35;
          sub_22C7912F0(v22, v35, &qword_27D9BADA0, &unk_22C90FA80);
          swift_arrayInitWithTakeFrontToBack();
          result = sub_22C7912F0(v25, v19, &qword_27D9BADA0, &unk_22C90FA80);
          v19 += v20;
          v22 += v20;
          if (!__CFADD__(v21++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      sub_22C376B84(v12, &qword_27D9BADA0, &unk_22C90FA80);
      result = sub_22C376B84(v16, &qword_27D9BADA0, &unk_22C90FA80);
LABEL_14:
      a3 = v33 + 1;
      v19 = v32 + v28;
      v21 = v31 - 1;
      v22 = v30 + v28;
      if (v33 + 1 != v29)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_22C78F9B8(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v122 = a1;
  v137 = sub_22C3A5908(&qword_27D9BADA0, &unk_22C90FA80);
  v129 = *(v137 - 8);
  v6 = MEMORY[0x28223BE20](v137);
  v125 = &v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v136 = &v116 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v11 = MEMORY[0x28223BE20](v10);
  v12 = MEMORY[0x28223BE20](v11);
  v133 = (&v116 - v13);
  v14 = MEMORY[0x28223BE20](v12);
  v132 = (&v116 - v15);
  v16 = MEMORY[0x28223BE20](v14);
  v121 = (&v116 - v17);
  MEMORY[0x28223BE20](v16);
  v120 = (&v116 - v20);
  v131 = a3;
  v21 = a3[1];
  if (v21 < 1)
  {
    v23 = MEMORY[0x277D84F90];
LABEL_115:
    a4 = *v122;
    if (!*v122)
    {
      goto LABEL_155;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_117:
      v108 = (v23 + 16);
      for (i = *(v23 + 2); i >= 2; *v108 = i)
      {
        if (!*v131)
        {
          goto LABEL_152;
        }

        v110 = &v23[16 * i];
        v111 = *v110;
        v112 = &v108[2 * i];
        v113 = *(v112 + 1);
        v114 = v134;
        sub_22C7903D4(*v131 + *(v129 + 72) * *v110, *v131 + *(v129 + 72) * *v112, *v131 + *(v129 + 72) * v113, a4);
        v134 = v114;
        if (v114)
        {
          break;
        }

        if (v113 < v111)
        {
          goto LABEL_140;
        }

        if (i - 2 >= *v108)
        {
          goto LABEL_141;
        }

        *v110 = v111;
        *(v110 + 1) = v113;
        v115 = *v108 - i;
        if (*v108 < i)
        {
          goto LABEL_142;
        }

        i = *v108 - 1;
        sub_22C56BFF0(v112 + 16, v115, v112);
      }

LABEL_113:

      return;
    }

LABEL_149:
    v23 = sub_22C56BFD8();
    goto LABEL_117;
  }

  v138 = v19;
  v139 = v18;
  v117 = a4;
  v22 = 0;
  v23 = MEMORY[0x277D84F90];
  while (1)
  {
    v24 = v22;
    v25 = v22 + 1;
    if (v22 + 1 < v21)
    {
      v127 = v21;
      v26 = *v131;
      v27 = *(v129 + 72);
      v28 = v22 + 1;
      v29 = v120;
      sub_22C791344(*v131 + v27 * v25, v120, &qword_27D9BADA0, &unk_22C90FA80);
      v130 = v27;
      v30 = v26 + v27 * v24;
      v31 = v121;
      sub_22C791344(v30, v121, &qword_27D9BADA0, &unk_22C90FA80);
      if (*v29 == *v31 && v29[1] == v31[1])
      {
        LODWORD(v128) = 0;
      }

      else
      {
        LODWORD(v128) = sub_22C90B4FC();
      }

      v118 = v23;
      sub_22C376B84(v121, &qword_27D9BADA0, &unk_22C90FA80);
      sub_22C376B84(v120, &qword_27D9BADA0, &unk_22C90FA80);
      v119 = v24;
      v33 = v24 + 2;
      v34 = v130 * (v24 + 2);
      v35 = v26 + v34;
      v36 = v130 * v28;
      v37 = v26 + v130 * v28;
      v38 = v28;
      do
      {
        v39 = v33;
        v40 = v38;
        v41 = v36;
        a4 = v34;
        if (v33 >= v127)
        {
          break;
        }

        v135 = v33;
        v42 = v132;
        sub_22C791344(v35, v132, &qword_27D9BADA0, &unk_22C90FA80);
        v43 = v133;
        sub_22C791344(v37, v133, &qword_27D9BADA0, &unk_22C90FA80);
        v44 = *v42 == *v43 && v42[1] == v43[1];
        v45 = v44 ? 0 : sub_22C90B4FC();
        sub_22C376B84(v133, &qword_27D9BADA0, &unk_22C90FA80);
        sub_22C376B84(v132, &qword_27D9BADA0, &unk_22C90FA80);
        v39 = v135;
        v33 = v135 + 1;
        v35 += v130;
        v37 += v130;
        v38 = v40 + 1;
        v36 = v41 + v130;
        v34 = a4 + v130;
      }

      while (((v128 ^ v45) & 1) == 0);
      if (v128)
      {
        v24 = v119;
        if (v39 < v119)
        {
          goto LABEL_146;
        }

        if (v119 >= v39)
        {
          v25 = v39;
          v23 = v118;
          goto LABEL_39;
        }

        v46 = v119 * v130;
        do
        {
          if (v24 != v40)
          {
            v47 = *v131;
            if (!*v131)
            {
              goto LABEL_153;
            }

            sub_22C7912F0(v47 + v46, v125, &qword_27D9BADA0, &unk_22C90FA80);
            v48 = v46 < v41 || v47 + v46 >= (v47 + a4);
            if (v48)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v46 != v41)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_22C7912F0(v125, v47 + v41, &qword_27D9BADA0, &unk_22C90FA80);
          }

          ++v24;
          v41 -= v130;
          a4 -= v130;
          v46 += v130;
        }

        while (v24 < v40--);
        v25 = v39;
        v23 = v118;
      }

      else
      {
        v25 = v39;
        v23 = v118;
      }

      v24 = v119;
    }

LABEL_39:
    v50 = v131[1];
    v130 = v25;
    if (v25 < v50)
    {
      v80 = __OFSUB__(v25, v24);
      v51 = v25 - v24;
      if (v80)
      {
        goto LABEL_145;
      }

      if (v51 < v117)
      {
        break;
      }
    }

LABEL_62:
    if (v130 < v24)
    {
      goto LABEL_144;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C590218(0, *(v23 + 2) + 1, 1, v23);
      v23 = v106;
    }

    a4 = *(v23 + 2);
    v62 = *(v23 + 3);
    v63 = a4 + 1;
    if (a4 >= v62 >> 1)
    {
      sub_22C590218(v62 > 1, a4 + 1, 1, v23);
      v23 = v107;
    }

    *(v23 + 2) = v63;
    v64 = v23 + 32;
    v65 = &v23[16 * a4 + 32];
    v66 = v130;
    *v65 = v24;
    *(v65 + 1) = v66;
    v67 = *v122;
    if (!*v122)
    {
      goto LABEL_154;
    }

    if (a4)
    {
      while (1)
      {
        a4 = v63 - 1;
        v68 = &v64[16 * v63 - 16];
        v69 = &v23[16 * v63];
        if (v63 >= 4)
        {
          break;
        }

        if (v63 == 3)
        {
          v70 = *(v23 + 4);
          v71 = *(v23 + 5);
          v80 = __OFSUB__(v71, v70);
          v72 = v71 - v70;
          v73 = v80;
LABEL_82:
          if (v73)
          {
            goto LABEL_131;
          }

          v85 = *v69;
          v84 = *(v69 + 1);
          v86 = __OFSUB__(v84, v85);
          v87 = v84 - v85;
          v88 = v86;
          if (v86)
          {
            goto LABEL_134;
          }

          v89 = *(v68 + 1);
          v90 = v89 - *v68;
          if (__OFSUB__(v89, *v68))
          {
            goto LABEL_137;
          }

          if (__OFADD__(v87, v90))
          {
            goto LABEL_139;
          }

          if (v87 + v90 >= v72)
          {
            if (v72 < v90)
            {
              a4 = v63 - 2;
            }

            goto LABEL_104;
          }

          goto LABEL_97;
        }

        if (v63 < 2)
        {
          goto LABEL_133;
        }

        v92 = *v69;
        v91 = *(v69 + 1);
        v80 = __OFSUB__(v91, v92);
        v87 = v91 - v92;
        v88 = v80;
LABEL_97:
        if (v88)
        {
          goto LABEL_136;
        }

        v94 = *v68;
        v93 = *(v68 + 1);
        v80 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v80)
        {
          goto LABEL_138;
        }

        if (v95 < v87)
        {
          goto LABEL_111;
        }

LABEL_104:
        if (a4 - 1 >= v63)
        {
          __break(1u);
LABEL_126:
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
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

        if (!*v131)
        {
          goto LABEL_151;
        }

        v99 = v23;
        v100 = &v64[16 * a4 - 16];
        v101 = *v100;
        v102 = &v64[16 * a4];
        v103 = *(v102 + 1);
        v104 = v134;
        sub_22C7903D4(*v131 + *(v129 + 72) * *v100, *v131 + *(v129 + 72) * *v102, *v131 + *(v129 + 72) * v103, v67);
        v134 = v104;
        if (v104)
        {
          goto LABEL_113;
        }

        if (v103 < v101)
        {
          goto LABEL_126;
        }

        v105 = *(v99 + 2);
        if (a4 > v105)
        {
          goto LABEL_127;
        }

        *v100 = v101;
        *(v100 + 1) = v103;
        if (a4 >= v105)
        {
          goto LABEL_128;
        }

        v63 = v105 - 1;
        sub_22C56BFF0(v102 + 16, v105 - 1 - a4, &v64[16 * a4]);
        v23 = v99;
        *(v99 + 2) = v105 - 1;
        if (v105 <= 2)
        {
          goto LABEL_111;
        }
      }

      v74 = &v64[16 * v63];
      v75 = *(v74 - 8);
      v76 = *(v74 - 7);
      v80 = __OFSUB__(v76, v75);
      v77 = v76 - v75;
      if (v80)
      {
        goto LABEL_129;
      }

      v79 = *(v74 - 6);
      v78 = *(v74 - 5);
      v80 = __OFSUB__(v78, v79);
      v72 = v78 - v79;
      v73 = v80;
      if (v80)
      {
        goto LABEL_130;
      }

      v81 = *(v69 + 1);
      v82 = v81 - *v69;
      if (__OFSUB__(v81, *v69))
      {
        goto LABEL_132;
      }

      v80 = __OFADD__(v72, v82);
      v83 = v72 + v82;
      if (v80)
      {
        goto LABEL_135;
      }

      if (v83 >= v77)
      {
        v97 = *v68;
        v96 = *(v68 + 1);
        v80 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v80)
        {
          goto LABEL_143;
        }

        if (v72 < v98)
        {
          a4 = v63 - 2;
        }

        goto LABEL_104;
      }

      goto LABEL_82;
    }

LABEL_111:
    v22 = v130;
    v21 = v131[1];
    if (v130 >= v21)
    {
      goto LABEL_115;
    }
  }

  if (__OFADD__(v24, v117))
  {
    goto LABEL_147;
  }

  if (v24 + v117 >= v50)
  {
    v52 = v50;
  }

  else
  {
    v52 = v24 + v117;
  }

  if (v52 < v24)
  {
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

  if (v130 == v52)
  {
    goto LABEL_62;
  }

  v118 = v23;
  v119 = v24;
  v53 = *(v129 + 72);
  v54 = *v131 + v53 * (v130 - 1);
  a4 = -v53;
  v55 = v24 - v130;
  v135 = *v131;
  v123 = v53;
  v124 = v52;
  v56 = v135 + v130 * v53;
LABEL_49:
  v126 = v56;
  v127 = v55;
  v128 = v54;
  while (1)
  {
    v57 = v138;
    sub_22C791344(v56, v138, &qword_27D9BADA0, &unk_22C90FA80);
    v58 = v139;
    sub_22C791344(v54, v139, &qword_27D9BADA0, &unk_22C90FA80);
    if (*v57 == *v58 && v57[1] == v58[1])
    {
      sub_22C376B84(v58, &qword_27D9BADA0, &unk_22C90FA80);
      sub_22C376B84(v57, &qword_27D9BADA0, &unk_22C90FA80);
LABEL_60:
      v54 = v128 + v123;
      v55 = v127 - 1;
      v56 = v126 + v123;
      if (++v130 == v124)
      {
        v130 = v124;
        v23 = v118;
        v24 = v119;
        goto LABEL_62;
      }

      goto LABEL_49;
    }

    v60 = sub_22C90B4FC();
    sub_22C376B84(v58, &qword_27D9BADA0, &unk_22C90FA80);
    sub_22C376B84(v57, &qword_27D9BADA0, &unk_22C90FA80);
    if ((v60 & 1) == 0)
    {
      goto LABEL_60;
    }

    if (!v135)
    {
      break;
    }

    v61 = v136;
    sub_22C7912F0(v56, v136, &qword_27D9BADA0, &unk_22C90FA80);
    swift_arrayInitWithTakeFrontToBack();
    sub_22C7912F0(v61, v54, &qword_27D9BADA0, &unk_22C90FA80);
    v54 += a4;
    v56 += a4;
    v48 = __CFADD__(v55++, 1);
    if (v48)
    {
      goto LABEL_60;
    }
  }

  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
}

uint64_t sub_22C7903D4(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v65 = sub_22C3A5908(&qword_27D9BADA0, &unk_22C90FA80);
  v8 = MEMORY[0x28223BE20](v65);
  v64 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v63 = (&v56 - v11);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v56 - v13);
  result = MEMORY[0x28223BE20](v12);
  v17 = (&v56 - v16);
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return result;
  }

  v20 = a2 - a1;
  v21 = a2 - a1 == 0x8000000000000000 && v19 == -1;
  if (v21)
  {
    goto LABEL_72;
  }

  v22 = a2;
  v23 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_73;
  }

  v25 = v20 / v19;
  v68 = a1;
  v67 = a4;
  v26 = v23 / v19;
  if (v20 / v19 < v23 / v19)
  {
    v27 = v22;
    sub_22C3D7A68(a1, v20 / v19, a4);
    v28 = v27;
    v64 = a4 + v25 * v19;
    v66 = v64;
    v62 = a3;
    while (1)
    {
      if (a4 >= v64 || v28 >= a3)
      {
        goto LABEL_70;
      }

      v30 = v28;
      sub_22C791344(v28, v17, &qword_27D9BADA0, &unk_22C90FA80);
      sub_22C791344(a4, v14, &qword_27D9BADA0, &unk_22C90FA80);
      if (*v17 == *v14 && v17[1] == v14[1])
      {
        sub_22C376B84(v14, &qword_27D9BADA0, &unk_22C90FA80);
        sub_22C376B84(v17, &qword_27D9BADA0, &unk_22C90FA80);
      }

      else
      {
        v32 = sub_22C90B4FC();
        sub_22C376B84(v14, &qword_27D9BADA0, &unk_22C90FA80);
        sub_22C376B84(v17, &qword_27D9BADA0, &unk_22C90FA80);
        if (v32)
        {
          v33 = v30;
          v34 = v30 + v19;
          if (a1 < v30 || a1 >= v34)
          {
            swift_arrayInitWithTakeFrontToBack();
            v28 = v30 + v19;
            a3 = v62;
          }

          else
          {
            a3 = v62;
            if (a1 != v33)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v28 = v34;
          }

          goto LABEL_37;
        }
      }

      if (a1 < a4 || a1 >= a4 + v19)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a4)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v67 = a4 + v19;
      a4 += v19;
      v28 = v30;
      a3 = v62;
LABEL_37:
      a1 += v19;
      v68 = a1;
    }
  }

  v37 = v22;
  sub_22C3D7A68(v22, v23 / v19, a4);
  v38 = v37;
  v39 = a4 + v26 * v19;
  v40 = -v19;
  v41 = v39;
  v61 = -v19;
  v58 = a4;
LABEL_42:
  v42 = v38 + v40;
  v43 = a3;
  v44 = v41;
  v62 = v38;
  v59 = v41;
  v60 = v42;
  while (1)
  {
    if (v39 <= a4)
    {
      v68 = v38;
      v66 = v44;
      goto LABEL_70;
    }

    if (v38 <= a1)
    {
      break;
    }

    v57 = v44;
    v45 = v61;
    v46 = v39 + v61;
    v47 = v63;
    sub_22C791344(v39 + v61, v63, &qword_27D9BADA0, &unk_22C90FA80);
    v48 = v42;
    v49 = v64;
    sub_22C791344(v48, v64, &qword_27D9BADA0, &unk_22C90FA80);
    if (*v47 == *v49 && v47[1] == v49[1])
    {
      v51 = 0;
    }

    else
    {
      v51 = sub_22C90B4FC();
    }

    a3 = v43 + v45;
    sub_22C376B84(v64, &qword_27D9BADA0, &unk_22C90FA80);
    sub_22C376B84(v63, &qword_27D9BADA0, &unk_22C90FA80);
    if (v51)
    {
      v53 = v43 < v62 || a3 >= v62;
      a4 = v58;
      if (v53)
      {
        v54 = v60;
        swift_arrayInitWithTakeFrontToBack();
        v38 = v54;
        v41 = v57;
        v40 = v61;
      }

      else
      {
        v41 = v57;
        v55 = v60;
        v40 = v61;
        v38 = v60;
        if (v43 != v62)
        {
          v41 = v57;
          swift_arrayInitWithTakeBackToFront();
          v38 = v55;
        }
      }

      goto LABEL_42;
    }

    v52 = v43 < v39 || a3 >= v39;
    a4 = v58;
    if (v52)
    {
      swift_arrayInitWithTakeFrontToBack();
      v43 = a3;
      v39 = v46;
      v44 = v46;
      v38 = v62;
      v41 = v59;
      v42 = v60;
    }

    else
    {
      v44 = v46;
      v21 = v39 == v43;
      v43 = a3;
      v39 = v46;
      v38 = v62;
      v41 = v59;
      v42 = v60;
      if (!v21)
      {
        swift_arrayInitWithTakeBackToFront();
        v38 = v62;
        v43 = a3;
        v39 = v46;
        v44 = v46;
      }
    }
  }

  v68 = v38;
  v66 = v41;
LABEL_70:
  sub_22C838268(&v68, &v67, &v66);
  return 1;
}

void *sub_22C790914(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_22C790AF0(v5, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

void *sub_22C79098C(_BYTE *a1)
{
  v2 = a1;
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = a1[32];
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v8 = swift_slowAlloc();
      v2 = sub_22C790914(v8, v4, v2);
      MEMORY[0x2318B9880](v8, -1, -1);
      return v2;
    }
  }

  MEMORY[0x28223BE20](a1);
  v5 = v9 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_22C88FAFC(0, v4, v5);
  sub_22C790AF0(v5, v4, v2);
  if (!v1)
  {
    return v6;
  }

  swift_willThrow();
  return v2;
}

void sub_22C790AF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a2;
  v32 = a1;
  v39 = sub_22C3A5908(&qword_27D9BADA0, &unk_22C90FA80);
  MEMORY[0x28223BE20](v39);
  v5 = &v30 - v4;
  v6 = sub_22C9093BC();
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v40 = a3;
  v13 = *(a3 + 64);
  v12 = a3 + 64;
  v11 = v13;
  v14 = 1 << *(v12 - 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v33 = 0;
  v34 = (v14 + 63) >> 6;
  v37 = v7 + 16;
  v38 = v7;
  v36 = (v7 + 8);
  while (v16)
  {
    v17 = __clz(__rbit64(v16));
    v41 = (v16 - 1) & v16;
LABEL_11:
    v20 = v17 | (v10 << 6);
    v21 = *(v40 + 56);
    v22 = (*(v40 + 48) + 16 * v20);
    v24 = *v22;
    v23 = v22[1];
    v25 = *(v38 + 72);
    v35 = v20;
    v26 = *(v38 + 16);
    v26(v9, v21 + v25 * v20, v6);
    *v5 = v24;
    *(v5 + 1) = v23;
    v26(&v5[*(v39 + 48)], v9, v6);
    if (v24 == 0x6E6F73726570 && v23 == 0xE600000000000000)
    {
      swift_bridgeObjectRetain_n();
      sub_22C376B84(v5, &qword_27D9BADA0, &unk_22C90FA80);
      (*v36)(v9, v6);

      v16 = v41;
    }

    else
    {
      v28 = sub_22C90B4FC();
      swift_bridgeObjectRetain_n();
      sub_22C376B84(v5, &qword_27D9BADA0, &unk_22C90FA80);
      (*v36)(v9, v6);

      v16 = v41;
      if ((v28 & 1) == 0)
      {
        *(v32 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
        if (__OFADD__(v33++, 1))
        {
          goto LABEL_22;
        }
      }
    }
  }

  v18 = v10;
  while (1)
  {
    v10 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v10 >= v34)
    {
      sub_22C8395B4(v32, v31, v33, v40);
      return;
    }

    v19 = *(v12 + 8 * v10);
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v41 = (v19 - 1) & v19;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t sub_22C790E30(void *a1)
{
  v2 = [a1 typeIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_22C90A11C();

  return v3;
}

void sub_22C790EA0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_22C90A0EC();

  [a3 setCurrencyCode_];
}

uint64_t type metadata accessor for PayloadFormatter(uint64_t a1)
{
  result = qword_27D9BFFF0;
  if (!qword_27D9BFFF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C790F50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PayloadFormatter(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C790FB4(uint64_t a1)
{
  v2 = type metadata accessor for PayloadFormatter(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C791010()
{
  sub_22C36FB38();
  sub_22C791E0C();
  swift_task_alloc();
  sub_22C36CC90();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = sub_22C372190(v1);

  return sub_22C77D4A4(v3, v4);
}

uint64_t sub_22C7910A0()
{
  sub_22C36FB38();
  sub_22C791E0C();
  swift_task_alloc();
  sub_22C36CC90();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = sub_22C372190(v1);

  return sub_22C77D2DC(v3);
}

uint64_t sub_22C791130()
{
  sub_22C36FB38();
  sub_22C791E0C();
  swift_task_alloc();
  sub_22C36CC90();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = sub_22C372190(v1);

  return sub_22C77C728(v3, v4);
}

unint64_t sub_22C7911C0()
{
  result = qword_27D9BFF90;
  if (!qword_27D9BFF90)
  {
    sub_22C3AC1A0(&qword_27D9BAD90, &unk_22C91D9E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFF90);
  }

  return result;
}

unint64_t sub_22C79123C()
{
  result = qword_27D9BFF98;
  if (!qword_27D9BFF98)
  {
    sub_22C3AC1A0(&qword_27D9BC390, &qword_22C912AC0);
    sub_22C7914C4(&qword_27D9BFFA0, MEMORY[0x277D73220], MEMORY[0x277D73228]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFF98);
  }

  return result;
}

uint64_t sub_22C7912F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_22C36BB4C(a1, a2, a3, a4);
  sub_22C36BBA8();
  (*(v6 + 32))(v4, v5);
  return v4;
}

uint64_t sub_22C791344(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_22C36BB4C(a1, a2, a3, a4);
  sub_22C36BBA8();
  (*(v6 + 16))(v4, v5);
  return v4;
}

void sub_22C7913C0(uint64_t a1)
{
  sub_22C90731C();
  if (v1 <= 0x3F)
  {
    sub_22C90880C();
    if (v2 <= 0x3F)
    {
      sub_22C646808(319);
      if (v3 <= 0x3F)
      {
        sub_22C908AEC();
        if (v4 <= 0x3F)
        {
          sub_22C6468B4();
          if (v5 <= 0x3F)
          {
            sub_22C90941C();
            if (v6 <= 0x3F)
            {
              type metadata accessor for TranscriptValueFetcher(319);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_22C7914C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *sub_22C79151C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22C7915FC()
{
  result = qword_27D9C0000;
  if (!qword_27D9C0000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0000);
  }

  return result;
}

uint64_t sub_22C791650(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_22C79178C()
{
  v2 = v0[28];
  *(v1 - 176) = v0[29];
  *(v1 - 168) = v2;
  v3 = v0[26];
  *(v1 - 160) = v0[27];
  *(v1 - 152) = v3;
  v5 = v0[21];
  v4 = v0[22];
  *(v1 - 144) = v0[25];
  *(v1 - 136) = v4;
  v6 = v0[18];
  *(v1 - 128) = v5;
  *(v1 - 120) = v6;
}

uint64_t sub_22C79184C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{

  return PayloadLayout.init(heading:key:nestedLayout:leafString:leafDictionary:leafCollection:indent:preserveHeaderFormatting:preserveKeyFormatting:)(a1, a2, a3, a4, 0, 0, 0, 0, a9);
}

void sub_22C791870()
{
  sub_22C36FF94(v0);

  JUMPOUT(0x2318B9880);
}

uint64_t sub_22C7918A4(uint64_t a1)
{

  return sub_22C90B4FC();
}

uint64_t sub_22C791AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = v8[43];
  *(v9 - 192) = v8[44];
  *(v9 - 184) = v11;
  v12 = v8[41];
  *(v9 - 176) = v8[42];
  *(v9 - 168) = v12;
  v14 = v8[36];
  v13 = v8[37];
  *(v9 - 160) = v8[40];
  *(v9 - 152) = v13;
  v15 = v8[33];
  *(v9 - 144) = v14;
  *(v9 - 136) = v15;
  v16 = v8[30];
  *(v9 - 128) = v8[31];
  *(v9 - 120) = v16;
}

uint64_t sub_22C791B20(uint64_t a1, uint64_t a2)
{

  return sub_22C90B4FC();
}

char *sub_22C791B60()
{
  v4 = *v0;
  *(v1 + 936) = *v0;
  v5 = v0[1];
  *(v1 + 944) = v5;
  v6 = *(v3 + 48);
  *v2 = v4;
  v2[1] = v5;
  return v2 + v6;
}

char *sub_22C791B90()
{
  v4 = *v0;
  *(v1 + 936) = *v0;
  v5 = v0[1];
  *(v1 + 944) = v5;
  v6 = *(v3 + 48);
  *v2 = v4;
  v2[1] = v5;
  return v2 + v6;
}

uint64_t sub_22C791BC0(uint64_t a1, uint64_t a2)
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_22C791BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
}

BOOL sub_22C791C0C(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_22C791C28()
{

  return swift_slowAlloc();
}

void sub_22C791C98()
{
  v3 = v2[114] + 1;
  v2[116] = v1;
  v2[115] = v0;
  v2[114] = v3;
}

void sub_22C791CBC()
{
  v1 = *(v0 + 280);
  *(v0 + 1072) = *(*(v0 + 272) + 48);
  *(v0 + 1076) = *(v1 + 80);
}

uint64_t sub_22C791CDC()
{
  result = v0[12];
  v2 = v0[9];
  v0[51] = *(v2 + 8);
  v0[52] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  return result;
}

uint64_t sub_22C791D20()
{
}

uint64_t sub_22C791D50@<X0>(int *a1@<X8>)
{
  *(v1 - 104) = a1 + *a1;

  return swift_task_alloc();
}

uint64_t sub_22C791D8C()
{
  result = v1;
  *(v2 - 312) = *(v0 + 8);
  return result;
}

uint64_t sub_22C791E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
}

void sub_22C791E74(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v7 = *(v5 - 136);
  v8 = *(v5 - 104);

  _os_log_impl(a1, v8, v7, a4, v4, 0xCu);
}

uint64_t sub_22C791E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  return sub_22C90AD4C();
}

void sub_22C791F00()
{
  *(v0 + 1080) = v2;
  *(v0 + 928) = v1;
  *(v0 + 920) = v1;
  *(v0 + 912) = 0;
}

void sub_22C791F54(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

uint64_t sub_22C791F84()
{

  return sub_22C7973A4(v0);
}

uint64_t sub_22C791FA8()
{
}

uint64_t sub_22C791FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
}

void sub_22C791FE4(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

id sub_22C792000()
{

  return [v0 (v1 + 855)];
}

uint64_t sub_22C792018()
{
}

uint64_t sub_22C792030(uint64_t a1)
{
  *(v1 - 104) = a1;
}

void sub_22C792048(void *a1, NSObject *a2, os_log_type_t a3, const char *a4, ...)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t sub_22C79209C(uint64_t result)
{
  *(v1 - 136) = result;
  *(v1 - 96) = result;
  return result;
}

void sub_22C792188(void *a1@<X0>, const char *a2@<X3>, os_log_type_t a3@<W8>)
{

  _os_log_impl(a1, v3, a3, a2, v4, 0xCu);
}

uint64_t sub_22C7921A8()
{

  return sub_22C729D78(v1, v0);
}

uint64_t sub_22C7921C8()
{
}

BOOL sub_22C7921E8(int a1)
{
  *(v2 - 136) = a1;
  *(v2 - 104) = v1;

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_22C792224(uint64_t a1)
{
  *(v1 - 88) = a1;
}

uint64_t sub_22C79223C(uint64_t a1)
{

  return sub_22C909F4C();
}

void sub_22C792254()
{
  sub_22C370030();
  sub_22C387550();
  v6 = sub_22C3A5908(&qword_27D9BD760, &qword_22C922200);
  sub_22C369914(v6);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v7);
  sub_22C79D010();
  sub_22C903B1C();
  sub_22C369824();
  MEMORY[0x28223BE20](v8);
  sub_22C37873C(v9, v30);
  v11 = MEMORY[0x28223BE20](v10);
  sub_22C36A344(v11, v12, v13, v14, v15, v16, v17, v18, v31);
  while (v3 != v5)
  {
    v19 = sub_22C908A0C();
    sub_22C3699B8(v19);
    v21 = sub_22C3828CC(v1 + ((*(v20 + 80) + 32) & ~*(v20 + 80)));
    v2(v21);
    if (v0)
    {
      sub_22C79D084();
      break;
    }

    sub_22C79D024();
    if (v22)
    {
      sub_22C36DD28(v4, &qword_27D9BD760, &qword_22C922200);
      ++v5;
    }

    else
    {
      v23 = sub_22C36C3A4();
      (qword_22C922200)(v23);
      v24 = sub_22C380034();
      (qword_22C922200)(v24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C372D64();
        sub_22C5902F8();
      }

      sub_22C79D048();
      if (v26)
      {
        sub_22C36DAD0();
        sub_22C5902F8();
        sub_22C79D078(v29);
      }

      v27 = sub_22C36B6D8();
      v28(v27);
    }
  }

  sub_22C38AB44();
  sub_22C36FB20();
}

void sub_22C792458()
{
  sub_22C370030();
  sub_22C387550();
  v6 = sub_22C3A5908(&qword_27D9BC0A0, &unk_22C922F30);
  sub_22C369914(v6);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v7);
  sub_22C79D010();
  sub_22C906ECC();
  sub_22C369824();
  MEMORY[0x28223BE20](v8);
  sub_22C37873C(v9, v30);
  v11 = MEMORY[0x28223BE20](v10);
  sub_22C36A344(v11, v12, v13, v14, v15, v16, v17, v18, v31);
  while (v3 != v5)
  {
    v19 = sub_22C908A0C();
    sub_22C3699B8(v19);
    v21 = sub_22C3828CC(v1 + ((*(v20 + 80) + 32) & ~*(v20 + 80)));
    v2(v21);
    if (v0)
    {
      sub_22C79D084();
      break;
    }

    sub_22C79D024();
    if (v22)
    {
      sub_22C36DD28(v4, &qword_27D9BC0A0, &unk_22C922F30);
      ++v5;
    }

    else
    {
      v23 = sub_22C36C3A4();
      (unk_22C922F30)(v23);
      v24 = sub_22C380034();
      (unk_22C922F30)(v24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C372D64();
        sub_22C590A30();
      }

      sub_22C79D048();
      if (v26)
      {
        sub_22C36DAD0();
        sub_22C590A30();
        sub_22C79D078(v29);
      }

      v27 = sub_22C36B6D8();
      v28(v27);
    }
  }

  sub_22C38AB44();
  sub_22C36FB20();
}

void sub_22C79265C()
{
  sub_22C370030();
  v3 = v2;
  v28 = v4;
  v5 = sub_22C3A5908(&qword_27D9BB608, &qword_22C92DB40);
  sub_22C369914(v5);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v6);
  v7 = sub_22C79D010();
  v27 = type metadata accessor for DialogValue(v7);
  sub_22C369824();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  sub_22C3698E4();
  v25 = v11;
  sub_22C369930();
  MEMORY[0x28223BE20](v12);
  sub_22C36BA64();
  v24 = v13;
  v14 = 0;
  v15 = *(v3 + 16);
  v26 = MEMORY[0x277D84F90];
  while (v15 != v14)
  {
    v16 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v17 = *(v9 + 72);
    sub_22C3817EC();
    v28();
    if (v0)
    {

      break;
    }

    if (sub_22C370B74(v1, 1, v27) == 1)
    {
      sub_22C36DD28(v1, &qword_27D9BB608, &qword_22C92DB40);
      ++v14;
    }

    else
    {
      sub_22C79CFB4(v1, v24, type metadata accessor for DialogValue);
      sub_22C79CFB4(v24, v25, type metadata accessor for DialogValue);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22C377B6C();
        sub_22C590AF8();
        v26 = v20;
      }

      v18 = *(v26 + 16);
      v19 = v18 + 1;
      if (v18 >= *(v26 + 24) >> 1)
      {
        v22 = *(v26 + 16);
        v23 = v18 + 1;
        sub_22C590AF8();
        v18 = v22;
        v19 = v23;
        v26 = v21;
      }

      ++v14;
      *(v26 + 16) = v19;
      sub_22C79CFB4(v25, v26 + v16 + v18 * v17, type metadata accessor for DialogValue);
    }
  }

  sub_22C38AB44();
  sub_22C36FB20();
}

void sub_22C7928B0()
{
  sub_22C37BF7C();
  v3 = 0;
  v5 = *(v4 + 16);
  v6 = MEMORY[0x277D84F90];
  while (v5 != v3)
  {
    if (v3 >= v5)
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    v7 = *(sub_22C9093BC() - 8);
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_15;
    }

    v2(&v21, v1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v3);
    if (v0)
    {

      return;
    }

    v9 = v22;
    ++v3;
    if (v22)
    {
      v23 = v21;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_22C36D270();
        sub_22C590270(v13, v14, v15, v6);
        v6 = v16;
      }

      v10 = *(v6 + 16);
      v11 = v10 + 1;
      if (v10 >= *(v6 + 24) >> 1)
      {
        sub_22C37B798();
        sub_22C590270(v17, v18, v19, v6);
        v11 = v10 + 1;
        v6 = v20;
      }

      *(v6 + 16) = v11;
      v12 = v6 + 16 * v10;
      *(v12 + 32) = v23;
      *(v12 + 40) = v9;
      v3 = v8;
    }
  }
}

void sub_22C792A44()
{
  sub_22C370030();
  v3 = v2;
  v5 = v4;
  v6 = sub_22C3A5908(&qword_27D9C00C0, &qword_22C925EA8);
  sub_22C369914(v6);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v7);
  v8 = sub_22C37F348();
  v9 = type metadata accessor for _PromptToolData(v8);
  sub_22C369824();
  MEMORY[0x28223BE20](v10);
  sub_22C3698E4();
  sub_22C3857BC();
  v12 = MEMORY[0x28223BE20](v11);
  sub_22C37FA78(v12, v13, v14, v15, v16, v17, v18, v19, v31);
  v20 = 0;
  v21 = *(v3 + 16);
  while (1)
  {
    v22 = ~v20;
    v23 = v21 - v20;
    if (!v23)
    {
      break;
    }

    while (1)
    {
      v5();
      if (v0)
      {
        sub_22C79D084();
        goto LABEL_14;
      }

      if (sub_22C370B74(v1, 1, v9) != 1)
      {
        break;
      }

      v24 = sub_22C3819EC();
      sub_22C36DD28(v24, v25, &qword_22C925EA8);
      --v22;
      if (!--v23)
      {
        goto LABEL_14;
      }
    }

    v26 = type metadata accessor for _PromptToolData;
    sub_22C79CFB4(v1, v32, type metadata accessor for _PromptToolData);
    sub_22C79CFB4(v32, v33, type metadata accessor for _PromptToolData);
    if ((sub_22C385FC4() & 1) == 0)
    {
      sub_22C36D270();
      sub_22C591D14();
      v26 = v30;
    }

    if (*(v26 + 2) >= *(v26 + 3) >> 1)
    {
      sub_22C37B798();
      sub_22C591D14();
    }

    v20 = -v22;
    sub_22C375B4C();
    sub_22C3737EC();
    sub_22C37B3E0();
    sub_22C79CFB4(v27, v28, v29);
  }

LABEL_14:
  sub_22C38AB44();
  sub_22C36FB20();
}

void sub_22C792C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_22C388D90();
  a21 = v23;
  a22 = v24;
  v26 = v25;
  v28 = v27;
  v29 = 0;
  v30 = *(v25 + 16);
  v40 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v30 == v29)
    {
      goto LABEL_14;
    }

    if (v29 >= v30)
    {
      break;
    }

    v31 = *(sub_22C90430C() - 8);
    v32 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      goto LABEL_16;
    }

    v28(&a12, v26 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v29);
    if (v22)
    {

LABEL_14:
      sub_22C79D104();
      return;
    }

    v33 = a12;
    ++v29;
    if ((~a12 & 0xF000000000000007) != 0)
    {
      v34 = v40;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22C36D270();
        sub_22C591324();
        v34 = v38;
      }

      v35 = v34;
      v36 = *(v34 + 16);
      v40 = v35;
      v37 = v36 + 1;
      if (v36 >= *(v35 + 24) >> 1)
      {
        sub_22C37B798();
        sub_22C591324();
        v37 = v36 + 1;
        v40 = v39;
      }

      *(v40 + 16) = v37;
      *(v40 + 8 * v36 + 32) = v33;
      v29 = v32;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

void sub_22C792E70()
{
  sub_22C370030();
  v5 = v4;
  sub_22C37BF7C();
  v6 = sub_22C3A5908(&qword_27D9C00C0, &qword_22C925EA8);
  sub_22C369914(v6);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v7);
  v8 = sub_22C374FF8();
  v9 = type metadata accessor for _PromptToolData(v8);
  sub_22C369824();
  MEMORY[0x28223BE20](v10);
  sub_22C3698E4();
  sub_22C3857BC();
  MEMORY[0x28223BE20](v11);
  sub_22C36BA64();
  sub_22C79D0F8(v12);
  v13 = 0;
  v14 = *(v1 + 16);
  while (v14 != v13)
  {
    v15 = v5(0);
    sub_22C3699B8(v15);
    v2(v1 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v17 + 72) * v13);
    if (v0)
    {
      sub_22C79D084();
      break;
    }

    if (sub_22C370B74(v3, 1, v9) == 1)
    {
      sub_22C36DD28(v3, &qword_27D9C00C0, &qword_22C925EA8);
      ++v13;
    }

    else
    {
      sub_22C79CFB4(v3, v21, type metadata accessor for _PromptToolData);
      sub_22C79CFB4(v21, v22, type metadata accessor for _PromptToolData);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22C372D64();
        sub_22C591D14();
      }

      sub_22C79D048();
      if (v18)
      {
        sub_22C376978();
        sub_22C591D14();
      }

      ++v13;
      sub_22C375B4C();
      sub_22C3737EC();
      sub_22C37B3E0();
      sub_22C79CFB4(v22, v19, v20);
    }
  }

  sub_22C38AB44();
  sub_22C36FB20();
}

void sub_22C7930C0()
{
  sub_22C370030();
  sub_22C387550();
  v6 = sub_22C3A5908(&qword_27D9BD298, &qword_22C925EC0);
  sub_22C369914(v6);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v7);
  sub_22C79D010();
  sub_22C9036EC();
  sub_22C369824();
  MEMORY[0x28223BE20](v8);
  sub_22C37873C(v9, v30);
  v11 = MEMORY[0x28223BE20](v10);
  sub_22C36A344(v11, v12, v13, v14, v15, v16, v17, v18, v31);
  while (v3 != v5)
  {
    v19 = sub_22C908ABC();
    sub_22C3699B8(v19);
    v21 = sub_22C3828CC(v1 + ((*(v20 + 80) + 32) & ~*(v20 + 80)));
    v2(v21);
    if (v0)
    {
      sub_22C79D084();
      break;
    }

    sub_22C79D024();
    if (v22)
    {
      sub_22C36DD28(v4, &qword_27D9BD298, &qword_22C925EC0);
      ++v5;
    }

    else
    {
      v23 = sub_22C36C3A4();
      (qword_22C925EC0)(v23);
      v24 = sub_22C380034();
      (qword_22C925EC0)(v24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C372D64();
        sub_22C591078();
      }

      sub_22C79D048();
      if (v26)
      {
        sub_22C36DAD0();
        sub_22C591078();
        sub_22C79D078(v29);
      }

      v27 = sub_22C36B6D8();
      v28(v27);
    }
  }

  sub_22C38AB44();
  sub_22C36FB20();
}

void sub_22C7932C4()
{
  sub_22C370030();
  sub_22C387550();
  v3 = sub_22C3A5908(&qword_27D9BD7B8, &qword_22C919108);
  sub_22C369914(v3);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v4);
  v6 = v33 - v5;
  sub_22C3A5908(&qword_27D9BB6C8, &qword_22C919100);
  sub_22C369824();
  v35 = v7;
  MEMORY[0x28223BE20](v8);
  sub_22C3698E4();
  sub_22C3857BC();
  v10 = MEMORY[0x28223BE20](v9);
  sub_22C37FA78(v10, v11, v12, v13, v14, v15, v16, v17, v33[0]);
  v18 = 0;
  v19 = *(v1 + 16);
  while (v19 != v18)
  {
    v20 = type metadata accessor for DynamicEnumeration.Case(0);
    sub_22C3699B8(v20);
    v22 = sub_22C3828CC(v1 + ((*(v21 + 80) + 32) & ~*(v21 + 80)));
    v2(v22);
    if (v0)
    {
      sub_22C79D084();
      break;
    }

    sub_22C79D024();
    if (v23)
    {
      sub_22C36DD28(v6, &qword_27D9BD7B8, &qword_22C919108);
      ++v18;
    }

    else
    {
      v24 = v34;
      sub_22C4E7208(v6, v34, &qword_27D9BB6C8, &qword_22C919100);
      sub_22C4E7208(v24, v36, &qword_27D9BB6C8, &qword_22C919100);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C372D64();
        sub_22C592FD0();
      }

      sub_22C79D048();
      if (v28)
      {
        v33[1] = v27;
        v33[2] = v26;
        sub_22C376978();
        sub_22C592FD0();
      }

      ++v18;
      sub_22C375B4C();
      sub_22C3737EC();
      sub_22C4E7208(v32, v29 + v30 * v31, &qword_27D9BB6C8, &qword_22C919100);
    }
  }

  sub_22C38AB44();
  sub_22C36FB20();
}

void sub_22C793554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_22C388D90();
  a21 = v23;
  a22 = v24;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = 0;
  v32 = *(v27 + 16);
  v42 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v32 == v31)
    {
      goto LABEL_14;
    }

    if (v31 >= v32)
    {
      break;
    }

    v33 = *(v26(0) - 8);
    v34 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      goto LABEL_16;
    }

    v30(&a12, v28 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v31);
    if (v22)
    {

LABEL_14:
      sub_22C79D104();
      return;
    }

    v35 = a12;
    ++v31;
    if ((~a12 & 0xF000000000000007) != 0)
    {
      v36 = v42;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22C36D270();
        sub_22C591324();
        v36 = v40;
      }

      v37 = v36;
      v38 = *(v36 + 16);
      v42 = v37;
      v39 = v38 + 1;
      if (v38 >= *(v37 + 24) >> 1)
      {
        sub_22C37B798();
        sub_22C591324();
        v39 = v38 + 1;
        v42 = v41;
      }

      *(v42 + 16) = v39;
      *(v42 + 8 * v38 + 32) = v35;
      v31 = v34;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

void sub_22C7936D8()
{
  sub_22C370030();
  sub_22C387550();
  v4 = &qword_27D9C00C8;
  v5 = sub_22C3A5908(&qword_27D9C00C8, &qword_22C925EB0);
  sub_22C369914(v5);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v6);
  v7 = sub_22C79D010();
  type metadata accessor for ContextualEntityRenderingData(v7);
  sub_22C369824();
  MEMORY[0x28223BE20](v8);
  sub_22C3698E4();
  sub_22C3857BC();
  v10 = MEMORY[0x28223BE20](v9);
  sub_22C37FA78(v10, v11, v12, v13, v14, v15, v16, v17, v30);
  v18 = 0;
  v19 = *(v1 + 16);
  while (v19 != v18)
  {
    v20 = sub_22C9081CC();
    sub_22C3699B8(v20);
    sub_22C3817EC();
    v2();
    if (v0)
    {
      sub_22C79D084();
      break;
    }

    v21 = sub_22C79D024();
    if (v23)
    {
      sub_22C36DD28(v3, &qword_27D9C00C8, &qword_22C925EB0);
      ++v18;
    }

    else
    {
      sub_22C386AE8(v21, v22, type metadata accessor for ContextualEntityRenderingData);
      sub_22C382DE4();
      v24 = sub_22C385FC4();
      if ((v24 & 1) == 0)
      {
        sub_22C36D270();
        sub_22C593624();
        v4 = v29;
      }

      sub_22C79D05C();
      if (v25)
      {
        sub_22C376978();
        sub_22C593624();
      }

      ++v18;
      sub_22C375B4C();
      sub_22C3737EC();
      sub_22C79CFB4(v28, v26 + v27 * v4, type metadata accessor for ContextualEntityRenderingData);
      v4 = &qword_27D9C00C8;
    }
  }

  sub_22C38AB44();
  sub_22C36FB20();
}

void sub_22C793964()
{
  sub_22C370030();
  sub_22C387550();
  v6 = sub_22C3A5908(&qword_27D9BF610, &qword_22C922B50);
  sub_22C369914(v6);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v7);
  sub_22C79D010();
  sub_22C9025EC();
  sub_22C369824();
  MEMORY[0x28223BE20](v8);
  sub_22C37873C(v9, v30);
  v11 = MEMORY[0x28223BE20](v10);
  sub_22C36A344(v11, v12, v13, v14, v15, v16, v17, v18, v31);
  while (v3 != v5)
  {
    v19 = sub_22C901FAC();
    sub_22C3699B8(v19);
    v21 = sub_22C3828CC(v1 + ((*(v20 + 80) + 32) & ~*(v20 + 80)));
    v2(v21);
    if (v0)
    {
      sub_22C79D084();
      break;
    }

    sub_22C79D024();
    if (v22)
    {
      sub_22C36DD28(v4, &qword_27D9BF610, &qword_22C922B50);
      ++v5;
    }

    else
    {
      v23 = sub_22C36C3A4();
      (qword_22C922B50)(v23);
      v24 = sub_22C380034();
      (qword_22C922B50)(v24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C372D64();
        sub_22C594FB4();
      }

      sub_22C79D048();
      if (v26)
      {
        sub_22C36DAD0();
        sub_22C594FB4();
        sub_22C79D078(v29);
      }

      v27 = sub_22C36B6D8();
      v28(v27);
    }
  }

  sub_22C38AB44();
  sub_22C36FB20();
}

void sub_22C793B68()
{
  sub_22C370030();
  sub_22C387550();
  v6 = sub_22C3A5908(&qword_27D9BF7F0, &qword_22C925EA0);
  sub_22C369914(v6);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v7);
  sub_22C79D010();
  sub_22C90665C();
  sub_22C369824();
  MEMORY[0x28223BE20](v8);
  sub_22C37873C(v9, v30);
  v11 = MEMORY[0x28223BE20](v10);
  sub_22C36A344(v11, v12, v13, v14, v15, v16, v17, v18, v31);
  while (v3 != v5)
  {
    v19 = sub_22C900BDC();
    sub_22C3699B8(v19);
    v21 = sub_22C3828CC(v1 + ((*(v20 + 80) + 32) & ~*(v20 + 80)));
    v2(v21);
    if (v0)
    {
      sub_22C79D084();
      break;
    }

    sub_22C79D024();
    if (v22)
    {
      sub_22C36DD28(v4, &qword_27D9BF7F0, &qword_22C925EA0);
      ++v5;
    }

    else
    {
      v23 = sub_22C36C3A4();
      (qword_22C925EA0)(v23);
      v24 = sub_22C380034();
      (qword_22C925EA0)(v24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C372D64();
        sub_22C59507C();
      }

      sub_22C79D048();
      if (v26)
      {
        sub_22C36DAD0();
        sub_22C59507C();
        sub_22C79D078(v29);
      }

      v27 = sub_22C36B6D8();
      v28(v27);
    }
  }

  sub_22C38AB44();
  sub_22C36FB20();
}

void sub_22C793D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C370030();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v54 = v26;
  v27 = sub_22C3A5908(&qword_27D9BB628, &unk_22C920580);
  sub_22C369914(v27);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v28);
  sub_22C79D010();
  v55 = sub_22C908C5C();
  v29 = sub_22C3699B8(v55);
  MEMORY[0x28223BE20](v29);
  sub_22C3698E4();
  v53 = v30;
  sub_22C369930();
  MEMORY[0x28223BE20](v31);
  sub_22C36BA64();
  v50 = v32;
  v33 = v25 + 56;
  sub_22C36D280();
  v36 = v35 & v34;
  v38 = (v37 + 63) >> 6;
  v52 = (v39 + 32);

  v40 = 0;
  v56 = MEMORY[0x277D84F90];
  v51 = v25;
  if (!v36)
  {
    goto LABEL_2;
  }

  do
  {
LABEL_6:
    a10 = *(*(v25 + 48) + ((v40 << 9) | (8 * __clz(__rbit64(v36)))));

    v54(&a10);
    if (v20)
    {

LABEL_17:
      sub_22C36FB20();
      return;
    }

    if (sub_22C370B74(v21, 1, v55) == 1)
    {
      sub_22C36DD28(v21, &qword_27D9BB628, &unk_22C920580);
    }

    else
    {
      v42 = v21;
      v43 = *v52;
      v44 = v42;
      (*v52)(v50);
      (v43)(v53, v50, v55);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22C377B6C();
        sub_22C59539C();
        v56 = v48;
      }

      v45 = *(v56 + 16);
      if (v45 >= *(v56 + 24) >> 1)
      {
        sub_22C59539C();
        v56 = v49;
      }

      *(v56 + 16) = v45 + 1;
      sub_22C3737EC();
      (v43)(v46 + v47 * v45, v53);
      v25 = v51;
      v21 = v44;
    }

    v36 &= v36 - 1;
  }

  while (v36);
LABEL_2:
  while (1)
  {
    v41 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      break;
    }

    if (v41 >= v38)
    {

      goto LABEL_17;
    }

    v36 = *(v33 + 8 * v41);
    ++v40;
    if (v36)
    {
      v40 = v41;
      goto LABEL_6;
    }
  }

  __break(1u);
}

void sub_22C794054()
{
  sub_22C370030();
  v31 = v2;
  v4 = v3;
  v6 = v5;
  v38 = v8;
  v39 = v7;
  v37 = v9;
  v10 = sub_22C3A5908(v9, v8);
  sub_22C369914(v10);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v11);
  v12 = sub_22C374FF8();
  v40 = v4(v12);
  sub_22C369824();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  sub_22C3698E4();
  v34 = v16;
  sub_22C369930();
  MEMORY[0x28223BE20](v17);
  sub_22C36BA64();
  v33 = v18;
  v19 = 0;
  v20 = v6;
  v21 = *(v6 + 16);
  v35 = (v14 + 32);
  v36 = MEMORY[0x277D84F90];
  while (v21 != v19)
  {
    v22 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v23 = *(v14 + 72);
    v39(v20 + v22 + v23 * v19);
    if (v0)
    {

      break;
    }

    if (sub_22C370B74(v1, 1, v40) == 1)
    {
      sub_22C36DD28(v1, v37, v38);
      ++v19;
    }

    else
    {
      v32 = *v35;
      (*v35)(v33, v1, v40);
      v32(v34, v33, v40);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_22C377B6C();
        v36 = v31(v27);
      }

      v25 = *(v36 + 16);
      v24 = *(v36 + 24);
      v26 = v25 + 1;
      if (v25 >= v24 >> 1)
      {
        v29 = *(v36 + 16);
        v30 = v25 + 1;
        v28 = (v31)(v24 > 1, v25 + 1, 1, v36);
        v25 = v29;
        v26 = v30;
        v36 = v28;
      }

      ++v19;
      *(v36 + 16) = v26;
      v32(v36 + v22 + v25 * v23, v34, v40);
    }
  }

  sub_22C38AB44();
  sub_22C36FB20();
}

void sub_22C7942D4()
{
  sub_22C370030();
  sub_22C387550();
  v6 = sub_22C3A5908(&qword_27D9BC0A0, &unk_22C922F30);
  sub_22C369914(v6);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v7);
  sub_22C79D010();
  sub_22C906ECC();
  sub_22C369824();
  MEMORY[0x28223BE20](v8);
  sub_22C37873C(v9, v30);
  v11 = MEMORY[0x28223BE20](v10);
  sub_22C36A344(v11, v12, v13, v14, v15, v16, v17, v18, v31);
  while (v3 != v5)
  {
    v19 = sub_22C901FAC();
    sub_22C3699B8(v19);
    v21 = sub_22C3828CC(v1 + ((*(v20 + 80) + 32) & ~*(v20 + 80)));
    v2(v21);
    if (v0)
    {
      sub_22C79D084();
      break;
    }

    sub_22C79D024();
    if (v22)
    {
      sub_22C36DD28(v4, &qword_27D9BC0A0, &unk_22C922F30);
      ++v5;
    }

    else
    {
      v23 = sub_22C36C3A4();
      (unk_22C922F30)(v23);
      v24 = sub_22C380034();
      (unk_22C922F30)(v24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C372D64();
        sub_22C590A30();
      }

      sub_22C79D048();
      if (v26)
      {
        sub_22C36DAD0();
        sub_22C590A30();
        sub_22C79D078(v29);
      }

      v27 = sub_22C36B6D8();
      v28(v27);
    }
  }

  sub_22C38AB44();
  sub_22C36FB20();
}

void sub_22C7944D8()
{
  sub_22C370030();
  sub_22C387550();
  v6 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  sub_22C369914(v6);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v7);
  sub_22C79D010();
  sub_22C9093BC();
  sub_22C369824();
  MEMORY[0x28223BE20](v8);
  sub_22C37873C(v9, v30);
  v11 = MEMORY[0x28223BE20](v10);
  sub_22C36A344(v11, v12, v13, v14, v15, v16, v17, v18, v31);
  while (v3 != v5)
  {
    v19 = sub_22C90827C();
    sub_22C3699B8(v19);
    v21 = sub_22C3828CC(v1 + ((*(v20 + 80) + 32) & ~*(v20 + 80)));
    v2(v21);
    if (v0)
    {
      sub_22C79D084();
      break;
    }

    sub_22C79D024();
    if (v22)
    {
      sub_22C36DD28(v4, &qword_27D9BB908, &qword_22C910960);
      ++v5;
    }

    else
    {
      v23 = sub_22C36C3A4();
      (qword_22C910960)(v23);
      v24 = sub_22C380034();
      (qword_22C910960)(v24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C372D64();
        sub_22C5903C0();
      }

      sub_22C79D048();
      if (v26)
      {
        sub_22C36DAD0();
        sub_22C5903C0();
        sub_22C79D078(v29);
      }

      v27 = sub_22C36B6D8();
      v28(v27);
    }
  }

  sub_22C38AB44();
  sub_22C36FB20();
}

void sub_22C7946DC()
{
  sub_22C370030();
  sub_22C387550();
  v6 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  sub_22C369914(v6);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v7);
  sub_22C79D010();
  sub_22C9093BC();
  sub_22C369824();
  MEMORY[0x28223BE20](v8);
  sub_22C37873C(v9, v30);
  v11 = MEMORY[0x28223BE20](v10);
  sub_22C36A344(v11, v12, v13, v14, v15, v16, v17, v18, v31);
  while (v3 != v5)
  {
    v19 = sub_22C900B4C();
    sub_22C3699B8(v19);
    v21 = sub_22C3828CC(v1 + ((*(v20 + 80) + 32) & ~*(v20 + 80)));
    v2(v21);
    if (v0)
    {
      sub_22C79D084();
      break;
    }

    sub_22C79D024();
    if (v22)
    {
      sub_22C36DD28(v4, &qword_27D9BB908, &qword_22C910960);
      ++v5;
    }

    else
    {
      v23 = sub_22C36C3A4();
      (qword_22C910960)(v23);
      v24 = sub_22C380034();
      (qword_22C910960)(v24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C372D64();
        sub_22C5903C0();
      }

      sub_22C79D048();
      if (v26)
      {
        sub_22C36DAD0();
        sub_22C5903C0();
        sub_22C79D078(v29);
      }

      v27 = sub_22C36B6D8();
      v28(v27);
    }
  }

  sub_22C38AB44();
  sub_22C36FB20();
}

void sub_22C7948E0()
{
  sub_22C370030();
  sub_22C387550();
  v4 = &qword_27D9C00A0;
  v5 = sub_22C3A5908(&qword_27D9C00A0, &qword_22C925E90);
  sub_22C369914(v5);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v6);
  v7 = sub_22C79D010();
  type metadata accessor for QueryDecorationTupleParameter(v7);
  sub_22C369824();
  MEMORY[0x28223BE20](v8);
  sub_22C3698E4();
  sub_22C3857BC();
  v10 = MEMORY[0x28223BE20](v9);
  sub_22C37FA78(v10, v11, v12, v13, v14, v15, v16, v17, v30);
  v18 = 0;
  v19 = *(v1 + 16);
  while (v19 != v18)
  {
    DecorationEntity = type metadata accessor for QueryDecorationEntity(0);
    sub_22C3699B8(DecorationEntity);
    sub_22C3817EC();
    v2();
    if (v0)
    {
      sub_22C79D084();
      break;
    }

    v21 = sub_22C79D024();
    if (v23)
    {
      sub_22C36DD28(v3, &qword_27D9C00A0, &qword_22C925E90);
      ++v18;
    }

    else
    {
      sub_22C386AE8(v21, v22, type metadata accessor for QueryDecorationTupleParameter);
      sub_22C382DE4();
      v24 = sub_22C385FC4();
      if ((v24 & 1) == 0)
      {
        sub_22C36D270();
        sub_22C595FAC();
        v4 = v29;
      }

      sub_22C79D05C();
      if (v25)
      {
        sub_22C376978();
        sub_22C595FAC();
      }

      ++v18;
      sub_22C375B4C();
      sub_22C3737EC();
      sub_22C79CFB4(v28, v26 + v27 * v4, type metadata accessor for QueryDecorationTupleParameter);
      v4 = &qword_27D9C00A0;
    }
  }

  sub_22C38AB44();
  sub_22C36FB20();
}

void sub_22C794B1C()
{
  sub_22C370030();
  v3 = v2;
  v5 = v4;
  v6 = sub_22C3A5908(&qword_27D9BD2A8, &qword_22C920540);
  sub_22C369914(v6);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v7);
  sub_22C37F348();
  v8 = sub_22C9037EC();
  sub_22C369824();
  MEMORY[0x28223BE20](v9);
  sub_22C3698E4();
  sub_22C3857BC();
  MEMORY[0x28223BE20](v10);
  sub_22C36BA64();
  sub_22C79D0F8(v11);
  v12 = 0;
  v13 = *(v3 + 16);
  v28 = (v14 + 32);
  v15 = v3 + 32;
  v31 = MEMORY[0x277D84F90];
  for (i = v3 + 32; ; v15 = i)
  {
    v16 = ~v12;
    v17 = v15 + 40 * v12;
    v18 = v13 - v12;
    if (!v18)
    {
      break;
    }

    while (1)
    {
      v5(v17);
      if (v0)
      {
        sub_22C79D084();
        goto LABEL_15;
      }

      if (sub_22C370B74(v1, 1, v8) != 1)
      {
        break;
      }

      sub_22C36DD28(v1, &qword_27D9BD2A8, &qword_22C920540);
      --v16;
      v17 += 40;
      if (!--v18)
      {
        goto LABEL_15;
      }
    }

    v19 = *v28;
    (*v28)(v29, v1, v8);
    v26 = v19;
    v19(v30, v29, v8);
    v20 = v31;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C36D270();
      sub_22C590968();
      v20 = v24;
    }

    v21 = *(v20 + 16);
    if (v21 >= *(v20 + 24) >> 1)
    {
      sub_22C37B798();
      sub_22C590968();
      v31 = v25;
    }

    else
    {
      v31 = v20;
    }

    v12 = -v16;
    sub_22C375B4C();
    sub_22C3737EC();
    v26(v22 + v23 * v21, v30, v8);
  }

LABEL_15:
  sub_22C38AB44();
  sub_22C36FB20();
}

void sub_22C794D80()
{
  sub_22C370030();
  v2 = v1;
  v38 = v3;
  v39 = sub_22C9093BC();
  sub_22C369824();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  v9 = v8 - v7;
  v10 = v2 + 56;
  sub_22C36D280();
  v13 = v12 & v11;
  v15 = (v14 + 63) >> 6;
  v42 = v2;

  v16 = 0;
  v37 = MEMORY[0x277D84F90];
  while (v13)
  {
    v17 = v39;
LABEL_9:
    (*(v5 + 16))(v9, *(v42 + 48) + *(v5 + 72) * (__clz(__rbit64(v13)) | (v16 << 6)), v17);
    v38(&v40, v9);
    if (v0)
    {
      v32 = sub_22C37E7D4();
      v33(v32);

LABEL_17:

      sub_22C36FB20();
      return;
    }

    v13 &= v13 - 1;
    v19 = sub_22C37E7D4();
    v20(v19);
    v21 = v41;
    if (v41)
    {
      v36 = v40;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_22C377B6C();
        sub_22C590270(v26, v27, v28, v29);
        v37 = v30;
      }

      v23 = *(v37 + 16);
      v22 = *(v37 + 24);
      v24 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        v34 = *(v37 + 16);
        v35 = v23 + 1;
        sub_22C590270(v22 > 1, v23 + 1, 1, v37);
        v23 = v34;
        v24 = v35;
        v37 = v31;
      }

      *(v37 + 16) = v24;
      v25 = v37 + 16 * v23;
      *(v25 + 32) = v36;
      *(v25 + 40) = v21;
    }
  }

  v17 = v39;
  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v15)
    {
      goto LABEL_17;
    }

    v13 = *(v10 + 8 * v18);
    ++v16;
    if (v13)
    {
      v16 = v18;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_22C794FBC()
{
  sub_22C370030();
  sub_22C387550();
  v4 = &qword_27D9C00D0;
  v5 = sub_22C3A5908(&qword_27D9C00D0, &qword_22C925EB8);
  sub_22C369914(v5);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v6);
  v7 = sub_22C79D010();
  type metadata accessor for QueryDecorationDynamicEnumerationQuery(v7);
  sub_22C369824();
  MEMORY[0x28223BE20](v8);
  sub_22C3698E4();
  sub_22C3857BC();
  v10 = MEMORY[0x28223BE20](v9);
  sub_22C37FA78(v10, v11, v12, v13, v14, v15, v16, v17, v30);
  v18 = 0;
  v19 = *(v1 + 16);
  while (v19 != v18)
  {
    v20 = sub_22C90969C();
    sub_22C3699B8(v20);
    sub_22C3817EC();
    v2();
    if (v0)
    {
      sub_22C79D084();
      break;
    }

    v21 = sub_22C79D024();
    if (v23)
    {
      sub_22C36DD28(v3, &qword_27D9C00D0, &qword_22C925EB8);
      ++v18;
    }

    else
    {
      sub_22C386AE8(v21, v22, type metadata accessor for QueryDecorationDynamicEnumerationQuery);
      sub_22C382DE4();
      v24 = sub_22C385FC4();
      if ((v24 & 1) == 0)
      {
        sub_22C36D270();
        sub_22C592D78();
        v4 = v29;
      }

      sub_22C79D05C();
      if (v25)
      {
        sub_22C376978();
        sub_22C592D78();
      }

      ++v18;
      sub_22C375B4C();
      sub_22C3737EC();
      sub_22C79CFB4(v28, v26 + v27 * v4, type metadata accessor for QueryDecorationDynamicEnumerationQuery);
      v4 = &qword_27D9C00D0;
    }
  }

  sub_22C38AB44();
  sub_22C36FB20();
}

void sub_22C7951F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_22C388D90();
  a21 = v25;
  a22 = v26;
  sub_22C37BF7C();
  v27 = 0;
  v29 = *(v28 + 16);
  v30 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v29 == v27)
    {
      goto LABEL_13;
    }

    if (v27 >= v29)
    {
      break;
    }

    v31 = *(sub_22C9093BC() - 8);
    v32 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      goto LABEL_15;
    }

    v24(&a12, v23 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v27);
    if (v22)
    {

LABEL_13:
      sub_22C79D104();
      return;
    }

    v33 = a12;
    ++v27;
    if (a12)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22C36D270();
        sub_22C596CD0();
        v30 = v36;
      }

      v34 = *(v30 + 16);
      v35 = v34 + 1;
      if (v34 >= *(v30 + 24) >> 1)
      {
        sub_22C37B798();
        sub_22C596CD0();
        v35 = v34 + 1;
        v30 = v37;
      }

      *(v30 + 16) = v35;
      *(v30 + 8 * v34 + 32) = v33;
      v27 = v32;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

uint64_t sub_22C79533C()
{
  v0 = sub_22C9001FC();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  sub_22C9001BC();
  sub_22C79C97C(&qword_27D9C0068, MEMORY[0x277CC8B30], MEMORY[0x277CC8B48]);
  sub_22C90A93C();
  sub_22C90A97C();
  sub_22C79C97C(&qword_27D9C0070, MEMORY[0x277CC8C20], MEMORY[0x277CC8C30]);
  v7 = sub_22C90A0BC();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  return v7 & 1;
}

uint64_t sub_22C7954F0(uint64_t a1, void *a2)
{
  v48 = a2;
  v43 = sub_22C9001BC();
  v3 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22C3A5908(&qword_27D9BB610, &qword_22C925BC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v37 - v6;
  v8 = sub_22C90021C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v47 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v37 - v12;
  result = sub_22C36E2B8();
  v15 = result;
  v16 = 0;
  v17 = a1 & 0xC000000000000001;
  v50 = a1 & 0xFFFFFFFFFFFFFF8;
  v49 = (v9 + 32);
  v40 = a1;
  v41 = (v3 + 8);
  v44 = (v9 + 8);
  v45 = a1 & 0xC000000000000001;
  v38 = (v9 + 16);
  v39 = v9;
  v46 = result;
  while (v15 != v16)
  {
    if (v17)
    {
      result = MEMORY[0x2318B8460](v16, a1);
    }

    else
    {
      if (v16 >= *(v50 + 16))
      {
        goto LABEL_21;
      }
    }

    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      return result;
    }

    sub_22C797AEC(result, v18, v19, v20, v21, v22, v23, v24, v37[0], v37[1], v38, v39, v40, v41, v42, v43, v44, v45, v46, v47);
    if (sub_22C370B74(v7, 1, v8) == 1)
    {
      sub_22C36DD28(v7, &qword_27D9BB610, &qword_22C925BC0);
    }

    else
    {
      v25 = *v49;
      (*v49)(v13, v7, v8);
      v26 = v42;
      sub_22C90019C();
      v27 = sub_22C9001AC();
      (*v41)(v26, v43);
      if (v27 <= 0)
      {
        (*v44)(v13, v8);
      }

      else
      {
        (*v38)(v47, v13, v8);
        v28 = v48;
        v29 = *v48;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v28 = v29;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22C59552C();
          v29 = v35;
          *v48 = v35;
        }

        v31 = *(v29 + 16);
        if (v31 >= *(v29 + 24) >> 1)
        {
          sub_22C59552C();
          *v48 = v36;
        }

        v32 = v39;
        (*(v39 + 8))(v13, v8);
        v33 = v47;
        v34 = *v48;
        *(v34 + 16) = v31 + 1;
        v25((v34 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v31), v33, v8);
        a1 = v40;
      }

      v17 = v45;
      v15 = v46;
    }

    ++v16;
  }

  return result;
}

uint64_t PayloadLayout.__allocating_init(heading:key:nestedLayout:leafString:leafDictionary:leafCollection:indent:preserveHeaderFormatting:preserveKeyFormatting:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = a8;
  v17 = swift_allocObject();
  PayloadLayout.init(heading:key:nestedLayout:leafString:leafDictionary:leafCollection:indent:preserveHeaderFormatting:preserveKeyFormatting:)(a1, a2, a3, a4, a5, a6, a7, v9, a9);
  return v17;
}

uint64_t PayloadLayout.init(heading:key:nestedLayout:leafString:leafDictionary:leafCollection:indent:preserveHeaderFormatting:preserveKeyFormatting:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, char a9)
{
  v10 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_heading;
  v11 = sub_22C90021C();
  sub_22C36A748();
  sub_22C36C640(v12, v13, v14, v11);
  v15 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_key;
  sub_22C36A748();
  sub_22C36C640(v16, v17, v18, v11);
  v19 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_nestedLayout;
  *(v9 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_nestedLayout) = 0;
  v20 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_leafString;
  sub_22C36A748();
  sub_22C36C640(v21, v22, v23, v11);
  v24 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_leafDictionary;
  *(v9 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_leafDictionary) = 0;
  v25 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_leafCollection;
  *(v9 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_leafCollection) = 0;
  v26 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_indent;
  *(v9 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_indent) = 0;
  v27 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_preserveHeaderFormatting;
  *(v9 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_preserveHeaderFormatting) = 0;
  v28 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_preserveKeyFormatting;
  *(v9 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_preserveKeyFormatting) = 0;
  sub_22C79D0C0(v9 + v10, v38);
  sub_22C795B4C(a1, v9 + v10);
  swift_endAccess();
  sub_22C79D0C0(v9 + v15, v38);
  sub_22C795B4C(a2, v9 + v15);
  swift_endAccess();
  *(v9 + v19) = a3;

  sub_22C79D0C0(v9 + v20, v38);
  sub_22C795B4C(a4, v9 + v20);
  swift_endAccess();
  *(v9 + v24) = a5;

  *(v9 + v25) = a6;

  *(v9 + v26) = a7;
  *(v9 + v27) = a8;
  *(v9 + v28) = a9;
  return v9;
}

uint64_t sub_22C795B4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BB610, &qword_22C925BC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_22C795BBC()
{
  sub_22C36BA7C();
  v2 = v0;
  v3 = sub_22C9001BC();
  sub_22C369824();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  sub_22C37BDA4();
  v7 = sub_22C90021C();
  sub_22C369824();
  v31 = v8;
  MEMORY[0x28223BE20](v9);
  sub_22C369838();
  v12 = v11 - v10;
  v13 = sub_22C3A5908(&qword_27D9BB610, &qword_22C925BC0);
  v14 = sub_22C369914(v13);
  MEMORY[0x28223BE20](v14);
  sub_22C369ABC();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v28 - v19;
  v21 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_nestedLayout;
  if (*(v2 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_nestedLayout))
  {
    goto LABEL_6;
  }

  v29 = v5;
  v30 = v3;
  v22 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_leafString;
  sub_22C36CA70(v2 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_leafString, &v33);
  sub_22C4E719C(v2 + v22, v20, &qword_27D9BB610, &qword_22C925BC0);
  LODWORD(v22) = sub_22C370B74(v20, 1, v7);
  sub_22C36DD28(v20, &qword_27D9BB610, &qword_22C925BC0);
  if (v22 != 1 || *(v2 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_leafDictionary) || *(v2 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_leafCollection))
  {
    v5 = v29;
    v3 = v30;
    if (!*(v2 + v21))
    {
LABEL_7:
      v25 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_leafString;
      sub_22C36CA70(v2 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_leafString, &v32);
      sub_22C4E719C(v2 + v25, v17, &qword_27D9BB610, &qword_22C925BC0);
      sub_22C36D0A8(v17, 1, v7);
      if (v26)
      {
        sub_22C36DD28(v17, &qword_27D9BB610, &qword_22C925BC0);
      }

      else
      {
        v27 = v31;
        (*(v31 + 32))(v12, v17, v7);
        sub_22C90019C();
        sub_22C9001AC();
        (*(v5 + 8))(v1, v3);
        (*(v27 + 8))(v12, v7);
      }

      goto LABEL_10;
    }

LABEL_6:

    sub_22C795BBC();
    v24 = v23;

    if ((v24 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

LABEL_10:
  sub_22C36CC48();
}

uint64_t sub_22C795EF0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_leafString;
  sub_22C36CA70(v1 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_leafString, v5);
  return sub_22C4E719C(v1 + v3, a1, &qword_27D9BB610, &qword_22C925BC0);
}

uint64_t sub_22C795FB0(uint64_t a1, char a2, uint64_t *a3, void *a4)
{
  v9 = sub_22C3A5908(&qword_27D9BB610, &qword_22C925BC0);
  sub_22C369914(v9);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v10);
  v12 = &v21[-v11 - 8];
  v13 = sub_22C90021C();
  sub_22C36985C();
  (*(v14 + 16))(v12, a1, v13);
  sub_22C36BECC();
  sub_22C36C640(v15, v16, v17, v13);
  v18 = *a3;
  sub_22C79D0C0(v4 + v18, v21);
  sub_22C795B4C(v12, v4 + v18);
  swift_endAccess();
  *(v4 + *a4) = a2;
}

uint64_t sub_22C7960DC(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, void *a5)
{
  v9 = sub_22C90026C();
  v10 = sub_22C369914(v9);
  MEMORY[0x28223BE20](v10);
  sub_22C369838();
  v11 = sub_22C3A5908(&qword_27D9BB610, &qword_22C925BC0);
  sub_22C369914(v11);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v12);
  v14 = &v22[-v13 - 8];

  sub_22C90025C();
  sub_22C90022C();
  sub_22C90021C();
  sub_22C36BECC();
  sub_22C36C640(v15, v16, v17, v18);
  v19 = *a4;
  sub_22C79D0C0(v5 + v19, v22);
  sub_22C795B4C(v14, v5 + v19);
  swift_endAccess();
  *(v5 + *a5) = a3;
}

uint64_t sub_22C796224(uint64_t a1, uint64_t *a2)
{
  v4 = sub_22C3A5908(&qword_27D9BB610, &qword_22C925BC0);
  sub_22C369914(v4);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v5);
  v7 = &v17[-v6 - 8];
  v8 = sub_22C90021C();
  sub_22C36985C();
  v9 = sub_22C36BC58();
  v10(v9);
  sub_22C36BECC();
  sub_22C36C640(v11, v12, v13, v8);
  v14 = *a2;
  sub_22C79D0C0(v2 + v14, v17);
  sub_22C795B4C(v7, v2 + v14);
  swift_endAccess();
}

uint64_t sub_22C796320(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_22C90026C();
  v6 = sub_22C369914(v5);
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  sub_22C37BDA4();
  v7 = sub_22C3A5908(&qword_27D9BB610, &qword_22C925BC0);
  sub_22C369914(v7);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v8);
  v10 = &v18[-v9 - 8];

  sub_22C90025C();
  sub_22C36BC58();
  sub_22C90022C();
  sub_22C90021C();
  sub_22C36BECC();
  sub_22C36C640(v11, v12, v13, v14);
  v15 = *a3;
  sub_22C79D0C0(v3 + v15, v18);
  sub_22C795B4C(v10, v3 + v15);
  swift_endAccess();
}

uint64_t sub_22C79643C(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_nestedLayout) = a1;
}

void sub_22C796494()
{
  sub_22C36BA7C();
  v63 = v0;
  v3 = v2;
  v4 = sub_22C3A5908(&qword_27D9C0050, &qword_22C925D98);
  sub_22C369914(v4);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v5);
  sub_22C37BDA4();
  v6 = sub_22C3A5908(&qword_27D9BB610, &qword_22C925BC0);
  sub_22C369824();
  MEMORY[0x28223BE20](v7);
  sub_22C3698E4();
  v72 = v8;
  sub_22C369930();
  MEMORY[0x28223BE20](v9);
  sub_22C36BA64();
  v66 = v10;
  sub_22C36BA0C();
  v11 = sub_22C90026C();
  v12 = sub_22C369914(v11);
  MEMORY[0x28223BE20](v12);
  sub_22C3698A8();
  sub_22C36BA0C();
  v13 = sub_22C90021C();
  sub_22C369824();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  sub_22C3698E4();
  v67 = v17;
  sub_22C369930();
  MEMORY[0x28223BE20](v18);
  sub_22C36BA64();
  sub_22C79D0F8(v19);
  sub_22C374FE0();
  v73 = v13;
  v64 = v6;
  sub_22C79C97C(v20, v21, MEMORY[0x277CC8C50]);
  v22 = sub_22C909F0C();
  v23 = v3 + 64;
  sub_22C36D280();
  v26 = v25 & v24;
  v28 = (v27 + 63) >> 6;
  v65 = v15;

  v29 = 0;
  v68 = v1;
  v69 = v28;
  v70 = v3;
  v71 = (v15 + 8);
  while (v26)
  {
LABEL_6:
    if (*(*(v3 + 56) + ((v29 << 10) | (16 * __clz(__rbit64(v26)))) + 8))
    {
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      sub_22C90025C();
      sub_22C90022C();
      sub_22C90025C();
      sub_22C90022C();
      sub_22C36BECC();
      sub_22C36C640(v31, v32, v33, v73);
      sub_22C4E7208(v66, v72, &qword_27D9BB610, &qword_22C925BC0);
      swift_isUniquelyReferenced_nonNull_native();
      sub_22C628E64();
      if (__OFADD__(*(v22 + 16), (v35 & 1) == 0))
      {
        goto LABEL_25;
      }

      v36 = v34;
      v37 = v35;
      sub_22C3A5908(&qword_27D9C0058, &qword_22C925DA0);
      sub_22C3813D4();
      if (sub_22C90B15C())
      {
        sub_22C628E64();
        v1 = v68;
        v40 = v71;
        if ((v37 & 1) != (v39 & 1))
        {
          goto LABEL_27;
        }

        v36 = v38;
      }

      else
      {
        v1 = v68;
        v40 = v71;
      }

      if (v37)
      {
        sub_22C375FFC();
        sub_22C795B4C(v72, v52 + v53 * v36);
        v54 = v73;
      }

      else
      {
        sub_22C36ED48(v22 + 8 * (v36 >> 6));
        v54 = v73;
        (*(v65 + 16))(*(v22 + 48) + *(v65 + 72) * v36, v74, v73);
        sub_22C375FFC();
        sub_22C4E7208(v72, v55 + v56 * v36, &qword_27D9BB610, &qword_22C925BC0);
        v57 = *(v22 + 16);
        v58 = __OFADD__(v57, 1);
        v59 = v57 + 1;
        if (v58)
        {
          goto LABEL_26;
        }

        *(v22 + 16) = v59;
      }

      (*v40)(v74, v54);
    }

    else
    {
      v41 = v1;
      swift_bridgeObjectRetain_n();
      sub_22C90025C();
      sub_22C90022C();
      sub_22C628E64();
      if (v43)
      {
        v44 = v42;
        swift_isUniquelyReferenced_nonNull_native();
        sub_22C3A5908(&qword_27D9C0058, &qword_22C925DA0);
        sub_22C3813D4();
        v41 = v68;
        sub_22C90B15C();
        v45 = *(v65 + 8);
        v46 = v73;
        v45(*(v22 + 48) + *(v65 + 72) * v44, v73);
        sub_22C375FFC();
        sub_22C4E7208(v47 + v48 * v44, v68, &qword_27D9BB610, &qword_22C925BC0);
        sub_22C90B17C();
        sub_22C36BECC();
        sub_22C36C640(v49, v50, v51, v64);
      }

      else
      {
        sub_22C36A748();
        sub_22C36C640(v60, v61, v62, v64);
        v45 = *v71;
        v46 = v73;
      }

      v45(v67, v46);
      sub_22C36DD28(v41, &qword_27D9C0050, &qword_22C925D98);
      v1 = v41;
    }

    v3 = v70;
    v26 &= v26 - 1;

    v28 = v69;
  }

  while (1)
  {
    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v30 >= v28)
    {

      *(v63 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_leafDictionary) = v22;

      sub_22C36CC48();
      return;
    }

    v26 = *(v23 + 8 * v30);
    ++v29;
    if (v26)
    {
      v29 = v30;
      goto LABEL_6;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_22C90B54C();
  __break(1u);
}

void sub_22C796AB8()
{
  sub_22C36BA7C();
  v60 = v0;
  v2 = v1;
  sub_22C3A5908(&qword_27D9BB610, &qword_22C925BC0);
  sub_22C369824();
  v54 = v3;
  MEMORY[0x28223BE20](v4);
  sub_22C3698E4();
  v58 = v5;
  sub_22C369930();
  MEMORY[0x28223BE20](v6);
  sub_22C36BA64();
  v56 = v7;
  sub_22C36BA0C();
  v8 = sub_22C90026C();
  v9 = sub_22C369914(v8);
  MEMORY[0x28223BE20](v9);
  sub_22C3698A8();
  v55 = v10;
  sub_22C36BA0C();
  v11 = sub_22C90021C();
  sub_22C369824();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  sub_22C3698A8();
  v59 = v15;
  sub_22C374FE0();
  sub_22C79C97C(v16, v17, MEMORY[0x277CC8C50]);
  v57 = v11;
  v18 = sub_22C909F0C();
  sub_22C36D280();
  v21 = v20 & v19;
  v23 = (v22 + 63) >> 6;
  v51 = v13 + 16;
  v52 = v13;
  v53 = (v13 + 8);

  v24 = 0;
  while (v21)
  {
LABEL_7:
    v26 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    if (*(*(v2 + 56) + 8 * (v26 | (v24 << 6))))
    {
      swift_retain_n();

      sub_22C795BBC();
      if ((v27 & 1) == 0)
      {

        sub_22C90025C();
        v28 = sub_22C90022C();
        v29 = v56;
        sub_22C797AEC(v28, v30, v31, v32, v33, v34, v35, v36, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61);
        sub_22C4E7208(v29, v58, &qword_27D9BB610, &qword_22C925BC0);
        LODWORD(v50) = swift_isUniquelyReferenced_nonNull_native();
        v61 = v18;
        sub_22C628E64();
        HIDWORD(v50) = v38;
        if (__OFADD__(*(v18 + 16), (v38 & 1) == 0))
        {
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          sub_22C90B54C();
          __break(1u);
          return;
        }

        v39 = v37;
        sub_22C3A5908(&qword_27D9C0058, &qword_22C925DA0);
        sub_22C3813D4();
        if (sub_22C90B15C())
        {
          sub_22C628E64();
          v42 = BYTE4(v50);
          if ((BYTE4(v50) & 1) != (v41 & 1))
          {
            goto LABEL_26;
          }

          v39 = v40;
        }

        else
        {
          v42 = BYTE4(v50);
        }

        if (v42)
        {
          v43 = sub_22C3883DC();
          sub_22C795B4C(v43, v44);
        }

        else
        {
          sub_22C36ED48(v18 + 8 * (v39 >> 6));
          (*(v52 + 16))(*(v18 + 48) + *(v52 + 72) * v39, v59, v57);
          v45 = sub_22C3883DC();
          sub_22C4E7208(v45, v46, &qword_27D9BB610, &qword_22C925BC0);
          v47 = *(v18 + 16);
          v48 = __OFADD__(v47, 1);
          v49 = v47 + 1;
          if (v48)
          {
            goto LABEL_25;
          }

          *(v18 + 16) = v49;
        }

        (*v53)(v59, v57);
      }
    }
  }

  while (1)
  {
    v25 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v25 >= v23)
    {
      break;
    }

    v21 = *(v2 + 64 + 8 * v25);
    ++v24;
    if (v21)
    {
      v24 = v25;
      goto LABEL_7;
    }
  }

  if (*(v18 + 16))
  {
    *(v60 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_leafDictionary) = v18;
  }

  sub_22C36CC48();
}

void sub_22C796EF4()
{
  sub_22C36BA7C();
  v43 = v0;
  v2 = v1;
  sub_22C3A5908(&qword_27D9BB610, &qword_22C925BC0);
  sub_22C369824();
  MEMORY[0x28223BE20](v3);
  sub_22C369ABC();
  v6 = v4 - v5;
  MEMORY[0x28223BE20](v7);
  sub_22C36BA64();
  v47 = v8;
  sub_22C36BA0C();
  v9 = sub_22C90026C();
  v10 = sub_22C369914(v9);
  MEMORY[0x28223BE20](v10);
  sub_22C3698A8();
  sub_22C36BA0C();
  v11 = sub_22C90021C();
  sub_22C369824();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  sub_22C3698A8();
  sub_22C79D0F8(v15);
  sub_22C374FE0();
  sub_22C79C97C(v16, v17, MEMORY[0x277CC8C50]);
  v18 = sub_22C909F0C();
  v19 = v2 + 64;
  sub_22C36D280();
  v22 = v21 & v20;
  v24 = (v23 + 63) >> 6;
  v44 = v13;
  v45 = (v13 + 8);

  v25 = 0;
  v46 = v24;
  if (v22)
  {
LABEL_6:
    while (1)
    {
      swift_bridgeObjectRetain_n();

      sub_22C90025C();
      sub_22C90022C();

      sub_22C90025C();
      sub_22C90022C();
      sub_22C36BECC();
      sub_22C36C640(v27, v28, v29, v11);
      sub_22C4E7208(v47, v6, &qword_27D9BB610, &qword_22C925BC0);
      swift_isUniquelyReferenced_nonNull_native();
      sub_22C628E64();
      if (__OFADD__(*(v18 + 16), (v31 & 1) == 0))
      {
        break;
      }

      v32 = v30;
      v33 = v31;
      sub_22C3A5908(&qword_27D9C0058, &qword_22C925DA0);
      sub_22C3813D4();
      if (sub_22C90B15C())
      {
        sub_22C628E64();
        if ((v33 & 1) != (v35 & 1))
        {
          goto LABEL_20;
        }

        v32 = v34;
      }

      if (v33)
      {
        v36 = sub_22C79D0A8();
        sub_22C795B4C(v36, v37);
      }

      else
      {
        sub_22C36ED48(v18 + 8 * (v32 >> 6));
        (*(v44 + 16))(*(v18 + 48) + *(v44 + 72) * v32, v48, v11);
        v38 = sub_22C79D0A8();
        sub_22C4E7208(v38, v39, &qword_27D9BB610, &qword_22C925BC0);
        v40 = *(v18 + 16);
        v41 = __OFADD__(v40, 1);
        v42 = v40 + 1;
        if (v41)
        {
          goto LABEL_19;
        }

        *(v18 + 16) = v42;
      }

      v22 &= v22 - 1;
      (*v45)(v48, v11);

      v24 = v46;
      v19 = v2 + 64;
      if (!v22)
      {
        goto LABEL_2;
      }
    }
  }

  else
  {
LABEL_2:
    while (1)
    {
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v26 >= v24)
      {

        *(v43 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_leafDictionary) = v18;

        sub_22C36CC48();
        return;
      }

      v22 = *(v19 + 8 * v26);
      ++v25;
      if (v22)
      {
        v25 = v26;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  sub_22C90B54C();
  __break(1u);
}

uint64_t sub_22C79735C(uint64_t a1, void *a2)
{
  *(v2 + *a2) = a1;
}

uint64_t sub_22C7973A4(uint64_t a1)
{
  v2 = 0;
  v3 = MEMORY[0x277D84F90];
  v13 = MEMORY[0x277D84F90];
  v4 = *(a1 + 16);
  v5 = a1 + 32;
  while (1)
  {
    if (v4 == v2)
    {
      v12 = v3;

      v11 = sub_22C79C884(v9);
      sub_22C79A050(&v11);
      sub_22C7954F0(v11, &v12);

      *(v1 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_leafCollection) = v12;

      return v1;
    }

    if (v2 >= v4)
    {
      break;
    }

    v6 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_11;
    }

    if (*(v5 + 8 * v2++))
    {
      v8 = swift_retain_n();
      MEMORY[0x2318B7AA0](v8);
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22C90A61C();
      }

      sub_22C36EBF0();
      sub_22C90A65C();

      v2 = v6;
    }
  }

  __break(1u);
LABEL_11:
  __break(1u);

  __break(1u);
  return result;
}

void static PayloadLayout.< infix(_:_:)()
{
  sub_22C36BA7C();
  v75 = v2;
  v4 = v3;
  v73 = sub_22C9001BC();
  sub_22C36985C();
  MEMORY[0x28223BE20](v5);
  sub_22C3698A8();
  v72 = v6;
  v7 = sub_22C3A5908(&qword_27D9BB610, &qword_22C925BC0);
  v8 = sub_22C369914(v7);
  MEMORY[0x28223BE20](v8);
  sub_22C3698E4();
  v71 = v9;
  sub_22C369930();
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v69 - v12;
  MEMORY[0x28223BE20](v11);
  sub_22C38C344();
  MEMORY[0x28223BE20](v14);
  sub_22C36CAC0();
  v15 = sub_22C90021C();
  sub_22C369824();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  sub_22C3698E4();
  v69 = v19;
  sub_22C369930();
  MEMORY[0x28223BE20](v20);
  sub_22C36BA58();
  v74 = v21;
  sub_22C369930();
  MEMORY[0x28223BE20](v22);
  sub_22C36BA58();
  v70 = v23;
  sub_22C369930();
  MEMORY[0x28223BE20](v24);
  v26 = &v69 - v25;
  v27 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_heading;
  sub_22C36CA70(v4 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_heading, &v79);
  sub_22C4E719C(v4 + v27, v1, &qword_27D9BB610, &qword_22C925BC0);
  sub_22C369A54(v1);
  if (v31)
  {
    v0 = v1;
  }

  else
  {
    v28 = *(v17 + 32);
    v28(v26, v1, v15);
    v29 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_heading;
    v30 = v75;
    sub_22C36CA70(v75 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_heading, &v76);
    sub_22C4E719C(v30 + v29, v0, &qword_27D9BB610, &qword_22C925BC0);
    sub_22C369A54(v0);
    if (!v31)
    {
      v44 = v70;
      v28(v70, v0, v15);
      sub_22C90019C();
      sub_22C37396C();
      sub_22C79C97C(v45, v46, MEMORY[0x277CC8B40]);
      sub_22C90A48C();
      v47 = sub_22C90A1BC();
      v49 = v48;

      sub_22C90019C();
      sub_22C90A48C();
      v50 = sub_22C90A1BC();
      v52 = v51;

      if (v47 != v50 || v49 != v52)
      {
        sub_22C36EBF0();
        sub_22C90B4FC();
      }

      v65 = *(v17 + 8);
      v65(v44, v15);
      v66 = sub_22C36D390();
      (v65)(v66);
      goto LABEL_26;
    }

    v32 = sub_22C36D390();
    v33(v32);
  }

  sub_22C36DD28(v0, &qword_27D9BB610, &qword_22C925BC0);
  v34 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_key;
  sub_22C36CA70(v4 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_key, &v78);
  sub_22C4E719C(v4 + v34, v13, &qword_27D9BB610, &qword_22C925BC0);
  sub_22C369A54(v13);
  if (v31)
  {
    v35 = v13;
LABEL_13:
    sub_22C36DD28(v35, &qword_27D9BB610, &qword_22C925BC0);
    goto LABEL_26;
  }

  v36 = *(v17 + 32);
  v36(v74, v13, v15);
  v37 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_key;
  v38 = v75;
  sub_22C36CA70(v75 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_key, &v77);
  v39 = v38 + v37;
  v40 = v71;
  sub_22C4E719C(v39, v71, &qword_27D9BB610, &qword_22C925BC0);
  sub_22C369A54(v40);
  if (v41)
  {
    v42 = sub_22C36D390();
    v43(v42);
    v35 = v40;
    goto LABEL_13;
  }

  v54 = v69;
  v55 = sub_22C38A024();
  (v36)(v55);
  sub_22C90019C();
  sub_22C37396C();
  sub_22C79C97C(v56, v57, MEMORY[0x277CC8B40]);
  sub_22C90A48C();
  v58 = sub_22C90A1BC();
  v60 = v59;

  sub_22C90019C();
  sub_22C90A48C();
  v61 = sub_22C90A1BC();
  v63 = v62;

  if (v58 != v61 || v60 != v63)
  {
    sub_22C36BC58();
    sub_22C90B4FC();
  }

  v67 = *(v17 + 8);
  v67(v54, v15);
  v68 = sub_22C36D390();
  (v67)(v68);
LABEL_26:
  sub_22C36CC48();
}

void sub_22C797AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v246 = sub_22C9001FC();
  sub_22C369824();
  v243 = v26;
  MEMORY[0x28223BE20](v27);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v28);
  sub_22C36BA64();
  v244 = v29;
  v30 = sub_22C3A5908(&qword_27D9C0060, &unk_22C925DA8);
  v31 = sub_22C369914(v30);
  MEMORY[0x28223BE20](v31);
  sub_22C369ABC();
  v34 = v32 - v33;
  MEMORY[0x28223BE20](v35);
  sub_22C36CAC0();
  v254 = sub_22C9001BC();
  sub_22C369824();
  v235 = v36;
  MEMORY[0x28223BE20](v37);
  sub_22C3698A8();
  v253 = v38;
  v39 = sub_22C3A5908(&qword_27D9BB610, &qword_22C925BC0);
  v40 = sub_22C369914(v39);
  MEMORY[0x28223BE20](v40);
  sub_22C369ABC();
  v43 = (v41 - v42);
  MEMORY[0x28223BE20](v44);
  sub_22C36BA58();
  v255 = v45;
  sub_22C369930();
  MEMORY[0x28223BE20](v46);
  sub_22C36BA58();
  v251 = v47;
  sub_22C369930();
  MEMORY[0x28223BE20](v48);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v49);
  v51 = &v224 - v50;
  v52 = sub_22C90026C();
  v53 = sub_22C369914(v52);
  MEMORY[0x28223BE20](v53);
  sub_22C369838();
  v256 = sub_22C90021C();
  sub_22C369824();
  v252 = v54;
  MEMORY[0x28223BE20](v55);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v56);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v57);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v58);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v59);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v60);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v61);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v62);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v63);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v64);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v65);
  sub_22C36BA58();
  v67 = v66;
  sub_22C369930();
  MEMORY[0x28223BE20](v68);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v69);
  sub_22C36BA58();
  sub_22C3698D4();
  v71 = MEMORY[0x28223BE20](v70);
  v73 = &v224 - v72;
  MEMORY[0x28223BE20](v71);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v74);
  sub_22C36BA64();
  v236 = v75;
  sub_22C9001CC();
  v260[3] = 0;
  v261 = 0xE000000000000000;
  v76 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_indent;
  v238 = v20;
  v77 = *(v20 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_indent);
  if ((v77 & 0x8000000000000000) == 0)
  {
    if (v77)
    {
      do
      {
        MEMORY[0x2318B7850](8224, 0xE200000000000000);
        --v77;
      }

      while (v77);
      v78 = v261;
    }

    else
    {
      v78 = 0xE000000000000000;
    }

    sub_22C90025C();
    sub_22C90022C();
    v79 = v238;
    sub_22C795BBC();
    if (v80)
    {

      v81 = *(v252 + 8);
      v82 = v236;
    }

    else
    {
      v239 = v78;
      v83 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_heading;
      sub_22C36CA70(v79 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_heading, v260);
      sub_22C4E719C(v79 + v83, v51, &qword_27D9BB610, &qword_22C925BC0);
      sub_22C36D0A8(v51, 1, v256);
      v231 = v25;
      v249 = v43;
      if (v84)
      {
        sub_22C36DD28(v51, &qword_27D9BB610, &qword_22C925BC0);
      }

      else
      {
        v25 = v252;
        v85 = *(v252 + 32);
        v86 = sub_22C3819EC();
        v85(v86);
        if ((*(v79 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_preserveHeaderFormatting) & 1) == 0)
        {
          sub_22C90019C();
          sub_22C37396C();
          sub_22C79C97C(v87, v88, MEMORY[0x277CC8B40]);
          sub_22C90A48C();
          sub_22C38635C();
          sub_22C7993EC(v89, v90);

          (*(v25 + 8))(v73, v256);
          v91 = sub_22C3819EC();
          v85(v91);
        }

        sub_22C9001CC();
        sub_22C38635C();
        sub_22C9001DC();
        v92 = *(v25 + 8);
        sub_22C38A0E8();
        v92();
        sub_22C374FE0();
        sub_22C79C97C(v93, v94, MEMORY[0x277CC8C38]);
        sub_22C36EBF0();
        sub_22C90020C();
        v95 = sub_22C36EBF0();
        (v92)(v95);
        (v92)(v73, v43);
        v79 = v238;
        sub_22C386DC0();
      }

      v96 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_key;
      sub_22C36CA70(v79 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_key, &v259);
      v97 = v79 + v96;
      v98 = v248;
      sub_22C4E719C(v97, v248, &qword_27D9BB610, &qword_22C925BC0);
      sub_22C36D0A8(v98, 1, v256);
      v99 = v247;
      if (v84)
      {
        sub_22C36DD28(v98, &qword_27D9BB610, &qword_22C925BC0);
        v100 = v252;
      }

      else
      {
        v101 = v252;
        v102 = *(v252 + 32);
        v102(v67, v98, v256);
        sub_22C795BBC();
        if (v103)
        {
          v104 = sub_22C79D0D8();
          v105(v104, v256);
          v100 = v101;
        }

        else
        {
          if ((*(v79 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_preserveKeyFormatting) & 1) == 0)
          {
            sub_22C38C4AC();
            sub_22C799564();
            sub_22C79D0D8();
            sub_22C38A0E8();
            v106();
            v102(v67, v79, v43);
          }

          v25 = v232;
          sub_22C9001DC();
          v107 = v226;
          sub_22C9001CC();
          sub_22C38635C();
          sub_22C38A024();
          sub_22C9001DC();
          v100 = v252;
          v108 = *(v252 + 8);
          sub_22C38A0E8();
          v108();
          v109 = sub_22C38A024();
          (v108)(v109);
          sub_22C79D09C();
          sub_22C9001EC();
          v110 = sub_22C36EBF0();
          (v108)(v110);
          (v108)(v67, v107);
          v99 = v247;
          sub_22C386DC0();
        }
      }

      v111 = v255;
      v112 = v251;
      if (*(v238 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_nestedLayout))
      {

        sub_22C797AEC(v113, v114, v115, v116, v117, v118, v119, v120, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235);
        sub_22C36D0A8(v112, 1, v256);
        if (v84)
        {

          sub_22C36DD28(v112, &qword_27D9BB610, &qword_22C925BC0);
        }

        else
        {
          v121 = v112;
          v122 = v256;
          (*(v100 + 32))(v240, v121, v256);
          sub_22C79D09C();
          sub_22C9001EC();

          v123 = sub_22C79D0D8();
          v124(v123, v122);
        }
      }

      v125 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_leafString;
      v126 = v238;
      sub_22C36CA70(v238 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_leafString, &v258);
      sub_22C4E719C(v126 + v125, v111, &qword_27D9BB610, &qword_22C925BC0);
      sub_22C36D0A8(v111, 1, v256);
      if (v84)
      {
        sub_22C36DD28(v111, &qword_27D9BB610, &qword_22C925BC0);
        v127 = v252;
      }

      else
      {
        v127 = v252;
        v128 = v256;
        (*(v252 + 32))(v241, v111, v256);
        sub_22C79D09C();
        sub_22C9001EC();
        v129 = sub_22C79D0D8();
        v130(v129, v128);
      }

      v131 = v235;
      if (*(v126 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_leafDictionary))
      {
        v250 = v21;

        v133 = sub_22C470360(v132);

        v257 = v133;
        sub_22C79A0CC(&v257);
        v224 = 0;
        v134 = v34;

        v135 = 0;
        v136 = (v127 + 32);
        v137 = v257;
        v239 = v243 + 1;
        v243 = (v235 + 8);
        v225 = MEMORY[0x277D84F90];
        v251 = (v127 + 8);
        v138 = *(v257 + 16);
        v139 = v230;
        v25 = v99;
        v248 = v138;
        v242 = v34;
        v241 = v257;
        v76 = &a10;
        v240 = v136;
        while (1)
        {
          if (v135 == v138)
          {
            sub_22C3A5908(&qword_27D9BACD8, &unk_22C914820);
            v140 = v134;
            sub_22C36A748();
            sub_22C36C640(v141, v142, v143, v144);
            v145 = v138;
          }

          else
          {
            if ((v135 & 0x8000000000000000) != 0)
            {
LABEL_74:
              __break(1u);
LABEL_75:
              __break(1u);
              goto LABEL_76;
            }

            v76 = *(v137 + 16);
            if (v135 >= v76)
            {
              goto LABEL_75;
            }

            v146 = sub_22C3A5908(&qword_27D9BACD8, &unk_22C914820);
            v140 = v134;
            sub_22C4E719C(v137 + ((*(*(v146 - 8) + 80) + 32) & ~*(*(v146 - 8) + 80)) + *(*(v146 - 8) + 72) * v135, v134, &qword_27D9BACD8, &unk_22C914820);
            v145 = v135 + 1;
            sub_22C36BECC();
            sub_22C36C640(v147, v148, v149, v146);
          }

          v150 = v250;
          sub_22C4E7208(v140, v250, &qword_27D9C0060, &unk_22C925DA8);
          v151 = sub_22C3A5908(&qword_27D9BACD8, &unk_22C914820);
          sub_22C36D0A8(v150, 1, v151);
          if (v84)
          {
            break;
          }

          v255 = v145;
          v152 = *(v151 + 48);
          v153 = *v136;
          v154 = sub_22C38A024();
          v155 = v136;
          v156 = v256;
          v153(v154);
          v157 = v150 + v152;
          v158 = v249;
          sub_22C4E7208(v157, v249, &qword_27D9BB610, &qword_22C925BC0);
          sub_22C36D0A8(v158, 1, v156);
          if (v84)
          {
            (*v251)(v25, v256);
            sub_22C36DD28(v158, &qword_27D9BB610, &qword_22C925BC0);
            v136 = v155;
            v134 = v140;
          }

          else
          {
            v159 = sub_22C36BA00();
            v153(v159);
            v160 = v253;
            sub_22C90019C();
            sub_22C37396C();
            sub_22C79C97C(&qword_27D9C0068, v161, MEMORY[0x277CC8B48]);
            v162 = v139;
            v163 = v244;
            v164 = v254;
            sub_22C90A93C();
            v165 = v245;
            sub_22C90A97C();
            sub_22C79C97C(&qword_27D9C0070, MEMORY[0x277CC8C20], MEMORY[0x277CC8C30]);
            v166 = v246;
            v167 = sub_22C90A0BC();
            v168 = *v239;
            (*v239)(v165, v166);
            v168(v163, v166);
            (*v243)(v160, v164);
            if (v167)
            {
              v169 = *v251;
              v170 = v256;
              (*v251)(v162, v256);
              v25 = v247;
              v169(v247, v170);
              v134 = v242;
              v139 = v162;
              v137 = v241;
              v136 = v240;
            }

            else
            {
              v25 = v247;
              sub_22C799564();
              v171 = v226;
              sub_22C9001CC();
              sub_22C38C4AC();
              sub_22C9001DC();
              v172 = *v251;
              v173 = v256;
              (*v251)(v171, v256);
              v174 = sub_22C36BC58();
              (v172)(v174);
              sub_22C9001DC();
              v172(v167, v173);
              v139 = v162;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_22C377B6C();
                sub_22C59552C();
                v225 = v180;
              }

              v175 = *(v225 + 16);
              if (v175 >= *(v225 + 24) >> 1)
              {
                sub_22C59552C();
                v225 = v181;
              }

              v176 = v256;
              v172(v162, v256);
              v172(v25, v176);
              *(v225 + 16) = v175 + 1;
              sub_22C3737EC();
              v179 = v176;
              v136 = v240;
              (v153)(v177 + v178 * v175, v227, v179);
              v134 = v242;
              v137 = v241;
            }
          }

          v76 = &a18;
          v138 = v248;
          v135 = v255;
        }

        sub_22C38C4AC();
        sub_22C9001CC();
        v182 = v229;
        v183 = sub_22C36BD58();
        sub_22C7992D0(v183, v225);

        v184 = *v251;
        (*v251)(v151, v256);
        v185 = v253;
        sub_22C90019C();
        v186 = sub_22C79533C();
        (*v243)(v185, v254);
        if ((v186 & 1) == 0)
        {
          sub_22C79D09C();
          sub_22C9001EC();
        }

        v184(v182, v256);
        sub_22C386DC0();
        v131 = v235;
        v127 = v252;
        v126 = v238;
      }

      else
      {

        v224 = 0;
      }

      v187 = *(v126 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_leafCollection);
      v188 = v234;
      if (v187)
      {
        v255 = *(v187 + 16);
        v251 = (v127 + 16);
        v189 = (v131 + 8);
        v190 = v127;
        v191 = (v127 + 8);
        v249 = (v190 + 32);

        v192 = 0;
        v250 = MEMORY[0x277D84F90];
        while (v255 != v192)
        {
          v76 = *(v187 + 16);
          if (v192 >= v76)
          {
            __break(1u);
            goto LABEL_74;
          }

          v193 = (*(v252 + 80) + 32) & ~*(v252 + 80);
          v194 = *(v252 + 72);
          v195 = v256;
          (*(v252 + 16))(v188, v187 + v193 + v194 * v192, v256);
          v196 = v253;
          v25 = v188;
          sub_22C90019C();
          v197 = sub_22C9001AC();
          (*v189)(v196, v254);
          if (v197 >= 1)
          {
            v198 = *v249;
            (*v249)(v233, v25, v195);
            v199 = v250;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v201 = v199;
            v257 = v199;
            if (isUniquelyReferenced_nonNull_native)
            {
              v188 = v25;
            }

            else
            {
              sub_22C3B7A88(0, *(v199 + 16) + 1, 1);
              v188 = v234;
              v201 = v257;
            }

            v25 = *(v201 + 16);
            v202 = *(v201 + 24);
            if (v25 >= v202 >> 1)
            {
              sub_22C3B7A88(v202 > 1, v25 + 1, 1);
              v188 = v234;
              v201 = v257;
            }

            ++v192;
            *(v201 + 16) = v25 + 1;
            v250 = v201;
            v198(v201 + v193 + v25 * v194, v233, v256);
          }

          else
          {
            (*v191)(v25, v195);
            ++v192;
            v188 = v25;
          }
        }

        MEMORY[0x28223BE20](v203);
        *(&v224 - 2) = v237;
        v204 = v250;
        sub_22C794054();
        v206 = v205;

        sub_22C38635C();
        sub_22C9001CC();
        v207 = v228;
        sub_22C7992D0(&v224, v206);

        v81 = *v191;
        (*v191)(&v224, v256);
        v208 = v253;
        sub_22C90019C();
        LOBYTE(v206) = sub_22C79533C();
        (*v189)(v208, v254);
        if (v206)
        {
          sub_22C38A0E8();
          (v81)(v209);
          v210 = sub_22C79D09C();
          v81(v210, v204);
          sub_22C36A748();
          v214 = v204;
          goto LABEL_70;
        }

        sub_22C79D09C();
        sub_22C9001EC();
        v81(v207, v256);
        sub_22C386DC0();
        v131 = v235;
      }

      v215 = v253;
      v216 = v236;
      sub_22C90019C();
      v217 = sub_22C79533C();
      (*(v131 + 8))(v215, v254);
      if ((v217 & 1) == 0)
      {
        v219 = v252;
        v220 = v256;
        (*(v252 + 32))(v25, v216, v256);
        sub_22C36BECC();
        sub_22C36C640(v221, v222, v223, v220);
        (*(v219 + 8))(v237, v256);
LABEL_71:
        sub_22C36CC48();
        return;
      }

      v82 = v216;
      v81 = *(v252 + 8);
    }

    v218 = v256;
    v81(v82, v256);
    sub_22C36A748();
    v214 = v218;
LABEL_70:
    sub_22C36C640(v211, v212, v213, v214);
    v81(v237, v256);
    goto LABEL_71;
  }

LABEL_76:
  __break(1u);

  __break(1u);
}

uint64_t sub_22C799058(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v3 = sub_22C9001BC();
  MEMORY[0x28223BE20](v3);
  v4 = sub_22C3A5908(&qword_27D9BACD8, &unk_22C914820);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - v6;
  sub_22C4E719C(a1, &v19 - v6, &qword_27D9BACD8, &unk_22C914820);
  v21 = *(v5 + 56);
  sub_22C90019C();
  v8 = sub_22C90021C();
  v9 = *(*(v8 - 8) + 8);
  v9(v7, v8);
  sub_22C79C97C(&qword_27D9BFF78, MEMORY[0x277CC8B30], MEMORY[0x277CC8B40]);
  v20 = sub_22C90A48C();
  v11 = v10;
  sub_22C36DD28(&v7[v21], &qword_27D9BB610, &qword_22C925BC0);
  sub_22C4E719C(v22, v7, &qword_27D9BACD8, &unk_22C914820);
  v12 = *(v5 + 56);
  sub_22C90019C();
  v9(v7, v8);
  v13 = sub_22C90A48C();
  v15 = v14;
  sub_22C36DD28(&v7[v12], &qword_27D9BB610, &qword_22C925BC0);
  if (v20 == v13 && v11 == v15)
  {
    v17 = 0;
  }

  else
  {
    v17 = sub_22C90B4FC();
  }

  return v17 & 1;
}

uint64_t sub_22C7992D0(uint64_t a1, uint64_t a2)
{
  result = sub_22C9001CC();
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = 0;
    sub_22C90021C();
    do
    {
      if (v6)
      {
        sub_22C9001EC();
      }

      result = sub_22C9001EC();
      ++v6;
    }

    while (v5 != v6);
  }

  return result;
}

uint64_t sub_22C799398@<X0>(uint64_t a3@<X8>)
{
  sub_22C9001DC();
  v4 = sub_22C90021C();
  return sub_22C36C640(a3, 0, 1, v4);
}

uint64_t sub_22C7993EC(uint64_t a1, uint64_t a2)
{
  v2 = sub_22C90026C();
  v3 = sub_22C369914(v2);
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  sub_22C90A2CC();
  sub_22C3858B4();
  sub_22C79D0E4();
  sub_22C90AD9C();

  sub_22C3A5908(&qword_27D9C00A8, &qword_22C925E98);
  sub_22C79CEFC();
  sub_22C79CF60();
  v4 = sub_22C90A55C();
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    sub_22C90AD2C();
  }

  sub_22C90025C();
  sub_22C36BD58();
  return sub_22C90022C();
}

uint64_t sub_22C799564()
{
  v0 = sub_22C90026C();
  v1 = sub_22C369914(v0);
  MEMORY[0x28223BE20](v1);
  sub_22C369838();
  sub_22C9001BC();
  sub_22C36985C();
  MEMORY[0x28223BE20](v2);
  sub_22C369838();
  sub_22C37BDA4();
  sub_22C90019C();
  sub_22C37396C();
  sub_22C79C97C(v3, v4, MEMORY[0x277CC8B40]);
  sub_22C36EBF0();
  sub_22C90A48C();
  sub_22C90A2CC();

  sub_22C3858B4();
  sub_22C79D0E4();
  sub_22C90AD9C();

  sub_22C3A5908(&qword_27D9C00A8, &qword_22C925E98);
  sub_22C79CEFC();
  sub_22C79CF60();
  v5 = sub_22C90A55C();
  v7 = v6;

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {

    sub_22C8124CC(1, v5, v7);
    sub_22C90AC8C();

    v9 = sub_22C90A1BC();
    v11 = v10;

    sub_22C862F28(1uLL, v9, v11);
    sub_22C575E6C();

    sub_22C90A35C();

    sub_22C90025C();
    sub_22C36BD58();
    return sub_22C90022C();
  }

  else
  {

    return sub_22C9001CC();
  }
}

uint64_t PayloadLayout.deinit()
{
  sub_22C37AD3C(OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_heading);
  sub_22C37AD3C(OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_key);
  sub_22C37AD3C(OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_leafString);

  v1 = *(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_nestedLayout);
  *(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_nestedLayout) = 0;

  if (v1)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v2 = *(v1 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_nestedLayout);
      swift_retain_n();

      v1 = v2;
    }

    while (v2);
  }

  return v0;
}

uint64_t PayloadLayout.__deallocating_deinit()
{
  PayloadLayout.deinit();

  return swift_deallocClassInstance();
}

void static PayloadLayout.== infix(_:_:)()
{
  sub_22C36BA7C();
  v3 = v2;
  v5 = v4;
  v74 = sub_22C9001BC();
  sub_22C36985C();
  MEMORY[0x28223BE20](v6);
  sub_22C3698A8();
  v73 = v7;
  v8 = sub_22C3A5908(&qword_27D9BB610, &qword_22C925BC0);
  v9 = sub_22C369914(v8);
  MEMORY[0x28223BE20](v9);
  sub_22C3698E4();
  v72 = v10;
  sub_22C369930();
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v68 - v13;
  MEMORY[0x28223BE20](v12);
  sub_22C38C344();
  MEMORY[0x28223BE20](v15);
  v17 = &v68 - v16;
  v18 = sub_22C90021C();
  sub_22C369824();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  sub_22C3698E4();
  v70 = v22;
  sub_22C369930();
  MEMORY[0x28223BE20](v23);
  sub_22C36BA58();
  v75 = v24;
  sub_22C369930();
  MEMORY[0x28223BE20](v25);
  sub_22C36BA58();
  v71 = v26;
  sub_22C369930();
  MEMORY[0x28223BE20](v27);
  sub_22C36CAC0();
  v28 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_heading;
  sub_22C36CA70(v5 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_heading, &v80);
  v76 = v5;
  sub_22C4E719C(v5 + v28, v17, &qword_27D9BB610, &qword_22C925BC0);
  sub_22C369A54(v17);
  if (v33)
  {
    sub_22C36DD28(v17, &qword_27D9BB610, &qword_22C925BC0);
    v29 = v20;
    v30 = v3;
  }

  else
  {
    v31 = *(v20 + 32);
    v31(v1, v17, v18);
    v32 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_heading;
    sub_22C36CA70(v3 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_heading, &v77);
    sub_22C4E719C(v3 + v32, v0, &qword_27D9BB610, &qword_22C925BC0);
    sub_22C369A54(v0);
    v30 = v3;
    if (v33)
    {
      (*(v20 + 8))(v1, v18);
      sub_22C36DD28(v0, &qword_27D9BB610, &qword_22C925BC0);
      v29 = v20;
    }

    else
    {
      v68 = v3;
      v69 = v20;
      v34 = v71;
      v31(v71, v0, v18);
      sub_22C90019C();
      sub_22C37396C();
      sub_22C79C97C(v35, v36, MEMORY[0x277CC8B40]);
      sub_22C90A48C();
      v37 = sub_22C90A1BC();
      v39 = v38;

      sub_22C90019C();
      sub_22C38A024();
      sub_22C90A48C();
      v40 = sub_22C90A1BC();
      v42 = v41;

      if (v37 == v40 && v39 == v42)
      {

        v29 = v69;
        v46 = *(v69 + 8);
        v46(v34, v18);
        v46(v1, v18);
        v30 = v68;
      }

      else
      {
        sub_22C3819EC();
        v44 = sub_22C90B4FC();

        v29 = v69;
        v45 = *(v69 + 8);
        v45(v34, v18);
        v45(v1, v18);
        v30 = v68;
        if ((v44 & 1) == 0)
        {
          goto LABEL_27;
        }
      }
    }
  }

  v47 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_key;
  v48 = v76;
  sub_22C36CA70(v76 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_key, &v79);
  sub_22C4E719C(v48 + v47, v14, &qword_27D9BB610, &qword_22C925BC0);
  sub_22C369A54(v14);
  if (v33)
  {
    v49 = v14;
LABEL_20:
    sub_22C36DD28(v49, &qword_27D9BB610, &qword_22C925BC0);
    goto LABEL_27;
  }

  v50 = *(v29 + 32);
  v51 = v75;
  v50(v75, v14, v18);
  v52 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_key;
  sub_22C36CA70(v30 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_key, &v78);
  v53 = v30 + v52;
  v54 = v72;
  sub_22C4E719C(v53, v72, &qword_27D9BB610, &qword_22C925BC0);
  sub_22C369A54(v54);
  if (v55)
  {
    (*(v29 + 8))(v51, v18);
    v49 = v54;
    goto LABEL_20;
  }

  v56 = v70;
  v57 = sub_22C38A024();
  (v50)(v57);
  sub_22C90019C();
  sub_22C37396C();
  sub_22C79C97C(v58, v59, MEMORY[0x277CC8B40]);
  sub_22C90A48C();
  v60 = sub_22C90A1BC();
  v62 = v61;

  sub_22C90019C();
  sub_22C90A48C();
  v63 = sub_22C90A1BC();
  v65 = v64;

  if (v60 != v63 || v62 != v65)
  {
    sub_22C90B4FC();
  }

  v67 = *(v29 + 8);
  v67(v56, v18);
  v67(v75, v18);
LABEL_27:
  sub_22C36CC48();
}

uint64_t sub_22C799FAC(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (result)
    {
      result = sub_22C90A64C();
      *(result + 16) = v2;
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

uint64_t sub_22C799FF4(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      type metadata accessor for PayloadLayout(0);
      result = sub_22C90A64C();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v1;
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

uint64_t sub_22C79A050(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_22C56C4B0();
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_22C79A180(v6);
  return sub_22C90AFFC();
}

uint64_t sub_22C79A0CC(uint64_t *a1)
{
  v2 = *(sub_22C3A5908(&qword_27D9BACD8, &unk_22C914820) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C56C4C8();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_22C79A260(v7);
  *a1 = v3;
  return result;
}

void sub_22C79A180(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_22C90B45C();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_22C799FF4(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_22C79A92C(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_22C79A3A8(0, v3, 1, a1);
  }
}

uint64_t sub_22C79A260(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22C90B45C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22C3A5908(&qword_27D9BACD8, &unk_22C914820);
        v6 = sub_22C90A64C();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_22C3A5908(&qword_27D9BACD8, &unk_22C914820) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22C79AF54(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_22C79A48C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22C79A3A8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = result;
    v6 = *a4;
    type metadata accessor for PayloadLayout(0);
    v7 = v6 + 8 * v4 - 8;
    v8 = v5 - v4;
    while (2)
    {
      v9 = v8;
      v10 = v7;
      do
      {

        static PayloadLayout.< infix(_:_:)();
        v12 = v11;

        if ((v12 & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v13 = *v10;
        *v10 = v10[1];
        v10[1] = v13;
        --v10;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v7 += 8;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_22C79A48C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v57 = sub_22C9001BC();
  MEMORY[0x28223BE20](v57);
  v56 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_22C3A5908(&qword_27D9BACD8, &unk_22C914820);
  v9 = MEMORY[0x28223BE20](v64);
  v54 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v45 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v45 - v15;
  result = MEMORY[0x28223BE20](v14);
  v20 = &v45 - v19;
  v47 = a2;
  if (a3 != a2)
  {
    v21 = *a4;
    v22 = *(v18 + 72);
    v23 = *a4 + v22 * (a3 - 1);
    v52 = -v22;
    v53 = v21;
    v24 = a1 - a3;
    v46 = v22;
    v25 = v21 + v22 * a3;
    v55 = &v45 - v19;
    while (2)
    {
      v50 = v23;
      v51 = a3;
      v48 = v25;
      v49 = v24;
      v26 = v24;
      v65 = v23;
      while (1)
      {
        v58 = v26;
        v59 = v25;
        sub_22C4E719C(v25, v20, &qword_27D9BACD8, &unk_22C914820);
        sub_22C4E719C(v65, v16, &qword_27D9BACD8, &unk_22C914820);
        sub_22C4E719C(v20, v13, &qword_27D9BACD8, &unk_22C914820);
        v63 = *(v64 + 48);
        sub_22C90019C();
        v27 = sub_22C90021C();
        v28 = *(v27 - 8);
        v61 = *(v28 + 8);
        v62 = v28 + 8;
        v61(v13, v27);
        v60 = sub_22C79C97C(&qword_27D9BFF78, MEMORY[0x277CC8B30], MEMORY[0x277CC8B40]);
        v29 = sub_22C90A48C();
        v30 = v16;
        v32 = v31;
        sub_22C36DD28(&v13[v63], &qword_27D9BB610, &qword_22C925BC0);
        sub_22C4E719C(v30, v13, &qword_27D9BACD8, &unk_22C914820);
        v63 = *(v64 + 48);
        sub_22C90019C();
        v61(v13, v27);
        v33 = sub_22C90A48C();
        v35 = v34;
        sub_22C36DD28(&v13[v63], &qword_27D9BB610, &qword_22C925BC0);
        if (v29 == v33 && v32 == v35)
        {
          break;
        }

        v37 = sub_22C90B4FC();

        sub_22C36DD28(v30, &qword_27D9BACD8, &unk_22C914820);
        v38 = v55;
        result = sub_22C36DD28(v55, &qword_27D9BACD8, &unk_22C914820);
        v16 = v30;
        v20 = v38;
        v40 = v58;
        v39 = v59;
        if (v37)
        {
          if (!v53)
          {
            __break(1u);
            return result;
          }

          v41 = v54;
          sub_22C4E7208(v59, v54, &qword_27D9BACD8, &unk_22C914820);
          v42 = v65;
          swift_arrayInitWithTakeFrontToBack();
          result = sub_22C4E7208(v41, v42, &qword_27D9BACD8, &unk_22C914820);
          v65 = v42 + v52;
          v25 = v39 + v52;
          v43 = __CFADD__(v40, 1);
          v26 = v40 + 1;
          if (!v43)
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      sub_22C36DD28(v30, &qword_27D9BACD8, &unk_22C914820);
      v44 = v55;
      result = sub_22C36DD28(v55, &qword_27D9BACD8, &unk_22C914820);
      v16 = v30;
      v20 = v44;
LABEL_14:
      a3 = v51 + 1;
      v23 = v50 + v46;
      v24 = v49 - 1;
      v25 = v48 + v46;
      if (v51 + 1 != v47)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_22C79A92C(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x277D84F90];
LABEL_92:
    v96 = *result;
    if (!*result)
    {
      goto LABEL_133;
    }

    v5 = v98;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_94:
      v83 = v6;
      v84 = (v6 + 16);
      for (i = *(v6 + 2); i >= 2; *v84 = i)
      {
        if (!*a3)
        {
          goto LABEL_130;
        }

        v86 = &v83[16 * i];
        v87 = *v86;
        v88 = &v84[2 * i];
        v89 = *(v88 + 1);
        sub_22C79BDD8((*a3 + 8 * *v86), (*a3 + 8 * *v88), (*a3 + 8 * v89), v96);
        if (v5)
        {
          break;
        }

        if (v89 < v87)
        {
          goto LABEL_118;
        }

        if (i - 2 >= *v84)
        {
          goto LABEL_119;
        }

        *v86 = v87;
        *(v86 + 1) = v89;
        v90 = *v84 - i;
        if (*v84 < i)
        {
          goto LABEL_120;
        }

        i = *v84 - 1;
        sub_22C56BFF0(v88 + 16, v90, v88);
      }

LABEL_102:

      return;
    }

LABEL_127:
    v6 = sub_22C56BFD8();
    goto LABEL_94;
  }

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    v7 = v5++;
    if (v5 >= v4)
    {
      goto LABEL_22;
    }

    v92 = v6;
    v8 = v7;
    v9 = 8 * v7;
    v10 = *a3 + 8 * v7 + 16;
    type metadata accessor for PayloadLayout(0);

    static PayloadLayout.< infix(_:_:)();
    v12 = v11;

    v93 = v8;
    v13 = v8 + 2;
    do
    {
      v14 = v13;
      if (++v5 >= v4)
      {
        v5 = v4;
        if (v12)
        {
          goto LABEL_8;
        }

LABEL_20:
        v6 = v92;
        v7 = v93;
        goto LABEL_22;
      }

      static PayloadLayout.< infix(_:_:)();
      v16 = v15 & 1;

      v10 += 8;
      v13 = v14 + 1;
    }

    while ((v12 & 1) == v16);
    if ((v12 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_8:
    v7 = v93;
    if (v5 < v93)
    {
      goto LABEL_124;
    }

    if (v93 >= v5)
    {
      v6 = v92;
    }

    else
    {
      v17 = v4 >= v14 ? v14 : v4;
      v18 = 8 * v17 - 8;
      v19 = v5;
      v20 = v93;
      v6 = v92;
      do
      {
        if (v20 != --v19)
        {
          v21 = *a3;
          if (!*a3)
          {
            goto LABEL_131;
          }

          v22 = *(v21 + v9);
          *(v21 + v9) = *(v21 + v18);
          *(v21 + v18) = v22;
        }

        ++v20;
        v18 -= 8;
        v9 += 8;
      }

      while (v20 < v19);
    }

LABEL_22:
    v23 = a3[1];
    if (v5 < v23)
    {
      if (__OFSUB__(v5, v7))
      {
        goto LABEL_123;
      }

      if (v5 - v7 < a4)
      {
        break;
      }
    }

LABEL_39:
    if (v5 < v7)
    {
      goto LABEL_122;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C590218(0, *(v6 + 2) + 1, 1, v6);
      v6 = v81;
    }

    v35 = *(v6 + 2);
    v34 = *(v6 + 3);
    v36 = v35 + 1;
    if (v35 >= v34 >> 1)
    {
      sub_22C590218(v34 > 1, v35 + 1, 1, v6);
      v6 = v82;
    }

    *(v6 + 2) = v36;
    v37 = v6 + 32;
    v38 = &v6[16 * v35 + 32];
    *v38 = v7;
    *(v38 + 1) = v5;
    v96 = *result;
    if (!*result)
    {
      goto LABEL_132;
    }

    if (v35)
    {
      while (1)
      {
        v39 = v36 - 1;
        v40 = &v37[16 * v36 - 16];
        v41 = &v6[16 * v36];
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v42 = *(v6 + 4);
          v43 = *(v6 + 5);
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_59:
          if (v45)
          {
            goto LABEL_109;
          }

          v57 = *v41;
          v56 = *(v41 + 1);
          v58 = __OFSUB__(v56, v57);
          v59 = v56 - v57;
          v60 = v58;
          if (v58)
          {
            goto LABEL_112;
          }

          v61 = *(v40 + 1);
          v62 = v61 - *v40;
          if (__OFSUB__(v61, *v40))
          {
            goto LABEL_115;
          }

          if (__OFADD__(v59, v62))
          {
            goto LABEL_117;
          }

          if (v59 + v62 >= v44)
          {
            if (v44 < v62)
            {
              v39 = v36 - 2;
            }

            goto LABEL_81;
          }

          goto LABEL_74;
        }

        if (v36 < 2)
        {
          goto LABEL_111;
        }

        v64 = *v41;
        v63 = *(v41 + 1);
        v52 = __OFSUB__(v63, v64);
        v59 = v63 - v64;
        v60 = v52;
LABEL_74:
        if (v60)
        {
          goto LABEL_114;
        }

        v66 = *v40;
        v65 = *(v40 + 1);
        v52 = __OFSUB__(v65, v66);
        v67 = v65 - v66;
        if (v52)
        {
          goto LABEL_116;
        }

        if (v67 < v59)
        {
          goto LABEL_88;
        }

LABEL_81:
        if (v39 - 1 >= v36)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (!*a3)
        {
          goto LABEL_129;
        }

        v71 = &v37[16 * v39 - 16];
        v72 = *v71;
        v73 = v39;
        v74 = &v37[16 * v39];
        v75 = *(v74 + 1);
        sub_22C79BDD8((*a3 + 8 * *v71), (*a3 + 8 * *v74), (*a3 + 8 * v75), v96);
        if (v98)
        {
          goto LABEL_102;
        }

        if (v75 < v72)
        {
          goto LABEL_104;
        }

        v76 = v5;
        v5 = v37;
        v77 = v6;
        v78 = *(v6 + 2);
        if (v73 > v78)
        {
          goto LABEL_105;
        }

        *v71 = v72;
        *(v71 + 1) = v75;
        if (v73 >= v78)
        {
          goto LABEL_106;
        }

        v79 = v73;
        v36 = v78 - 1;
        sub_22C56BFF0(v74 + 16, v78 - 1 - v79, v74);
        *(v77 + 2) = v78 - 1;
        v80 = v78 > 2;
        v6 = v77;
        v37 = v5;
        v5 = v76;
        if (!v80)
        {
          goto LABEL_88;
        }
      }

      v46 = &v37[16 * v36];
      v47 = *(v46 - 8);
      v48 = *(v46 - 7);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_107;
      }

      v51 = *(v46 - 6);
      v50 = *(v46 - 5);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_108;
      }

      v53 = *(v41 + 1);
      v54 = v53 - *v41;
      if (__OFSUB__(v53, *v41))
      {
        goto LABEL_110;
      }

      v52 = __OFADD__(v44, v54);
      v55 = v44 + v54;
      if (v52)
      {
        goto LABEL_113;
      }

      if (v55 >= v49)
      {
        v69 = *v40;
        v68 = *(v40 + 1);
        v52 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v52)
        {
          goto LABEL_121;
        }

        if (v44 < v70)
        {
          v39 = v36 - 2;
        }

        goto LABEL_81;
      }

      goto LABEL_59;
    }

LABEL_88:
    v4 = a3[1];
    if (v5 >= v4)
    {
      goto LABEL_92;
    }
  }

  if (__OFADD__(v7, a4))
  {
    goto LABEL_125;
  }

  if (v7 + a4 >= v23)
  {
    v24 = a3[1];
  }

  else
  {
    v24 = v7 + a4;
  }

  if (v24 < v7)
  {
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  if (v5 == v24)
  {
    goto LABEL_39;
  }

  v25 = *a3;
  type metadata accessor for PayloadLayout(0);
  v26 = v25 + 8 * v5 - 8;
  v94 = v7;
  v27 = v7 - v5;
  v96 = v24;
LABEL_32:
  v28 = v27;
  v29 = v26;
  while (1)
  {

    static PayloadLayout.< infix(_:_:)();
    v31 = v30;

    if ((v31 & 1) == 0)
    {
LABEL_37:
      ++v5;
      v26 += 8;
      --v27;
      if (v5 == v96)
      {
        v5 = v96;
        v7 = v94;
        goto LABEL_39;
      }

      goto LABEL_32;
    }

    if (!v25)
    {
      break;
    }

    v32 = *v29;
    *v29 = v29[1];
    v29[1] = v32;
    --v29;
    if (__CFADD__(v28++, 1))
    {
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
}

void sub_22C79AF54(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v151 = a4;
  v153 = a1;
  v174 = sub_22C9001BC();
  MEMORY[0x28223BE20](v174);
  v173 = &v150 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = sub_22C3A5908(&qword_27D9BACD8, &unk_22C914820);
  v163 = *(v183 - 8);
  v6 = MEMORY[0x28223BE20](v183);
  v158 = &v150 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v171 = &v150 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v150 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v150 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v172 = &v150 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v166 = &v150 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v165 = &v150 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  MEMORY[0x28223BE20](v22);
  v25 = &v150 - v23;
  v164 = a3;
  v26 = a3[1];
  if (v26 < 1)
  {
    v28 = MEMORY[0x277D84F90];
LABEL_113:
    v41 = *v153;
    if (!*v153)
    {
      goto LABEL_156;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_115;
    }

    goto LABEL_150;
  }

  v150 = v24;
  v27 = 0;
  v28 = MEMORY[0x277D84F90];
  v29 = &qword_27D9BACD8;
  v162 = v12;
  v175 = v15;
  v152 = &v150 - v23;
  while (1)
  {
    v30 = v27++;
    v155 = v28;
    v154 = v30;
    if (v27 >= v26)
    {
      v41 = v183;
    }

    else
    {
      v176 = v26;
      v31 = v25;
      v32 = *v164;
      v33 = *(v163 + 72);
      v34 = v29;
      v168 = v27;
      v182 = v32 + v33 * v27;
      sub_22C4E719C(v182, v31, v29, &unk_22C914820);
      v181 = v32;
      v35 = v150;
      sub_22C4E719C(v32 + v33 * v30, v150, v29, &unk_22C914820);
      v36 = v152;
      v37 = v167;
      LODWORD(v170) = sub_22C799058(v152, v35);
      v167 = v37;
      if (v37)
      {
        sub_22C36DD28(v35, &qword_27D9BACD8, &unk_22C914820);
        sub_22C36DD28(v36, &qword_27D9BACD8, &unk_22C914820);
LABEL_125:

        return;
      }

      sub_22C36DD28(v35, v34, &unk_22C914820);
      sub_22C36DD28(v36, v34, &unk_22C914820);
      v38 = v30 + 2;
      v39 = v182;
      v40 = v181 + v33 * (v30 + 2);
      v41 = v183;
      v27 = v168;
      v29 = v34;
      v42 = v33;
      v177 = v33;
      v43 = v176;
      while (1)
      {
        v44 = v38;
        if (v27 + 1 >= v43)
        {
          break;
        }

        v180 = v40;
        v181 = v38;
        v168 = v27;
        v45 = v165;
        sub_22C4E719C(v40, v165, v29, &unk_22C914820);
        v182 = v39;
        v46 = v166;
        sub_22C4E719C(v39, v166, v29, &unk_22C914820);
        v47 = v172;
        sub_22C4E719C(v45, v172, v29, &unk_22C914820);
        v179 = *(v41 + 48);
        sub_22C90019C();
        v48 = sub_22C90021C();
        v49 = *(*(v48 - 8) + 8);
        v49(v47, v48);
        sub_22C79C97C(&qword_27D9BFF78, MEMORY[0x277CC8B30], MEMORY[0x277CC8B40]);
        v178 = sub_22C90A48C();
        v51 = v50;
        sub_22C36DD28(v47 + v179, &qword_27D9BB610, &qword_22C925BC0);
        sub_22C4E719C(v46, v47, &qword_27D9BACD8, &unk_22C914820);
        v52 = *(v183 + 48);
        sub_22C90019C();
        v49(v47, v48);
        v53 = sub_22C90A48C();
        v55 = v54;
        sub_22C36DD28(v47 + v52, &qword_27D9BB610, &qword_22C925BC0);
        if (v178 == v53 && v51 == v55)
        {
          v57 = 0;
        }

        else
        {
          v57 = sub_22C90B4FC();
        }

        v15 = v175;

        v29 = &qword_27D9BACD8;
        sub_22C36DD28(v166, &qword_27D9BACD8, &unk_22C914820);
        sub_22C36DD28(v165, &qword_27D9BACD8, &unk_22C914820);
        v58 = v170 ^ v57;
        v43 = v176;
        v42 = v177;
        v44 = v181;
        v40 = v180 + v177;
        v39 = v182 + v177;
        v27 = v168 + 1;
        v38 = v181 + 1;
        v41 = v183;
        v12 = v162;
        if (v58)
        {
          goto LABEL_17;
        }
      }

      v27 = v43;
LABEL_17:
      if (v170)
      {
        if (v27 < v154)
        {
          goto LABEL_149;
        }

        v28 = v155;
        if (v154 < v27)
        {
          if (v43 >= v44)
          {
            v59 = v44;
          }

          else
          {
            v59 = v43;
          }

          v60 = v42 * (v59 - 1);
          v61 = v42 * v59;
          v62 = v154 * v42;
          v63 = v27;
          v64 = v154;
          do
          {
            if (v64 != --v63)
            {
              v65 = *v164;
              if (!*v164)
              {
                goto LABEL_154;
              }

              sub_22C4E7208(v65 + v62, v158, &qword_27D9BACD8, &unk_22C914820);
              v66 = v62 < v60 || v65 + v62 >= (v65 + v61);
              if (v66)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v62 != v60)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_22C4E7208(v158, v65 + v60, &qword_27D9BACD8, &unk_22C914820);
              v28 = v155;
              v42 = v177;
            }

            ++v64;
            v60 -= v42;
            v61 -= v42;
            v62 += v42;
          }

          while (v64 < v63);
          v41 = v183;
          v12 = v162;
          v15 = v175;
          v29 = &qword_27D9BACD8;
        }
      }

      else
      {
        v28 = v155;
      }
    }

    v67 = v164[1];
    if (v27 < v67)
    {
      if (__OFSUB__(v27, v154))
      {
        goto LABEL_146;
      }

      if (v27 - v154 < v151)
      {
        break;
      }
    }

LABEL_61:
    v93 = v154;
    if (v27 < v154)
    {
      goto LABEL_145;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C590218(0, *(v28 + 2) + 1, 1, v28);
      v28 = v139;
    }

    v41 = *(v28 + 2);
    v94 = *(v28 + 3);
    v95 = v41 + 1;
    if (v41 >= v94 >> 1)
    {
      sub_22C590218(v94 > 1, v41 + 1, 1, v28);
      v28 = v140;
    }

    *(v28 + 2) = v95;
    v96 = v28 + 32;
    v97 = &v28[16 * v41 + 32];
    *v97 = v93;
    *(v97 + 1) = v27;
    v182 = *v153;
    if (!v182)
    {
      goto LABEL_155;
    }

    if (v41)
    {
      while (1)
      {
        v98 = v95 - 1;
        v99 = &v96[16 * v95 - 16];
        v100 = &v28[16 * v95];
        if (v95 >= 4)
        {
          break;
        }

        if (v95 == 3)
        {
          v101 = *(v28 + 4);
          v102 = *(v28 + 5);
          v111 = __OFSUB__(v102, v101);
          v103 = v102 - v101;
          v104 = v111;
LABEL_81:
          if (v104)
          {
            goto LABEL_132;
          }

          v116 = *v100;
          v115 = *(v100 + 1);
          v117 = __OFSUB__(v115, v116);
          v118 = v115 - v116;
          v119 = v117;
          if (v117)
          {
            goto LABEL_135;
          }

          v120 = *(v99 + 1);
          v121 = v120 - *v99;
          if (__OFSUB__(v120, *v99))
          {
            goto LABEL_138;
          }

          if (__OFADD__(v118, v121))
          {
            goto LABEL_140;
          }

          if (v118 + v121 >= v103)
          {
            if (v103 < v121)
            {
              v98 = v95 - 2;
            }

            goto LABEL_103;
          }

          goto LABEL_96;
        }

        if (v95 < 2)
        {
          goto LABEL_134;
        }

        v123 = *v100;
        v122 = *(v100 + 1);
        v111 = __OFSUB__(v122, v123);
        v118 = v122 - v123;
        v119 = v111;
LABEL_96:
        if (v119)
        {
          goto LABEL_137;
        }

        v125 = *v99;
        v124 = *(v99 + 1);
        v111 = __OFSUB__(v124, v125);
        v126 = v124 - v125;
        if (v111)
        {
          goto LABEL_139;
        }

        if (v126 < v118)
        {
          goto LABEL_110;
        }

LABEL_103:
        if (v98 - 1 >= v95)
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
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

        if (!*v164)
        {
          goto LABEL_152;
        }

        v130 = v27;
        v131 = &v96[16 * v98 - 16];
        v132 = *v131;
        v133 = &v96[16 * v98];
        v134 = *(v133 + 1);
        v135 = v167;
        sub_22C79BFFC((*v164 + *(v163 + 72) * *v131), (*v164 + *(v163 + 72) * *v133), (*v164 + *(v163 + 72) * v134), v182);
        v167 = v135;
        if (v135)
        {
          goto LABEL_125;
        }

        if (v134 < v132)
        {
          goto LABEL_127;
        }

        v41 = v96;
        v136 = v28;
        v137 = *(v28 + 2);
        if (v98 > v137)
        {
          goto LABEL_128;
        }

        *v131 = v132;
        *(v131 + 1) = v134;
        if (v98 >= v137)
        {
          goto LABEL_129;
        }

        v95 = v137 - 1;
        sub_22C56BFF0(v133 + 16, v137 - 1 - v98, v133);
        *(v136 + 2) = v137 - 1;
        v138 = v137 > 2;
        v28 = v136;
        v27 = v130;
        v29 = &qword_27D9BACD8;
        v96 = v41;
        if (!v138)
        {
          goto LABEL_110;
        }
      }

      v105 = &v96[16 * v95];
      v106 = *(v105 - 8);
      v107 = *(v105 - 7);
      v111 = __OFSUB__(v107, v106);
      v108 = v107 - v106;
      if (v111)
      {
        goto LABEL_130;
      }

      v110 = *(v105 - 6);
      v109 = *(v105 - 5);
      v111 = __OFSUB__(v109, v110);
      v103 = v109 - v110;
      v104 = v111;
      if (v111)
      {
        goto LABEL_131;
      }

      v112 = *(v100 + 1);
      v113 = v112 - *v100;
      if (__OFSUB__(v112, *v100))
      {
        goto LABEL_133;
      }

      v111 = __OFADD__(v103, v113);
      v114 = v103 + v113;
      if (v111)
      {
        goto LABEL_136;
      }

      if (v114 >= v108)
      {
        v128 = *v99;
        v127 = *(v99 + 1);
        v111 = __OFSUB__(v127, v128);
        v129 = v127 - v128;
        if (v111)
        {
          goto LABEL_144;
        }

        if (v103 < v129)
        {
          v98 = v95 - 2;
        }

        goto LABEL_103;
      }

      goto LABEL_81;
    }

LABEL_110:
    v26 = v164[1];
    v12 = v162;
    v15 = v175;
    v25 = v152;
    if (v27 >= v26)
    {
      goto LABEL_113;
    }
  }

  v68 = v154 + v151;
  if (__OFADD__(v154, v151))
  {
    goto LABEL_147;
  }

  if (v68 >= v67)
  {
    v68 = v164[1];
  }

  if (v68 < v154)
  {
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    v28 = sub_22C56BFD8();
LABEL_115:
    v141 = v28 + 16;
    v142 = *(v28 + 2);
    while (v142 >= 2)
    {
      if (!*v164)
      {
        goto LABEL_153;
      }

      v143 = v28;
      v144 = &v28[16 * v142];
      v145 = *v144;
      v146 = &v141[2 * v142];
      v147 = *(v146 + 1);
      v148 = v167;
      sub_22C79BFFC((*v164 + *(v163 + 72) * *v144), (*v164 + *(v163 + 72) * *v146), (*v164 + *(v163 + 72) * v147), v41);
      v167 = v148;
      if (v148)
      {
        break;
      }

      if (v147 < v145)
      {
        goto LABEL_141;
      }

      if (v142 - 2 >= *v141)
      {
        goto LABEL_142;
      }

      *v144 = v145;
      *(v144 + 1) = v147;
      v149 = *v141 - v142;
      if (*v141 < v142)
      {
        goto LABEL_143;
      }

      v142 = *v141 - 1;
      sub_22C56BFF0(v146 + 16, v149, v146);
      *v141 = v142;
      v28 = v143;
    }

    goto LABEL_125;
  }

  if (v27 == v68)
  {
    goto LABEL_61;
  }

  v69 = *v164;
  v70 = *(v163 + 72);
  v71 = *v164 + v70 * (v27 - 1);
  v169 = -v70;
  v72 = v154 - v27;
  v170 = v69;
  v156 = v70;
  v73 = v69 + v27 * v70;
  v157 = v68;
LABEL_47:
  v168 = v27;
  v159 = v73;
  v160 = v72;
  v74 = v72;
  v161 = v71;
  v75 = v71;
  while (1)
  {
    v177 = v73;
    v178 = v74;
    sub_22C4E719C(v73, v15, v29, &unk_22C914820);
    v176 = v75;
    sub_22C4E719C(v75, v12, v29, &unk_22C914820);
    v76 = v172;
    sub_22C4E719C(v15, v172, v29, &unk_22C914820);
    v182 = *(v41 + 48);
    sub_22C90019C();
    v77 = sub_22C90021C();
    v78 = *(v77 - 8);
    v180 = *(v78 + 8);
    v181 = v78 + 8;
    v180(v76, v77);
    v179 = sub_22C79C97C(&qword_27D9BFF78, MEMORY[0x277CC8B30], MEMORY[0x277CC8B40]);
    v79 = sub_22C90A48C();
    v80 = v12;
    v82 = v81;
    sub_22C36DD28(v76 + v182, &qword_27D9BB610, &qword_22C925BC0);
    sub_22C4E719C(v80, v76, v29, &unk_22C914820);
    v83 = *(v183 + 48);
    sub_22C90019C();
    v180(v76, v77);
    v84 = sub_22C90A48C();
    v86 = v85;
    sub_22C36DD28(v76 + v83, &qword_27D9BB610, &qword_22C925BC0);
    if (v79 == v84 && v82 == v86)
    {

      sub_22C36DD28(v80, v29, &unk_22C914820);
      v15 = v175;
      sub_22C36DD28(v175, v29, &unk_22C914820);
      v41 = v183;
      v12 = v80;
      goto LABEL_59;
    }

    v88 = sub_22C90B4FC();

    sub_22C36DD28(v80, v29, &unk_22C914820);
    v15 = v175;
    sub_22C36DD28(v175, v29, &unk_22C914820);
    v12 = v80;
    if ((v88 & 1) == 0)
    {
      v41 = v183;
LABEL_59:
      v27 = v168 + 1;
      v71 = v161 + v156;
      v72 = v160 - 1;
      v73 = v159 + v156;
      if (v168 + 1 == v157)
      {
        v27 = v157;
        v28 = v155;
        goto LABEL_61;
      }

      goto LABEL_47;
    }

    v41 = v183;
    v89 = v178;
    if (!v170)
    {
      break;
    }

    v90 = v177;
    v91 = v171;
    sub_22C4E7208(v177, v171, v29, &unk_22C914820);
    v92 = v176;
    swift_arrayInitWithTakeFrontToBack();
    sub_22C4E7208(v91, v92, v29, &unk_22C914820);
    v75 = v92 + v169;
    v73 = v90 + v169;
    v66 = __CFADD__(v89, 1);
    v74 = v89 + 1;
    if (v66)
    {
      goto LABEL_59;
    }
  }

  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
}

uint64_t sub_22C79BDD8(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = (a3 - a2) / 8;
  if (v8 < v9)
  {
    sub_22C3D874C(a1, (a2 - a1) / 8, a4);
    v10 = &v4[8 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = v5;
      type metadata accessor for PayloadLayout(0);

      static PayloadLayout.< infix(_:_:)();
      v14 = v13;

      if ((v14 & 1) == 0)
      {
        break;
      }

      v15 = v6;
      v16 = v7 == v6;
      v6 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      v5 = v12;
    }

    v15 = v4;
    v16 = v7 == v4;
    v4 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  sub_22C3D874C(a2, (a3 - a2) / 8, a4);
  v10 = &v4[8 * v9];
  v29 = v4;
LABEL_15:
  v17 = v6 - 8;
  v5 -= 8;
  while (v10 > v4 && v6 > v7)
  {
    v19 = v6;
    v20 = v7;
    v21 = v17;
    type metadata accessor for PayloadLayout(0);

    static PayloadLayout.< infix(_:_:)();
    v23 = v22;

    v24 = v5 + 8;
    if (v23)
    {
      v25 = v21;
      v6 = v21;
      v7 = v20;
      v4 = v29;
      if (v24 != v19)
      {
        *v5 = *v25;
        v6 = v25;
      }

      goto LABEL_15;
    }

    if (v10 != v24)
    {
      *v5 = *(v10 - 1);
    }

    v5 -= 8;
    v10 -= 8;
    v17 = v21;
    v7 = v20;
    v4 = v29;
  }

LABEL_28:
  v26 = (v10 - v4) / 8;
  if (v6 != v4 || v6 >= &v4[8 * v26])
  {
    memmove(v6, v4, 8 * v26);
  }

  return 1;
}

uint64_t sub_22C79BFFC(char *a1, char *a2, char *a3, unint64_t a4)
{
  v77 = sub_22C9001BC();
  MEMORY[0x28223BE20](v77);
  v76 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_22C3A5908(&qword_27D9BACD8, &unk_22C914820);
  v9 = MEMORY[0x28223BE20](v84);
  v80 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v67 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v67 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  result = MEMORY[0x28223BE20](v17);
  v22 = *(v21 + 72);
  if (!v22)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return result;
  }

  v23 = a2 - a1;
  if (a2 - a1 == 0x8000000000000000 && v22 == -1)
  {
    goto LABEL_72;
  }

  v25 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v22 == -1)
  {
    goto LABEL_73;
  }

  v74 = &v67 - v19;
  v75 = v20;
  v27 = v23 / v22;
  v87 = a1;
  v86 = a4;
  v28 = v25 / v22;
  if (v23 / v22 < v25 / v22)
  {
    sub_22C3D7998(a1, v23 / v22, a4);
    v72 = a3;
    v73 = a4 + v27 * v22;
    v85 = v73;
    v30 = v74;
    v29 = v75;
    v71 = v22;
    while (1)
    {
      if (a4 >= v73 || a2 >= a3)
      {
        goto LABEL_70;
      }

      v82 = a1;
      v83 = a2;
      sub_22C4E719C(a2, v30, &qword_27D9BACD8, &unk_22C914820);
      v81 = a4;
      sub_22C4E719C(a4, v29, &qword_27D9BACD8, &unk_22C914820);
      sub_22C4E719C(v30, v16, &qword_27D9BACD8, &unk_22C914820);
      v80 = *(v84 + 48);
      sub_22C90019C();
      v32 = sub_22C90021C();
      v79 = *(*(v32 - 8) + 8);
      (v79)(v16, v32);
      sub_22C79C97C(&qword_27D9BFF78, MEMORY[0x277CC8B30], MEMORY[0x277CC8B40]);
      v78 = sub_22C90A48C();
      v34 = v33;
      sub_22C36DD28(&v16[v80], &qword_27D9BB610, &qword_22C925BC0);
      sub_22C4E719C(v29, v16, &qword_27D9BACD8, &unk_22C914820);
      v35 = *(v84 + 48);
      sub_22C90019C();
      (v79)(v16, v32);
      v36 = sub_22C90A48C();
      v38 = v37;
      sub_22C36DD28(&v16[v35], &qword_27D9BB610, &qword_22C925BC0);
      if (v78 == v36 && v34 == v38)
      {

        v29 = v75;
        sub_22C36DD28(v75, &qword_27D9BACD8, &unk_22C914820);
        v30 = v74;
        sub_22C36DD28(v74, &qword_27D9BACD8, &unk_22C914820);
        v41 = v82;
      }

      else
      {
        v40 = sub_22C90B4FC();

        v29 = v75;
        sub_22C36DD28(v75, &qword_27D9BACD8, &unk_22C914820);
        v30 = v74;
        sub_22C36DD28(v74, &qword_27D9BACD8, &unk_22C914820);
        v41 = v82;
        if (v40)
        {
          v42 = v71;
          a2 = (v83 + v71);
          v43 = v82 < v83 || v82 >= a2;
          a4 = v81;
          if (v43)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v82 != v83)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          goto LABEL_37;
        }
      }

      v42 = v71;
      a4 = v81 + v71;
      v44 = v41 < v81 || v41 >= a4;
      a2 = v83;
      if (v44)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v41 != v81)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v86 = a4;
LABEL_37:
      a1 = (v41 + v42);
      v87 = a1;
      a3 = v72;
    }
  }

  v78 = v13;
  sub_22C3D7998(a2, v25 / v22, a4);
  v45 = a4 + v28 * v22;
  v46 = -v22;
  v47 = v45;
  v81 = a4;
  v82 = a1;
  v70 = -v22;
LABEL_41:
  v48 = &a2[v46];
  v79 = a3;
  v68 = v47;
  v83 = a2;
  v71 = &a2[v46];
  while (1)
  {
    if (v45 <= a4)
    {
      v87 = a2;
      v85 = v47;
      goto LABEL_70;
    }

    if (a2 <= a1)
    {
      break;
    }

    v69 = v47;
    v75 = v45;
    v72 = v45 + v46;
    v49 = v78;
    sub_22C4E719C(v45 + v46, v78, &qword_27D9BACD8, &unk_22C914820);
    sub_22C4E719C(v48, v80, &qword_27D9BACD8, &unk_22C914820);
    sub_22C4E719C(v49, v16, &qword_27D9BACD8, &unk_22C914820);
    v50 = v84;
    v74 = *(v84 + 48);
    sub_22C90019C();
    v51 = sub_22C90021C();
    v52 = *(*(v51 - 8) + 8);
    v52(v16, v51);
    sub_22C79C97C(&qword_27D9BFF78, MEMORY[0x277CC8B30], MEMORY[0x277CC8B40]);
    v73 = sub_22C90A48C();
    v54 = v53;
    sub_22C36DD28(&v16[v74], &qword_27D9BB610, &qword_22C925BC0);
    sub_22C4E719C(v80, v16, &qword_27D9BACD8, &unk_22C914820);
    v55 = *(v50 + 48);
    sub_22C90019C();
    v52(v16, v51);
    v56 = sub_22C90A48C();
    v58 = v57;
    sub_22C36DD28(&v16[v55], &qword_27D9BB610, &qword_22C925BC0);
    if (v73 == v56 && v54 == v58)
    {
      v60 = 0;
    }

    else
    {
      v60 = sub_22C90B4FC();
    }

    v46 = v70;
    v61 = v79;
    a3 = &v79[v70];
    sub_22C36DD28(v80, &qword_27D9BACD8, &unk_22C914820);
    sub_22C36DD28(v78, &qword_27D9BACD8, &unk_22C914820);
    a4 = v81;
    a1 = v82;
    a2 = v83;
    if (v60)
    {
      v64 = v61 < v83 || a3 >= v83;
      v65 = v61;
      v66 = v71;
      if (v64)
      {
        swift_arrayInitWithTakeFrontToBack();
        a2 = v66;
        v47 = v69;
        v45 = v75;
      }

      else
      {
        v47 = v69;
        a2 = v71;
        v45 = v75;
        if (v65 != v83)
        {
          v47 = v69;
          swift_arrayInitWithTakeBackToFront();
          a2 = v66;
        }
      }

      goto LABEL_41;
    }

    v62 = v61 < v75 || a3 >= v75;
    v63 = v61;
    v48 = v71;
    if (v62)
    {
      v47 = v72;
      swift_arrayInitWithTakeFrontToBack();
      goto LABEL_59;
    }

    v47 = v72;
    v79 = a3;
    v45 = v72;
    if (v75 != v63)
    {
      v47 = v72;
      swift_arrayInitWithTakeBackToFront();
LABEL_59:
      v79 = a3;
      v45 = v47;
    }
  }

  v87 = a2;
  v85 = v68;
LABEL_70:
  sub_22C83822C(&v87, &v86, &v85);
  return 1;
}

void *sub_22C79C884(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_22C90B1BC();
    if (v3)
    {
      v4 = v3;
      v1 = sub_22C597AC0();
      sub_22C3D319C();
      v6 = v5;

      if (v6 == v4)
      {
        return v1;
      }

      __break(1u);
    }

    return MEMORY[0x277D84F90];
  }

  return (a1 & 0xFFFFFFFFFFFFFF8);
}

uint64_t sub_22C79C97C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for PayloadLayout(uint64_t a1)
{
  result = qword_27D9C0088;
  if (!qword_27D9C0088)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22C79CA18(uint64_t a1)
{
  sub_22C79CEA4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of PayloadLayout.setHeading(heading:)()
{
  return (*(*v0 + 392))();
}

{
  return (*(*v0 + 408))();
}

uint64_t dispatch thunk of PayloadLayout.setHeading(heading:preserveFormatting:)()
{
  return (*(*v0 + 400))();
}

{
  return (*(*v0 + 416))();
}

uint64_t dispatch thunk of PayloadLayout.setKey(key:)()
{
  return (*(*v0 + 424))();
}

{
  return (*(*v0 + 440))();
}

uint64_t dispatch thunk of PayloadLayout.setKey(key:preserveFormatting:)()
{
  return (*(*v0 + 432))();
}

{
  return (*(*v0 + 448))();
}

uint64_t dispatch thunk of PayloadLayout.setString(str:)()
{
  return (*(*v0 + 456))();
}

{
  return (*(*v0 + 464))();
}

uint64_t dispatch thunk of PayloadLayout.setDictionary(dictionary:)()
{
  return (*(*v0 + 480))();
}

{
  return (*(*v0 + 488))();
}

{
  return (*(*v0 + 496))();
}

{
  return (*(*v0 + 504))();
}

uint64_t dispatch thunk of PayloadLayout.setCollection(collection:)()
{
  return (*(*v0 + 512))();
}

{
  return (*(*v0 + 520))();
}

void sub_22C79CEA4(uint64_t a1)
{
  if (!qword_27D9C0098)
  {
    sub_22C90021C();
    v1 = sub_22C90AC6C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D9C0098);
    }
  }
}

unint64_t sub_22C79CEFC()
{
  result = qword_27D9C00B0;
  if (!qword_27D9C00B0)
  {
    sub_22C3AC1A0(&qword_27D9C00A8, &qword_22C925E98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C00B0);
  }

  return result;
}

unint64_t sub_22C79CF60()
{
  result = qword_27D9C00B8;
  if (!qword_27D9C00B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C00B8);
  }

  return result;
}

uint64_t sub_22C79CFB4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22C36985C();
  v4 = sub_22C36BA00();
  v5(v4);
  return a2;
}

uint64_t sub_22C79D084()
{
}

double sub_22C79D0C0(uint64_t a1, uint64_t a2)
{

  swift_beginAccess();
  return result;
}

uint64_t sub_22C79D120@<X0>(uint64_t *a1@<X8>)
{
  v4 = sub_22C9063DC();
  sub_22C369824();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_22C369838();
  v10 = v9 - v8;
  v11 = MEMORY[0x2318B4480]();
  v27 = v1;
  v12 = sub_22C3B259C(sub_22C79D3E4, v26, v11);

  if (!v2)
  {
    v28 = v12;
    sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
    sub_22C3F035C();
    v14 = sub_22C90A04C();
    v16 = v15;

    v17 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v17 = v14 & 0xFFFFFFFFFFFFLL;
    }

    if (!v17)
    {
      sub_22C903F8C();
      v18 = sub_22C9063CC();
      v19 = sub_22C90AADC();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_22C366000, v18, v19, "format() is returning an empty string. This is probably unexpected.", v20, 2u);
        sub_22C3699EC();
      }

      (*(v6 + 8))(v10, v4);
    }

    sub_22C90931C();
    v21 = swift_allocBox();
    *v22 = v14;
    v22[1] = v16;
    sub_22C36BBA8();
    (*(v23 + 104))();
    *a1 = v21;
    v24 = *MEMORY[0x277D72A58];
    sub_22C9093BC();
    sub_22C36BBA8();
    return (*(v25 + 104))(a1, v24);
  }

  return result;
}

uint64_t sub_22C79D39C@<X0>(void *a1@<X2>, uint64_t *a2@<X8>, uint64_t a3@<X0>)
{
  result = sub_22C79D404(a3);
  if (v3)
  {
    *a1 = v3;
  }

  else
  {
    *a2 = result;
    a2[1] = v7;
  }

  return result;
}

uint64_t sub_22C79D404(uint64_t a1)
{
  v202 = a1;
  sub_22C90919C();
  sub_22C369824();
  v186 = v3;
  v187 = v2;
  MEMORY[0x28223BE20](v2);
  sub_22C3698E4();
  v179 = v4;
  sub_22C369930();
  MEMORY[0x28223BE20](v5);
  v180 = v174 - v6;
  sub_22C369930();
  MEMORY[0x28223BE20](v7);
  sub_22C36BA64();
  v189 = v8;
  v9 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  MEMORY[0x28223BE20](v9 - 8);
  sub_22C3698E4();
  v185 = v10;
  sub_22C369930();
  MEMORY[0x28223BE20](v11);
  sub_22C36BA64();
  v195 = v12;
  sub_22C36BA0C();
  v197 = sub_22C9090BC();
  sub_22C369824();
  v200 = v13;
  MEMORY[0x28223BE20](v14);
  sub_22C369838();
  v196 = (v16 - v15);
  sub_22C36BA0C();
  v177 = sub_22C9001BC();
  sub_22C36BBA8();
  MEMORY[0x28223BE20](v17);
  sub_22C369838();
  v174[1] = v19 - v18;
  sub_22C36BA0C();
  v176 = sub_22C90021C();
  sub_22C369824();
  v175 = v20;
  MEMORY[0x28223BE20](v21);
  sub_22C369838();
  v178 = v23 - v22;
  sub_22C36BA0C();
  sub_22C90931C();
  sub_22C369824();
  v198 = v25;
  v199 = v24;
  MEMORY[0x28223BE20](v24);
  sub_22C3698E4();
  v193 = v26;
  sub_22C369930();
  MEMORY[0x28223BE20](v27);
  sub_22C36BA64();
  v194 = v28;
  sub_22C36BA0C();
  sub_22C9063DC();
  sub_22C369824();
  v191 = v30;
  v192 = v29;
  MEMORY[0x28223BE20](v29);
  sub_22C3698E4();
  v190 = v31;
  sub_22C369930();
  MEMORY[0x28223BE20](v32);
  v183 = v174 - v33;
  sub_22C369930();
  MEMORY[0x28223BE20](v34);
  sub_22C36BA64();
  v174[0] = v35;
  sub_22C36BA0C();
  v36 = sub_22C9093BC();
  sub_22C369824();
  v203 = v37;
  MEMORY[0x28223BE20](v38);
  sub_22C3698E4();
  v181 = v39;
  sub_22C369930();
  MEMORY[0x28223BE20](v40);
  v184 = (v174 - v41);
  sub_22C369930();
  v43 = MEMORY[0x28223BE20](v42);
  v45 = v174 - v44;
  v46 = MEMORY[0x28223BE20](v43);
  v48 = v174 - v47;
  MEMORY[0x28223BE20](v46);
  v50 = v174 - v49;
  v51 = sub_22C3A5908(&qword_27D9BF610, &qword_22C922B50);
  MEMORY[0x28223BE20](v51 - 8);
  v53 = v174 - v52;
  v54 = sub_22C9025EC();
  sub_22C369824();
  v56 = v55;
  MEMORY[0x28223BE20](v57);
  sub_22C3698E4();
  v188 = v58;
  sub_22C369930();
  MEMORY[0x28223BE20](v59);
  v61 = (v174 - v60);
  v62 = v1 + *(type metadata accessor for ValueFormatter(0) + 20);
  sub_22C729D78(v202, v53);
  if (sub_22C370B74(v53, 1, v54) == 1)
  {
    sub_22C376B84(v53, &qword_27D9BF610, &qword_22C922B50);
    type metadata accessor for InterpreterError(0);
    sub_22C37875C();
    v65 = sub_22C79E588(v63, v64, &protocol conformance descriptor for InterpreterError);
    sub_22C370620(v65);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return v62;
  }

  v202 = v56;
  v66 = *(v56 + 32);
  v182 = v54;
  v66(v61, v53, v54);
  sub_22C90207C();
  v67 = v203;
  v68 = (*(v203 + 88))(v50, v36);
  v69 = v36;
  v70 = v61;
  if (v68 != *MEMORY[0x277D72A58])
  {
    v199 = v50;
    if (v68 == *MEMORY[0x277D729E8])
    {
      sub_22C389280();
      v78(v45, v199, v36);
      (*(v67 + 96))(v45, v36);
      v79 = swift_projectBox();
      v80 = v196;
      v81 = v197;
      (v200[2])(v196, v79, v197);
      v82 = v195;
      sub_22C90907C();
      v83 = sub_22C90993C();
      if (sub_22C370B74(v82, 1, v83) == 1)
      {
        sub_22C376B84(v82, &qword_27D9BC390, &qword_22C912AC0);
        v62 = v80;
        sub_22C90908C();
        sub_22C385630();
      }

      else
      {
        v62 = v82;
        sub_22C9098BC();
        sub_22C385630();
        sub_22C36BBA8();
        (*(v117 + 8))(v82, v83);
      }

      v118 = v202;
      (v200[1])(v80, v81);
      (*(v118 + 8))(v61, v182);

      v69 = v36;
    }

    else
    {
      if (v68 != *MEMORY[0x277D72A38])
      {
        goto LABEL_42;
      }

      v200 = v61;
      sub_22C389280();
      v88 = v184;
      v89(v184, v199, v36);
      v90 = *(v67 + 96);
      v198 = v36;
      v90(v88, v36);
      v91 = *v88;
      v92 = swift_projectBox();
      v94 = v186;
      v93 = v187;
      v95 = *(v186 + 16);
      v96 = v189;
      v95(v189, v92, v187);
      v97 = v185;
      sub_22C90915C();
      v98 = sub_22C90993C();
      if (sub_22C370B74(v97, 1, v98) != 1)
      {
        v62 = v97;
        sub_22C9098BC();
        sub_22C385630();
        (*(v94 + 8))(v96, v93);
        v123 = sub_22C79E68C();
        v124(v123);
        sub_22C36BBA8();
        (*(v125 + 8))(v97, v98);

        v69 = v198;
        v50 = v199;
        goto LABEL_29;
      }

      v197 = v91;
      sub_22C376B84(v97, &qword_27D9BC390, &qword_22C912AC0);
      v99 = v183;
      sub_22C903F8C();
      v100 = v180;
      v95(v180, v96, v93);
      v101 = sub_22C9063CC();
      v102 = sub_22C90AADC();
      if (os_log_type_enabled(v101, v102))
      {
        v103 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        v196 = v101;
        v105 = v93;
        v106 = v104;
        v204 = v104;
        *v103 = 136315138;
        v107 = v103;
        v97 = v179;
        v95(v179, v100, v105);
        v108 = sub_22C90A1AC();
        v109 = v102;
        v111 = v110;
        v112 = sub_22C79E6A4();
        v97(v112, v105);
        v113 = sub_22C36F9F4(v108, v111, &v204);

        v114 = v107;
        *(v107 + 1) = v113;
        v115 = v196;
        _os_log_impl(&dword_22C366000, v196, v109, "format() not implemented for AppEntity without DisplayRepresentation: %s. Swallowing error and returning an empty string.", v114, 0xCu);
        sub_22C36FF94(v106);
        sub_22C3699EC();
        sub_22C3699EC();

        sub_22C37500C();
        v116(v183);
      }

      else
      {

        v133 = sub_22C79E6A4();
        v97(v133, v93);
        sub_22C37500C();
        v134(v99);
        v105 = v93;
      }

      v69 = v198;
      v97(v189, v105);
      v135 = sub_22C79E68C();
      v136(v135);

      v62 = 0;
    }

    v50 = v199;
LABEL_29:
    (*(v203 + 8))(v50, v69);
    return v62;
  }

  sub_22C389280();
  v71(v48, v50, v36);
  (*(v67 + 96))(v48, v36);
  v62 = swift_projectBox();
  v73 = v198;
  v72 = v199;
  v74 = (*(v198 + 11))(v62, v199);
  if (v74 == *MEMORY[0x277D72988])
  {
    v75 = v194;
    (*(v73 + 2))(v194, v62, v72);
    v76 = sub_22C79E67C();
    v77(v76);
    if (*v75)
    {
      v62 = 1702195828;
    }

    else
    {
      v62 = 0x65736C6166;
    }

    (*(v202 + 8))(v70, v182);
    goto LABEL_28;
  }

  if (v74 == *MEMORY[0x277D72978])
  {
    v84 = sub_22C373984();
    v85(v84);
    v86 = sub_22C79E67C();
    v87(v86);
    v204 = *v61;
    sub_22C76AB50();
    v62 = &v204;
    sub_22C90ADBC();
LABEL_26:
    sub_22C385630();
LABEL_27:
    v130 = sub_22C371D50();
    v131(v130);
LABEL_28:

    goto LABEL_29;
  }

  if (v74 == *MEMORY[0x277D729A8])
  {
    v119 = sub_22C373984();
    v120(v119);
    v121 = sub_22C79E67C();
    v122(v121);
    sub_22C90A84C();
    goto LABEL_26;
  }

  if (v74 == *MEMORY[0x277D729C0])
  {
    v126 = sub_22C373984();
    v127(v126);
    v128 = sub_22C79E67C();
    v129(v128);
    sub_22C90AC1C();
    goto LABEL_26;
  }

  if (v74 == *MEMORY[0x277D729B8])
  {
    v137 = sub_22C371D50();
    v138(v137);
    v139 = v193;
    (*(v73 + 2))(v193, v62, v72);

    (*(v73 + 12))(v139, v72);
    v62 = *v139;
    goto LABEL_29;
  }

  if (v74 == *MEMORY[0x277D72968])
  {
    v140 = sub_22C373984();
    v141(v140);
    v142 = sub_22C79E67C();
    v143(v142);
    v144 = v175;
    v62 = v178;
    v145 = v176;
    (*(v175 + 32))();
    sub_22C90019C();
    sub_22C79E588(&qword_27D9BFF78, MEMORY[0x277CC8B30], MEMORY[0x277CC8B40]);
    sub_22C90A48C();
    sub_22C385630();
    (*(v144 + 8))(v178, v145);
    goto LABEL_27;
  }

  if (v74 == *MEMORY[0x277D729A0])
  {
    sub_22C903F8C();
    v146 = sub_22C9063CC();
    v147 = sub_22C90AADC();
    if (os_log_type_enabled(v146, v147))
    {
      v148 = swift_slowAlloc();
      *v148 = 0;
      _os_log_impl(&dword_22C366000, v146, v147, "format() not implemented for None. Swallowing error and returning an empty string.", v148, 2u);
      sub_22C3699EC();
    }

    sub_22C37500C();
    v149(v174[0]);
    v150 = sub_22C371D50();
    v151(v150);

    v62 = 0;
    goto LABEL_29;
  }

  v199 = v50;

LABEL_42:
  v152 = v69;
  v62 = v190;
  sub_22C903F8C();
  v153 = v202;
  sub_22C389280();
  v154 = v188;
  v155 = v182;
  v156(v188, v61, v182);
  v157 = sub_22C9063CC();
  v158 = sub_22C90AADC();
  if (os_log_type_enabled(v157, v158))
  {
    v159 = v154;
    v160 = swift_slowAlloc();
    v198 = v160;
    v161 = swift_slowAlloc();
    v200 = v70;
    v201 = v161;
    v204 = v161;
    *v160 = 136315138;
    v162 = v155;
    sub_22C90207C();
    v163 = v152;
    v164 = sub_22C90A1AC();
    v166 = v165;
    v167 = *(v153 + 8);
    v167(v159, v162);
    v168 = sub_22C36F9F4(v164, v166, &v204);
    v152 = v163;

    v169 = v198;
    *(v198 + 1) = v168;
    v62 = v169;
    _os_log_impl(&dword_22C366000, v157, v158, "format() not implemented for value: %s", v169, 0xCu);
    sub_22C36FF94(v201);
    v70 = v200;
    sub_22C3699EC();
    sub_22C3699EC();

    (*(v191 + 8))(v190, v192);
    v155 = v182;
  }

  else
  {

    v167 = *(v153 + 8);
    v167(v154, v155);
    sub_22C37500C();
    v170(v62);
  }

  type metadata accessor for InterpreterError(0);
  sub_22C37875C();
  v173 = sub_22C79E588(v171, v172, &protocol conformance descriptor for InterpreterError);
  sub_22C370620(v173);
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  v167(v70, v155);
  (*(v203 + 8))(v199, v152);
  return v62;
}

uint64_t type metadata accessor for ValueFormatter(uint64_t a1)
{
  result = qword_27D9C00D8;
  if (!qword_27D9C00D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C79E588(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22C79E5F8(uint64_t a1)
{
  result = sub_22C906FBC();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for TranscriptValueFetcher(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for ValueResolver(uint64_t a1)
{
  result = qword_27D9C00E8;
  if (!qword_27D9C00E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C79E72C(uint64_t a1)
{
  result = sub_22C9087BC();
  if (v2 <= 0x3F)
  {
    result = sub_22C908AEC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_22C79E7B0(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  v37 = sub_22C9093BC();
  v3 = *(v37 - 8);
  v4 = MEMORY[0x28223BE20](v37);
  v36 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v35 = &v27 - v6;
  v7 = sub_22C906D2C();
  v8 = MEMORY[0x28223BE20](a1);
  v29 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v12 = &v27 - v11;
  v13 = 0;
  v39 = *(result + 16);
  v32 = (v3 + 8);
  v33 = v14 + 16;
  v31 = (v14 + 8);
  v34 = v14;
  v28 = (v14 + 32);
  v30 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v39 == v13)
    {

      return v30;
    }

    if (v13 >= *(result + 16))
    {
      break;
    }

    v15 = (*(v34 + 80) + 32) & ~*(v34 + 80);
    v16 = *(v34 + 72);
    v17 = result;
    (*(v34 + 16))(v12, result + v15 + v16 * v13, v7);
    sub_22C906D1C();
    v18 = v35;
    sub_22C6A5C2C();
    v20 = v19;
    (*v32)(v18, v37);
    if (v20)
    {
      v21 = *v28;
      (*v28)(v29, v12, v7);
      v22 = v30;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C3B7B38(0, *(v22 + 16) + 1, 1);
        v22 = v40;
      }

      v25 = *(v22 + 16);
      v24 = *(v22 + 24);
      v26 = v25 + 1;
      if (v25 >= v24 >> 1)
      {
        v30 = v25 + 1;
        sub_22C3B7B38(v24 > 1, v25 + 1, 1);
        v26 = v30;
        v22 = v40;
      }

      ++v13;
      *(v22 + 16) = v26;
      v30 = v22;
      v21((v22 + v15 + v25 * v16), v29, v7);
      result = v17;
    }

    else
    {
      (*v31)(v12, v7);
      ++v13;
      result = v17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C79EB0C(void (*a1)(uint64_t *__return_ptr, uint64_t))
{
  v21 = a1;
  v2 = sub_22C9093BC();
  sub_22C369824();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v8 = v7 - v6;
  v9 = sub_22C36CC9C();
  v11 = sub_22C3A5908(v9, v10);
  v12 = sub_22C369914(v11);
  MEMORY[0x28223BE20](v12);
  v14 = &v20 - v13;
  v15 = sub_22C370114();
  sub_22C3E8FB4(v15, v16, &qword_27D9BB908, &qword_22C910960);
  if (sub_22C370B74(v14, 1, v2) == 1)
  {
    return 0xF000000000000007;
  }

  v18 = sub_22C36CA88();
  v19(v18);
  v21(&v22, v8);
  if (v1)
  {
    result = (*(v4 + 8))(v8, v2);
    __break(1u);
  }

  else
  {
    (*(v4 + 8))(v8, v2);
    return v22;
  }

  return result;
}

uint64_t sub_22C79ECB8@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v16[1] = a2;
  v17 = a1;
  v7 = sub_22C908ABC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C3A5908(&qword_27D9BC0B0, &unk_22C912AD0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v16 - v12;
  sub_22C3E8FB4(v5, v16 - v12, &qword_27D9BC0B0, &unk_22C912AD0);
  if (sub_22C370B74(v13, 1, v7) == 1)
  {
    v14 = sub_22C90981C();
    return sub_22C36C640(a3, 1, 1, v14);
  }

  else
  {
    (*(v8 + 32))(v10, v13, v7);
    v17(v10);
    result = (*(v8 + 8))(v10, v7);
    if (v4)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_22C79EEA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[17] = a5;
  v6[18] = v5;
  v6[15] = a3;
  v6[16] = a4;
  v6[13] = a1;
  v6[14] = a2;
  v7 = sub_22C3A5908(&qword_27D9BF318, &qword_22C9225A0);
  sub_22C369914(v7);
  v6[19] = sub_22C3699D4();
  v8 = sub_22C906D2C();
  v6[20] = v8;
  sub_22C3699B8(v8);
  v6[21] = v9;
  v6[22] = sub_22C3699D4();
  v10 = type metadata accessor for EnumResolver(0);
  v6[23] = v10;
  sub_22C369914(v10);
  v6[24] = sub_22C36D0D4();
  v6[25] = swift_task_alloc();
  v11 = sub_22C9094EC();
  v6[26] = v11;
  sub_22C3699B8(v11);
  v6[27] = v12;
  v6[28] = sub_22C3699D4();
  v13 = sub_22C90021C();
  v6[29] = v13;
  sub_22C3699B8(v13);
  v6[30] = v14;
  v6[31] = sub_22C3699D4();
  v15 = sub_22C3A5908(&qword_27D9BB138, &qword_22C90DB70);
  sub_22C369914(v15);
  v6[32] = sub_22C36D0D4();
  v6[33] = swift_task_alloc();
  v16 = sub_22C90046C();
  v6[34] = v16;
  sub_22C3699B8(v16);
  v6[35] = v17;
  v6[36] = sub_22C3699D4();
  v18 = type metadata accessor for DateComponentsResolver(0);
  v6[37] = v18;
  sub_22C369914(v18);
  v6[38] = sub_22C36D0D4();
  v6[39] = swift_task_alloc();
  v19 = sub_22C3A5908(&qword_27D9BF328, &qword_22C9225C0);
  sub_22C369914(v19);
  v6[40] = sub_22C3699D4();
  v20 = sub_22C9026BC();
  v6[41] = v20;
  sub_22C3699B8(v20);
  v6[42] = v21;
  v6[43] = sub_22C3699D4();
  v22 = sub_22C907DEC();
  sub_22C369914(v22);
  v6[44] = sub_22C3699D4();
  v23 = sub_22C3A5908(&qword_27D9BF330, &unk_22C923250);
  sub_22C369914(v23);
  v6[45] = sub_22C3699D4();
  v24 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  sub_22C369914(v24);
  v6[46] = sub_22C3699D4();
  v25 = sub_22C90083C();
  v6[47] = v25;
  sub_22C3699B8(v25);
  v6[48] = v26;
  v6[49] = sub_22C36D0D4();
  v6[50] = swift_task_alloc();
  v27 = sub_22C90063C();
  v6[51] = v27;
  sub_22C3699B8(v27);
  v6[52] = v28;
  v6[53] = sub_22C36D0D4();
  v6[54] = swift_task_alloc();
  v29 = sub_22C9021DC();
  v6[55] = v29;
  sub_22C3699B8(v29);
  v6[56] = v30;
  v6[57] = sub_22C3699D4();
  v31 = sub_22C9068CC();
  v6[58] = v31;
  sub_22C3699B8(v31);
  v6[59] = v32;
  v6[60] = sub_22C36D0D4();
  v6[61] = swift_task_alloc();
  v33 = sub_22C90077C();
  v6[62] = v33;
  sub_22C3699B8(v33);
  v6[63] = v34;
  v6[64] = sub_22C36D0D4();
  v6[65] = swift_task_alloc();
  v6[66] = swift_task_alloc();
  v35 = type metadata accessor for DateResolver(0);
  v6[67] = v35;
  sub_22C369914(v35);
  v6[68] = sub_22C36D0D4();
  v6[69] = swift_task_alloc();
  v36 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  sub_22C369914(v36);
  v6[70] = sub_22C36D0D4();
  v6[71] = swift_task_alloc();
  v37 = sub_22C3A5908(&qword_27D9C00F8, &unk_22C925EF8);
  v6[72] = v37;
  sub_22C369914(v37);
  v6[73] = sub_22C3699D4();
  v38 = sub_22C9093BC();
  v6[74] = v38;
  sub_22C3699B8(v38);
  v6[75] = v39;
  v6[76] = sub_22C36D0D4();
  v6[77] = swift_task_alloc();
  v6[78] = swift_task_alloc();
  v6[79] = swift_task_alloc();
  v6[80] = swift_task_alloc();
  v6[81] = swift_task_alloc();
  v40 = sub_22C9063DC();
  v6[82] = v40;
  sub_22C3699B8(v40);
  v6[83] = v41;
  v6[84] = sub_22C36D0D4();
  v6[85] = swift_task_alloc();
  v6[86] = swift_task_alloc();
  v6[87] = swift_task_alloc();
  v6[88] = swift_task_alloc();
  v6[89] = swift_task_alloc();
  v6[90] = swift_task_alloc();
  v6[91] = swift_task_alloc();
  v6[92] = swift_task_alloc();
  v6[93] = swift_task_alloc();
  v6[94] = swift_task_alloc();
  v6[95] = swift_task_alloc();
  v42 = sub_22C901FAC();
  v6[96] = v42;
  sub_22C3699B8(v42);
  v6[97] = v43;
  v6[98] = sub_22C36D0D4();
  v6[99] = swift_task_alloc();
  v44 = sub_22C906F2C();
  v6[100] = v44;
  sub_22C3699B8(v44);
  v6[101] = v45;
  v6[102] = sub_22C36D0D4();
  v6[103] = swift_task_alloc();
  v6[104] = swift_task_alloc();
  v6[105] = swift_task_alloc();
  v46 = sub_22C3A5908(&qword_27D9BB0C0, &qword_22C90D960);
  sub_22C369914(v46);
  v6[106] = sub_22C36D0D4();
  v6[107] = swift_task_alloc();
  v47 = sub_22C90941C();
  v6[108] = v47;
  sub_22C3699B8(v47);
  v6[109] = v48;
  v6[110] = sub_22C36D0D4();
  v6[111] = swift_task_alloc();
  v49 = sub_22C90952C();
  v6[112] = v49;
  sub_22C3699B8(v49);
  v6[113] = v50;
  v6[114] = sub_22C36D0D4();
  v6[115] = swift_task_alloc();
  v6[116] = swift_task_alloc();
  v51 = sub_22C90769C();
  v6[117] = v51;
  sub_22C3699B8(v51);
  v6[118] = v52;
  v6[119] = sub_22C3699D4();
  v53 = sub_22C3A5908(&qword_27D9BC0B0, &unk_22C912AD0);
  sub_22C369914(v53);
  v6[120] = sub_22C3699D4();
  v54 = sub_22C3A5908(&qword_27D9BC0C0, &unk_22C911FA0);
  sub_22C369914(v54);
  v6[121] = sub_22C36D0D4();
  v6[122] = swift_task_alloc();
  v55 = sub_22C90981C();
  v6[123] = v55;
  sub_22C3699B8(v55);
  v6[124] = v56;
  v6[125] = sub_22C36D0D4();
  v6[126] = swift_task_alloc();
  v6[127] = swift_task_alloc();
  v57 = sub_22C3A5908(&qword_27D9BD7E8, &qword_22C923170);
  sub_22C369914(v57);
  v6[128] = sub_22C3699D4();
  v58 = sub_22C907D6C();
  v6[129] = v58;
  sub_22C3699B8(v58);
  v6[130] = v59;
  v6[131] = sub_22C3699D4();

  return MEMORY[0x2822009F8](sub_22C79F8E4, 0, 0);
}

uint64_t *sub_22C79F8E4()
{
  sub_22C3749D8();
  v613 = v0;
  v1 = *(v0 + 1032);
  sub_22C3E8FB4(*(v0 + 128), *(v0 + 1024), &qword_27D9BD7E8, &qword_22C923170);
  v2 = sub_22C36CCF8();
  if (sub_22C370B74(v2, v3, v1) != 1)
  {
    v22 = *(v0 + 1048);
    v23 = *(v0 + 976);
    v595 = *(v0 + 968);
    v603 = *(v0 + 984);
    v24 = *(v0 + 960);
    v25 = *(v0 + 952);
    v26 = *(v0 + 944);
    v27 = *(v0 + 936);
    v28 = *(v0 + 144);
    (*(*(v0 + 1040) + 32))(v22, *(v0 + 1024), *(v0 + 1032));
    v29 = *(type metadata accessor for ValueResolver(0) + 20);
    sub_22C907D5C();
    v575 = v29;
    v587 = v28;
    sub_22C908ADC();
    (*(v26 + 8))(v25, v27);
    v30 = swift_task_alloc();
    *(v30 + 16) = v22;
    sub_22C79ECB8(sub_22C7A6E10, v30, v23);

    sub_22C36DD28(v24, &qword_27D9BC0B0, &unk_22C912AD0);
    sub_22C3E8FB4(v23, v595, &qword_27D9BC0C0, &unk_22C911FA0);
    v31 = sub_22C3707B4();
    if (sub_22C370B74(v31, v32, v603) == 1)
    {
      v33 = *(v0 + 1048);
      v34 = *(v0 + 1040);
      v35 = *(v0 + 1032);
      sub_22C36DD28(*(v0 + 968), &qword_27D9BC0C0, &unk_22C911FA0);
      sub_22C90735C();
      v36 = sub_22C3A5F00();
      v37 = sub_22C36FBE4(MEMORY[0x277D1DFB0], v36);
      sub_22C373084(v37, v38, *(v0 + 88), *(v0 + 72), *(v0 + 56));
      v39 = sub_22C36ECB4();
      sub_22C36DD28(v39, v40, &unk_22C911FA0);
      (*(v34 + 8))(v33, v35);
      goto LABEL_119;
    }

    v604 = *(v0 + 896);
    v47 = *(v0 + 872);
    v48 = *(v0 + 848);
    sub_22C36DD28(*(v0 + 976), &qword_27D9BC0C0, &unk_22C911FA0);
    v49 = sub_22C386680();
    v51 = v50(v49);
    MEMORY[0x2318B6CE0](v51);
    v52 = sub_22C9093DC();
    v53 = *(v47 + 8);
    v54 = sub_22C36FC2C();
    v53(v54);
    sub_22C58B0F8(v52);

    v55 = sub_22C36CC9C();
    sub_22C3E8FB4(v55, v56, v57, v58);
    if (sub_22C370B74(v48, 1, v604) == 1)
    {
      v59 = *(v0 + 1048);
      v60 = *(v0 + 1040);
      v61 = *(v0 + 1032);
      v62 = *(v0 + 856);
      sub_22C36DD28(*(v0 + 848), &qword_27D9BB0C0, &qword_22C90D960);
      sub_22C90735C();
      v63 = sub_22C3A5F00();
      v64 = sub_22C36FBE4(MEMORY[0x277D1DFB0], v63);
      sub_22C373084(v64, v65, *(v0 + 48), *(v0 + 32), *(v0 + 16));
      sub_22C36DD28(v62, &qword_27D9BB0C0, &qword_22C90D960);
      v66 = sub_22C36ECB4();
      v67(v66);
      (*(v60 + 8))(v59, v61);
      goto LABEL_119;
    }

    v74 = v53;
    v75 = *(v0 + 840);
    v76 = *(v0 + 808);
    v77 = *(v0 + 800);
    v78 = *(v0 + 112);
    sub_22C36DD28(*(v0 + 856), &qword_27D9BB0C0, &qword_22C90D960);
    v79 = sub_22C372164();
    v80(v79);
    v81 = *(v76 + 16);
    v81(v75, v78, v77);
    v82 = *(v76 + 88);
    v83 = sub_22C36CA88();
    if (v82(v83) == *MEMORY[0x277D1DEE8])
    {
      v84 = *(v0 + 840);
      sub_22C36DAE4();
      (*(v85 + 96))(v84);
      v86 = *v84;
      v87 = sub_22C7A47BC();
      if (v87 == *(v86 + 16))
      {
        v88 = *(v0 + 1040);
        v596 = *(v0 + 1032);
        v605 = *(v0 + 1048);
        v89 = *(v0 + 992);
        v576 = *(v0 + 984);
        v588 = *(v0 + 1016);
        v90 = *(v0 + 904);
        v556 = *(v0 + 896);
        v565 = *(v0 + 928);
        v91 = *(v0 + 792);
        v92 = *(v0 + 776);
        v93 = *(v0 + 768);
        v94 = *(v0 + 136);

        (*(v92 + 16))(v91, v94, v93);
        sub_22C906A1C();
        (*(v90 + 8))(v565, v556);
        (*(v89 + 8))(v588, v576);
        type metadata accessor for StepResolution(0);
        swift_storeEnumTagMultiPayload();
        (*(v88 + 8))(v605, v596);
LABEL_20:
        sub_22C36C3C0();
        sub_22C382E00();
        sub_22C7A7148();
        sub_22C7A713C();
        sub_22C3883F4();
        sub_22C37BC2C();
        sub_22C37600C();
        sub_22C36EE0C();
        sub_22C3745C0();
        sub_22C38C4BC();
        sub_22C37ED84();
        sub_22C7A7114();
        sub_22C7A7108();
        sub_22C7A70FC();
        sub_22C7A70F0();
        sub_22C7A70E4();
        sub_22C7A70D8();
        sub_22C7A70CC();
        sub_22C7A70C0();

        sub_22C369A24();
        goto LABEL_120;
      }

      if (!v87)
      {
        v206 = *(v0 + 880);
        v207 = *(v0 + 144);
        MEMORY[0x2318B6CE0]();
        v208 = swift_task_alloc();
        v208[2] = v86;
        v208[3] = v207;
        v208[4] = v206;
        sub_22C3B47C8();
        v209 = *(v0 + 1040);
        v590 = *(v0 + 1016);
        v600 = *(v0 + 1032);
        v210 = *(v0 + 992);
        v568 = *(v0 + 928);
        v579 = *(v0 + 984);
        v211 = *(v0 + 904);
        v558 = *(v0 + 896);
        v543 = *(v0 + 880);
        v212 = *(v0 + 864);
        v608 = *(v0 + 1048);
        v224 = *(v0 + 776);
        v533 = *(v0 + 792);
        v536 = *(v0 + 768);
        v529 = *(v0 + 136);
        v226 = v225;

        sub_22C7A6D50(v226);

        v74(v543, v212);
        (*(v224 + 16))(v533, v529, v536);
        sub_22C36D264();
        sub_22C90690C();
        (*(v211 + 8))(v568, v558);
        (*(v210 + 8))(v590, v579);
        type metadata accessor for StepResolution(0);
        swift_storeEnumTagMultiPayload();
        (*(v209 + 8))(v608, v600);
        goto LABEL_20;
      }

      v147 = *(v0 + 760);

      sub_22C903F8C();
      v148 = sub_22C9063CC();
      v149 = sub_22C90AADC();
      if (sub_22C7A7224(v149))
      {
        v150 = sub_22C36D240();
        *v150 = 0;
        _os_log_impl(&dword_22C366000, v148, v147, "an array cannot contain both skipped and evaluated statements", v150, 2u);
        sub_22C3699EC();
      }

      sub_22C7A7154();
      v589 = v151;
      v599 = v152;
      v153 = *(v0 + 992);
      v567 = *(v0 + 984);
      v578 = *(v0 + 1016);

      v154 = sub_22C36CC9C();
      v155(v154);
      v156 = type metadata accessor for InterpreterError(0);
      sub_22C36B710();
      v159 = sub_22C7A6F08(v157, v158, &protocol conformance descriptor for InterpreterError);
      v160 = sub_22C36FBE4(v156, v159);
      sub_22C37AD18(v160, v161);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v162 = sub_22C36FC2C();
      v163(v162);
      (*(v153 + 8))(v578, v567);
      (*(v147 + 8))(v599, v589);
LABEL_119:
      sub_22C387564();
      sub_22C7A7164();
      sub_22C382E00();
      sub_22C7A7148();
      sub_22C7A713C();
      sub_22C3883F4();
      sub_22C37BC2C();
      sub_22C37600C();
      sub_22C36EE0C();
      sub_22C3745C0();
      sub_22C38C4BC();
      sub_22C37ED84();
      sub_22C7A7114();
      sub_22C7A7108();
      sub_22C7A70FC();
      sub_22C7A70F0();
      sub_22C7A70E4();
      sub_22C7A70D8();
      sub_22C7A70CC();
      sub_22C7A70C0();

      sub_22C369A24();
LABEL_120:
      sub_22C7A71D4();

      __asm { BRAA            X1, X16 }
    }

    v606 = *(v0 + 928);
    v119 = v81;
    v120 = *(v0 + 904);
    v121 = *(v0 + 896);
    v122 = *(v0 + 800);
    v123 = *(v0 + 584);
    v124 = *(v0 + 576);
    v125 = *(v0 + 112);
    v542 = (*(v0 + 808) + 8);
    v549 = v82;
    v539 = *v542;
    (*v542)(*(v0 + 840), v122);
    v126 = (v123 + *(v124 + 48));
    v127 = v120 + 16;
    v598 = *(v120 + 16);
    (v598)(v123, v606, v121);
    v607 = v126;
    v532 = v119;
    v119(v126, v125, v122);
    v128 = (*(v120 + 88))(v123, v121);
    if (v128 == *MEMORY[0x277D72D50])
    {
      v129 = *(v0 + 920);
      v130 = *(v0 + 904);
      v131 = *(v0 + 896);
      v132 = *(v0 + 208);
      v133 = *(v0 + 216);
      v134 = v598;
      (v598)(v129, *(v0 + 584), v131);
      (*(v130 + 96))(v129, v131);
      v135 = *v129;
      *(v0 + 1056) = v135;
      v136 = swift_projectBox();
      v138 = *(v133 + 88);
      v137 = v133 + 88;
      v139 = v138(v136, v132);
      if (v139 == *MEMORY[0x277D72C50])
      {
        v141 = *(v0 + 216);
        v140 = *(v0 + 224);
        v142 = *(v0 + 208);
        v143 = sub_22C372164();
        v144(v143);
        (*(v141 + 96))(v140, v142);
        if (*v140 == 6 && (v549)(v607, *(v0 + 800)) == *MEMORY[0x277D1DEF8])
        {
          sub_22C36DAE4();
          v145 = *(v0 + 632);
          (*(v146 + 96))(v607);
          sub_22C774818(*v607, *(v607 + 1), v145);
          v121 = *(v0 + 648);
          v136 = *(v0 + 632);
          v132 = *(v0 + 592);

          v261 = sub_22C36D264();
          v262(v261);
LABEL_76:

          goto LABEL_77;
        }

        goto LABEL_114;
      }

      if (v139 == *MEMORY[0x277D72CB0])
      {
        v178 = sub_22C36A368();
        if (v179(v178) == *MEMORY[0x277D1DED8])
        {
          v180 = sub_22C378774();
          v181(v180);
          v182 = *v607;
          sub_22C90931C();
          v183 = swift_allocBox();
          sub_22C37AD18(v183, v184);
          *v185 = v182;
LABEL_75:
          sub_22C36BBA8();
          (*(v270 + 104))();
          *v121 = v132;
          (*(v137 + 104))(v121, *MEMORY[0x277D72A58], v136);
          goto LABEL_76;
        }

        goto LABEL_114;
      }

      if (v139 == *MEMORY[0x277D72CA0])
      {
        v213 = sub_22C36A368();
        v215 = v214(v213);
        if (v215 == *MEMORY[0x277D1DED0])
        {
          v216 = sub_22C378774();
          v217(v216);
          v218 = *v607;
          sub_22C90931C();
          v219 = swift_allocBox();
          sub_22C37AD18(v219, v220);
          *v221 = v218;
          goto LABEL_75;
        }

        if (v215 == *MEMORY[0x277D1DEF0])
        {
          sub_22C36DAE4();
          v241 = sub_22C3776D8();
          v242(v241);
          v243 = *v607;
          v244 = *v607;
          v245 = sub_22C90931C();
          result = swift_allocBox();
          if ((v244 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            __break(1u);
          }

          else if (v243 > -9.22337204e18)
          {
            if (v243 < 9.22337204e18)
            {
              v121 = result;
              v136 = *(v0 + 648);
              v247 = *(v0 + 600);
              v132 = *(v0 + 592);
              *v246 = v243;
              (*(*(v245 - 8) + 104))(v246, *MEMORY[0x277D72978], v245);
              *v136 = v121;
              (*(v247 + 104))(v136, *MEMORY[0x277D72A58], v132);
              goto LABEL_76;
            }

LABEL_137:
            __break(1u);
            return result;
          }

          __break(1u);
          goto LABEL_137;
        }
      }

      else if (v139 == *MEMORY[0x277D72CD0])
      {
        v227 = sub_22C36A368();
        v229 = v228(v227);
        if (v229 == *MEMORY[0x277D1DED0])
        {
          v230 = sub_22C378774();
          v231(v230);
          v232 = *v607;
          sub_22C90931C();
          v233 = swift_allocBox();
          sub_22C37AD18(v233, v234);
          *v235 = v232;
          goto LABEL_75;
        }

        if (v229 == *MEMORY[0x277D1DEF0])
        {
          v264 = sub_22C378774();
          v265(v264);
          v266 = *v607;
          sub_22C90931C();
          v267 = swift_allocBox();
          sub_22C37AD18(v267, v268);
          *v269 = v266;
          goto LABEL_75;
        }
      }

      else
      {
        if (v139 == *MEMORY[0x277D72CE8])
        {
          v248 = sub_22C36A368();
          v250 = v249(v248);
          if (v250 == *MEMORY[0x277D1DED0])
          {
            sub_22C388A10();
            v251 = *(v0 + 600);
            v136 = *(v0 + 592);
            v252 = sub_22C3776D8();
            v253(v252);
            v254 = *v607;
            v132 = sub_22C90931C();
            v255 = swift_allocBox();
            v257 = v256;
            *v256 = MEMORY[0x2318B8110](v254);
            v257[1] = v258;
            *(v257 + 4) = v259;
            sub_22C36BBA8();
            (*(v260 + 104))(v257);
            *v121 = v255;
            (*(v251 + 104))(v121, *MEMORY[0x277D72A58], v136);
            goto LABEL_76;
          }

          if (v250 == *MEMORY[0x277D1DEF0])
          {
            sub_22C388A10();
            v299 = *(v0 + 600);
            v136 = *(v0 + 592);
            (*(v300 + 96))(v607);
            v301 = *v607;
            sub_22C90931C();
            v132 = swift_allocBox();
            v303 = v302;
            *v302 = MEMORY[0x2318B8100](*&v301);
            v303[1] = v304;
            *(v303 + 4) = v305;
            sub_22C36BBA8();
            (*(v306 + 104))(v303);
            *v121 = v132;
            (*(v299 + 104))(v121, *MEMORY[0x277D72A58], v136);
            goto LABEL_76;
          }

          goto LABEL_114;
        }

        if (v139 != *MEMORY[0x277D72CE0])
        {
          if (v139 == *MEMORY[0x277D72CB8])
          {
            v307 = sub_22C36A368();
            if (v308(v307) == *MEMORY[0x277D1DEF8])
            {
              sub_22C36DAE4();
              v309 = sub_22C3776D8();
              v310(v309);
              v591 = *v607;
              *(v0 + 1064) = *v607;
              v311 = *(v607 + 1);
              *(v0 + 1072) = v311;
              sub_22C903F8C();

              v312 = sub_22C9063CC();
              v313 = sub_22C90AABC();

              v314 = os_log_type_enabled(v312, v313);
              v315 = *(v0 + 664);
              if (v314)
              {
                v316 = sub_22C36FB44();
                v317 = sub_22C370060();
                v612[0] = v317;
                *v316 = 136315138;
                *(v316 + 4) = sub_22C36F9F4(v591, v311, v612);
                _os_log_impl(&dword_22C366000, v312, v313, "Start resolving Date: %s", v316, 0xCu);
                sub_22C36FF94(v317);
                sub_22C3699EC();
                sub_22C3699EC();
              }

              v318 = *(v315 + 8);
              v319 = sub_22C36FC2C();
              v318(v319);
              *(v0 + 1080) = v318;
              v320 = *(*(v0 + 992) + 16);
              v320(*(v0 + 1008), *(v0 + 1016), *(v0 + 984));
              sub_22C90877C();
              v537 = *(v0 + 984);
              v541 = *(v0 + 1008);
              v355 = *(v0 + 544);
              v356 = *(v0 + 536);
              v610 = *(v0 + 520);
              v357 = *(v0 + 488);
              v358 = *(v0 + 472);
              v518 = *(v0 + 464);
              v359 = *(v0 + 448);
              v360 = *(v0 + 456);
              v521 = *(v0 + 440);
              v524 = *(v0 + 528);
              v527 = *(v0 + 432);
              v551 = *(v0 + 496);
              v560 = *(v0 + 408);
              v530 = *(v0 + 400);
              v534 = *(v0 + 504);
              sub_22C9068BC();
              (*(v358 + 8))(v357, v518);
              sub_22C9021CC();
              (*(v359 + 8))(v360, v521);
              v522 = sub_22C7A5284();
              sub_22C90060C();
              sub_22C90082C();
              *v355 = v591;
              v355[1] = v311;
              v320(v355 + v356[5], v541, v537);
              v361 = *(v534 + 16);
              v361(v355 + v356[6], v524, v551);
              *(v355 + v356[8]) = v522;
              v362 = sub_22C7A7240(v356[9]);
              v363(v362, v527, v560);
              v364 = sub_22C7A7240(v356[10]);
              v365(v364, v530);
              v361(v610, v524, v551);

              sub_22C7723C4(v610);
              v385 = *(v0 + 992);
              v386 = *(v0 + 984);
              v553 = *(v0 + 1008);
              v561 = *(v0 + 552);
              v387 = *(v0 + 544);
              v546 = *(v0 + 536);
              (*(*(v0 + 384) + 8))(*(v0 + 400), *(v0 + 376));
              v388 = sub_22C36BAFC();
              v389(v388);
              v390 = sub_22C36CC9C();
              v391(v390);
              v392 = *(v385 + 8);
              *(v0 + 1088) = v392;
              v392(v553, v386);
              sub_22C37BF90((v387 + *(v546 + 28)));
              sub_22C7A6E30(v387, v561);
              v393 = swift_task_alloc();
              *(v0 + 1096) = v393;
              *v393 = v0;
              v393[1] = sub_22C7A2EEC;
              sub_22C7A71D4();

              return sub_22C76DC34();
            }

            goto LABEL_114;
          }

          if (v139 == *MEMORY[0x277D72C70])
          {
            v321 = sub_22C36A368();
            if (v322(v321) == *MEMORY[0x277D1DEF8])
            {
              sub_22C36DAE4();
              (*(v323 + 96))(v607);
              v581 = *v607;
              *(v0 + 1112) = *v607;
              v609 = *(v607 + 1);
              *(v0 + 1120) = v609;
              v324 = sub_22C371510();
              v592 = v325;
              (v325)(v324);
              sub_22C90877C();
              v535 = *(v0 + 984);
              v538 = *(v0 + 1000);
              v602 = *(v0 + 520);
              v372 = *(v0 + 504);
              v374 = *(v0 + 472);
              v373 = *(v0 + 480);
              v376 = *(v0 + 456);
              v375 = *(v0 + 464);
              v377 = *(v0 + 448);
              v523 = *(v0 + 512);
              v525 = *(v0 + 440);
              v545 = *(v0 + 496);
              v528 = *(v0 + 424);
              v531 = *(v0 + 392);
              v552 = *(v0 + 408);
              v379 = *(v0 + 296);
              v378 = *(v0 + 304);
              sub_22C9068BC();
              (*(v374 + 8))(v373, v375);
              sub_22C9021CC();
              (*(v377 + 8))(v376, v525);
              v526 = sub_22C7A5284();
              sub_22C90060C();
              sub_22C90082C();
              *v378 = v581;
              v378[1] = v609;
              v592(v378 + v379[5], v538, v535);
              v380 = *(v372 + 16);
              v380(v378 + v379[6], v523, v545);
              *(v378 + v379[8]) = v526;
              v381 = sub_22C7A7240(v379[9]);
              v382(v381, v528, v552);
              v383 = sub_22C7A7240(v379[10]);
              v384(v383, v531);
              v380(v602, v523, v545);

              sub_22C7723C4(v602);
              v454 = *(v0 + 992);
              v547 = *(v0 + 984);
              v554 = *(v0 + 1000);
              v455 = *(v0 + 304);
              v563 = *(v0 + 312);
              v456 = *(v0 + 296);
              (*(*(v0 + 384) + 8))(*(v0 + 392), *(v0 + 376));
              v457 = sub_22C36CC9C();
              v458(v457);
              v459 = sub_22C36FC2C();
              v460(v459);
              v461 = *(v454 + 8);
              *(v0 + 1128) = v461;
              v461(v554, v547);
              sub_22C37BF90((v455 + *(v456 + 28)));
              sub_22C7A6E30(v455, v563);
              v462 = swift_task_alloc();
              *(v0 + 1136) = v462;
              *v462 = v0;
              v462[1] = sub_22C7A3774;
              sub_22C7A71D4();

              return sub_22C76ABF8(v463);
            }

            goto LABEL_114;
          }

          if (v139 == *MEMORY[0x277D72CA8])
          {
            v326 = sub_22C36A368();
            if (v327(v326) == *MEMORY[0x277D1DEF8])
            {
              sub_22C36DAE4();
              v329 = *(v0 + 264);
              v328 = *(v0 + 272);
              v330 = sub_22C3776D8();
              v331(v330);
              sub_22C370018();
              sub_22C90041C();
              if (sub_22C370B74(v329, 1, v328) == 1)
              {
                sub_22C36DD28(*(v0 + 264), &qword_27D9BB138, &qword_22C90DB70);
                sub_22C903F8C();

                v332 = sub_22C9063CC();
                v333 = sub_22C90AADC();

                if (os_log_type_enabled(v332, v333))
                {
                  v334 = sub_22C36FB44();
                  v335 = sub_22C370060();
                  v612[0] = v335;
                  *v334 = 136315138;
                  v336 = sub_22C370018();
                  v339 = sub_22C36F9F4(v336, v337, v338);

                  *(v334 + 4) = v339;
                  sub_22C36CB64(&dword_22C366000, v340, v341, "cannot to convert %s to URL");
                  sub_22C36FF94(v335);
                  sub_22C3699EC();
                  sub_22C3699EC();
                }

                else
                {
                }

                v465 = sub_22C6AF3F0();
                v466(v465);
                sub_22C7A7154();
                v584 = v467;
                v593 = v468;
                v469 = *(v0 + 1016);
                v470 = *(v0 + 992);
                v471 = *(v0 + 984);
                v472 = *(v0 + 928);
                v473 = *(v0 + 904);
                v474 = *(v0 + 896);
                v573 = *(v0 + 584);
                v475 = type metadata accessor for InterpreterError(0);
                sub_22C36B710();
                v478 = sub_22C7A6F08(v476, v477, &protocol conformance descriptor for InterpreterError);
                sub_22C36FBE4(v475, v478);
                swift_storeEnumTagMultiPayload();
                swift_willThrow();
                v479 = *(v473 + 8);
                v479(v472, v474);
                (*(v470 + 8))(v469, v471);

                v479(v573, v474);
                (*(v332 + 8))(v593, v584);
                goto LABEL_119;
              }

              v395 = *(v0 + 280);

              v396 = *(v395 + 32);
              v127 = v395 + 32;
              v135 = v396;
              v397 = sub_22C386680();
              v396(v397);
              sub_22C90040C();
              if (v398)
              {
              }

              else
              {
                v480 = *(v0 + 272);
                v481 = *(v0 + 256);
                v612[0] = 0x2F2F3A7370747468;
                v612[1] = 0xE800000000000000;
                v482 = sub_22C90036C();
                MEMORY[0x2318B7850](v482);

                sub_22C370018();
                sub_22C90041C();
                if (sub_22C370B74(v481, 1, v480) == 1)
                {
                  sub_22C36DD28(*(v0 + 256), &qword_27D9BB138, &qword_22C90DB70);
                  sub_22C903F8C();

                  v483 = sub_22C9063CC();
                  v484 = sub_22C90AADC();

                  if (os_log_type_enabled(v483, v484))
                  {
                    v485 = sub_22C36FB44();
                    v486 = sub_22C370060();
                    v612[0] = v486;
                    *v485 = 136315138;
                    v487 = sub_22C370018();
                    v490 = sub_22C36F9F4(v487, v488, v489);

                    *(v485 + 4) = v490;
                    sub_22C36CB64(&dword_22C366000, v491, v492, "Unable to convert %s to URL");
                    sub_22C36FF94(v486);
                    sub_22C3699EC();
                    sub_22C3699EC();
                  }

                  else
                  {
                  }

                  v503 = sub_22C6AF3F0();
                  v504(v503);
                  v505 = *(v0 + 1048);
                  v506 = *(v0 + 1040);
                  v507 = *(v0 + 992);
                  v564 = *(v0 + 984);
                  v574 = *(v0 + 1016);
                  v508 = *(v0 + 904);
                  v509 = *(v0 + 896);
                  v585 = *(v0 + 584);
                  v594 = *(v0 + 1032);
                  v510 = *(v0 + 280);
                  v548 = *(v0 + 288);
                  v555 = *(v0 + 928);
                  v511 = *(v0 + 272);
                  type metadata accessor for InterpreterError(0);
                  sub_22C36B710();
                  v514 = sub_22C7A6F08(v512, v513, &protocol conformance descriptor for InterpreterError);
                  v515 = sub_22C3700B4(v514);
                  sub_22C37E7C4(v515, v516);
                  swift_storeEnumTagMultiPayload();
                  swift_willThrow();
                  (*(v510 + 8))(v548, v511);
                  v517 = *(v508 + 8);
                  v517(v555, v509);
                  (*(v507 + 8))(v574, v564);

                  v517(v585, v509);
                  (*(v506 + 8))(v505, v594);
                  goto LABEL_119;
                }

                v493 = sub_22C372164();
                v494(v493);

                v495 = sub_22C386680();
                v135(v495);
              }

              v496 = *(v0 + 648);
              v497 = *(v0 + 600);
              v611 = *(v0 + 592);
              v136 = *(v0 + 288);
              v132 = *(v0 + 272);
              sub_22C90931C();
              v498 = swift_allocBox();
              v500 = v499;
              (v135)(v499, v136, v132);
              sub_22C36BBA8();
              (*(v501 + 104))(v500);
              *v496 = v498;
              v502 = *(v497 + 104);
              v121 = (v497 + 104);
              v502(v496, *MEMORY[0x277D72A58], v611);
              goto LABEL_76;
            }

            goto LABEL_114;
          }

          if (v139 == *MEMORY[0x277D72C88])
          {
            v342 = sub_22C36A368();
            if (v343(v342) == *MEMORY[0x277D1DEF8])
            {
              sub_22C388A10();
              v344 = *(v0 + 600);
              v601 = *(v0 + 592);
              v346 = *(v0 + 240);
              v345 = *(v0 + 248);
              v132 = *(v0 + 232);
              v347 = sub_22C3776D8();
              v348(v347);
              sub_22C9001CC();
              sub_22C90931C();
              v349 = swift_allocBox();
              v351 = v350;
              v352 = *(v346 + 32);
              v136 = (v346 + 32);
              v352(v350, v345, v132);
              sub_22C36BBA8();
              (*(v353 + 104))(v351);
              *v121 = v349;
              v354 = *(v344 + 104);
              v127 = v344 + 104;
              v354(v121, *MEMORY[0x277D72A58], v601);
              goto LABEL_76;
            }

            goto LABEL_114;
          }

          if (v139 == *MEMORY[0x277D72C68])
          {
            v366 = sub_22C36A368();
            if (v367(v366) != *MEMORY[0x277D1DEF8])
            {
              goto LABEL_114;
            }

            v539(v607, *(v0 + 800));
            sub_22C903F8C();
            v368 = sub_22C9063CC();
            v369 = sub_22C90AADC();
            if (sub_22C7A7224(v369))
            {
              *sub_22C36D240() = 0;
              sub_22C38B24C(&dword_22C366000, v370, v371, "Resolving CurrencyAmount not yet supported");
              sub_22C3699EC();
            }
          }

          else
          {
            if (v139 != *MEMORY[0x277D72C60])
            {
              goto LABEL_114;
            }

            v399 = sub_22C36A368();
            if (v400(v399) != *MEMORY[0x277D1DEF8])
            {
              goto LABEL_114;
            }

            v539(v607, *(v0 + 800));
            sub_22C903F8C();
            v368 = sub_22C9063CC();
            v401 = sub_22C90AADC();
            if (sub_22C7A7224(v401))
            {
              *sub_22C36D240() = 0;
              sub_22C38B24C(&dword_22C366000, v402, v403, "Resolving PaymentMethod not yet supported");
              sub_22C3699EC();
            }
          }

          v404 = *(v0 + 1040);
          sub_22C38928C();
          sub_22C7A70A4();
          v570 = *(v0 + 584);

          v405 = sub_22C372164();
          v406(v405);
          type metadata accessor for InterpreterError(0);
          sub_22C36B710();
          v409 = sub_22C7A6F08(v407, v408, &protocol conformance descriptor for InterpreterError);
          v410 = sub_22C3700B4(v409);
          sub_22C37E7C4(v410, v411);
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          v412 = *(v607 + 1);
          v412(v549, v135);
          (*(v598 + 8))(v575, 0);

          v412(v570, v135);
          (*(v404 + 8))(v598, v587);
          goto LABEL_119;
        }

        v290 = sub_22C36A368();
        if (v291(v290) == *MEMORY[0x277D1DEF8])
        {
          v292 = sub_22C378774();
          v293(v292);
          v294 = *v607;
          v295 = *(v607 + 1);
          sub_22C90931C();
          v296 = swift_allocBox();
          sub_22C37AD18(v296, v297);
          *v298 = v294;
          v298[1] = v295;
          goto LABEL_75;
        }
      }

LABEL_114:

      goto LABEL_115;
    }

    v134 = v598;
    if (v128 == *MEMORY[0x277D72D28])
    {
      if ((v549)(v126, *(v0 + 800)) == *MEMORY[0x277D1DF00])
      {
        sub_22C36DAE4();
        v169 = *(v0 + 624);
        v132 = *(v0 + 200);
        v170 = *(v0 + 184);
        v171 = sub_22C3776D8();
        v172(v171);
        v173 = sub_22C7A7260();
        (v598)(v173);
        v174 = *(v170 + 24);
        sub_22C908AEC();
        sub_22C36985C();
        (*(v175 + 16))(v132 + v174, v587 + v575);
        sub_22C7A71AC();
        if (v170)
        {
          v176 = *(v0 + 1040);
          sub_22C38928C();
          sub_22C7A7064();
          v177 = *(v0 + 200);
LABEL_49:
          sub_22C7A6E8C(v177, type metadata accessor for EnumResolver);
          v203 = *(v174 + 8);
          v204 = sub_22C36CA88();
          v203(v204);
          (*(v127 + 8))(v575, v169);
          v205 = sub_22C370114();
          v203(v205);
          (*(v176 + 8))(v598, v587);
          goto LABEL_119;
        }

        v238 = *(v0 + 648);
        v135 = *(v0 + 624);
        v239 = *(v0 + 600);
        v121 = *(v0 + 592);
        v240 = *(v0 + 200);
        goto LABEL_72;
      }
    }

    else if (v128 == *MEMORY[0x277D72D18])
    {
      v196 = sub_22C36A368();
      if (v197(v196) == *MEMORY[0x277D1DF00])
      {
        sub_22C36DAE4();
        v169 = *(v0 + 616);
        v198 = *(v0 + 184);
        v132 = *(v0 + 192);
        v199 = sub_22C3776D8();
        v200(v199);
        v201 = sub_22C7A7260();
        (v598)(v201);
        v174 = *(v198 + 24);
        sub_22C908AEC();
        sub_22C36985C();
        (*(v202 + 16))(v132 + v174, v587 + v575);
        sub_22C7A71AC();
        if (v198)
        {
          v176 = *(v0 + 1040);
          sub_22C38928C();
          sub_22C7A7064();
          v177 = *(v0 + 192);
          goto LABEL_49;
        }

        v238 = *(v0 + 648);
        v135 = *(v0 + 616);
        v239 = *(v0 + 600);
        v121 = *(v0 + 592);
        v240 = *(v0 + 192);
LABEL_72:
        sub_22C7A6E8C(v240, type metadata accessor for EnumResolver);
        v263 = *(v239 + 32);
        v136 = (v239 + 32);
        v263(v238, v135, v121);
LABEL_77:
        sub_22C3838DC();
        v580 = *(v0 + 1016);
        v559 = *(v0 + 992);
        v569 = *(v0 + 984);
        sub_22C3813E0();
        v544 = v271;
        v550 = v272;
        v273 = sub_22C372D7C();
        v519 = *(v0 + 136);
        v520 = v274;
        v540 = *(v275 + 8);
        v540(v273);
        sub_22C7A6FF0();
        sub_22C7A6F08(v276, v277, MEMORY[0x277D1C348]);
        sub_22C909F0C();
        v278 = sub_22C7A7020();
        v279(v278);
        v280 = sub_22C901ECC();
        sub_22C7A7084(v280);
        sub_22C381BBC();
        (*(v127 + 16))(v520, v519, v121);
        v281 = sub_22C3A5908(&qword_27D9BAD08, &unk_22C91D9F0);
        v282 = sub_22C383450(v281);
        v283 = sub_22C38AB54(v282, xmmword_22C90F800);
        v284(v283);
        sub_22C7A7208();
        v285 = sub_22C386DCC();
        v286(v285);
        (*(v132 + 8))(v136, v135);
        (v540)(v550, v544);
        (*(v559 + 8))(v580, v569);
        v287 = type metadata accessor for StepResolution(0);
        sub_22C385FDC(v287);
        v288 = sub_22C7A7174();
        v289(v288);
        goto LABEL_20;
      }
    }

LABEL_115:
    v413 = *(v0 + 928);
    v414 = *(v0 + 912);
    v415 = *(v0 + 896);
    v416 = *(v0 + 832);
    v417 = *(v0 + 800);
    v418 = *(v0 + 112);
    sub_22C903F8C();
    v532(v416, v418, v417);
    v134(v414, v413, v415);
    v419 = sub_22C9063CC();
    v420 = sub_22C90AADC();
    v421 = os_log_type_enabled(v419, v420);
    v422 = *(v0 + 912);
    v423 = *(v0 + 832);
    if (v421)
    {
      v424 = *(v0 + 824);
      v425 = *(v0 + 800);
      v562 = *(v0 + 664);
      v571 = *(v0 + 656);
      v582 = *(v0 + 696);
      v426 = swift_slowAlloc();
      v612[0] = swift_slowAlloc();
      *v426 = 136315394;
      v532(v424, v423, v425);
      sub_22C36D264();
      v427 = sub_22C90A1AC();
      v429 = v428;
      v539(v423, v425);
      v430 = sub_22C36F9F4(v427, v429, v612);

      *(v426 + 4) = v430;
      *(v426 + 12) = 2080;
      sub_22C9094FC();
      v431 = sub_22C7A7120();
      v432(v431);
      v433 = sub_22C36D264();
      v436 = sub_22C36F9F4(v433, v434, v435);

      *(v426 + 14) = v436;
      v422 = v419;
      _os_log_impl(&dword_22C366000, v419, v420, "cannot resolve %s to %s", v426, 0x16u);
      swift_arrayDestroy();
      sub_22C3699EC();
      sub_22C3699EC();

      (*(v562 + 8))(v582, v571);
    }

    else
    {
      v437 = *(v0 + 800);

      v438 = sub_22C7A7120();
      v439(v438);
      v539(v423, v437);
      v440 = sub_22C36ECB4();
      v441(v440);
    }

    sub_22C7A7154();
    v572 = v442;
    v583 = v443;
    v444 = *(v0 + 584);
    v445 = type metadata accessor for InterpreterError(0);
    sub_22C36B710();
    v448 = sub_22C7A6F08(v446, v447, &protocol conformance descriptor for InterpreterError);
    sub_22C36FBE4(v445, v448);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v449 = sub_22C36FC2C();
    (v598)(v449);
    v450 = sub_22C36ECB4();
    v451(v450);
    sub_22C36DD28(v444, &qword_27D9C00F8, &unk_22C925EF8);
    (v422[1].isa)(v583, v572);
    goto LABEL_119;
  }

  sub_22C36DD28(*(v0 + 1024), &qword_27D9BD7E8, &qword_22C923170);
  sub_22C903F8C();
  v4 = sub_22C9063CC();
  v5 = sub_22C90AABC();
  if (sub_22C37B204(v5))
  {
    *sub_22C36D240() = 0;
    sub_22C36BB14(&dword_22C366000, v6, v7, "resolving value without any ActionParameterContext");
    sub_22C3699EC();
  }

  v8 = *(v0 + 664);

  v9 = *(v8 + 8);
  v10 = sub_22C36ECB4();
  v9(v10);
  v11 = sub_22C6AF3F0();
  v12(v11);
  v13 = sub_22C36BAFC();
  v15 = v14(v13);
  if (v15 == *MEMORY[0x277D1DED8])
  {
    v16 = sub_22C7A7008();
    v17(v16);
    v18 = *v4;
    sub_22C90931C();
    v19 = swift_allocBox();
    sub_22C37E7E8(v19, v20);
    *v21 = v18;
LABEL_19:
    sub_22C36BBA8();
    (*(v102 + 104))();
    v103 = *(v0 + 776);
    v557 = *(v0 + 768);
    v104 = *(v0 + 640);
    v105 = *(v0 + 608);
    v106 = *(v0 + 600);
    v107 = *(v0 + 592);
    v109 = *(v0 + 168);
    v108 = *(v0 + 176);
    v566 = *(v0 + 136);
    v577 = *(v0 + 792);
    v597 = *(v0 + 160);
    *v105 = v586;
    (*(v106 + 104))(v105, *MEMORY[0x277D72A58], v107);
    sub_22C7A6FF0();
    sub_22C7A6F08(v110, v111, MEMORY[0x277D1C348]);
    sub_22C909F0C();
    (*(v106 + 16))(v104, v105, v107);
    sub_22C901ECC();
    v112 = sub_22C3707B4();
    sub_22C36C640(v112, v113, 1, v114);
    sub_22C906CFC();
    (*(v103 + 16))(v577, v566, v557);
    sub_22C3A5908(&qword_27D9BAD08, &unk_22C91D9F0);
    v115 = (*(v109 + 80) + 32) & ~*(v109 + 80);
    v116 = swift_allocObject();
    *(v116 + 16) = xmmword_22C90F800;
    (*(v109 + 16))(v116 + v115, v108, v597);
    sub_22C90690C();
    (*(v109 + 8))(v108, v597);
    v117 = sub_22C36BAFC();
    v118(v117);
    type metadata accessor for StepResolution(0);
    swift_storeEnumTagMultiPayload();
    goto LABEL_20;
  }

  if (v15 == *MEMORY[0x277D1DED0])
  {
    v41 = sub_22C7A7008();
    v42(v41);
    v43 = *v4;
    sub_22C90931C();
    v44 = swift_allocBox();
    sub_22C37E7E8(v44, v45);
    *v46 = v43;
    goto LABEL_19;
  }

  if (v15 == *MEMORY[0x277D1DEF0])
  {
    v68 = sub_22C7A7008();
    v69(v68);
    v70 = *v4;
    sub_22C90931C();
    v71 = swift_allocBox();
    sub_22C37E7E8(v71, v72);
    *v73 = v70;
    goto LABEL_19;
  }

  if (v15 == *MEMORY[0x277D1DEF8])
  {
    v95 = sub_22C7A7008();
    v96(v95);
    v97 = *v4;
    v98 = v4[1];
    sub_22C90931C();
    v99 = swift_allocBox();
    sub_22C37E7E8(v99, v100);
    *v101 = v97;
    v101[1] = v98;
    goto LABEL_19;
  }

  if (v15 == *MEMORY[0x277D1DEE8])
  {
    sub_22C36DAE4();
    (*(v164 + 8))();
    sub_22C903F8C();
    v165 = sub_22C9063CC();
    v166 = sub_22C90AADC();
    if (sub_22C37B204(v166))
    {
      *sub_22C36D240() = 0;
      sub_22C36BB14(&dword_22C366000, v167, v168, "cannot resolve array without ActionParameterContext");
      sub_22C3699EC();
    }

LABEL_44:

    v190 = sub_22C36BAFC();
    v9(v190);
    type metadata accessor for InterpreterError(0);
    sub_22C36B710();
    v193 = sub_22C7A6F08(v191, v192, &protocol conformance descriptor for InterpreterError);
    v194 = sub_22C3700B4(v193);
    sub_22C37E7C4(v194, v195);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_119;
  }

  if (v15 == *MEMORY[0x277D1DF00])
  {
    sub_22C36DAE4();
    (*(v186 + 8))();
    sub_22C903F8C();
    v165 = sub_22C9063CC();
    v187 = sub_22C90AADC();
    if (sub_22C37B204(v187))
    {
      *sub_22C36D240() = 0;
      sub_22C36BB14(&dword_22C366000, v188, v189, "cannot resolve symbol without ActionParameterContext");
      sub_22C3699EC();
    }

    goto LABEL_44;
  }

  if (v15 == *MEMORY[0x277D1DEE0])
  {
    sub_22C90931C();
    v222 = swift_allocBox();
    sub_22C37E7E8(v222, v223);
    goto LABEL_19;
  }

  sub_22C7A71D4();

  return sub_22C90B4EC();
}