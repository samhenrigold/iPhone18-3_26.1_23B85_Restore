uint64_t sub_222C28214(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 328) = v1;

  if (v1)
  {

    v5 = sub_222C28CA4;
  }

  else
  {
    *(v4 + 336) = a1;
    v5 = sub_222C28368;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_222C28368()
{
  v44 = v0;
  v1 = v0[38];
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 16));
  v41 = v0[42];
  v2 = v0[37];
  v3 = v0[31];
  *&v43[0] = 0;
  *(&v43[0] + 1) = 0xE000000000000000;
  sub_222C94D1C();

  v40 = *(v2 + 16);
  v0[25] = v40;
  *&v43[0] = 0xD000000000000018;
  *(&v43[0] + 1) = 0x8000000222CACA70;
  v4 = sub_222C9517C();
  MEMORY[0x223DC9330](v4);

  MEMORY[0x223DC9330](0x7364726F63657220, 0xE90000000000000ALL);
  MEMORY[0x223DC9330](0xD000000000000018, 0x8000000222CACA70);

  while (1)
  {
    v17 = v0[29];
    v16 = v0[30];
    sub_222C26F84(&qword_27D027068, &qword_222CA1E48, type metadata accessor for PlusMediaSuggestion, type metadata accessor for PlusMediaSuggestion, v17);
    sub_222B723A4(v17, v16, &qword_27D027058, &qword_222CA1E38);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027068, &qword_222CA1E48);
    if ((*(*(v18 - 8) + 48))(v16, 1, v18) == 1)
    {
      break;
    }

    v19 = v0[30];
    v20 = *v19;
    sub_222C29B48(v19 + *(v18 + 48), v0[33], type metadata accessor for PlusMediaSuggestion);
    *&v43[0] = 0;
    *(&v43[0] + 1) = 0xE000000000000000;
    sub_222C94D1C();

    *&v43[0] = 0xD000000000000018;
    *(&v43[0] + 1) = 0x8000000222CACA90;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      return result;
    }

    v22 = v0[33];
    v0[26] = v20 + 1;
    v23 = sub_222C9517C();
    MEMORY[0x223DC9330](v23);

    MEMORY[0x223DC9330](543584032, 0xE400000000000000);
    v0[27] = v40;
    v24 = sub_222C9517C();
    MEMORY[0x223DC9330](v24);

    MEMORY[0x223DC9330](0xD000000000000012, 0x8000000222CACAB0);
    MEMORY[0x223DC9330](*&v43[0], *(&v43[0] + 1));

    *&v43[0] = 0x909093A4449;
    *(&v43[0] + 1) = 0xE600000000000000;
    sub_222C9367C();
    sub_222B9E5D0();
    v25 = sub_222C9517C();
    MEMORY[0x223DC9330](v25);

    MEMORY[0x223DC9330](10, 0xE100000000000000);
    MEMORY[0x223DC9330](*&v43[0], *(&v43[0] + 1));

    *&v43[0] = 0x444920616964654DLL;
    *(&v43[0] + 1) = 0xEB0000000009093ALL;
    v26 = (v22 + v3[6]);
    v28 = *v26;
    v27 = v26[1];
    MEMORY[0x223DC9330](*v26, v27);
    MEMORY[0x223DC9330](10, 0xE100000000000000);
    MEMORY[0x223DC9330](*&v43[0], *(&v43[0] + 1));

    if (v41)
    {
      v29 = 0xE000000000000000;
      *&v43[0] = 0;
      *(&v43[0] + 1) = 0xE000000000000000;
      sub_222C94D1C();

      strcpy(v42, "Media title:\t\t");
      HIBYTE(v42[1]) = -18;
      if (*(v41 + 16) && (v30 = sub_222B8C9DC(v28, v27), (v31 & 1) != 0))
      {
        v32 = (*(v41 + 56) + (v30 << 6));
        v43[0] = *v32;
        v43[1] = v32[1];
        v43[2] = v32[2];
        v43[3] = v32[3];
        v33 = AMPSongMetadata.title.getter();
        v29 = v34;
      }

      else
      {
        v33 = 0;
      }

      MEMORY[0x223DC9330](v33, v29);

      MEMORY[0x223DC9330](10, 0xE100000000000000);
      MEMORY[0x223DC9330](v42[0], v42[1]);
    }

    v35 = 0xE000000000000000;
    *&v43[0] = 0;
    *(&v43[0] + 1) = 0xE000000000000000;
    sub_222C94D1C();

    v36 = 0;
    strcpy(v43, "Storefront:\t\t");
    HIWORD(v43[0]) = -4864;
    if (v26[3] != 1 && v26[5])
    {
      v36 = v26[4];
    }

    v5 = v0[33];
    MEMORY[0x223DC9330](v36, v35);

    MEMORY[0x223DC9330](10, 0xE100000000000000);
    MEMORY[0x223DC9330](*&v43[0], *(&v43[0] + 1));

    v0[21] = 0;
    v0[22] = 0xE000000000000000;
    MEMORY[0x223DC9330](0x6D617473656D6954, 0xEC00000009093A70);
    sub_222C948DC();
    MEMORY[0x223DC9330](10, 0xE100000000000000);
    MEMORY[0x223DC9330](v0[21], v0[22]);

    v7 = UsoEntity_common_MediaItem.convertUSOMediaItemToString()();
    countAndFlagsBits = v7.value._countAndFlagsBits;
    if (v7.value._object)
    {
      object = v7.value._object;
    }

    else
    {
      countAndFlagsBits = 0;
      object = 0xE000000000000000;
    }

    *&v43[0] = 0x3A79656B204F5355;
    *(&v43[0] + 1) = 0xEA00000000000909;
    MEMORY[0x223DC9330](countAndFlagsBits, object);

    MEMORY[0x223DC9330](*&v43[0], *(&v43[0] + 1));

    *&v43[0] = 0;
    *(&v43[0] + 1) = 0xE000000000000000;
    sub_222C94D1C();

    *&v43[0] = 0xD000000000000011;
    *(&v43[0] + 1) = 0x8000000222CACAD0;
    v9 = *(v5 + v3[7]);
    v10 = type metadata accessor for ThinMediaGroundTruth(0);
    v11 = MEMORY[0x223DC94D0](v9, v10);
    MEMORY[0x223DC9330](v11);

    MEMORY[0x223DC9330](10, 0xE100000000000000);
    MEMORY[0x223DC9330](*&v43[0], *(&v43[0] + 1));

    *&v43[0] = 0x909093A73676154;
    *(&v43[0] + 1) = 0xE800000000000000;
    sub_222B654C0();
    v12 = sub_222C948FC();
    MEMORY[0x223DC9330](v12);

    MEMORY[0x223DC9330](10, 0xE100000000000000);
    MEMORY[0x223DC9330](*&v43[0], *(&v43[0] + 1));

    v0[23] = 0;
    v0[24] = 0xE000000000000000;
    MEMORY[0x223DC9330](0x9093A65726F6353, 0xE900000000000009);
    sub_222C948DC();
    MEMORY[0x223DC9330](10, 0xE100000000000000);
    MEMORY[0x223DC9330](v0[23], v0[24]);

    *&v43[0] = 0;
    *(&v43[0] + 1) = 0xE000000000000000;
    sub_222C94D1C();

    *&v43[0] = 0x73694865726F6353;
    *(&v43[0] + 1) = 0xEF09093A79726F74;
    v13 = *(v5 + v3[9]);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0261D8, &qword_222CA1E50);
    v15 = MEMORY[0x223DC94D0](v13, v14);
    MEMORY[0x223DC9330](v15);

    MEMORY[0x223DC9330](10, 0xE100000000000000);
    MEMORY[0x223DC9330](*&v43[0], *(&v43[0] + 1));

    MEMORY[0x223DC9330](0xD000000000000048, 0x8000000222CACAF0);
    sub_222C29AE8(v5, type metadata accessor for PlusMediaSuggestion);
  }

  v38 = v0[19];
  v37 = v0[20];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 9);

  v39 = v0[1];

  return v39(v38, v37);
}

uint64_t sub_222C28CA4()
{
  v1 = v0[38];
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 16));
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 9);

  v2 = v0[1];

  return v2();
}

Swift::String __swiftcall DiagnosticLoggingHelper.generateContactSuggestionStoreDebugString()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027070, &unk_222CA1E58);
  MEMORY[0x28223BE20](v1 - 8);
  v63 = &v55 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = (&v55 - v4);
  v64 = type metadata accessor for PlusContactSuggestion(0);
  v60 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v57 = &v55 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v55 - v11;
  v73 = 0;
  v74 = 0xE000000000000000;
  sub_222B4FC6C(v0 + 40, &v67, &qword_27D025F60, &unk_222C9B880);
  if (v69)
  {
    sub_222B405A0(&v67, v70);
    v13 = v71;
    v14 = v72;
    __swift_project_boxed_opaque_existential_1(v70, v71);
    v15 = (*(v14 + 40))(v13, v14);
    v17 = v15;
    v59 = *(v15 + 16);
    if (v59)
    {
      v18 = 0;
      v56 = MEMORY[0x277D84F90];
      v55 = v5;
      v58 = v15;
      while (v18 < *(v17 + 16))
      {
        v62 = (*(v60 + 80) + 32) & ~*(v60 + 80);
        v61 = *(v60 + 72);
        sub_222C29A80(v17 + v62 + v61 * v18, v12, type metadata accessor for PlusContactSuggestion);
        v19 = v12;
        v20 = *&v12[*(v64 + 36)];
        if (*(v20 + 16) && (sub_222C952FC(), sub_222C9452C(), v21 = sub_222C9534C(), v22 = -1 << *(v20 + 32), v23 = v21 & ~v22, ((*(v20 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) != 0))
        {
          v24 = ~v22;
          while (1)
          {
            v25 = *(*(v20 + 48) + v23);
            if (v25 > 2 && v25 != 4)
            {
              break;
            }

            v26 = sub_222C951FC();

            if (v26)
            {
              goto LABEL_16;
            }

            v23 = (v23 + 1) & v24;
            if (((*(v20 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
            {
              goto LABEL_4;
            }
          }

LABEL_16:
          v12 = v19;
          sub_222C29B48(v19, v57, type metadata accessor for PlusContactSuggestion);
          v27 = v56;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v66[0] = v27;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_222B4C6E8(0, *(v27 + 16) + 1, 1);
            v27 = v66[0];
          }

          v17 = v58;
          v30 = *(v27 + 16);
          v29 = *(v27 + 24);
          v31 = v27;
          if (v30 >= v29 >> 1)
          {
            sub_222B4C6E8((v29 > 1), v30 + 1, 1);
            v31 = v66[0];
          }

          *(v31 + 16) = v30 + 1;
          v56 = v31;
          v15 = sub_222C29B48(v57, v31 + v62 + v30 * v61, type metadata accessor for PlusContactSuggestion);
        }

        else
        {
LABEL_4:
          v12 = v19;
          v15 = sub_222C29AE8(v19, type metadata accessor for PlusContactSuggestion);
          v17 = v58;
        }

        ++v18;
        v5 = v55;
        if (v18 == v59)
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
      v56 = MEMORY[0x277D84F90];
LABEL_23:

      *&v67 = 0;
      *(&v67 + 1) = 0xE000000000000000;
      sub_222C94D1C();

      *&v67 = 0xD000000000000018;
      *(&v67 + 1) = 0x8000000222CACB80;
      v34 = v56;
      v61 = *(v56 + 16);
      v66[0] = v61;
      v35 = sub_222C9517C();
      MEMORY[0x223DC9330](v35);

      MEMORY[0x223DC9330](0x7364726F63657220, 0xE90000000000000ALL);
      MEMORY[0x223DC9330](v67, *(&v67 + 1));

      v62 = 0x8000000222CACA90;
      v60 = "-----------------Record ";
      v59 = 0x8000000222CACBA0;
      v58 = 0x8000000222CACAD0;
      v57 = "Contributing GT:\t";
      v68 = 0;
      v67 = v34;
      v56 = 0xD000000000000012;
      v36 = v64;
      while (1)
      {
        v37 = v63;
        sub_222C26F84(&qword_27D027078, &qword_222CA1E68, type metadata accessor for PlusContactSuggestion, type metadata accessor for PlusContactSuggestion, v63);
        sub_222B723A4(v37, v5, &qword_27D027070, &unk_222CA1E58);
        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027078, &qword_222CA1E68);
        if ((*(*(v38 - 8) + 48))(v5, 1, v38) == 1)
        {

          v32 = v73;
          v33 = v74;
          __swift_destroy_boxed_opaque_existential_0Tm(v70);
          goto LABEL_37;
        }

        v39 = *v5;
        sub_222C29B48(v5 + *(v38 + 48), v7, type metadata accessor for PlusContactSuggestion);
        v66[0] = 0;
        v66[1] = 0xE000000000000000;
        sub_222C94D1C();

        v66[0] = 0xD000000000000018;
        v66[1] = v62;
        if (__OFADD__(v39, 1))
        {
          break;
        }

        v65 = v39 + 1;
        v40 = sub_222C9517C();
        MEMORY[0x223DC9330](v40);

        MEMORY[0x223DC9330](543584032, 0xE400000000000000);
        v65 = v61;
        v41 = sub_222C9517C();
        MEMORY[0x223DC9330](v41);

        MEMORY[0x223DC9330](v56, v60 | 0x8000000000000000);
        MEMORY[0x223DC9330](v66[0], v66[1]);

        v66[0] = 0x909093A4449;
        v66[1] = 0xE600000000000000;
        sub_222C9367C();
        sub_222B9E5D0();
        v42 = sub_222C9517C();
        MEMORY[0x223DC9330](v42);

        MEMORY[0x223DC9330](10, 0xE100000000000000);
        MEMORY[0x223DC9330](v66[0], v66[1]);

        v66[0] = 0;
        v66[1] = 0xE000000000000000;
        sub_222C94D1C();

        strcpy(v66, "Contact ID:\t\t");
        HIWORD(v66[1]) = -4864;
        v43 = &v7[*(v36 + 24)];
        MEMORY[0x223DC9330](*v43, *(v43 + 1));
        MEMORY[0x223DC9330](10, 0xE100000000000000);
        MEMORY[0x223DC9330](v66[0], v66[1]);

        v66[0] = 0;
        v66[1] = 0xE000000000000000;
        sub_222C94D1C();

        v66[0] = 0xD000000000000010;
        v66[1] = v59;
        v44 = *(v43 + 3);
        if (v44)
        {
          v45 = *(v43 + 2);
        }

        else
        {
          v45 = 0;
        }

        if (v44)
        {
          v46 = *(v43 + 3);
        }

        else
        {
          v46 = 0xE000000000000000;
        }

        MEMORY[0x223DC9330](v45, v46);

        MEMORY[0x223DC9330](10, 0xE100000000000000);
        MEMORY[0x223DC9330](v66[0], v66[1]);

        v66[0] = 0;
        v66[1] = 0xE000000000000000;
        MEMORY[0x223DC9330](0x6D617473656D6954, 0xEC00000009093A70);
        sub_222C948DC();
        MEMORY[0x223DC9330](10, 0xE100000000000000);
        MEMORY[0x223DC9330](v66[0], v66[1]);

        v48 = UsoEntity_common_Person.convertUSOPersonToString()();
        countAndFlagsBits = v48.value._countAndFlagsBits;
        if (v48.value._object)
        {
          object = v48.value._object;
        }

        else
        {
          countAndFlagsBits = 0;
          object = 0xE000000000000000;
        }

        strcpy(v66, "USO key:\t\t");
        BYTE3(v66[1]) = 0;
        HIDWORD(v66[1]) = -369098752;
        MEMORY[0x223DC9330](countAndFlagsBits, object);

        MEMORY[0x223DC9330](10, 0xE100000000000000);
        MEMORY[0x223DC9330](v66[0], v66[1]);

        v66[0] = 0;
        v66[1] = 0xE000000000000000;
        sub_222C94D1C();

        v66[0] = 0xD000000000000011;
        v66[1] = v58;
        v50 = *&v7[*(v36 + 28)];
        v51 = type metadata accessor for ThinContactGroundTruth(0);
        v52 = MEMORY[0x223DC94D0](v50, v51);
        MEMORY[0x223DC9330](v52);

        MEMORY[0x223DC9330](10, 0xE100000000000000);
        MEMORY[0x223DC9330](v66[0], v66[1]);

        strcpy(v66, "Tags:\t\t\t");
        BYTE1(v66[1]) = 0;
        WORD1(v66[1]) = 0;
        HIDWORD(v66[1]) = -402653184;
        sub_222B65518();
        v53 = sub_222C948FC();
        MEMORY[0x223DC9330](v53);

        MEMORY[0x223DC9330](10, 0xE100000000000000);
        MEMORY[0x223DC9330](v66[0], v66[1]);

        MEMORY[0x223DC9330](0xD000000000000048, v57 | 0x8000000000000000);
        sub_222C29AE8(v7, type metadata accessor for PlusContactSuggestion);
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    sub_222B4FCD4(&v67, &qword_27D025F60, &unk_222C9B880);
    MEMORY[0x223DC9330](0xD000000000000036, 0x8000000222CACB40);
    v32 = v73;
    v33 = v74;
LABEL_37:
    v15 = v32;
    v16 = v33;
  }

  result._object = v16;
  result._countAndFlagsBits = v15;
  return result;
}

uint64_t sub_222C29934(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = result;
  v6 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v6 = a4 & 0xFFFFFFFFFFFFLL;
  }

  v14 = a4;
  v15 = a5;
  *&v16 = 0;
  *(&v16 + 1) = v6;
  *&v7 = 0;
  *(&v7 + 1) = v6;
  if (!a2)
  {
LABEL_12:
    v8 = 0;
    goto LABEL_16;
  }

  v8 = a3;
  if (!a3)
  {
LABEL_16:
    *v5 = a4;
    *(v5 + 8) = a5;
    *(v5 + 16) = v7;
    return v8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v10 = 1;
    while (1)
    {
      v11 = sub_222C9459C();
      if (!v12)
      {
        a4 = v14;
        a5 = v15;
        v8 = v10 - 1;
        goto LABEL_15;
      }

      *v9 = v11;
      v9[1] = v12;
      if (v8 == v10)
      {
        break;
      }

      v9 += 2;
      if (__OFADD__(v10++, 1))
      {
        __break(1u);
        goto LABEL_12;
      }
    }

    a4 = v14;
    a5 = v15;
LABEL_15:
    v7 = v16;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_222C299FC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027088, &qword_222CA1F20);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_222C29A80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_222C29AE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_222C29B48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_222C29BB0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_222C29C0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_222C29C84(uint64_t a1, unint64_t a2)
{
  result = sub_222C9453C();
  v5 = MEMORY[0x277D84F90];
  if (result)
  {
    v6 = result;
    v7 = sub_222C299FC(result, 0);

    v8 = sub_222C29934(&v56, v7 + 4, v6, a1, a2);

    if (v8 != v6)
    {
LABEL_92:
      __break(1u);
      return result;
    }

    v9 = v7[2];
    if (v9)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
    v9 = *(MEMORY[0x277D84F90] + 16);
    if (v9)
    {
LABEL_4:
      v10 = 0;
      v11 = 0;
      while (1)
      {
        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        v13 = __OFADD__(v11, 900);
        v11 += 900;
        if (v13)
        {
          v11 = 0x7FFFFFFFFFFFFFFFLL;
        }

        ++v10;
        if (v11 >= v9)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
      goto LABEL_86;
    }
  }

  v12 = 0;
LABEL_12:
  v56 = v5;

  result = sub_222B4CB74(0, v12 & ~(v12 >> 63), 0);
  if (v12 < 0)
  {
    goto LABEL_91;
  }

  v14 = v56;
  v53 = v7;
  if (!v12)
  {
    if (!v9)
    {
      goto LABEL_70;
    }

    v25 = 0;
    goto LABEL_42;
  }

  v15 = 0;
  v16 = 0;
  v17 = v7 + 4;
  v18 = 900;
  do
  {
    if (v9 >= v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = v9;
    }

    if (v16 >= v9)
    {
      goto LABEL_82;
    }

    if (v16 == 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_83;
    }

    if (v9 >= (v16 + 900))
    {
      v20 = v16 + 900;
    }

    else
    {
      v20 = v9;
    }

    if (v20 < v16)
    {
      goto LABEL_84;
    }

    v21 = v7[2];
    if (v21 < v16 || v21 < v20)
    {
      goto LABEL_85;
    }

    v54 = v16 + 900;
    v22 = v19 + v15;
    if (v19 + v15 == v21)
    {
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
      if (v16 != v20)
      {
        if (v22 >= 1)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027088, &qword_222CA1F20);
          v7 = swift_allocObject();
          v26 = _swift_stdlib_malloc_size(v7);
          v27 = v26 - 32;
          if (v26 < 32)
          {
            v27 = v26 - 17;
          }

          v7[2] = v22;
          v7[3] = 2 * (v27 >> 4);
        }

        result = swift_arrayInitWithCopy();
      }
    }

    v56 = v14;
    v24 = *(v14 + 16);
    v23 = *(v14 + 24);
    if (v24 >= v23 >> 1)
    {
      result = sub_222B4CB74((v23 > 1), v24 + 1, 1);
      v14 = v56;
    }

    v18 += 900;
    *(v14 + 16) = v24 + 1;
    *(v14 + 8 * v24 + 32) = v7;
    v15 -= 900;
    v17 += 1800;
    v7 = v53;
    v25 = v54;
    v16 = v54;
    --v12;
  }

  while (v12);
  if (v54 < v9)
  {
LABEL_42:
    v28 = v25 + 900;
    v29 = -v25;
    v30 = &v7[2 * v25 + 4];
    v31 = v25;
    v55 = v25;
    do
    {
      if (v9 >= v28)
      {
        v32 = v28;
      }

      else
      {
        v32 = v9;
      }

      v33 = v31 + 900;
      if (__OFADD__(v31, 900))
      {
        goto LABEL_87;
      }

      if (v9 >= v33)
      {
        v34 = v31 + 900;
      }

      else
      {
        v34 = v9;
      }

      if (v34 < v31)
      {
        goto LABEL_88;
      }

      if (v25 < 0)
      {
        goto LABEL_89;
      }

      v35 = v7[2];
      if (v35 < v31 || v35 < v34)
      {
        goto LABEL_90;
      }

      v37 = v32 + v29;
      if (v32 + v29 == v35)
      {
      }

      else
      {
        v38 = MEMORY[0x277D84F90];
        if (v31 == v34)
        {
          goto LABEL_59;
        }

        if (v37 < 1)
        {
          v7 = MEMORY[0x277D84F90];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027088, &qword_222CA1F20);
          v7 = swift_allocObject();
          v41 = _swift_stdlib_malloc_size(v7);
          v42 = v41 - 32;
          if (v41 < 32)
          {
            v42 = v41 - 17;
          }

          v7[2] = v37;
          v7[3] = 2 * (v42 >> 4);
        }

        result = swift_arrayInitWithCopy();
      }

      v38 = v7;
LABEL_59:
      v56 = v14;
      v40 = *(v14 + 16);
      v39 = *(v14 + 24);
      if (v40 >= v39 >> 1)
      {
        v43 = v38;
        result = sub_222B4CB74((v39 > 1), v40 + 1, 1);
        v38 = v43;
        v14 = v56;
      }

      v31 += 900;
      *(v14 + 16) = v40 + 1;
      *(v14 + 8 * v40 + 32) = v38;
      v28 += 900;
      v29 -= 900;
      v30 += 14400;
      v7 = v53;
      v25 = v55;
    }

    while (v33 < v9);
  }

LABEL_70:

  v44 = *(v14 + 16);
  if (v44)
  {
    v45 = 0;
    v46 = MEMORY[0x277D84F90];
    while (v45 < *(v14 + 16))
    {
      v56 = *(v14 + 32 + 8 * v45);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024D98, &qword_222C96B78);
      sub_222C2A17C();
      v47 = sub_222C9460C();
      v49 = v48;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_222B49E84(0, *(v46 + 16) + 1, 1, v46);
        v46 = result;
      }

      v51 = *(v46 + 16);
      v50 = *(v46 + 24);
      if (v51 >= v50 >> 1)
      {
        result = sub_222B49E84((v50 > 1), v51 + 1, 1, v46);
        v46 = result;
      }

      ++v45;
      *(v46 + 16) = v51 + 1;
      v52 = v46 + 16 * v51;
      *(v52 + 32) = v47;
      *(v52 + 40) = v49;
      if (v44 == v45)
      {
        goto LABEL_80;
      }
    }

LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v46 = MEMORY[0x277D84F90];
LABEL_80:

  return v46;
}

unint64_t sub_222C2A17C()
{
  result = qword_27D027080;
  if (!qword_27D027080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D024D98, &qword_222C96B78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027080);
  }

  return result;
}

uint64_t getPlusContactSuggestionStoreRuntimeQueryWrapper()@<X0>(uint64_t *a1@<X8>)
{
  result = _s28SiriPrivateLearningInference45PlusContactSuggestionStoreRuntimeQueryWrapperCACSgycfC_0();
  v3 = result;
  if (result)
  {
    result = type metadata accessor for PlusContactSuggestionStoreRuntimeQueryWrapper();
    v4 = &protocol witness table for PlusContactSuggestionStoreRuntimeQueryWrapper;
  }

  else
  {
    v4 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v3;
  a1[3] = result;
  a1[4] = v4;
  return result;
}

uint64_t makeTestablePlusContactSuggestionStoreRuntimeQueryWrapper(store:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  Wrapper = type metadata accessor for PlusContactSuggestionStoreRuntimeQueryWrapper();
  sub_222B43E3C(a1, v17);
  v15 = sub_222C9410C();
  v16 = MEMORY[0x277D5FC40];
  __swift_allocate_boxed_opaque_existential_1(&v14);
  sub_222C940FC();
  v5 = v18;
  v6 = v19;
  v7 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v8);
  v12 = sub_222C2BA70(v10, &v14, Wrapper, v5, v6);
  result = __swift_destroy_boxed_opaque_existential_0Tm(v17);
  a2[3] = Wrapper;
  a2[4] = &protocol witness table for PlusContactSuggestionStoreRuntimeQueryWrapper;
  *a2 = v12;
  return result;
}

uint64_t PlusContactSuggestionStoreRuntimeQueryWrapper.__allocating_init(store:logTarget:)(void *a1, void *a2)
{
  v4 = swift_allocObject();
  PlusContactSuggestionStoreRuntimeQueryWrapper.init(store:logTarget:)(a1, a2);
  return v4;
}

void *PlusContactSuggestionStoreRuntimeQueryWrapper.init(store:logTarget:)(void *a1, void *a2)
{
  v5 = sub_222C9410C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2[8] = 0xD000000000000030;
  v2[9] = 0x8000000222CAAB10;
  sub_222B43E3C(a1, (v2 + 2));
  sub_222C940FC();
  __swift_destroy_boxed_opaque_existential_0Tm(a2);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  type metadata accessor for PLUSContactSuggesterRuntimeLogHelper();
  v9 = swift_allocObject();
  v15 = v5;
  v16 = MEMORY[0x277D5FC40];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v14);
  (*(v6 + 32))(boxed_opaque_existential_1, v8, v5);
  type metadata accessor for SELFEventLogEmitters();
  v11 = swift_allocObject();
  sub_222B405A0(&v14, v11 + 16);
  *(v9 + 16) = v11;
  v2[7] = v9;
  return v2;
}

unint64_t sub_222C2A580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for PlusContactSuggestion(0);
  v44 = *(v8 - 8);
  v45 = v8;
  MEMORY[0x28223BE20](v8);
  v41 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v39 - v11;
  v39 = v3[7];
  v40 = a3;
  sub_222BDCDBC(a1, a2, a3);
  v13 = v3[5];
  v14 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v13);
  v15 = (*(v14 + 56))(a1, v13, v14);
  v16 = v15;
  v17 = MEMORY[0x277D84FA0];
  if (a2)
  {
    v17 = a2;
  }

  v46 = v17;
  v18 = *(v15 + 16);

  v43 = v18;
  if (v18)
  {
    v19 = 0;
    v42 = MEMORY[0x277D84F90];
    while (v19 < *(v16 + 16))
    {
      v20 = v16;
      v47 = (*(v44 + 80) + 32) & ~*(v44 + 80);
      v21 = *(v44 + 72);
      sub_222BB8CF4(v16 + v47 + v21 * v19, v12);
      v22 = *&v12[*(v45 + 36)];
      if (sub_222BB2AB8(v22, v46) & 1) != 0 && *(v22 + 16) && (sub_222C952FC(), sub_222C9452C(), v23 = sub_222C9534C(), v4 = v22 + 56, v24 = -1 << *(v22 + 32), v25 = v23 & ~v24, ((*(v22 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25)))
      {
        v26 = ~v24;
        while (1)
        {
          v27 = *(*(v22 + 48) + v25);
          if (v27 > 2 && v27 != 4)
          {
            break;
          }

          v28 = sub_222C951FC();

          if (v28)
          {
            goto LABEL_18;
          }

          v25 = (v25 + 1) & v26;
          if (((*(v4 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

LABEL_18:
        sub_222BB8DB4(v12, v41);
        v29 = v42;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v48 = v29;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_222B4C6E8(0, *(v29 + 16) + 1, 1);
          v29 = v48;
        }

        v16 = v20;
        v4 = *(v29 + 16);
        v31 = *(v29 + 24);
        if (v4 >= v31 >> 1)
        {
          sub_222B4C6E8((v31 > 1), v4 + 1, 1);
          v29 = v48;
        }

        *(v29 + 16) = v4 + 1;
        v42 = v29;
        sub_222BB8DB4(v41, v29 + v47 + v4 * v21);
      }

      else
      {
LABEL_5:
        sub_222BB8D58(v12);
        v16 = v20;
      }

      if (++v19 == v43)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_30:
    swift_once();
    goto LABEL_25;
  }

  v42 = MEMORY[0x277D84F90];
LABEL_24:

  v4 = v42;
  sub_222BDD098(v42, v40);
  if (qword_280FDFE78 != -1)
  {
    goto LABEL_30;
  }

LABEL_25:
  v32 = sub_222C9431C();
  __swift_project_value_buffer(v32, qword_280FE2340);
  swift_retain_n();

  v33 = sub_222C942FC();
  v34 = sub_222C94A3C();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 134218240;
    v36 = *(v16 + 16);

    *(v35 + 4) = v36;

    *(v35 + 12) = 2048;
    v37 = *(v4 + 16);

    *(v35 + 14) = v37;

    _os_log_impl(&dword_222B39000, v33, v34, "[PlusContactSuggestionStoreRuntimeQueryWrapper]: Found %ld results and %ld with matching tags.", v35, 0x16u);
    MEMORY[0x223DCA8C0](v35, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  return v4;
}

uint64_t sub_222C2AAB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A88, &unk_222C9A0C0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v98 - v11;
  v114 = type metadata accessor for PlusContactSuggestion(0);
  v13 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v105 = v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v104 = v98 - v16;
  MEMORY[0x28223BE20](v17);
  v101 = v98 - v18;
  MEMORY[0x28223BE20](v19);
  v113 = v98 - v20;
  MEMORY[0x28223BE20](v21);
  v112 = v98 - v22;
  MEMORY[0x28223BE20](v23);
  v103 = v98 - v24;
  v110 = sub_222C9367C();
  v25 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v27 = v98 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v4 + 56);
  v102 = a2;
  v111 = a3;
  v99 = a4;
  v98[1] = v28;
  sub_222BDCDBC(a2, a3, a4);
  v100 = v5;
  sub_222B43E3C(v5 + 16, v117);
  v29 = *(a1 + 16);
  v115 = v13;
  if (v29)
  {
    v31 = *(v25 + 16);
    v30 = v25 + 16;
    v108 = v31;
    v109 = v12;
    v32 = a1 + ((*(v30 + 64) + 32) & ~*(v30 + 64));
    v107 = *(v30 + 56);
    v106 = (v30 - 8);
    v33 = (v13 + 48);
    v116 = MEMORY[0x277D84F90];
    v34 = v30;
    do
    {
      v35 = v110;
      v36 = v34;
      v108(v27, v32, v110);
      v38 = v118;
      v37 = v119;
      __swift_project_boxed_opaque_existential_1(v117, v118);
      v39 = v109;
      (*(v37 + 64))(v27, v38, v37);
      (*v106)(v27, v35);
      if ((*v33)(v39, 1, v114) == 1)
      {
        sub_222C2BCD0(v39);
      }

      else
      {
        v40 = v39;
        v41 = v103;
        sub_222BB8DB4(v40, v103);
        sub_222BB8DB4(v41, v112);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v42 = v116;
        }

        else
        {
          v42 = sub_222B4ACA4(0, v116[2] + 1, 1, v116);
        }

        v44 = v42[2];
        v43 = v42[3];
        if (v44 >= v43 >> 1)
        {
          v42 = sub_222B4ACA4((v43 > 1), v44 + 1, 1, v42);
        }

        v42[2] = v44 + 1;
        v45 = (*(v115 + 80) + 32) & ~*(v115 + 80);
        v116 = v42;
        sub_222BB8DB4(v112, v42 + v45 + *(v115 + 72) * v44);
      }

      v32 += v107;
      --v29;
      v34 = v36;
    }

    while (v29);
  }

  else
  {
    v116 = MEMORY[0x277D84F90];
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v117);
  if (qword_280FDFE78 != -1)
  {
    goto LABEL_63;
  }

  while (1)
  {
    v46 = sub_222C9431C();
    v47 = __swift_project_value_buffer(v46, qword_280FE2340);
    v48 = v100;

    v49 = v116;

    v109 = v47;
    v50 = sub_222C942FC();
    v51 = sub_222C94A3C();

    v52 = os_log_type_enabled(v50, v51);
    v53 = v115;
    if (v52)
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v117[0] = v55;
      *v54 = 136315394;
      *(v54 + 4) = sub_222B437C0(*(v48 + 64), *(v48 + 72), v117);
      *(v54 + 12) = 2048;
      *(v54 + 14) = v49[2];

      _os_log_impl(&dword_222B39000, v50, v51, "%s Number of suggestions found: %ld", v54, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v55);
      MEMORY[0x223DCA8C0](v55, -1, -1);
      MEMORY[0x223DCA8C0](v54, -1, -1);
    }

    else
    {
    }

    v110 = v49[2];
    if (v110)
    {
      v56 = 0;
      if (v111)
      {
        v57 = v111;
      }

      else
      {
        v57 = MEMORY[0x277D84FA0];
      }

      v112 = MEMORY[0x277D84F90];
      while (v56 < v49[2])
      {
        v58 = (*(v53 + 80) + 32) & ~*(v53 + 80);
        v59 = v49 + v58;
        v60 = *(v53 + 72);
        v61 = v113;
        sub_222BB8CF4(&v59[v60 * v56], v113);
        v62 = *(v61 + *(v114 + 36));

        LOBYTE(v61) = sub_222BB2AB8(v62, v57);

        if (v61 & 1) != 0 && *(v62 + 16) && (sub_222C952FC(), sub_222C9452C(), v63 = sub_222C9534C(), v64 = -1 << *(v62 + 32), v65 = v63 & ~v64, ((*(v62 + 56 + ((v65 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v65)))
        {
          v66 = ~v64;
          while (1)
          {
            v67 = *(*(v62 + 48) + v65);
            if (v67 > 2 && v67 != 4)
            {
              break;
            }

            v68 = sub_222C951FC();

            if (v68)
            {
              goto LABEL_35;
            }

            v65 = (v65 + 1) & v66;
            if (((*(v62 + 56 + ((v65 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v65) & 1) == 0)
            {
              goto LABEL_22;
            }
          }

LABEL_35:
          sub_222BB8DB4(v113, v101);
          v69 = v112;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v120 = v69;
          if (isUniquelyReferenced_nonNull_native)
          {
            v53 = v115;
            v71 = v69;
          }

          else
          {
            sub_222B4C6E8(0, *(v69 + 16) + 1, 1);
            v71 = v120;
            v53 = v115;
          }

          v73 = *(v71 + 16);
          v72 = *(v71 + 24);
          if (v73 >= v72 >> 1)
          {
            sub_222B4C6E8((v72 > 1), v73 + 1, 1);
            v71 = v120;
          }

          *(v71 + 16) = v73 + 1;
          v112 = v71;
          sub_222BB8DB4(v101, v71 + v58 + v73 * v60);
        }

        else
        {
LABEL_22:
          sub_222BB8D58(v113);
          v53 = v115;
        }

        ++v56;
        v49 = v116;
        if (v56 == v110)
        {
          goto LABEL_42;
        }
      }

      __break(1u);
      goto LABEL_62;
    }

    v112 = MEMORY[0x277D84F90];
LABEL_42:

    v74 = v100;

    v75 = sub_222C942FC();
    v76 = sub_222C94A3C();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v117[0] = v78;
      *v77 = 136315394;
      *(v77 + 4) = sub_222B437C0(*(v74 + 64), *(v74 + 72), v117);
      *(v77 + 12) = 2048;
      v79 = v112;
      *(v77 + 14) = *(v112 + 16);
      _os_log_impl(&dword_222B39000, v75, v76, "%s Number of nominated suggestions with matching tags: %ld", v77, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v78);
      MEMORY[0x223DCA8C0](v78, -1, -1);
      MEMORY[0x223DCA8C0](v77, -1, -1);

      v80 = v102;
      v81 = v104;
    }

    else
    {

      v80 = v102;
      v81 = v104;
      v79 = v112;
    }

    v82 = *(v79 + 16);

    if (!v82)
    {
      break;
    }

    v83 = 0;
    v84 = MEMORY[0x277D84F90];
    v85 = v112;
    while (v83 < *(v85 + 16))
    {
      v86 = (*(v53 + 80) + 32) & ~*(v53 + 80);
      v87 = *(v53 + 72);
      sub_222BB8CF4(v85 + v86 + v87 * v83, v81);
      if (sub_222C2B6D8(v81, v80, v74))
      {
        sub_222BB8DB4(v81, v105);
        v88 = swift_isUniquelyReferenced_nonNull_native();
        v117[0] = v84;
        if ((v88 & 1) == 0)
        {
          sub_222B4C6E8(0, *(v84 + 16) + 1, 1);
          v80 = v102;
          v84 = v117[0];
        }

        v90 = *(v84 + 16);
        v89 = *(v84 + 24);
        if (v90 >= v89 >> 1)
        {
          sub_222B4C6E8((v89 > 1), v90 + 1, 1);
          v80 = v102;
          v84 = v117[0];
        }

        *(v84 + 16) = v90 + 1;
        sub_222BB8DB4(v105, v84 + v86 + v90 * v87);
        v53 = v115;
        v81 = v104;
      }

      else
      {
        sub_222BB8D58(v81);
      }

      ++v83;
      v85 = v112;
      if (v82 == v83)
      {
        goto LABEL_57;
      }
    }

LABEL_62:
    __break(1u);
LABEL_63:
    swift_once();
  }

  v84 = MEMORY[0x277D84F90];
LABEL_57:

  v91 = sub_222C942FC();
  v92 = sub_222C94A3C();

  if (os_log_type_enabled(v91, v92))
  {
    v93 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v117[0] = v94;
    *v93 = 136315394;
    *(v93 + 4) = sub_222B437C0(*(v74 + 64), *(v74 + 72), v117);
    *(v93 + 12) = 2048;
    *(v93 + 14) = *(v84 + 16);

    _os_log_impl(&dword_222B39000, v91, v92, "%s Number of suggestions with matching names: %ld", v93, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v94);
    MEMORY[0x223DCA8C0](v94, -1, -1);
    MEMORY[0x223DCA8C0](v93, -1, -1);
  }

  else
  {
  }

  v95 = v99;

  sub_222BDD098(v96, v95);

  return v84;
}

uint64_t sub_222C2B6D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PlusContactSuggestion(0);
  v7 = sub_222C0AFD4(*(a1 + *(v6 + 20)));
  v9 = v8;
  v25 = sub_222C0AFD4(a2);
  v11 = v10;
  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v12 = sub_222C9431C();
  __swift_project_value_buffer(v12, qword_280FE2340);

  v13 = sub_222C942FC();
  v14 = sub_222C94A3C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v26 = v24;
    *v15 = 136315650;
    *(v15 + 4) = sub_222B437C0(*(a3 + 64), *(a3 + 72), &v26);
    *(v15 + 12) = 2080;
    if (v9)
    {
      v16 = v7;
    }

    else
    {
      v16 = 7104878;
    }

    if (v9)
    {
      v17 = v9;
    }

    else
    {
      v17 = 0xE300000000000000;
    }

    v18 = sub_222B437C0(v16, v17, &v26);

    *(v15 + 14) = v18;
    *(v15 + 22) = 2080;
    if (v11)
    {
      v19 = v25;
    }

    else
    {
      v19 = 7104878;
    }

    if (v11)
    {
      v20 = v11;
    }

    else
    {
      v20 = 0xE300000000000000;
    }

    v21 = sub_222B437C0(v19, v20, &v26);

    *(v15 + 24) = v21;
    _os_log_impl(&dword_222B39000, v13, v14, "%s Comparing names: '%s' (stored suggestion) to '%s' (query)", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x223DCA8C0](v24, -1, -1);
    MEMORY[0x223DCA8C0](v15, -1, -1);
  }

  if (v9)
  {
    if (v11)
    {
      if (v7 == v25 && v9 == v11)
      {
        v22 = 1;
      }

      else
      {
        v22 = sub_222C951FC();
      }
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    if (!v11)
    {
      v22 = 1;
      return v22 & 1;
    }

    v22 = 0;
  }

  return v22 & 1;
}

void *PlusContactSuggestionStoreRuntimeQueryWrapper.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return v0;
}

uint64_t PlusContactSuggestionStoreRuntimeQueryWrapper.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return swift_deallocClassInstance();
}

void *sub_222C2BA70(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = a4;
  v15 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v13);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  type metadata accessor for PlusContactSuggestionStoreRuntimeQueryWrapper();
  v9 = swift_allocObject();
  v9[8] = 0xD000000000000030;
  v9[9] = 0x8000000222CAAB10;
  sub_222B405A0(&v13, (v9 + 2));
  type metadata accessor for PLUSContactSuggesterRuntimeLogHelper();
  v10 = swift_allocObject();
  type metadata accessor for SELFEventLogEmitters();
  v11 = swift_allocObject();
  sub_222B405A0(a2, v11 + 16);
  *(v10 + 16) = v11;
  v9[7] = v10;
  return v9;
}

void *_s28SiriPrivateLearningInference45PlusContactSuggestionStoreRuntimeQueryWrapperCACSgycfC_0()
{
  v0 = sub_222C9428C();
  v2 = v1;
  v3 = type metadata accessor for PICSStoreCoreData();
  v4 = swift_allocObject();
  v5 = sub_222BE3CC0(v0, v2, 0);

  if (v5)
  {
    *(v4 + 16) = v5;
    *(v4 + 24) = [v5 newBackgroundContext];
    sub_222C9403C();
    v11 = v3;
    v12 = &protocol witness table for PICSStoreCoreData;
    *&v10 = v4;
    type metadata accessor for PlusContactSuggestionStoreRuntimeQueryWrapper();
    v6 = swift_allocObject();
    v6[8] = 0xD000000000000030;
    v6[9] = 0x8000000222CAAB10;
    sub_222B405A0(&v10, (v6 + 2));
    type metadata accessor for PLUSContactSuggesterRuntimeLogHelper();
    v7 = swift_allocObject();
    type metadata accessor for SELFEventLogEmitters();
    v8 = swift_allocObject();
    sub_222B405A0(&v13, v8 + 16);
    result = v6;
    *(v7 + 16) = v8;
    v6[7] = v7;
  }

  else
  {
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

uint64_t sub_222C2BCD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A88, &unk_222C9A0C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SlotBasedTurnComparator.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  SlotBasedTurnComparator.init(_:)(a1, v3, v4, v5);
  return v2;
}

char *SlotBasedTurnComparator.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*v4 + 80);
  v7 = type metadata accessor for SlotBasedTurnComparator(0, v6, *(*v4 + 88), a4);
  *(v4 + 2) = static InferenceLogUtils.loggerTag<A>(_:)(v7, v7);
  *(v4 + 3) = v8;
  (*(*(v6 - 8) + 32))(&v4[*(*v4 + 104)], a1, v6);
  return v4;
}

void sub_222C2BEE4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *(*v3 + 88);
  v9 = *(*v3 + 80);
  v10 = (*(v8 + 16))(v9, v8);
  v11 = *(v10 + 16);
  if (!v11)
  {

    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v24 = sub_222C9431C();
    __swift_project_value_buffer(v24, qword_280FE2340);

    v25 = sub_222C942FC();
    v26 = sub_222C94A4C();

    if (!os_log_type_enabled(v25, v26))
    {
      goto LABEL_27;
    }

    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v48.initialTurn._rawValue = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_222B437C0(*(v4 + 16), *(v4 + 24), &v48);
    v29 = "%s No FollowUpTurnClassifyings provided by definition";
    goto LABEL_26;
  }

  v38 = v10;
  v12 = *(v8 + 24);
  v13 = v12(a1, v9, v8);
  if (!v13)
  {
LABEL_22:

    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v35 = sub_222C9431C();
    __swift_project_value_buffer(v35, qword_280FE2340);

    v25 = sub_222C942FC();
    v26 = sub_222C94A3C();

    if (!os_log_type_enabled(v25, v26))
    {
      goto LABEL_27;
    }

    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v48.initialTurn._rawValue = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_222B437C0(*(v4 + 16), *(v4 + 24), &v48);
    v29 = "%s Could not get slots required for reformulation detection";
LABEL_26:
    _os_log_impl(&dword_222B39000, v25, v26, v29, v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v28);
    MEMORY[0x223DCA8C0](v28, -1, -1);
    MEMORY[0x223DCA8C0](v27, -1, -1);
LABEL_27:

    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return;
  }

  v14._rawValue = v13;
  v15._rawValue = v12(a2, v9, v8);
  if (!v15._rawValue)
  {

    goto LABEL_22;
  }

  SlotsClassification.init(_:_:)(&v48, v14, v15);
  v16 = v38 + 32;
  v17 = MEMORY[0x277D84F90];
  do
  {
    sub_222B43E3C(v16, v45);
    v18 = v46;
    v19 = v47;
    __swift_project_boxed_opaque_existential_1(v45, v46);
    v41 = v48;
    (*(v19 + 8))(&v42, &v41, v18, v19);
    __swift_destroy_boxed_opaque_existential_0Tm(v45);
    if (v44[24] == 255)
    {
      *&v41.initialTurn._rawValue = v42;
      *&v41.added._rawValue = v43;
      *&v41.identical._rawValue = *v44;
      *(&v41.similar._rawValue + 1) = *&v44[9];
      sub_222C2C678(&v41);
    }

    else
    {
      *&v41.initialTurn._rawValue = v42;
      *&v41.added._rawValue = v43;
      *&v41.identical._rawValue = *v44;
      *(&v41.similar._rawValue + 1) = *&v44[9];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_222B4B8D0(0, *(v17 + 2) + 1, 1, v17);
      }

      v21 = *(v17 + 2);
      v20 = *(v17 + 3);
      if (v21 >= v20 >> 1)
      {
        v17 = sub_222B4B8D0((v20 > 1), v21 + 1, 1, v17);
      }

      *v40 = *&v41.identical._rawValue;
      *&v40[9] = *(&v41.similar._rawValue + 1);
      v22 = *&v41.initialTurn._rawValue;
      v39 = *&v41.added._rawValue;
      *(v17 + 2) = v21 + 1;
      v23 = &v17[64 * v21];
      *(v23 + 73) = *&v40[9];
      *(v23 + 3) = v39;
      *(v23 + 4) = *v40;
      *(v23 + 2) = v22;
    }

    v16 += 40;
    --v11;
  }

  while (v11);

  sub_222C2C6E0(&v48);
  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v30 = sub_222C9431C();
  __swift_project_value_buffer(v30, qword_280FE2340);

  v31 = sub_222C942FC();
  v32 = sub_222C94A3C();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v41.initialTurn._rawValue = v34;
    *v33 = 136315394;
    *(v33 + 4) = sub_222B437C0(*(v4 + 16), *(v4 + 24), &v41);
    *(v33 + 12) = 2048;
    *(v33 + 14) = *(v17 + 2);

    _os_log_impl(&dword_222B39000, v31, v32, "%s identified %ld slot based matches", v33, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v34);
    MEMORY[0x223DCA8C0](v34, -1, -1);
    MEMORY[0x223DCA8C0](v33, -1, -1);
  }

  else
  {
  }

  v36 = type metadata accessor for SlotBasedTurnComparison();
  v37 = swift_allocObject();
  *(v37 + 16) = v17;
  *(a3 + 24) = v36;
  *(a3 + 32) = sub_222C2C734();
  *a3 = v37;
}

char *SlotBasedTurnComparator.deinit()
{
  v1 = *v0;

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 104));
  return v0;
}

uint64_t SlotBasedTurnComparator.__deallocating_deinit()
{
  SlotBasedTurnComparator.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_222C2C678(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027090, &qword_222CA1FF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_222C2C734()
{
  result = qword_27D027098;
  if (!qword_27D027098)
  {
    type metadata accessor for SlotBasedTurnComparison();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027098);
  }

  return result;
}

uint64_t sub_222C2C7C8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_222C2C904(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = type metadata accessor for ContactPromptGroundTruth(0);
  v9 = *(v2 + v8[5]);
  v10 = *(v2 + v8[9]);
  if (v10 == 2)
  {
LABEL_2:
    v11 = *(v2 + v8[8] + 8) != 0;
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_25:
    if (!v11)
    {
      v21 = 2;
      goto LABEL_70;
    }

    v33 = a2;
    v22 = (v2 + v8[8]);
    v23 = *v22;
    v24 = v22[1];
    v25 = v22[2];
    v26 = v22[3];
    if (v5)
    {
      if (v24)
      {
        v27 = v4 == v23 && v24 == v5;
        if (v27 || (sub_222C951FC() & 1) != 0)
        {
          if (!v7)
          {

            if (!v26)
            {
              sub_222B98D00(v23, v24, v25, 0);
              sub_222B98D00(v4, v5, v6, 0);
              sub_222B450E8(v23, v24, v25, 0);
              goto LABEL_68;
            }

            v31 = 0;
LABEL_60:
            sub_222B98D00(v23, v24, v25, v26);
            sub_222B98D00(v4, v5, v6, v31);
            sub_222B450E8(v23, v24, v25, v26);
            a2 = v33;
            goto LABEL_61;
          }

          if (v26)
          {
            if (v6 != v25 || v7 != v26)
            {
              v29 = sub_222C951FC();

              sub_222B98D00(v23, v24, v25, v26);
              sub_222B98D00(v4, v5, v6, v7);
              sub_222B450E8(v23, v24, v25, v26);
              a2 = v33;
              if (v29)
              {
                goto LABEL_69;
              }

LABEL_61:

              sub_222B450E8(v4, v5, v6, v7);
              v21 = 1;
              goto LABEL_70;
            }

            sub_222B98D00(v23, v24, v6, v7);
            sub_222B98D00(v4, v5, v6, v7);
            sub_222B450E8(v23, v24, v6, v7);
LABEL_68:
            a2 = v33;
LABEL_69:

            sub_222B450E8(v4, v5, v6, v7);
            v21 = 0;
            goto LABEL_70;
          }
        }

        v31 = v7;
        goto LABEL_60;
      }

      sub_222B98D00(v23, 0, v25, v26);
      sub_222B98D00(v4, v5, v6, v7);
    }

    else
    {

      if (!v24)
      {
        sub_222B98D00(v23, 0, v25, v26);
        sub_222B450E8(v4, 0, v6, v7);
        v21 = 0;
        a2 = v33;
        goto LABEL_70;
      }

      sub_222B98D00(v23, v24, v25, v26);
    }

    v34 = v4;
    v35 = v5;
    v36 = v6;
    v37 = v7;
    v38 = v23;
    v39 = v24;
    v40 = v25;
    v41 = v26;
    sub_222B4FCD4(&v34, &qword_27D0270B8, &qword_222CA20A0);
    v21 = 1;
    a2 = v33;
    goto LABEL_70;
  }

  if (v10)
  {
    v20 = sub_222C951FC();

    if ((v20 & 1) == 0)
    {
      goto LABEL_2;
    }
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v11 = 1;
  if ((v9 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (v11)
  {
    v32 = a2;
    v12 = (v2 + v8[8]);
    v13 = *v12;
    v14 = v12[1];
    v15 = v12[2];
    v16 = v12[3];
    if (v5)
    {
      if (v14)
      {
        v17 = v4 == v13 && v14 == v5;
        if (v17 || (sub_222C951FC() & 1) != 0)
        {
          if (!v7)
          {

            if (!v16)
            {
              sub_222B98D00(v13, v14, v15, 0);
              sub_222B98D00(v4, v5, v6, 0);
              sub_222B450E8(v13, v14, v15, 0);
              goto LABEL_65;
            }

            v30 = 0;
LABEL_56:
            sub_222B98D00(v13, v14, v15, v16);
            sub_222B98D00(v4, v5, v6, v30);
            sub_222B450E8(v13, v14, v15, v16);
            a2 = v32;
LABEL_57:

            sub_222B450E8(v4, v5, v6, v7);
            v21 = 4;
            goto LABEL_70;
          }

          if (v16)
          {
            if (v6 != v15 || v7 != v16)
            {
              v19 = sub_222C951FC();

              sub_222B98D00(v13, v14, v15, v16);
              sub_222B98D00(v4, v5, v6, v7);
              sub_222B450E8(v13, v14, v15, v16);
              a2 = v32;
              if (v19)
              {
                goto LABEL_66;
              }

              goto LABEL_57;
            }

            sub_222B98D00(v13, v14, v6, v7);
            sub_222B98D00(v4, v5, v6, v7);
            sub_222B450E8(v13, v14, v6, v7);
LABEL_65:
            a2 = v32;
LABEL_66:

            sub_222B450E8(v4, v5, v6, v7);
            v21 = 3;
            goto LABEL_70;
          }
        }

        v30 = v7;
        goto LABEL_56;
      }

      sub_222B98D00(v13, 0, v15, v16);
      sub_222B98D00(v4, v5, v6, v7);
    }

    else
    {

      if (!v14)
      {
        sub_222B98D00(v13, 0, v15, v16);
        sub_222B450E8(v4, 0, v6, v7);
        v21 = 3;
        a2 = v32;
        goto LABEL_70;
      }

      sub_222B98D00(v13, v14, v15, v16);
    }

    v34 = v4;
    v35 = v5;
    v36 = v6;
    v37 = v7;
    v38 = v13;
    v39 = v14;
    v40 = v15;
    v41 = v16;
    sub_222B4FCD4(&v34, &qword_27D0270B8, &qword_222CA20A0);
    v21 = 4;
    a2 = v32;
  }

  else
  {
    v21 = 5;
  }

LABEL_70:
  *a2 = v21;
}

void sub_222C2D03C(uint64_t a1, void *a2, void *a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x277D5B268]) init];
  if (v6)
  {
    v7 = v6;
    v8 = [a2 nodes];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 lastObject];

      if (v10)
      {
        sub_222C94BFC();
        swift_unknownObjectRelease();
      }

      else
      {
        v20 = 0u;
        v21 = 0u;
      }

      v22 = v20;
      v23 = v21;
      if (*(&v21 + 1))
      {
        sub_222B505A8(0, &qword_280FDB768, 0x277D5DDE8);
        if (swift_dynamicCast())
        {
          v14 = [objc_opt_self() convertUsoNodeDataTier1:v20 index:a1];
          [v7 setLinkedUsoNodeData_];

          [a3 addLinkedUsoGraphNodeData_];
          return;
        }

        goto LABEL_18;
      }
    }

    else
    {
      v22 = 0u;
      v23 = 0u;
    }

    sub_222B4FCD4(&v22, &qword_27D026A20, qword_222CA5960);
LABEL_18:
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v15 = sub_222C9431C();
    __swift_project_value_buffer(v15, qword_280FE2340);
    v16 = sub_222C942FC();
    v17 = sub_222C94A3C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134217984;
      *(v18 + 4) = a1;
      _os_log_impl(&dword_222B39000, v16, v17, "No valid USO node in redaction at index=%lld", v18, 0xCu);
      MEMORY[0x223DCA8C0](v18, -1, -1);
    }

    return;
  }

  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v11 = sub_222C9431C();
  __swift_project_value_buffer(v11, qword_280FE2340);
  oslog = sub_222C942FC();
  v12 = sub_222C94A4C();
  if (os_log_type_enabled(oslog, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    *(v13 + 4) = a1;
    _os_log_impl(&dword_222B39000, oslog, v12, "Failed to create SELF USO node data for redaction at index=%lld", v13, 0xCu);
    MEMORY[0x223DCA8C0](v13, -1, -1);
  }
}

uint64_t sub_222C2D380@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v24 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A88, &unk_222C9A0C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v23 - v6;
  v8 = sub_222C9367C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v23 - v13;
  sub_222B4FC6C(a1, &v23 - v13, &unk_27D026290, &qword_222C96B40);
  result = (*(v9 + 48))(v14, 1, v8);
  v16 = 0;
  v17 = 0;
  if (result != 1)
  {
    (*(v9 + 32))(v11, v14, v8);
    v18 = a2[3];
    v19 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v18);
    (*(v19 + 64))(v11, v18, v19);
    (*(v9 + 8))(v11, v8);
    v20 = type metadata accessor for PlusContactSuggestion(0);
    if ((*(*(v20 - 8) + 48))(v7, 1, v20) == 1)
    {
      result = sub_222B4FCD4(v7, &qword_27D025A88, &unk_222C9A0C0);
      v16 = 0;
      v17 = 0;
    }

    else
    {
      v21 = &v7[*(v20 + 24)];
      v16 = *v21;
      v17 = *(v21 + 1);

      result = sub_222BB8D58(v7);
    }
  }

  v22 = v24;
  *v24 = v16;
  v22[1] = v17;
  return result;
}

void *MediaCandidateEntity.convertToSchemaCandidateEntity()()
{
  v1 = *(v0 + 50);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = [objc_allocWithZone(MEMORY[0x277D59D08]) init];
  if (v4)
  {
    v5 = v4;
    v6 = sub_222C9448C();
    [v5 setEntityAdamId_];

    [v5 setConfidence_];
    [v5 setNominated_];
    sub_222B7F688(v3);
    sub_222B505A8(0, &qword_27D0270A0, 0x277D59D18);
    v7 = sub_222C9470C();

    [v5 setEntityFeedbackHistorys_];
  }

  else
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v8 = sub_222C9431C();
    __swift_project_value_buffer(v8, qword_280FE2340);
    v7 = sub_222C942FC();
    v9 = sub_222C94A3C();
    if (os_log_type_enabled(v7, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_222B39000, v7, v9, "Failed to create SELF message for media candidate entities", v10, 2u);
      MEMORY[0x223DCA8C0](v10, -1, -1);
    }

    v5 = 0;
  }

  return v5;
}

void *sub_222C2D808()
{
  v1 = *v0;
  v3 = *(v0 + 1);
  v2 = *(v0 + 2);
  v4 = [objc_allocWithZone(MEMORY[0x277D59D38]) init];
  if (v4)
  {
    v5 = v4;
    if ((v1 & 0x80) != 0)
    {
      if ((v1 & 0x7Fu) - 1 < 2)
      {
        v6 = 1;
      }

      else
      {
        v6 = 5;
      }
    }

    else
    {
      v6 = dword_222CA211C[v1];
    }

    [v4 setSource_];
    if (v3 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v3 <= 0x7FFFFFFF)
    {
      [v5 setGroundTruthCount_];
      if (v2 >= 0xFFFFFFFF80000000)
      {
        if (v2 <= 0x7FFFFFFF)
        {
          [v5 setMediaEntityCount_];
          return v5;
        }

        goto LABEL_20;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_19;
  }

  if (qword_280FDFE78 != -1)
  {
LABEL_21:
    swift_once();
  }

  v7 = sub_222C9431C();
  __swift_project_value_buffer(v7, qword_280FE2340);
  v8 = sub_222C942FC();
  v9 = sub_222C94A4C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_222B39000, v8, v9, "MediaGroundTruthSummary: Failed to create PLUSSchemaPLUSMediaGroundTruthSummary", v10, 2u);
    MEMORY[0x223DCA8C0](v10, -1, -1);
  }

  return 0;
}

void *sub_222C2D9B4(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_222C2DA44(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_222C2DA44(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v20 = result;
  v7 = 0;
  v8 = 0;
  v9 = a3 + 56;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 56);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_11:
    v17 = v14 | (v8 << 6);
    v21 = *(*(a3 + 48) + v17);
    result = a4(&v21);
    if (v4)
    {
      return result;
    }

    if (result)
    {
      *(v20 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v7++, 1))
      {
        __break(1u);
LABEL_16:

        return sub_222C10994(v20, a2, v7, a3);
      }
    }
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
      goto LABEL_16;
    }

    v16 = *(v9 + 8 * v8);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_222C2DB8C(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*a1 == *a2 && v4 == v5)
    {
      return 1;
    }

    else
    {
      return sub_222C951FC() & 1;
    }
  }

  return result;
}

id sub_222C2DC00(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277D5B270]) init];
  if (v4)
  {
    v5 = v4;
    [v4 setLinkId_];
    v6 = *(a1 + 16);
    if (v6)
    {
      v7 = (a1 + 40);
      do
      {
        v8 = *(v7 - 1);
        v9 = *v7;
        sub_222C2D03C(v8, v9, v5);

        v7 += 2;
        --v6;
      }

      while (v6);
    }

    return v5;
  }

  result = [objc_allocWithZone(MEMORY[0x277D5B270]) init];
  v5 = result;
  if (result)
  {
    return v5;
  }

  __break(1u);
  return result;
}

id sub_222C2DCC0(uint64_t a1)
{
  v1 = sub_222C9367C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_222C936EC();
  sub_222C9371C();
  swift_allocObject();
  v5 = sub_222C9370C();
  v6 = sub_222C9374C();
  v8 = v7;

  v14 = sub_222C936AC();

  v15 = [objc_opt_self() convertNonTier1UsoGraph_];
  if (!v15)
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v35 = sub_222C9431C();
    __swift_project_value_buffer(v35, qword_280FE2340);
    v36 = sub_222C942FC();
    v37 = sub_222C94A4C();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_222B39000, v36, v37, "Failed to convert ObjC USO graph to SELF", v38, 2u);
      MEMORY[0x223DCA8C0](v38, -1, -1);
    }

LABEL_5:

    return 0;
  }

  v44 = v14;
  v45 = v6;
  v50 = v8;
  v16 = v15;
  sub_222C9366C();
  v17 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v18 = sub_222C9361C();
  v19 = [v17 initWithNSUUID_];

  (*(v2 + 8))(v4, v1);
  v46 = v16;
  v20 = v16;
  v21 = v50;
  v43 = v19;
  [v20 setLinkId_];
  v23 = *(v21 + 16);
  if (v23)
  {
    v24 = 0;
    v25 = v21 + 40;
    v41 = v23 - 1;
    v47 = MEMORY[0x277D84F90];
    *&v22 = 136315138;
    v48 = v22;
    v49 = v5;
    v42 = v21 + 40;
    while (v24 < *(v21 + 16))
    {
      v26 = *(v25 + 16 * v24 - 8);

      v27 = sub_222C936AC();
      v51 = v24 + 1;
      v28 = v27;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v47 = sub_222B4B0C4(0, v47[2] + 1, 1, v47);
      }

      v30 = v47[2];
      v29 = v47[3];
      if (v30 >= v29 >> 1)
      {
        v47 = sub_222B4B0C4((v29 > 1), v30 + 1, 1, v47);
      }

      v31 = v41;
      v25 = v42;
      v32 = v47;
      v47[2] = v30 + 1;
      v33 = &v32[2 * v30];
      v33[4] = v26;
      v33[5] = v28;
      v34 = v31 == v24;
      v24 = v51;
      if (v34)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
    swift_once();
    v9 = sub_222C9431C();
    __swift_project_value_buffer(v9, qword_280FE2340);
    v10 = sub_222C942FC();
    v11 = sub_222C94A4C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_222B39000, v10, v11, "Failed to convert redacted USOGraph to protobuf", v12, 2u);
      MEMORY[0x223DCA8C0](v12, -1, -1);
    }

    goto LABEL_5;
  }

  v47 = MEMORY[0x277D84F90];
LABEL_23:
  v39 = v43;
  sub_222C2DC00(v47, v43);

  return v46;
}

uint64_t sub_222C2E330(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = v2 & 0x3F;
  v4 = ((1 << v2) + 63) >> 6;
  v5 = 8 * v4;

  if (v3 > 0xD)
  {
    goto LABEL_26;
  }

  while (1)
  {
    MEMORY[0x28223BE20](v6);
    bzero(&v24[-((v5 + 15) & 0x3FFFFFFFFFFFFFF0)], v5);
    v7 = 0;
    v8 = 0;
    v9 = 1 << *(a1 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a1 + 56);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_12:
      if (*(*(a1 + 48) + v14) <= 1u)
      {
        *&v24[((v14 >> 3) & 0x1FFFFFFFFFFFFFF8) - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0)] |= 1 << v14;
        if (__OFADD__(v7++, 1))
        {
          __break(1u);
LABEL_16:
          v18 = sub_222C10994(&v24[-((v5 + 15) & 0x3FFFFFFFFFFFFFF0)], v4, v7, a1);
          goto LABEL_17;
        }
      }
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_16;
      }

      v16 = *(a1 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_26:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v23 = swift_slowAlloc();

  v18 = sub_222C2D9B4(v23, v4, a1, sub_222C2D634);
  swift_bridgeObjectRelease_n();
  MEMORY[0x223DCA8C0](v23, -1, -1);
LABEL_17:
  sub_222BB7734(v18, &v25);
  v19 = v25;
  if (v25 == 5)
  {

    return 1;
  }

  else
  {
    v21 = *(v18 + 16);

    v22 = 2 * (v19 == 1);
    if (!v19)
    {
      v22 = 3;
    }

    if (v21 == 1)
    {
      return v22;
    }

    else
    {
      return 1;
    }
  }
}

NSObject *sub_222C2E5DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v47 - v8;
  v10 = sub_222C9367C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v47 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v47 - v18;
  MEMORY[0x28223BE20](v20);
  v49 = &v47 - v21;
  v50 = [objc_allocWithZone(MEMORY[0x277D59CA8]) init];
  if (!v50)
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v28 = sub_222C9431C();
    __swift_project_value_buffer(v28, qword_280FE2340);
    v29 = sub_222C942FC();
    v30 = sub_222C94A3C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_222B39000, v29, v30, "Failed to create SELF message for inferred suggestion", v31, 2u);
      MEMORY[0x223DCA8C0](v31, -1, -1);
    }

    goto LABEL_15;
  }

  v22 = a2;
  v23 = a1;
  v24 = *(v11 + 16);
  v24(v19, v22, v10);
  v48 = v23;
  v24(v16, v23, v10);
  v24(v13, v19, v10);
  sub_222C9360C();
  sub_222C42B54(v13, v6);
  v25 = *(v11 + 8);
  v25(v16, v10);
  v25(v19, v10);
  v26 = *(v11 + 48);
  if (v26(v6, 1, v10))
  {
    sub_222B4FCD4(v6, &unk_27D026290, &qword_222C96B40);
    v27 = 1;
  }

  else
  {
    (*(v11 + 32))(v9, v6, v10);
    v27 = 0;
  }

  (*(v11 + 56))(v9, v27, 1, v10);
  if (v26(v9, 1, v10) == 1)
  {
    sub_222B4FCD4(v9, &unk_27D026290, &qword_222C96B40);
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v32 = sub_222C9431C();
    __swift_project_value_buffer(v32, qword_280FE2340);
    v33 = sub_222C942FC();
    v34 = sub_222C94A3C();
    v35 = os_log_type_enabled(v33, v34);
    v29 = v50;
    if (v35)
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_222B39000, v33, v34, "Failed to create a combined UUID for the suggestionId and plusId", v36, 2u);
      MEMORY[0x223DCA8C0](v36, -1, -1);
    }

LABEL_15:
    return 0;
  }

  v38 = v49;
  (*(v11 + 32))(v49, v9, v10);
  v39 = v50;
  [v50 setSource:1];
  v40 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v41 = sub_222C9361C();
  v42 = [v40 initWithNSUUID_];

  [v39 setSuggestionId:v42];
  v43 = type metadata accessor for PlusContactSuggestion(0);
  v44 = v25;
  v45 = v48;
  sub_222C2168C(*(v48 + *(v43 + 28)));
  sub_222B505A8(0, &qword_27D0270B0, 0x277D59C70);
  v46 = sub_222C9470C();

  [v39 setContributingGroundTruths:v46];

  [v39 setConfidence:*(v45 + *(v43 + 40))];
  v44(v38, v10);
  return v39;
}

void *sub_222C2EB9C(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D59C60]) init];
  if (v2)
  {
    v3 = v2;
    v4 = type metadata accessor for PhoneCallGroundTruth(0);
    [v3 setGroundTruthSource_];
    v5 = a1 + v4[7];
    v6 = *(v5 + 8);
    [v3 setHasSiriResolvedContactForEntity_];
    if (v6)
    {
      v19[4] = *v5;
      v19[5] = v6;
      v20 = *(v5 + 16);
      v7 = (a1 + v4[8]);
      v8 = v7[1];
      v9 = v7[2];
      v10 = v7[3];
      v19[0] = *v7;
      v19[1] = v8;
      v19[2] = v9;
      v19[3] = v10;
      v11 = sub_222C3DAC4(v19);
    }

    else
    {
      v11 = 1;
    }

    [v3 setSiriResolvedAndPlusInferredContactComparison_];
    v16 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v17 = sub_222C9361C();
    v13 = [v16 initWithNSUUID_];

    [v3 setGroundTruthId_];
  }

  else
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v12 = sub_222C9431C();
    __swift_project_value_buffer(v12, qword_280FE2340);
    v13 = sub_222C942FC();
    v14 = sub_222C94A3C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_222B39000, v13, v14, "Failed to create SELF message for inferred ground truth", v15, 2u);
      MEMORY[0x223DCA8C0](v15, -1, -1);
    }

    v3 = 0;
  }

  return v3;
}

void *sub_222C2EDDC(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D59C60]) init];
  if (v2)
  {
    v3 = v2;
    v4 = type metadata accessor for MessagesGroundTruth(0);
    [v3 setGroundTruthSource_];
    v5 = a1 + v4[7];
    v6 = *(v5 + 8);
    [v3 setHasSiriResolvedContactForEntity_];
    if (v6)
    {
      v19[4] = *v5;
      v19[5] = v6;
      v20 = *(v5 + 16);
      v7 = (a1 + v4[8]);
      v8 = v7[1];
      v9 = v7[2];
      v10 = v7[3];
      v19[0] = *v7;
      v19[1] = v8;
      v19[2] = v9;
      v19[3] = v10;
      v11 = sub_222C3DAC4(v19);
    }

    else
    {
      v11 = 1;
    }

    [v3 setSiriResolvedAndPlusInferredContactComparison_];
    v16 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v17 = sub_222C9361C();
    v13 = [v16 initWithNSUUID_];

    [v3 setGroundTruthId_];
  }

  else
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v12 = sub_222C9431C();
    __swift_project_value_buffer(v12, qword_280FE2340);
    v13 = sub_222C942FC();
    v14 = sub_222C94A3C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_222B39000, v13, v14, "Failed to create SELF message for inferred ground truth", v15, 2u);
      MEMORY[0x223DCA8C0](v15, -1, -1);
    }

    v3 = 0;
  }

  return v3;
}

void *sub_222C2F018(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D59D28]) init];
  if (v2)
  {
    v3 = v2;
    v4 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v5 = sub_222C9361C();
    v6 = [v4 initWithNSUUID_];

    [v3 setGroundTruthId_];
    v7 = type metadata accessor for MediaGroundTruth(0);
    [v3 setGroundTruthSource_];
    v8 = *(a1 + v7[7]);
    if (*(v8 + 16))
    {

      v9 = sub_222C9448C();
    }

    else
    {
      v9 = 0;
    }

    [v3 setSelectedMediaEntityAdamId_];

    v14 = a1 + v7[8];
    v15 = sub_222C9448C();
    [v3 setInferredMediaEntityAdamId_];

    if (*(v8 + 16))
    {
      v16 = dword_222CA2130[*(v8 + 81)];
    }

    else
    {
      v16 = 0;
    }

    [v3 setSelectedMediaEntitylocality_];
    [v3 setInferredMediaEntitylocality_];
  }

  else
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v10 = sub_222C9431C();
    __swift_project_value_buffer(v10, qword_280FE2340);
    v11 = sub_222C942FC();
    v12 = sub_222C94A3C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_222B39000, v11, v12, "Failed to create SELF message for inferred ground truth", v13, 2u);
      MEMORY[0x223DCA8C0](v13, -1, -1);
    }

    return 0;
  }

  return v3;
}

void *sub_222C2F26C(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D59D28]) init];
  if (v2)
  {
    v3 = v2;
    v4 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v5 = sub_222C9361C();
    v6 = [v4 initWithNSUUID_];

    [v3 setGroundTruthId_];
    v7 = type metadata accessor for MediaFeedbackGroundTruth(0);
    if (*(a1 + *(v7 + 20)) - 1 < 2)
    {
      v8 = 1;
    }

    else
    {
      v8 = 5;
    }

    [v3 setGroundTruthSource_];
    v9 = a1 + *(v7 + 28);
    v10 = sub_222C9448C();
    [v3 setSelectedMediaEntityAdamId_];

    [v3 setInferredMediaEntityAdamId_];
    [v3 setSelectedMediaEntitylocality_];
  }

  else
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v11 = sub_222C9431C();
    __swift_project_value_buffer(v11, qword_280FE2340);
    v12 = sub_222C942FC();
    v13 = sub_222C94A3C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_222B39000, v12, v13, "Failed to create SELF message for inferred ground truth", v14, 2u);
      MEMORY[0x223DCA8C0](v14, -1, -1);
    }

    return 0;
  }

  return v3;
}

void *sub_222C2F454(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v39[-v6];
  v8 = [objc_allocWithZone(MEMORY[0x277D59C60]) init];
  if (v8)
  {
    v9 = v8;
    v10 = type metadata accessor for ContactPromptGroundTruth(0);
    if (*(a1 + v10[8] + 8))
    {
      v11 = 8;
    }

    else
    {
      v11 = 9;
    }

    if (*(a1 + v10[8] + 8))
    {
      v12 = 6;
    }

    else
    {
      v12 = 7;
    }

    if (*(a1 + v10[5]))
    {
      v13 = v11;
    }

    else
    {
      v13 = v12;
    }

    [v9 setGroundTruthSource_];
    [v9 setHasSiriResolvedContactForEntity_];
    [v9 setSiriResolvedAndPlusInferredContactComparison_];
    v14 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v15 = sub_222C9361C();
    v16 = [v14 initWithNSUUID_];

    [v9 setGroundTruthId_];
    v17 = *(a1 + v10[10]);
    if (*(v17 + 16))
    {
      sub_222B4FC6C(a2, &v40, &qword_27D025F60, &unk_222C9B880);
      if (v41)
      {
        sub_222B505F4(&v40, v42);
        v18 = &selRef_setContactRelations_;
        [v9 setContactSuggestionUsedBySiri_];
        v19 = (a1 + v10[8]);
        v20 = v19[1];
        if (v20)
        {
          v21 = *v19;
          v22 = *(v17 + 16);
          if (v22)
          {
            *&v40 = MEMORY[0x277D84F90];

            sub_222B4CD10(0, v22, 0);
            v23 = v40;
            v24 = v17 + 40;
            do
            {

              sub_222C935FC();

              *&v40 = v23;
              v26 = *(v23 + 16);
              v25 = *(v23 + 24);
              if (v26 >= v25 >> 1)
              {
                sub_222B4CD10((v25 > 1), v26 + 1, 1);
                v23 = v40;
              }

              *(v23 + 16) = v26 + 1;
              v27 = sub_222B55BA0(v7, v23 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v26);
              v24 += 16;
              --v22;
            }

            while (v22);
            v18 = &selRef_setContactRelations_;
          }

          else
          {

            v23 = MEMORY[0x277D84F90];
          }

          MEMORY[0x28223BE20](v27);
          *&v39[-16] = v42;
          v32 = sub_222C63414(sub_222C30068, &v39[-32], v23);

          *&v40 = v21;
          *(&v40 + 1) = v20;
          MEMORY[0x28223BE20](v33);
          *&v39[-16] = &v40;
          v34 = sub_222B42FF8(sub_222C30088, &v39[-32], v32);

          if (v34)
          {

            v36 = 3;
LABEL_32:
            [v9 v18[129]];
            goto LABEL_33;
          }

          v40 = 0uLL;
          MEMORY[0x28223BE20](v35);
          *&v39[-16] = &v40;
          v37 = sub_222B42FF8(sub_222C300A8, &v39[-32], v32);

          if (v37)
          {
            v36 = 0;
            goto LABEL_32;
          }
        }

LABEL_33:
        __swift_destroy_boxed_opaque_existential_0Tm(v42);
        return v9;
      }

      sub_222B4FCD4(&v40, &qword_27D025F60, &unk_222C9B880);
      [v9 setContactSuggestionUsedBySiri_];
    }

    else
    {
      [v9 setContactSuggestionUsedBySiri_];
    }
  }

  else
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v28 = sub_222C9431C();
    __swift_project_value_buffer(v28, qword_280FE2340);
    v29 = sub_222C942FC();
    v30 = sub_222C94A3C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_222B39000, v29, v30, "Failed to create SELF message for inferred ground truth", v31, 2u);
      MEMORY[0x223DCA8C0](v31, -1, -1);
    }

    return 0;
  }

  return v9;
}

void *sub_222C2F984(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v46 - v3;
  v5 = [objc_allocWithZone(MEMORY[0x277D59D20]) init];
  if (v5)
  {
    v6 = v5;
    v7 = [objc_allocWithZone(MEMORY[0x277D59D48]) init];
    if (v7)
    {
      v8 = v7;
      v9 = [objc_allocWithZone(MEMORY[0x277D59D10]) init];
      if (v9)
      {
        v10 = v9;
        v51 = v4;
        v11 = type metadata accessor for MediaEvaluationSummary(0);
        v12 = 0;
        v13 = (a1 + v11[6]);
        v14 = *v13;
        if (*v13)
        {
          v15 = v13[1] == 0;
        }

        else
        {
          v15 = 1;
        }

        if (!v15)
        {

          v12 = sub_222C9470C();
        }

        [v8 setPommesAlternativeEntityIds_];

        v16 = 0;
        if (v14 && v13[3])
        {

          v16 = sub_222C9448C();
        }

        [v8 setPommesSelectedMediaEntityAdamId_];

        v17 = 0;
        if (v14 && v13[5])
        {

          v17 = sub_222C9448C();
        }

        [v8 setInferredMediaEntityAdamId_];

        [v8 setHasInferredMediaEntityAdamId_];
        v18 = MEMORY[0x277D84F90];
        v52 = v11;
        v53 = a1;
        if (v14)
        {
          v50 = v10;
          v58 = MEMORY[0x277D84F90];
          v19 = *(v14 + 16);

          if (v19)
          {
            v20 = 0;
            v21 = v14 + 32;
            v47 = v19 - 1;
            v48 = v14 + 32;
            v49 = v8;
            do
            {
              v22 = v21 + 72 * v20;
              v23 = v20;
              while (1)
              {
                if (v23 >= *(v14 + 16))
                {
                  __break(1u);
                  goto LABEL_52;
                }

                v24 = *(v22 + 48);
                v55 = *(v22 + 32);
                v56 = v24;
                v57 = *(v22 + 64);
                v25 = *(v22 + 16);
                *v54 = *v22;
                *&v54[16] = v25;
                v20 = v23 + 1;
                if (MediaCandidateEntity.convertToSchemaCandidateEntity()())
                {
                  break;
                }

                v22 += 72;
                ++v23;
                if (v19 == v20)
                {
                  v8 = v49;
                  goto LABEL_35;
                }
              }

              MEMORY[0x223DC94A0]();
              if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_222C9475C();
              }

              sub_222C947AC();
              v21 = v48;
              v8 = v49;
            }

            while (v47 != v23);
          }

LABEL_35:

          sub_222B505A8(0, &qword_27D0270A8, 0x277D59D08);
          v30 = sub_222C9470C();

          v10 = v50;
          v11 = v52;
          a1 = v53;
        }

        else
        {
          v30 = 0;
        }

        [v8 setEntitySummaries_];

        [v10 setShadowLogging_];
        v31 = a1;
        v32 = v51;
        sub_222B4FC6C(v31, v51, &unk_27D026290, &qword_222C96B40);
        v33 = sub_222C9367C();
        v34 = *(v33 - 8);
        if ((*(v34 + 48))(v32, 1, v33) == 1)
        {
          sub_222B4FCD4(v32, &unk_27D026290, &qword_222C96B40);
          v35 = 0;
        }

        else
        {
          v36 = objc_allocWithZone(MEMORY[0x277D5AC78]);
          v37 = v10;
          v38 = sub_222C9361C();
          v35 = [v36 initWithNSUUID_];

          v10 = v37;
          v11 = v52;
          (*(v34 + 8))(v32, v33);
        }

        [v6 setOriginalRequestId_];

        v39 = v53;
        if (*(v53 + v11[5] + 8))
        {
          v40 = sub_222C9448C();
        }

        else
        {
          v40 = 0;
        }

        [v6 setResultCandidateId_];

        [v6 setSuggestionEvaluation_];
        [v6 setConfiguredState_];
        [v6 setPlayUserFeedback_];
        v41 = *(v39 + v11[9]);
        v58 = v18;
        v42 = *(v41 + 16);
        if (v42)
        {
          v43 = (v41 + 40);
          do
          {
            v54[0] = *(v43 - 8);
            *&v54[8] = *v43;
            if (sub_222C2D808())
            {
              MEMORY[0x223DC94A0]();
              if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_222C9475C();
              }

              sub_222C947AC();
            }

            v43 = (v43 + 24);
            --v42;
          }

          while (v42);
        }

        sub_222B505A8(0, qword_27D025D30, 0x277D59D38);
        v44 = sub_222C9470C();

        [v6 setGroundTruthSummaries_];

        return v6;
      }
    }

    else
    {
      v8 = v6;
    }
  }

  if (qword_280FDFE78 != -1)
  {
LABEL_52:
    swift_once();
  }

  v26 = sub_222C9431C();
  __swift_project_value_buffer(v26, qword_280FE2340);
  v27 = sub_222C942FC();
  v28 = sub_222C94A4C();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_222B39000, v27, v28, "Failed to create SELF message for evaluation summary", v29, 2u);
    MEMORY[0x223DCA8C0](v29, -1, -1);
  }

  return 0;
}

unint64_t sub_222C300F4()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x6D6F725072657375;
  if (v1 != 5)
  {
    v3 = 0xD00000000000001ELL;
  }

  v4 = 0x6E6162416B736174;
  if (v1 != 3)
  {
    v4 = 0x6C6961466B736174;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000018;
  if (v1 != 1)
  {
    v5 = 0x706D6F436B736174;
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

uint64_t sub_222C30200@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_222C34E30(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_222C30234(uint64_t a1)
{
  v2 = sub_222C33634();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222C30270(uint64_t a1)
{
  v2 = sub_222C33634();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222C302AC(uint64_t a1)
{
  v2 = sub_222C3382C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222C302E8(uint64_t a1)
{
  v2 = sub_222C3382C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222C30324(uint64_t a1)
{
  v2 = sub_222C33880();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222C30360(uint64_t a1)
{
  v2 = sub_222C33880();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222C3039C(uint64_t a1)
{
  v2 = sub_222C33688();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222C303D8(uint64_t a1)
{
  v2 = sub_222C33688();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222C30414(uint64_t a1)
{
  v2 = sub_222C337D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222C30450(uint64_t a1)
{
  v2 = sub_222C337D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222C3048C(uint64_t a1)
{
  v2 = sub_222C33928();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222C304C8(uint64_t a1)
{
  v2 = sub_222C33928();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222C30504(uint64_t a1)
{
  v2 = sub_222C338D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222C30540(uint64_t a1)
{
  v2 = sub_222C338D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222C3057C()
{
  if (*v0)
  {
    return 0x656D6F6374756FLL;
  }

  else
  {
    return 0x795474706D6F7270;
  }
}

uint64_t sub_222C305BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x795474706D6F7270 && a2 == 0xEA00000000006570;
  if (v6 || (sub_222C951FC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656D6F6374756FLL && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_222C951FC();

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

uint64_t sub_222C306A0(uint64_t a1)
{
  v2 = sub_222C336DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222C306DC(uint64_t a1)
{
  v2 = sub_222C336DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SuggestionOutcome.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0270C0, &qword_222CA2140);
  v47 = *(v3 - 8);
  v48 = v3;
  MEMORY[0x28223BE20](v3);
  v46 = &v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0270C8, &qword_222CA2148);
  v50 = *(v5 - 8);
  v51 = v5;
  MEMORY[0x28223BE20](v5);
  v49 = &v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0270D0, &qword_222CA2150);
  v44 = *(v7 - 8);
  v45 = v7;
  MEMORY[0x28223BE20](v7);
  v43 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0270D8, &qword_222CA2158);
  v41 = *(v9 - 8);
  v42 = v9;
  MEMORY[0x28223BE20](v9);
  v40 = &v33 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0270E0, &qword_222CA2160);
  v38 = *(v11 - 8);
  v39 = v11;
  MEMORY[0x28223BE20](v11);
  v37 = &v33 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0270E8, &qword_222CA2168);
  v35 = *(v13 - 8);
  v36 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0270F0, &qword_222CA2170);
  v34 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v33 - v17;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0270F8, &qword_222CA2178);
  v54 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v20 = &v33 - v19;
  v21 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222C33634();
  sub_222C9536C();
  if (v21 > 4u)
  {
    if (v21 != 5)
    {
      v23 = v52;
      v22 = v53;
      if (v21 == 6)
      {
        v59 = 4;
        sub_222C337D8();
        v24 = v43;
        sub_222C950BC();
        v26 = v44;
        v25 = v45;
        goto LABEL_19;
      }

      if (v21 == 7)
      {
        v65 = 6;
        sub_222C33688();
        v24 = v46;
        sub_222C950BC();
        v26 = v47;
        v25 = v48;
        goto LABEL_19;
      }

LABEL_12:
      v64 = 5;
      sub_222C336DC();
      v30 = v49;
      sub_222C950BC();
      v63 = v21 & 1;
      v62 = 0;
      sub_222C33730();
      v31 = v51;
      sub_222C9512C();
      if (!v22)
      {
        v61 = HIBYTE(v21);
        v60 = 1;
        sub_222C33784();
        sub_222C9512C();
      }

      (*(v50 + 8))(v30, v31);
      return (*(v54 + 8))(v20, v23);
    }

    v58 = 3;
    sub_222C3382C();
    v15 = v40;
    v27 = v52;
    sub_222C950BC();
    v29 = v41;
    v28 = v42;
    goto LABEL_16;
  }

  if (v21 == 2)
  {
    v55 = 0;
    sub_222C33928();
    v27 = v52;
    sub_222C950BC();
    (*(v34 + 8))(v18, v16);
    return (*(v54 + 8))(v20, v27);
  }

  if (v21 == 3)
  {
    v56 = 1;
    sub_222C338D4();
    v27 = v52;
    sub_222C950BC();
    v29 = v35;
    v28 = v36;
LABEL_16:
    (*(v29 + 8))(v15, v28);
    return (*(v54 + 8))(v20, v27);
  }

  v23 = v52;
  v22 = v53;
  if (v21 != 4)
  {
    goto LABEL_12;
  }

  v57[0] = 2;
  sub_222C33880();
  v24 = v37;
  sub_222C950BC();
  v26 = v38;
  v25 = v39;
LABEL_19:
  (*(v26 + 8))(v24, v25);
  return (*(v54 + 8))(v20, v23);
}

uint64_t SuggestionOutcome.hash(into:)()
{
  v1 = *v0;
  if ((v1 - 2) >= 6u)
  {
    v2 = v1 >> 8;
    MEMORY[0x223DCA0B0](5);
    MEMORY[0x223DCA0B0](v1 & 1);
  }

  else
  {
    v2 = qword_222CA3280[(v1 - 2)];
  }

  return MEMORY[0x223DCA0B0](v2);
}

uint64_t SuggestionOutcome.hashValue.getter()
{
  v1 = *v0;
  sub_222C952FC();
  if ((v1 - 2) >= 6u)
  {
    v2 = v1 >> 8;
    MEMORY[0x223DCA0B0](5);
    MEMORY[0x223DCA0B0](v1 & 1);
  }

  else
  {
    v2 = qword_222CA3280[(v1 - 2)];
  }

  MEMORY[0x223DCA0B0](v2);
  return sub_222C9534C();
}

uint64_t SuggestionOutcome.init(from:)@<X0>(void *a1@<X0>, __int16 *a2@<X8>)
{
  v65 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027150, &qword_222CA2180);
  v59 = *(v3 - 8);
  v60 = v3;
  MEMORY[0x28223BE20](v3);
  v64 = &v48 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027158, &qword_222CA2188);
  v6 = *(v5 - 8);
  v61 = v5;
  v62 = v6;
  MEMORY[0x28223BE20](v5);
  v68 = &v48 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027160, &qword_222CA2190);
  v57 = *(v8 - 8);
  v58 = v8;
  MEMORY[0x28223BE20](v8);
  v67 = &v48 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027168, &qword_222CA2198);
  v55 = *(v10 - 8);
  v56 = v10;
  MEMORY[0x28223BE20](v10);
  v63 = &v48 - v11;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027170, &qword_222CA21A0);
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v66 = &v48 - v12;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027178, &qword_222CA21A8);
  v51 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v14 = &v48 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027180, &qword_222CA21B0);
  v50 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v48 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027188, &unk_222CA21B8);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v48 - v20;
  v22 = a1[3];
  v69 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_222C33634();
  v23 = v70;
  sub_222C9535C();
  if (v23)
  {
    goto LABEL_9;
  }

  v24 = v17;
  v48 = v15;
  v49 = v14;
  v26 = v66;
  v25 = v67;
  v27 = v68;
  v70 = v19;
  v28 = sub_222C9508C();
  v29 = (2 * *(v28 + 16)) | 1;
  v71 = v28;
  v72 = v28 + 32;
  v73 = 0;
  v74 = v29;
  v30 = sub_222B572D4();
  if (v30 == 7 || v73 != v74 >> 1)
  {
    v36 = sub_222C94DBC();
    swift_allocError();
    v38 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025090, &qword_222C96F00);
    *v38 = &type metadata for SuggestionOutcome;
    sub_222C9500C();
    sub_222C94DAC();
    (*(*(v36 - 8) + 104))(v38, *MEMORY[0x277D84160], v36);
    swift_willThrow();
    (*(v70 + 8))(v21, v18);
    swift_unknownObjectRelease();
LABEL_9:
    v39 = v69;
    return __swift_destroy_boxed_opaque_existential_0Tm(v39);
  }

  if (v30 <= 2u)
  {
    if (v30)
    {
      if (v30 == 1)
      {
        v77 = 1;
        sub_222C338D4();
        v41 = v49;
        sub_222C94FFC();
        (*(v51 + 8))(v41, v52);
        (*(v70 + 8))(v21, v18);
        swift_unknownObjectRelease();
        v35 = 3;
      }

      else
      {
        v77 = 2;
        sub_222C33880();
        sub_222C94FFC();
        (*(v53 + 8))(v26, v54);
        (*(v70 + 8))(v21, v18);
        swift_unknownObjectRelease();
        v35 = 4;
      }
    }

    else
    {
      v77 = 0;
      sub_222C33928();
      sub_222C94FFC();
      (*(v50 + 8))(v24, v48);
      (*(v70 + 8))(v21, v18);
      swift_unknownObjectRelease();
      v35 = 2;
    }

    v39 = v69;
    v32 = v65;
  }

  else
  {
    v31 = v21;
    if (v30 > 4u)
    {
      v42 = v65;
      v43 = v70;
      if (v30 == 5)
      {
        v77 = 5;
        sub_222C336DC();
        v44 = v27;
        sub_222C94FFC();
        v76 = 0;
        sub_222C3397C();
        v46 = v61;
        sub_222C9507C();
        v47 = v44;
        LOWORD(v44) = v77;
        v75 = 1;
        sub_222C339D0();
        sub_222C9507C();
        (*(v62 + 8))(v47, v46);
        (*(v43 + 8))(v31, v18);
        swift_unknownObjectRelease();
        v35 = v44 | (v76 << 8);
      }

      else
      {
        v77 = 6;
        sub_222C33688();
        v45 = v64;
        sub_222C94FFC();
        (*(v59 + 8))(v45, v60);
        (*(v43 + 8))(v31, v18);
        swift_unknownObjectRelease();
        v35 = 7;
      }

      v39 = v69;
      v32 = v42;
    }

    else
    {
      v32 = v65;
      v33 = v70;
      if (v30 == 3)
      {
        v77 = 3;
        sub_222C3382C();
        v34 = v63;
        sub_222C94FFC();
        (*(v55 + 8))(v34, v56);
        (*(v33 + 8))(v21, v18);
        swift_unknownObjectRelease();
        v35 = 5;
      }

      else
      {
        v77 = 4;
        sub_222C337D8();
        sub_222C94FFC();
        (*(v57 + 8))(v25, v58);
        (*(v33 + 8))(v21, v18);
        swift_unknownObjectRelease();
        v35 = 6;
      }

      v39 = v69;
    }
  }

  *v32 = v35;
  return __swift_destroy_boxed_opaque_existential_0Tm(v39);
}

uint64_t sub_222C31A94(uint64_t a1)
{
  sub_222C952FC();
  SuggestionOutcome.hash(into:)();
  return sub_222C9534C();
}

uint64_t sub_222C31ADC()
{
  if (*v0)
  {
    return 0x616D7269666E6F63;
  }

  else
  {
    return 0x6769626D61736964;
  }
}

uint64_t sub_222C31B2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6769626D61736964 && a2 == 0xEE006E6F69746175;
  if (v6 || (sub_222C951FC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x616D7269666E6F63 && a2 == 0xEC0000006E6F6974)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_222C951FC();

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

uint64_t sub_222C31C14(uint64_t a1)
{
  v2 = sub_222C33A24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222C31C50(uint64_t a1)
{
  v2 = sub_222C33A24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222C31C8C(uint64_t a1)
{
  v2 = sub_222C33A78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222C31CC8(uint64_t a1)
{
  v2 = sub_222C33A78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222C31D04(uint64_t a1)
{
  v2 = sub_222C33ACC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222C31D40(uint64_t a1)
{
  v2 = sub_222C33ACC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PromptType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0271A0, &qword_222CA21C8);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0271A8, &qword_222CA21D0);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0271B0, &qword_222CA21D8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222C33A24();
  sub_222C9536C();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_222C33A78();
    v14 = v18;
    sub_222C950BC();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_222C33ACC();
    sub_222C950BC();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

uint64_t PromptType.hashValue.getter()
{
  v1 = *v0;
  sub_222C952FC();
  MEMORY[0x223DCA0B0](v1);
  return sub_222C9534C();
}

uint64_t PromptType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0271D0, &qword_222CA21E0);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0271D8, &qword_222CA21E8);
  v26 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0271E0, &qword_222CA21F0);
  v30 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222C33A24();
  v12 = v31;
  sub_222C9535C();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_222C9508C();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_222B530B4();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_222C94DBC();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025090, &qword_222C96F00);
      *v22 = &type metadata for PromptType;
      sub_222C9500C();
      sub_222C94DAC();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84160], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_222C33A78();
        sub_222C94FFC();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_222C33ACC();
        sub_222C94FFC();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v13);
}

void sub_222C3258C(void *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_222C93C5C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1[6])
  {
    goto LABEL_2;
  }

  v11 = a1[7];
  v10 = a1[8];
  (*(v5 + 104))(v8, *MEMORY[0x277D5FB00], v4, v6);

  v12 = sub_222C93C4C();
  v14 = v13;
  (*(v5 + 8))(v8, v4);
  if (!v10)
  {

LABEL_12:
    v9 = 1;
    goto LABEL_3;
  }

  if (v11 == v12 && v10 == v14)
  {
  }

  else
  {
    v16 = sub_222C951FC();

    if ((v16 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

LABEL_2:
  v9 = 0;
LABEL_3:
  *a2 = v9;
}

uint64_t sub_222C32718(uint64_t a1)
{
  v2 = sub_222C33BC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222C32754(uint64_t a1)
{
  v2 = sub_222C33BC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222C32790(uint64_t a1)
{
  v2 = sub_222C33C1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222C327CC(uint64_t a1)
{
  v2 = sub_222C33C1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222C32808(uint64_t a1)
{
  v2 = sub_222C33B74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222C32844(uint64_t a1)
{
  v2 = sub_222C33B74();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_222C32880()
{
  v1 = 0x6553797469746E65;
  v2 = 0x656E6F646E616261;
  if (*v0 != 2)
  {
    v2 = 0x656C6C65636E6163;
  }

  if (*v0)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_222C32914@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_222C350A0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_222C3293C(uint64_t a1)
{
  v2 = sub_222C33B20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222C32978(uint64_t a1)
{
  v2 = sub_222C33B20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222C329B4(uint64_t a1)
{
  v2 = sub_222C33C70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222C329F0(uint64_t a1)
{
  v2 = sub_222C33C70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PromptOutcome.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0271E8, &qword_222CA21F8);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v30 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0271F0, &qword_222CA2200);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x28223BE20](v5);
  v27 = &v22 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0271F8, &qword_222CA2208);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x28223BE20](v7);
  v24 = &v22 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027200, &qword_222CA2210);
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027208, &qword_222CA2218);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - v14;
  v16 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222C33B20();
  sub_222C9536C();
  v17 = (v13 + 8);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v35 = 2;
      sub_222C33BC8();
      v18 = v27;
      sub_222C950BC();
      v20 = v28;
      v19 = v29;
    }

    else
    {
      v36 = 3;
      sub_222C33B74();
      v18 = v30;
      sub_222C950BC();
      v20 = v31;
      v19 = v32;
    }

    goto LABEL_8;
  }

  if (v16)
  {
    v34 = 1;
    sub_222C33C1C();
    v18 = v24;
    sub_222C950BC();
    v20 = v25;
    v19 = v26;
LABEL_8:
    (*(v20 + 8))(v18, v19);
    return (*v17)(v15, v12);
  }

  v33 = 0;
  sub_222C33C70();
  sub_222C950BC();
  (*(v22 + 8))(v11, v23);
  return (*v17)(v15, v12);
}

uint64_t PromptOutcome.hashValue.getter()
{
  v1 = *v0;
  sub_222C952FC();
  MEMORY[0x223DCA0B0](v1);
  return sub_222C9534C();
}

uint64_t PromptOutcome.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027238, &qword_222CA2220);
  v39 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v44 = &v34 - v3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027240, &qword_222CA2228);
  v38 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v43 = &v34 - v4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027248, &qword_222CA2230);
  v36 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027250, &qword_222CA2238);
  v37 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027258, &qword_222CA2240);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - v12;
  v14 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_222C33B20();
  v15 = v46;
  sub_222C9535C();
  if (!v15)
  {
    v16 = v9;
    v34 = v7;
    v35 = 0;
    v17 = v6;
    v18 = v43;
    v19 = v44;
    v46 = v11;
    v20 = v45;
    v21 = v13;
    v22 = sub_222C9508C();
    v23 = (2 * *(v22 + 16)) | 1;
    v48 = v22;
    v49 = v22 + 32;
    v50 = 0;
    v51 = v23;
    v24 = sub_222B572D0();
    if (v24 == 4 || v50 != v51 >> 1)
    {
      v26 = sub_222C94DBC();
      swift_allocError();
      v28 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025090, &qword_222C96F00);
      *v28 = &type metadata for PromptOutcome;
      sub_222C9500C();
      sub_222C94DAC();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x277D84160], v26);
      swift_willThrow();
LABEL_9:
      (*(v46 + 8))(v13, v10);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_0Tm(v47);
    }

    v52 = v24;
    if (v24 <= 1u)
    {
      if (v24)
      {
        v53 = 1;
        sub_222C33C1C();
        v32 = v35;
        sub_222C94FFC();
        if (!v32)
        {
          (*(v36 + 8))(v17, v40);
          goto LABEL_17;
        }
      }

      else
      {
        v53 = 0;
        sub_222C33C70();
        v25 = v35;
        sub_222C94FFC();
        if (!v25)
        {
          (*(v37 + 8))(v16, v34);
LABEL_17:
          (*(v46 + 8))(v13, v10);
LABEL_22:
          swift_unknownObjectRelease();
          *v20 = v52;
          return __swift_destroy_boxed_opaque_existential_0Tm(v47);
        }
      }

      goto LABEL_9;
    }

    v30 = v46;
    if (v24 == 2)
    {
      v53 = 2;
      sub_222C33BC8();
      v31 = v35;
      sub_222C94FFC();
      if (!v31)
      {
        (*(v38 + 8))(v18, v42);
LABEL_21:
        (*(v30 + 8))(v21, v10);
        goto LABEL_22;
      }
    }

    else
    {
      v53 = 3;
      sub_222C33B74();
      v33 = v35;
      sub_222C94FFC();
      if (!v33)
      {
        (*(v39 + 8))(v19, v41);
        goto LABEL_21;
      }
    }

    (*(v30 + 8))(v21, v10);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v47);
}

BOOL _s28SiriPrivateLearningInference17SuggestionOutcomeO2eeoiySbAC_ACtFZ_0(_WORD *a1, _WORD *a2)
{
  v2 = *a2;
  v3 = *a1;
  if (v3 <= 4)
  {
    switch(v3)
    {
      case 2u:
        return v2 == 2;
      case 3u:
        return v2 == 3;
      case 4u:
        return v2 == 4;
    }

LABEL_16:
    if ((v2 - 2) >= 6)
    {
      return ((*a2 ^ *a1) & 0xFF01) == 0;
    }

    return 0;
  }

  if (v3 == 5)
  {
    return v2 == 5;
  }

  if (v3 != 6)
  {
    if (v3 == 7)
    {
      return v2 == 7;
    }

    goto LABEL_16;
  }

  return v2 == 6;
}

unint64_t sub_222C33634()
{
  result = qword_27D027100;
  if (!qword_27D027100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027100);
  }

  return result;
}

unint64_t sub_222C33688()
{
  result = qword_27D027108;
  if (!qword_27D027108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027108);
  }

  return result;
}

unint64_t sub_222C336DC()
{
  result = qword_27D027110;
  if (!qword_27D027110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027110);
  }

  return result;
}

unint64_t sub_222C33730()
{
  result = qword_27D027118;
  if (!qword_27D027118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027118);
  }

  return result;
}

unint64_t sub_222C33784()
{
  result = qword_27D027120;
  if (!qword_27D027120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027120);
  }

  return result;
}

unint64_t sub_222C337D8()
{
  result = qword_27D027128;
  if (!qword_27D027128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027128);
  }

  return result;
}

unint64_t sub_222C3382C()
{
  result = qword_27D027130;
  if (!qword_27D027130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027130);
  }

  return result;
}

unint64_t sub_222C33880()
{
  result = qword_27D027138;
  if (!qword_27D027138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027138);
  }

  return result;
}

unint64_t sub_222C338D4()
{
  result = qword_27D027140;
  if (!qword_27D027140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027140);
  }

  return result;
}

unint64_t sub_222C33928()
{
  result = qword_27D027148;
  if (!qword_27D027148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027148);
  }

  return result;
}

unint64_t sub_222C3397C()
{
  result = qword_27D027190;
  if (!qword_27D027190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027190);
  }

  return result;
}

unint64_t sub_222C339D0()
{
  result = qword_27D027198;
  if (!qword_27D027198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027198);
  }

  return result;
}

unint64_t sub_222C33A24()
{
  result = qword_27D0271B8;
  if (!qword_27D0271B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0271B8);
  }

  return result;
}

unint64_t sub_222C33A78()
{
  result = qword_27D0271C0;
  if (!qword_27D0271C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0271C0);
  }

  return result;
}

unint64_t sub_222C33ACC()
{
  result = qword_27D0271C8;
  if (!qword_27D0271C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0271C8);
  }

  return result;
}

unint64_t sub_222C33B20()
{
  result = qword_27D027210;
  if (!qword_27D027210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027210);
  }

  return result;
}

unint64_t sub_222C33B74()
{
  result = qword_27D027218;
  if (!qword_27D027218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027218);
  }

  return result;
}

unint64_t sub_222C33BC8()
{
  result = qword_27D027220;
  if (!qword_27D027220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027220);
  }

  return result;
}

unint64_t sub_222C33C1C()
{
  result = qword_27D027228;
  if (!qword_27D027228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027228);
  }

  return result;
}

unint64_t sub_222C33C70()
{
  result = qword_27D027230;
  if (!qword_27D027230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027230);
  }

  return result;
}

unint64_t sub_222C33CC8()
{
  result = qword_27D027260;
  if (!qword_27D027260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027260);
  }

  return result;
}

unint64_t sub_222C33D20()
{
  result = qword_27D027268;
  if (!qword_27D027268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027268);
  }

  return result;
}

unint64_t sub_222C33D78()
{
  result = qword_27D027270;
  if (!qword_27D027270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027270);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SuggestionOutcome(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_20;
  }

  v2 = a2 + 65287;
  if (a2 + 65287 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (v2 < 0xFF0000)
  {
    v3 = 1;
  }

  if (v2 >= 0x10000)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = a1[1];
      if (!a1[1])
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 16)) - 65287;
  }

  if (v4)
  {
    v5 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v5 << 16)) - 65287;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 2)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 7)
  {
    return v8 - 6;
  }

  else
  {
    return 0;
  }
}

_WORD *storeEnumTagSinglePayload for SuggestionOutcome(_WORD *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 65287;
  if (a3 + 65287 <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xF9)
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 16) + 1;
    *result = a2 - 249;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v5)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_222C33F28(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_WORD *sub_222C33F3C(_WORD *result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
  }

  else if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SuggestionOutcome.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SuggestionOutcome.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_222C341D4()
{
  result = qword_27D027278;
  if (!qword_27D027278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027278);
  }

  return result;
}

unint64_t sub_222C3422C()
{
  result = qword_27D027280;
  if (!qword_27D027280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027280);
  }

  return result;
}

unint64_t sub_222C34284()
{
  result = qword_27D027288;
  if (!qword_27D027288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027288);
  }

  return result;
}

unint64_t sub_222C342DC()
{
  result = qword_27D027290;
  if (!qword_27D027290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027290);
  }

  return result;
}

unint64_t sub_222C34334()
{
  result = qword_27D027298;
  if (!qword_27D027298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027298);
  }

  return result;
}

unint64_t sub_222C3438C()
{
  result = qword_27D0272A0;
  if (!qword_27D0272A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0272A0);
  }

  return result;
}

unint64_t sub_222C343E4()
{
  result = qword_27D0272A8;
  if (!qword_27D0272A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0272A8);
  }

  return result;
}

unint64_t sub_222C3443C()
{
  result = qword_27D0272B0;
  if (!qword_27D0272B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0272B0);
  }

  return result;
}

unint64_t sub_222C34494()
{
  result = qword_27D0272B8;
  if (!qword_27D0272B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0272B8);
  }

  return result;
}

unint64_t sub_222C344EC()
{
  result = qword_27D0272C0;
  if (!qword_27D0272C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0272C0);
  }

  return result;
}

unint64_t sub_222C34544()
{
  result = qword_27D0272C8;
  if (!qword_27D0272C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0272C8);
  }

  return result;
}

unint64_t sub_222C3459C()
{
  result = qword_27D0272D0;
  if (!qword_27D0272D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0272D0);
  }

  return result;
}

unint64_t sub_222C345F4()
{
  result = qword_27D0272D8;
  if (!qword_27D0272D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0272D8);
  }

  return result;
}

unint64_t sub_222C3464C()
{
  result = qword_27D0272E0;
  if (!qword_27D0272E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0272E0);
  }

  return result;
}

unint64_t sub_222C346A4()
{
  result = qword_27D0272E8;
  if (!qword_27D0272E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0272E8);
  }

  return result;
}

unint64_t sub_222C346FC()
{
  result = qword_27D0272F0;
  if (!qword_27D0272F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0272F0);
  }

  return result;
}

unint64_t sub_222C34754()
{
  result = qword_27D0272F8;
  if (!qword_27D0272F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0272F8);
  }

  return result;
}

unint64_t sub_222C347AC()
{
  result = qword_27D027300;
  if (!qword_27D027300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027300);
  }

  return result;
}

unint64_t sub_222C34804()
{
  result = qword_27D027308;
  if (!qword_27D027308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027308);
  }

  return result;
}

unint64_t sub_222C3485C()
{
  result = qword_27D027310;
  if (!qword_27D027310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027310);
  }

  return result;
}

unint64_t sub_222C348B4()
{
  result = qword_27D027318;
  if (!qword_27D027318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027318);
  }

  return result;
}

unint64_t sub_222C3490C()
{
  result = qword_27D027320;
  if (!qword_27D027320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027320);
  }

  return result;
}

unint64_t sub_222C34964()
{
  result = qword_27D027328;
  if (!qword_27D027328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027328);
  }

  return result;
}

unint64_t sub_222C349BC()
{
  result = qword_27D027330;
  if (!qword_27D027330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027330);
  }

  return result;
}

unint64_t sub_222C34A14()
{
  result = qword_27D027338;
  if (!qword_27D027338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027338);
  }

  return result;
}

unint64_t sub_222C34A6C()
{
  result = qword_27D027340;
  if (!qword_27D027340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027340);
  }

  return result;
}

unint64_t sub_222C34AC4()
{
  result = qword_27D027348;
  if (!qword_27D027348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027348);
  }

  return result;
}

unint64_t sub_222C34B1C()
{
  result = qword_27D027350;
  if (!qword_27D027350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027350);
  }

  return result;
}

unint64_t sub_222C34B74()
{
  result = qword_27D027358;
  if (!qword_27D027358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027358);
  }

  return result;
}

unint64_t sub_222C34BCC()
{
  result = qword_27D027360;
  if (!qword_27D027360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027360);
  }

  return result;
}

unint64_t sub_222C34C24()
{
  result = qword_27D027368;
  if (!qword_27D027368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027368);
  }

  return result;
}

unint64_t sub_222C34C7C()
{
  result = qword_27D027370;
  if (!qword_27D027370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027370);
  }

  return result;
}

unint64_t sub_222C34CD4()
{
  result = qword_27D027378;
  if (!qword_27D027378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027378);
  }

  return result;
}

unint64_t sub_222C34D2C()
{
  result = qword_27D027380;
  if (!qword_27D027380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027380);
  }

  return result;
}

unint64_t sub_222C34D84()
{
  result = qword_27D027388;
  if (!qword_27D027388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027388);
  }

  return result;
}

unint64_t sub_222C34DDC()
{
  result = qword_27D027390;
  if (!qword_27D027390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027390);
  }

  return result;
}

uint64_t sub_222C34E30(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_222C951FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000222CACC30 == a2 || (sub_222C951FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x706D6F436B736174 && a2 == 0xED0000646574656CLL || (sub_222C951FC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6162416B736174 && a2 == 0xED000064656E6F64 || (sub_222C951FC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C6961466B736174 && a2 == 0xEA00000000006465 || (sub_222C951FC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D6F725072657375 && a2 == 0xEC00000064657470 || (sub_222C951FC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000222CACC50 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_222C951FC();

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

uint64_t sub_222C350A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6553797469746E65 && a2 == 0xEE0064657463656CLL;
  if (v4 || (sub_222C951FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000222CACC70 == a2 || (sub_222C951FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656E6F646E616261 && a2 == 0xE900000000000064 || (sub_222C951FC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C6C65636E6163 && a2 == 0xE900000000000064)
  {

    return 3;
  }

  else
  {
    v6 = sub_222C951FC();

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

void *sub_222C35238(void *(*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = MEMORY[0x277D84F90];
  for (i = a3 + 32; ; i += 40)
  {
    result = (a1)(&v17, i, a2);
    if (v3)
    {

      return v5;
    }

    v8 = v17;
    v9 = *(v17 + 16);
    v10 = v5[2];
    v11 = v10 + v9;
    if (__OFADD__(v10, v9))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v11 <= v5[3] >> 1)
    {
      if (*(v8 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v10 <= v11)
      {
        v12 = v10 + v9;
      }

      else
      {
        v12 = v10;
      }

      result = sub_222B4A108(result, v12, 1, v5);
      v5 = result;
      if (*(v8 + 16))
      {
LABEL_15:
        if ((v5[3] >> 1) - v5[2] < v9)
        {
          goto LABEL_24;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024858, &qword_222C98950);
        swift_arrayInitWithCopy();

        if (v9)
        {
          v13 = v5[2];
          v14 = __OFADD__(v13, v9);
          v15 = v13 + v9;
          if (v14)
          {
            goto LABEL_25;
          }

          v5[2] = v15;
        }

        goto LABEL_4;
      }
    }

    if (v9)
    {
      goto LABEL_23;
    }

LABEL_4:
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_222C353BC(uint64_t a1, uint64_t *a2)
{
  sub_222C36128(*a2, a1);
  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_222C35424()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026760, qword_222C9DCF0);
  v0 = sub_222C944EC();
  MEMORY[0x223DC9330](v0);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_27D027398 = 91;
  unk_27D0273A0 = 0xE100000000000000;
  return result;
}

uint64_t INPlayMediaIntentStreamDefinition.events(since:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0273A8, &qword_222CA32B8);
  v3[6] = swift_task_alloc();
  v3[7] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0273B0, &unk_222CA32C0);
  v3[8] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0266C0, &qword_222C9DC78);
  v3[9] = v4;
  v5 = *(v4 - 8);
  v3[10] = v5;
  v3[11] = *(v5 + 64);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0273B8, &qword_222CA32D0);
  v3[15] = v6;
  v3[16] = *(v6 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v7 = sub_222C935EC();
  v3[19] = v7;
  v8 = *(v7 - 8);
  v3[20] = v8;
  v3[21] = *(v8 + 64);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222C35710, 0, 0);
}

uint64_t sub_222C35710()
{
  v1 = v0[4];
  sub_222C9359C();
  __swift_project_boxed_opaque_existential_1((v1 + 8), *(v1 + 32));
  sub_222BF0994();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_222C97C40;
  *(v2 + 32) = sub_222C36934();
  sub_222C93EBC();
  v32 = v0[23];
  v35 = v0[22];
  v3 = v0[18];
  v33 = v0[20];
  v34 = v0[19];
  v4 = v0[16];
  v5 = v0[17];
  v6 = v0[15];
  v36 = v0[14];
  v30 = v0[13];
  v31 = v0[12];
  v7 = v0[10];
  v29 = v0[9];
  v27 = v0[3];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0273C8, &qword_222CA32D8);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_222C97C40;
  v9 = type metadata accessor for CommonInteractionFeatureExtractor();
  v10 = swift_allocObject();
  *(v10 + 16) = MEMORY[0x277D84F90];
  *(v8 + 56) = v9;
  *(v8 + 64) = sub_222C36CA0(&qword_27D0273D0, type metadata accessor for CommonInteractionFeatureExtractor, &protocol conformance descriptor for CommonInteractionFeatureExtractor);
  *(v8 + 32) = v10;
  type metadata accessor for INPlayMediaIntentFeatureExtractor();
  v11 = swift_allocObject();
  v12 = type metadata accessor for AdamIdExtractor();
  v13 = swift_allocObject();
  *(v13 + 16) = 1;
  v11[5] = v12;
  v11[6] = &off_28360E4B8;
  v11[2] = v13;
  v28 = v6;
  (*(v4 + 16))(v5, v3, v6);
  v14 = swift_allocObject();
  *(v14 + 16) = v8;
  *(v14 + 24) = v11;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026690, &unk_222C9FFE0);
  sub_222B61940(&qword_27D0273D8, &qword_27D0273B8, &qword_222CA32D0, MEMORY[0x277D5FB48]);
  sub_222C94EDC();
  sub_222B61940(&qword_27D0273E0, &qword_27D0273A8, &qword_222CA32B8, MEMORY[0x277D85990]);
  sub_222C9516C();
  (*(v33 + 16))(v35, v27, v34);
  v15 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v16 = swift_allocObject();
  (*(v33 + 32))(v16 + v15, v35, v34);
  sub_222B61940(&qword_27D0273E8, &qword_27D0273B0, &unk_222CA32C0, &unk_222CA6DB8);
  sub_222C94FAC();
  v17 = *(v7 + 16);
  v17(v30, v36, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0266C8, &qword_222C9DC80);
  v18 = swift_allocBox();
  v20 = v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0266D0, &qword_222C9DC88);
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  v17(v31, v30, v29);
  v22 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v18;
  (*(v7 + 32))(v23 + v22, v31, v29);

  sub_222C948BC();

  v24 = *(v7 + 8);
  v24(v30, v29);
  v24(v36, v29);
  (*(v4 + 8))(v3, v28);
  (*(v33 + 8))(v32, v34);

  v25 = v0[1];

  return v25();
}

uint64_t sub_222C35DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_222C35E00, 0, 0);
}

uint64_t sub_222C35E00()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = MEMORY[0x223DCA1C0]();
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  v0[6] = sub_222C35238(sub_222C36CE8, v4, v1);

  objc_autoreleasePoolPop(v3);
  v5 = sub_222C93CAC();
  v6 = [v5 intent];
  v0[7] = v6;

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v7;
    v9 = swift_task_alloc();
    v0[8] = v9;
    *v9 = v0;
    v9[1] = sub_222C35FA0;

    return sub_222B46264(v8);
  }

  else
  {

    v11 = v0[2];
    v13 = v0[6];
    sub_222B49058(MEMORY[0x277D84F90]);
    *v11 = v13;
    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_222C35FA0(uint64_t a1)
{
  *(*v1 + 72) = a1;

  return MEMORY[0x2822009F8](sub_222C360A0, 0, 0);
}

uint64_t sub_222C360A0()
{
  v1 = *(v0 + 16);
  v4 = *(v0 + 48);
  sub_222B49058(*(v0 + 72));
  *v1 = v4;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_222C36128@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_222B41FD0(a1);
  if (!v5)
  {
    goto LABEL_15;
  }

  v6 = result;
  v7 = v5;
  v8 = sub_222B41FE8(a1);
  if (!v9)
  {

LABEL_15:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  v10 = v8;
  v11 = v9;
  v25 = MEMORY[0x277D84FA0];
  v12 = *(a1 + 16);

  if (v12)
  {
    v19 = v10;
    v20 = v6;
    v13 = MEMORY[0x277D84F90];
    v14 = a1 + 32;
    do
    {
      sub_222B43E3C(v14, v23);
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024858, &qword_222C98950);
      *&v21 = swift_allocObject();
      sub_222B43E3C(v23, v21 + 16);
      __swift_project_boxed_opaque_existential_1(&v21, v22);
      DynamicType = swift_getDynamicType();
      __swift_destroy_boxed_opaque_existential_0Tm(&v21);
      if (sub_222B69F7C(&v21, DynamicType))
      {
        sub_222B405A0(v23, &v21);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v24 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_222B4C5C0(0, *(v13 + 16) + 1, 1);
          v13 = v24;
        }

        v18 = *(v13 + 16);
        v17 = *(v13 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_222B4C5C0((v17 > 1), v18 + 1, 1);
          v13 = v24;
        }

        *(v13 + 16) = v18 + 1;
        sub_222B405A0(&v21, v13 + 40 * v18 + 32);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0Tm(v23);
      }

      v14 += 40;
      --v12;
    }

    while (v12);
    v6 = v20;
    v10 = v19;
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  *a2 = v10;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  return result;
}

uint64_t sub_222C3634C(uint64_t *a1, uint64_t a2)
{
  *(v2 + 56) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025360, &unk_222C98300);
  *(v2 + 64) = swift_task_alloc();
  *(v2 + 72) = swift_task_alloc();
  v4 = sub_222C935EC();
  *(v2 + 80) = v4;
  *(v2 + 88) = *(v4 - 8);
  v5 = swift_task_alloc();
  v6 = *a1;
  *(v2 + 96) = v5;
  *(v2 + 104) = v6;
  *(v2 + 112) = *(a1 + 1);
  v7 = a1[4];
  *(v2 + 128) = a1[3];
  *(v2 + 136) = v7;

  return MEMORY[0x2822009F8](sub_222C36468, 0, 0);
}

uint64_t sub_222C36468()
{
  v34 = v0;
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  sub_222B41CB8(v0[15], v3);
  v4 = *(v2 + 48);
  if (v4(v3, 1, v1) == 1)
  {
    sub_222B41CE4(v0[15]);
    if (v5)
    {
      v6 = 1;
    }

    else
    {
      sub_222C935AC();
      v6 = 0;
    }

    v10 = v0[10];
    v11 = v0[8];
    (*(v0[11] + 56))(v0[9], v6, 1, v10);
    if (v4(v11, 1, v10) != 1)
    {
      sub_222BA2994(v0[8]);
    }
  }

  else
  {
    v7 = v0[10];
    v8 = v0[11];
    v9 = v0[9];
    (*(v8 + 32))(v9, v0[8], v7);
    (*(v8 + 56))(v9, 0, 1, v7);
  }

  v12 = v0[9];
  v13 = v0[10];
  if (v4(v12, 1, v13) == 1)
  {
    sub_222BA2994(v12);
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v14 = sub_222C9431C();
    __swift_project_value_buffer(v14, qword_280FE2340);

    v15 = sub_222C942FC();
    v16 = sub_222C94A4C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v33 = v18;
      *v17 = 136315394;
      if (qword_27D024738 != -1)
      {
        swift_once();
      }

      v20 = v0[16];
      v19 = v0[17];
      v22 = v0[14];
      v21 = v0[15];
      v23 = v0[13];
      *(v17 + 4) = sub_222B437C0(qword_27D027398, unk_27D0273A0, &v33);
      *(v17 + 12) = 2080;
      v0[2] = v23;
      v0[3] = v22;
      v0[4] = v21;
      v0[5] = v20;
      v0[6] = v19;

      v24 = sub_222C944EC();
      v26 = sub_222B437C0(v24, v25, &v33);

      *(v17 + 14) = v26;
      _os_log_impl(&dword_222B39000, v15, v16, "%s event without timestamp encountered %s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DCA8C0](v18, -1, -1);
      MEMORY[0x223DCA8C0](v17, -1, -1);
    }

    v27 = 0;
  }

  else
  {
    v29 = v0[11];
    v28 = v0[12];
    (*(v29 + 32))(v28, v12, v13);
    sub_222C36CA0(&qword_27D025A18, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v30 = sub_222C9446C();
    (*(v29 + 8))(v28, v13);
    v27 = v30 ^ 1;
  }

  v31 = v0[1];

  return v31(v27 & 1);
}

uint64_t sub_222C3688C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_222B503AC;

  return INPlayMediaIntentStreamDefinition.events(since:)(a1, a2);
}

unint64_t sub_222C36934()
{
  result = qword_27D0273C0;
  if (!qword_27D0273C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D0273C0);
  }

  return result;
}

uint64_t sub_222C36980(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_222B503AC;

  return sub_222C35DDC(a1, a2, v7, v6);
}

uint64_t sub_222C36A34(uint64_t *a1)
{
  v4 = *(sub_222C935EC() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_222B5016C;

  return sub_222C3634C(a1, v1 + v5);
}

uint64_t sub_222C36B0C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0266C0, &qword_222C9DC78) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_222B503AC;

  return sub_222BD5FEC(a1, v6, v1 + v5);
}

uint64_t sub_222C36BFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_222C36C44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_222C36CA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_222C36CE8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_222C9416C();
  *a2 = result;
  return result;
}

uint64_t sub_222C36D5C(uint64_t a1)
{
  type metadata accessor for ContactSuggestionProvidedClassifier();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027400, &qword_222CA3408);
  v1 = sub_222C944EC();
  MEMORY[0x223DC9330](v1);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_27D0273F0 = 91;
  *algn_27D0273F8 = 0xE100000000000000;
  return result;
}

uint64_t sub_222C36DF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for ContactSuggestionProvidedClassification(0);
  sub_222B4128C(sub_222C379A4, a2, a4 + v8[6]);
  v9 = sub_222C9367C();
  (*(*(v9 - 8) + 16))(a4, a3, v9);
  result = sub_222C379C4(a1, a4 + v8[5], type metadata accessor for PlusContactSuggestionRuntimeSummary);
  *(a4 + v8[7]) = MEMORY[0x277D84F90];
  return result;
}

void sub_222C36EF0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for PlusContactSuggestionRuntimeSummary(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = 0;
  v8 = *(a1 + 72);
  v9 = *(v8 + 16);
  while (v9 != v7)
  {
    if (v7 >= *(v8 + 16))
    {
      __break(1u);
      return;
    }

    sub_222C379C4(v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v7++, v6, type metadata accessor for PlusContactSuggestionRuntimeSummary);
    v10 = sub_222C9362C();
    sub_222C37A2C(v6, type metadata accessor for PlusContactSuggestionRuntimeSummary);
    if (v10)
    {
      return;
    }
  }
}

uint64_t sub_222C37054(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EntityPromptClassification(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - v9;
  v11 = *(a1 + *(type metadata accessor for FeaturisedTurn(0) + 24));
  v12 = sub_222B42A30(v11);
  if (v12 != 2 && (v12 & 1) == 0)
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v26 = sub_222C9431C();
    __swift_project_value_buffer(v26, qword_280FE2340);
    v27 = sub_222C942FC();
    v28 = sub_222C94A3C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v37 = v30;
      *v29 = 136315138;
      if (qword_27D024740 != -1)
      {
        swift_once();
      }

      *(v29 + 4) = sub_222B437C0(qword_27D0273F0, *algn_27D0273F8, &v37);
      _os_log_impl(&dword_222B39000, v27, v28, "%s Runtime suggestions is not enabled for the request, no contact suggestion classification will be generated", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v30);
      MEMORY[0x223DCA8C0](v30, -1, -1);
      MEMORY[0x223DCA8C0](v29, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

  v13 = sub_222B42478(v11);
  if (!v13)
  {
    return MEMORY[0x277D84F90];
  }

  v35 = v13;
  v36 = a1;
  v14 = *(a2 + 16);
  if (v14)
  {
    v15 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v16 = *(v5 + 72);
    v17 = a2 + v15;
    v18 = MEMORY[0x277D84F90];
    do
    {
      sub_222C379C4(v17, v10, type metadata accessor for EntityPromptClassification);
      v19 = *(v10 + 2);
      v20 = *(v10 + 3);
      v21 = v19 == 0x73746361746E6F63 && v20 == 0xE800000000000000;
      if (v21 || (sub_222C951FC() & 1) != 0 || (v19 == 0x6E65697069636572 ? (v22 = v20 == 0xE900000000000074) : (v22 = 0), v22 || (sub_222C951FC() & 1) != 0))
      {
        sub_222BC93E4(v10, v7);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v37 = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_222B4C330(0, *(v18 + 16) + 1, 1);
          v18 = v37;
        }

        v25 = *(v18 + 16);
        v24 = *(v18 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_222B4C330((v24 > 1), v25 + 1, 1);
          v18 = v37;
        }

        *(v18 + 16) = v25 + 1;
        v13 = sub_222BC93E4(v7, v18 + v15 + v25 * v16);
      }

      else
      {
        v13 = sub_222C37A2C(v10, type metadata accessor for EntityPromptClassification);
      }

      v17 += v16;
      --v14;
    }

    while (v14);
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
  }

  MEMORY[0x28223BE20](v13);
  v33 = v35;
  v32 = v36;
  *(&v35 - 2) = v18;
  *(&v35 - 1) = v32;
  v34 = sub_222C63588(sub_222C37984, (&v35 - 4), v33);

  return v34;
}

uint64_t sub_222C37494(uint64_t a1, uint64_t a2)
{
  v37 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025028, &unk_222C96EC0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v36 - v4;
  v6 = type metadata accessor for EntityPromptClassification(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FeaturisedTurn(0);
  v36 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + 16);
  if (v13)
  {
    v14 = a2 + 32;
    v15 = MEMORY[0x277D84F90];
    v38 = v9;
    v39 = v7;
    do
    {
      sub_222B43E3C(v14, v41);
      sub_222B405A0(v41, v40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C58, &unk_222C96A30);
      v16 = swift_dynamicCast();
      (*(v7 + 56))(v5, v16 ^ 1u, 1, v6);
      if ((*(v7 + 48))(v5, 1, v6) == 1)
      {
        sub_222BC937C(v5);
      }

      else
      {
        sub_222BC93E4(v5, v9);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_222B49F90(0, v15[2] + 1, 1, v15);
        }

        v18 = v15[2];
        v17 = v15[3];
        if (v18 >= v17 >> 1)
        {
          v15 = sub_222B49F90((v17 > 1), v18 + 1, 1, v15);
        }

        v15[2] = v18 + 1;
        v19 = v15 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v18;
        v9 = v38;
        sub_222BC93E4(v38, v19);
      }

      v14 += 40;
      --v13;
    }

    while (v13);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  v20 = *(v37 + 16);
  if (!v20)
  {
    v23 = MEMORY[0x277D84F90];
LABEL_30:

    v35 = sub_222C67060(v23);

    return v35;
  }

  v21 = v37 + ((*(v36 + 80) + 32) & ~*(v36 + 80));
  v22 = *(v36 + 72);
  v23 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_222C379C4(v21, v12, type metadata accessor for FeaturisedTurn);
    v25 = sub_222C37054(v12, v15);
    result = sub_222C37A2C(v12, type metadata accessor for FeaturisedTurn);
    v26 = *(v25 + 16);
    v27 = v23[2];
    v28 = v27 + v26;
    if (__OFADD__(v27, v26))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v28 <= v23[3] >> 1)
    {
      if (*(v25 + 16))
      {
        goto LABEL_25;
      }
    }

    else
    {
      if (v27 <= v28)
      {
        v30 = v27 + v26;
      }

      else
      {
        v30 = v27;
      }

      v23 = sub_222B4A6E4(isUniquelyReferenced_nonNull_native, v30, 1, v23);
      if (*(v25 + 16))
      {
LABEL_25:
        v31 = (v23[3] >> 1) - v23[2];
        result = type metadata accessor for ContactSuggestionProvidedClassification(0);
        if (v31 < v26)
        {
          goto LABEL_33;
        }

        swift_arrayInitWithCopy();

        if (v26)
        {
          v32 = v23[2];
          v33 = __OFADD__(v32, v26);
          v34 = v32 + v26;
          if (v33)
          {
            goto LABEL_34;
          }

          v23[2] = v34;
        }

        goto LABEL_15;
      }
    }

    if (v26)
    {
      goto LABEL_32;
    }

LABEL_15:
    v21 += v22;
    if (!--v20)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_222C379C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_222C37A2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_222C37A9C(uint64_t a1)
{
  type metadata accessor for SuccessfulMessageClassifier();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027408, &unk_222CA3470);
  v1 = sub_222C944EC();
  MEMORY[0x223DC9330](v1);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_280FDD9E0 = 91;
  unk_280FDD9E8 = 0xE100000000000000;
  return result;
}

double sub_222C37B34@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v49 = a2;
  v50 = a3;
  v4 = type metadata accessor for FeaturisedTurn(0);
  MEMORY[0x28223BE20](v4 - 8);
  v48 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v10 = a1[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024CD0, &qword_222C98B50);
  v11 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024CC8, &unk_222C96AA0) - 8);
  v12 = (*(*v11 + 80) + 32) & ~*(*v11 + 80);
  v13 = v6;
  v14 = swift_allocObject();
  v46 = xmmword_222C97C40;
  *(v14 + 16) = xmmword_222C97C40;
  v15 = (v14 + v12);
  v16 = v11[14];
  *v15 = 0xD00000000000001DLL;
  v15[1] = 0x8000000222CACD20;
  v47 = v7;
  v51[0] = v7;
  v51[1] = v13;
  v51[2] = v8;
  v51[3] = v9;
  v51[4] = v10;
  sub_222C3808C(v51, (v15 + v16));
  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v17 = sub_222C9431C();
  v18 = __swift_project_value_buffer(v17, qword_280FE2340);
  v19 = v48;
  sub_222B78534(v49, v48);

  v20 = sub_222C942FC();
  v21 = sub_222C94A3C();

  if (os_log_type_enabled(v20, v21))
  {
    v44 = v18;
    v45 = v8;
    v49 = v13;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v51[0] = v23;
    *v22 = 136315650;
    if (qword_280FDD9D8 != -1)
    {
      swift_once();
    }

    *(v22 + 4) = sub_222B437C0(qword_280FDD9E0, unk_280FDD9E8, v51);
    *(v22 + 12) = 2080;
    v24 = FeaturisedTurn.friendlyName.getter();
    v25 = v19;
    v27 = v26;
    sub_222B73DD0(v25);
    v28 = sub_222B437C0(v24, v27, v51);

    *(v22 + 14) = v28;
    *(v22 + 22) = 2080;
    v29 = v49;
    *(v22 + 24) = sub_222B437C0(v47, v49, v51);
    _os_log_impl(&dword_222B39000, v20, v21, "%s Rule matrix for [Turn ID: %s, Event ID: %s]:", v22, 0x20u);
    swift_arrayDestroy();
    v30 = v23;
    v13 = v29;
    MEMORY[0x223DCA8C0](v30, -1, -1);
    MEMORY[0x223DCA8C0](v22, -1, -1);

    v8 = v45;
  }

  else
  {

    sub_222B73DD0(v19);
  }

  sub_222C8A24C(8224, 0xE200000000000000, v14);
  v31 = sub_222B41CFC(v8);
  if (v31 == 2)
  {
    swift_setDeallocating();
    sub_222C385EC(v15);
    swift_deallocClassInstance();
    v32 = sub_222C942FC();
    v33 = sub_222C94A3C();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v51[0] = v35;
      *v34 = 136315138;
      if (qword_280FDD9D8 != -1)
      {
        swift_once();
      }

      *(v34 + 4) = sub_222B437C0(qword_280FDD9E0, unk_280FDD9E8, v51);
      _os_log_impl(&dword_222B39000, v32, v33, "%s Sent message missing DonatedBySiri feature", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v35);
      MEMORY[0x223DCA8C0](v35, -1, -1);
      MEMORY[0x223DCA8C0](v34, -1, -1);
    }
  }

  else
  {
    v36 = v31;
    v37 = sub_222C1EC00(v14);
    swift_setDeallocating();
    sub_222C385EC(v15);
    swift_deallocClassInstance();
    if (v37)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024ED0, &qword_222C96C80);
      v38 = swift_allocObject();
      *(v38 + 16) = v46;
      v39 = v47;
      *(v38 + 32) = v47;
      *(v38 + 40) = v13;
      v40 = v50;
      *v50 = v36 & 1;
      v40[1] = v39;
      v41 = MEMORY[0x277D84F90];
      v40[2] = v13;
      v40[3] = v41;
      v40[4] = v38;
      swift_bridgeObjectRetain_n();
      return result;
    }
  }

  v43 = v50;
  v50[4] = 0;
  result = 0.0;
  *v43 = 0u;
  v43[1] = 0u;
  return result;
}

uint64_t sub_222C3808C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for RuleResult(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v7 = a1[1];
  v10 = a1[2];
  v9 = a1[3];
  v11 = a1[4];
  sub_222B42A48(v10);
  if (v12)
  {
    type metadata accessor for CommonFeature.IntentHandlingStatus(0);
    *a2 = sub_222C93ECC();
    a2[1] = v13;
    a2[2] = v8;
    a2[3] = v7;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_222B41F28(v10);
    if ((v15 & 1) == 0 && (v9 != 0xD000000000000013 || 0x8000000222CA87A0 != v11))
    {
      sub_222C951FC();
    }

    swift_storeEnumTagMultiPayload();
    return sub_222B99D5C(v6, a2);
  }
}

uint64_t sub_222C3825C(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for FeaturisedTurn(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v9 = sub_222C9431C();
  __swift_project_value_buffer(v9, qword_280FE2340);

  v10 = sub_222C942FC();
  v11 = sub_222C94A3C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20[0] = v13;
    *v12 = 136315394;
    if (qword_280FDD9D8 != -1)
    {
      swift_once();
    }

    *(v12 + 4) = sub_222B437C0(qword_280FDD9E0, unk_280FDD9E8, v20);
    *(v12 + 12) = 2048;
    *(v12 + 14) = *(a1 + 16);

    _os_log_impl(&dword_222B39000, v10, v11, "%s Identifying successful sent messages in %ld turn(s)", v12, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x223DCA8C0](v13, -1, -1);
    MEMORY[0x223DCA8C0](v12, -1, -1);

    v14 = *(a1 + 16);
    if (v14)
    {
      goto LABEL_7;
    }

    return MEMORY[0x277D84F90];
  }

  v14 = *(a1 + 16);
  if (!v14)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_7:
  v15 = sub_222B78534(a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * (v14 - 1), v8);
  MEMORY[0x28223BE20](v15);
  v20[-4] = v2;
  v20[-3] = v8;
  v20[-2] = v4;
  v17 = sub_222BDBD24(sub_222C385CC, &v20[-6], v16);
  v18 = sub_222C66F20(v17);

  sub_222B73DD0(v8);
  return v18;
}

uint64_t sub_222C385EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024CC8, &unk_222C96AA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_222C38668(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_222C38848(v5, v7) & 1;
}

void *sub_222C386C4()
{
  sub_222C0A220(v0, &v11);
  v1 = v12;
  if (v12 == 1)
  {
    v2 = MEMORY[0x277D84F90];

    return sub_222B63C18(v2);
  }

  else
  {
    v4 = v11;
    v17 = v13;
    v18 = v14;
    v19 = v15;
    v20 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027040, &unk_222CA34E0);
    inited = swift_initStackObject();
    v6 = inited;
    *(inited + 16) = xmmword_222C9CD00;
    *(inited + 32) = 0;
    v21 = v17;
    if (*(&v17 + 1))
    {
      *(inited + 40) = v17;
    }

    else
    {
      *&v22 = v4;
      *(&v22 + 1) = v1;
      *(inited + 40) = v22;
      sub_222C38950(&v22, &v24);
    }

    *(v6 + 56) = 1;
    v8 = v18;
    v7 = v19;
    *(v6 + 64) = v19;
    *(v6 + 80) = 2;
    v23 = v7;
    v24 = v8;
    *(v6 + 88) = v8;
    sub_222C38950(&v21, v10);
    sub_222C38950(&v23, v10);
    sub_222C38950(&v24, v10);
    sub_222C389C0(&v11);
    v9 = sub_222B63C18(v6);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027048, &unk_222CA1E10);
    swift_arrayDestroy();
    return v9;
  }
}

uint64_t sub_222C38848(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 2);
  v3 = *(a2 + 2);
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*(a1 + 1) != *(a2 + 1) || v2 != v3)
    {
      v5 = a1;
      v6 = a2;
      v7 = sub_222C951FC();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v9 = *(a1 + 4);
  v10 = *(a2 + 4);
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    if (*(a1 + 3) != *(a2 + 3) || v9 != v10)
    {
      v11 = a1;
      v12 = a2;
      v13 = sub_222C951FC();
      a2 = v12;
      v14 = v13;
      a1 = v11;
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  v15 = a2[48];
  if (a1[48])
  {
    if (a2[48])
    {
      return 1;
    }
  }

  else
  {
    if (*(a1 + 5) != *(a2 + 5))
    {
      v15 = 1;
    }

    if ((v15 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_222C38950(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024D58, &qword_222C96B30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222C389C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0256C8, &unk_222C98AB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_222C38A44(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_222C38AA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_222C38B28()
{
  result = qword_27D027410;
  if (!qword_27D027410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027410);
  }

  return result;
}

uint64_t sub_222C38B94(uint64_t a1)
{
  sub_222B43E3C(a1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C58, &unk_222C96A30);
  result = swift_dynamicCast();
  if (result)
  {
    v2 = result;

    return v2;
  }

  return result;
}

BOOL static DomainSuggestionSignal.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v39 = a4;
  v40 = a5;
  v10 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_222C94B5C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v36 - v15;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v21 = v36 - v20;
  v22 = *a1;
  v23 = *a2;
  if (v22 > 5)
  {
    switch(v22)
    {
      case 6u:
        if (v23 != 6)
        {
          return 0;
        }

        goto LABEL_22;
      case 7u:
        if (v23 != 7)
        {
          return 0;
        }

        goto LABEL_22;
      case 8u:
        if (v23 != 8)
        {
          return 0;
        }

        goto LABEL_22;
    }
  }

  else
  {
    switch(v22)
    {
      case 3u:
        if (v23 != 3)
        {
          return 0;
        }

        goto LABEL_22;
      case 4u:
        if (v23 != 4)
        {
          return 0;
        }

        goto LABEL_22;
      case 5u:
        if (v23 != 5)
        {
          return 0;
        }

        goto LABEL_22;
    }
  }

  result = 0;
  if (v22 == v23 && (v23 - 9) <= 0xFFFFFFF9)
  {
LABEL_22:
    v37 = v19;
    v38 = v16;
    v36[0] = v12;
    v36[1] = a6;
    v41[0] = a3;
    v41[1] = v39;
    v41[2] = v40;
    v41[3] = a6;
    v25 = v18;
    v26 = *(type metadata accessor for DomainSuggestionSignal(0, v41) + 52);
    v39 = v25;
    v40 = v14;
    v27 = *(v25 + 48);
    v28 = *(v14 + 16);
    v28(v21, &a1[v26], v13);
    v29 = &a2[v26];
    v30 = v10;
    v28(&v21[v27], v29, v13);
    v31 = *(v10 + 48);
    if (v31(v21, 1, a3) == 1)
    {
      if (v31(&v21[v27], 1, a3) == 1)
      {
        (*(v40 + 8))(v21, v13);
        return 1;
      }

      goto LABEL_27;
    }

    v32 = v38;
    v28(v38, v21, v13);
    if (v31(&v21[v27], 1, a3) == 1)
    {
      (*(v30 + 8))(v32, a3);
LABEL_27:
      (*(v37 + 8))(v21, v39);
      return 0;
    }

    v33 = v36[0];
    (*(v30 + 32))(v36[0], &v21[v27], a3);
    v34 = sub_222C9447C();
    v35 = *(v30 + 8);
    v35(v33, a3);
    v35(v32, a3);
    (*(v40 + 8))(v21, v13);
    return (v34 & 1) != 0;
  }

  return result;
}

uint64_t sub_222C390AC@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X8>)
{
  *a7 = a1;
  v12[0] = a3;
  v12[1] = a4;
  v12[2] = a5;
  v12[3] = a6;
  v9 = *(type metadata accessor for DomainSuggestionSignal(0, v12) + 52);
  v10 = sub_222C94B5C();
  return (*(*(v10 - 8) + 32))(&a7[v9], a2, v10);
}

uint64_t sub_222C39140(void *a1, int a2)
{
  v50 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0274A8, &qword_222CA3918);
  v48 = *(v3 - 8);
  v49 = v3;
  MEMORY[0x28223BE20](v3);
  v47 = &v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0274B0, &qword_222CA3920);
  v45 = *(v5 - 8);
  v46 = v5;
  MEMORY[0x28223BE20](v5);
  v44 = &v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0274B8, &qword_222CA3928);
  v42 = *(v7 - 8);
  v43 = v7;
  MEMORY[0x28223BE20](v7);
  v41 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0274C0, &qword_222CA3930);
  v39 = *(v9 - 8);
  v40 = v9;
  MEMORY[0x28223BE20](v9);
  v38 = &v33 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0274C8, &qword_222CA3938);
  v36 = *(v11 - 8);
  v37 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0274D0, &qword_222CA3940);
  v35 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v33 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0274D8, &qword_222CA3948);
  v34 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v33 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0274E0, &qword_222CA3950);
  v51 = *(v20 - 8);
  v52 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v33 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222C3C860();
  v23 = v50;
  sub_222C9536C();
  if (v23 > 5u)
  {
    switch(v23)
    {
      case 6u:
        v56 = 3;
        sub_222C3CA04();
        v26 = v38;
        v27 = v52;
        sub_222C950BC();
        v29 = v39;
        v28 = v40;
        break;
      case 7u:
        v57 = 4;
        sub_222C3C9B0();
        v26 = v41;
        v27 = v52;
        sub_222C950BC();
        v29 = v42;
        v28 = v43;
        break;
      case 8u:
        v58 = 5;
        sub_222C3C95C();
        v26 = v44;
        v27 = v52;
        sub_222C950BC();
        v29 = v45;
        v28 = v46;
        break;
      default:
LABEL_12:
        v60 = 6;
        sub_222C3C8B4();
        v30 = v47;
        v31 = v52;
        sub_222C950BC();
        v59 = v23;
        sub_222C3C908();
        v32 = v49;
        sub_222C9512C();
        (*(v48 + 8))(v30, v32);
        return (*(v51 + 8))(v22, v31);
    }

    (*(v29 + 8))(v26, v28);
  }

  else
  {
    switch(v23)
    {
      case 3u:
        v53 = 0;
        sub_222C3CB00();
        v27 = v52;
        sub_222C950BC();
        (*(v34 + 8))(v19, v17);
        break;
      case 4u:
        v54 = 1;
        sub_222C3CAAC();
        v27 = v52;
        sub_222C950BC();
        (*(v35 + 8))(v16, v14);
        break;
      case 5u:
        v55 = 2;
        sub_222C3CA58();
        v24 = v52;
        sub_222C950BC();
        (*(v36 + 8))(v13, v37);
        return (*(v51 + 8))(v22, v24);
      default:
        goto LABEL_12;
    }
  }

  return (*(v51 + 8))(v22, v27);
}

uint64_t sub_222C39884(void *a1, int a2)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027610, &qword_222CA4120);
  v23 = *(v3 - 8);
  v24 = v3;
  MEMORY[0x28223BE20](v3);
  v22 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027618, &qword_222CA4128);
  v20 = *(v5 - 8);
  v21 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027620, &qword_222CA4130);
  v19 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027628, &qword_222CA4138);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v18 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222C3D2C0();
  sub_222C9536C();
  v15 = (v12 + 8);
  if (v25)
  {
    if (v25 == 1)
    {
      v27 = 1;
      sub_222C3D368();
      sub_222C950BC();
      (*(v20 + 8))(v7, v21);
    }

    else
    {
      v28 = 2;
      sub_222C3D314();
      v16 = v22;
      sub_222C950BC();
      (*(v23 + 8))(v16, v24);
    }
  }

  else
  {
    v26 = 0;
    sub_222C3D3BC();
    sub_222C950BC();
    (*(v19 + 8))(v10, v8);
  }

  return (*v15)(v14, v11);
}

unint64_t sub_222C39C04()
{
  v1 = *v0;
  v2 = 0x6F50676E6F727473;
  v3 = 0x6572656665526F6ELL;
  if (v1 != 5)
  {
    v3 = 0xD000000000000018;
  }

  v4 = 0x657669746167656ELL;
  if (v1 != 3)
  {
    v4 = 0x654E676E6F727473;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6576697469736F70;
  if (v1 != 1)
  {
    v5 = 0x6C61727475656ELL;
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

uint64_t sub_222C39CF8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_222C3B548(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_222C39D20(uint64_t a1)
{
  v2 = sub_222C3C860();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222C39D5C(uint64_t a1)
{
  v2 = sub_222C3C860();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222C39D98(uint64_t a1)
{
  v2 = sub_222C3CA04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222C39DD4(uint64_t a1)
{
  v2 = sub_222C3CA04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222C39E10(uint64_t a1)
{
  v2 = sub_222C3CA58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222C39E4C(uint64_t a1)
{
  v2 = sub_222C3CA58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222C39E88(uint64_t a1)
{
  v2 = sub_222C3C95C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222C39EC4(uint64_t a1)
{
  v2 = sub_222C3C95C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222C39F00(uint64_t a1)
{
  v2 = sub_222C3C8B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222C39F3C(uint64_t a1)
{
  v2 = sub_222C3C8B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222C39F78(uint64_t a1)
{
  v2 = sub_222C3CAAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222C39FB4(uint64_t a1)
{
  v2 = sub_222C3CAAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222C39FF0(uint64_t a1)
{
  v2 = sub_222C3C9B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222C3A02C(uint64_t a1)
{
  v2 = sub_222C3C9B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222C3A068(uint64_t a1)
{
  v2 = sub_222C3CB00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222C3A0A4(uint64_t a1)
{
  v2 = sub_222C3CB00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222C3A0EC@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_222C3B7B0(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_222C3A134()
{
  v1 = 0x6C61727475656ELL;
  if (*v0 != 1)
  {
    v1 = 0x657669746167656ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6576697469736F70;
  }
}

uint64_t sub_222C3A190@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_222C3C1D8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_222C3A1B8(uint64_t a1)
{
  v2 = sub_222C3D2C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222C3A1F4(uint64_t a1)
{
  v2 = sub_222C3D2C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222C3A230(uint64_t a1)
{
  v2 = sub_222C3D314();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222C3A26C(uint64_t a1)
{
  v2 = sub_222C3D314();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222C3A2A8(uint64_t a1)
{
  v2 = sub_222C3D368();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222C3A2E4(uint64_t a1)
{
  v2 = sub_222C3D368();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222C3A320(uint64_t a1)
{
  v2 = sub_222C3D3BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222C3A35C(uint64_t a1)
{
  v2 = sub_222C3D3BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222C3A398@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_222C3C2F0(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t DomainSuggestionSignal.description.getter(uint64_t a1)
{
  v3 = sub_222C94B5C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  v10 = 0;
  v11 = 0xE000000000000000;
  sub_222C94D1C();
  MEMORY[0x223DC9330](0x53206C616E676953, 0xEF203A656372756FLL);
  (*(v4 + 16))(v6, &v1[*(a1 + 52)], v3);
  v7 = sub_222C944EC();
  MEMORY[0x223DC9330](v7);

  MEMORY[0x223DC9330](0x6C616E676953202CLL, 0xEA0000000000203ALL);
  v9[15] = *v1;
  sub_222C94ECC();
  return v10;
}

uint64_t sub_222C3A55C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C616E676973 && a2 == 0xE600000000000000;
  if (v4 || (sub_222C951FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F536C616E676973 && a2 == 0xEC00000065637275)
  {

    return 1;
  }

  else
  {
    v6 = sub_222C951FC();

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

uint64_t sub_222C3A628(char a1)
{
  if (a1)
  {
    return 0x6F536C616E676973;
  }

  else
  {
    return 0x6C616E676973;
  }
}

uint64_t sub_222C3A678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222C3A55C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222C3A6AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_222C3A700(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t DomainSuggestionSignal.encode(to:)(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v11[0] = *(a2 + 32);
  v11[1] = v3;
  v14[0] = v3;
  v14[1] = v11[0];
  type metadata accessor for DomainSuggestionSignal.CodingKeys(255, v14);
  swift_getWitnessTable();
  v4 = sub_222C9513C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = v12;
  sub_222C9536C();
  LOBYTE(v14[0]) = *v8;
  v15 = 0;
  sub_222C3A930();
  v9 = v13;
  sub_222C9512C();
  if (!v9)
  {
    LOBYTE(v14[0]) = 1;
    sub_222C950DC();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_222C3A930()
{
  result = qword_27D027418;
  if (!qword_27D027418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027418);
  }

  return result;
}

uint64_t DomainSuggestionSignal.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v28 = a6;
  v11 = sub_222C94B5C();
  v26 = *(v11 - 8);
  v27 = v11;
  MEMORY[0x28223BE20](v11);
  v30 = &v24 - v12;
  v36 = a2;
  v37 = a3;
  v38 = a4;
  v39 = a5;
  type metadata accessor for DomainSuggestionSignal.CodingKeys(255, &v36);
  swift_getWitnessTable();
  v34 = sub_222C9509C();
  v29 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v14 = &v24 - v13;
  v31 = a2;
  v36 = a2;
  v37 = a3;
  v33 = a3;
  v38 = a4;
  v39 = a5;
  v15 = type metadata accessor for DomainSuggestionSignal(0, &v36);
  v25 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v24 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v32 = v14;
  v18 = v35;
  sub_222C9535C();
  if (!v18)
  {
    v19 = v30;
    v35 = v15;
    v20 = v29;
    v40 = 0;
    sub_222C3ACD8();
    v21 = v32;
    sub_222C9507C();
    *v17 = v36;
    LOBYTE(v36) = 1;
    sub_222C9502C();
    (*(v20 + 8))(v21, v34);
    v23 = v35;
    (*(v26 + 32))(&v17[*(v35 + 52)], v19, v27);
    (*(v25 + 32))(v28, v17, v23);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

unint64_t sub_222C3ACD8()
{
  result = qword_27D027420[0];
  if (!qword_27D027420[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D027420);
  }

  return result;
}

uint64_t sub_222C3AD7C(uint64_t a1)
{
  result = sub_222C94B5C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_222C3ADFC(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0xF7)
  {
    v7 = 247;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_31;
  }

  v11 = v9 + ((v8 + 1) & ~v8);
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *&a1[v11];
      if (!v13)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 > 0xFF)
    {
      v13 = *&a1[v11];
      if (!*&a1[v11])
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 < 2)
    {
LABEL_31:
      if (v6 > 0xF7)
      {
        v19 = (*(v4 + 48))(&a1[v8 + 1] & ~v8);
        if (v19 >= 2)
        {
          return v19 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v17 = *a1;
        if (v17 >= 3)
        {
          v18 = v17 - 2;
        }

        else
        {
          v18 = 0;
        }

        if (v18 >= 7)
        {
          return v18 - 6;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v13 = a1[v11];
  if (!a1[v11])
  {
    goto LABEL_31;
  }

LABEL_20:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (a1[2] << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v7 + (v11 | v16) + 1;
}

void sub_222C3AFC0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0xF7)
  {
    v10 = 247;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = ((v11 + 1) & ~v11) + v12;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 == 0 || !v14)
  {
LABEL_20:
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (v13 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v16 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
  if (!HIWORD(v16))
  {
    if (v16 < 0x100)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    if (v16 >= 2)
    {
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_20;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_21:
    v18 = ~v10 + a2;
    if (v13 < 4)
    {
      v19 = (v18 >> (8 * v13)) + 1;
      if (v13)
      {
        v20 = v18 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v20;
            if (v6 > 1)
            {
LABEL_60:
              if (v6 == 2)
              {
                *&a1[v13] = v19;
              }

              else
              {
                *&a1[v13] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v6 > 1)
            {
              goto LABEL_60;
            }
          }

          goto LABEL_57;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v6 > 1)
      {
        goto LABEL_60;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v18;
      v19 = 1;
      if (v6 > 1)
      {
        goto LABEL_60;
      }
    }

LABEL_57:
    if (v6)
    {
      a1[v13] = v19;
    }

    return;
  }

LABEL_30:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v13] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v6)
  {
    goto LABEL_36;
  }

  a1[v13] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v9 > 0xF7)
  {
    v21 = (&a1[v11 + 1] & ~v11);
    if (v9 >= a2)
    {
      v25 = *(v7 + 56);
      v26 = a2 + 1;
      v27 = &a1[v11 + 1] & ~v11;

      v25(v27, v26);
    }

    else
    {
      if (v12 <= 3)
      {
        v22 = ~(-1 << (8 * v12));
      }

      else
      {
        v22 = -1;
      }

      if (v12)
      {
        v23 = v22 & (~v9 + a2);
        if (v12 <= 3)
        {
          v24 = v12;
        }

        else
        {
          v24 = 4;
        }

        bzero(v21, v12);
        if (v24 > 2)
        {
          if (v24 == 3)
          {
            *v21 = v23;
            v21[2] = BYTE2(v23);
          }

          else
          {
            *v21 = v23;
          }
        }

        else if (v24 == 1)
        {
          *v21 = v23;
        }

        else
        {
          *v21 = v23;
        }
      }
    }
  }

  else
  {
    *a1 = a2 + 8;
  }
}

uint64_t getEnumTagSinglePayload for SuggestionSignal(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_20;
  }

  v2 = a2 + 8;
  if (a2 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 8;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 8;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 3)
  {
    v8 = v7 - 2;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 7)
  {
    return v8 - 6;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SuggestionSignal(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 8;
  if (a3 + 8 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xF8)
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_222C3B400(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_222C3B414(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

BOOL sub_222C3B488(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 5u)
  {
    switch(a1)
    {
      case 3u:
        return a2 == 3;
      case 4u:
        return a2 == 4;
      case 5u:
        return a2 == 5;
    }

LABEL_16:
    if (a2 - 3 >= 6)
    {
      return a1 == a2;
    }

    return 0;
  }

  if (a1 == 6)
  {
    return a2 == 6;
  }

  if (a1 != 7)
  {
    if (a1 == 8)
    {
      return a2 == 8;
    }

    goto LABEL_16;
  }

  return a2 == 7;
}

uint64_t sub_222C3B548(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6F50676E6F727473 && a2 == 0xEE00657669746973 || (sub_222C951FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6576697469736F70 && a2 == 0xE800000000000000 || (sub_222C951FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C61727475656ELL && a2 == 0xE700000000000000 || (sub_222C951FC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x657669746167656ELL && a2 == 0xE800000000000000 || (sub_222C951FC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x654E676E6F727473 && a2 == 0xEE00657669746167 || (sub_222C951FC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6572656665526F6ELL && a2 == 0xEB0000000065636ELL || (sub_222C951FC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000222CACD90 == a2)
  {

    return 6;
  }

  else
  {
    v5 = sub_222C951FC();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_222C3B7B0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027530, &qword_222CA3958);
  v3 = *(v2 - 8);
  v52 = v2;
  v53 = v3;
  MEMORY[0x28223BE20](v2);
  v56 = &v40 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027538, &qword_222CA3960);
  v50 = *(v5 - 8);
  v51 = v5;
  MEMORY[0x28223BE20](v5);
  v58 = &v40 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027540, &qword_222CA3968);
  v48 = *(v7 - 8);
  v49 = v7;
  MEMORY[0x28223BE20](v7);
  v54 = &v40 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027548, &qword_222CA3970);
  v46 = *(v9 - 8);
  v47 = v9;
  MEMORY[0x28223BE20](v9);
  v57 = &v40 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027550, &qword_222CA3978);
  v44 = *(v11 - 8);
  v45 = v11;
  MEMORY[0x28223BE20](v11);
  v55 = &v40 - v12;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027558, &qword_222CA3980);
  v42 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v14 = &v40 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027560, &qword_222CA3988);
  v41 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027568, &unk_222CA3990);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v40 - v20;
  v22 = a1[3];
  v59 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_222C3C860();
  v23 = v60;
  sub_222C9535C();
  if (!v23)
  {
    v24 = v17;
    v40 = v15;
    v25 = v14;
    v27 = v57;
    v26 = v58;
    v60 = v19;
    v28 = sub_222C9508C();
    v29 = (2 * *(v28 + 16)) | 1;
    v61 = v28;
    v62 = v28 + 32;
    v63 = 0;
    v64 = v29;
    v30 = sub_222B572D4();
    if (v30 == 7 || v63 != v64 >> 1)
    {
      v19 = sub_222C94DBC();
      swift_allocError();
      v33 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025090, &qword_222C96F00);
      *v33 = &type metadata for SuggestionSignal;
      sub_222C9500C();
      sub_222C94DAC();
      (*(*(v19 - 8) + 104))(v33, *MEMORY[0x277D84160], v19);
      swift_willThrow();
      (*(v60 + 8))(v21, v18);
      swift_unknownObjectRelease();
    }

    else if (v30 <= 2u)
    {
      if (v30)
      {
        if (v30 == 1)
        {
          v65 = 1;
          sub_222C3CAAC();
          sub_222C94FFC();
          (*(v42 + 8))(v25, v43);
          (*(v60 + 8))(v21, v18);
          swift_unknownObjectRelease();
          v19 = 4;
        }

        else
        {
          v65 = 2;
          sub_222C3CA58();
          v36 = v55;
          sub_222C94FFC();
          (*(v44 + 8))(v36, v45);
          (*(v60 + 8))(v21, v18);
          swift_unknownObjectRelease();
          v19 = 5;
        }
      }

      else
      {
        v65 = 0;
        sub_222C3CB00();
        sub_222C94FFC();
        (*(v41 + 8))(v24, v40);
        (*(v60 + 8))(v21, v18);
        swift_unknownObjectRelease();
        v19 = 3;
      }
    }

    else if (v30 > 4u)
    {
      v35 = v60;
      if (v30 == 5)
      {
        v65 = 5;
        sub_222C3C95C();
        sub_222C94FFC();
        (*(v50 + 8))(v26, v51);
        (*(v35 + 8))(v21, v18);
        swift_unknownObjectRelease();
        v19 = 8;
      }

      else
      {
        v65 = 6;
        sub_222C3C8B4();
        v38 = v56;
        sub_222C94FFC();
        sub_222C3CB54();
        v39 = v52;
        sub_222C9507C();
        (*(v53 + 8))(v38, v39);
        (*(v35 + 8))(v21, v18);
        swift_unknownObjectRelease();
        v19 = v65;
      }
    }

    else
    {
      v31 = v60;
      if (v30 == 3)
      {
        v65 = 3;
        sub_222C3CA04();
        sub_222C94FFC();
        (*(v46 + 8))(v27, v47);
        (*(v31 + 8))(v21, v18);
        swift_unknownObjectRelease();
        v19 = 6;
      }

      else
      {
        v65 = 4;
        sub_222C3C9B0();
        v37 = v54;
        sub_222C94FFC();
        (*(v48 + 8))(v37, v49);
        (*(v31 + 8))(v21, v18);
        swift_unknownObjectRelease();
        v19 = 7;
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v59);
  return v19;
}

uint64_t sub_222C3C1D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6576697469736F70 && a2 == 0xE800000000000000;
  if (v4 || (sub_222C951FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C61727475656ELL && a2 == 0xE700000000000000 || (sub_222C951FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657669746167656ELL && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_222C951FC();

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

uint64_t sub_222C3C2F0(void *a1)
{
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027650, &qword_222CA4140);
  v28 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v33 = &v26 - v2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027658, &qword_222CA4148);
  v30 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v26 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027660, &qword_222CA4150);
  v29 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027668, &qword_222CA4158);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - v10;
  v12 = a1[3];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_222C3D2C0();
  v13 = v34;
  sub_222C9535C();
  if (!v13)
  {
    v27 = v5;
    v14 = v33;
    v34 = v9;
    v15 = v11;
    v16 = sub_222C9508C();
    v17 = (2 * *(v16 + 16)) | 1;
    v36 = v16;
    v37 = v16 + 32;
    v38 = 0;
    v39 = v17;
    v18 = sub_222B572CC();
    if (v18 != 3 && v38 == v39 >> 1)
    {
      v9 = v18;
      if (v18)
      {
        if (v18 == 1)
        {
          v40 = 1;
          sub_222C3D368();
          sub_222C94FFC();
          v19 = v34;
          (*(v30 + 8))(v4, v32);
          (*(v19 + 8))(v11, v8);
LABEL_13:
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_0Tm(v35);
          return v9;
        }

        v40 = 2;
        sub_222C3D314();
        v24 = v11;
        sub_222C94FFC();
        v25 = v34;
        (*(v28 + 8))(v14, v31);
      }

      else
      {
        v40 = 0;
        sub_222C3D3BC();
        v24 = v11;
        sub_222C94FFC();
        (*(v29 + 8))(v7, v27);
        v25 = v34;
      }

      (*(v25 + 8))(v24, v8);
      goto LABEL_13;
    }

    v20 = sub_222C94DBC();
    swift_allocError();
    v22 = v21;
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025090, &qword_222C96F00) + 48);
    *v22 = &type metadata for SignalSentiment;
    sub_222C9500C();
    sub_222C94DAC();
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84160], v20);
    swift_willThrow();
    (*(v34 + 8))(v15, v8);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v35);
  return v9;
}

unint64_t sub_222C3C860()
{
  result = qword_27D0274E8;
  if (!qword_27D0274E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0274E8);
  }

  return result;
}

unint64_t sub_222C3C8B4()
{
  result = qword_27D0274F0;
  if (!qword_27D0274F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0274F0);
  }

  return result;
}

unint64_t sub_222C3C908()
{
  result = qword_27D0274F8;
  if (!qword_27D0274F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0274F8);
  }

  return result;
}

unint64_t sub_222C3C95C()
{
  result = qword_27D027500;
  if (!qword_27D027500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027500);
  }

  return result;
}

unint64_t sub_222C3C9B0()
{
  result = qword_27D027508;
  if (!qword_27D027508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027508);
  }

  return result;
}

unint64_t sub_222C3CA04()
{
  result = qword_27D027510;
  if (!qword_27D027510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027510);
  }

  return result;
}

unint64_t sub_222C3CA58()
{
  result = qword_27D027518;
  if (!qword_27D027518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027518);
  }

  return result;
}

unint64_t sub_222C3CAAC()
{
  result = qword_27D027520;
  if (!qword_27D027520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027520);
  }

  return result;
}

unint64_t sub_222C3CB00()
{
  result = qword_27D027528;
  if (!qword_27D027528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027528);
  }

  return result;
}

unint64_t sub_222C3CB54()
{
  result = qword_27D027570;
  if (!qword_27D027570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027570);
  }

  return result;
}

unint64_t sub_222C3CC3C()
{
  result = qword_27D027578;
  if (!qword_27D027578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027578);
  }

  return result;
}