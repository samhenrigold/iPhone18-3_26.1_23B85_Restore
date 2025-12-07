uint64_t sub_1C4A360EC(uint64_t *a1, id *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v42 - v12;
  v14 = sub_1C4EFF0C8();
  v50 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v46 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v17 = MEMORY[0x1EEE9AC00](v16).n128_u64[0];
  v51 = &v42 - v18;
  v19 = *a2;
  v20 = [*a2 sender];
  v21 = v20;
  if (!v20)
  {
    goto LABEL_20;
  }

  v47 = v14;
  v48 = v5;
  v49 = a1;
  v22 = [v20 handle];
  sub_1C4F01138();

  v23 = String.normalizedContactHandle()();

  if (!v23.value._object)
  {

    v21 = 0;
    goto LABEL_6;
  }

  sub_1C465C294(v23.value._countAndFlagsBits, v23.value._object, a3);

  v24 = v47;
  if (sub_1C44157D4(v13, 1, v47) == 1)
  {

    sub_1C4420C3C(v13, &unk_1EC0BA0E0, &qword_1C4F105A0);
    v21 = 0;
LABEL_6:
    a1 = v49;
LABEL_20:
    v38 = [v19 recipients];
    sub_1C4461BB8(0, &qword_1EDDF0360, off_1E81EC590);
    v39 = sub_1C4F01678();

    v40 = v19;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4A34460(v39, a3, a4, a5, a1, v40);

    return sub_1C44239FC(v21, 0);
  }

  (*(v50 + 32))(v51, v13, v24);
  if (sub_1C4EFF048() == a4 && v25 == a5)
  {

    a1 = v49;
    goto LABEL_19;
  }

  v27 = sub_1C4F02938();

  a1 = v49;
  if (v27)
  {
LABEL_19:
    (*(v50 + 8))(v51, v47);

    v21 = 0;
    goto LABEL_20;
  }

  v44 = v19;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v52 = *a1;
  v28 = v52;
  sub_1C44E3664();
  v45 = v30;
  v31 = *(v28 + 16);
  v32 = (v29 & 1) == 0;
  v42 = v31 + v32;
  if (__OFADD__(v31, v32))
  {
    __break(1u);
  }

  else
  {
    v33 = v29;
    sub_1C456902C(&qword_1EC0BAA10, &qword_1C4F16910);
    v34 = sub_1C4F02458();
    v35 = v52;
    if ((v34 & 1) == 0 || (sub_1C44E3664(), v45 = v34, (v33 & 1) == (v36 & 1)))
    {
      *a1 = v35;
      if ((v33 & 1) == 0)
      {
        v37 = v46;
        (*(v50 + 16))(v46, v51, v47);
        v34 = sub_1C457EB2C(v45, v37, MEMORY[0x1E69E7CC0], v35);
      }

      MEMORY[0x1C6940330](v34);
      sub_1C4427EF0();
      sub_1C4F01748();

      (*(v50 + 8))(v51, v47);
      v21 = sub_1C48362FC;
      goto LABEL_20;
    }
  }

  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

uint64_t sub_1C4A365A4(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6)
{
  v41 = a4;
  v38 = a6;
  v39 = a5;
  v40 = a3;
  v8 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v37 - v9;
  v11 = sub_1C4EFF0C8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v16 = MEMORY[0x1EEE9AC00](v15).n128_u64[0];
  v18 = &v37 - v17;
  v19 = [*a1 handle];
  sub_1C4F01138();

  v20 = String.normalizedContactHandle()();

  if (v20.value._object)
  {
    sub_1C465C294(v20.value._countAndFlagsBits, v20.value._object, a2);

    if (sub_1C44157D4(v10, 1, v11) == 1)
    {
      return sub_1C4420C3C(v10, &unk_1EC0BA0E0, &qword_1C4F105A0);
    }

    (*(v12 + 32))(v18, v10, v11);
    if (sub_1C4EFF048() == v40 && v22 == v41)
    {
    }

    else
    {
      v24 = sub_1C4F02938();

      if ((v24 & 1) == 0)
      {
        v25 = v39;
        swift_isUniquelyReferenced_nonNull_native();
        v42 = *v25;
        v26 = v42;
        *v25 = 0x8000000000000000;
        sub_1C44E3664();
        v41 = v28;
        if (__OFADD__(*(v26 + 16), (v27 & 1) == 0))
        {
          __break(1u);
        }

        else
        {
          v29 = v27;
          sub_1C456902C(&qword_1EC0BAA10, &qword_1C4F16910);
          v30 = sub_1C4F02458();
          v31 = v42;
          if ((v30 & 1) == 0)
          {
            v34 = v41;
            goto LABEL_15;
          }

          sub_1C44E3664();
          if ((v29 & 1) == (v33 & 1))
          {
            v34 = v32;
LABEL_15:
            *v25 = v31;

            v35 = *v25;
            if ((v29 & 1) == 0)
            {
              (*(v12 + 16))(v14, v18, v11);
              sub_1C457EB2C(v34, v14, MEMORY[0x1E69E7CC0], v35);
            }

            v36 = v38;
            MEMORY[0x1C6940330]();
            sub_1C4427EF0();
            sub_1C4F01748();
            return (*(v12 + 8))(v18, v11);
          }
        }

        result = sub_1C4F029F8();
        __break(1u);
        return result;
      }
    }

    return (*(v12 + 8))(v18, v11);
  }

  return result;
}

void sub_1C4A3692C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v25 = MEMORY[0x1E69E7CC0];
  v7 = sub_1C4428DA0(a2);
  for (i = 0; ; ++i)
  {
    if (v7 == i)
    {
      v12 = sub_1C4428DA0(v25);

      v13 = *(a3 + OBJC_IVAR____TtC24IntelligencePlatformCore30MessagingInteractionSignalView_config);
      v14 = *(a3 + OBJC_IVAR____TtC24IntelligencePlatformCore30MessagingInteractionSignalView_config + 8);
      v15 = sub_1C4A34688(a4);
      v17 = v16;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      MEMORY[0x1C6940010](15933, 0xE200000000000000);
      v18 = sub_1C4EFF048();
      MEMORY[0x1C6940010](v18);

      v19 = objc_allocWithZone(MEMORY[0x1E69A9EA8]);
      sub_1C4673B1C(v13, v14, v15, v17, a5, a6);
      v20 = [objc_opt_self() featureValueWithInt64_];
      return;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1C6940F90](i, a2);
    }

    else
    {
      if (i >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v9 = *(a2 + 8 * i + 32);
    }

    v10 = v9;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v11 = [v9 bundleId];
    sub_1C4F01138();

    LOBYTE(v11) = sub_1C4F013E8();

    if (v11)
    {
      sub_1C4F02318();
      sub_1C4F02358();
      sub_1C4F02368();
      sub_1C4F02328();
    }

    else
    {
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

void sub_1C4A36B7C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v25 = MEMORY[0x1E69E7CC0];
  v7 = sub_1C4428DA0(a2);
  for (i = 0; ; ++i)
  {
    if (v7 == i)
    {
      v12 = sub_1C4428DA0(v25);

      v13 = *(a3 + OBJC_IVAR____TtC24IntelligencePlatformCore30MessagingInteractionSignalView_config);
      v14 = *(a3 + OBJC_IVAR____TtC24IntelligencePlatformCore30MessagingInteractionSignalView_config + 8);
      v15 = sub_1C4A34688(a4);
      v17 = v16;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      MEMORY[0x1C6940010](15933, 0xE200000000000000);
      v18 = sub_1C4EFF048();
      MEMORY[0x1C6940010](v18);

      v19 = objc_allocWithZone(MEMORY[0x1E69A9EA8]);
      sub_1C4673B1C(v13, v14, v15, v17, a5, a6);
      v20 = [objc_opt_self() featureValueWithInt64_];
      return;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1C6940F90](i, a2);
    }

    else
    {
      if (i >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v9 = *(a2 + 8 * i + 32);
    }

    v10 = v9;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v11 = [v9 bundleId];
    sub_1C4F01138();

    LOBYTE(v11) = sub_1C4F013E8();

    if (v11)
    {
    }

    else
    {
      sub_1C4F02318();
      sub_1C4F02358();
      sub_1C4F02368();
      sub_1C4F02328();
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

void sub_1C4A36DCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBD08();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v13 = MEMORY[0x1E69E7CC0];
  v69 = MEMORY[0x1E69E7CC0];
  v14 = sub_1C4428DA0(a3);
  v15 = 0;
  v67 = a3;
  v68 = a3 & 0xC000000000000001;
  v16 = (v7 + 8);
  while (v14 != v15)
  {
    if (v68)
    {
      v18 = MEMORY[0x1C6940F90](v15, v67);
    }

    else
    {
      sub_1C44326D8();
      if (v15 >= v17)
      {
        goto LABEL_47;
      }

      v18 = sub_1C441E5BC();
    }

    v19 = v18;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      return;
    }

    v20 = [v18 startDate];
    sub_1C440BE54();

    sub_1C440C618(v21);
    sub_1C43FD388();
    sub_1C4EF9C08();
    v22 = sub_1C440F980();
    v3(v22);
    v23 = sub_1C4415864();
    v3(v23);
    if (v7)
    {
      v7 = &v69;
      sub_1C4F02318();
      sub_1C441BB74();
      sub_1C4405814();
      sub_1C4F02368();
      sub_1C4F02328();
    }

    else
    {
    }

    ++v15;
  }

  v24 = sub_1C44104F4();
  sub_1C4A35BE4(v24, v25, v26, v27, 18, 0x13u);

  v28 = 0;
  v69 = v13;
  while (v14 != v28)
  {
    if (v68)
    {
      v30 = MEMORY[0x1C6940F90](v28, v67);
    }

    else
    {
      sub_1C44326D8();
      if (v28 >= v29)
      {
        goto LABEL_49;
      }

      v30 = sub_1C441E5BC();
    }

    v31 = v30;
    if (__OFADD__(v28, 1))
    {
      goto LABEL_48;
    }

    v32 = [v30 startDate];
    sub_1C440BE54();

    sub_1C440C618(v33);
    sub_1C43FD388();
    sub_1C4EF9C08();
    v34 = sub_1C440F980();
    v3(v34);
    v35 = sub_1C4415864();
    v3(v35);
    if (v7)
    {
      v7 = &v69;
      sub_1C4F02318();
      sub_1C441BB74();
      sub_1C4405814();
      sub_1C4F02368();
      sub_1C4F02328();
    }

    else
    {
    }

    ++v28;
  }

  v36 = sub_1C44104F4();
  v66 = sub_1C4A35BE4(v36, v37, v38, v39, 16, 0x11u);

  v40 = 0;
  v69 = v13;
  while (v14 != v40)
  {
    if (v68)
    {
      v42 = MEMORY[0x1C6940F90](v40, v67);
    }

    else
    {
      sub_1C44326D8();
      if (v40 >= v41)
      {
        goto LABEL_51;
      }

      v42 = sub_1C441E5BC();
    }

    v43 = v42;
    if (__OFADD__(v40, 1))
    {
      goto LABEL_50;
    }

    v44 = [v42 startDate];
    sub_1C440BE54();

    sub_1C440C618(v45);
    sub_1C43FD388();
    sub_1C4EF9C08();
    v46 = sub_1C440F980();
    v3(v46);
    v47 = sub_1C4415864();
    v3(v47);
    if (v7)
    {
      v7 = &v69;
      sub_1C4F02318();
      sub_1C441BB74();
      sub_1C4405814();
      sub_1C4F02368();
      sub_1C4F02328();
    }

    else
    {
    }

    ++v40;
  }

  v48 = sub_1C4426CD4();
  v52 = sub_1C4A35BE4(v48, v49, v50, v51, 14, 0xFu);

  v53 = 0;
  v69 = v13;
  while (v14 != v53)
  {
    if (v68)
    {
      v55 = MEMORY[0x1C6940F90](v53, v67);
    }

    else
    {
      sub_1C44326D8();
      if (v53 >= v54)
      {
        goto LABEL_53;
      }

      v55 = *(v67 + 8 * v53 + 32);
    }

    v56 = v55;
    if (__OFADD__(v53, 1))
    {
      goto LABEL_52;
    }

    v57 = [v55 startDate];
    sub_1C440BE54();

    sub_1C440C618(v58);
    sub_1C43FD388();
    v7 = sub_1C4EF9C08();
    v59 = *v16;
    (*v16)(v11, v5);
    v60 = sub_1C4415864();
    v59(v60);
    if (v7)
    {
      v7 = &v69;
      sub_1C4F02318();
      sub_1C4F02358();
      sub_1C4F02368();
      sub_1C4F02328();
    }

    else
    {
    }

    ++v53;
  }

  v61 = sub_1C4426CD4();
  v65 = sub_1C4A35BE4(v61, v62, v63, v64, 12, 0xDu);

  sub_1C49D39CC(v66);
  sub_1C49D39CC(v52);
  sub_1C49D39CC(v65);
}

uint64_t sub_1C4A372BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C4A34940(a1, a2, a3);
  v5 = v4;
  v6 = sub_1C43FE5F8();
  sub_1C4A34F60(v6, v7, a3);
  sub_1C49D39CC(v8);
  v9 = sub_1C43FE5F8();
  sub_1C4A36DCC(v9, v10, a3);
  sub_1C49D39CC(v11);
  return v5;
}

uint64_t sub_1C4A3734C()
{
  v1 = v0;
  v132 = sub_1C456902C(&qword_1EC0BA9F8, &unk_1C4F168D0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v2);
  v131 = &v117 - v3;
  v4 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1C43FD2C8(&v117 - v5);
  v137 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v128 = v6;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBD08();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_1C43FD2C8(&v117 - v9);
  v11 = type metadata accessor for GDInteractionEnumeration.GDInteractionIterator(v10);
  MEMORY[0x1EEE9AC00](v11 - 8);
  sub_1C43FD2D8();
  v13 = sub_1C43FD2C8(v12);
  v133 = type metadata accessor for Configuration(v13) - 8;
  MEMORY[0x1EEE9AC00](v133);
  sub_1C43FD2D8();
  v129 = v14;
  v15 = sub_1C456902C(&unk_1EC0C07E0, &unk_1C4F168F0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  sub_1C43FD2C8(&v117 - v16);
  v17 = sub_1C4EFDE88();
  sub_1C43FCDF8();
  v19 = v18;
  v120 = v18;
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBD08();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v117 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v117 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v117 - v29;
  v125 = sub_1C4EFDE98();
  sub_1C43FCDF8();
  v124 = v31;
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FD2D8();
  v138 = v33;
  v143 = MEMORY[0x1E69E7CC0];
  v123 = *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore30MessagingInteractionSignalView_store);
  sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
  sub_1C4EFEEF8();
  *(swift_allocObject() + 16) = xmmword_1C4F0C890;
  sub_1C4EFE518();
  sub_1C4EFE478();
  sub_1C4EFEA18();
  sub_1C4D504A4();
  v119 = v34;
  v35 = *(v19 + 104);
  v36 = v30;
  sub_1C442E3F8();
  v35();
  v37 = v27;
  sub_1C442E3F8();
  v35();
  v38 = v24;
  sub_1C442E3F8();
  v35();
  v39 = v121;
  sub_1C442E3F8();
  v35();
  v40 = v122;
  sub_1C442E3F8();
  v35();
  v115 = v40;
  v116 = 0;
  sub_1C4EFDCD8();

  v41 = *(v120 + 8);
  v41(v40, v17);
  v41(v39, v17);
  v41(v38, v17);
  v41(v37, v17);
  v42 = v129;
  v41(v36, v17);
  v43 = sub_1C4EFD678();
  v44 = v126;
  sub_1C440BAA8(v126, 1, 1, v43);
  v140 = &v143;
  v45 = v138;
  v46 = v123;
  sub_1C48687D0(v138, v44, sub_1C4A38B44, v139);
  sub_1C4420C3C(v44, &unk_1EC0C07E0, &unk_1C4F168F0);
  (v124)[1](v45, v125);
  sub_1C4409678((v135 + OBJC_IVAR____TtC24IntelligencePlatformCore30MessagingInteractionSignalView_handleView), *(v135 + OBJC_IVAR____TtC24IntelligencePlatformCore30MessagingInteractionSignalView_handleView + 24));
  v138 = sub_1C4EFF2B8();
  sub_1C4431014(v46 + OBJC_IVAR____TtC24IntelligencePlatformCore10GraphStore_config, v42, type metadata accessor for Configuration);
  v47 = (v42 + *(v133 + 28));
  v48 = *v47;
  v49 = v47[1];
  if (qword_1EDDFEC70 != -1)
  {
    goto LABEL_53;
  }

LABEL_2:
  v50 = xmmword_1EDDFEC78;
  sub_1C4454110(v42, type metadata accessor for Configuration);
  if (v50 & ~v48 | *(&v50 + 1) & ~v49)
  {
    v51 = 2000;
  }

  else
  {
    v51 = 200;
  }

  v52 = [objc_opt_self() interactionHistoryEnumeratorWithBatchSize_];
  v142 = MEMORY[0x1E69E7CC8];
  v53 = v52;
  v54 = v136;
  v126 = v53;
  sub_1C4EF97F8();
  v129 = 0;
  v125 = (v128 + 32);
  v133 = v128 + 16;
  v124 = (v128 + 8);
  v55 = v130;
  v56 = v127;
  while (1)
  {
    v49 = v54;
    sub_1C4EF97D8(v141);
    if (!v141[3])
    {
      v130 = v55;
      sub_1C4420C3C(v141, &qword_1EC0BCD10, &qword_1C4F0C8C0);
      goto LABEL_30;
    }

    sub_1C4461BB8(0, &qword_1EDDF0578, off_1E81EC5C8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v130 = v55;
LABEL_30:
      sub_1C4454110(v54, type metadata accessor for GDInteractionEnumeration.GDInteractionIterator);
      v42 = v142;
      v127 = (v142 + 8);
      sub_1C43FD030();
      v84 = v83 & v82;
      v86 = (v85 + 63) >> 6;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v87 = 0;
      v48 = MEMORY[0x1E69E7CC0];
      v88 = v128;
      v134 = v42;
      do
      {
LABEL_31:
        while (2)
        {
          if (v84)
          {
            v136 = v48;
            goto LABEL_37;
          }

          do
          {
            v89 = v87 + 1;
            if (__OFADD__(v87, 1))
            {
              __break(1u);
LABEL_50:
              __break(1u);
LABEL_51:
              __break(1u);
              goto LABEL_52;
            }

            if (v89 >= v86)
            {
              goto LABEL_48;
            }

            v84 = *(v127 + 8 * v89);
            ++v87;
          }

          while (!v84);
          v136 = v48;
          v87 = v89;
LABEL_37:
          v90 = __clz(__rbit64(v84)) | (v87 << 6);
          v91 = v88;
          v92 = v131;
          (*(v88 + 16))(v131, v42[6] + *(v88 + 72) * v90, v137);
          v93 = *(v42[7] + 8 * v90);
          *(v92 + *(v132 + 48)) = v93;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v94 = sub_1C4EFF048();
          v42 = sub_1C4A372BC(v94, v95, v93);

          sub_1C4420C3C(v92, &qword_1EC0BA9F8, &unk_1C4F168D0);
          v49 = v42[2];
          v48 = v136;
          v96 = *(v136 + 16);
          if (__OFADD__(v96, v49))
          {
            goto LABEL_50;
          }

          if (!swift_isUniquelyReferenced_nonNull_native() || v96 + v49 > *(v48 + 24) >> 1)
          {
            sub_1C458B740();
            v48 = v97;
          }

          v88 = v91;
          v84 &= v84 - 1;
          if (!v42[2])
          {

            v42 = v134;
            if (!v49)
            {
              continue;
            }

            __break(1u);
LABEL_48:

            v101 = v135[2];
            v102 = v135[3];
            v104 = v135[4];
            v103 = v135[5];
            v105 = v135[6];
            sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_1C4F0D130;
            *(inited + 32) = v101;
            *(inited + 40) = v102;
            MEMORY[0x1EEE9AC00](inited);
            *(&v117 - 6) = v107;
            *(&v117 - 5) = v104;
            *(&v117 - 4) = v103;
            *(&v117 - 3) = v105;
            v115 = v48;
            swift_bridgeObjectRetain_n();
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

            sub_1C4418704(sub_1C4673BE8, (&v117 - 8), v108, v109, v110, v111, v112, v113, v117, v118);

            swift_setDeallocating();
            sub_1C44DEE40();

            return sub_1C44239FC(v129, 0);
          }

          break;
        }

        if ((*(v48 + 24) >> 1) - *(v48 + 16) < v49)
        {
          goto LABEL_51;
        }

        sub_1C456902C(&qword_1EC0B87E0, &qword_1C4F0DBD0);
        v88 = v91;
        swift_arrayInitWithCopy();

        v42 = v134;
      }

      while (!v49);
      v98 = *(v48 + 16);
      v99 = __OFADD__(v98, v49);
      v100 = v98 + v49;
      if (!v99)
      {
        *(v48 + 16) = v100;
        goto LABEL_31;
      }

LABEL_52:
      __break(1u);
LABEL_53:
      swift_once();
      goto LABEL_2;
    }

    v57 = v141[9];
    if (qword_1EC0B6F88 != -1)
    {
      swift_once();
    }

    v58 = qword_1EC1529F0;
    v59 = [v57 mechanism];
    if (*(v58 + 16))
    {
      break;
    }

LABEL_27:
  }

  v60 = v59;
  sub_1C4F02AF8();
  MEMORY[0x1C69417F0](v60);
  v61 = sub_1C4F02B68();
  v62 = ~(-1 << *(v58 + 32));
  do
  {
    v63 = v61 & v62;
    if (((*(v58 + 56 + (((v61 & v62) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v61 & v62)) & 1) == 0)
    {
      goto LABEL_27;
    }

    v61 = v63 + 1;
  }

  while (*(*(v58 + 48) + 8 * v63) != v60);
  v64 = [v57 sender];
  if (!v64)
  {
    goto LABEL_26;
  }

  v65 = v64;
  v66 = [v64 handle];
  sub_1C4F01138();

  v67 = String.normalizedContactHandle()();

  if (!v67.value._object)
  {

LABEL_19:
    v54 = v136;
LABEL_26:
    v78 = [v57 recipients];
    sub_1C4461BB8(0, &qword_1EDDF0360, off_1E81EC590);
    sub_1C4F01678();

    v57 = v57;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v79 = sub_1C4405814();
    sub_1C4A34584(v79, v80, v81, v57);

    goto LABEL_27;
  }

  sub_1C465C294(v67.value._countAndFlagsBits, v67.value._object, v138);

  v68 = v137;
  if (sub_1C44157D4(v56, 1, v137) == 1)
  {

    sub_1C4420C3C(v56, &unk_1EC0BA0E0, &qword_1C4F105A0);
    goto LABEL_19;
  }

  (*v125)(v134, v56, v68);
  sub_1C44239FC(v129, 0);
  v69 = v142;
  swift_isUniquelyReferenced_nonNull_native();
  v141[0] = v69;
  sub_1C44E3664();
  if (__OFADD__(v69[2], (v70 & 1) == 0))
  {
    __break(1u);
  }

  else
  {
    v71 = v70;
    sub_1C456902C(&qword_1EC0BAA10, &qword_1C4F16910);
    v72 = sub_1C4F02458();
    v73 = v141[0];
    if ((v72 & 1) == 0 || (sub_1C44E3664(), (v71 & 1) == (v74 & 1)))
    {
      v142 = v73;
      if ((v71 & 1) == 0)
      {
        (*v133)(v118, v134, v137);
        v75 = sub_1C43FE5F8();
        sub_1C457EB2C(v75, v76, MEMORY[0x1E69E7CC0], v73);
      }

      v77 = v57;
      MEMORY[0x1C6940330]();
      sub_1C4427EF0();
      sub_1C43FE5F8();
      sub_1C4F01748();

      (*v124)(v134, v137);
      v129 = sub_1C48362FC;
      v56 = v127;
      v54 = v136;
      goto LABEL_26;
    }
  }

  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

uint64_t sub_1C4A38340(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for GraphTriple(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C4EFEEF8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v4 + 20);
  sub_1C4EFEA18();
  LOBYTE(v11) = sub_1C44DBB50(a1 + v11, v10);
  v12 = *(v8 + 8);
  v12(v10, v7);
  if (v11)
  {
    v13 = *(v4 + 28);
    sub_1C4EFE518();
    v14 = sub_1C44DBB50(a1 + v13, v10);
    v12(v10, v7);
    if ((v14 & 1) == 0)
    {
      sub_1C4EFE478();
      v15 = sub_1C44DBB50(a1 + v13, v10);
      v12(v10, v7);
      if ((v15 & 1) == 0)
      {
        return 0;
      }
    }
  }

  sub_1C4589088();
  v16 = *(*a2 + 16);
  sub_1C4589C48();
  sub_1C4431014(a1, v6, type metadata accessor for GraphTriple);
  sub_1C4673C64(v16, v6, a2);
  return 1;
}

uint64_t sub_1C4A38538(id *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v32 = a4;
  v7 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v31 - v8;
  v10 = sub_1C4EFF0C8();
  v33 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = MEMORY[0x1EEE9AC00](v13).n128_u64[0];
  v16 = &v31 - v15;
  v17 = [*a1 handle];
  sub_1C4F01138();

  v18 = String.normalizedContactHandle()();

  if (!v18.value._object)
  {
    return result;
  }

  sub_1C465C294(v18.value._countAndFlagsBits, v18.value._object, a2);

  if (sub_1C44157D4(v9, 1, v10) == 1)
  {
    return sub_1C4420C3C(v9, &unk_1EC0BA0E0, &qword_1C4F105A0);
  }

  (*(v33 + 32))(v16, v9, v10);
  swift_isUniquelyReferenced_nonNull_native();
  v34 = *a3;
  v20 = v34;
  *a3 = 0x8000000000000000;
  sub_1C44E3664();
  if (__OFADD__(*(v20 + 16), (v22 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v23 = v21;
  v24 = v22;
  sub_1C456902C(&qword_1EC0BAA10, &qword_1C4F16910);
  v25 = sub_1C4F02458();
  v26 = v34;
  if (v25)
  {
    sub_1C44E3664();
    if ((v24 & 1) == (v28 & 1))
    {
      v23 = v27;
      goto LABEL_8;
    }

LABEL_13:
    result = sub_1C4F029F8();
    __break(1u);
    return result;
  }

LABEL_8:
  *a3 = v26;

  v29 = *a3;
  if ((v24 & 1) == 0)
  {
    (*(v33 + 16))(v12, v16, v10);
    sub_1C457EB2C(v23, v12, MEMORY[0x1E69E7CC0], v29);
  }

  v30 = v32;
  MEMORY[0x1C6940330]();
  sub_1C4427EF0();
  sub_1C4F01748();
  return (*(v33 + 8))(v16, v10);
}

uint64_t sub_1C4A38870()
{

  sub_1C4454110(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore30MessagingInteractionSignalView_config, _s10ViewConfigVMa);

  sub_1C440962C((v0 + OBJC_IVAR____TtC24IntelligencePlatformCore30MessagingInteractionSignalView_handleView));

  return v0;
}

uint64_t sub_1C4A38908()
{
  sub_1C4A38870();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MessagingInteractionSignalView(uint64_t a1)
{
  result = qword_1EC0C1A68;
  if (!qword_1EC0C1A68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4A389B4(uint64_t a1)
{
  result = _s10ViewConfigVMa(319);
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

uint64_t sub_1C4A38A68()
{
  sub_1C4A3734C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C4A38B94(uint64_t a1, unint64_t a2)
{
  sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - v5;
  sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
  v7 = sub_1C4F00F28();
  if (a2)
  {
    v8 = sub_1C45FB538();
    if (v8)
    {
      v9 = v8;
      v10 = sub_1C4EF9CD8();
      sub_1C440BAA8(v6, 1, 1, v10);
      v11 = sub_1C4886564(a1, a2, v6);
      v13 = v12;
      sub_1C45942C8(v9);
      sub_1C44686E4(v6);
      if (v13)
      {
        if (sub_1C4594E18(v11, v13))
        {
          swift_isUniquelyReferenced_nonNull_native();
          v20 = v7;
          sub_1C4660314();
          return v20;
        }

        else
        {
          v14 = sub_1C445FAA8(0x636F6C6F7263696DLL, 0xEF64496E6F697461);
          if (v15)
          {
            v16 = v14;
            swift_isUniquelyReferenced_nonNull_native();
            v20 = v7;
            sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
            sub_1C4F02458();
            v7 = v20;

            v17 = *(*(v7 + 56) + 8 * v16);
            sub_1C4F02478();
          }
        }
      }
    }
  }

  return v7;
}

uint64_t sub_1C4A38DD8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1C4EF9CD8();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  result = type metadata accessor for MicrolocationEvent(0);
  *(a5 + *(result + 20)) = a2;
  v12 = (a5 + *(result + 24));
  *v12 = a3;
  v12[1] = a4;
  return result;
}

void sub_1C4A38E84(uint64_t a1@<X8>)
{
  v15 = a1;
  sub_1C456902C(&qword_1EC0C1A88, &qword_1C4F45B70);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C456902C(&qword_1EC0C1A90, &unk_1C4F45B78);
  v14 = *(v2 - 8);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v14 - v4;
  v6 = [BiomeLibrary() Location];
  swift_unknownObjectRelease();
  v7 = [v6 MicroLocationVisit];
  swift_unknownObjectRelease();
  v8 = [objc_allocWithZone(GDMicroLocationVisitUtility) initWithMicroLocationVisitStream_];
  v9 = sub_1C4EF9BF8();
  sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v10 = sub_1C4EF9BF8();
  v11 = [v8 microLocationVisitEventPublisherFrom:v9 to:v10];

  sub_1C4461BB8(0, &qword_1EC0C1A98, off_1E81EC5E0);
  v12 = v11;
  v13 = v16;
  sub_1C4EFFC38();
  if (v13)
  {
  }

  else
  {
    type metadata accessor for MicrolocationEvent(0);
    sub_1C4401CBC(&qword_1EC0C1AA0, &qword_1EC0C1A88, &qword_1C4F45B70, MEMORY[0x1E69A9B60]);
    sub_1C4F02848();

    (*(v14 + 32))(v15, v5, v2);
  }
}

uint64_t sub_1C4A39154(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1C4A39178, 0, 0);
}

uint64_t sub_1C4A39178()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = [v1 date];
  sub_1C4EF9C78();

  LOBYTE(v3) = [v1 isEnter];
  v4 = [v1 microLocationIdentifier];
  v5 = sub_1C4F01138();
  v7 = v6;

  v8 = type metadata accessor for MicrolocationEvent(0);
  *(v2 + *(v8 + 20)) = v3;
  v9 = (v2 + *(v8 + 24));
  *v9 = v5;
  v9[1] = v7;
  sub_1C440BAA8(v2, 0, 1, v8);
  v10 = v0[1];

  return v10();
}

void sub_1C4A3927C(uint64_t a1@<X8>)
{
  sub_1C456902C(&qword_1EC0C1A80, &qword_1C4F45B68);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v6 - v4;
  sub_1C4A38E84(&v6 - v4);
  if (!v1)
  {
    sub_1C4A39338(v5, a1);
  }
}

uint64_t sub_1C4A39338(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0C1A80, &qword_1C4F45B68);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for MicrolocationEvent(uint64_t a1)
{
  result = qword_1EC0C1AA8;
  if (!qword_1EC0C1AA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4A3941C(uint64_t a1)
{
  result = sub_1C4EF9CD8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void *sub_1C4A394B0()
{
  v1 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - v2;
  v0[2] = 0x4072C00000000000;
  v0[4] = sub_1C4F00F28();
  v4 = OBJC_IVAR____TtC24IntelligencePlatformCore19MicroLocationSignal_lastMicroLocationTimestamp;
  v5 = sub_1C4EF9CD8();
  sub_1C440BAA8(v0 + v4, 1, 1, v5);
  v6 = [BiomeLibrary() Location];
  swift_unknownObjectRelease();
  v7 = [v6 MicroLocationVisit];
  swift_unknownObjectRelease();
  v0[3] = v7;
  sub_1C440BAA8(v3, 1, 1, v5);
  v8 = OBJC_IVAR____TtC24IntelligencePlatformCore19MicroLocationSignal_lastMicroLocationTimestamp;
  swift_beginAccess();
  sub_1C45AD734(v3, v0 + v8);
  swift_endAccess();
  return v0;
}

uint64_t sub_1C4A39694()
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
  *(v5 + 32) = 0xD000000000000028;
  *(v5 + 40) = 0x80000001C4F8FD80;
  v6 = v2 + 2;
  if (v3 <= v4)
  {
    sub_1C44CD9C0(v1 > 1, v6, 1);
    v0 = v9;
  }

  *(v0 + 16) = v6;
  v7 = v0 + 16 * v4;
  *(v7 + 32) = 0xD000000000000036;
  *(v7 + 40) = 0x80000001C4F8FDB0;

  return sub_1C4499940();
}

void sub_1C4A397A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &aBlock - v10;
  v12 = objc_autoreleasePoolPush();
  v13 = *(v3 + 24);
  sub_1C4467FE0(a1, v11);
  sub_1C4467FE0(a2, v8);
  v14 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v15 = sub_1C457A86C(v11, v8, 0, 0, 0);
  v16 = [v13 publisherWithOptions_];

  v24 = sub_1C4A3B428;
  v25 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = sub_1C44405F8;
  v23 = &unk_1F43F4CE0;
  v17 = _Block_copy(&aBlock);
  v24 = sub_1C4A3B3B4;
  v25 = v3;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = sub_1C4440590;
  v23 = &unk_1F43F4D08;
  v18 = _Block_copy(&aBlock);

  v19 = [v16 sinkWithCompletion:v17 receiveInput:v18];
  _Block_release(v18);
  _Block_release(v17);

  objc_autoreleasePoolPop(v12);
}

void sub_1C4A399E4(void *a1, uint64_t a2)
{
  v3 = [a1 eventBody];
  if (!v3)
  {
    if (qword_1EDDFECB0 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

  v22 = v3;
  v4 = sub_1C4A3B3BC(v3);
  if (!v5)
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v18 = sub_1C4F00978();
    sub_1C442B738(v18, qword_1EDDFECB8);
    v19 = sub_1C4F00968();
    v20 = sub_1C4F01CF8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1C43F8000, v19, v20, "Max Probability Microlocation Identifier is nil", v21, 2u);
      MEMORY[0x1C6942830](v21, -1, -1);
    }

    goto LABEL_18;
  }

  v6 = v4;
  v7 = v5;
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a2 + 32);
  *(a2 + 32) = 0x8000000000000000;
  v9 = sub_1C445FAA8(v6, v7);
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
LABEL_22:
    swift_once();
LABEL_11:
    v15 = sub_1C4F00978();
    sub_1C442B738(v15, qword_1EDDFECB8);
    v22 = sub_1C4F00968();
    v16 = sub_1C4F01CF8();
    if (os_log_type_enabled(v22, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1C43F8000, v22, v16, "Unable to parse eventBody in BMMicrolocationStream", v17, 2u);
      MEMORY[0x1C6942830](v17, -1, -1);
    }

LABEL_18:

    return;
  }

  v11 = v9;
  v12 = v10;
  sub_1C456902C(&qword_1EC0B8570, &qword_1C4F0E320);
  if (sub_1C4F02458())
  {
    v13 = sub_1C445FAA8(v6, v7);
    if ((v12 & 1) != (v14 & 1))
    {
      sub_1C4F029F8();
      __break(1u);
      return;
    }

    v11 = v13;
  }

  *(a2 + 32) = v8;
  if ((v12 & 1) == 0)
  {
    sub_1C457DBD8(v11, v6, v7, v8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  *(*(v8 + 56) + 8 * v11) = *(*(v8 + 56) + 8 * v11) + 1.0;
  swift_endAccess();
}

uint64_t sub_1C4A39CF8(uint64_t a1)
{
  v3 = objc_autoreleasePoolPush();
  sub_1C4A39D50(v1, a1, &v5);
  objc_autoreleasePoolPop(v3);
  return v5;
}

uint64_t sub_1C4A39D50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - v10;
  v12 = *(a1 + 24);
  v13 = sub_1C4EF9CD8();
  sub_1C440BAA8(v11, 1, 1, v13);
  (*(*(v13 - 8) + 16))(v8, a2, v13);
  sub_1C440BAA8(v8, 0, 1, v13);
  v14 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v15 = sub_1C457A86C(v11, v8, 1, 1, 0);
  v16 = [v12 publisherWithOptions_];

  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 1;
  v32 = sub_1C4A3B428;
  v33 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v29 = 1107296256;
  v30 = sub_1C44405F8;
  v31 = &unk_1F43F4C68;
  v19 = _Block_copy(&aBlock);
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  *(v20 + 24) = v18;
  v32 = sub_1C4A3B3AC;
  v33 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v29 = 1107296256;
  v30 = sub_1C4440590;
  v31 = &unk_1F43F4CB8;
  v21 = _Block_copy(&aBlock);

  v22 = [v16 sinkWithCompletion:v19 receiveInput:v21];

  _Block_release(v21);
  _Block_release(v19);

  swift_beginAccess();
  v23 = *(v17 + 16);
  swift_beginAccess();
  if (v23)
  {
    if ((*(v18 + 24) & 1) == 0)
    {
      v24 = *(v18 + 16);
      v25 = v23;
      goto LABEL_6;
    }

    v23 = 0;
  }

  v24 = 0;
LABEL_6:

  *a3 = v23;
  a3[1] = v24;
  return result;
}

void sub_1C4A3A0AC(void *a1)
{
  v1 = [a1 error];
  if (v1)
  {
    v2 = v1;
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v3 = sub_1C4F00978();
    sub_1C442B738(v3, qword_1EDDFECB8);
    v4 = v2;
    oslog = sub_1C4F00968();
    v5 = sub_1C4F01CD8();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v13 = v7;
      *v6 = 136315138;
      v8 = v4;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v9 = sub_1C4F01198();
      v11 = sub_1C441D828(v9, v10, &v13);

      *(v6 + 4) = v11;
      _os_log_impl(&dword_1C43F8000, oslog, v5, "BMMicrolocation could not be fetched with error: %s", v6, 0xCu);
      sub_1C440962C(v7);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    else
    {
    }
  }
}

void sub_1C4A3A24C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 eventBody];
  if (v6)
  {
    v7 = v6;
    swift_beginAccess();
    v8 = *(a2 + 16);
    *(a2 + 16) = v7;
    v9 = v7;

    [a1 timestamp];
    v11 = v10;

    swift_beginAccess();
    *(a3 + 16) = v11;
    *(a3 + 24) = 0;
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v12 = sub_1C4F00978();
    sub_1C442B738(v12, qword_1EDDFECB8);
    oslog = sub_1C4F00968();
    v13 = sub_1C4F01CF8();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1C43F8000, oslog, v13, "Unable to parse eventBody in BMMicrolocationStream", v14, 2u);
      MEMORY[0x1C6942830](v14, -1, -1);
    }
  }
}

uint64_t sub_1C4A3A3EC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v10 = v9 - v8;
  v11 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v53 - v15;
  v17 = OBJC_IVAR____TtC24IntelligencePlatformCore19MicroLocationSignal_lastMicroLocationTimestamp;
  swift_beginAccess();
  sub_1C4467FE0(v1 + v17, v16);
  v53 = v6;
  v18 = *(v6 + 16);
  v18(v13, a1, v4);
  sub_1C440BAA8(v13, 0, 1, v4);
  sub_1C4A397A0(v16, v13);
  sub_1C44686E4(v13);
  sub_1C44686E4(v16);
  v18(v16, a1, v4);
  sub_1C440BAA8(v16, 0, 1, v4);
  swift_beginAccess();
  sub_1C45AD734(v16, v1 + v17);
  swift_endAccess();
  v19 = sub_1C4A39CF8(a1);
  if (v19)
  {
    v20 = v19;
    v21 = sub_1C4A3B33C(v20);
    if (v22)
    {
      v23 = v21;
      v24 = v22;
      swift_beginAccess();
      v25 = COERCE_DOUBLE(sub_1C465C024(v23, v24, *(v2 + 32)));
      v27 = v26;
      swift_endAccess();

      v28 = 0;
      v29 = 0.0;
      if (v27)
      {
        v30 = 0.0;
      }

      else
      {
        v30 = v25;
      }

      v31 = *(v2 + 32);
      v32 = 1 << *(v31 + 32);
      v33 = -1;
      if (v32 < 64)
      {
        v33 = ~(-1 << v32);
      }

      v34 = v33 & *(v31 + 64);
      v35 = (v32 + 63) >> 6;
      if (v34)
      {
        while (1)
        {
          v36 = v28;
LABEL_14:
          v37 = __clz(__rbit64(v34));
          v34 &= v34 - 1;
          v29 = v29 + *(*(v31 + 56) + ((v36 << 9) | (8 * v37)));
          if (!v34)
          {
            goto LABEL_10;
          }
        }
      }

      while (1)
      {
LABEL_10:
        v36 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          __break(1u);
          goto LABEL_31;
        }

        if (v36 >= v35)
        {
          break;
        }

        v34 = *(v31 + 64 + 8 * v36);
        ++v28;
        if (v34)
        {
          v28 = v36;
          goto LABEL_14;
        }
      }

      sub_1C456902C(&unk_1EC0C65C0, &qword_1C4F0D1F0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C4F0CE60;
      *(inited + 32) = 0xD000000000000028;
      *(inited + 40) = 0x80000001C4F8FD80;
      v39 = objc_opt_self();
      *(inited + 48) = [v39 featureValueWithDouble_];
      *(inited + 56) = 0xD000000000000036;
      *(inited + 64) = 0x80000001C4F8FDB0;
      sub_1C4EF9BE8();
      sub_1C4EF9AD8();
      v41 = v40;
      (*(v53 + 8))(v10, v4);
      v42 = v41 / *(v2 + 16);
      if (v42 > 150.0)
      {
        v42 = 150.0;
      }

      *(inited + 72) = [v39 featureValueWithDouble_];
      sub_1C4577DBC();
    }

    else
    {
      if (qword_1EDDFECB0 != -1)
      {
        sub_1C43FFB88(&qword_1EDDFECB0);
      }

      v48 = sub_1C4F00978();
      sub_1C442B738(v48, qword_1EDDFECB8);
      v49 = sub_1C4F00968();
      v50 = sub_1C4F01CF8();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&dword_1C43F8000, v49, v50, "Max Probability Microlocation Identifier is nil", v51, 2u);
        sub_1C43FBE2C();
      }

      sub_1C4577DBC();
    }

    v47 = sub_1C4F00F28();
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
LABEL_31:
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v43 = sub_1C4F00978();
    sub_1C442B738(v43, qword_1EDDFECB8);
    v44 = sub_1C4F00968();
    v45 = sub_1C4F01CF8();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_1C43F8000, v44, v45, "Microlocation event is nil", v46, 2u);
      sub_1C43FBE2C();
    }

    sub_1C4577DBC();
    return sub_1C4F00F28();
  }

  return v47;
}

void sub_1C4A3A9AC(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v34 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  v12 = v11 - v10;
  type metadata accessor for FeatureProviderSnapshot(0);
  sub_1C43FCDF8();
  v32 = v14;
  v33 = v13;
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBCC4();
  v17 = v16 - v15;
  v18 = *(a2 + 16);
  v19 = MEMORY[0x1E69E7CC0];
  if (v18)
  {
    v29 = a3;
    v37 = MEMORY[0x1E69E7CC0];
    v36 = v17;
    sub_1C459D0A8();
    v20 = v36;
    v19 = v37;
    v22 = *(v8 + 16);
    v21 = v8 + 16;
    v23 = a2 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
    v30 = *(v21 + 56);
    v31 = v22;
    do
    {
      v31(v12, v23, v34);
      v31(v20, v12, v34);
      v24 = sub_1C4A3A3EC(v12);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v25 = v4;
      sub_1C4A3B178(v24, a1);

      sub_1C465CF34();
      v27 = v26;
      v20 = v36;

      (*(v21 - 8))(v12, v34);
      *(v36 + *(v33 + 20)) = v27;
      v28 = *(v37 + 16);
      if (v28 >= *(v37 + 24) >> 1)
      {
        sub_1C459D0A8();
        v20 = v36;
      }

      *(v37 + 16) = v28 + 1;
      sub_1C4586A54(v20, v37 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v28);
      v23 += v30;
      --v18;
      v4 = v25;
    }

    while (v18);
    a3 = v29;
  }

  *a3 = v19;
}

uint64_t sub_1C4A3AC60()
{
  v0 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v6 = v5 - v4;
  sub_1C4EF9C88();
  v7 = sub_1C4A3A3EC(v6);
  (*(v2 + 8))(v6, v0);
  return v7;
}

id sub_1C4A3AD1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v10 = v9 - v8;
  sub_1C4EF9C88();
  sub_1C4A3A3EC(v10);
  (*(v6 + 8))(v10, v4);
  v11 = sub_1C44F9274(a1);

  if (!v11)
  {
    v12 = sub_1C4A39694();
    v13 = sub_1C4499AD0(a1, a2, v12);

    if (v13)
    {
      return [objc_opt_self() featureValueWithDouble_];
    }

    else
    {
      return 0;
    }
  }

  return v11;
}

uint64_t sub_1C4A3AEDC()
{

  sub_1C44686E4(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore19MicroLocationSignal_lastMicroLocationTimestamp);
  return v0;
}

uint64_t sub_1C4A3AF14()
{
  sub_1C4A3AEDC();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MicroLocationSignal(uint64_t a1)
{
  result = qword_1EC0C1AD0;
  if (!qword_1EC0C1AD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C4A3AFC0(uint64_t a1)
{
  sub_1C45C2C2C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1C4A3B0F8(uint64_t a1)
{
  result = sub_1C4A3B120();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C4A3B120()
{
  result = qword_1EC0C1AE0;
  if (!qword_1EC0C1AE0)
  {
    type metadata accessor for MicroLocationSignal(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1AE0);
  }

  return result;
}

_BYTE *sub_1C4A3B178(_BYTE *a1, uint64_t a2)
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

uint64_t sub_1C4A3B33C(void *a1)
{
  v2 = [a1 maxProbabilityMicroLocationIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1C4F01138();

  return v3;
}

uint64_t sub_1C4A3B3BC(void *a1)
{
  v1 = [a1 maxProbabilityMicroLocationIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C4F01138();

  return v3;
}

uint64_t sub_1C4A3B434@<X0>(uint64_t a1@<X8>)
{
  if ([v1 type] == 1)
  {
    MEMORY[0x1C6941780]([v1 int64Value]);
LABEL_5:
    v3 = 0;
    goto LABEL_7;
  }

  if ([v1 type] == 2)
  {
    MEMORY[0x1C69406E0]([v1 doubleValue]);
    goto LABEL_5;
  }

  v3 = 1;
LABEL_7:
  v4 = sub_1C4EFB258();

  return sub_1C440BAA8(a1, v3, 1, v4);
}

uint64_t DatabaseValue.init(featureValueData:)@<X0>(_BYTE *a3@<X8>)
{
  v4 = sub_1C456902C(&qword_1EC0C1AE8, &qword_1C4F5D6A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v25[-v5];
  v7 = sub_1C4EFB258();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C4461BB8(0, &qword_1EDDFCE70, 0x1E696ACD0);
  sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
  v11 = sub_1C4F01D38();
  v15 = v11;
  if (v11)
  {
    sub_1C4A3B434(v6);

    if (sub_1C44157D4(v6, 1, v7) == 1)
    {
      sub_1C4A3B890(v6);
      sub_1C43FE5F8();
      sub_1C4EF9998();
      v16 = sub_1C43FE5F8();
      sub_1C4434000(v16, v17);
      (*(v8 + 32))(a3, v10, v7);
    }

    else
    {
      v22 = sub_1C43FE5F8();
      sub_1C4434000(v22, v23);
      v24 = *(v8 + 32);
      v24(v10, v6, v7);
      v24(a3, v10, v7);
    }

    return sub_1C440BAA8(a3, 0, 1, v7);
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v18 = sub_1C4F00978();
    sub_1C442B738(v18, qword_1EDDFECB8);
    v19 = sub_1C4F00968();
    v20 = sub_1C4F01CD8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1C43F8000, v19, v20, "DatabaseValueConvertible error: Expected value to be an MLFeatureValue", v21, 2u);
      MEMORY[0x1C6942830](v21, -1, -1);
    }

    v12 = sub_1C43FE5F8();
    sub_1C4434000(v12, v13);

    return sub_1C440BAA8(a3, 1, 1, v7);
  }
}

uint64_t sub_1C4A3B890(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0C1AE8, &qword_1C4F5D6A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1C4A3B8F8(char a1)
{
  v1 = [swift_getObjCClassFromMetadata() featureValueWithInt64_];

  return v1;
}

id sub_1C4A3B944(uint64_t a1, char a2)
{
  if (a2)
  {
    return 0;
  }

  else
  {
    return [swift_getObjCClassFromMetadata() featureValueWithDouble_];
  }
}

uint64_t sub_1C4A3B994(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = *(a1 + 2);
  *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore21ModeInteractionSignal____lazy_storage___featureNames) = 0;
  *(v4 + 16) = v7;
  *(v4 + 32) = v8;
  *(v4 + 40) = *(a1 + 24);
  sub_1C463F300(a2, v4 + OBJC_IVAR____TtC24IntelligencePlatformCore21ModeInteractionSignal_config);
  *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore21ModeInteractionSignal_store) = a3;
  v9 = OBJC_IVAR____TtC24IntelligencePlatformCore21ModeInteractionSignal_handleView;
  sub_1C4EFCE48();
  sub_1C43FBCE0();
  (*(v10 + 32))(v4 + v9, a4);
  return v4;
}

uint64_t sub_1C4A3BA48()
{
  v1 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21ModeInteractionSignal____lazy_storage___featureNames);
  if (v1)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  else
  {
    v11 = OBJC_IVAR____TtC24IntelligencePlatformCore21ModeInteractionSignal____lazy_storage___featureNames;
    v12 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0(0, 11, 0);
    for (i = 0; i != 44; i += 4)
    {
      v3 = *(&unk_1F43DAA18 + i + 32);
      sub_1C4F02248();
      v4 = 0xE700000000000000;
      v5 = 0x746C7561666564;
      switch(v3)
      {
        case 1:
          v4 = 0xE600000000000000;
          v5 = 0x6D6F74737563;
          break;
        case 2:
          break;
        case 3:
          v4 = 0xE500000000000000;
          v5 = 0x7065656C73;
          break;
        case 4:
          v6 = 1986622052;
          goto LABEL_15;
        case 5:
          v4 = 0xE800000000000000;
          v5 = 0x6573696372657865;
          break;
        case 6:
          v4 = 0xE400000000000000;
          v5 = 1802661751;
          break;
        case 7:
          v4 = 0xE800000000000000;
          v5 = 0x6C616E6F73726570;
          break;
        case 8:
          v6 = 1684104562;
LABEL_15:
          v5 = v6 | 0x676E6900000000;
          break;
        case 9:
          v4 = 0xE600000000000000;
          v5 = 0x676E696D6167;
          break;
        case 10:
          v5 = 0x6E6C7566646E696DLL;
          v4 = 0xEB00000000737365;
          break;
        default:
          v5 = 0x6E776F6E6B6E75;
          break;
      }

      MEMORY[0x1C6940010](v5, v4);

      MEMORY[0x1C6940010](0xD000000000000010, 0x80000001C4FAD5E0);
      v8 = *(v12 + 16);
      v7 = *(v12 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_1C44CD9C0(v7 > 1, v8 + 1, 1);
      }

      *(v12 + 16) = v8 + 1;
      v9 = v12 + 16 * v8;
      *(v9 + 32) = 0;
      *(v9 + 40) = 0xE000000000000000;
    }

    v1 = sub_1C4499940();
    *(v0 + v11) = v1;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  return v1;
}

uint64_t sub_1C4A3BCBC(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C456902C(&qword_1EC0C1B10, &unk_1C4F45D50);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22[-v7];
  v9 = type metadata accessor for GDInteractionEnumeration.GDInteractionIterator(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(a2 + 16);
  if (v12 && *(a3 + 16))
  {
    v13 = a1;
    sub_1C4EF97F8();
    GDInteractionEnumeration.GDInteractionIterator.next()(v14);
    v24 = v15;
    v16 = sub_1C456902C(&qword_1EC0B8F18, &unk_1C4F0E9D0);
    sub_1C440BAA8(v8, 1, 1, v16);
    v23 = MEMORY[0x1E69E7CC8];
    v17 = a2 + ((*(*(v16 - 8) + 80) + 32) & ~*(*(v16 - 8) + 80));
    v18 = *(*(v16 - 8) + 72);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v19 = v12 + 1;
    while (--v19)
    {
      sub_1C4A3BF78(&v23, v17, v8, &v24, a3, v11);
      v17 += v18;
    }

    v21 = v23;
    sub_1C4420C3C(v8, &qword_1EC0C1B10, &unk_1C4F45D50);

    sub_1C4454110(v11, type metadata accessor for GDInteractionEnumeration.GDInteractionIterator);
    return v21;
  }

  else
  {
    type metadata accessor for BMUserFocusModeComputedSemanticType(0);
    sub_1C456902C(&qword_1EC0C1B18, &unk_1C4F45D60);
    sub_1C4A3DE18(&qword_1EC0C1B20, type metadata accessor for BMUserFocusModeComputedSemanticType, &unk_1C4F0C844);

    return sub_1C4F00F28();
  }
}

void sub_1C4A3BF78(uint64_t a1, uint64_t a2, unint64_t a3, void **a4, uint64_t a5, uint64_t a6)
{
  v89 = a1;
  v90 = a6;
  v101 = a3;
  v102 = a5;
  v92 = a4;
  v7 = sub_1C4EFF0C8();
  v8 = *(v7 - 8);
  v95 = v7;
  v96 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v84 = v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v94 = v80 - v11;
  v12 = sub_1C4EF9CD8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v91 = v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C456902C(&qword_1EC0C1B10, &unk_1C4F45D50);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v80 - v16;
  v18 = sub_1C456902C(&qword_1EC0B8F18, &unk_1C4F0E9D0);
  MEMORY[0x1EEE9AC00](v18);
  v93 = v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = (v80 - v21);
  sub_1C4460050(a2, v80 - v21, &qword_1EC0B8F18, &unk_1C4F0E9D0);
  v23 = *v22;
  v24 = *(v18 + 48);
  v25 = [*v22 starting];

  v26 = v22 + v24;
  v27 = v13 + 8;
  v28 = *(v13 + 8);
  v29 = v12;
  v28(v26, v12);
  if (v25)
  {
    v30 = v101;
    sub_1C4420C3C(v101, &qword_1EC0C1B10, &unk_1C4F45D50);
    sub_1C4460050(a2, v30, &qword_1EC0B8F18, &unk_1C4F0E9D0);
    sub_1C440BAA8(v30, 0, 1, v18);
    return;
  }

  v88 = a2;
  sub_1C4460050(v101, v17, &qword_1EC0C1B10, &unk_1C4F45D50);
  if (sub_1C44157D4(v17, 1, v18) == 1)
  {
    v31 = &qword_1EC0C1B10;
    v32 = &unk_1C4F45D50;
    v33 = v17;
LABEL_32:
    sub_1C4420C3C(v33, v31, v32);
    return;
  }

  v85 = v28;
  v34 = v93;
  sub_1C44CD9E0(v17, v93, &qword_1EC0B8F18, &unk_1C4F0E9D0);
  v80[1] = v96 + 16;
  v87 = v96 + 32;
  v35 = &selRef_localizedName;
  v81 = xmmword_1C4F0FCC0;
  v36 = v92;
  v86 = v29;
  v82 = v18;
  v83 = v27;
LABEL_6:
  v37 = v91;
  if (!*v36)
  {
LABEL_31:
    v31 = &qword_1EC0B8F18;
    v32 = &unk_1C4F0E9D0;
    v33 = v34;
    goto LABEL_32;
  }

  v38 = *v36;
  v39 = [v38 v35[461]];
  sub_1C4EF9C78();

  v40 = v86;
  LOBYTE(v39) = sub_1C4EF9C08();
  v41 = v85;
  v85(v37, v40);
  if ((v39 & 1) == 0 || (v42 = [v38 v35[461]], sub_1C4EF9C78(), v42, sub_1C4A3DE18(&qword_1EDDFCD70, MEMORY[0x1E6969530], MEMORY[0x1E6969548]), LOBYTE(v42) = sub_1C4F01068(), v41(v37, v40), (v42 & 1) == 0))
  {

    v34 = v93;
    goto LABEL_31;
  }

  v43 = [v38 recipients];
  sub_1C481B61C();
  v44 = sub_1C4F01678();
  v45 = [v38 sender];
  v97 = v38;
  if (v45)
  {

    sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
    v46 = swift_allocObject();
    *(v46 + 16) = v81;
    v47 = [v38 sender];
    if (!v47)
    {
      goto LABEL_35;
    }

    v48 = v47;

    *(v46 + 32) = v48;
    v49 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v49 = MEMORY[0x1E69E7CC0];
    v46 = MEMORY[0x1E69E7CC0];
  }

  v103 = v44;
  sub_1C49D4B44(v46);
  v50 = v103;
  v51 = sub_1C4428DA0(v103);
  v52 = 0;
  v100 = v50 & 0xFFFFFFFFFFFFFF8;
  v101 = v50 & 0xC000000000000001;
  v99 = v49;
  while (1)
  {
    if (v51 == v52)
    {

      MEMORY[0x1EEE9AC00](v74);
      v34 = v93;
      v80[-2] = v89;
      v80[-1] = v34;
      v75 = v98;
      sub_1C4D373DC(sub_1C4A3DDFC, &v80[-4], v99);
      v98 = v75;

      GDInteractionEnumeration.GDInteractionIterator.next()(v76);
      v78 = v77;

      v36 = v92;
      v79 = *v92;
      *v92 = v78;

      v35 = &selRef_localizedName;
      goto LABEL_6;
    }

    if (v101)
    {
      v53 = MEMORY[0x1C6940F90](v52, v50);
    }

    else
    {
      if (v52 >= *(v100 + 16))
      {
        goto LABEL_34;
      }

      v53 = *(v50 + 8 * v52 + 32);
    }

    v54 = v53;
    v55 = v52 + 1;
    if (__OFADD__(v52, 1))
    {
      break;
    }

    v56 = [v53 handle];
    v57 = sub_1C4F01138();
    v59 = v58;

    if (*(v102 + 16))
    {
      v60 = sub_1C445FAA8(v57, v59);
      v62 = v61;

      if ((v62 & 1) == 0)
      {
        goto LABEL_27;
      }

      v63 = v96;
      v64 = *(v96 + 72);
      v65 = *(v102 + 56) + v64 * v60;
      v66 = v84;
      v67 = v95;
      (*(v96 + 16))(v84, v65, v95);

      v68 = *(v63 + 32);
      v68(v94, v66, v67);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C44D45E4(0, *(v99 + 16) + 1, 1, v99);
        v99 = v72;
      }

      v70 = *(v99 + 16);
      v69 = *(v99 + 24);
      if (v70 >= v69 >> 1)
      {
        sub_1C44D45E4(v69 > 1, v70 + 1, 1, v99);
        v99 = v73;
      }

      v71 = v99;
      *(v99 + 16) = v70 + 1;
      v68((v71 + ((*(v96 + 80) + 32) & ~*(v96 + 80)) + v70 * v64), v94, v95);
      v52 = v55;
    }

    else
    {

LABEL_27:

      ++v52;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_1C4A3C780(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v44 = a1;
  v43 = sub_1C4EFF0C8();
  v41 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1C456902C(&qword_1EC0B8F18, &unk_1C4F0E9D0);
  MEMORY[0x1EEE9AC00](v42);
  v8 = (&v40 - v7);
  sub_1C4460050(a3, &v40 - v7, &qword_1EC0B8F18, &unk_1C4F0E9D0);
  v9 = *v8;
  v10 = [*v8 semanticType];

  swift_isUniquelyReferenced_nonNull_native();
  v45 = *a2;
  v11 = v45;
  *a2 = 0x8000000000000000;
  v12 = sub_1C457EB4C();
  if (__OFADD__(*(v11 + 16), (v13 & 1) == 0))
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = v12;
  v15 = v13;
  sub_1C456902C(&qword_1EC0C1B28, &qword_1C4F45D70);
  v16 = sub_1C4F02458();
  v17 = v45;
  if (v16)
  {
    v18 = sub_1C457EB4C();
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_18:
      type metadata accessor for BMUserFocusModeComputedSemanticType(0);
      goto LABEL_19;
    }

    v14 = v18;
  }

  *a2 = v17;

  v20 = *a2;
  if ((v15 & 1) == 0)
  {
    sub_1C4A3DE18(&qword_1EDDFE820, MEMORY[0x1E69A9810], MEMORY[0x1E69A9820]);
    v21 = sub_1C4F00F28();
    sub_1C457E600(v14, v10, v21, v20);
  }

  v22 = *(v20 + 56);
  swift_isUniquelyReferenced_nonNull_native();
  v45 = *(v22 + 8 * v14);
  v23 = v45;
  *(v22 + 8 * v14) = 0x8000000000000000;
  sub_1C44E3664();
  if (__OFADD__(*(v23 + 16), (v25 & 1) == 0))
  {
    goto LABEL_16;
  }

  v26 = v24;
  v27 = v25;
  sub_1C456902C(&qword_1EC0C1B30, &unk_1C4F45D78);
  v28 = sub_1C4F02458();
  v29 = v45;
  if ((v28 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_1C44E3664();
  if ((v27 & 1) == (v31 & 1))
  {
    v26 = v30;
LABEL_11:
    *(v22 + 8 * v14) = v29;

    v32 = *(v22 + 8 * v14);
    if ((v27 & 1) == 0)
    {
      (*(v41 + 16))(v6, v44, v43);
      sub_1C457EB38();
    }

    v33 = *(v32 + 56);
    v34 = *(v33 + 8 * v26);
    v35 = __CFADD__(v34, 1);
    v36 = v34 + 1;
    if (!v35)
    {
      v37 = *(v42 + 48);
      *(v33 + 8 * v26) = v36;
      v38 = sub_1C4EF9CD8();
      return (*(*(v38 - 8) + 8))(v8 + v37, v38);
    }

    goto LABEL_17;
  }

LABEL_19:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

uint64_t sub_1C4A3CB2C()
{
  v1 = v0;
  v2 = type metadata accessor for Configuration(0);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v49 - v10;
  v53 = sub_1C4EFCE38();
  v12 = [BiomeLibrary() UserFocus];
  swift_unknownObjectRelease();
  v13 = [v12 ComputedMode];
  swift_unknownObjectRelease();
  sub_1C4EF9AC8();
  v14 = sub_1C4EF9CD8();
  sub_1C440BAA8(v11, 0, 1, v14);
  sub_1C440BAA8(v8, 1, 1, v14);
  v15 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v16 = sub_1C457A86C(v11, v8, 0, 0, 0);
  v51 = v13;
  v17 = [v13 publisherWithOptions_];

  v18 = swift_allocObject();
  *(v18 + 16) = MEMORY[0x1E69E7CC0];
  v58 = sub_1C4A3D1D4;
  v59 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v55 = 1107296256;
  v56 = sub_1C44405F8;
  v57 = &unk_1F43F4DB0;
  v19 = _Block_copy(&aBlock);
  v58 = sub_1C4A3DDF4;
  v59 = v18;
  aBlock = MEMORY[0x1E69E9820];
  v55 = 1107296256;
  v56 = sub_1C4440590;
  v57 = &unk_1F43F4DD8;
  v20 = _Block_copy(&aBlock);
  v49[1] = v18;

  v50 = v17;
  v21 = [v17 sinkWithCompletion:v19 receiveInput:v20];
  _Block_release(v20);
  _Block_release(v19);

  v52 = v1;
  sub_1C4431074(*(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore21ModeInteractionSignal_store) + OBJC_IVAR____TtC24IntelligencePlatformCore10GraphStore_config, v5, type metadata accessor for Configuration);
  v22 = &v5[*(v3 + 28)];
  v23 = *v22;
  v24 = *(v22 + 1);
  if (qword_1EDDFEC70 != -1)
  {
LABEL_29:
    swift_once();
  }

  v25 = xmmword_1EDDFEC78;
  sub_1C4454110(v5, type metadata accessor for Configuration);
  if (v25 & ~v23 | *(&v25 + 1) & ~v24)
  {
    v26 = 2000;
  }

  else
  {
    v26 = 200;
  }

  v23 = [objc_opt_self() interactionHistoryEnumeratorWithBatchSize_];
  swift_beginAccess();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4811B78();
  v24 = v27;

  v28 = sub_1C4A3BCBC(v23, v24, v53);

  v29 = 1 << *(v28 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & *(v28 + 64);
  v5 = ((v29 + 63) >> 6);
  v53 = v28;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v32 = 0;
  v33 = MEMORY[0x1E69E7CC0];
  do
  {
    while (1)
    {
      if (!v31)
      {
        while (1)
        {
          v34 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            break;
          }

          if (v34 >= v5)
          {
            goto LABEL_24;
          }

          v31 = *(v28 + 64 + 8 * v34);
          ++v32;
          if (v31)
          {
            v32 = v34;
            goto LABEL_13;
          }
        }

        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

LABEL_13:
      v35 = __clz(__rbit64(v31)) | (v32 << 6);
      v36 = *(*(v53 + 48) + 4 * v35);
      v37 = *(*(v53 + 56) + 8 * v35);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4A3D5B4(v36, v37);
      v24 = v38;

      v23 = *(v24 + 16);
      v39 = v33[2];
      if (__OFADD__(v39, v23))
      {
        goto LABEL_26;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v39 + v23 > v33[3] >> 1)
      {
        sub_1C458B8D8();
        v33 = v40;
      }

      v31 &= v31 - 1;
      if (!*(v24 + 16))
      {
        break;
      }

      if ((v33[3] >> 1) - v33[2] < v23)
      {
        goto LABEL_27;
      }

      sub_1C456902C(&qword_1EC0B8828, &qword_1C4F0E9C0);
      swift_arrayInitWithCopy();

      if (v23)
      {
        v41 = v33[2];
        v42 = __OFADD__(v41, v23);
        v43 = (v41 + v23);
        if (v42)
        {
          goto LABEL_28;
        }

        v33[2] = v43;
      }
    }
  }

  while (!v23);
  __break(1u);
LABEL_24:

  v44 = v52[3];
  v45 = v52[4];
  v46 = v52[5];
  v47 = v52[6];
  aBlock = v52[2];
  v55 = v44;
  v56 = v45;
  v57 = v46;
  v58 = v47;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  sub_1C4811D34(v33);

  sub_1C47D32C8();
}

void sub_1C4A3D1D4(void *a1)
{
  if ([a1 state] == 1)
  {
    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v2 = sub_1C4F00978();
    sub_1C442B738(v2, qword_1EDE2DF70);
    v3 = a1;
    oslog = sub_1C4F00968();
    v4 = sub_1C4F01CD8();

    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11 = v6;
      *v5 = 136315138;
      [v3 error];
      sub_1C456902C(&qword_1EC0C1B38, &unk_1C4F45D88);
      v7 = sub_1C4F01198();
      v9 = sub_1C441D828(v7, v8, &v11);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_1C43F8000, oslog, v4, "Error traversing Biome stream: %s", v5, 0xCu);
      sub_1C440962C(v6);
      MEMORY[0x1C6942830](v6, -1, -1);
      MEMORY[0x1C6942830](v5, -1, -1);
    }

    else
    {
    }
  }
}

id sub_1C4A3D39C(void *a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B8830, &unk_1C4F0DC20);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - v6;
  v8 = sub_1C4EF9CD8();
  v9 = *(v8 - 8);
  *&v10 = MEMORY[0x1EEE9AC00](v8).n128_u64[0];
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 eventBody];
  if (result)
  {
    v14 = result;
    [a1 timestamp];
    sub_1C4EF9AC8();
    v15 = *(v4 + 48);
    *v7 = v14;
    (*(v9 + 32))(&v7[v15], v12, v8);
    swift_beginAccess();
    sub_1C4589538();
    v16 = *(*(a2 + 16) + 16);
    sub_1C458A0C8();
    v17 = *(a2 + 16);
    *(v17 + 16) = v16 + 1;
    sub_1C44CD9E0(v7, v17 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v16, &qword_1EC0B8830, &unk_1C4F0DC20);
    *(a2 + 16) = v17;
    return swift_endAccess();
  }

  return result;
}

void sub_1C4A3D5B4(int a1, uint64_t a2)
{
  v56 = sub_1C456902C(&qword_1EC0C1B08, &qword_1C4F45D48);
  MEMORY[0x1EEE9AC00](v56);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v55 = &v46 - v7;
  v8 = *(a2 + 16);
  if (v8)
  {
    v63 = MEMORY[0x1E69E7CC0];
    sub_1C459EA50();
    v9 = v63;
    v10 = sub_1C4703354();
    v12 = v11;
    v13 = a2 + 64;
    v14 = objc_opt_self();
    v15 = 0;
    v53 = v14;
    v54 = "ModeInteractionSignal";
    v16 = *(a2 + 32);
    v47 = a2 + 72;
    v48 = v8;
    v51 = v12;
    v52 = a2 + 64;
    v50 = a1;
    v49 = v5;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << v16)
    {
      if ((*(v13 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_34;
      }

      if (*(a2 + 36) != v12)
      {
        goto LABEL_35;
      }

      v58 = 1 << v10;
      v59 = v10 >> 6;
      v57 = v15;
      v60 = v9;
      v17 = *(a2 + 48);
      v18 = sub_1C4EFF0C8();
      v19 = *(v18 - 8);
      v20 = v19;
      v21 = v17 + *(v19 + 72) * v10;
      v22 = v55;
      (*(v19 + 16))(v55, v21, v18);
      v23 = *(*(a2 + 56) + 8 * v10);
      (*(v20 + 32))(v5, v22, v18);
      *&v5[*(v56 + 48)] = v23;
      v61 = 0;
      v62 = 0xE000000000000000;
      sub_1C4F02248();

      v24 = 0xE700000000000000;
      v25 = 0x746C7561666564;
      switch(a1)
      {
        case 1:
          v24 = 0xE600000000000000;
          v25 = 0x6D6F74737563;
          break;
        case 2:
          break;
        case 3:
          v24 = 0xE500000000000000;
          v25 = 0x7065656C73;
          break;
        case 4:
          v26 = 1986622052;
          goto LABEL_18;
        case 5:
          v24 = 0xE800000000000000;
          v25 = 0x6573696372657865;
          break;
        case 6:
          v24 = 0xE400000000000000;
          v25 = 1802661751;
          break;
        case 7:
          v24 = 0xE800000000000000;
          v25 = 0x6C616E6F73726570;
          break;
        case 8:
          v26 = 1684104562;
LABEL_18:
          v25 = v26 | 0x676E6900000000;
          break;
        case 9:
          v24 = 0xE600000000000000;
          v25 = 0x676E696D6167;
          break;
        case 10:
          v25 = 0x6E6C7566646E696DLL;
          v24 = 0xEB00000000737365;
          break;
        default:
          v25 = 0x6E776F6E6B6E75;
          break;
      }

      v61 = v25;
      v62 = v24;
      MEMORY[0x1C6940010](0xD000000000000010, v54 | 0x8000000000000000);
      v27 = v61;
      v28 = v62;
      v29 = sub_1C4EFF048();
      if (v23 < 0)
      {
        goto LABEL_36;
      }

      v31 = v5;
      v32 = v29;
      v33 = v30;
      v34 = [v53 featureValueWithInt64_];
      sub_1C4420C3C(v31, &qword_1EC0C1B08, &qword_1C4F45D48);
      v9 = v60;
      v63 = v60;
      v35 = *(v60 + 16);
      if (v35 >= *(v60 + 24) >> 1)
      {
        sub_1C459EA50();
        v9 = v63;
      }

      *(v9 + 16) = v35 + 1;
      v36 = (v9 + 40 * v35);
      v36[4] = v27;
      v36[5] = v28;
      v36[6] = v32;
      v36[7] = v33;
      v36[8] = v34;
      v16 = *(a2 + 32);
      v37 = 1 << v16;
      if (v10 >= 1 << v16)
      {
        goto LABEL_37;
      }

      v13 = v52;
      v38 = *(v52 + 8 * v59);
      if ((v38 & v58) == 0)
      {
        goto LABEL_38;
      }

      LODWORD(v12) = v51;
      if (*(a2 + 36) != v51)
      {
        goto LABEL_39;
      }

      v39 = v38 & (-2 << (v10 & 0x3F));
      if (v39)
      {
        v37 = __clz(__rbit64(v39)) | v10 & 0x7FFFFFFFFFFFFFC0;
        a1 = v50;
        v40 = v48;
        v5 = v49;
      }

      else
      {
        v41 = v59 << 6;
        v42 = v59 + 1;
        v40 = v48;
        v43 = (v47 + 8 * v59);
        a1 = v50;
        v5 = v49;
        while (v42 < (v37 + 63) >> 6)
        {
          v45 = *v43++;
          v44 = v45;
          v41 += 64;
          ++v42;
          if (v45)
          {
            v37 = __clz(__rbit64(v44)) + v41;
            break;
          }
        }
      }

      v10 = v37;
      v15 = v57 + 1;
      if (v57 + 1 == v40)
      {
        return;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
  }
}

uint64_t sub_1C4A3DAC0()
{

  sub_1C4454110(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21ModeInteractionSignal_config, _s10ViewConfigVMa);

  v1 = OBJC_IVAR____TtC24IntelligencePlatformCore21ModeInteractionSignal_handleView;
  sub_1C4EFCE48();
  sub_1C43FBCE0();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t sub_1C4A3DB80()
{
  sub_1C4A3DAC0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ModeInteractionSignal(uint64_t a1)
{
  result = qword_1EC0C1AF8;
  if (!qword_1EC0C1AF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4A3DC2C(uint64_t a1)
{
  result = _s10ViewConfigVMa(319);
  if (v2 <= 0x3F)
  {
    result = sub_1C4EFCE48();
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

uint64_t sub_1C4A3DD18()
{
  sub_1C4A3CB2C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C4A3DE18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C4A3DEB4()
{
  result = qword_1EC0C1B40;
  if (!qword_1EC0C1B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1B40);
  }

  return result;
}

unint64_t sub_1C4A3DF0C()
{
  result = qword_1EC0C1B48;
  if (!qword_1EC0C1B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1B48);
  }

  return result;
}

unint64_t sub_1C4A3DF68()
{
  result = qword_1EC0C1B50;
  if (!qword_1EC0C1B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1B50);
  }

  return result;
}

unint64_t sub_1C4A3DFC0()
{
  result = qword_1EC0C1B58;
  if (!qword_1EC0C1B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1B58);
  }

  return result;
}

IntelligencePlatformCore::MotionState sub_1C4A3E018@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = MotionState.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1C4A3E058@<X0>(uint64_t *a1@<X8>)
{
  result = MotionState.rawValue.getter();
  *a1 = result;
  return result;
}

void *MotionStateActivityIntervalProvider.__allocating_init()()
{
  type metadata accessor for MotionStateDistributionProvider();
  *(swift_allocObject() + 16) = 0x404E000000000000;
  type metadata accessor for MotionStateActivityIntervalProvider();
  v0 = swift_allocObject();
  return sub_1C442CFB4(v0);
}

double sub_1C4A3E0E8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_1C480BC20(a1 + 40 * v2 - 8, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1C4A3E114(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return *(a1 + 8 * v1 + 24);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C4A3E138(uint64_t a1)
{
  if (*(a1 + 16))
  {
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1C4A3E184(uint64_t a1)
{
  v3 = *(a1 + 16);
  v1 = a1 + 16;
  v2 = v3;
  if (!v3)
  {
    return 0;
  }

  v4 = *(v1 + 16 * v2);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v4;
}

uint64_t sub_1C4A3E1E4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = a2(0);
    (*(*(v7 - 8) + 16))(a3, a1 + ((*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80)) + *(*(v7 - 8) + 72) * v6, v7);
    v8 = sub_1C440AF48();
  }

  else
  {
    a2(0);
    v8 = sub_1C4412BF8();
  }

  return sub_1C440BAA8(v8, v9, v10, v11);
}

uint64_t sub_1C4A3E29C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = *(sub_1C456902C(&qword_1EC0B9078, &unk_1C4F30C70) - 8);
    sub_1C4A3F7D8(a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5, a2);
    v7 = sub_1C440AF48();
  }

  else
  {
    sub_1C456902C(&qword_1EC0B9078, &unk_1C4F30C70);
    v7 = sub_1C4412BF8();
  }

  return sub_1C440BAA8(v7, v8, v9, v10);
}

uint64_t sub_1C4A3E37C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000014 && 0x80000001C4F84300 == a2;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {
    return 0;
  }

  v5 = 1;
  if (a1 != 0xD000000000000017 || 0x80000001C4F84320 != a2)
  {
    if (sub_1C4F02938())
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  return v5;
}

void *MotionStateActivityIntervalProvider.init(motionStateDistributionProvider:)(uint64_t a1)
{
  v1[4] = 43200;
  v1[5] = 0x3FE0000000000000;
  v1[2] = a1;
  v1[3] = 0x4072C00000000000;
  return v1;
}

uint64_t sub_1C4A3E4A8()
{
  sub_1C43FBCD4();
  v1[13] = v2;
  v1[14] = v0;
  v1[12] = v3;
  v4 = sub_1C4EF9CD8();
  v1[15] = v4;
  v1[16] = *(v4 - 8);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v5 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C4A3E5B4()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  v3 = *(v0 + 176);
  v4 = *(v0 + 120);
  v5 = *(v0 + 128);
  v6 = *(v0 + 104);
  v7 = *(v0 + 112);
  v8 = *(v5 + 16);
  *(v0 + 200) = v8;
  *(v0 + 208) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v2, v6, v4);
  sub_1C4EF9BE8();
  v8(v3, v1, v4);
  *(v0 + 216) = *(v7 + 16);
  *(v0 + 224) = 1;
  *(v0 + 264) = 3;
  v9 = swift_task_alloc();
  *(v0 + 232) = v9;
  *v9 = v0;
  v10 = sub_1C44075C4(v9);

  return sub_1C4A3FC08(v10, v11);
}

uint64_t sub_1C4A3E6AC()
{
  sub_1C43FBCD4();
  *(*v0 + 240) = v1;

  v2 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C4A3E7A0()
{
  v42 = v0;
  v1 = sub_1C4A3F194(*(v0 + 240));

  LOBYTE(v2) = *(v0 + 264);
  if (v1 == 3)
  {
LABEL_39:
    *(v0 + 265) = v2;
    v30 = swift_task_alloc();
    *(v0 + 248) = v30;
    *v30 = v0;
    v30[1] = sub_1C4A3ECD4;

    return sub_1C4A40700();
  }

  else
  {
    v3 = 0xD000000000000014;
    v4 = "raph";
    LOBYTE(v2) = v1;
    switch(*(v0 + 264))
    {
      case 1:
        v4 = "motion_state_unknown";
        v3 = 0xD000000000000017;
        goto LABEL_5;
      case 2:
        v4 = "motion_state_stationary";
        v3 = 0xD000000000000013;
        goto LABEL_5;
      case 3:
        goto LABEL_38;
      default:
LABEL_5:
        v5 = v4 | 0x8000000000000000;
        if (v1)
        {
          if (v1 == 1)
          {
            v6 = 0xD000000000000017;
          }

          else
          {
            v6 = 0xD000000000000013;
          }

          if (v1 == 1)
          {
            v7 = "motion_state_unknown";
          }

          else
          {
            v7 = "motion_state_stationary";
          }
        }

        else
        {
          v6 = 0xD000000000000014;
          v7 = "raph";
        }

        if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
        {

LABEL_37:
          LOBYTE(v2) = *(v0 + 264);
          goto LABEL_38;
        }

        v9 = sub_1C4F02938();

        v2 = *(v0 + 264);
        if (v9)
        {
          goto LABEL_38;
        }

        if (*(v0 + 264))
        {
          v10 = "motion_state_unknown";
          if (v2 == 1)
          {
            v11 = 0xD000000000000017;
          }

          else
          {
            v11 = 0xD000000000000013;
          }

          v12 = sub_1C44326E4(v11);

          LOBYTE(v2) = v1;
          if ((v12 & 1) == 0)
          {
            if (v1)
            {
              if (v1 == 1)
              {
                v13 = 0xD000000000000017;
              }

              else
              {
                v13 = 0xD000000000000013;
              }

              v14 = sub_1C44326E4(v13);

              if ((v14 & 1) == 0)
              {
                if (qword_1EDDFECB0 != -1)
                {
                  sub_1C43FFB88(&qword_1EDDFECB0);
                }

                v15 = sub_1C4F00978();
                sub_1C442B738(v15, qword_1EDDFECB8);
                v16 = sub_1C4F00968();
                v17 = sub_1C4F01CF8();
                if (os_log_type_enabled(v16, v17))
                {
                  v18 = swift_slowAlloc();
                  v19 = swift_slowAlloc();
                  v41 = v19;
                  *v18 = 136315138;
                  if (v1 == 2)
                  {
                    v10 = "motion_state_stationary";
                    v20 = 0xD000000000000013;
                  }

                  else
                  {
                    v20 = 0xD000000000000017;
                  }

                  v21 = sub_1C441D828(v20, v10 | 0x8000000000000000, &v41);

                  *(v18 + 4) = v21;
                  _os_log_impl(&dword_1C43F8000, v16, v17, "New activity interval type %s is different from current activity interval type", v18, 0xCu);
                  sub_1C440962C(v19);
                  sub_1C43FBE2C();
                  sub_1C43FBE2C();
                }

                LOBYTE(v2) = *(v0 + 264);
                goto LABEL_39;
              }
            }

            else
            {
            }

            if (qword_1EDDFECB0 != -1)
            {
              sub_1C43FFB88(&qword_1EDDFECB0);
            }

            v35 = sub_1C4F00978();
            sub_1C442B738(v35, qword_1EDDFECB8);
            v36 = sub_1C4F00968();
            v37 = sub_1C4F01CF8();
            if (os_log_type_enabled(v36, v37))
            {
              v38 = swift_slowAlloc();
              *v38 = 0;
              _os_log_impl(&dword_1C43F8000, v36, v37, "New activity type is unknown, therefore carrying along old interval type", v38, 2u);
              sub_1C43FBE2C();
            }

            goto LABEL_37;
          }
        }

        else
        {

          LOBYTE(v2) = v1;
        }

LABEL_38:
        v40 = *(v0 + 224);
        v39 = *(v0 + 200);
        v22 = *(v0 + 184);
        v23 = *(v0 + 192);
        v25 = *(v0 + 168);
        v24 = *(v0 + 176);
        v26 = *(v0 + 120);
        v27 = *(v0 + 128);
        v28 = *(v27 + 8);
        v28(v24, v26);
        v39(v24, v22, v26);
        sub_1C4EF9BE8();
        v28(v23, v26);
        v29 = *(v27 + 32);
        v29(v23, v25, v26);
        sub_1C4EF9BE8();
        v28(v22, v26);
        v29(v22, v25, v26);
        if (v40 == 144)
        {
          goto LABEL_39;
        }

        ++*(v0 + 224);
        *(v0 + 264) = v2;
        v32 = swift_task_alloc();
        *(v0 + 232) = v32;
        *v32 = v0;
        v33 = sub_1C44075C4(v32);

        result = sub_1C4A3FC08(v33, v34);
        break;
    }
  }

  return result;
}

uint64_t sub_1C4A3ECD4()
{
  sub_1C43FBCD4();
  *(*v0 + 256) = v1;

  v2 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C4A3EDC8()
{
  v3 = *(v1 + 256);
  if (!v3)
  {
    v8 = sub_1C4412190();
    v2(v8);
    (v2)(0, v0);
    *(v1 + 88) = 0;
    *(v1 + 72) = 0u;
    *(v1 + 56) = 0u;
LABEL_7:
    v10 = *(v1 + 265);
    v46 = *(v1 + 200);
    v11 = *(v1 + 176);
    v13 = *(v1 + 136);
    v12 = *(v1 + 144);
    v14 = *(v1 + 120);
    v15 = *(v1 + 128);
    v17 = *(v1 + 96);
    v16 = *(v1 + 104);
    sub_1C4A3F618(v1 + 56);
    v18 = *(v15 + 32);
    v18(v12, v11, v14);
    v46(v13, v16, v14);
    if (v10 == 3)
    {
      v19 = 0;
    }

    else
    {
      v19 = v10;
    }

    v18(v17, v12, v14);
    v20 = type metadata accessor for ActivityInterval(0);
    v18(v17 + *(v20 + 20), v13, v14);
    *(v17 + *(v20 + 24)) = v19;
    goto LABEL_15;
  }

  sub_1C4505A5C(*(v1 + 256), v1 + 56);

  if (!*(v1 + 80))
  {
    v9 = sub_1C4412190();
    v2(v9);
    (v2)(v3, v0);
    goto LABEL_7;
  }

  v4 = *(v1 + 265);
  sub_1C443FA18((v1 + 56), v1 + 16);
  v5 = sub_1C4A3FA9C((v1 + 16));
  v7 = sub_1C4A3E37C(v5, v6);

  if (v4 == 3)
  {
    v47 = 0;
LABEL_13:
    v45 = *(v1 + 200);
    v32 = *(v1 + 192);
    v33 = *(v1 + 176);
    v35 = *(v1 + 152);
    v34 = *(v1 + 160);
    v36 = *(v1 + 120);
    v37 = *(v1 + 128);
    v27 = *(v1 + 96);
    v43 = *(v1 + 104);
    v38 = *(v37 + 8);
    v38(*(v1 + 184), v36);
    v38(v32, v36);
    v39 = *(v37 + 32);
    v39(v34, v33, v36);
    v45(v35, v43, v36);
    v39(v27, v34, v36);
    v31 = type metadata accessor for ActivityInterval(0);
    v39(v27 + *(v31 + 20), v35, v36);
    goto LABEL_14;
  }

  v21 = sub_1C4686D90(v7, *(v1 + 265));
  v47 = *(v1 + 265);
  if ((v21 & 1) == 0)
  {
    goto LABEL_13;
  }

  v44 = *(v1 + 200);
  v23 = *(v1 + 184);
  v22 = *(v1 + 192);
  v24 = *(v1 + 176);
  v25 = *(v1 + 120);
  v26 = *(v1 + 128);
  v27 = *(v1 + 96);
  v42 = *(v1 + 104);
  v28 = *(v1 + 40);
  v29 = *(v1 + 48);
  sub_1C4409678((v1 + 16), v28);
  (*(v29 + 8))(v28, v29);
  v30 = *(v26 + 8);
  v30(v24, v25);
  v30(v23, v25);
  v30(v22, v25);
  v31 = type metadata accessor for ActivityInterval(0);
  v44(v27 + *(v31 + 20), v42, v25);
LABEL_14:
  *(v27 + *(v31 + 24)) = v47;
  sub_1C440962C((v1 + 16));
LABEL_15:

  v40 = *(v1 + 8);

  return v40();
}

uint64_t sub_1C4A3F194(uint64_t a1)
{
  sub_1C4A3F848();
  v2 = sub_1C4F00F28();
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v7 = 0;
  v8 = 0;
  if (v5)
  {
    while (1)
    {
LABEL_8:
      v10 = __clz(__rbit64(v5)) | (v8 << 6);
      v11 = *(*(a1 + 56) + 8 * v10);
      v12 = sub_1C4A3E37C(*(*(a1 + 48) + 16 * v10), *(*(a1 + 48) + 16 * v10 + 8));
      sub_1C44239FC(v7, 0);
      swift_isUniquelyReferenced_nonNull_native();
      v13 = sub_1C457AA2C(v12);
      if (__OFADD__(*(v2 + 16), (v14 & 1) == 0))
      {
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      v7 = v13;
      v15 = v14;
      sub_1C456902C(&qword_1EC0C1B70, &qword_1C4F46038);
      if (sub_1C4F02458())
      {
        v16 = sub_1C457AA2C(v12);
        if ((v15 & 1) != (v17 & 1))
        {
          result = sub_1C4F029F8();
          __break(1u);
          return result;
        }

        v7 = v16;
      }

      if ((v15 & 1) == 0)
      {
        *(v2 + 8 * (v7 >> 6) + 64) |= 1 << v7;
        *(*(v2 + 48) + v7) = v12;
        *(*(v2 + 56) + 8 * v7) = 0;
        v18 = *(v2 + 16);
        v19 = __OFADD__(v18, 1);
        v20 = v18 + 1;
        if (v19)
        {
          goto LABEL_45;
        }

        *(v2 + 16) = v20;
      }

      v5 &= v5 - 1;
      *(*(v2 + 56) + 8 * v7) = v11 + *(*(v2 + 56) + 8 * v7);
      v7 = sub_1C446368C;
      if (!v5)
      {
        goto LABEL_4;
      }
    }
  }

  while (1)
  {
LABEL_4:
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_8;
    }
  }

  v21 = 1 << *(v2 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v2 + 64);
  if (v23)
  {
    v24 = 0;
    v25 = __clz(__rbit64(v23));
    v26 = (v23 - 1) & v23;
    v27 = (v21 + 63) >> 6;
LABEL_25:
    v30 = *(v2 + 48);
    v31 = *(v2 + 56);
    v32 = *(v30 + v25);
    v33 = *(v31 + 8 * v25);
    if (!v26)
    {
      goto LABEL_27;
    }

    do
    {
      v34 = v24;
LABEL_31:
      v35 = __clz(__rbit64(v26)) | (v34 << 6);
      v26 &= v26 - 1;
      if (v33 < *(v31 + 8 * v35))
      {
        v32 = *(v30 + v35);
        v33 = *(v31 + 8 * v35);
      }
    }

    while (v26);
LABEL_27:
    while (1)
    {
      v34 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        goto LABEL_43;
      }

      if (v34 >= v27)
      {
        v36 = COERCE_DOUBLE(sub_1C465BFDC(2, v2));
        v38 = v37;

        sub_1C44239FC(v7, 0);
        if (v38 & 1 | (v36 < 0.5))
        {
          return v32;
        }

        else
        {
          return 2;
        }
      }

      v26 = *(v2 + 64 + 8 * v34);
      ++v24;
      if (v26)
      {
        v24 = v34;
        goto LABEL_31;
      }
    }
  }

  v28 = 0;
  v27 = (v21 + 63) >> 6;
  while (1)
  {
    v24 = v23 + 1;
    if (v23 + 1 >= v27)
    {
      break;
    }

    v29 = *(v2 + 8 * v23 + 72);
    v28 += 64;
    ++v23;
    if (v29)
    {
      v26 = (v29 - 1) & v29;
      v25 = __clz(__rbit64(v29)) + v28;
      goto LABEL_25;
    }
  }

  if (qword_1EDDFECB0 != -1)
  {
LABEL_46:
    sub_1C43FFB88(&qword_1EDDFECB0);
  }

  v40 = sub_1C4F00978();
  sub_1C442B738(v40, qword_1EDDFECB8);
  v41 = sub_1C4F00968();
  v42 = sub_1C4F01CF8();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_1C43F8000, v41, v42, "activityIntervalDurations distribution was empty", v43, 2u);
    sub_1C43FBE2C();
  }

  sub_1C44239FC(v7, 0);
  return 3;
}

uint64_t MotionStateActivityIntervalProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1C4A3F618(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0C1B60, &qword_1C4F45FB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dispatch thunk of MotionStateActivityIntervalProvider.currentActivityInterval(at:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 128) + **(*v2 + 128));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1C480BB30;

  return v8(a1, a2);
}

uint64_t sub_1C4A3F7D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B9078, &unk_1C4F30C70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C4A3F848()
{
  result = qword_1EC0C1B68;
  if (!qword_1EC0C1B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1B68);
  }

  return result;
}

void sub_1C4A3F8C0()
{
  v1 = [v0 startDate];
  sub_1C4EF9C78();
}

unint64_t sub_1C4A3FA9C(void *a1)
{
  v2 = 0xD000000000000014;
  sub_1C4409678(a1, a1[3]);
  v3 = sub_1C4408DF8();
  if ((v4(v3) & 1) == 0)
  {
    sub_1C44121A4();
    v5 = sub_1C4408DF8();
    if ((v6(v5) & 1) == 0)
    {
      sub_1C44121A4();
      v7 = sub_1C4408DF8();
      if ((v8(v7) & 1) == 0)
      {
        sub_1C44121A4();
        v10 = sub_1C4408DF8();
        v12 = v11(v10);
        v13 = a1[3];
        v14 = a1[4];
        sub_1C4409678(a1, v13);
        v15 = (*(v14 + 24))(v13, v14);
        if (v12)
        {
          if (v15)
          {
            return 0xD000000000000022;
          }

          else
          {
            return 0xD000000000000017;
          }
        }

        else if (v15)
        {
          return 0xD000000000000017;
        }
      }
    }
  }

  return v2;
}

uint64_t sub_1C4A3FC08(uint64_t a1, uint64_t a2)
{
  v3[25] = a2;
  v3[26] = v2;
  v3[24] = a1;
  v4 = sub_1C4EF9CD8();
  v3[27] = v4;
  v3[28] = *(v4 - 8);
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v5 = swift_task_alloc();
  v3[33] = v5;
  *v5 = v3;
  v5[1] = sub_1C4A3FD34;

  return sub_1C4A40700();
}

uint64_t sub_1C4A3FD34()
{
  sub_1C43FBCD4();
  sub_1C43FBE64();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 272) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1C4A3FE2C, 0, 0);
}

uint64_t sub_1C4A3FE2C()
{
  v106 = v0;
  v2 = *(v0 + 272);
  if (v2)
  {
    v3 = *(v0 + 224);
    v4 = *(v2 + 16);
    v5 = sub_1C4F00F28();
    v6 = 0;
    v7 = 0;
    v97 = v2 + 32;
    v98 = *(v2 + 16);
    v95 = v2;
    v96 = v4 - 1;
    v94 = (v3 + 16);
    v104 = (v3 + 8);
    while (1)
    {
      v8 = 0uLL;
      v9 = v98;
      v10 = 0uLL;
      v11 = 0uLL;
      if (v7 != v98)
      {
        if (v7 >= *(v2 + 16))
        {
          goto LABEL_44;
        }

        v9 = v7 + 1;
        *(v0 + 64) = v7;
        sub_1C442E860(v97 + 40 * v7, v0 + 72);
        v8 = *(v0 + 64);
        v10 = *(v0 + 80);
        v11 = *(v0 + 96);
      }

      *(v0 + 16) = v8;
      *(v0 + 32) = v10;
      *(v0 + 48) = v11;
      if (!v11)
      {

        v65 = sub_1C457DA58(v5);

        sub_1C44239FC(v6, 0);
        goto LABEL_40;
      }

      v101 = v8;
      sub_1C443FA18((v0 + 24), v0 + 112);
      v99 = v9;
      log = v6;
      if (v101 >= v96)
      {
        (*v94)(*(v0 + 256), *(v0 + 200), *(v0 + 216));
      }

      else
      {
        if (v101 < -1)
        {
          goto LABEL_45;
        }

        if ((v101 + 1) >= *(v2 + 16))
        {
          goto LABEL_46;
        }

        sub_1C442E860(v97 + 40 * (v101 + 1), v0 + 152);
        v12 = *(v0 + 176);
        v13 = *(v0 + 184);
        sub_1C4409678((v0 + 152), v12);
        (*(v13 + 8))(v12, v13);
        sub_1C440962C((v0 + 152));
      }

      v102 = sub_1C4A3FA9C((v0 + 112));
      v15 = v14;
      if (sub_1C4EF9C08())
      {
        v16 = *(v0 + 248);
        v17 = *(v0 + 216);
        v18 = *(v0 + 136);
        v19 = *(v0 + 144);
        sub_1C4409678((v0 + 112), v18);
        (*(v19 + 8))(v18, v19);
        v20 = sub_1C4EF9C18();
        v1 = *v104;
        (*v104)(v16, v17);
        if (v20)
        {
          break;
        }
      }

      if ((sub_1C4EF9C08() & 1) != 0 && (v21 = *(v0 + 136), v22 = *(v0 + 144), sub_1C4409678((v0 + 112), v21), sub_1C4400994(), v23(v21, v22), sub_1C441A060(), sub_1C4498DE4(&qword_1EDDFCD70, v24), v25 = sub_1C4F01068(), v26 = sub_1C44075F4(), v1(v26), (v25 & 1) == 0))
      {
        v46 = *(v0 + 248);
        v47 = *(v0 + 216);
        sub_1C4EF9AD8();
        v38 = v48;
        v49 = *(v0 + 136);
        v50 = *(v0 + 144);
        sub_1C4409678((v0 + 112), v49);
        sub_1C4400994();
        v51(v49, v50);
        sub_1C4EF9AD8();
        v43 = v52;
        v44 = v46;
        v45 = v47;
      }

      else
      {
        sub_1C441A060();
        sub_1C4498DE4(&qword_1EDDFCD70, v27);
        if ((sub_1C4F01068() & 1) == 0)
        {
          v28 = *(v0 + 136);
          v29 = *(v0 + 144);
          sub_1C4409678((v0 + 112), v28);
          sub_1C4400994();
          v30(v28, v29);
          v31 = sub_1C4EF9C18();
          v32 = sub_1C44075F4();
          v1(v32);
          if (v31)
          {
            break;
          }
        }

        sub_1C4EF9AD8();
        v38 = v37;
        v39 = *(v0 + 136);
        v40 = *(v0 + 144);
        sub_1C4409678((v0 + 112), v39);
        sub_1C4400994();
        v41(v39, v40);
        sub_1C4EF9AD8();
        v43 = v42;
        v44 = sub_1C44075F4();
      }

      (v1)(v44, v45);
      v36 = v38 - v43;
LABEL_22:
      sub_1C44239FC(log, 0);
      swift_isUniquelyReferenced_nonNull_native();
      v105[0] = v5;
      v53 = sub_1C445FAA8(v102, v15);
      if (__OFADD__(v5[2], (v54 & 1) == 0))
      {
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v55 = v53;
      v56 = v54;
      sub_1C456902C(&qword_1EC0B8570, &qword_1C4F0E320);
      v5 = v105[0];
      if (sub_1C4F02458())
      {
        v57 = sub_1C445FAA8(v102, v15);
        if ((v56 & 1) != (v58 & 1))
        {

          return sub_1C4F029F8();
        }

        v55 = v57;
      }

      if (v56)
      {
      }

      else
      {
        *(v105[0] + 8 * (v55 >> 6) + 64) |= 1 << v55;
        v59 = (v5[6] + 16 * v55);
        *v59 = v102;
        v59[1] = v15;
        *(v5[7] + 8 * v55) = 0;
        v60 = v5[2];
        v61 = __OFADD__(v60, 1);
        v62 = v60 + 1;
        if (v61)
        {
          goto LABEL_47;
        }

        v5[2] = v62;
      }

      v63 = *(v0 + 256);
      v64 = *(v0 + 216);
      *(v5[7] + 8 * v55) = v36 + *(v5[7] + 8 * v55);
      (v1)(v63, v64);
      sub_1C440962C((v0 + 112));
      v6 = sub_1C446368C;
      v7 = v99;
      v2 = v95;
    }

    sub_1C4EF9AD8();
    v34 = v33;
    sub_1C4EF9AD8();
    v36 = v34 - v35;
    goto LABEL_22;
  }

  if (qword_1EDDFECB0 != -1)
  {
LABEL_48:
    sub_1C43FFB88(&qword_1EDDFECB0);
  }

  v66 = *(v0 + 232);
  v67 = *(v0 + 240);
  v68 = *(v0 + 216);
  v69 = *(v0 + 224);
  v71 = *(v0 + 192);
  v70 = *(v0 + 200);
  v72 = sub_1C4F00978();
  sub_1C442B738(v72, qword_1EDDFECB8);
  v73 = *(v69 + 16);
  v73(v67, v71, v68);
  v73(v66, v70, v68);
  v74 = sub_1C4F00968();
  v75 = sub_1C4F01CF8();
  v76 = os_log_type_enabled(v74, v75);
  v78 = *(v0 + 232);
  v77 = *(v0 + 240);
  v80 = *(v0 + 216);
  v79 = *(v0 + 224);
  if (v76)
  {
    v103 = v75;
    v81 = swift_slowAlloc();
    v105[0] = swift_slowAlloc();
    *v81 = 136315394;
    sub_1C4498DE4(&qword_1EDDFCD50, MEMORY[0x1E6969570]);
    v82 = sub_1C4F02858();
    v84 = v83;
    v85 = *(v79 + 8);
    v85(v77, v80);
    v86 = sub_1C441D828(v82, v84, v105);

    *(v81 + 4) = v86;
    *(v81 + 12) = 2080;
    v87 = sub_1C4F02858();
    v89 = v88;
    v85(v78, v80);
    v90 = sub_1C441D828(v87, v89, v105);

    *(v81 + 14) = v90;
    _os_log_impl(&dword_1C43F8000, v74, v103, "No motion state events from %s to %s", v81, 0x16u);
    swift_arrayDestroy();
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  else
  {

    v92 = *(v79 + 8);
    v92(v78, v80);
    v92(v77, v80);
  }

  v65 = sub_1C4F00F28();
LABEL_40:

  sub_1C43FBCF0();

  return v93(v65);
}

uint64_t sub_1C4A40700()
{
  sub_1C43FBCD4();
  v2 = v1;
  v4 = v3;
  v5 = swift_task_alloc();
  *(v0 + 16) = v5;
  *v5 = v0;
  v5[1] = sub_1C4A40798;

  return sub_1C4A40A90(v4, v2);
}

uint64_t sub_1C4A40798()
{
  sub_1C43FBCD4();
  sub_1C43FBE64();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 24) = v4;
  *(v2 + 32) = v0;

  if (v0)
  {
    v5 = sub_1C4A4091C;
  }

  else
  {
    v5 = sub_1C4A408A4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C4A408A4()
{
  sub_1C43FBCD4();
  if (*(v0 + 24))
  {
    sub_1C4811368();
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  sub_1C43FBCF0();

  return v3(v2);
}

uint64_t sub_1C4A4091C()
{
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88(&qword_1EDDFECB0);
  }

  v1 = *(v0 + 32);
  v2 = sub_1C4F00978();
  sub_1C442B738(v2, qword_1EDDFECB8);
  v3 = v1;
  v4 = sub_1C4F00968();
  v5 = sub_1C4F01CF8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 32);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1C43F8000, v4, v5, "Didn't receive motion state activities due to error %@", v8, 0xCu);
    sub_1C45B4B90(v9);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  else
  {
  }

  sub_1C43FBCF0();

  return v12(0);
}

uint64_t sub_1C4A40A90(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C4A40AB0, 0, 0);
}

uint64_t sub_1C4A40AB0()
{
  v7 = *(v0 + 24);
  v1 = [objc_allocWithZone(MEMORY[0x1E69634C0]) init];
  *(v0 + 40) = v1;
  v2 = [objc_allocWithZone(MEMORY[0x1E696ADC8]) init];
  *(v0 + 48) = v2;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v7;
  *(v3 + 40) = v2;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  v5 = sub_1C456902C(&qword_1EC0C1B78, &qword_1C4F460E8);
  *v4 = v0;
  v4[1] = sub_1C4A40C0C;

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD00000000000001FLL, 0x80000001C4FAD720, sub_1C4A41270, v3, v5);
}

uint64_t sub_1C4A40C0C()
{
  sub_1C43FBCD4();
  v2 = *v1;
  sub_1C43FBE64();
  *v3 = v2;
  v4 = *v1;
  sub_1C43FBE64();
  *v5 = v4;
  *(v2 + 72) = v0;

  if (v0)
  {
    v6 = sub_1C4A40D80;
  }

  else
  {

    v6 = sub_1C4A40D1C;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1C4A40D1C()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 48);

  sub_1C43FBCF0();

  return v2();
}

uint64_t sub_1C4A40D80()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

void sub_1C4A40DF0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1C456902C(&qword_1EC0C1B80, &unk_1C4F460F0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = aBlock - v10;
  v12 = sub_1C4EF9BF8();
  v13 = sub_1C4EF9BF8();
  (*(v9 + 16))(v11, a1, v8);
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v15 = swift_allocObject();
  (*(v9 + 32))(v15 + v14, v11, v8);
  aBlock[4] = sub_1C4A4127C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C4A41188;
  aBlock[3] = &unk_1F43F4F08;
  v16 = _Block_copy(aBlock);

  [a2 queryActivityStartingFromDate:v12 toDate:v13 toQueue:a5 withHandler:v16];
  _Block_release(v16);
}

uint64_t sub_1C4A40FDC(void *a1, id a2)
{
  if (a2)
  {
    v3 = a2;
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v4 = sub_1C4F00978();
    sub_1C442B738(v4, qword_1EDDFECB8);
    v5 = a2;
    v6 = sub_1C4F00968();
    v7 = sub_1C4F01CD8();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = a2;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_1C43F8000, v6, v7, "Error in querying motion state activities from CMMotionActivityManager: %@", v8, 0xCu);
      sub_1C45B4B90(v9);
      MEMORY[0x1C6942830](v9, -1, -1);
      MEMORY[0x1C6942830](v8, -1, -1);
    }

    sub_1C456902C(&qword_1EC0C1B80, &unk_1C4F460F0);
    return sub_1C4F01808();
  }

  else
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C456902C(&qword_1EC0C1B80, &unk_1C4F460F0);
    return sub_1C4F01818();
  }
}

uint64_t sub_1C4A41188(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1C4A41308();
    v4 = sub_1C4F01678();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_1C4A4127C(void *a1, void *a2)
{
  sub_1C456902C(&qword_1EC0C1B80, &unk_1C4F460F0);

  return sub_1C4A40FDC(a1, a2);
}

unint64_t sub_1C4A41308()
{
  result = qword_1EC0BDAF8;
  if (!qword_1EC0BDAF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC0BDAF8);
  }

  return result;
}

double sub_1C4A4134C()
{
  type metadata accessor for MotionStateDistributionProvider();
  v0 = swift_allocObject();
  *(v0 + 16) = 0x404E000000000000;
  type metadata accessor for MotionStateActivityIntervalProvider();
  swift_allocObject();
  v1 = MotionStateActivityIntervalProvider.init(motionStateDistributionProvider:)(v0);
  v2 = swift_allocObject();
  *(v2 + 16) = 0x404E000000000000;
  v3 = swift_allocObject();
  result = 1800.0;
  *(v3 + 48) = xmmword_1C4F0D360;
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  *(v3 + 16) = sub_1C455B64C;
  *(v3 + 24) = 0;
  return result;
}

uint64_t sub_1C4A41478()
{
  v11 = MEMORY[0x1E69E7CC0];
  sub_1C44CD9C0(0, 3, 0);
  v0 = 0;
  v1 = v11;
  do
  {
    v2 = byte_1F43D2B50[v0 + 32];
    if (v2 == 1)
    {
      v3 = 0xD00000000000002CLL;
    }

    else
    {
      v3 = 0xD00000000000002BLL;
    }

    if (v2 == 1)
    {
      v4 = "tribution_in_activity_interval";
    }

    else
    {
      v4 = "tribution_in_prev_30_minutes";
    }

    if (byte_1F43D2B50[v0 + 32])
    {
      v5 = v3;
    }

    else
    {
      v5 = 0xD00000000000002ELL;
    }

    if (byte_1F43D2B50[v0 + 32])
    {
      v6 = v4;
    }

    else
    {
      v6 = "motionStateDistributionSignal";
    }

    v12 = v1;
    v8 = *(v1 + 16);
    v7 = *(v1 + 24);
    if (v8 >= v7 >> 1)
    {
      sub_1C44CD9C0(v7 > 1, v8 + 1, 1);
      v1 = v12;
    }

    ++v0;
    *(v1 + 16) = v8 + 1;
    v9 = v1 + 16 * v8;
    *(v9 + 32) = v5;
    *(v9 + 40) = v6 | 0x8000000000000000;
  }

  while (v0 != 3);

  return sub_1C4499940();
}

uint64_t sub_1C4A415A8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1C4EF9CD8();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = type metadata accessor for ActivityInterval(0);
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4A41698, 0, 0);
}

uint64_t sub_1C4A41698()
{
  sub_1C43FBCD4();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_1C4A41734;

  return sub_1C4A3E4A8();
}

uint64_t sub_1C4A41734()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v1 = *v0;
  sub_1C43FBDAC();
  *v2 = v1;

  v3 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C4A41818()
{
  v1 = v0[7];
  v2 = v0[8];
  v0[10] = *(v0[3] + 40);
  v3 = *(v1 + 20);
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_1C4A418CC;
  v5 = v0[8];

  return sub_1C4A3FC08(v5, v2 + v3);
}

uint64_t sub_1C4A418CC()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  *(v1 + 96) = v0;

  v2 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C4A419BC()
{
  sub_1C43FBCD4();
  sub_1C4EF9BE8();
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v2 = sub_1C44121C8(v1);

  return sub_1C4A3FC08(v2, v3);
}

uint64_t sub_1C4A41A54()
{
  sub_1C43FBDE4();
  v2 = v1;
  v3 = v1[6];
  v4 = v1[5];
  v5 = v1[4];
  v6 = *v0;
  sub_1C43FBDAC();
  *v7 = v6;
  v2[14] = v8;

  v9 = *(v4 + 8);
  v2[15] = v9;
  v2[16] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v3, v5);
  v10 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C4A41BAC()
{
  sub_1C43FBCD4();
  sub_1C4EF9BE8();
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v2 = sub_1C44121C8(v1);

  return sub_1C4A3FC08(v2, v3);
}

uint64_t sub_1C4A41C44()
{
  sub_1C43FBDE4();
  v2 = v1[15];
  v3 = v1[6];
  v4 = v1[4];
  v5 = *v0;
  sub_1C43FBDAC();
  *v6 = v5;
  *(v8 + 144) = v7;

  v2(v3, v4);
  v9 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1C4A41D98()
{
  v1 = *(v0 + 96);
  sub_1C456902C(&qword_1EC0B85C8, &unk_1C4F0D460);
  v95 = sub_1C4F00F28();
  sub_1C456902C(&qword_1EC0B85D0, &unk_1C4F6E060);
  v2 = sub_1C4F02538();
  v3 = 0;
  sub_1C441A078();
  v5 = v4 & *(v1 + 64);
  v7 = (v6 + 63) >> 6;
  for (i = v8 + 64; v5; v2[2] = v24)
  {
    sub_1C43FCFAC();
LABEL_8:
    v14 = v10 | (v3 << 6);
    v15 = (*(v1 + 48) + 16 * v14);
    v17 = *v15;
    v16 = v15[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4F019C8();
    sub_1C4404D48();
    *(i + v19) |= v18 << v14;
    v20 = (v2[6] + 16 * v14);
    *v20 = v17;
    v20[1] = v16;
    *(v2[7] + 8 * v14) = v21;
    v22 = v2[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    if (v3 >= v7)
    {
      break;
    }

    ++v11;
    if (*(v1 + 64 + 8 * v3))
    {
      sub_1C43FCF1C();
      v5 = v13 & v12;
      goto LABEL_8;
    }
  }

  v25 = v93[14];

  swift_isUniquelyReferenced_nonNull_native();
  sub_1C46602EC();
  v26 = sub_1C4F02538();
  v27 = 0;
  sub_1C441A078();
  v29 = v28 & *(v25 + 64);
  v31 = (v30 + 63) >> 6;
  v33 = v32 + 64;
  if (!v29)
  {
LABEL_13:
    v35 = v27;
    while (1)
    {
      v27 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        goto LABEL_47;
      }

      if (v27 >= v31)
      {
        v48 = v93[18];

        swift_isUniquelyReferenced_nonNull_native();
        sub_1C46602EC();
        v49 = sub_1C4F02538();
        v50 = 0;
        sub_1C441A078();
        v52 = v51 & *(v48 + 64);
        v54 = (v53 + 63) >> 6;
        v56 = v55 + 64;
        if (!v52)
        {
LABEL_23:
          v58 = v50;
          while (1)
          {
            v50 = v58 + 1;
            if (__OFADD__(v58, 1))
            {
              goto LABEL_48;
            }

            if (v50 >= v54)
            {

              swift_isUniquelyReferenced_nonNull_native();
              sub_1C46602EC();
              sub_1C456902C(&qword_1EC0B8488, &unk_1C4F0D470);
              v71 = sub_1C4F02538();
              v72 = v71;
              v73 = 0;
              v74 = 1 << *(v95 + 32);
              v75 = -1;
              if (v74 < 64)
              {
                v75 = ~(-1 << v74);
              }

              v76 = v75 & *(v95 + 64);
              v77 = (v74 + 63) >> 6;
              v94 = v71 + 64;
              if (!v76)
              {
LABEL_35:
                v79 = v73;
                while (1)
                {
                  v73 = v79 + 1;
                  if (__OFADD__(v79, 1))
                  {
                    goto LABEL_49;
                  }

                  if (v73 >= v77)
                  {
                    sub_1C4573D60(v93[8]);

                    v92 = v93[1];

                    v92(v72);
                    return;
                  }

                  ++v79;
                  if (*(v95 + 64 + 8 * v73))
                  {
                    sub_1C43FCF1C();
                    v76 = v81 & v80;
                    goto LABEL_40;
                  }
                }
              }

              while (1)
              {
                v78 = __clz(__rbit64(v76));
                v76 &= v76 - 1;
LABEL_40:
                v82 = v78 | (v73 << 6);
                v83 = (*(v95 + 48) + 16 * v82);
                v84 = v83[1];
                v96 = *v83;
                sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                sub_1C465CD38();
                v86 = sub_1C457F798(v85);

                sub_1C4404D48();
                *(v94 + v88) |= v87 << v82;
                v89 = (v72[6] + 16 * v82);
                *v89 = v96;
                v89[1] = v84;
                *(v72[7] + 8 * v82) = v86;
                v90 = v72[2];
                v23 = __OFADD__(v90, 1);
                v91 = v90 + 1;
                if (v23)
                {
                  goto LABEL_53;
                }

                v72[2] = v91;
                if (!v76)
                {
                  goto LABEL_35;
                }
              }
            }

            ++v58;
            if (*(v48 + 64 + 8 * v50))
            {
              sub_1C43FCF1C();
              v52 = v60 & v59;
              goto LABEL_28;
            }
          }
        }

        while (1)
        {
          v57 = __clz(__rbit64(v52));
          v52 &= v52 - 1;
LABEL_28:
          v61 = v57 | (v50 << 6);
          v62 = (*(v48 + 48) + 16 * v61);
          v64 = *v62;
          v63 = v62[1];
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C4F019C8();
          sub_1C4404D48();
          *(v56 + v66) |= v65 << v61;
          v67 = (v49[6] + 16 * v61);
          *v67 = v64;
          v67[1] = v63;
          *(v49[7] + 8 * v61) = v68;
          v69 = v49[2];
          v23 = __OFADD__(v69, 1);
          v70 = v69 + 1;
          if (v23)
          {
            goto LABEL_52;
          }

          v49[2] = v70;
          if (!v52)
          {
            goto LABEL_23;
          }
        }
      }

      ++v35;
      if (*(v25 + 64 + 8 * v27))
      {
        sub_1C43FCF1C();
        v29 = v37 & v36;
        goto LABEL_18;
      }
    }
  }

  while (1)
  {
    sub_1C43FCFAC();
LABEL_18:
    v38 = v34 | (v27 << 6);
    v39 = (*(v25 + 48) + 16 * v38);
    v41 = *v39;
    v40 = v39[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4F019C8();
    sub_1C4404D48();
    *(v33 + v43) |= v42 << v38;
    v44 = (v26[6] + 16 * v38);
    *v44 = v41;
    v44[1] = v40;
    *(v26[7] + 8 * v38) = v45;
    v46 = v26[2];
    v23 = __OFADD__(v46, 1);
    v47 = v46 + 1;
    if (v23)
    {
      break;
    }

    v26[2] = v47;
    if (!v29)
    {
      goto LABEL_13;
    }
  }

LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
}

uint64_t sub_1C4A42458@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v5 = sub_1C4A42A40(&qword_1EC0C1B90, &unk_1C4F461B0);
  *a2 = a1;
  a2[1] = v2;
  a2[2] = v5;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4A424C4()
{
  sub_1C43FBCD4();
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_1C4A42554;

  return sub_1C4A415A8(v2);
}

uint64_t sub_1C4A42554()
{
  sub_1C43FBCD4();
  v2 = v1;
  sub_1C43FBDE4();
  v3 = *v0;
  sub_1C43FBDAC();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

id sub_1C4A42640(uint64_t a1, uint64_t a2)
{
  sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
  sub_1C4F00F28();
  v4 = sub_1C44F9274(a1);

  if (!v4)
  {
    v5 = sub_1C4A41478();
    v6 = sub_1C4499AD0(a1, a2, v5);

    if (v6)
    {
      sub_1C4461BB8(0, &qword_1EDDFE8E0, 0x1E696AD98);
      v7 = sub_1C4F00F28();
      return sub_1C457F798(v7);
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

uint64_t sub_1C4A428CC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C4A42A80;

  return sub_1C4A424C4();
}

uint64_t sub_1C4A429B8(uint64_t a1)
{
  result = sub_1C4A42A40(&qword_1EC0C1B88, &unk_1C4F46160);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4A429FC(uint64_t a1)
{
  result = sub_1C4A42A40(&qword_1EC0BAFA0, &unk_1C4F4618C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4A42A40(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MotionStateDistributionSignal();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C4A42A84()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1C456902C(&unk_1EC0C65C0, &qword_1C4F0D1F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0CE60;
  *(inited + 32) = 0x74536E6F69746F6DLL;
  *(inited + 40) = 0xEF65707954657461;
  v4 = objc_opt_self();
  *(inited + 48) = [v4 featureValueWithInt64_];
  *(inited + 56) = 0xD000000000000015;
  *(inited + 64) = 0x80000001C4F9B260;
  *(inited + 72) = [v4 featureValueWithDouble_];
  sub_1C4577DBC();
  return sub_1C4F00F28();
}

id MotionStateSignal.sessionsWithoutSmoothing(in:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1C456902C(&qword_1EC0C1B98, &unk_1C4F461E0);
  v6 = sub_1C43FBD18(v5);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v33 - v7;
  v9 = sub_1C456902C(&qword_1EC0B8AF0, &unk_1C4F0DF20);
  v35 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v37 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v34 = &v33 - v12;
  v13 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v14 = sub_1C43FBD18(v13);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v33 - v15;
  v17 = *(v2 + 16);
  v33 = a2;
  if (v17)
  {
    v18 = v17;
  }

  else
  {
    v19 = sub_1C4EF9CD8();
    sub_1C43FBCE0();
    (*(v20 + 16))(v16, a1, v19);
    sub_1C440BAA8(v16, 0, 1, v19);
    v21 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
    v18 = sub_1C4A44884(v16, (a1 + *(v21 + 36)));
    sub_1C4420C3C(v16, &unk_1EC0B84E0, qword_1C4F0D2D0);
  }

  v22 = sub_1C4428DA0(v18);
  v38 = v18 & 0xC000000000000001;
  v23 = v18 & 0xFFFFFFFFFFFFFF8;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v25 = 0;
  v26 = MEMORY[0x1E69E7CC0];
  v36 = v9;
  while (1)
  {
    if (v22 == v25)
    {

      *v33 = v26;
      return result;
    }

    if (v38)
    {
      v27 = v18;
      result = MEMORY[0x1C6940F90](v25, v18);
    }

    else
    {
      if (v25 >= *(v23 + 16))
      {
        goto LABEL_21;
      }

      v27 = v18;
      result = *(v18 + 8 * v25 + 32);
    }

    v28 = result;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    v39 = result;
    sub_1C4A42F68(&v39, v8);

    if (sub_1C44157D4(v8, 1, v9) == 1)
    {
      result = sub_1C4420C3C(v8, &qword_1EC0C1B98, &unk_1C4F461E0);
    }

    else
    {
      v29 = v34;
      sub_1C4A444EC(v8, v34);
      sub_1C4A444EC(v29, v37);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C458A820();
        v26 = v31;
      }

      v30 = *(v26 + 16);
      if (v30 >= *(v26 + 24) >> 1)
      {
        sub_1C458A820();
        v26 = v32;
      }

      *(v26 + 16) = v30 + 1;
      result = sub_1C4A444EC(v37, v26 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v30);
      v9 = v36;
    }

    ++v25;
    v18 = v27;
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1C4A42F68@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = sub_1C4F00978();
  v36 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C4EF9CD8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v36 - v11;
  *&v14 = MEMORY[0x1EEE9AC00](v13).n128_u64[0];
  v16 = &v36 - v15;
  v17 = *a1;
  v18 = [v17 startDate];
  if (v18)
  {
    v19 = v18;
    sub_1C4EF9C78();

    sub_1C4EF9AD8();
    sub_1C4EF9AC8();
    sub_1C4EF9AD8();
    v20 = v9;
    sub_1C4EF9AC8();
    sub_1C4A448E0(v17, &v38);
    v21 = v38;
    LODWORD(v19) = [v17 confidence];
    (*(v7 + 8))(v16, v6);
    v22 = v19;
    v23 = sub_1C456902C(&qword_1EC0B8AF0, &unk_1C4F0DF20);
    v24 = v37;
    v25 = v37 + *(v23 + 32);
    *v25 = v21;
    *(v25 + 8) = v22;
    v26 = *(v7 + 32);
    v26(v24, v12, v6);
    v26(v24 + *(v23 + 28), v20, v6);
    v27 = v24;
    v28 = 0;
    v29 = v23;
  }

  else
  {
    v31 = v36;
    v30 = v37;
    sub_1C4F00198();
    v32 = sub_1C4F00968();
    v33 = sub_1C4F01CF8();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1C43F8000, v32, v33, "Motion state event does not have a start time", v34, 2u);
      MEMORY[0x1C6942830](v34, -1, -1);
    }

    (*(v31 + 8))(v5, v3);
    v29 = sub_1C456902C(&qword_1EC0B8AF0, &unk_1C4F0DF20);
    v27 = v30;
    v28 = 1;
  }

  return sub_1C440BAA8(v27, v28, 1, v29);
}

id MotionStateSignal.sessions(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = type metadata accessor for MotionStateSmoothedSequence(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MotionStateSignal.sessionsWithoutSmoothing(in:)(a1, &v17);
  if (!v3)
  {
    v11 = v17;
    v19 = sub_1C456902C(&qword_1EC0C1BA0, &qword_1C4F461F0);
    v20 = sub_1C4401CBC(&qword_1EDDDE970, &qword_1EC0C1BA0, &qword_1C4F461F0, &unk_1C4F50F40);
    v18 = v11;
    v12 = *(v2 + 32);
    sub_1C445FFF0(a1, v9 + v6[9], &qword_1EC0B84B8, &unk_1C4F0D4F0);
    sub_1C456902C(&qword_1EC0B8AF0, &unk_1C4F0DF20);
    sub_1C43FCF64();
    sub_1C440BAA8(v13, v14, v15, v16);
    *(v9 + v6[7]) = 0;
    *(v9 + v6[8]) = 0;
    *v9 = v12;
    sub_1C441D670(&v18, (v9 + 1));
    return sub_1C4A445A8(v9, a2);
  }

  return result;
}

uint64_t sub_1C4A43460()
{
  sub_1C43FBCD4();
  v1[10] = v2;
  v1[11] = v0;
  v3 = sub_1C4F00978();
  v1[12] = v3;
  sub_1C43FCF7C(v3);
  v1[13] = v4;
  v1[14] = swift_task_alloc();
  v5 = sub_1C456902C(&qword_1EC0C1B98, &unk_1C4F461E0);
  sub_1C43FBD18(v5);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v6 = sub_1C456902C(&qword_1EC0B8AF0, &unk_1C4F0DF20);
  v1[19] = v6;
  sub_1C43FBD18(v6);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4A435C8, 0, 0);
}

uint64_t sub_1C4A435C8()
{
  sub_1C44034FC();
  v0[24] = swift_getAssociatedTypeWitness();
  v1 = sub_1C4F01F48();
  v0[25] = v1;
  sub_1C43FCF7C(v1);
  v0[26] = v2;
  v0[27] = swift_task_alloc();
  v3 = swift_task_alloc();
  v0[28] = v3;
  *v3 = v0;
  v4 = sub_1C4407608(v3);

  return MEMORY[0x1EEE6D8C8](v4);
}

uint64_t sub_1C4A436D0()
{
  sub_1C43FBCD4();
  v2 = *v1;
  sub_1C43FBDAC();
  *v3 = v2;
  *(v4 + 232) = v0;

  if (v0)
  {
    v5 = sub_1C4A43F44;
  }

  else
  {
    v5 = sub_1C4A437D8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C4A437D8()
{
  v1 = v0[27];
  v2 = v0[24];
  if (sub_1C44157D4(v1, 1, v2) == 1)
  {
    v3 = v0[19];
    (*(v0[26] + 8))(v1, v0[25]);

    sub_1C43FCF64();
    sub_1C440BAA8(v4, v5, v6, v3);
    goto LABEL_4;
  }

  v8 = v0[18];
  v7 = v0[19];
  v0[5] = v2;
  v9 = sub_1C4422F90(v0 + 2);
  (*(*(v2 - 8) + 32))(v9, v1, v2);

  v10 = swift_dynamicCast();
  sub_1C440BAA8(v8, v10 ^ 1u, 1, v7);
  if (sub_1C44157D4(v8, 1, v7) == 1)
  {
LABEL_4:
    v11 = v0[19];
    v12 = v0[16];
    v13 = v0[11];
    sub_1C43FC2F4();
    sub_1C4420C3C(v14, v15, v16);
    v17 = type metadata accessor for MotionStateSmoothedSequence(0);
    v18 = v17[6];
    sub_1C445FFF0(v13 + v18, v12, &qword_1EC0C1B98, &unk_1C4F461E0);
    if (sub_1C44157D4(v12, 1, v11) == 1)
    {
      sub_1C4420C3C(v0[16], &qword_1EC0C1B98, &unk_1C4F461E0);
      v19 = 1;
    }

    else
    {
      v20 = v0[19];
      v21 = v0[20];
      v22 = v0[10];
      v23 = v0[11];
      sub_1C4A444EC(v0[16], v21);
      sub_1C4420C3C(v13 + v18, &qword_1EC0C1B98, &unk_1C4F461E0);
      sub_1C43FCF64();
      sub_1C440BAA8(v24, v25, v26, v20);
      v27 = sub_1C4EF9CD8();
      sub_1C43FBCE0();
      v29 = *(v28 + 16);
      sub_1C43FC2F4();
      v29();
      v30 = v23 + v17[9];
      v31 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
      (v29)(v22 + *(v20 + 28), v30 + *(v31 + 36), v27);
      v32 = *(v21 + *(v20 + 32));
      sub_1C4420C3C(v21, &qword_1EC0B8AF0, &unk_1C4F0DF20);
      v19 = 0;
      v33 = *(v23 + v17[7]) / *(v23 + v17[8]);
      v34 = v22 + *(v20 + 32);
      *v34 = v32;
      *(v34 + 8) = v33;
    }

    goto LABEL_7;
  }

  v37 = v0[19];
  v38 = v0[17];
  v39 = v0[11];
  sub_1C4A444EC(v0[18], v0[23]);
  v40 = type metadata accessor for MotionStateSmoothedSequence(0);
  v41 = v40[6];
  sub_1C445FFF0(v39 + v41, v38, &qword_1EC0C1B98, &unk_1C4F461E0);
  v42 = sub_1C44157D4(v38, 1, v37);
  v43 = v0[23];
  if (v42 == 1)
  {
    v44 = v0[19];
    v45 = v0[11];
    sub_1C43FC2F4();
    sub_1C4420C3C(v46, v47, v48);
    sub_1C43FC2F4();
    sub_1C4420C3C(v49, v50, v51);
    sub_1C445FFF0(v43, v39 + v41, &qword_1EC0B8AF0, &unk_1C4F0DF20);
    sub_1C440BAA8(v39 + v41, 0, 1, v44);
    *(v45 + v40[8]) = *(v45 + v40[8]) + 1.0;
    v52 = (v43 + *(v44 + 32) + 8);
  }

  else
  {
    v60 = v0[22];
    v61 = v0[19];
    sub_1C4A444EC(v0[17], v60);
    v62 = *(v61 + 32);
    v63 = v43 + v62;
    if (*(v43 + v62) != *(v60 + v62) || (v64 = v0[11], sub_1C4EF9CB8(), v65 >= *v64))
    {
      v67 = v0[22];
      v68 = v0[23];
      v81 = v40;
      v69 = v0[21];
      v70 = v0[19];
      v82 = v0[11];
      v85 = v0[10];
      v83 = v39;
      v84 = v43 + v62;
      v71 = sub_1C4EF9CD8();
      sub_1C43FBCE0();
      v73 = *(v72 + 16);
      v80 = v69;
      v73(v69, v67, v71);
      v73(v69 + *(v70 + 28), v68, v71);
      v74 = *(v67 + v62);
      sub_1C4420C3C(v67, &qword_1EC0B8AF0, &unk_1C4F0DF20);
      v76 = v81[7];
      v75 = v81[8];
      v77 = *(v82 + v76) / *(v82 + v75);
      v78 = v80 + *(v70 + 32);
      *v78 = v74;
      *(v78 + 8) = v77;
      sub_1C4420C3C(v83 + v41, &qword_1EC0C1B98, &unk_1C4F461E0);
      sub_1C445FFF0(v68, v83 + v41, &qword_1EC0B8AF0, &unk_1C4F0DF20);
      sub_1C440BAA8(v83 + v41, 0, 1, v70);
      *(v82 + v76) = 0;
      *(v82 + v75) = 0x3FF0000000000000;
      v79 = *(v84 + 8);
      sub_1C4420C3C(v68, &qword_1EC0B8AF0, &unk_1C4F0DF20);
      *(v82 + v76) = v79 + 0.0;
      sub_1C4A444EC(v80, v85);
      v19 = 0;
      goto LABEL_7;
    }

    v43 = v0[23];
    v66 = v0[11];
    sub_1C4420C3C(v0[22], &qword_1EC0B8AF0, &unk_1C4F0DF20);
    *(v66 + v40[8]) = *(v66 + v40[8]) + 1.0;
    v52 = (v63 + 8);
  }

  v53 = *v52;
  sub_1C4420C3C(v43, &qword_1EC0B8AF0, &unk_1C4F0DF20);
  v54 = v0[19];
  v55 = v0[15];
  *(v0[11] + v40[7]) = v53 + *(v0[11] + v40[7]);
  sub_1C445FFF0(v39 + v41, v55, &qword_1EC0C1B98, &unk_1C4F461E0);
  LODWORD(v54) = sub_1C44157D4(v55, 1, v54);
  sub_1C4420C3C(v0[15], &qword_1EC0C1B98, &unk_1C4F461E0);
  v19 = 1;
  if (v54 == 1)
  {
LABEL_7:
    sub_1C440BAA8(v0[10], v19, 1, v0[19]);

    sub_1C43FBDA0();

    return v35();
  }

  sub_1C44034FC();
  v0[24] = swift_getAssociatedTypeWitness();
  v56 = sub_1C4F01F48();
  v0[25] = v56;
  sub_1C43FCF7C(v56);
  v0[26] = v57;
  v0[27] = swift_task_alloc();
  v58 = swift_task_alloc();
  v0[28] = v58;
  *v58 = v0;
  v59 = sub_1C4407608(v58);

  return MEMORY[0x1EEE6D8C8](v59);
}

uint64_t sub_1C4A43F44()
{
  v24 = v0;
  v1 = *(v0 + 232);

  sub_1C4F00198();
  v2 = v1;
  v3 = sub_1C4F00968();
  v4 = sub_1C4F01CD8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 232);
    v6 = *(v0 + 104);
    v22 = *(v0 + 112);
    v7 = *(v0 + 96);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_1C4F02A38();
    v12 = sub_1C441D828(v10, v11, &v23);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1C43F8000, v3, v4, "Error when reading motion state events: %s", v8, 0xCu);
    sub_1C440962C(v9);
    MEMORY[0x1C6942830](v9, -1, -1);
    MEMORY[0x1C6942830](v8, -1, -1);

    (*(v6 + 8))(v22, v7);
  }

  else
  {
    v14 = *(v0 + 104);
    v13 = *(v0 + 112);
    v15 = *(v0 + 96);

    (*(v14 + 8))(v13, v15);
  }

  sub_1C43FCF64();
  sub_1C440BAA8(v16, v17, v18, v19);

  sub_1C43FBDA0();

  return v20();
}

uint64_t sub_1C4A4418C@<X0>(uint64_t a1@<X8>)
{
  sub_1C4A44180(a1);

  return sub_1C4A447C0(v1);
}

uint64_t sub_1C4A441B8()
{
  sub_1C43FBCD4();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C4A4424C;

  return sub_1C4A43460();
}

uint64_t sub_1C4A4424C()
{
  sub_1C43FBCD4();
  v1 = *v0;
  sub_1C43FBDAC();
  *v2 = v1;

  sub_1C43FBDA0();

  return v3();
}

uint64_t sub_1C4A44334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_1C4A44400;

  return (sub_1C4982698)(a1, a2, a3, v3 + 16);
}

uint64_t sub_1C4A44400()
{
  sub_1C43FBCD4();
  v1 = *v0;
  sub_1C43FBDAC();
  *v2 = v1;

  sub_1C43FBDA0();

  return v3();
}

uint64_t sub_1C4A444EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B8AF0, &unk_1C4F0DF20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for MotionStateSmoothedSequence(uint64_t a1)
{
  result = qword_1EDDE04A8;
  if (!qword_1EDDE04A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4A445A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MotionStateSmoothedSequence(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1C4A44650(uint64_t a1)
{
  sub_1C4585248();
  if (v1 <= 0x3F)
  {
    sub_1C4A44704(319);
    if (v2 <= 0x3F)
    {
      sub_1C45F6D88(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C4A44704(uint64_t a1)
{
  if (!qword_1EDDE4228[0])
  {
    sub_1C4572308(&qword_1EC0B8AF0, &unk_1C4F0DF20);
    v1 = sub_1C4F01F48();
    if (!v2)
    {
      atomic_store(v1, qword_1EDDE4228);
    }
  }
}

uint64_t sub_1C4A447C0(uint64_t a1)
{
  v2 = type metadata accessor for MotionStateSmoothedSequence(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C4A4481C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MotionStateSmoothedSequence(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4A44884(uint64_t a1, char *a2)
{
  v4 = objc_autoreleasePoolPush();
  sub_1C4A449D4(a1, a2, &v6);
  objc_autoreleasePoolPop(v4);
  return v6;
}

id sub_1C4A448E0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if ([a1 stationary] && (result = objc_msgSend(a1, sel_automotive), !result))
  {
    v5 = 2;
  }

  else
  {
    result = [a1 walking];
    if (result)
    {
      v5 = 4;
    }

    else
    {
      result = [a1 running];
      if (result)
      {
        v5 = 8;
      }

      else
      {
        result = [a1 cycling];
        if (result)
        {
          v5 = 16;
        }

        else
        {
          result = [a1 automotive];
          if (result)
          {
            v5 = 32;
          }

          else
          {
            result = [a1 stationary];
            if (result && (result = [a1 automotive], (result & 1) != 0))
            {
              v5 = 34;
            }

            else
            {
              v5 = 1;
            }
          }
        }
      }
    }
  }

  *a2 = v5;
  return result;
}

uint64_t sub_1C4A449D4@<X0>(uint64_t a1@<X0>, char *a2@<X1>, void *a3@<X8>)
{
  v36 = a2;
  v34 = a1;
  v35 = a3;
  v3 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v32 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32 - v10;
  v12 = sub_1C4EF9CD8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v32 - v17;
  v19 = [BiomeLibrary() Motion];
  swift_unknownObjectRelease();
  v20 = [v19 Activity];
  swift_unknownObjectRelease();
  sub_1C4467FE0(v34, v11);
  if (sub_1C44157D4(v11, 1, v12) == 1)
  {
    v21 = v18;
    sub_1C4EF9BE8();
    sub_1C4A45E1C(&qword_1EDDFCD70, 255, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
    if (sub_1C4F01068())
    {
      (*(v13 + 8))(v15, v12);
      v22 = v36;
      (*(v13 + 16))(v18, v36, v12);
    }

    else
    {
      (*(v13 + 32))(v18, v15, v12);
      v22 = v36;
    }

    if (sub_1C44157D4(v11, 1, v12) != 1)
    {
      sub_1C44686E4(v11);
    }
  }

  else
  {
    (*(v13 + 32))(v18, v11, v12);
    v21 = v18;
    v22 = v36;
  }

  v33 = v21;
  v23 = *(v13 + 16);
  v23(v8, v21, v12);
  sub_1C440BAA8(v8, 0, 1, v12);
  v23(v5, v22, v12);
  sub_1C440BAA8(v5, 0, 1, v12);
  v24 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v25 = sub_1C457A86C(v8, v5, 0, 0, 0);
  v26 = [v20 publisherWithOptions_];

  v27 = swift_allocObject();
  *(v27 + 16) = MEMORY[0x1E69E7CC0];
  v41 = nullsub_1;
  v42 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v38 = 1107296256;
  v39 = sub_1C44405F8;
  v40 = &unk_1F43F5090;
  v28 = _Block_copy(&aBlock);
  v41 = sub_1C4A45E64;
  v42 = v27;
  aBlock = MEMORY[0x1E69E9820];
  v38 = 1107296256;
  v39 = sub_1C4440590;
  v40 = &unk_1F43F50B8;
  v29 = _Block_copy(&aBlock);

  v30 = [v26 sinkWithCompletion:v28 receiveInput:v29];
  _Block_release(v29);
  _Block_release(v28);

  (*(v13 + 8))(v33, v12);
  swift_beginAccess();
  *v35 = *(v27 + 16);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4A44F14(void *a1, uint64_t a2)
{
  v3 = sub_1C4F00978();
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x1EEE9AC00](v3).n128_u64[0];
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 eventBody])
  {
    v8 = swift_beginAccess();
    MEMORY[0x1C6940330](v8);
    sub_1C4427EF0();
    sub_1C4F01748();
    return swift_endAccess();
  }

  else
  {
    sub_1C4F00198();
    v10 = sub_1C4F00968();
    v11 = sub_1C4F01CF8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1C43F8000, v10, v11, "Unable to parse eventBody from read event in eventsFromBiomeMotionStateStream", v12, 2u);
      MEMORY[0x1C6942830](v12, -1, -1);
    }

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1C4A450C4(uint64_t a1, double a2)
{
  v4 = a1;
  *(v2 + 16) = 0;
  v5 = [BiomeLibrary() Motion];
  swift_unknownObjectRelease();
  v6 = [v5 Activity];
  swift_unknownObjectRelease();
  *(v2 + 40) = v6;
  *(v2 + 16) = 0;

  *(v2 + 24) = v4;
  *(v2 + 32) = a2;
  return v2;
}

uint64_t MotionStateSignal.featureNames.getter()
{
  v5 = MEMORY[0x1E69E7CC0];
  sub_1C44CD9C0(0, 1, 0);
  v0 = v5;
  v2 = *(v5 + 16);
  v1 = *(v5 + 24);
  if (v2 >= v1 >> 1)
  {
    sub_1C44CD9C0(v1 > 1, v2 + 1, 1);
    v0 = v5;
  }

  *(v0 + 16) = v2 + 1;
  v3 = v0 + 16 * v2;
  strcpy((v3 + 32), "motion_state");
  *(v3 + 45) = 0;
  *(v3 + 46) = -5120;

  return sub_1C4499940();
}

uint64_t sub_1C4A45290(uint64_t a1)
{
  if (!a1)
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v5 = sub_1C4F00978();
    sub_1C442B738(v5, qword_1EDDFECB8);
    v6 = sub_1C4F00968();
    v7 = sub_1C4F01CF8();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_15;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "Results read from Biome are empty in MotionStateSignal";
    goto LABEL_14;
  }

  if (!sub_1C4428DA0(a1))
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v10 = sub_1C4F00978();
    sub_1C442B738(v10, qword_1EDDFECB8);
    v6 = sub_1C4F00968();
    v7 = sub_1C4F01CF8();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_15;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "No events received from motion state stream";
LABEL_14:
    _os_log_impl(&dword_1C43F8000, v6, v7, v9, v8, 2u);
    MEMORY[0x1C6942830](v8, -1, -1);
LABEL_15:

    return 0;
  }

  sub_1C4431590(0, (a1 & 0xC000000000000001) == 0, a1);
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x1C6940F90](0, a1);
  }

  else
  {
    v2 = *(a1 + 32);
  }

  v3 = v2;
  sub_1C4A448E0(v2, &v11);

  return v11;
}

uint64_t sub_1C4A4543C(uint64_t a1)
{
  v1 = sub_1C4A45290(a1);
  sub_1C456902C(&unk_1EC0C65C0, &qword_1C4F0D1F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  strcpy((inited + 32), "motion_state");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 48) = [objc_opt_self() featureValueWithInt64_];
  sub_1C4577DBC();
  return sub_1C4F00F28();
}

uint64_t sub_1C4A45500()
{
  v1 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - v2;
  if (*(v0 + 16))
  {
    v4 = *(v0 + 16);
  }

  else
  {
    v5 = sub_1C4EF9CD8();
    sub_1C440BAA8(v3, 1, 1, v5);
    v6 = sub_1C4404C28();
    v4 = sub_1C4A44884(v6, v7);
    sub_1C44686E4(v3);
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v8 = sub_1C4A4543C(v4);

  return v8;
}

void MotionStateSignal.getSnapshots(features:at:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v34 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  v12 = v11 - v10;
  type metadata accessor for FeatureProviderSnapshot(0);
  sub_1C43FCDF8();
  v32 = v14;
  v33 = v13;
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBCC4();
  v17 = v16 - v15;
  v18 = *(a2 + 16);
  v19 = MEMORY[0x1E69E7CC0];
  if (v18)
  {
    v29 = a3;
    v37 = MEMORY[0x1E69E7CC0];
    v36 = v17;
    sub_1C459D0A8();
    v20 = v36;
    v19 = v37;
    v22 = *(v8 + 16);
    v21 = v8 + 16;
    v23 = a2 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
    v30 = *(v21 + 56);
    v31 = v22;
    do
    {
      v31(v12, v23, v34);
      v31(v20, v12, v34);
      v24 = sub_1C4A45500();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v25 = v4;
      sub_1C4A45BA8(v24, a1);

      sub_1C465CF34();
      v27 = v26;
      v20 = v36;

      (*(v21 - 8))(v12, v34);
      *(v36 + *(v33 + 20)) = v27;
      v28 = *(v37 + 16);
      if (v28 >= *(v37 + 24) >> 1)
      {
        sub_1C459D0A8();
        v20 = v36;
      }

      *(v37 + 16) = v28 + 1;
      sub_1C4586A54(v20, v37 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v28);
      v23 += v30;
      --v18;
      v4 = v25;
    }

    while (v18);
    a3 = v29;
  }

  *a3 = v19;
}

uint64_t sub_1C4A4588C()
{
  sub_1C4EF9CD8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v0);
  sub_1C43FBCC4();
  sub_1C4EF9C88();
  v1 = sub_1C4A45500();
  v2 = sub_1C4404C28();
  v3(v2);
  return v1;
}

MLFeatureValue_optional __swiftcall MotionStateSignal.featureValue(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v3 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v9 = v8 - v7;
  v10 = countAndFlagsBits == 0x735F6E6F69746F6DLL && object == 0xEC00000065746174;
  if (v10 || (sub_1C4404C28(), (sub_1C4F02938() & 1) != 0))
  {
    sub_1C4EF9C88();
    sub_1C4A45500();
    (*(v5 + 8))(v9, v3);
    v12 = sub_1C4404C28();
    v13 = sub_1C44F9274(v12);
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  result.value.super.isa = v14;
  result.is_nil = v11;
  return result;
}

uint64_t MotionStateSignal.deinit()
{

  return v0;
}

uint64_t MotionStateSignal.__deallocating_deinit()
{
  MotionStateSignal.deinit();

  return swift_deallocClassInstance();
}

_BYTE *sub_1C4A45BA8(_BYTE *a1, uint64_t a2)
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

uint64_t sub_1C4A45D6C(uint64_t a1, uint64_t a2)
{
  result = sub_1C4A45E1C(&qword_1EC0C1BC0, a2, type metadata accessor for MotionStateSignal, &protocol conformance descriptor for MotionStateSignal);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4A45E1C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1C4A45EE0()
{
  swift_beginAccess();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C45A322C();
}

id sub_1C4A45F1C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  if (*(v5 + 16) && (v6 = sub_1C445FAA8(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
    swift_endAccess();
    swift_unknownObjectRetain();
    v9 = sub_1C4F01108();
    v10 = [v8 featureValueForName_];
    swift_unknownObjectRelease();
  }

  else
  {
    swift_endAccess();
    return 0;
  }

  return v10;
}

uint64_t NGramBlockingFunction.init(predicates:relationshipPredicates:sequenceOfChars:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a3;
  a4[1] = result;
  a4[2] = a2;
  return result;
}

void sub_1C4A4609C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_1C4F012A8();
  v7 = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v8 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
LABEL_36:
    __break(1u);
    return;
  }

  if (v8 < 1)
  {
    sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1C4F0D130;
    *(v31 + 32) = a1;
    *(v31 + 40) = a2;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  else
  {
    v9 = 0;
    v10 = MEMORY[0x1E69E7CC0];
    do
    {
      v11 = v9 + v5;
      if (__OFADD__(v9, v5))
      {
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      if (v11 < v9)
      {
        goto LABEL_31;
      }

      v12 = sub_1C4F012A8();
      if (v11 >= v12)
      {
        v11 = v12;
      }

      v13 = sub_1C4F012E8();
      if (__OFSUB__(v11, v9))
      {
        goto LABEL_32;
      }

      if (sub_1C4F012E8() >> 14 < v13 >> 14)
      {
        goto LABEL_33;
      }

      v14 = sub_1C4F01448();
      v15 = MEMORY[0x1C693FEF0](v14);
      v17 = v16;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C443D664();
        v10 = v20;
      }

      v18 = *(v10 + 16);
      if (v18 >= *(v10 + 24) >> 1)
      {
        sub_1C443D664();
        v10 = v21;
      }

      ++v9;
      *(v10 + 16) = v18 + 1;
      v19 = v10 + 16 * v18;
      *(v19 + 32) = v15;
      *(v19 + 40) = v17;
    }

    while (v8 != v9);
    v22 = 0;
    v23 = MEMORY[0x1E69E7CC0];
LABEL_17:
    v24 = (v10 + 40 + 16 * v22);
    while (v18 + 1 != v22)
    {
      if (v22 >= *(v10 + 16))
      {
        goto LABEL_34;
      }

      ++v22;
      v26 = *(v24 - 1);
      v25 = *v24;
      v24 += 2;
      v27 = HIBYTE(v25) & 0xF;
      if ((v25 & 0x2000000000000000) == 0)
      {
        v27 = v26 & 0xFFFFFFFFFFFFLL;
      }

      if (v27)
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C44CD9C0(0, *(v23 + 16) + 1, 1);
        }

        v29 = *(v23 + 16);
        v28 = *(v23 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_1C44CD9C0(v28 > 1, v29 + 1, 1);
        }

        *(v23 + 16) = v29 + 1;
        v30 = v23 + 16 * v29;
        *(v30 + 32) = v26;
        *(v30 + 40) = v25;
        goto LABEL_17;
      }
    }
  }
}

uint64_t NGramBlockingFunction.blockValue(_:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C4F00FF8();
  v4 = v3;
  v7 = MEMORY[0x1E69E7CC0];
  v5 = [objc_allocWithZone(MEMORY[0x1E6977A88]) initWithUnit_];
  sub_1C4A46518(v2, v4, v5);
  sub_1C4F01C48();

  return v7;
}

uint64_t sub_1C4A46454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_1C4F01448();
  v6 = MEMORY[0x1C693FEF0](v5);
  v8 = v7;

  sub_1C4A4609C(v6, v8);
  v10 = v9;

  sub_1C449ADBC(v10);
  return 1;
}

void sub_1C4A46518(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1C4F01108();
  [a3 setString_];
}

uint64_t sub_1C4A465B4()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC152A30);
  sub_1C442B738(v0, qword_1EC152A30);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0CE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "key";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1C4F004D8();
}

uint64_t sub_1C4A4677C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for NicknameEntry(0);
  if (!*(v3 + *(v5 + 20) + 8) || (result = sub_1C4F00498(), !v4))
  {
    if (!*(v3 + *(v5 + 24) + 8))
    {
      return sub_1C4F00308();
    }

    result = sub_1C4F00498();
    if (!v4)
    {
      return sub_1C4F00308();
    }
  }

  return result;
}

uint64_t sub_1C4A46848(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NicknameEntry(0);
  sub_1C440891C();
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    v6 = *v4 == *v5 && v2 == v3;
    if (!v6 && (sub_1C4F02938() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  sub_1C440891C();
  if (v7)
  {
    if (v8)
    {
      v11 = *v9 == *v10 && v7 == v8;
      if (v11 || (sub_1C4F02938() & 1) != 0)
      {
        goto LABEL_17;
      }
    }
  }

  else if (!v8)
  {
LABEL_17:
    sub_1C4F00328();
    sub_1C441A098();
    sub_1C4486968(v12, v13, MEMORY[0x1E69AAC10]);
    return sub_1C4F010B8() & 1;
  }

  return 0;
}

uint64_t sub_1C4A4697C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4486968(&qword_1EC0C1BE8, type metadata accessor for NicknameEntry, &unk_1C4F466B0);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C4A46A1C(uint64_t a1)
{
  sub_1C4486968(qword_1EDDF80F8, type metadata accessor for NicknameEntry, &unk_1C4F466E8);

  return sub_1C4F00428();
}

uint64_t sub_1C4A46AE4(uint64_t a1, uint64_t a2)
{
  sub_1C4486968(qword_1EDDF80F8, type metadata accessor for NicknameEntry, &unk_1C4F466E8);

  return sub_1C4F00438();
}

uint64_t sub_1C4A46B64()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC152A48);
  sub_1C442B738(v0, qword_1EC152A48);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C4F0D130;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "entry";
  *(v4 + 8) = 5;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1C4F004C8();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_1C4F004D8();
}

uint64_t sub_1C4A46CD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for NicknameEntry(0), sub_1C4486968(qword_1EDDF80F8, type metadata accessor for NicknameEntry, &unk_1C4F466E8), result = sub_1C4F004A8(), !v4))
  {
    type metadata accessor for NicknameData(0);
    return sub_1C4F00308();
  }

  return result;
}

uint64_t sub_1C4A46DBC(uint64_t a1, uint64_t a2)
{
  sub_1C47E77CC();
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for NicknameData(0);
  sub_1C4F00328();
  sub_1C441A098();
  sub_1C4486968(v3, v4, MEMORY[0x1E69AAC10]);
  return sub_1C4F010B8() & 1;
}

uint64_t sub_1C4A46E58(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_1C4F02AF8();
  a1(0);
  sub_1C4486968(a2, a3, a4);
  sub_1C4F00FE8();
  return sub_1C4F02B68();
}

uint64_t sub_1C4A46F18(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4486968(&qword_1EC0C1BF0, type metadata accessor for NicknameData, &unk_1C4F46548);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C4A46FB8(uint64_t a1)
{
  sub_1C4486968(&qword_1EDDF8AA0, type metadata accessor for NicknameData, &unk_1C4F46580);

  return sub_1C4F00428();
}

uint64_t sub_1C4A47080(uint64_t a1, uint64_t a2)
{
  sub_1C4486968(&qword_1EDDF8AA0, type metadata accessor for NicknameData, &unk_1C4F46580);

  return sub_1C4F00438();
}

void sub_1C4A47368(uint64_t a1)
{
  sub_1C4F00328();
  if (v1 <= 0x3F)
  {
    sub_1C4700EB8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C4A47414(uint64_t a1)
{
  sub_1C4A47498(319);
  if (v1 <= 0x3F)
  {
    sub_1C4F00328();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C4A47498(uint64_t a1)
{
  if (!qword_1EDDF06A0)
  {
    type metadata accessor for NicknameEntry(255);
    v1 = sub_1C4F017A8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDDF06A0);
    }
  }
}

uint64_t sub_1C4A474F0()
{
  swift_weakDestroy();
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1C4A4754C()
{
  type metadata accessor for NicknameCache();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  result = swift_weakInit();
  qword_1EDE2D338 = v0;
  return result;
}

uint64_t sub_1C4A47594()
{

  sub_1C43FBDBC();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4A475C8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v5 = *(*result + 16);
  v6 = *(v5 + 16);
  if (v6)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v9 = sub_1C445FAA8(a2, a3);
    if ((v10 & 1) != 0 && (v11 = *(*(v5 + 56) + 8 * v9), _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0(), , _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0(), v12 = sub_1C4663244(), , v12))
    {
      v13 = sub_1C4A32590(v12, v11);

      LOBYTE(v6) = (v13 & 1) == 0;
    }

    else
    {

      LOBYTE(v6) = 0;
    }
  }

  *a4 = v6;
  return result;
}

uint64_t sub_1C4A476CC()
{

  sub_1C43FBDBC();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4A4771C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = MEMORY[0x1E69E7CC0];
    v4 = (a1 + 32);
    do
    {
      v6 = *v4++;
      v5 = v6;
      v7 = 1;
      switch(v6)
      {
        case 0:
        case 2:
        case 3:
        case 4:
        case 5:
          goto LABEL_9;
        case 1:
          break;
        default:
          if (qword_1EDDFECB0 != -1)
          {
            sub_1C44064A8();
            swift_once();
          }

          v8 = sub_1C4F00978();
          sub_1C442B738(v8, qword_1EDDFECB8);
          v9 = sub_1C4F00968();
          v10 = sub_1C4F01CD8();
          if (os_log_type_enabled(v9, v10))
          {
            v11 = swift_slowAlloc();
            *v11 = 67109120;
            *(v11 + 4) = v5;
            _os_log_impl(&dword_1C43F8000, v9, v10, "Unknown BMNowPlayingPlaybackState: %d", v11, 8u);
            sub_1C43FBE2C();
          }

LABEL_9:
          v7 = sub_1C4F02938();
          break;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1C43FCEC0();
        sub_1C458A8D8(v14, v15, v16, v3);
        v3 = v17;
      }

      v13 = *(v3 + 16);
      v12 = *(v3 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1C458A8D8(v12 > 1, v13 + 1, 1, v3);
        v3 = v18;
      }

      *(v3 + 16) = v13 + 1;
      *(v3 + v13 + 32) = v7 & 1;
      --v2;
    }

    while (v2);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v19 = *(a2 + 16);
  if (v19)
  {
    v20 = (a2 + 32);
    v21 = MEMORY[0x1E69E7CC0];
    do
    {
      v23 = *v20++;
      v22 = v23;
      switch(v23)
      {
        case 0:
          goto LABEL_37;
        case 1:
          v24 = 1;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_42;
          }

          v24 = 1;
          break;
        case 2:
        case 3:
          v24 = 6;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_42;
          }

          v24 = 6;
          break;
        case 4:
          v24 = 2;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_42;
          }

          v24 = 2;
          break;
        case 5:
          v24 = 3;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_42;
          }

          v24 = 3;
          break;
        case 6:
          v24 = 4;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_42;
          }

          v24 = 4;
          break;
        case 7:
          v24 = 7;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_42;
          }

          v24 = 7;
          break;
        default:
          if (qword_1EDDFECB0 != -1)
          {
            sub_1C44064A8();
            swift_once();
          }

          v25 = sub_1C4F00978();
          sub_1C442B738(v25, qword_1EDDFECB8);
          v26 = sub_1C4F00968();
          v27 = sub_1C4F01CF8();
          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            *v28 = 67109120;
            *(v28 + 4) = v22;
            _os_log_impl(&dword_1C43F8000, v26, v27, "Unknwon BMMediaNowPlayingMediaSubType seen - %d", v28, 8u);
            sub_1C43FBE2C();
          }

LABEL_37:
          v24 = 0;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            break;
          }

LABEL_42:
          sub_1C43FCEC0();
          sub_1C445C3F8();
          v21 = v31;
          break;
      }

      v29 = *(v21 + 16);
      if (v29 >= *(v21 + 24) >> 1)
      {
        sub_1C445C3F8();
        v21 = v30;
      }

      *(v21 + 16) = v29 + 1;
      *(v21 + 8 * v29 + 32) = v24;
      --v19;
    }

    while (v19);
  }

  return v3;
}

uint64_t sub_1C4A47BB0(uint64_t a1, uint64_t a2)
{
  sub_1C456902C(&unk_1EC0C65C0, &qword_1C4F0D1F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0CE60;
  *(inited + 32) = 0xD000000000000014;
  *(inited + 40) = 0x80000001C4F9B240;
  v5 = *(a2 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1C4F02348();
    v7 = a2 + 32;
    do
    {
      v7 += 8;
      sub_1C4F01B58();
      sub_1C4F02318();
      sub_1C4F02358();
      sub_1C4F02368();
      sub_1C4F02328();
      --v5;
    }

    while (v5);
    v6 = v17;
  }

  sub_1C4461BB8(0, &qword_1EC0C1C18, 0x1E695FF10);
  v8 = sub_1C4C0C460(v6);
  v9 = objc_opt_self();
  v10 = [v9 featureValueWithSequence_];

  *(inited + 48) = v10;
  *(inited + 56) = 0xD00000000000001ELL;
  *(inited + 64) = 0x80000001C4F9B220;
  v11 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v18 = MEMORY[0x1E69E7CC0];
    sub_1C4F02348();
    v13 = a1 + 32;
    do
    {
      ++v13;
      sub_1C4F017D8();
      sub_1C4F02318();
      sub_1C4F02358();
      sub_1C4F02368();
      sub_1C4F02328();
      --v11;
    }

    while (v11);
    v12 = v18;
  }

  v14 = sub_1C4C0C460(v12);
  v15 = [v9 featureValueWithSequence_];

  *(inited + 72) = v15;
  sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
  return sub_1C4F00F28();
}

uint64_t sub_1C4A47E14@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 24));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4A47E58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v18 - v6;
  v8 = type metadata accessor for NowPlayingBucketingSequence(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4A480D4(a1, v7);
  *v11 = 1;
  v12 = [BiomeLibrary() Media];
  swift_unknownObjectRelease();
  v13 = [v12 NowPlaying];
  swift_unknownObjectRelease();
  v20 = sub_1C456902C(&qword_1EC0C1C00, &unk_1C4F46858);
  v21 = sub_1C4A49A40(&qword_1EDDDE918, &qword_1EC0C1C00, &unk_1C4F46858);
  sub_1C4422F90(&v19);
  sub_1C4580690();
  if (v2)
  {
    sub_1C4420C3C(v7, &qword_1EC0B84B8, &unk_1C4F0D4F0);

    return sub_1C47C41F8(&v19);
  }

  else
  {

    sub_1C441D670(&v19, (v11 + 8));
    v15 = *(v8 + 28);
    sub_1C4EF9CD8();
    sub_1C43FBCE0();
    (*(v16 + 16))(&v11[v15], v7);
    sub_1C4420C3C(v7, &qword_1EC0B84B8, &unk_1C4F0D4F0);
    *(v11 + 6) = MEMORY[0x1E69E7CC0];
    sub_1C43FDB70();
    return sub_1C4A49BA8(v11, a2, v17);
  }
}

uint64_t sub_1C4A480D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4A48144()
{
  sub_1C43FBCD4();
  v1[19] = v2;
  v1[20] = v0;
  v3 = sub_1C4EF9CD8();
  v1[21] = v3;
  sub_1C43FCF7C(v3);
  v1[22] = v4;
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  sub_1C456902C(&qword_1EC0C1C20, &qword_1C4F469E8);
  v1[29] = sub_1C43FBE7C();
  v5 = type metadata accessor for NowPlayingEvent(0);
  v1[30] = v5;
  sub_1C43FCF7C(v5);
  v1[31] = v6;
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4A4830C, 0, 0);
}

uint64_t sub_1C4A4830C()
{
  v1 = v0[20];
  v2 = *(v1 + 32);
  v3 = sub_1C4409678((v1 + 8), v2);
  v4 = *(v2 - 8);
  v5 = sub_1C43FBE7C();
  (*(v4 + 16))(v5, v3, v2);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  sub_1C4422F90(v0 + 2);
  sub_1C4F019A8();

  sub_1C442E404();
  v0[42] = sub_1C43FD730(255);
  v6 = sub_1C4F01F48();
  v0[43] = v6;
  sub_1C43FCF7C(v6);
  v0[44] = v7;
  v0[45] = sub_1C43FBE7C();
  v8 = sub_1C43FD730(0);
  v0[46] = v8;
  sub_1C43FCF7C(v8);
  v0[47] = v9;
  v0[48] = *(v10 + 64);
  v0[49] = sub_1C43FBE7C();
  v11 = swift_task_alloc();
  v0[50] = v11;
  *v11 = v0;
  v12 = sub_1C4432704(v11);

  return MEMORY[0x1EEE6D8D0](v12);
}

uint64_t sub_1C4A48558()
{
  sub_1C43FBCD4();
  v2 = *v1;
  sub_1C43FBDAC();
  *v3 = v2;

  if (v0)
  {
    v4 = sub_1C4A490B8;
  }

  else
  {

    v4 = sub_1C4A48664;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1C4A48664()
{
  v3 = *(v0 + 360);
  v4 = *(v0 + 336);
  if (sub_1C44157D4(v3, 1, v4) == 1)
  {
    (*(*(v0 + 352) + 8))(v3, *(v0 + 344));

    sub_1C440962C((v0 + 16));
    v5 = *(v0 + 160);
    v6 = *(v5 + 48);
    if (*(v6 + 16))
    {
      v7 = *(v0 + 224);
      v8 = *(v0 + 192);
      v9 = *(v0 + 168);
      type metadata accessor for NowPlayingBucketingSequence(0);
      v10 = sub_1C4433608();
      (v2)(v10);
      (v2)(v7, v5 + v1, v9);
      sub_1C4EF9B38();
      v11 = *(v6 + 16);
      v12 = MEMORY[0x1E69E7CC0];
      v154 = v6;
      if (v11)
      {
        v13 = *(v0 + 264);
        v152 = *(v0 + 240);
        sub_1C440AF5C();
        v156 = v14;
        v15 = MEMORY[0x1E69E7CC0];
        v16 = v8;
        do
        {
          sub_1C4407638();
          sub_1C4A49AF0(v16, v17, v18);
          v19 = *(v13 + v2);
          if (*(v19 + 16))
          {
            v5 = *(v19 + 32);
            sub_1C441A0B0();
            sub_1C4A49B50(v20, v21);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v26 = sub_1C43FCEC0();
              sub_1C458A8D8(v26, v27, v28, v15);
              v15 = v29;
            }

            sub_1C440F994();
            if (v23)
            {
              v30 = sub_1C441FF14(v22);
              sub_1C458A8D8(v30, v31, v32, v15);
              v15 = v33;
            }

            sub_1C43FF464();
          }

          else
          {
            sub_1C441A0B0();
            sub_1C4A49B50(v24, v25);
          }

          v16 += v156;
          --v11;
        }

        while (v11);
        v77 = *(v154 + 16);
        if (v77)
        {
          v2 = *(v0 + 256) + *(v152 + 24);
          v12 = MEMORY[0x1E69E7CC0];
          do
          {
            sub_1C4407638();
            sub_1C4A49AF0(v8, v78, v79);
            v80 = *(v2 + 8);
            if (*(v80 + 16))
            {
              v5 = *(v80 + 32);
              sub_1C441A0B0();
              sub_1C4A49B50(v81, v82);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1C43FCEC0();
                sub_1C445C3F8();
                v12 = v86;
              }

              sub_1C440F994();
              if (v23)
              {
                sub_1C441FF14(v83);
                sub_1C445C3F8();
                v12 = v87;
              }

              sub_1C4408E08();
            }

            else
            {
              sub_1C441A0B0();
              sub_1C4A49B50(v84, v85);
            }

            v8 += v156;
            --v77;
          }

          while (v77);
        }

        else
        {
          v12 = MEMORY[0x1E69E7CC0];
        }
      }

      else
      {
        v15 = MEMORY[0x1E69E7CC0];
      }

      sub_1C440D690();
      v158 = v123;
      v124 = *(v5 + 32);
      v124(v8);
      v125 = sub_1C43FC6BC();
      v124(v125);

      v126 = (v8 + *(v9 + 24));
      *v126 = v15;
      v126[1] = v12;
      *(v158 + 48) = MEMORY[0x1E69E7CC0];
      sub_1C4407638();
      sub_1C4A49BA8(v8, v2, v127);
      v88 = sub_1C443523C();
    }

    else
    {
      v88 = sub_1C442BD6C();
    }

    sub_1C440BAA8(v88, v89, v90, v91);
LABEL_65:
    sub_1C4417568();

    sub_1C43FBDA0();

    return v128();
  }

  *(v0 + 80) = v4;
  v34 = sub_1C4422F90((v0 + 56));
  (*(*(v4 - 8) + 32))(v34, v3, v4);

  sub_1C44482AC((v0 + 56), (v0 + 88));
  if (swift_dynamicCast())
  {
    v35 = *(v0 + 312);
    v36 = *(v0 + 232);
    v37 = *(v0 + 160);
    sub_1C440BAA8(v36, 0, 1, *(v0 + 240));
    sub_1C4407638();
    sub_1C4A49BA8(v36, v35, v38);
    if (*v37 == 1)
    {
      v39 = *(v0 + 312);
      v40 = *(v0 + 168);
      v41 = *(v0 + 176);
      v42 = *(v0 + 160);
      v43 = type metadata accessor for NowPlayingBucketingSequence(0);
      (*(v41 + 24))(&v42[*(v43 + 28)], v39, v40);
      *v42 = 0;
    }

    v45 = *(v0 + 216);
    v44 = *(v0 + 224);
    v46 = *(v0 + 168);
    v47 = *(v0 + 176);
    v48 = *(v0 + 160);
    v49 = type metadata accessor for NowPlayingBucketingSequence(0);
    v50 = *(v47 + 16);
    v51 = *(v49 + 28);
    v50(v45, v48 + v51, v46);
    sub_1C4EF9B38();
    v52 = sub_1C4EF9C08();
    (*(v47 + 8))(v44, v46);
    if (v52)
    {
      v53 = *(v0 + 224);
      v55 = *(v0 + 160);
      v54 = *(v0 + 168);
      v50(*(v0 + 208), v48 + v51, v54);
      v151 = v51;
      v153 = v48;
      v50(v53, v48 + v51, v54);
      sub_1C4EF9B38();
      v56 = *(*(v55 + 48) + 16);
      v155 = *(v55 + 48);
      if (v56)
      {
        v57 = *(v0 + 296);
        v149 = *(v0 + 240);
        sub_1C440AF5C();
        v157 = v58;
        v59 = MEMORY[0x1E69E7CC0];
        v60 = v54;
        do
        {
          sub_1C4407638();
          sub_1C4A49AF0(v60, v61, v62);
          if (*(*(v57 + v48) + 16))
          {
            sub_1C441A0B0();
            sub_1C4A49B50(v63, v64);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v68 = sub_1C43FCEC0();
              sub_1C458A8D8(v68, v69, v70, v59);
              v59 = v71;
            }

            sub_1C440F994();
            if (v23)
            {
              v72 = sub_1C441FF14(v65);
              sub_1C458A8D8(v72, v73, v74, v59);
              v59 = v75;
            }

            sub_1C43FF464();
          }

          else
          {
            sub_1C441A0B0();
            sub_1C4A49B50(v66, v67);
          }

          v60 += v157;
          --v56;
        }

        while (v56);
        v111 = *(v155 + 16);
        if (v111)
        {
          v112 = *(v0 + 288) + *(v149 + 24);
          v113 = MEMORY[0x1E69E7CC0];
          do
          {
            sub_1C4407638();
            sub_1C4A49AF0(v54, v114, v115);
            if (*(*(v112 + 8) + 16))
            {
              sub_1C441A0B0();
              sub_1C4A49B50(v116, v117);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1C43FCEC0();
                sub_1C445C3F8();
                v113 = v121;
              }

              sub_1C440F994();
              if (v23)
              {
                sub_1C441FF14(v118);
                sub_1C445C3F8();
                v113 = v122;
              }

              sub_1C4408E08();
            }

            else
            {
              sub_1C441A0B0();
              sub_1C4A49B50(v119, v120);
            }

            v54 += v157;
            --v111;
          }

          while (v111);
        }

        else
        {
          v113 = MEMORY[0x1E69E7CC0];
        }
      }

      else
      {
        v59 = MEMORY[0x1E69E7CC0];
        v113 = MEMORY[0x1E69E7CC0];
      }

      v129 = *(v0 + 304);
      v130 = *(v0 + 240);
      v147 = *(v0 + 312);
      v148 = *(v0 + 248);
      v131 = *(v0 + 200);
      v133 = *(v0 + 168);
      v132 = *(v0 + 176);
      v150 = *(v0 + 160);
      v159 = *(v0 + 152);
      v134 = *(v132 + 32);
      v134(v129, *(v0 + 208), v133);
      v134(v129 + *(v130 + 20), v131, v133);
      v135 = v130;
      v136 = (v129 + *(v130 + 24));
      *v136 = v59;
      v136[1] = v113;
      (*(v132 + 24))(v153 + v151, v147, v133);
      sub_1C456902C(&qword_1EC0C04D8, &qword_1C4F3E970);
      v137 = (*(v148 + 80) + 32) & ~*(v148 + 80);
      v138 = swift_allocObject();
      *(v138 + 16) = xmmword_1C4F0D130;
      sub_1C440351C();
      sub_1C4A49AF0(v147, v139 + v137, v140);
      sub_1C4A49B50(v147, v113);

      *(v150 + 48) = v138;
      sub_1C4A49BA8(v129, v159, v113);
      sub_1C440BAA8(v159, 0, 1, v135);
      sub_1C440962C((v0 + 16));
      goto LABEL_65;
    }

    v92 = *(v0 + 160);
    sub_1C4407638();
    sub_1C4A49AF0(v93, v94, v95);
    v96 = *(v92 + 48);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v141 = sub_1C43FCEC0();
      sub_1C458A898(v141, v142, v143, v96);
      v96 = v144;
    }

    v98 = *(v96 + 16);
    v97 = *(v96 + 24);
    if (v98 >= v97 >> 1)
    {
      sub_1C458A898(v97 > 1, v98 + 1, 1, v96);
      v96 = v145;
    }

    v99 = *(v0 + 280);
    v100 = *(v0 + 248);
    v101 = *(v0 + 160);
    sub_1C440351C();
    sub_1C4A49B50(v102, v103);
    *(v96 + 16) = v98 + 1;
    sub_1C4A49BA8(v99, v96 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v98, v46);
    *(v101 + 48) = v96;
  }

  else
  {
    v76 = *(v0 + 232);
    sub_1C440BAA8(v76, 1, 1, *(v0 + 240));
    sub_1C4420C3C(v76, &qword_1EC0C1C20, &qword_1C4F469E8);
  }

  sub_1C442E404();
  *(v0 + 336) = sub_1C43FD730(255);
  v104 = sub_1C4F01F48();
  *(v0 + 344) = v104;
  sub_1C43FCF7C(v104);
  *(v0 + 352) = v105;
  *(v0 + 360) = sub_1C43FBE7C();
  v106 = sub_1C43FD730(0);
  *(v0 + 368) = v106;
  sub_1C43FCF7C(v106);
  *(v0 + 376) = v107;
  *(v0 + 384) = *(v108 + 64);
  *(v0 + 392) = sub_1C43FBE7C();
  v109 = swift_task_alloc();
  *(v0 + 400) = v109;
  *v109 = v0;
  v110 = sub_1C4432704(v109);

  return MEMORY[0x1EEE6D8D0](v110);
}

uint64_t sub_1C4A490B8()
{
  v75 = v0;
  v2 = v0[49];
  v3 = v0[46];
  v4 = v0[47];
  v5 = sub_1C43FBE7C();
  v6 = *(v4 + 32);
  v6(v5, v2, v3);
  swift_getAssociatedConformanceWitness();
  v7 = sub_1C4F028C8();
  if (v7)
  {
    v8 = v7;
    (*(v0[47] + 8))(v5, v0[46]);
  }

  else
  {
    v9 = v0[46];
    v8 = swift_allocError();
    v6(v10, v5, v9);
  }

  sub_1C440962C(v0 + 2);
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C44064A8();
    swift_once();
  }

  v11 = sub_1C4F00978();
  sub_1C442B738(v11, qword_1EDDFECB8);
  v12 = v8;
  v13 = sub_1C4F00968();
  v14 = sub_1C4F01CF8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v74 = v16;
    *v15 = 136315138;
    swift_getErrorValue();
    v17 = sub_1C4F02A38();
    v6 = sub_1C441D828(v17, v18, &v74);

    *(v15 + 4) = v6;
    _os_log_impl(&dword_1C43F8000, v13, v14, "Error when fetching events from the Now Playing session async sequence - %s", v15, 0xCu);
    sub_1C440962C(v16);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  else
  {
  }

  v19 = v0[20];
  v20 = *(v19 + 48);
  if (*(v20 + 16))
  {
    v21 = v0[28];
    v22 = v0[24];
    v23 = v0[21];
    type metadata accessor for NowPlayingBucketingSequence(0);
    v24 = sub_1C4433608();
    (v1)(v24);
    (v1)(v21, v6 + v19, v23);
    sub_1C4EF9B38();
    v25 = *(v20 + 16);
    v26 = MEMORY[0x1E69E7CC0];
    v71 = v20;
    if (v25)
    {
      v27 = v0[33];
      v70 = v0[30];
      sub_1C440AF5C();
      v72 = v28;
      v29 = MEMORY[0x1E69E7CC0];
      v30 = v22;
      do
      {
        sub_1C4407638();
        sub_1C4A49AF0(v30, v31, v32);
        v33 = *(v27 + v1);
        if (*(v33 + 16))
        {
          v19 = *(v33 + 32);
          sub_1C441A0B0();
          sub_1C4A49B50(v34, v35);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v40 = sub_1C43FCEC0();
            sub_1C458A8D8(v40, v41, v42, v29);
            v29 = v43;
          }

          sub_1C440F994();
          if (v37)
          {
            v44 = sub_1C441FF14(v36);
            sub_1C458A8D8(v44, v45, v46, v29);
            v29 = v47;
          }

          sub_1C43FF464();
        }

        else
        {
          sub_1C441A0B0();
          sub_1C4A49B50(v38, v39);
        }

        v30 += v72;
        --v25;
      }

      while (v25);
      v48 = *(v71 + 16);
      if (v48)
      {
        v1 = v0[32] + *(v70 + 24);
        v26 = MEMORY[0x1E69E7CC0];
        do
        {
          sub_1C4407638();
          sub_1C4A49AF0(v22, v49, v50);
          v51 = *(v1 + 8);
          if (*(v51 + 16))
          {
            v19 = *(v51 + 32);
            sub_1C441A0B0();
            sub_1C4A49B50(v52, v53);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1C43FCEC0();
              sub_1C445C3F8();
              v26 = v57;
            }

            sub_1C440F994();
            if (v37)
            {
              sub_1C441FF14(v54);
              sub_1C445C3F8();
              v26 = v58;
            }

            sub_1C4408E08();
          }

          else
          {
            sub_1C441A0B0();
            sub_1C4A49B50(v55, v56);
          }

          v22 += v72;
          --v48;
        }

        while (v48);
      }

      else
      {
        v26 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v29 = MEMORY[0x1E69E7CC0];
    }

    sub_1C440D690();
    v73 = v63;
    v64 = *(v19 + 32);
    v64(v22);
    v65 = sub_1C43FC6BC();
    v64(v65);

    v66 = (v22 + *(v23 + 24));
    *v66 = v29;
    v66[1] = v26;
    *(v73 + 48) = MEMORY[0x1E69E7CC0];
    sub_1C4407638();
    sub_1C4A49BA8(v22, v1, v67);
    v59 = sub_1C443523C();
  }

  else
  {
    v59 = sub_1C442BD6C();
  }

  sub_1C440BAA8(v59, v60, v61, v62);
  sub_1C4417568();

  sub_1C43FBDA0();

  return v68();
}

uint64_t sub_1C4A49684()
{
  sub_1C43FBCD4();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C4A4424C;

  return sub_1C4A48144();
}

uint64_t sub_1C4A49718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_1C4A44400;

  return (sub_1C4982614)(a1, a2, a3, v3 + 16);
}

uint64_t sub_1C4A4982C(uint64_t a1)
{
  result = sub_1C4EF9CD8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1C4A498E0(uint64_t a1)
{
  sub_1C4A4998C();
  if (v1 <= 0x3F)
  {
    sub_1C4A499E8(319);
    if (v2 <= 0x3F)
    {
      sub_1C4EF9CD8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1C4A4998C()
{
  result = qword_1EDDE1880[0];
  if (!qword_1EDDE1880[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EDDE1880);
  }

  return result;
}

void sub_1C4A499E8(uint64_t a1)
{
  if (!qword_1EDDDBC98)
  {
    type metadata accessor for NowPlayingEvent(255);
    v1 = sub_1C4F017A8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDDDBC98);
    }
  }
}

uint64_t sub_1C4A49A40(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C4A49A98()
{
  result = qword_1EC0C1C10;
  if (!qword_1EC0C1C10)
  {
    type metadata accessor for NowPlayingBucketingSequence(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1C10);
  }

  return result;
}

uint64_t sub_1C4A49AF0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C4A49B50(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C4A49BA8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C4A49C08(uint64_t a1)
{
  v1 = a1;
  if (a1 >= 6)
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v2 = sub_1C4F00978();
    sub_1C442B738(v2, qword_1EDDFECB8);
    v3 = sub_1C4F00968();
    v4 = sub_1C4F01CD8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 67109120;
      *(v5 + 4) = v1;
      _os_log_impl(&dword_1C43F8000, v3, v4, "Unknown BMNowPlayingPlaybackState: %d", v5, 8u);
      sub_1C43FBE2C();
    }

    return 0;
  }

  return v1;
}

unint64_t sub_1C4A49CE8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C4F025D8();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1C4A49D34(char a1)
{
  result = 0xD000000000000016;
  switch(a1)
  {
    case 1:
    case 4:
      result = 0xD000000000000019;
      break;
    case 2:
      result = 0xD00000000000001ALL;
      break;
    case 3:
      result = 0xD00000000000001DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4A49DC4(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0x676E6979616C70;
      break;
    case 2:
      result = 0x646573756170;
      break;
    case 3:
      result = 0x646570706F7473;
      break;
    case 4:
      result = 0x7075727265746E69;
      break;
    case 5:
      result = 0x676E696B656573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4A49EDC()
{
  v14 = MEMORY[0x1E69E7CC0];
  sub_1C44CD9C0(0, 5, 0);
  v0 = 0;
  v1 = v14;
  v2 = "last_nowplaying_bundle";
  v3 = "last_nowplaying_mediatype";
  v4 = "last_nowplaying_mediagenre";
  do
  {
    v5 = 0xD000000000000016;
    v6 = "_share";
    switch(byte_1F43D2798[v0 + 32])
    {
      case 1:
        v5 = 0xD000000000000019;
        v6 = v2;
        break;
      case 2:
        v5 = 0xD00000000000001ALL;
        v6 = v3;
        break;
      case 3:
        v5 = 0xD00000000000001DLL;
        v6 = v4;
        break;
      case 4:
        v5 = 0xD000000000000019;
        v6 = "last_nowplaying_playbackstate";
        break;
      default:
        break;
    }

    v15 = v1;
    v8 = *(v1 + 16);
    v7 = *(v1 + 24);
    if (v8 >= v7 >> 1)
    {
      v12 = v3;
      v13 = v2;
      v11 = v4;
      sub_1C44CD9C0(v7 > 1, v8 + 1, 1);
      v4 = v11;
      v3 = v12;
      v2 = v13;
      v1 = v15;
    }

    ++v0;
    *(v1 + 16) = v8 + 1;
    v9 = v1 + 16 * v8;
    *(v9 + 32) = v5;
    *(v9 + 40) = v6 | 0x8000000000000000;
  }

  while (v0 != 5);

  return sub_1C4499940();
}

uint64_t sub_1C4A4A074(uint64_t a1)
{
  v3 = objc_autoreleasePoolPush();
  sub_1C4A4A0CC(v1, a1, &v5);
  objc_autoreleasePoolPop(v3);
  return v5;
}

uint64_t sub_1C4A4A0CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &aBlock - v10;
  v12 = *(a1 + 16);
  v13 = sub_1C4EF9CD8();
  sub_1C440BAA8(v11, 1, 1, v13);
  (*(*(v13 - 8) + 16))(v8, a2, v13);
  sub_1C440BAA8(v8, 0, 1, v13);
  v14 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v15 = sub_1C457A86C(v11, v8, 1, 1, 0);
  v16 = [v12 publisherWithOptions_];

  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  v28 = sub_1C4A4B4E4;
  v29 = a1;
  aBlock = MEMORY[0x1E69E9820];
  v25 = 1107296256;
  v26 = sub_1C44405F8;
  v27 = &unk_1F43F52A0;
  v18 = _Block_copy(&aBlock);

  v28 = sub_1C4A4B4EC;
  v29 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v25 = 1107296256;
  v26 = sub_1C4440590;
  v27 = &unk_1F43F52C8;
  v19 = _Block_copy(&aBlock);

  v20 = [v16 sinkWithCompletion:v18 receiveInput:v19];

  _Block_release(v19);
  _Block_release(v18);

  swift_beginAccess();
  v21 = *(v17 + 16);
  *a3 = v21;
  v22 = v21;
}

void sub_1C4A4A3BC(void *a1, void *a2)
{
  if ([a1 state] == 1)
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v3 = sub_1C4F00978();
    sub_1C442B738(v3, qword_1EDDFECB8);

    v4 = a1;
    oslog = sub_1C4F00968();
    v5 = sub_1C4F01CD8();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v18 = v7;
      *v6 = 136315394;

      v8 = sub_1C4F01198();
      v10 = sub_1C441D828(v8, v9, &v18);

      *(v6 + 4) = v10;
      *(v6 + 12) = 2080;
      v11 = [v4 error];
      if (v11)
      {
        v12 = v11;
        swift_getErrorValue();
        v13 = sub_1C4F02A38();
        v15 = v14;
      }

      else
      {
        v13 = 0;
        v15 = 0xE000000000000000;
      }

      v16 = sub_1C441D828(v13, v15, &v18);

      *(v6 + 14) = v16;
      _os_log_impl(&dword_1C43F8000, oslog, v5, "%s: failed to read NowPlaying Biome stream: %s", v6, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C6942830](v7, -1, -1);
      MEMORY[0x1C6942830](v6, -1, -1);
    }

    else
    {
    }
  }
}

void sub_1C4A4A62C(void *a1, uint64_t a2)
{
  v3 = [a1 eventBody];
  if (v3)
  {
    v4 = v3;
    swift_beginAccess();
    v5 = *(a2 + 16);
    *(a2 + 16) = v4;
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v6 = sub_1C4F00978();
    sub_1C442B738(v6, qword_1EDDFECB8);
    oslog = sub_1C4F00968();
    v7 = sub_1C4F01CF8();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1C43F8000, oslog, v7, "Unable to parse eventBody from read event in NowPlaying featurizer", v8, 2u);
      MEMORY[0x1C6942830](v8, -1, -1);
    }
  }
}

uint64_t sub_1C4A4A764(uint64_t a1)
{
  v2 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v44[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v44[-v6];
  v8 = sub_1C4A4A074(a1);
  if (v8)
  {
    v9 = v8;
    v10 = sub_1C4A49C08([v8 playbackState]);
    sub_1C456902C(&unk_1EC0C65C0, &qword_1C4F0D1F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F13950;
    sub_1C43FBDF0();
    *(v12 + 32) = 0xD000000000000016;
    *(v12 + 40) = v13;
    v14 = sub_1C45B4BF8(v9, &selRef_bundleID);
    if (v15)
    {
      v16 = v14;
    }

    else
    {
      v16 = 0;
    }

    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = 0xE000000000000000;
    }

    sub_1C4577DBC();
    sub_1C4594E18(v16, v17);
    sub_1C43FBDF0();
    *(inited + 48) = v18;
    *(inited + 56) = 0xD000000000000019;
    *(inited + 64) = v19;
    v20 = sub_1C45B4BF8(v9, &selRef_mediaType);
    if (!v21)
    {
      v20 = 0;
      v21 = 0xE000000000000000;
    }

    sub_1C4594E18(v20, v21);
    sub_1C43FBDF0();
    *(inited + 72) = v22;
    *(inited + 80) = 0xD00000000000001ALL;
    *(inited + 88) = v23;
    v24 = sub_1C45B4BF8(v9, &selRef_genre);
    if (!v25)
    {
      v24 = 0;
      v25 = 0xE000000000000000;
    }

    sub_1C4594E18(v24, v25);
    sub_1C43FBDF0();
    *(inited + 96) = v26;
    *(inited + 104) = 0xD00000000000001DLL;
    *(inited + 112) = v27;
    v28 = sub_1C4A49DC4(v10);
    sub_1C4594E18(v28, v29);
    sub_1C43FBDF0();
    *(inited + 120) = v30;
    *(inited + 128) = 0xD000000000000019;
    *(inited + 136) = v31;
    v32 = [v9 absoluteTimestamp];
    if (v32)
    {
      v33 = v32;
      sub_1C4EF9C78();

      v34 = 0;
    }

    else
    {
      v34 = 1;
    }

    v40 = sub_1C4EF9CD8();
    sub_1C440BAA8(v4, v34, 1, v40);
    sub_1C45B69E4(v4, v7);
    if (sub_1C44157D4(v7, 1, v40) == 1)
    {
      sub_1C44686E4(v7);
      v41 = 0.0;
    }

    else
    {
      sub_1C4EF9AD8();
      v41 = v42;
      (*(*(v40 - 8) + 8))(v7, v40);
    }

    *(inited + 144) = [objc_opt_self() featureValueWithDouble_];
    v43 = sub_1C4F00F28();

    return v43;
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v35 = sub_1C4F00978();
    sub_1C442B738(v35, qword_1EDDFECB8);
    v36 = sub_1C4F00968();
    v37 = sub_1C4F01CD8();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_1C43F8000, v36, v37, "Unable to fetch most recent NowPlayingEvent", v38, 2u);
      sub_1C43FBE2C();
    }

    sub_1C4577DBC();

    return sub_1C4F00F28();
  }
}

void sub_1C4A4AB7C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v34 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  v12 = v11 - v10;
  type metadata accessor for FeatureProviderSnapshot(0);
  sub_1C43FCDF8();
  v32 = v14;
  v33 = v13;
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBCC4();
  v17 = v16 - v15;
  v18 = *(a2 + 16);
  v19 = MEMORY[0x1E69E7CC0];
  if (v18)
  {
    v29 = a3;
    v37 = MEMORY[0x1E69E7CC0];
    v36 = v17;
    sub_1C459D0A8();
    v20 = v36;
    v19 = v37;
    v22 = *(v8 + 16);
    v21 = v8 + 16;
    v23 = a2 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
    v30 = *(v21 + 56);
    v31 = v22;
    do
    {
      v31(v12, v23, v34);
      v31(v20, v12, v34);
      v24 = sub_1C4A4A764(v12);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v25 = v4;
      sub_1C4A4B314(v24, a1);

      sub_1C465CF34();
      v27 = v26;
      v20 = v36;

      (*(v21 - 8))(v12, v34);
      *(v36 + *(v33 + 20)) = v27;
      v28 = *(v37 + 16);
      if (v28 >= *(v37 + 24) >> 1)
      {
        sub_1C459D0A8();
        v20 = v36;
      }

      *(v37 + 16) = v28 + 1;
      sub_1C4586A54(v20, v37 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v28);
      v23 += v30;
      --v18;
      v4 = v25;
    }

    while (v18);
    a3 = v29;
  }

  *a3 = v19;
}

uint64_t sub_1C4A4AE30()
{
  v0 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v6 = v5 - v4;
  sub_1C4EF9C88();
  v7 = sub_1C4A4A764(v6);
  (*(v2 + 8))(v6, v0);
  return v7;
}

uint64_t sub_1C4A4AEEC(uint64_t a1, unint64_t a2)
{
  v4 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v10 = v9 - v8;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v11 = sub_1C4A49CE8(a1, a2);
  if (v11 == 5)
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v12 = sub_1C4F00978();
    sub_1C442B738(v12, qword_1EDDFECB8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v13 = sub_1C4F00968();
    v14 = sub_1C4F01CD8();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_1C441D828(a1, a2, &v21);
      _os_log_impl(&dword_1C43F8000, v13, v14, "Feature name: %s not available from NowPlaying", v15, 0xCu);
      sub_1C440962C(v16);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    return 0;
  }

  else
  {
    v18 = v11;
    sub_1C4EF9C88();
    sub_1C4A4A764(v10);
    (*(v6 + 8))(v10, v4);
    v19 = sub_1C4A49D34(v18);
    v17 = sub_1C44F9274(v19);
  }

  return v17;
}

uint64_t sub_1C4A4B19C(uint64_t a1)
{
  v2 = [BiomeLibrary() Media];
  swift_unknownObjectRelease();
  v3 = [v2 NowPlaying];
  swift_unknownObjectRelease();
  *(v1 + 16) = v3;
  return v1;
}

unint64_t sub_1C4A4B298(uint64_t a1)
{
  result = sub_1C4A4B2C0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C4A4B2C0()
{
  result = qword_1EC0C1C28;
  if (!qword_1EC0C1C28)
  {
    type metadata accessor for NowPlayingSignal();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1C28);
  }

  return result;
}

_BYTE *sub_1C4A4B314(_BYTE *a1, uint64_t a2)
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

uint64_t sub_1C4A4B4FC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1C4A4B56C(uint64_t a1, uint64_t a2)
{
  v23 = a2;
  v4 = sub_1C4EFB078();
  sub_1C43FCDF8();
  v22 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFBCC8();
  sub_1C43FCDF8();
  v24 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v11 = *v2;
  v12 = v2[1];
  v27 = v2;
  result = sub_1C4EFBFD8();
  if (!v3)
  {
    v30 = v4;
    if (*(v2[8] + 16))
    {
      v14 = v2[6];
      v25 = v2[7];
      v26 = v14;
      sub_1C4EFBCB8();
      v15 = swift_allocObject();
      memcpy((v15 + 16), v2, 0x48uLL);
      sub_1C4A4CA50(v2, v28);
      sub_1C4EFBF98();
      v25 = v12;
      v26 = v11;
      v16 = sub_1C440AF78();
      v17(v16);
    }

    else
    {
      v25 = v12;
      v26 = v11;
    }

    v18 = *(v23 + 16);
    v19 = (v22 + 8);
    for (i = v23 + 48; v18; --v18)
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EFB058();
      v29 = 0;
      memset(v28, 0, sizeof(v28));
      sub_1C4EFBFB8();

      sub_1C4423A0C(v28, &qword_1EC0C5040, &qword_1C4F0F950);
      result = (*v19)(v8, v30);
      i += 24;
    }
  }

  return result;
}

uint64_t sub_1C4A4B8AC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v26 = &v24 - v4;
  v5 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v24 - v6;
  v8 = type metadata accessor for ViewDatabaseArtifact.Property(0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a2;
  v13 = *(a2 + 24);
  v14 = *(v13 + 16);
  if (v14)
  {
    v27 = *(v9 + 20);
    v15 = v13 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v16 = *(v10 + 72);
    do
    {
      sub_1C443CCBC(v15, v12);
      v17 = sub_1C4EFBE38();
      (*(*(v17 - 8) + 16))(v7, &v12[v27], v17);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C469C410(v12);
      sub_1C440BAA8(v7, 0, 1, v17);
      sub_1C4EFB498();

      sub_1C4423A0C(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
      v15 += v16;
      --v14;
    }

    while (v14);
  }

  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1C4F0D130;
  v19 = *(v25 + 40);
  *(v18 + 32) = *(v25 + 32);
  *(v18 + 40) = v19;
  v20 = *MEMORY[0x1E69A00D0];
  v21 = sub_1C4EFBF38();
  v22 = v26;
  (*(*(v21 - 8) + 104))(v26, v20, v21);
  sub_1C440BAA8(v22, 0, 1, v21);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFB478();

  return sub_1C4423A0C(v22, &unk_1EC0BCAB0, &unk_1C4F111A0);
}

uint64_t sub_1C4A4BBC8(uint64_t *a1, void *a2)
{
  v4 = sub_1C456902C(&qword_1EC0BB048, &unk_1C4F1DC50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v18 - v5;
  v7 = *a1;
  sub_1C4EFB7C8();
  sub_1C4EFF9A8();
  sub_1C46A9848(&qword_1EDDFF9C0);
  sub_1C4EFB7B8();
  v8 = sub_1C4EFB928();
  sub_1C440BAA8(v6, 0, 1, v8);
  v18[3] = v7;
  result = sub_1C4EFB7F8();
  v10 = a2[3];
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = type metadata accessor for ViewDatabaseArtifact.Property(0);
    v13 = *(v12 - 8);
    result = v12 - 8;
    v14 = *(v13 + 72);
    v15 = (((*(v13 + 80) + 32) & ~*(v13 + 80)) + v10 + 8);
    do
    {
      v16 = *v15;
      v18[0] = *(v15 - 1);
      v18[1] = v16;
      MEMORY[0x1EEE9AC00](result);
      v18[-2] = v18;
      v17 = sub_1C44CE068();
      sub_1C4EFB7D8();
      if (!v17)
      {
        sub_1C4EFB848();
      }

      v15 = (v15 + v14);
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t sub_1C4A4BDFC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E656C626174 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x736E6D756C6F63 && a2 == 0xE700000000000000;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000017 && 0x80000001C4F919C0 == a2;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x73657865646E69 && a2 == 0xE700000000000000;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6D756C6F43737466 && a2 == 0xEA0000000000736ELL)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C4F02938();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_1C4A4BFB4(char a1)
{
  result = 0x6D614E656C626174;
  switch(a1)
  {
    case 1:
      v3 = 0x6E6D756C6F63;
      goto LABEL_6;
    case 2:
      result = 0xD000000000000017;
      break;
    case 3:
      v3 = 0x657865646E69;
LABEL_6:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
      break;
    case 4:
      result = 0x6D756C6F43737466;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4A4C058(void *a1)
{
  v3 = v1;
  v5 = sub_1C456902C(&qword_1EC0C1C38, &qword_1C4F46BF0);
  sub_1C43FCDF8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  sub_1C4409678(a1, a1[3]);
  sub_1C4A4C7E0();
  sub_1C4F02BF8();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v17) = 0;
  sub_1C44121E4(v11, v12);
  if (!v2)
  {
    v17 = v3[2];
    HIBYTE(v16) = 1;
    sub_1C456902C(&qword_1EC0BB018, qword_1C4F50870);
    sub_1C443CAB4(&qword_1EDDDBC60);
    sub_1C44069F0();
    sub_1C4F027E8();
    v13 = v3[3];
    v14 = v3[4];
    LOBYTE(v17) = 2;
    sub_1C44121E4(v13, v14);
    v17 = v3[5];
    HIBYTE(v16) = 3;
    sub_1C456902C(&qword_1EC0BB020, &qword_1C4F1DB20);
    sub_1C443D1E4(&unk_1EC0BB030);
    sub_1C44069F0();
    sub_1C4F02778();
    v17 = v3[6];
    HIBYTE(v16) = 4;
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C443D0B4(&qword_1EDDFA578);
    sub_1C44069F0();
    sub_1C4F02778();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1C4A4C2D0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1C456902C(&qword_1EC0C1C30, &unk_1C4F46BE0);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C4409678(a1, a1[3]);
  sub_1C4A4C7E0();
  sub_1C4F02BC8();
  if (v2)
  {
    return sub_1C440962C(a1);
  }

  LOBYTE(v17) = 0;
  v6 = sub_1C4F02678();
  v8 = v7;
  v16 = v6;
  sub_1C456902C(&qword_1EC0BB018, qword_1C4F50870);
  sub_1C443CAB4(&qword_1EDDFEA60);
  sub_1C441A0C8();
  sub_1C4F026C8();
  v15 = v17;
  LOBYTE(v17) = 2;
  v13 = sub_1C4F02678();
  v14 = v9;
  sub_1C456902C(&qword_1EC0BB020, &qword_1C4F1DB20);
  sub_1C443D1E4(&unk_1EDDFEA70);
  sub_1C441A0C8();
  sub_1C4F02658();
  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C443D0B4(&qword_1EDDFEA58);
  sub_1C441A0C8();
  sub_1C4F02658();
  v10 = sub_1C442D014();
  v11(v10);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C440962C(a1);

  *a2 = v16;
  a2[1] = v8;
  a2[2] = v15;
  a2[3] = v13;
  a2[4] = v14;
  a2[5] = v17;
  a2[6] = v17;
  return result;
}

uint64_t sub_1C4A4C6D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4A4BDFC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4A4C700(uint64_t a1)
{
  v2 = sub_1C4A4C7E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4A4C73C(uint64_t a1)
{
  v2 = sub_1C4A4C7E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1C4A4C778@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C4A4C2D0(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

unint64_t sub_1C4A4C7E0()
{
  result = qword_1EDDFAFA8;
  if (!qword_1EDDFAFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFAFA8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ObjectRowDatabaseTable.Config.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C4A4C914()
{
  result = qword_1EC0C1C40;
  if (!qword_1EC0C1C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1C40);
  }

  return result;
}

unint64_t sub_1C4A4C96C()
{
  result = qword_1EDDFAF98;
  if (!qword_1EDDFAF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFAF98);
  }

  return result;
}

unint64_t sub_1C4A4C9C4()
{
  result = qword_1EDDFAFA0;
  if (!qword_1EDDFAFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFAFA0);
  }

  return result;
}

uint64_t sub_1C4A4CA88()
{
  v0 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C44F9918(v0, qword_1EDE2DD88);
  v1 = sub_1C43FBC98();
  sub_1C442B738(v1, v2);
  v3 = sub_1C4403FC0();
  v4 = type metadata accessor for Configuration(v3);

  return sub_1C440BAA8(v0, 1, 1, v4);
}

void *sub_1C4A4CAFC(char a1)
{
  switch(a1)
  {
    case 1:
      type metadata accessor for OneShotTasks.ViewTasks.ViewHourlyTaskRunner();
      sub_1C4418B14();
      swift_allocObject();
      sub_1C4A4DC08();
      sub_1C4403FC0();
      v10 = type metadata accessor for OneShotTask();
      v3 = sub_1C44162BC(v10);
      v4 = &off_1F43F5788;
      v5 = &off_1F43F5738;
      v6 = type metadata accessor for OneShotTasks.ViewTasks.ViewHourlyTaskRunner;
      break;
    case 2:
      type metadata accessor for OneShotTasks.ViewTasks.ViewEvery21MinutesTaskRunner();
      sub_1C4418B14();
      swift_allocObject();
      sub_1C4A4DD88();
      sub_1C4403FC0();
      v8 = type metadata accessor for OneShotTask();
      v3 = sub_1C44162BC(v8);
      v4 = &off_1F43F5720;
      v5 = &off_1F43F56D0;
      v6 = type metadata accessor for OneShotTasks.ViewTasks.ViewEvery21MinutesTaskRunner;
      break;
    case 3:
      type metadata accessor for OneShotTasks.ViewTasks.ViewEvery7MinutesTaskRunner();
      sub_1C4418B14();
      swift_allocObject();
      sub_1C4A4DF08();
      sub_1C4403FC0();
      v9 = type metadata accessor for OneShotTask();
      v3 = sub_1C44162BC(v9);
      v4 = &off_1F43F56B8;
      v5 = &off_1F43F5668;
      v6 = type metadata accessor for OneShotTasks.ViewTasks.ViewEvery7MinutesTaskRunner;
      break;
    case 4:
      type metadata accessor for OneShotTasks.ViewTasks.ViewBiomeDeleteDebounceTaskRunner();
      sub_1C4418B14();
      swift_allocObject();
      sub_1C4A4E144();
      sub_1C4403FC0();
      v7 = type metadata accessor for OneShotTask();
      v3 = sub_1C44162BC(v7);
      v4 = &off_1F43F5650;
      v5 = &off_1F43F5600;
      v6 = type metadata accessor for OneShotTasks.ViewTasks.ViewBiomeDeleteDebounceTaskRunner;
      break;
    default:
      type metadata accessor for OneShotTasks.ViewTasks.ViewLiveTaskRunner();
      sub_1C4418B14();
      swift_allocObject();
      sub_1C4A4D8E0();
      sub_1C4403FC0();
      v2 = type metadata accessor for OneShotTask();
      v3 = sub_1C44162BC(v2);
      v4 = &off_1F43F57F0;
      v5 = &off_1F43F57A0;
      v6 = type metadata accessor for OneShotTasks.ViewTasks.ViewLiveTaskRunner;
      break;
  }

  return sub_1C4A51D30(v1, v3, v6, v4, v5);
}

uint64_t sub_1C4A4CCC0(uint64_t a1)
{
  v2 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v20 - v4;
  result = type metadata accessor for Configuration(0);
  v7 = result;
  v8 = *(a1 + *(result + 20));
  if (qword_1EDDF0C88 != -1)
  {
    v21 = *(a1 + *(result + 20));
    result = swift_once();
    v8 = v21;
  }

  v9 = vmovn_s64(vceqq_s64(vandq_s8(xmmword_1EDDF0C90[0], v8), xmmword_1EDDF0C90[0]));
  if (v9.i32[0] & v9.i32[1])
  {
    if (qword_1EDDFC178 != -1)
    {
      sub_1C4408E18(&qword_1EDDFC178);
    }

    sub_1C442B738(v2, qword_1EDE2DD88);
    v10 = sub_1C4402120();
    sub_1C44098F0(v10, v11);
    sub_1C440BAA8(v5, 0, 1, v7);
    swift_beginAccess();
    v12 = sub_1C4402B58();
    sub_1C45A6EE0(v12, v13);
    swift_endAccess();
    type metadata accessor for OneShotSingletons();
    v14 = 0;
    v20[1] = 0x80000001C4FADEF0;
    v21.i64[0] = 0x80000001C4FADED0;
    do
    {
      v15 = byte_1F43DB1B8[v14++ + 32];
      v16 = 0x6576694C77656976;
      switch(v15)
      {
        case 1:
          v16 = 0x72756F4877656976;
          break;
        case 2:
          v16 = 0xD000000000000012;
          break;
        case 3:
          v16 = 0xD000000000000011;
          break;
        case 4:
          v16 = 0xD000000000000017;
          break;
        default:
          break;
      }

      MEMORY[0x1EEE9AC00](v16);
      LOBYTE(v20[-2]) = v17;
      sub_1C446703C(v18);

      sub_1C440F9A0();
      sub_1C4A4CFD0(&unk_1F43F5818, v19, &unk_1F43F5830);
    }

    while (v14 != 5);
  }

  return result;
}

void sub_1C4A4CFD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = v3[6];
  sub_1C4409678(v3 + 2, v3[5]);
  v7 = sub_1C4406834();
  v9 = v8(v7, v6);
  v11 = v10;
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4(&qword_1EDDFD028);
  }

  v12 = sub_1C4F00978();
  sub_1C442B738(v12, qword_1EDE2DE10);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v13 = sub_1C4F00968();
  v14 = sub_1C4F01CF8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = sub_1C43FD084();
    v16 = swift_slowAlloc();
    aBlock = v16;
    *v15 = 136315138;
    v17 = sub_1C4404C28();
    *(v15 + 4) = sub_1C441D828(v17, v18, v19);
    _os_log_impl(&dword_1C43F8000, v13, v14, "ScheduledTask: %s: Registering", v15, 0xCu);
    sub_1C440962C(v16);
    sub_1C43FEA20();
    sub_1C43FBE2C();
  }

  aBlock = 0xD000000000000038;
  v35 = 0x80000001C4FADF30;
  v20 = sub_1C4404C28();
  MEMORY[0x1C6940010](v20);
  v21 = *MEMORY[0x1E69E9C50];
  sub_1C4418B14();
  v22 = swift_allocObject();
  v22[2] = v9;
  v22[3] = v11;
  v22[4] = v5;
  v38 = a2;
  v39 = v22;
  aBlock = MEMORY[0x1E69E9820];
  v35 = 1107296256;
  v36 = sub_1C443EC24;
  v37 = a3;
  v23 = _Block_copy(&aBlock);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  v24 = sub_1C4F011C8();

  xpc_activity_register((v24 + 32), v21, v23);

  _Block_release(v23);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v25 = sub_1C4F00968();
  LOBYTE(v24) = sub_1C4F01CF8();

  if (os_log_type_enabled(v25, v24))
  {
    sub_1C43FD084();
    v26 = sub_1C440E550();
    aBlock = v26;
    MEMORY[0xD000000000000038] = 136315138;
    v27 = sub_1C4404C28();
    v30 = sub_1C441D828(v27, v28, v29);

    MEMORY[0xD00000000000003C] = v30;
    sub_1C44003E4(&dword_1C43F8000, v31, v32, "ScheduledTask: %s: registered");
    sub_1C440962C(v26);
    sub_1C43FFD4C();
    sub_1C43FEA20();
  }

  else
  {
  }
}

void *sub_1C4A4D2CC()
{
  type metadata accessor for OneShotTasks.ConstructionTasks.FullPipelineLongRunningTask();
  sub_1C4418B14();
  swift_allocObject();
  sub_1C4A4EDF4();
  sub_1C4403FC0();
  v1 = type metadata accessor for OneShotTask();
  v2 = sub_1C44162BC(v1);
  return sub_1C4A51D30(v0, v2, type metadata accessor for OneShotTasks.ConstructionTasks.FullPipelineLongRunningTask, &off_1F43F55E8, &off_1F43F55A0);
}

uint64_t sub_1C4A4D33C()
{
  v0 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v13 - v2;
  if (qword_1EDDFC178 != -1)
  {
    sub_1C4408E18(&qword_1EDDFC178);
  }

  sub_1C442B738(v0, qword_1EDE2DD88);
  v4 = sub_1C4402120();
  sub_1C44098F0(v4, v5);
  v6 = type metadata accessor for Configuration(0);
  sub_1C440BAA8(v3, 0, 1, v6);
  swift_beginAccess();
  v7 = sub_1C4402B58();
  sub_1C45A6EE0(v7, v8);
  swift_endAccess();
  type metadata accessor for OneShotSingletons();
  sub_1C446703C(0xD000000000000013);
  sub_1C440F9A0();
  sub_1C4A4CFD0(v9, v10, v11);
}

void sub_1C4A4D498()
{
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_BOOL(empty, *MEMORY[0x1E69E9D88], 1);
  xpc_dictionary_set_int64(empty, *MEMORY[0x1E69E9CB0], 0);
  xpc_dictionary_set_int64(empty, *MEMORY[0x1E69E9C68], 0);
  v1 = 6 * *MEMORY[0x1E69E9CC8];
  if ((*MEMORY[0x1E69E9CC8] * 6) >> 64 != v1 >> 63)
  {
    __break(1u);
    goto LABEL_6;
  }

  xpc_dictionary_set_int64(empty, *MEMORY[0x1E69E9C98], v1);
  xpc_dictionary_set_string(empty, *MEMORY[0x1E69E9D68], *MEMORY[0x1E69E9D70]);
  xpc_dictionary_set_BOOL(empty, *MEMORY[0x1E69E9C40], 1);
  v2 = *MEMORY[0x1E69E9CA8];
  if (!*MEMORY[0x1E69E9CA8])
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v3 = sub_1C4F011C8();
  xpc_dictionary_set_string(empty, v2, (v3 + 32));

  if (*MEMORY[0x1E69E9CA0])
  {
    xpc_dictionary_set_uint64(empty, *MEMORY[0x1E69E9CA0], 1uLL);
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_1C4A4D600()
{
  sub_1C43FCF70();
  if (qword_1EDDF9710 != -1)
  {
    sub_1C440AD44(&qword_1EDDF9710);
  }

  *(v0 + 24) = sub_1C4415590();
  sub_1C440AF8C();
  v1 = swift_task_alloc();
  v2 = sub_1C4414DF4(v1);
  *v2 = v3;
  sub_1C43FC688(v2);
  sub_1C441FF28();

  return sub_1C4427590(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1C4A4D700()
{
  sub_1C43FBCD4();
  sub_1C43FDB88();
  sub_1C43FEB84();
  *v3 = v2;
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;
  *(v6 + 40) = v0;

  if (v0)
  {
    v7 = sub_1C4A4D860;
  }

  else
  {

    v7 = sub_1C4A4D804;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}