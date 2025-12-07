uint64_t sub_1ABBDD784(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6)
{
  v9 = _Block_copy(aBlock);
  sub_1ABAB52E8();
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = v9;
  v10[4] = a1;
  v11 = a3;
  v12 = a1;

  return sub_1ABAAFF38(a6, v10);
}

uint64_t sub_1ABBDD800(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  sub_1ABAFF390(0, &qword_1EB4D4CC8, off_1E795FEB0);
  v3[4] = sub_1ABF240D4();
  a3;
  v5 = swift_task_alloc();
  v3[5] = v5;
  *v5 = v3;
  v5[1] = sub_1ABBDD8E8;

  return sub_1ABBDD3A0();
}

uint64_t sub_1ABBDD8E8(uint64_t a1)
{
  v3 = v1;
  sub_1ABA7BC10();
  v5 = v4;
  v6 = *(v4 + 16);
  v7 = *v2;
  sub_1ABA7BBC0();
  *v8 = v7;

  if (v3)
  {
    v9 = sub_1ABF21BD4();

    v10 = 0;
    v11 = v9;
  }

  else
  {
    sub_1ABAFF390(0, &unk_1ED86B938, off_1E795FEB8);
    v10 = sub_1ABF240C4();

    v9 = 0;
    v11 = v10;
  }

  v12 = *(v5 + 24);
  v12[2](v12, v10, v9);

  _Block_release(v12);
  sub_1ABA7BBE0();

  return v13();
}

void sub_1ABBDDA9C()
{
  sub_1ABA7BCA8();
  v40 = v1;
  sub_1ABF23744();
  sub_1ABA7BB64();
  MEMORY[0x1EEE9AC00](v2);
  sub_1ABA7C068();
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1ABA9939C();
  sub_1ABA7BB64();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7BC58();
  sub_1ABAA2C70();
  sub_1ABA7BB64();
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABA7BC58();
  v9 = v8 - v7;
  type metadata accessor for LogSignpost(0);
  sub_1ABA7BBB0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA809E8();
  if (qword_1ED871F20 != -1)
  {
    sub_1ABA7D628();
    swift_once();
  }

  sub_1ABA7AA24(v4, qword_1ED871EF8);
  v11 = sub_1ABAB56AC();
  v12(v11);
  sub_1ABF23754();
  sub_1ABF23764();
  sub_1ABF23714();
  v13 = sub_1ABF23764();
  sub_1ABF24714();
  if (sub_1ABF247D4())
  {
    sub_1ABA8179C();
    v14 = swift_slowAlloc();
    sub_1ABA96C68(v14);
    sub_1ABF23724();
    sub_1ABA840A8();
    _os_signpost_emit_with_name_impl(v15, v16, v17, v18, v19, v20, v21, v22);
    v23 = sub_1ABA7E368();
    MEMORY[0x1AC5AB8B0](v23);
  }

  v24 = sub_1ABA977A0();
  v25(v24);
  sub_1ABF237B4();
  sub_1ABA90758();
  swift_allocObject();
  sub_1ABA7D1BC();
  sub_1ABF237A4();
  v26 = sub_1ABBE1960();
  v27(v26);
  sub_1ABA957E4("ECR.TextClient.resolveBatch");
  v28 = sub_1ABAB5A5C();
  v29(v28);
  if (qword_1ED871B18 != -1)
  {
    sub_1ABA7D4EC();
    swift_once();
  }

  v30 = sub_1ABAB68E0(v4, qword_1ED871B20);
  sub_1ABF24654();
  v31 = sub_1ABA817A8();
  if (os_log_type_enabled(v31, v32))
  {
    sub_1ABA8179C();
    v33 = swift_slowAlloc();
    sub_1ABA96044(v33);
    sub_1ABA8D1E0();
    _os_log_impl(v34, v35, v36, v37, v38, 2u);
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  sub_1ABAA4968(OBJC_IVAR___GDEntityResolutionTextClientInner_service);
  (*(v39 + 32))(v40, v30, v9);
  sub_1ABA96BC4();
  sub_1ABBDE930(v0);
  sub_1ABBA4F10(v0);
  sub_1ABAB5854();
  sub_1ABA7BC90();
}

void sub_1ABBDDF34()
{
  sub_1ABA7BCA8();
  v46 = v0;
  v47 = v3;
  v48 = v4;
  v44 = sub_1ABF23744();
  sub_1ABA7BB64();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7C068();
  v43 = v8;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v40 - v10;
  v12 = sub_1ABF237F4();
  sub_1ABA7BB64();
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7BC58();
  sub_1ABAA2C70();
  sub_1ABA7BB64();
  v41 = v15;
  v42 = v14;
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7BC58();
  sub_1ABAB50F4();
  v40 = type metadata accessor for LogSignpost(0);
  sub_1ABA7BBB0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1ABA7BC58();
  v19 = v18 - v17;
  if (qword_1ED871F20 != -1)
  {
    sub_1ABA7D628();
    swift_once();
  }

  sub_1ABA7AA24(v12, qword_1ED871EF8);
  v20 = sub_1ABAA12D8();
  v45 = v12;
  v21(v20);
  sub_1ABF23754();
  sub_1ABF23764();
  sub_1ABF23714();
  v22 = sub_1ABF23764();
  v23 = sub_1ABF24714();
  if (sub_1ABF247D4())
  {
    sub_1ABA8179C();
    v24 = swift_slowAlloc();
    sub_1ABBE1954(v24);
    v25 = sub_1ABF23724();
    _os_signpost_emit_with_name_impl(&dword_1ABA78000, v22, v23, v25, "ECR.TextClient.mention", "", v1, 2u);
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  v26 = v44;
  v27 = sub_1ABAABC94();
  v28(v27);
  sub_1ABF237B4();
  sub_1ABA90758();
  swift_allocObject();
  sub_1ABA7D1BC();
  v29 = sub_1ABF237A4();
  (*(v6 + 8))(v11, v26);
  *v19 = "ECR.TextClient.mention";
  *(v19 + 8) = 22;
  *(v19 + 16) = 2;
  *(v19 + 24) = v29;
  (*(v41 + 32))(v19 + *(v40 + 24), v2, v42);
  if (qword_1ED871B18 != -1)
  {
    sub_1ABA7D4EC();
    swift_once();
  }

  v30 = sub_1ABAB68E0(v45, qword_1ED871B20);
  sub_1ABF24654();
  v31 = sub_1ABA817A8();
  if (os_log_type_enabled(v31, v32))
  {
    sub_1ABA8179C();
    v33 = swift_slowAlloc();
    sub_1ABA96044(v33);
    sub_1ABA8D1E0();
    _os_log_impl(v34, v35, v36, v37, v38, 2u);
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  sub_1ABAA4968(OBJC_IVAR___GDEntityResolutionTextClientInner_service);
  (*(v39 + 40))(v47, v48, v30, v26);
  sub_1ABA96BC4();
  sub_1ABBDE930(v19);
  sub_1ABBA4F10(v19);
  sub_1ABAB5854();
  sub_1ABA7BC90();
}

void sub_1ABBDE3EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABA7BCA8();
  a19 = v24;
  a20 = v25;
  sub_1ABF23744();
  sub_1ABA7BB64();
  v58 = v27;
  v59 = v26;
  MEMORY[0x1EEE9AC00](v26);
  sub_1ABA7C068();
  v56 = v28;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v29);
  v30 = sub_1ABA9939C();
  sub_1ABA7BB64();
  MEMORY[0x1EEE9AC00](v31);
  sub_1ABA7BC58();
  v57 = sub_1ABAA2C70();
  sub_1ABA7BB64();
  v33 = v32;
  MEMORY[0x1EEE9AC00](v34);
  sub_1ABA7BC58();
  sub_1ABAB50F4();
  v35 = type metadata accessor for LogSignpost(0);
  sub_1ABA7BBB0();
  MEMORY[0x1EEE9AC00](v36);
  sub_1ABA809E8();
  if (qword_1ED871F20 != -1)
  {
    goto LABEL_20;
  }

  while (1)
  {
    sub_1ABA7AA24(v30, qword_1ED871EF8);
    v37 = sub_1ABAA12D8();
    v60 = v30;
    v38(v37);
    sub_1ABF23754();
    sub_1ABF23764();
    sub_1ABF23714();
    v39 = sub_1ABF23764();
    v40 = sub_1ABF24714();
    if (sub_1ABF247D4())
    {
      sub_1ABA8179C();
      v41 = swift_slowAlloc();
      sub_1ABBE1954(v41);
      v42 = sub_1ABF23724();
      _os_signpost_emit_with_name_impl(&dword_1ABA78000, v39, v40, v42, "ECR.TextClient.mention", "", v22, 2u);
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
    }

    (*(v58 + 16))(v56, v23, v59);
    sub_1ABF237B4();
    sub_1ABA90758();
    swift_allocObject();
    v43 = sub_1ABF237A4();
    (*(v58 + 8))(v23, v59);
    sub_1ABA957E4("ECR.TextClient.mention");
    *(v22 + 24) = v43;
    v44 = v33[4];
    v33 += 4;
    v44(v22 + *(v35 + 24), v21, v57);
    if (qword_1ED871B18 != -1)
    {
      sub_1ABA7D4EC();
      swift_once();
    }

    v45 = sub_1ABAB68E0(v60, qword_1ED871B20);
    v46 = sub_1ABF24654();
    v47 = sub_1ABA84024();
    if (os_log_type_enabled(v47, v48))
    {
      sub_1ABA8179C();
      v49 = swift_slowAlloc();
      sub_1ABA96C68(v49);
      _os_log_impl(&dword_1ABA78000, v45, v46, "ECR client: entity to text called.", v21, 2u);
      v50 = sub_1ABA7E368();
      MEMORY[0x1AC5AB8B0](v50);
    }

    sub_1ABBDCF64();
    if (v20)
    {
      break;
    }

    v62 = v22;
    a10 = MEMORY[0x1E69E7CC0];
    v61 = v51;
    v52 = [v51 rankedResults];
    sub_1ABAFF390(0, &qword_1ED86B970, off_1E7960338);
    v21 = sub_1ABF240D4();

    v22 = sub_1ABAAB7C8(v21);
    v35 = 0;
    v30 = v21 & 0xC000000000000001;
    v23 = off_1E7960330;
    while (1)
    {
      if (v22 == v35)
      {

        sub_1ABBDE930(v62);
        sub_1ABBA4F10(v62);
        goto LABEL_18;
      }

      sub_1ABAAB7C0(v35, v30 == 0, v21);
      v53 = v30 ? MEMORY[0x1AC5AA170](v35, v21) : *(v21 + 8 * v35 + 32);
      v54 = v53;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      v33 = [v53 rankedItems];
      sub_1ABAFF390(0, &qword_1ED86B978, off_1E7960330);
      v55 = sub_1ABF240D4();

      sub_1ABBDAD50(v55, &a10);

      ++v35;
    }

    __break(1u);
LABEL_20:
    sub_1ABA7D628();
    swift_once();
  }

  sub_1ABBDE930(v22);
  sub_1ABBA4F10(v22);
LABEL_18:
  sub_1ABA7BC90();
}

uint64_t sub_1ABBDE930(uint64_t a1)
{
  v3 = sub_1ABF23784();
  sub_1ABA7BB64();
  v21 = v4;
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA809E8();
  v6 = sub_1ABF23744();
  sub_1ABA7BB64();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7BC58();
  v12 = v11 - v10;
  type metadata accessor for LogSignpost(0);
  v13 = *a1;
  v14 = *(a1 + 16);
  v15 = sub_1ABF23764();
  sub_1ABF23794();
  v20 = sub_1ABF24704();
  result = sub_1ABF247D4();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v8 + 8))(v12, v6);
  }

  if ((v14 & 1) == 0)
  {
    if (v13)
    {
LABEL_9:

      sub_1ABF237C4();

      if ((*(v21 + 88))(v1, v3) == *MEMORY[0x1E69E93E8])
      {
        v17 = "[Error] Interval already ended";
      }

      else
      {
        (*(v21 + 8))(v1, v3);
        v17 = "";
      }

      sub_1ABA8179C();
      v18 = swift_slowAlloc();
      sub_1ABBE1954(v18);
      v19 = sub_1ABF23724();
      _os_signpost_emit_with_name_impl(&dword_1ABA78000, v15, v20, v19, v13, v17, v1, 2u);
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v13 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v13 & 0xFFFFF800) != 0xD800)
  {
    if (v13 >> 16 <= 0x10)
    {
      v13 = &v22;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1ABBDEB9C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1ABAD219C(&qword_1EB4D4C90, &unk_1ABF479F0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v58 - v6;
  v8 = sub_1ABAD219C(&qword_1EB4D1AA8, &qword_1ABF661A0);
  sub_1ABA7BB64();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABAB50F4();
  if (qword_1ED871B18 != -1)
  {
    sub_1ABA7D4EC();
    swift_once();
  }

  v12 = sub_1ABF237F4();
  v13 = sub_1ABA7AA24(v12, qword_1ED871B20);
  v14 = sub_1ABF237D4();
  sub_1ABF24644();
  v15 = sub_1ABA817A8();
  if (os_log_type_enabled(v15, v16))
  {
    sub_1ABA8179C();
    v17 = swift_slowAlloc();
    sub_1ABA7ACCC(v17);
    sub_1ABA97310(&dword_1ABA78000, v18, v19, "AddressToContact: embedding address string begin");
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  v20 = sub_1ABF239C4();
  type metadata accessor for AddressEmbedder();
  swift_allocObject();
  v21 = AddressEmbedder.init(modelName:dictionaryPaths:)(0xD00000000000002FLL, 0x80000001ABF8AB50, v20);
  v58 = v10;
  v59 = a2;
  v60 = v21;
  v22 = sub_1ABF23C84();
  v65 = 0;
  v66 = 0xE000000000000000;
  v24 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v24 = v22 & 0xFFFFFFFFFFFFLL;
  }

  v61 = v22;
  v62 = v23;
  v63 = 0;
  v64 = v24;
  while (1)
  {
    v25 = sub_1ABF23DE4();
    if (!v26)
    {
      break;
    }

    v27 = v25;
    v28 = v26;
    if ((sub_1ABF23AE4() & 1) == 0)
    {
      sub_1ABAABC94();
      if (sub_1ABF23B24() & 1) != 0 || (v27 == 32 ? (v29 = v28 == 0xE100000000000000) : (v29 = 0), v29 || (sub_1ABAABC94(), (sub_1ABF25054()) || (sub_1ABAABC94(), (sub_1ABF23B34())))
      {
        v30 = sub_1ABAABC94();
        MEMORY[0x1AC5A9400](v30);
      }
    }
  }

  v31 = HIBYTE(v66) & 0xF;
  if ((v66 & 0x2000000000000000) == 0)
  {
    v31 = v65 & 0xFFFFFFFFFFFFLL;
  }

  if (!v31)
  {

    v33 = sub_1ABF237D4();
    sub_1ABF24664();
    v37 = sub_1ABA84024();
    if (os_log_type_enabled(v37, v38))
    {
      sub_1ABA8179C();
      v39 = swift_slowAlloc();
      sub_1ABA7ACCC(v39);
      sub_1ABA9A3C8();
      _os_log_impl(v40, v41, v42, v43, v44, 2u);
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
    }

    goto LABEL_29;
  }

  v61 = v65;
  v62 = v66;
  v65 = 32;
  v66 = 0xE100000000000000;
  sub_1ABAE28EC();
  sub_1ABF24884();
  sub_1ABA7D1BC();

  v32 = v63;

  if (v32 >= 0xB)
  {
    v33 = sub_1ABF237D4();
    sub_1ABF24664();
    v34 = sub_1ABA84024();
    if (os_log_type_enabled(v34, v35))
    {
      sub_1ABA8179C();
      v36 = swift_slowAlloc();
      sub_1ABA7ACCC(v36);
      sub_1ABA9A3C8();
      _os_log_impl(v45, v46, v47, v48, v49, 2u);
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
    }

LABEL_29:

    return MEMORY[0x1E69E7CC0];
  }

  AddressEmbedder.getEmbedding(address:)(a1, v59, v7);
  sub_1ABA7B9B4(v7, 0, 1, v8);
  v51 = v58;
  (*(v58 + 32))(v2, v7, v8);
  sub_1ABBE0AF8();
  v52 = sub_1ABF23834();
  v53 = sub_1ABF237D4();
  sub_1ABF24644();
  v54 = sub_1ABA817A8();
  if (os_log_type_enabled(v54, v55))
  {
    sub_1ABA8179C();
    v57 = swift_slowAlloc();
    sub_1ABBE1954(v57);
    _os_log_impl(&dword_1ABA78000, v53, v13, "AddressToContact: embedding address string succeeded", v7, 2u);
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  (*(v51 + 8))(v2, v8);
  return v52;
}

uint64_t sub_1ABBDF120(uint64_t a1)
{
  if (qword_1ED871B18 != -1)
  {
    sub_1ABA7D4EC();
    swift_once();
  }

  v3 = sub_1ABF237F4();
  sub_1ABA7AA24(v3, qword_1ED871B20);
  v4 = sub_1ABF237D4();
  v5 = sub_1ABF24644();
  v6 = sub_1ABA84024();
  if (os_log_type_enabled(v6, v7))
  {
    sub_1ABA8179C();
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1ABA78000, v4, v5, "AddressToContact: vector search initiated for embedded address", v8, 2u);
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  v9 = type metadata accessor for ViewService();
  v10 = static ViewService.clientService.getter(v9);
  ViewService.addressContactResolverEmbeddingView()();

  if (!v1)
  {
    v11 = sub_1ABF237D4();
    sub_1ABF24644();
    v12 = sub_1ABA84024();
    if (os_log_type_enabled(v12, v13))
    {
      sub_1ABA8179C();
      *swift_slowAlloc() = 0;
      sub_1ABA82A68(&dword_1ABA78000, v14, v15, "AddressToContact: address vector database view loaded");
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
    }

    sub_1ABF22FE4();
    a1 = sub_1ABF23014();
    v17 = sub_1ABF237D4();
    sub_1ABF24644();
    v18 = sub_1ABA84024();
    if (os_log_type_enabled(v18, v19))
    {
      sub_1ABA8179C();
      *swift_slowAlloc() = 0;
      sub_1ABA82A68(&dword_1ABA78000, v21, v22, "AddressToContact: vector search completed");
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
    }

    if (*(a1 + 16))
    {
      v23 = sub_1ABF237D4();
      v24 = sub_1ABF24644();
      v25 = sub_1ABA84024();
      if (os_log_type_enabled(v25, v26))
      {
        sub_1ABA8179C();
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_1ABA78000, v23, v24, "AddressToContact: address candidates found", v27, 2u);
        sub_1ABA7BDD8();
        MEMORY[0x1AC5AB8B0]();
      }
    }

    else
    {

      v28 = sub_1ABF237D4();
      v29 = sub_1ABF24644();
      v30 = sub_1ABA84024();
      if (os_log_type_enabled(v30, v31))
      {
        sub_1ABA8179C();
        v32 = swift_slowAlloc();
        sub_1ABBE1954(v32);
        _os_log_impl(&dword_1ABA78000, v28, v29, "AddressToContact: no address candidates found", a1, 2u);
        sub_1ABA7BDD8();
        MEMORY[0x1AC5AB8B0]();
      }

      return 0;
    }
  }

  return a1;
}

id sub_1ABBDF420(void *a1)
{
  v4 = sub_1ABF23104();
  sub_1ABA7BB64();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA809E8();
  v8 = [a1 addressString];
  v9 = sub_1ABF23C04();
  v11 = v10;

  v12 = sub_1ABBDEB9C(v9, v11);

  if (!*(v12 + 16))
  {

    goto LABEL_5;
  }

  v13 = sub_1ABBDF120(v12);

  if (v1)
  {
    return result;
  }

  if (!v13)
  {
LABEL_5:
    sub_1ABAFF390(0, &qword_1EB4D4CA0, off_1E795FE60);
    v15 = MEMORY[0x1E69E7CC0];
    return sub_1ABBDF948(v15);
  }

  v45 = v13;
  v51 = MEMORY[0x1E69E7CC0];
  if (qword_1ED871B18 != -1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v16 = sub_1ABF237F4();
    v17 = sub_1ABAB68E0(v16, qword_1ED871B20);
    v18 = sub_1ABF24644();
    if (os_log_type_enabled(v17, v18))
    {
      sub_1ABA8179C();
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1ABA78000, v17, v18, "AddressToContact: address contact candidates retrieved", v19, 2u);
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
    }

    v20 = v45;
    v21 = *(v45 + 16);
    if (!v21)
    {
      break;
    }

    v22 = 0;
    v48 = v45 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v23 = (v6 + 8);
    v44 = MEMORY[0x1E69E7CC0];
    v42 = v6;
    v43 = v4;
    v41 = *(v45 + 16);
    v47 = (v6 + 8);
    while (v22 < *(v20 + 16))
    {
      (*(v6 + 16))(v2, v48 + *(v6 + 72) * v22, v4);
      sub_1ABF230B4();
      if (v24 > 0.88)
      {
        v25 = sub_1ABF230F4();
        if (v26 >> 60 != 15)
        {
          v27 = v26;
          v28 = v25;
          sub_1ABF217F4();
          sub_1ABA90758();
          swift_allocObject();
          sub_1ABF217E4();
          sub_1ABBE0B5C();
          v46 = v28;
          sub_1ABF217D4();
          v29 = sub_1ABF24FF4();
          v31 = v30;
          objc_allocWithZone(GDAddressResolutionResultEntity);

          v32 = sub_1ABBE09FC(v29, v31, v49, v50);

          v33 = v32;
          MEMORY[0x1AC5A9710]();
          v34 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v34 >> 1)
          {
            sub_1ABA7BBEC(v34);
            sub_1ABF24134();
          }

          sub_1ABF24184();

          sub_1ABAC9310(v46, v27);

          v23 = v47;
          v4 = v43;
          (*v47)(v2, v43);
          v44 = v51;
          v20 = v45;
          v21 = v41;
          v6 = v42;
          goto LABEL_20;
        }

        v23 = v47;
      }

      (*v23)(v2, v4);
LABEL_20:
      if (v21 == ++v22)
      {

        v35 = v44;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_28:
    sub_1ABA7D4EC();
    swift_once();
  }

  v35 = MEMORY[0x1E69E7CC0];
LABEL_23:
  v36 = sub_1ABF237D4();
  v37 = sub_1ABF24644();
  v38 = sub_1ABA84024();
  if (os_log_type_enabled(v38, v39))
  {
    sub_1ABA8179C();
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_1ABA78000, v36, v37, "AddressToContact: candidate payload loading succeeded", v40, 2u);
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  sub_1ABAFF390(0, &qword_1EB4D4CA0, off_1E795FE60);
  v15 = v35;
  return sub_1ABBDF948(v15);
}

id sub_1ABBDF948(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1ABAFF390(0, &qword_1EB4D4CD0, off_1E795FE68);
  v2 = sub_1ABF240C4();

  v3 = [v1 initWithRankedEntities_];

  return v3;
}

void sub_1ABBDFA84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = a1 + 56;
  sub_1ABA7E5E8();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;

  v12 = 0;
  v13 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_53;
    }

    if (v14 >= v11)
    {
      break;
    }

    v9 = *(v6 + 8 * v14);
    ++v12;
    if (v9)
    {
      v12 = v14;
      do
      {
LABEL_6:
        sub_1ABAA28AC();
        v17 = *(v16 + v15);
        v18 = type metadata accessor for EntityResolutionRankingDirectFeedback();
        v19 = sub_1ABA96FA8(v18);
        *(v19 + 16) = 1;
        v84 = v17;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1ABAA4DA8();
          v13 = v23;
        }

        v21 = *(v13 + 16);
        v20 = *(v13 + 24);
        if (v21 >= v20 >> 1)
        {
          v24 = sub_1ABA7BBEC(v20);
          sub_1ABA90CC8(v24, v21 + 1);
          v13 = v25;
        }

        v9 &= v9 - 1;
        *(v13 + 16) = v21 + 1;
        v22 = v13 + 16 * v21;
        *(v22 + 32) = v84;
        *(v22 + 40) = v19;
      }

      while (v9);
    }
  }

  sub_1ABA7E5E8();
  v28 = v27 & v26;
  v30 = (v29 + 63) >> 6;

  v31 = 0;
  if (v28)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v32 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v32 >= v30)
    {

      sub_1ABA7E5E8();
      v46 = v45 & v44;
      v48 = (v47 + 63) >> 6;

      v49 = 0;
      if (v46)
      {
        goto LABEL_28;
      }

      while (1)
      {
        v50 = v49 + 1;
        if (__OFADD__(v49, 1))
        {
          goto LABEL_54;
        }

        if (v50 >= v48)
        {

          sub_1ABA7E5E8();
          v63 = v62 & v61;
          v65 = (v64 + 63) >> 6;

          v66 = 0;
          if (v63)
          {
            goto LABEL_39;
          }

          while (1)
          {
            v67 = v66 + 1;
            if (__OFADD__(v66, 1))
            {
              goto LABEL_55;
            }

            if (v67 >= v65)
            {

              v78 = 0;
              v79 = *(v13 + 16);
              for (i = v13 + 40; ; i += 16)
              {
                if (v79 == v78)
                {

                  return;
                }

                if (v78 >= *(v13 + 16))
                {
                  goto LABEL_56;
                }

                sub_1ABB14BE0();
                if (v5)
                {
                  break;
                }

                ++v78;
              }

              return;
            }

            v63 = *(a4 + 56 + 8 * v67);
            ++v66;
            if (v63)
            {
              v66 = v67;
              do
              {
LABEL_39:
                sub_1ABAA28AC();
                v86 = *(v69 + v68);
                v70 = type metadata accessor for EntityResolutionRankingDirectFeedback();
                v71 = sub_1ABA96FA8(v70);
                *(v71 + 16) = 4;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_1ABAA4DA8();
                  v13 = v75;
                }

                v73 = *(v13 + 16);
                v72 = *(v13 + 24);
                if (v73 >= v72 >> 1)
                {
                  v76 = sub_1ABA7BBEC(v72);
                  sub_1ABA90CC8(v76, v73 + 1);
                  v13 = v77;
                }

                v63 &= v63 - 1;
                *(v13 + 16) = v73 + 1;
                v74 = v13 + 16 * v73;
                *(v74 + 32) = v86;
                *(v74 + 40) = v71;
              }

              while (v63);
            }
          }
        }

        v46 = *(a3 + 56 + 8 * v50);
        ++v49;
        if (v46)
        {
          v49 = v50;
          do
          {
LABEL_28:
            sub_1ABAA28AC();
            v85 = *(v52 + v51);
            v53 = type metadata accessor for EntityResolutionRankingDirectFeedback();
            v54 = sub_1ABA96FA8(v53);
            *(v54 + 16) = 3;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1ABAA4DA8();
              v13 = v58;
            }

            v56 = *(v13 + 16);
            v55 = *(v13 + 24);
            if (v56 >= v55 >> 1)
            {
              v59 = sub_1ABA7BBEC(v55);
              sub_1ABA90CC8(v59, v56 + 1);
              v13 = v60;
            }

            v46 &= v46 - 1;
            *(v13 + 16) = v56 + 1;
            v57 = v13 + 16 * v56;
            *(v57 + 32) = v85;
            *(v57 + 40) = v54;
          }

          while (v46);
        }
      }
    }

    v28 = *(a2 + 56 + 8 * v32);
    ++v31;
    if (v28)
    {
      v31 = v32;
      do
      {
LABEL_17:
        sub_1ABAA28AC();
        v35 = *(v34 + v33);
        v36 = type metadata accessor for EntityResolutionRankingDirectFeedback();
        v37 = sub_1ABA96FA8(v36);
        *(v37 + 16) = 2;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1ABAA4DA8();
          v13 = v41;
        }

        v39 = *(v13 + 16);
        v38 = *(v13 + 24);
        if (v39 >= v38 >> 1)
        {
          v42 = sub_1ABA7BBEC(v38);
          sub_1ABA90CC8(v42, v39 + 1);
          v13 = v43;
        }

        v28 &= v28 - 1;
        *(v13 + 16) = v39 + 1;
        v40 = v13 + 16 * v39;
        *(v40 + 32) = v35;
        *(v40 + 40) = v37;
        v5 = v4;
      }

      while (v28);
    }
  }

LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
}

void sub_1ABBE001C()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v4 = v3;
  v41 = *MEMORY[0x1E69E9840];
  v37 = sub_1ABF21944();
  sub_1ABA7BB64();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA809E8();
  v8 = v4 == 7105633 && v2 == 0xE300000000000000;
  if (!v8 && (sub_1ABF25054() & 1) == 0)
  {
    v39 = v4;
    v40 = v2;
    sub_1ABAE28EC();
    v18 = sub_1ABF24884();
    v19 = *(v18 + 16);
    if (v19)
    {
      v38 = MEMORY[0x1E69E7CC0];
      sub_1ABADDBD4(0, v19, 0);
      v11 = v38;
      v36 = (v6 + 8);
      v20 = (v18 + 40);
      do
      {
        v21 = *v20;
        v39 = *(v20 - 1);
        v40 = v21;

        sub_1ABF21934();
        v22 = sub_1ABF248A4();
        v24 = v23;
        (*v36)(v0, v37);

        v26 = v38[2];
        v25 = v38[3];
        if (v26 >= v25 >> 1)
        {
          v28 = sub_1ABA7BBEC(v25);
          sub_1ABADDBD4(v28, v26 + 1, 1);
        }

        v38[2] = v26 + 1;
        v27 = &v38[2 * v26];
        v27[4] = v22;
        v27[5] = v24;
        v20 += 2;
        --v19;
      }

      while (v19);
      goto LABEL_21;
    }

LABEL_22:

    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_23;
  }

  static EntityResolutionViewDependencies.loadECRViews()(&v39);
  v9 = v39;
  if (!v39)
  {
    goto LABEL_27;
  }

  v10 = v39[2];
  if (!v10)
  {
    goto LABEL_22;
  }

  v39 = MEMORY[0x1E69E7CC0];
  sub_1ABADDBD4(0, v10, 0);
  v11 = v39;
  v12 = v9 + 5;
  do
  {
    v14 = *(v12 - 1);
    v13 = *v12;
    v39 = v11;
    v16 = v11[2];
    v15 = v11[3];

    if (v16 >= v15 >> 1)
    {
      sub_1ABADDBD4(v15 > 1, v16 + 1, 1);
      v11 = v39;
    }

    v11[2] = v16 + 1;
    v17 = &v11[2 * v16];
    v17[4] = v14;
    v17[5] = v13;
    v12 += 4;
    --v10;
  }

  while (v10);
LABEL_21:

LABEL_23:
  v29 = [objc_allocWithZone(GDXPCInternalService) init];
  sub_1ABAFF390(0, &qword_1EB4D4CB0, off_1E7960440);
  v30 = sub_1ABBE042C(v11, 0);
  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v31 = sub_1ABF24794();
  v39 = 0;
  v32 = [v29 viewInfoWithViewQuery:v30 rows:v31 error:&v39];

  v33 = v39;
  if (v32)
  {
    sub_1ABAD219C(&qword_1EB4D3080, &unk_1ABF47A00);
    sub_1ABF240D4();
    v34 = v33;
  }

  else
  {
    v35 = v39;
    sub_1ABF21BE4();

    swift_willThrow();
  }

LABEL_27:
  sub_1ABA7BC90();
}

id sub_1ABBE042C(uint64_t a1, char a2)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v4 = sub_1ABF240C4();

  v5 = [v3 initWithNames:v4 includeDependencies:a2 & 1];

  return v5;
}

id EntityResolutionTextClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id EntityResolutionTextClient.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for EntityResolutionTextClient();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1ABBE059C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736572646461 && a2 == 0xE700000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1682531437 && a2 == 0xE400000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x49746361746E6F63 && a2 == 0xE900000000000064)
    {

      return 2;
    }

    else
    {
      v8 = sub_1ABF25054();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1ABBE06B4(char a1)
{
  if (!a1)
  {
    return 0x73736572646461;
  }

  if (a1 == 1)
  {
    return 1682531437;
  }

  return 0x49746361746E6F63;
}

void sub_1ABBE0708()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v4 = v3;
  v5 = sub_1ABAD219C(&qword_1EB4D4CB8, &qword_1ABF47AE0);
  sub_1ABA7BB64();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  sub_1ABA93E20(v2, v2[3]);
  sub_1ABBE1458();
  sub_1ABF252C4();
  if (v0)
  {
    sub_1ABA84B54(v2);
  }

  else
  {
    sub_1ABAA0EC4();
    v11 = sub_1ABF24E14();
    v13 = v12;
    sub_1ABAA0EC4();
    v19 = sub_1ABF24E54();
    sub_1ABAA0EC4();
    v14 = sub_1ABF24E14();
    v15 = v10;
    v17 = v16;
    (*(v7 + 8))(v15, v5);
    sub_1ABA84B54(v2);
    *v4 = v11;
    v4[1] = v13;
    v4[2] = v19;
    v4[3] = v14;
    v4[4] = v17;
  }

  sub_1ABA7BC90();
}

uint64_t sub_1ABBE08F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABBE059C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABBE0918(uint64_t a1)
{
  v2 = sub_1ABBE1458();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBE0954(uint64_t a1)
{
  v2 = sub_1ABBE1458();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1ABBE0990@<D0>(uint64_t a1@<X8>)
{
  sub_1ABBE0708();
  if (!v1)
  {
    result = *&v4;
    *a1 = v4;
    *(a1 + 16) = v5;
    *(a1 + 32) = v6;
  }

  return result;
}

id sub_1ABBE09FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1ABF23BD4();

  if (a4)
  {
    v7 = sub_1ABF23BD4();
  }

  else
  {
    v7 = 0;
  }

  v8 = [v4 initWithMdId:v6 contactId:v7];

  return v8;
}

uint64_t sub_1ABBE0A90(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D4C90, &unk_1ABF479F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1ABBE0AF8()
{
  result = qword_1EB4D4C98;
  if (!qword_1EB4D4C98)
  {
    sub_1ABAE2850(&qword_1EB4D1AA8, &qword_1ABF661A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4C98);
  }

  return result;
}

unint64_t sub_1ABBE0B5C()
{
  result = qword_1EB4D4CA8;
  if (!qword_1EB4D4CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4CA8);
  }

  return result;
}

uint64_t dispatch thunk of EntityResolutionTextClient.warmup(for:)()
{
  sub_1ABA7BC04();
  sub_1ABA7ABF0();
  v0 = swift_task_alloc();
  v1 = sub_1ABA8864C(v0);
  *v1 = v2;
  v3 = sub_1ABA97AE0(v1);

  return v4(v3);
}

uint64_t dispatch thunk of EntityResolutionTextClient.cooldown()()
{
  sub_1ABA7BC04();
  sub_1ABA7ABF0();
  v5 = (*(v0 + 128) + **(v0 + 128));
  v1 = swift_task_alloc();
  v2 = sub_1ABA8864C(v1);
  *v2 = v3;
  v2[1] = sub_1ABAB2788;

  return v5();
}

uint64_t dispatch thunk of EntityResolutionTextClient.resolveEntities(forRequest:)()
{
  sub_1ABA7BC04();
  sub_1ABA7ABF0();
  v0 = swift_task_alloc();
  v1 = sub_1ABA8864C(v0);
  *v1 = v2;
  v3 = sub_1ABA97AE0(v1);

  return v4(v3);
}

uint64_t sub_1ABBE0FE4()
{
  sub_1ABA7BBF8();
  v2 = v1;
  sub_1ABA7BC10();
  v3 = *v0;
  sub_1ABA7BBC0();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t dispatch thunk of EntityResolutionTextClient.resolveEntities(forBatchRequests:)()
{
  sub_1ABA7BC04();
  sub_1ABA7ABF0();
  v0 = swift_task_alloc();
  v1 = sub_1ABA8864C(v0);
  *v1 = v2;
  v3 = sub_1ABA97AE0(v1);

  return v4(v3);
}

unint64_t sub_1ABBE1458()
{
  result = qword_1EB4D4CC0;
  if (!qword_1EB4D4CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4CC0);
  }

  return result;
}

uint64_t sub_1ABBE14AC()
{
  sub_1ABA7BC04();
  v0 = swift_task_alloc();
  v1 = sub_1ABA8864C(v0);
  *v1 = v2;
  v3 = sub_1ABA9937C(v1);

  return v4(v3);
}

uint64_t sub_1ABBE1540()
{
  _Block_release(*(v0 + 24));

  v1 = sub_1ABAB52E8();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1ABBE1580()
{
  sub_1ABA7BC04();
  v0 = swift_task_alloc();
  v1 = sub_1ABA8864C(v0);
  *v1 = v2;
  v3 = sub_1ABA9937C(v1);

  return v4(v3);
}

uint64_t sub_1ABBE1614()
{
  sub_1ABA7BC04();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_1ABA8864C(v3);
  *v4 = v5;
  v4[1] = sub_1ABAB2788;

  return sub_1ABBDC3F4(v1, v2);
}

uint64_t sub_1ABBE16B8()
{
  sub_1ABA7BC04();
  v0 = swift_task_alloc();
  v1 = sub_1ABA8864C(v0);
  *v1 = v2;
  v3 = sub_1ABA9937C(v1);

  return v4(v3);
}

_BYTE *storeEnumTagSinglePayload for VectorDbAddressContactResolverPayload.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABBE1848()
{
  result = qword_1EB4D4CE0;
  if (!qword_1EB4D4CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4CE0);
  }

  return result;
}

unint64_t sub_1ABBE18A0()
{
  result = qword_1EB4D4CE8;
  if (!qword_1EB4D4CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4CE8);
  }

  return result;
}

unint64_t sub_1ABBE18F8()
{
  result = qword_1EB4D4CF0;
  if (!qword_1EB4D4CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4CF0);
  }

  return result;
}

id sub_1ABBE1988()
{

  return objc_allocWithZone(v0);
}

id sub_1ABBE19A8(uint64_t a1, char a2)
{
  v4 = v2;
  if (a1 == 6)
  {
    __dst[3] = &type metadata for Features.FeatureFlag;
    __dst[4] = sub_1ABA8488C();
    LOBYTE(__dst[0]) = 25;
    v7 = sub_1ABF220A4();
    sub_1ABA84B54(__dst);
    if ((v7 & 1) == 0)
    {
      sub_1ABA8A488();
      sub_1ABB32C5C();
      v12 = swift_allocError();
      sub_1ABA93418(v12, v13);
LABEL_12:
      *(v14 + 16) = v15;
      swift_willThrow();
LABEL_17:
      type metadata accessor for EntityResolutionTextInProcessService();
      return swift_deallocPartialClassInstance();
    }
  }

  if (qword_1ED871B18 != -1)
  {
    sub_1ABA7BE6C(&qword_1ED871B18);
  }

  v8 = sub_1ABF237F4();
  sub_1ABA7AA24(v8, qword_1ED871B20);
  v9 = sub_1ABF237D4();
  v10 = sub_1ABF24684();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134218240;
    *(v11 + 4) = a1;
    *(v11 + 12) = 1024;
    *(v11 + 14) = a2 & 1;
    _os_log_impl(&dword_1ABA78000, v9, v10, "ECR in process: initialized for mode: %ld and warmup: %{BOOL}d", v11, 0x12u);
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  *&v4[OBJC_IVAR____TtC20IntelligencePlatform36EntityResolutionTextInProcessService_defaultMode] = a1;
  switch(a1)
  {
    case 4:
    case 5:
      sub_1ABA8A488();
      break;
    default:
      break;
  }

  static EntityResolutionConfig.fromResource(configName:)();

  memcpy(__dst, __src, 0x8DuLL);
  if (sub_1ABBAA37C(__dst) == 1)
  {
    sub_1ABB32C5C();
    swift_allocError();
    *v14 = xmmword_1ABF47830;
    v15 = 9;
    goto LABEL_12;
  }

  memcpy(&v4[OBJC_IVAR____TtC20IntelligencePlatform36EntityResolutionTextInProcessService_defaultConfig], __dst, 0x8DuLL);
  type metadata accessor for EntityResolutionHandlerPool();
  v16 = swift_allocObject();
  type metadata accessor for EntityResolutionHandlerPool.EntityRerankerHandlerStore();
  swift_allocObject();
  *(v16 + 16) = sub_1ABBABA08();
  *&v4[OBJC_IVAR____TtC20IntelligencePlatform36EntityResolutionTextInProcessService_modelPool] = v16;
  v17 = type metadata accessor for ViewService();
  v18 = static ViewService.clientService.getter(v17);
  type metadata accessor for EntityResolutionServicePool();
  swift_allocObject();
  *&v4[OBJC_IVAR____TtC20IntelligencePlatform36EntityResolutionTextInProcessService_servicePool] = sub_1ABBD90C8(v18);
  if (a2)
  {
    sub_1ABA817B8(v26);
    sub_1ABA817B8(v25);

    sub_1ABBA9514(v26, v24);
    sub_1ABBABFF0(v25);
    if (v3)
    {
      memcpy(v24, v25, 0x8DuLL);
      sub_1ABBA954C(v24);

      sub_1ABA817B8(v25);
      sub_1ABBA954C(v25);

      goto LABEL_17;
    }

    memcpy(v23, v25, 0x8DuLL);
    sub_1ABBA954C(v23);

    sub_1ABA817B8(v24);
    sub_1ABA817B8(v22);

    sub_1ABBA9514(v24, v21);
    sub_1ABBD954C(v22);
    memcpy(v21, v22, 0x8DuLL);
    sub_1ABBA954C(v21);
  }

  v20 = type metadata accessor for EntityResolutionTextInProcessService();
  v27.receiver = v4;
  v27.super_class = v20;
  return objc_msgSendSuper2(&v27, sel_init);
}

void *sub_1ABBE1E60(uint64_t a1)
{
  result = sub_1ABBE3528(a1, __src);
  if (!v1)
  {
    memcpy(__dst, __src, 0x8DuLL);
    memcpy(v3, __src, 0x8DuLL);
    sub_1ABBABFF0(v3);
    memcpy(v3, __dst, 0x8DuLL);
    sub_1ABBD954C(v3);
    return sub_1ABBA954C(__dst);
  }

  return result;
}

void sub_1ABBE1F7C(void *a1)
{
  v68 = sub_1ABF23744();
  sub_1ABA7BB64();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7AC18();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v64 - v9;
  v11 = sub_1ABF237F4();
  sub_1ABA7BB64();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7BC58();
  v17 = v16 - v15;
  sub_1ABF23774();
  sub_1ABA7BB64();
  v66 = v19;
  v67 = v18;
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABA7BC58();
  v22 = v21 - v20;
  v65 = type metadata accessor for LogSignpost(0);
  sub_1ABA7BBB0();
  MEMORY[0x1EEE9AC00](v23);
  sub_1ABA7BC58();
  v70 = a1;
  v71 = v25 - v24;
  if ([a1 mode] == 6 && (v75[3] = &type metadata for Features.FeatureFlag, v75[4] = sub_1ABA8488C(), LOBYTE(v75[0]) = 25, v26 = sub_1ABF220A4(), sub_1ABA84B54(v75), (v26 & 1) == 0))
  {
    sub_1ABA8A488();
    sub_1ABB32C5C();
    v52 = swift_allocError();
    sub_1ABA93418(v52, v53);
    *(v54 + 16) = v55;
    swift_willThrow();
  }

  else
  {
    if (qword_1ED871F20 != -1)
    {
      sub_1ABA7D608(&qword_1ED871F20);
    }

    v27 = sub_1ABA7AA24(v11, qword_1ED871EF8);
    (*(v13 + 16))(v17, v27, v11);
    sub_1ABF23754();
    sub_1ABF23764();
    sub_1ABF23714();
    v28 = sub_1ABF23764();
    v29 = sub_1ABF24714();
    if (sub_1ABF247D4())
    {
      sub_1ABA8179C();
      v30 = swift_slowAlloc();
      *v30 = 0;
      v31 = sub_1ABF23724();
      _os_signpost_emit_with_name_impl(&dword_1ABA78000, v28, v29, v31, "ECR.TextInProcessService.resolve", "", v30, 2u);
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
    }

    v32 = v68;
    (*(v3 + 16))(v7, v10, v68);
    sub_1ABF237B4();
    swift_allocObject();
    sub_1ABF237A4();
    (*(v3 + 8))(v10, v32);
    v33 = v71;
    sub_1ABA8FFF0("ECR.TextInProcessService.resolve");
    (*(v66 + 32))(v33 + *(v65 + 24), v22, v67);
    Current = CFAbsoluteTimeGetCurrent();
    v35 = v69;
    v36 = v70;
    sub_1ABBAC31C(__src);
    if (v35)
    {
      sub_1ABBA4F10(v33);
    }

    else
    {
      v37 = memcpy(v76, __src, 0x7BuLL);
      if (qword_1ED870770 != -1)
      {
        v37 = swift_once();
      }

      v38 = *(qword_1ED87C428 + 16);
      MEMORY[0x1EEE9AC00](v37);
      v64[-2] = v39;
      v64[-1] = v40;
      os_unfair_lock_lock((v38 + 24));
      sub_1ABBD8B88((v38 + 16), v75);
      os_unfair_lock_unlock((v38 + 24));
      v41 = v75[0];
      sub_1ABBE3528([v36 mode], v75);
      memcpy(v73, v75, sizeof(v73));
      type metadata accessor for EntityResolutionRequestManager();
      memcpy(v74, v76, 0x7BuLL);
      sub_1ABBC3BC8(v76, v72);

      sub_1ABBD7BEC();
      v43 = v42;
      sub_1ABBD2C28(v42, v44, v45, v46, v47, v48, v49, v50, v64[0], v64[1], v65, v66, v67, v68, v69, v70, v71, v72[0], v72[1], v72[2]);
      v56 = v51;
      v57 = *(v51 + 16);
      if (v57)
      {
        v70 = v43;
        v74[0] = MEMORY[0x1E69E7CC0];
        sub_1ABF24BC4();
        v58 = 32;
        do
        {
          memcpy(v73, (v56 + v58), 0x58uLL);
          sub_1ABBAE1B4();
          sub_1ABF24B94();
          sub_1ABF24BD4();
          sub_1ABF24BE4();
          sub_1ABF24BA4();
          v58 += 88;
          --v57;
        }

        while (v57);

        v59 = v74[0];
        v33 = v71;
      }

      else
      {

        v59 = MEMORY[0x1E69E7CC0];
      }

      v60 = sub_1ABAAB7C8(v59);
      v61 = 0xEA00000000007963;
      v62 = 0x6E6574614C776F6CLL;
      switch(v76[48])
      {
        case 1:
          v61 = 0xE800000000000000;
          v62 = 0x6465636E616C6162;
          break;
        case 2:
          v61 = 0xEB00000000797469;
          v62 = 0x6C61755168676968;
          break;
        case 3:
          v63 = 0x786966657270;
          goto LABEL_25;
        case 4:
          v61 = 0x80000001ABF7F180;
          v62 = 0xD000000000000014;
          break;
        case 5:
          v62 = 0xD000000000000010;
          v61 = 0x80000001ABF7F1A0;
          break;
        case 6:
          v63 = 0x646972627968;
LABEL_25:
          v62 = v63 & 0xFFFFFFFFFFFFLL | 0x6553000000000000;
          v61 = 0xEC00000068637261;
          break;
        default:
          break;
      }

      sub_1ABBAB134(v60, v62, v61);

      sub_1ABAFF390(0, &unk_1ED86B938, off_1E795FEB8);
      sub_1ABBEA450(v59);

      sub_1ABBE2724(Current, v41, v33);

      sub_1ABBC3C00(v76);
      sub_1ABBA4F10(v33);
    }
  }
}

uint64_t sub_1ABBE2724(double a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1ABF23784();
  v22 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1ABF23744();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1ABBAB2D0(0, a1);
  sub_1ABBAB520(0);
  type metadata accessor for LogSignpost(0);
  v12 = *a3;
  v13 = *(a3 + 16);
  v14 = sub_1ABF23764();
  sub_1ABF23794();
  v21 = sub_1ABF24704();
  result = sub_1ABF247D4();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v9 + 8))(v11, v8);
  }

  if ((v13 & 1) == 0)
  {
    if (v12)
    {
LABEL_9:

      sub_1ABF237C4();

      v16 = v22;
      if ((*(v22 + 88))(v7, v5) == *MEMORY[0x1E69E93E8])
      {
        v17 = "[Error] Interval already ended";
      }

      else
      {
        (*(v16 + 8))(v7, v5);
        v17 = "";
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = sub_1ABF23724();
      _os_signpost_emit_with_name_impl(&dword_1ABA78000, v14, v21, v19, v12, v17, v18, 2u);
      MEMORY[0x1AC5AB8B0](v18, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v12 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v12 & 0xFFFFF800) != 0xD800)
  {
    if (v12 >> 16 <= 0x10)
    {
      v12 = &v23;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1ABBE29F0(uint64_t a1)
{
  sub_1ABF23744();
  sub_1ABA7BB64();
  v37 = v5;
  v38 = v4;
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7AC18();
  v36 = v6 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1ABA83850();
  sub_1ABA7BB64();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA7BC58();
  v15 = v14 - v13;
  sub_1ABF23774();
  sub_1ABA7BB64();
  v34 = v17;
  v35 = v16;
  MEMORY[0x1EEE9AC00](v16);
  sub_1ABA7BC58();
  v20 = (v19 - v18);
  v33 = type metadata accessor for LogSignpost(0);
  sub_1ABA7BBB0();
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA7BC58();
  v24 = v23 - v22;
  if (qword_1ED871F20 != -1)
  {
LABEL_17:
    sub_1ABA7D608(&qword_1ED871F20);
  }

  v25 = sub_1ABA7AA24(v9, qword_1ED871EF8);
  (*(v11 + 16))(v15, v25, v9);
  sub_1ABF23754();
  sub_1ABF23764();
  sub_1ABF23714();
  v26 = sub_1ABF23764();
  v27 = sub_1ABF24714();
  if (sub_1ABF247D4())
  {
    sub_1ABA8179C();
    v28 = v24;
    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = sub_1ABF23724();
    _os_signpost_emit_with_name_impl(&dword_1ABA78000, v26, v27, v30, "ECR.TextInProcessService.resolveBatch", "", v29, 2u);
    v24 = v28;
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  (*(v37 + 16))(v36, v2, v38);
  sub_1ABF237B4();
  swift_allocObject();
  v9 = sub_1ABF237A4();
  (*(v37 + 8))(v2, v38);
  sub_1ABA8FFF0("ECR.TextInProcessService.resolveBatch");
  v38 = v24;
  (*(v34 + 32))(v24 + *(v33 + 24), v20, v35);
  v15 = MEMORY[0x1E69E7CC0];
  v39 = MEMORY[0x1E69E7CC0];
  v2 = sub_1ABAAB7C8(a1);
  v24 = 0;
  v11 = a1 & 0xC000000000000001;
  while (v2 != v24)
  {
    sub_1ABAAB7C0(v24, v11 == 0, a1);
    if (v11)
    {
      v31 = MEMORY[0x1AC5AA170](v24, a1);
    }

    else
    {
      v31 = *(a1 + 8 * v24 + 32);
    }

    v20 = v31;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
      goto LABEL_17;
    }

    sub_1ABBE1F7C(v31);
    if (v1)
    {

      break;
    }

    v9 = &v39;
    MEMORY[0x1AC5A9710]();
    if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1ABF24134();
    }

    sub_1ABF24184();
    v15 = v39;

    ++v24;
  }

  sub_1ABBE32B0(v38);
  sub_1ABBA4F10(v38);
  return v15;
}

uint64_t sub_1ABBE2E38(uint64_t a1, uint64_t a2)
{
  v42 = sub_1ABF23744();
  sub_1ABA7BB64();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7AC18();
  v41 = v6 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1ABA83850();
  sub_1ABA7BB64();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA7BC58();
  v15 = v14 - v13;
  v40 = sub_1ABF23774();
  sub_1ABA7BB64();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABA7BC58();
  v21 = v20 - v19;
  v39 = type metadata accessor for LogSignpost(0);
  sub_1ABA7BBB0();
  MEMORY[0x1EEE9AC00](v22);
  sub_1ABA7BC58();
  v25 = v24 - v23;
  if (qword_1ED871F20 != -1)
  {
    sub_1ABA7D608(&qword_1ED871F20);
  }

  v26 = sub_1ABA7AA24(v9, qword_1ED871EF8);
  (*(v11 + 16))(v15, v26, v9);
  sub_1ABF23754();
  sub_1ABF23764();
  sub_1ABF23714();
  v27 = sub_1ABF23764();
  v28 = sub_1ABF24714();
  if (sub_1ABF247D4())
  {
    sub_1ABA8179C();
    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = sub_1ABF23724();
    _os_signpost_emit_with_name_impl(&dword_1ABA78000, v27, v28, v30, "ECR.TextInProcessService.mention", "", v29, 2u);
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  (*(v4 + 16))(v41, v2, v42);
  sub_1ABF237B4();
  swift_allocObject();
  v31 = sub_1ABF237A4();
  (*(v4 + 8))(v2, v42);
  *v25 = "ECR.TextInProcessService.mention";
  *(v25 + 8) = 32;
  *(v25 + 16) = 2;
  *(v25 + 24) = v31;
  (*(v17 + 32))(v25 + *(v39 + 24), v21, v40);
  v32 = sub_1ABE0CA30(a1, a2, 2);
  if (v45)
  {
    sub_1ABBE32B0(v25);
    sub_1ABBA4F10(v25);
  }

  else
  {
    v33 = v32;
    if (v32)
    {
      v34 = *(v32 + 16);
      if (v34)
      {
        v47 = MEMORY[0x1E69E7CC0];
        sub_1ABF24BC4();
        v35 = 32;
        do
        {
          memcpy(__dst, (v33 + v35), sizeof(__dst));
          sub_1ABBADDF0();
          sub_1ABF24B94();
          sub_1ABF24BD4();
          sub_1ABF24BE4();
          sub_1ABF24BA4();
          v35 += 80;
          --v34;
        }

        while (v34);

        v36 = v47;
      }

      else
      {

        v36 = MEMORY[0x1E69E7CC0];
      }

      sub_1ABAFF390(0, &qword_1EB4D4D18, off_1E79602F0);
      v37 = v36;
    }

    else
    {
      sub_1ABAFF390(0, &qword_1EB4D4D18, off_1E79602F0);
      v37 = MEMORY[0x1E69E7CC0];
    }

    v31 = sub_1ABBEA46C(v37);
    sub_1ABBE32B0(v25);
    sub_1ABBA4F10(v25);
  }

  return v31;
}

uint64_t sub_1ABBE32B0(uint64_t a1)
{
  v2 = sub_1ABF23784();
  sub_1ABA7BB64();
  v23 = v3;
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7BC58();
  v7 = v6 - v5;
  v8 = sub_1ABF23744();
  sub_1ABA7BB64();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA7BC58();
  v14 = v13 - v12;
  type metadata accessor for LogSignpost(0);
  v15 = *a1;
  v16 = *(a1 + 16);
  v17 = sub_1ABF23764();
  sub_1ABF23794();
  v22 = sub_1ABF24704();
  result = sub_1ABF247D4();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v10 + 8))(v14, v8);
  }

  if ((v16 & 1) == 0)
  {
    if (v15)
    {
LABEL_9:

      sub_1ABF237C4();

      if ((*(v23 + 88))(v7, v2) == *MEMORY[0x1E69E93E8])
      {
        v19 = "[Error] Interval already ended";
      }

      else
      {
        (*(v23 + 8))(v7, v2);
        v19 = "";
      }

      sub_1ABA8179C();
      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = sub_1ABF23724();
      _os_signpost_emit_with_name_impl(&dword_1ABA78000, v17, v22, v21, v15, v19, v20, 2u);
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v15 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v15 & 0xFFFFF800) != 0xD800)
  {
    if (v15 >> 16 <= 0x10)
    {
      v15 = &v24;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

void *sub_1ABBE3528@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(v2 + OBJC_IVAR____TtC20IntelligencePlatform36EntityResolutionTextInProcessService_defaultMode) == a1)
  {
    memcpy(__dst, (v2 + OBJC_IVAR____TtC20IntelligencePlatform36EntityResolutionTextInProcessService_defaultConfig), 0x8DuLL);
    memcpy(a2, (v2 + OBJC_IVAR____TtC20IntelligencePlatform36EntityResolutionTextInProcessService_defaultConfig), 0x8DuLL);
    return sub_1ABBA9514(__dst, &v9);
  }

  else
  {
    if (qword_1ED871B18 != -1)
    {
      sub_1ABA7BE6C(&qword_1ED871B18);
    }

    v5 = sub_1ABF237F4();
    sub_1ABA7AA24(v5, qword_1ED871B20);
    v6 = sub_1ABF237D4();
    v7 = sub_1ABF24664();
    if (os_log_type_enabled(v6, v7))
    {
      sub_1ABA8179C();
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1ABA78000, v6, v7, "The mode specified here should be the same as initialized. Otherwise, the processing takes longer time.", v8, 2u);
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
    }

    return sub_1ABBE4D4C(a2);
  }
}

id sub_1ABBE36AC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for EntityResolutionTextInProcessService();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1ABBE3814(uint64_t a1, char a2)
{
  v3 = v2;
  v27[1] = *MEMORY[0x1E69E9840];
  *(v3 + 16) = [objc_allocWithZone(GDXPCEntityResolutionService) init];
  if (a2)
  {
    if (qword_1ED871B18 != -1)
    {
      sub_1ABA7D4EC();
      swift_once();
    }

    v6 = sub_1ABF237F4();
    sub_1ABA7AA24(v6, qword_1ED871B20);
    v7 = sub_1ABF237D4();
    v8 = sub_1ABF24684();
    if (os_log_type_enabled(v7, v8))
    {
      sub_1ABA8179C();
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1ABA78000, v7, v8, "ECR XPC: initialized without warmup.", v9, 2u);
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
    }
  }

  else
  {
    if (qword_1ED871B18 != -1)
    {
      sub_1ABA7D4EC();
      swift_once();
    }

    v10 = sub_1ABF237F4();
    sub_1ABA7AA24(v10, qword_1ED871B20);
    v11 = sub_1ABF237D4();
    v12 = sub_1ABF24684();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 134217984;
      *(v13 + 4) = a1;
      _os_log_impl(&dword_1ABA78000, v11, v12, "ECR XPC: initialized and warmed up for mode: %ld.", v13, 0xCu);
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
    }

    v14 = *(v3 + 16);
    v27[0] = 0;
    if ([v14 warmupForMode:a1 error:v27])
    {
      v15 = v27[0];
    }

    else
    {
      v16 = v27[0];
      v17 = sub_1ABF21BE4();

      swift_willThrow();
      v18 = v17;
      v19 = sub_1ABF237D4();
      v20 = sub_1ABF24664();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v27[0] = v22;
        *v21 = 136315138;
        swift_getErrorValue();
        v23 = sub_1ABF25154();
        v25 = sub_1ABADD6D8(v23, v24, v27);

        *(v21 + 4) = v25;
        _os_log_impl(&dword_1ABA78000, v19, v20, "Service is initialized but warmup failed with error: %s.", v21, 0xCu);
        sub_1ABA84B54(v22);
        sub_1ABA7BDD8();
        MEMORY[0x1AC5AB8B0]();
        sub_1ABA7BDD8();
        MEMORY[0x1AC5AB8B0]();
      }

      else
      {
      }
    }
  }

  return v3;
}

id sub_1ABBE3B38(uint64_t a1)
{
  v2 = v1;
  v11[1] = *MEMORY[0x1E69E9840];
  if (qword_1ED871B18 != -1)
  {
    sub_1ABA7D4EC();
    swift_once();
  }

  v4 = sub_1ABF237F4();
  sub_1ABA7AA24(v4, qword_1ED871B20);
  v5 = sub_1ABF237D4();
  v6 = sub_1ABF24684();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = a1;
    _os_log_impl(&dword_1ABA78000, v5, v6, "ECR XPC: initialized and warmed up for mode: %ld.", v7, 0xCu);
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  v8 = *(v2 + 16);
  v11[0] = 0;
  if ([v8 warmupForMode:a1 error:v11])
  {
    return v11[0];
  }

  v10 = v11[0];
  sub_1ABF21BE4();

  return swift_willThrow();
}

uint64_t sub_1ABBE3CA4()
{
  sub_1ABB32C5C();
  swift_allocError();
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = 1;
  return swift_willThrow();
}

id sub_1ABBE3CF8(void *a1)
{
  v45[5] = *MEMORY[0x1E69E9840];
  v42 = sub_1ABF23744();
  sub_1ABA7BB64();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7AC18();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v10 = sub_1ABA83850();
  sub_1ABA7BB64();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7BC58();
  v16 = v15 - v14;
  sub_1ABF23774();
  sub_1ABA7BB64();
  v40 = v18;
  v41 = v17;
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA7BC58();
  v21 = v20 - v19;
  v39 = type metadata accessor for LogSignpost(0);
  sub_1ABA7BBB0();
  MEMORY[0x1EEE9AC00](v22);
  sub_1ABA7BC58();
  v25 = v24 - v23;
  v44 = a1;
  if ([a1 mode] == 6 && (v45[3] = &type metadata for Features.FeatureFlag, v45[4] = sub_1ABA8488C(), LOBYTE(v45[0]) = 25, v26 = sub_1ABF220A4(), sub_1ABA84B54(v45), (v26 & 1) == 0))
  {
    v35 = 0x80000001ABF8AED0;
    sub_1ABB32C5C();
    swift_allocError();
    *v37 = 0xD00000000000003FLL;
    *(v37 + 8) = 0x80000001ABF8AED0;
    *(v37 + 16) = 8;
    swift_willThrow();
  }

  else
  {
    if (qword_1ED871F20 != -1)
    {
      sub_1ABA7D608(&qword_1ED871F20);
    }

    v27 = sub_1ABA7AA24(v10, qword_1ED871EF8);
    (*(v12 + 16))(v16, v27, v10);
    sub_1ABF23754();
    sub_1ABF23764();
    sub_1ABF23714();
    v28 = sub_1ABF23764();
    v29 = sub_1ABF24714();
    if (sub_1ABF247D4())
    {
      sub_1ABA8179C();
      v30 = swift_slowAlloc();
      *v30 = 0;
      v31 = sub_1ABF23724();
      _os_signpost_emit_with_name_impl(&dword_1ABA78000, v28, v29, v31, "ECR.TextXPCService.resolve", "", v30, 2u);
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
    }

    (*(v4 + 16))(v8, v1, v42);
    sub_1ABF237B4();
    swift_allocObject();
    v32 = sub_1ABF237A4();
    (*(v4 + 8))(v1, v42);
    *v25 = "ECR.TextXPCService.resolve";
    *(v25 + 8) = 26;
    *(v25 + 16) = 2;
    *(v25 + 24) = v32;
    (*(v40 + 32))(v25 + *(v39 + 24), v21, v41);
    v33 = *(v43 + 16);
    v45[0] = 0;
    v34 = [v33 submitQuery:v44 withError:v45];
    if (v34)
    {
      v35 = v34;
      v36 = v45[0];
    }

    else
    {
      v35 = v45[0];
      sub_1ABF21BE4();

      swift_willThrow();
    }

    sub_1ABBE4A08(v25);
    sub_1ABBA4F10(v25);
  }

  return v35;
}

uint64_t sub_1ABBE418C(uint64_t a1)
{
  v3 = sub_1ABF23744();
  sub_1ABA7BB64();
  v41 = v4;
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7AC18();
  v40 = v6 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1ABA83850();
  sub_1ABA7BB64();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA7BC58();
  v15 = v14 - v13;
  sub_1ABF23774();
  sub_1ABA7BB64();
  v38 = v17;
  v39 = v16;
  MEMORY[0x1EEE9AC00](v16);
  sub_1ABA7BC58();
  v20 = (v19 - v18);
  v37 = type metadata accessor for LogSignpost(0);
  sub_1ABA7BBB0();
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA7BC58();
  v24 = v23 - v22;
  if (qword_1ED871F20 != -1)
  {
LABEL_19:
    sub_1ABA7D608(&qword_1ED871F20);
  }

  v25 = sub_1ABA7AA24(v9, qword_1ED871EF8);
  (*(v11 + 16))(v15, v25, v9);
  sub_1ABF23754();
  sub_1ABF23764();
  sub_1ABF23714();
  v26 = sub_1ABF23764();
  v27 = sub_1ABF24714();
  if (sub_1ABF247D4())
  {
    sub_1ABA8179C();
    v28 = v3;
    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = sub_1ABF23724();
    _os_signpost_emit_with_name_impl(&dword_1ABA78000, v26, v27, v30, "ECR.TextXPCService.resolveBatch", "", v29, 2u);
    v3 = v28;
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  (*(v41 + 16))(v40, v2, v3);
  sub_1ABF237B4();
  swift_allocObject();
  v31 = sub_1ABF237A4();
  (*(v41 + 8))(v2, v3);
  *v24 = "ECR.TextXPCService.resolveBatch";
  *(v24 + 8) = 31;
  *(v24 + 16) = 2;
  *(v24 + 24) = v31;
  v41 = v24;
  (*(v38 + 32))(v24 + *(v37 + 24), v20, v39);
  v32 = MEMORY[0x1E69E7CC0];
  v43 = MEMORY[0x1E69E7CC0];
  v9 = a1;
  v15 = sub_1ABAAB7C8(a1);
  v2 = 0;
  v11 = a1 & 0xC000000000000001;
  v24 = a1 & 0xFFFFFFFFFFFFFF8;
  while (v15 != v2)
  {
    if (v11)
    {
      v33 = MEMORY[0x1AC5AA170](v2, a1);
    }

    else
    {
      if (v2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v33 = *(a1 + 8 * v2 + 32);
    }

    v20 = v33;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v34 = sub_1ABBE3CF8(v33);
    if (v1)
    {

      break;
    }

    v35 = v34;
    v9 = &v43;
    MEMORY[0x1AC5A9710]();
    v3 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3 >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1ABF24134();
    }

    sub_1ABF24184();

    v32 = v43;
    ++v2;
  }

  sub_1ABBE4A08(v41);
  sub_1ABBA4F10(v41);
  return v32;
}

id sub_1ABBE45EC(uint64_t a1, uint64_t a2)
{
  v51[1] = *MEMORY[0x1E69E9840];
  sub_1ABF23744();
  sub_1ABA7BB64();
  v47 = v4;
  v48 = v3;
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA7AC18();
  v46 = v5 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v42 - v8;
  v10 = sub_1ABF237F4();
  sub_1ABA7BB64();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7BC58();
  v16 = v15 - v14;
  sub_1ABF23774();
  sub_1ABA7BB64();
  v44 = v18;
  v45 = v17;
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA7BC58();
  v21 = v20 - v19;
  v43 = type metadata accessor for LogSignpost(0);
  sub_1ABA7BBB0();
  MEMORY[0x1EEE9AC00](v22);
  sub_1ABA7BC58();
  v25 = v24 - v23;
  if (qword_1ED871F20 != -1)
  {
    sub_1ABA7D608(&qword_1ED871F20);
  }

  v26 = sub_1ABA7AA24(v10, qword_1ED871EF8);
  (*(v12 + 16))(v16, v26, v10);
  sub_1ABF23754();
  sub_1ABF23764();
  sub_1ABF23714();
  v27 = sub_1ABF23764();
  v28 = sub_1ABF24714();
  if (sub_1ABF247D4())
  {
    sub_1ABA8179C();
    v29 = swift_slowAlloc();
    v42[1] = a1;
    v30 = v29;
    *v29 = 0;
    v31 = sub_1ABF23724();
    _os_signpost_emit_with_name_impl(&dword_1ABA78000, v27, v28, v31, "ECR.TextXPCService.mention", "", v30, 2u);
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  v32 = v47;
  v33 = v48;
  (*(v47 + 16))(v46, v9, v48);
  sub_1ABF237B4();
  swift_allocObject();
  v34 = sub_1ABF237A4();
  (*(v32 + 8))(v9, v33);
  *v25 = "ECR.TextXPCService.mention";
  *(v25 + 8) = 26;
  *(v25 + 16) = 2;
  *(v25 + 24) = v34;
  (*(v44 + 32))(v25 + *(v43 + 24), v21, v45);
  v35 = *(v49 + 16);
  v36 = sub_1ABF23BD4();
  v51[0] = 0;
  v37 = [v35 generateMentionsForQuery:v36 error:v51];

  if (v37)
  {
    v38 = v51[0];
  }

  else
  {
    v39 = v51[0];
    v40 = sub_1ABF21BE4();

    v50 = v40;
    swift_willThrow();
  }

  sub_1ABBE4A08(v25);
  sub_1ABBA4F10(v25);
  return v37;
}

uint64_t sub_1ABBE4A08(uint64_t a1)
{
  v2 = sub_1ABF23784();
  sub_1ABA7BB64();
  v23 = v3;
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7BC58();
  v7 = v6 - v5;
  v8 = sub_1ABF23744();
  sub_1ABA7BB64();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA7BC58();
  v14 = v13 - v12;
  type metadata accessor for LogSignpost(0);
  v15 = *a1;
  v16 = *(a1 + 16);
  v17 = sub_1ABF23764();
  sub_1ABF23794();
  v22 = sub_1ABF24704();
  result = sub_1ABF247D4();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v10 + 8))(v14, v8);
  }

  if ((v16 & 1) == 0)
  {
    if (v15)
    {
LABEL_9:

      sub_1ABF237C4();

      if ((*(v23 + 88))(v7, v2) == *MEMORY[0x1E69E93E8])
      {
        v19 = "[Error] Interval already ended";
      }

      else
      {
        (*(v23 + 8))(v7, v2);
        v19 = "";
      }

      sub_1ABA8179C();
      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = sub_1ABF23724();
      _os_signpost_emit_with_name_impl(&dword_1ABA78000, v17, v22, v21, v15, v19, v20, 2u);
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v15 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v15 & 0xFFFFF800) != 0xD800)
  {
    if (v15 >> 16 <= 0x10)
    {
      v15 = &v24;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

void *sub_1ABBE4D4C@<X0>(void *a1@<X8>)
{
  static EntityResolutionConfig.fromResource(configName:)();

  if (sub_1ABBAA37C(v4) != 1)
  {
    return memcpy(a1, v4, 0x8DuLL);
  }

  sub_1ABB32C5C();
  swift_allocError();
  *v2 = xmmword_1ABF47830;
  *(v2 + 16) = 9;
  return swift_willThrow();
}

void static EntityResolutionViewDependencies.loadECRViews()(void *a1@<X8>)
{
  v2 = sub_1ABF21CF4();
  sub_1ABA7BB64();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v36 - v9;
  if (qword_1ED86E3C0 != -1)
  {
    swift_once();
  }

  if (!qword_1ED86E3C8)
  {
    if (qword_1ED871B18 != -1)
    {
      sub_1ABA7BE6C(&qword_1ED871B18);
    }

    v27 = sub_1ABF237F4();
    sub_1ABA7AA24(v27, qword_1ED871B20);
    v28 = sub_1ABF237D4();
    v29 = sub_1ABF24664();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1ABA78000, v28, v29, "Can't find the IntelligencePlatformTestViews bundle", v30, 2u);
      sub_1ABA80A00();
    }

    goto LABEL_20;
  }

  v11 = qword_1ED86E3C8;
  v12 = sub_1ABF23BD4();
  v13 = sub_1ABF23BD4();
  v14 = [v11 URLForResource:v12 withExtension:v13];

  if (!v14)
  {
    if (qword_1ED871B18 != -1)
    {
      sub_1ABA7BE6C(&qword_1ED871B18);
    }

    v31 = sub_1ABF237F4();
    sub_1ABA7AA24(v31, qword_1ED871B20);
    v32 = sub_1ABF237D4();
    v33 = sub_1ABF24664();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1ABA78000, v32, v33, "Failed to get the correct URL for viewDependencies.json", v34, 2u);
      sub_1ABA80A00();
    }

LABEL_20:
    v15 = 0;
    goto LABEL_24;
  }

  sub_1ABF21CA4();

  sub_1ABBA5D18();
  v15 = v39;
  if (v39 == 1)
  {
    v38 = a1;
    if (qword_1ED871B18 != -1)
    {
      sub_1ABA7BE6C(&qword_1ED871B18);
    }

    v16 = sub_1ABF237F4();
    sub_1ABA7AA24(v16, qword_1ED871B20);
    (*(v4 + 16))(v7, v10, v2);
    v17 = sub_1ABF237D4();
    v18 = sub_1ABF24664();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v36 = v19;
      v37 = swift_slowAlloc();
      v39 = v37;
      *v19 = 136315138;
      sub_1ABAE27F8();
      v20 = sub_1ABF24FF4();
      v22 = v21;
      v23 = *(v4 + 8);
      v23(v7, v2);
      v24 = sub_1ABADD6D8(v20, v22, &v39);

      v25 = v36;
      *(v36 + 1) = v24;
      _os_log_impl(&dword_1ABA78000, v17, v18, "Failed to load config data from %s", v25, 0xCu);
      v26 = v37;
      sub_1ABA84B54(v37);
      MEMORY[0x1AC5AB8B0](v26, -1, -1);
      sub_1ABA80A00();

      v23(v10, v2);
    }

    else
    {

      v35 = *(v4 + 8);
      v35(v7, v2);
      v35(v10, v2);
    }

    v15 = 0;
    a1 = v38;
  }

  else
  {
    (*(v4 + 8))(v10, v2);
  }

LABEL_24:
  *a1 = v15;
}

uint64_t ViewsClientSegmentation.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1ABF24D84();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1ABBE53F8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6972616C75706F70 && a2 == 0xEF65726F63537974;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x73746E65696C63 && a2 == 0xE700000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1ABF25054();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1ABBE5510(char a1)
{
  if (!a1)
  {
    return 1701667182;
  }

  if (a1 == 1)
  {
    return 0x6972616C75706F70;
  }

  return 0x73746E65696C63;
}

uint64_t sub_1ABBE5654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABBE53F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABBE567C(uint64_t a1)
{
  v2 = sub_1ABBE6014();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBE56B8(uint64_t a1)
{
  v2 = sub_1ABBE6014();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ViewClientRepresentation.encode(to:)(void *a1)
{
  sub_1ABAD219C(&qword_1EB4D4D20, &qword_1ABF47CF0);
  sub_1ABA7BB64();
  v5 = v4;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v15 = *(v1 + 24);
  v9 = a1[3];
  v10 = a1;
  v12 = v11;
  sub_1ABA93E20(v10, v9);
  sub_1ABBE6014();
  sub_1ABF252E4();
  v19 = 0;
  sub_1ABF24F34();
  if (!v2)
  {
    v13 = v15;
    v18 = 1;
    sub_1ABF24F64();
    v17 = v13;
    v16 = 2;
    sub_1ABAD219C(&qword_1EB4D4D30, &qword_1ABF47CF8);
    sub_1ABBE60BC(&qword_1EB4D4D38, sub_1ABBE6068);
    sub_1ABF24F84();
  }

  return (*(v5 + 8))(v8, v12);
}

uint64_t ViewClientRepresentation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1ABAD219C(&qword_1EB4D4D48, &qword_1ABF47D00);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABBE6014();
  sub_1ABF252C4();
  if (v2)
  {
    return sub_1ABA84B54(a1);
  }

  v6 = sub_1ABF24E14();
  v8 = v7;
  sub_1ABF24E44();
  v10 = v9;
  sub_1ABAD219C(&qword_1EB4D4D30, &qword_1ABF47CF8);
  sub_1ABBE60BC(&qword_1EB4D4D50, sub_1ABBE6124);
  sub_1ABF24E64();
  v12 = sub_1ABA7BFF0();
  v13(v12);
  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = v10;
  *(a2 + 24) = v14;

  sub_1ABA84B54(a1);
}

uint64_t sub_1ABBE5B80(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7377656976 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1ABF25054();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1ABBE5C0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABBE5B80(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1ABBE5C38(uint64_t a1)
{
  v2 = sub_1ABBE6178();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBE5C74(uint64_t a1)
{
  v2 = sub_1ABBE6178();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EntityResolutionViewDependencies.encode(to:)(void *a1)
{
  v3 = sub_1ABAD219C(&qword_1EB4D4D60, &qword_1ABF47D08);
  sub_1ABA7BB64();
  v5 = v4;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v11 - v7;
  v9 = *v1;
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABBE6178();

  sub_1ABF252E4();
  v11[1] = v9;
  sub_1ABAD219C(&qword_1EB4D4D70, &qword_1ABF47D10);
  sub_1ABBE61CC(&qword_1EB4D4D78, sub_1ABBE6234);
  sub_1ABF24F84();

  return (*(v5 + 8))(v8, v3);
}

uint64_t EntityResolutionViewDependencies.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1ABAD219C(&qword_1EB4D4D88, &qword_1ABF47D18);
  sub_1ABA7BB64();
  v7 = v6;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v12 - v9;
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABBE6178();
  sub_1ABF252C4();
  if (!v2)
  {
    sub_1ABAD219C(&qword_1EB4D4D70, &qword_1ABF47D10);
    sub_1ABBE61CC(&qword_1EB4D4D90, sub_1ABBE6288);
    sub_1ABF24E64();
    (*(v7 + 8))(v10, v5);
    *a2 = v12[1];
  }

  return sub_1ABA84B54(a1);
}

unint64_t sub_1ABBE6014()
{
  result = qword_1EB4D4D28;
  if (!qword_1EB4D4D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4D28);
  }

  return result;
}

unint64_t sub_1ABBE6068()
{
  result = qword_1EB4D4D40;
  if (!qword_1EB4D4D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4D40);
  }

  return result;
}

uint64_t sub_1ABBE60BC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1ABAE2850(&qword_1EB4D4D30, &qword_1ABF47CF8);
    a2();
    result = sub_1ABA7E608();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1ABBE6124()
{
  result = qword_1EB4D4D58;
  if (!qword_1EB4D4D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4D58);
  }

  return result;
}

unint64_t sub_1ABBE6178()
{
  result = qword_1EB4D4D68;
  if (!qword_1EB4D4D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4D68);
  }

  return result;
}

uint64_t sub_1ABBE61CC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1ABAE2850(&qword_1EB4D4D70, &qword_1ABF47D10);
    a2();
    result = sub_1ABA7E608();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1ABBE6234()
{
  result = qword_1EB4D4D80;
  if (!qword_1EB4D4D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4D80);
  }

  return result;
}

unint64_t sub_1ABBE6288()
{
  result = qword_1EB4D4D98;
  if (!qword_1EB4D4D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4D98);
  }

  return result;
}

unint64_t sub_1ABBE62E0()
{
  result = qword_1EB4D4DA0;
  if (!qword_1EB4D4DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4DA0);
  }

  return result;
}

_BYTE *sub_1ABBE6358(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ViewClientRepresentation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABBE64E4()
{
  result = qword_1EB4D4DA8;
  if (!qword_1EB4D4DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4DA8);
  }

  return result;
}

unint64_t sub_1ABBE653C()
{
  result = qword_1EB4D4DB0;
  if (!qword_1EB4D4DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4DB0);
  }

  return result;
}

unint64_t sub_1ABBE6594()
{
  result = qword_1EB4D4DB8;
  if (!qword_1EB4D4DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4DB8);
  }

  return result;
}

unint64_t sub_1ABBE65EC()
{
  result = qword_1EB4D4DC0;
  if (!qword_1EB4D4DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4DC0);
  }

  return result;
}

unint64_t sub_1ABBE6644()
{
  result = qword_1EB4D4DC8;
  if (!qword_1EB4D4DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4DC8);
  }

  return result;
}

unint64_t sub_1ABBE669C()
{
  result = qword_1EB4D4DD0;
  if (!qword_1EB4D4DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4DD0);
  }

  return result;
}

unint64_t sub_1ABBE66F0()
{
  result = qword_1EB4D4DD8;
  if (!qword_1EB4D4DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4DD8);
  }

  return result;
}

void sub_1ABBE6748(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v21[3] = a2;
  v21[2] = a1;
  if ((a4 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v7 = 0;
    v22 = a4 & 0xFFFFFFFFFFFFFFLL;
    v20 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
    do
    {
      if ((a4 & 0x1000000000000000) != 0)
      {
        v10 = sub_1ABF24AA4();
      }

      else
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v21[0] = a3;
          v21[1] = v22;
          v10 = *(v21 + v7);
          if (*(v21 + v7) < 0)
          {
            sub_1ABA8BFD4();
            switch(v16)
            {
              case 1:
LABEL_20:
                v10 = v11[1] & 0x3F | ((v10 & 0x1F) << 6);
                v13 = 2;
                break;
              case 2:
LABEL_21:
                v10 = ((v10 & 0xF) << 12) | ((v11[1] & 0x3F) << 6) | v11[2] & 0x3F;
                v13 = 3;
                break;
              case 3:
LABEL_22:
                v10 = ((v10 & 0xF) << 18) | ((v11[1] & 0x3F) << 12) | ((v11[2] & 0x3F) << 6) | v11[3] & 0x3F;
                v13 = 4;
                break;
              default:
                goto LABEL_14;
            }

            goto LABEL_15;
          }
        }

        else
        {
          v8 = v20;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v8 = sub_1ABF24B74();
          }

          v9 = *(v8 + v7);
          v10 = *(v8 + v7);
          if (v9 < 0)
          {
            sub_1ABA8BFD4();
            switch(v12)
            {
              case 1:
                goto LABEL_20;
              case 2:
                goto LABEL_21;
              case 3:
                goto LABEL_22;
              default:
                break;
            }
          }
        }

LABEL_14:
        v13 = 1;
      }

LABEL_15:
      if (v10 > 0x7F)
      {
        v17 = (v10 & 0x3F) << 8;
        if (v10 >= 0x800)
        {
          v18 = (v17 | (v10 >> 6) & 0x3F) << 8;
          v19 = (((v18 | (v10 >> 12) & 0x3F) << 8) | (v10 >> 18)) - 2122219023;
          v14 = (v10 >> 12) + v18 + 8487393;
          if (HIWORD(v10))
          {
            v14 = v19;
          }
        }

        else
        {
          v14 = (v10 >> 6) + v17 + 33217;
        }
      }

      else
      {
        v14 = v10 + 1;
      }

      v7 += v13;
      v21[0] = (v14 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v14) >> 3))));
      v15 = sub_1ABF23D14();
      MEMORY[0x1AC5A9410](v15);
    }

    while (v7 < v4);
  }
}

void sub_1ABBE69B0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  if (_Records_GDEntityClass_records)
  {
    sub_1ABA8882C(*_Records_GDEntityClass_records, *(_Records_GDEntityClass_records + 8), *(_Records_GDEntityClass_records + 8 + 8), v10);
    v8 = v11;
    v9 = v12;

    *a3 = a1;
    *(a3 + 8) = v8;
    *(a3 + 16) = v9;
    bzero((a3 + 24), 0x90uLL);
    *(a3 + 168) = a4;
    *(a3 + 176) = a2;
  }

  else
  {
    __break(1u);
  }
}

void sub_1ABBE6A60()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v4 = v3;
  v22 = sub_1ABF25324();
  MEMORY[0x1EEE9AC00](v22);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[2] = 0;
  v21[3] = 0xE000000000000000;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v8 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v9 = v4;
    v18[1] = v0;
    v10 = 0;
    v19 = (v2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v20 = v2 & 0xFFFFFFFFFFFFFFLL;
    v11 = (v5 + 8);
    do
    {
      if ((v2 & 0x1000000000000000) != 0)
      {
        sub_1ABF24AA4();
        v15 = v14;
      }

      else
      {
        if ((v2 & 0x2000000000000000) != 0)
        {
          v21[0] = v9;
          v21[1] = v20;
          if (*(v21 + v10) < 0)
          {
            sub_1ABA8BFD4();
            switch(v17)
            {
              case 1:
LABEL_20:
                v15 = 2;
                break;
              case 2:
LABEL_21:
                v15 = 3;
                break;
              case 3:
LABEL_22:
                v15 = 4;
                break;
              default:
                goto LABEL_14;
            }

            goto LABEL_15;
          }
        }

        else
        {
          v12 = v19;
          if ((v9 & 0x1000000000000000) == 0)
          {
            v12 = sub_1ABF24B74();
          }

          if (*(v12 + v10) < 0)
          {
            sub_1ABA8BFD4();
            switch(v13)
            {
              case 1:
                goto LABEL_20;
              case 2:
                goto LABEL_21;
              case 3:
                goto LABEL_22;
              default:
                break;
            }
          }
        }

LABEL_14:
        v15 = 1;
      }

LABEL_15:
      sub_1ABF25334();
      v16 = sub_1ABF25304();
      (*v11)(v7, v22);
      if ((v16 & 1) == 0)
      {
        sub_1ABF23D04();
      }

      v10 += v15;
    }

    while (v10 < v8);
  }

  sub_1ABA7BC90();
}

unint64_t sub_1ABBE6CE8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1ABF24D84();

  if (v2 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1ABBE6D3C(char a1)
{
  result = 0x44495F444DLL;
  switch(a1)
  {
    case 1:
      return 0x745F797469746E65;
    case 2:
      return 0x5F7972616D697270;
    case 3:
      v4 = 1936877926;
      goto LABEL_15;
    case 4:
      v3 = 0x656C6464696DLL;
      goto LABEL_10;
    case 5:
      v3 = 0x796C696D6166;
LABEL_10:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6E5F000000000000;
      break;
    case 6:
      result = 0x7361696C61;
      break;
    case 7:
      result = sub_1ABA97AF4();
      break;
    case 8:
      v4 = 1852143205;
LABEL_15:
      result = v4 | 0x616E5F7400000000;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1ABBE6EAC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1ABBE6CE8(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1ABBE6EDC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1ABBE6D3C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1ABBE6F24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABBE6D34(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABBE6F58(uint64_t a1)
{
  v2 = sub_1ABBE92BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBE6F94(uint64_t a1)
{
  v2 = sub_1ABBE92BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1ABBE6FD0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1ABAD219C(&qword_1EB4D4DF8, &unk_1ABF48370);
  sub_1ABA7BB64();
  v7 = v6;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v68 - v9;
  v11 = a1[3];
  v88 = a1;
  sub_1ABA93E20(a1, v11);
  sub_1ABBE92BC();
  sub_1ABF252C4();
  if (v2)
  {
    v89 = v2;
    v13 = 0;
    LODWORD(v14) = 0;
    LODWORD(v87) = 0;
    LODWORD(v15) = 0;
    v16 = 0;
    v5 = 0;
    LODWORD(v17) = 0;
    v18 = 0;
    LODWORD(v86) = 0;
  }

  else
  {
    v13 = v7;
    v87 = a2;
    LOBYTE(v91) = 0;
    sub_1ABAA44F4();
    v17 = sub_1ABF24E94();
    LOBYTE(v91) = 1;
    sub_1ABAA44F4();
    v12 = sub_1ABF24E14();
    v85 = v21;
    v86 = v12;
    sub_1ABAD219C(&qword_1EB4D33A8, &unk_1ABF627B0);
    LOBYTE(v90[0]) = 2;
    sub_1ABBE9A24(&qword_1EB4D4E08, MEMORY[0x1E69E6190], MEMORY[0x1E69E7C88]);
    sub_1ABA80A1C();
    sub_1ABF24E64();
    v22 = v91;
    v84 = v92;
    LOBYTE(v90[0]) = 3;
    v23 = sub_1ABA80A1C();
    sub_1ABAA3848(v23, v24, v25, v26);
    v78 = v7;
    v73 = v22;
    v27 = v91;
    v83 = v92;
    LOBYTE(v90[0]) = 4;
    v28 = sub_1ABA80A1C();
    sub_1ABAA3848(v28, v29, v30, v31);
    v72 = v27;
    v32 = v91;
    v82 = v92;
    LOBYTE(v90[0]) = 5;
    v33 = sub_1ABA80A1C();
    sub_1ABAA3848(v33, v34, v35, v36);
    v71 = v32;
    v15 = v91;
    v81 = v92;
    LOBYTE(v90[0]) = 6;
    v37 = sub_1ABA80A1C();
    sub_1ABAA3848(v37, v38, v39, v40);
    v70 = v91;
    v80 = v92;
    LOBYTE(v90[0]) = 7;
    v41 = sub_1ABA80A1C();
    sub_1ABAA3848(v41, v42, v43, v44);
    v69 = v91;
    v79 = v92;
    LOBYTE(v90[0]) = 8;
    v45 = sub_1ABA80A1C();
    sub_1ABAA3848(v45, v46, v47, v48);
    v89 = 0;
    v14 = v72;
    v49 = v91;
    v78 = v92;
    LOBYTE(v90[0]) = 9;
    sub_1ABBE9310();
    v16 = v10;
    v50 = v89;
    sub_1ABF24E64();
    v89 = v50;
    if (v50)
    {
      v51 = sub_1ABA90004();
      v52(v51);
      sub_1ABA7C0B4();
      sub_1ABA993CC();
      v18 = 1;
    }

    else
    {
      v76 = v92;
      v77 = v91;
      v74 = v94;
      v75 = v93;
      LOBYTE(v91) = 10;
      sub_1ABAA44F4();
      v53 = v89;
      sub_1ABF24E34();
      v89 = v53;
      if (!v53)
      {
        v58 = v54;
        v114[0] = 11;
        v59 = sub_1ABF24E84();
        v89 = 0;
        v60 = v59;
        v61 = sub_1ABA90004();
        v62(v61);
        v90[0] = v17;
        v90[1] = v86;
        v63 = v73;
        v90[2] = v85;
        v90[3] = v73;
        v90[4] = v84;
        v90[5] = v14;
        v90[6] = v83;
        v90[7] = v71;
        v64 = v81;
        v90[8] = v82;
        v90[9] = v15;
        v65 = v15;
        v90[10] = v81;
        v90[11] = v70;
        v66 = v79;
        v67 = v80;
        v90[12] = v80;
        v90[13] = v69;
        v90[14] = v79;
        v90[15] = v49;
        v90[16] = v78;
        v90[17] = v77;
        v90[18] = v76;
        v90[19] = v75;
        v90[20] = v74;
        v90[21] = v58;
        v90[22] = v60;
        sub_1ABB3E248(v90, &v91);
        sub_1ABA84B54(v88);
        v91 = v17;
        v92 = v86;
        v93 = v85;
        v94 = v63;
        v95 = v84;
        v96 = v72;
        v97 = v83;
        v98 = v71;
        v99 = v82;
        v100 = v65;
        v101 = v64;
        v102 = v70;
        v103 = v67;
        v104 = v69;
        v105 = v66;
        v106 = v49;
        v107 = v78;
        v108 = v77;
        v109 = v76;
        v110 = v75;
        v111 = v74;
        v112 = v58;
        v113 = v60;
        sub_1ABB3E2A4(&v91);
        return memcpy(v87, v90, 0xB8uLL);
      }

      v55 = sub_1ABA90004();
      v56(v55);
      v13 = 1;
      sub_1ABA93434();
      v5 = 1;
      LODWORD(v17) = 1;
      v18 = 1;
      LODWORD(v86) = v57;
    }
  }

  result = sub_1ABA84B54(v88);
  if (v13)
  {
    v20 = v86;

    if (v14)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v20 = v86;
    if (v14)
    {
LABEL_6:

      if ((v87 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_16;
    }
  }

  if (!v87)
  {
LABEL_7:
    if (v15)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:

  if (v15)
  {
LABEL_8:

    if ((v16 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  if (!v16)
  {
LABEL_9:
    if (v5)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:

  if (v5)
  {
LABEL_10:

    if ((v17 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

LABEL_19:
  if (!v17)
  {
LABEL_11:
    if (v18)
    {
      goto LABEL_12;
    }

LABEL_21:
    if (!v20)
    {
      return result;
    }

    goto LABEL_22;
  }

LABEL_20:

  if ((v18 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_12:

  if ((v20 & 1) == 0)
  {
    return result;
  }

LABEL_22:
}

uint64_t sub_1ABBE76B4(void *a1)
{
  v4 = sub_1ABAD219C(&qword_1EB4D4E18, &qword_1ABF48380);
  sub_1ABA7BB64();
  v6 = v5;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA83634();
  sub_1ABA93E20(a1, a1[3]);
  v8 = sub_1ABBE92BC();
  sub_1ABAA28BC(&unk_1F20849C8, v9, v8);
  sub_1ABA88A3C();
  sub_1ABF24FB4();
  if (!v1)
  {
    sub_1ABA8F2C4(1);
    sub_1ABF24F34();
    sub_1ABA8F2C4(2);
    sub_1ABF24ED4();
    sub_1ABA8F2C4(3);
    sub_1ABF24ED4();
    sub_1ABA8F2C4(4);
    sub_1ABF24ED4();
    sub_1ABA8F2C4(5);
    sub_1ABF24ED4();
    sub_1ABA8F2C4(6);
    sub_1ABF24ED4();
    sub_1ABA8F2C4(7);
    sub_1ABF24ED4();
    sub_1ABA8F2C4(8);
    sub_1ABF24ED4();
    sub_1ABBE9364();
    sub_1ABA88A3C();
    sub_1ABF24F84();
    sub_1ABA88A3C();
    sub_1ABF24F54();
    sub_1ABA88A3C();
    sub_1ABF24FA4();
  }

  return (*(v6 + 8))(v2, v4);
}

unint64_t sub_1ABBE790C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1ABF24D84();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1ABBE7958(char a1)
{
  result = 0x656C706F6570;
  switch(a1)
  {
    case 1:
      result = sub_1ABA97AF4();
      break;
    case 2:
      result = 0x73746E657665;
      break;
    case 3:
      result = 0x616C6C656373696DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABBE79D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABBE9268();

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1ABBE7A34()
{
  v0 = *aEntitySummary;

  return v0;
}

void *sub_1ABBE7A6C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1ABBE6FD0(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0xB8uLL);
  }

  return result;
}

unint64_t sub_1ABBE7AF4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1ABBE790C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1ABBE7B24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1ABBE7958(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1ABBE7B58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABBE790C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABBE7B8C(uint64_t a1)
{
  v2 = sub_1ABBE9908();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBE7BC8(uint64_t a1)
{
  v2 = sub_1ABBE9908();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1ABBE7C04()
{
  sub_1ABA7BCA8();
  v73 = v3;
  v74 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_1ABF23C54();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v75 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1ABAD219C(&qword_1EB4D4E90, &qword_1ABF486D0);
  sub_1ABA7BB64();
  v76 = v13;
  v77 = v12;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA83634();
  sub_1ABF21854();
  swift_allocObject();
  v15 = sub_1ABF21844();
  sub_1ABA93E20(v9, v9[3]);
  sub_1ABBE9908();
  sub_1ABF252E4();
  if (!v7)
  {
    v21 = v77;
    if (!v5)
    {
      goto LABEL_8;
    }

    goto LABEL_5;
  }

  v78 = v7;
  sub_1ABAD219C(&qword_1EB4D3398, &unk_1ABF3C150);
  sub_1ABA7D63C();
  sub_1ABBE995C(v16, v17, v18, MEMORY[0x1E69E6300]);
  v19 = sub_1ABF21834();
  if (!v0)
  {
    v35 = v19;
    v36 = v20;
    v72 = v15;
    sub_1ABF23C44();
    v37 = sub_1ABF23C24();
    v39 = v38;
    sub_1ABA96210(v35, v36);
    v40 = objc_autoreleasePoolPush();
    v78 = v37;
    v79 = v39;
    sub_1ABAD219C(&qword_1EB4D33A8, &unk_1ABF627B0);
    sub_1ABA8E82C(&qword_1EB4D4EA8, MEMORY[0x1E69E6160]);
    sub_1ABA8E200();
    v21 = v77;
    sub_1ABAA52D4();
    sub_1ABAA2598(v41, v42, v43);

    objc_autoreleasePoolPop(v40);
    if (!v5)
    {
      goto LABEL_8;
    }

LABEL_5:
    v78 = v5;
    sub_1ABAD219C(&qword_1EB4D3398, &unk_1ABF3C150);
    sub_1ABA7D63C();
    v25 = sub_1ABBE995C(v22, v23, v24, MEMORY[0x1E69E6300]);
    sub_1ABAA4DCC(v25);
    if (v0)
    {
      goto LABEL_14;
    }

    sub_1ABAA3C7C();
    sub_1ABA8B114();
    v26 = sub_1ABF23C24();
    v28 = v27;
    v29 = sub_1ABA8B114();
    sub_1ABA96210(v29, v30);
    v31 = objc_autoreleasePoolPush();
    v78 = v26;
    v79 = v28;
    sub_1ABAD219C(&qword_1EB4D33A8, &unk_1ABF627B0);
    sub_1ABA8E82C(&qword_1EB4D4EA8, MEMORY[0x1E69E6160]);
    sub_1ABA8E200();
    sub_1ABAA52D4();
    sub_1ABAA2598(v32, v33, v34);

    objc_autoreleasePoolPop(v31);
LABEL_8:
    if (!v74)
    {
LABEL_11:
      if (v73)
      {
        v78 = v73;
        sub_1ABAD219C(&qword_1EB4D3398, &unk_1ABF3C150);
        sub_1ABA7D63C();
        v60 = sub_1ABBE995C(v57, v58, v59, MEMORY[0x1E69E6300]);
        v61 = sub_1ABAA4DCC(v60);
        if (!v0)
        {
          v63 = v61;
          v64 = v62;
          sub_1ABF23C44();
          v65 = sub_1ABF23C24();
          v66 = v21;
          v68 = v67;
          sub_1ABA96210(v63, v64);
          v69 = objc_autoreleasePoolPush();
          v78 = v65;
          v79 = v68;
          sub_1ABAD219C(&qword_1EB4D33A8, &unk_1ABF627B0);
          sub_1ABA8E82C(&qword_1EB4D4EA8, MEMORY[0x1E69E6160]);
          v70 = sub_1ABA8E200();
          sub_1ABAA2598(v70, v71, v66);

          objc_autoreleasePoolPop(v69);
          v21 = v77;
        }
      }

      goto LABEL_14;
    }

    v78 = v74;
    sub_1ABAD219C(&qword_1EB4D3398, &unk_1ABF3C150);
    sub_1ABA7D63C();
    v47 = sub_1ABBE995C(v44, v45, v46, MEMORY[0x1E69E6300]);
    sub_1ABAA4DCC(v47);
    if (!v0)
    {
      sub_1ABAA3C7C();
      sub_1ABA8B114();
      v48 = sub_1ABF23C24();
      v50 = v49;
      v51 = sub_1ABA8B114();
      sub_1ABA96210(v51, v52);
      v53 = objc_autoreleasePoolPush();
      v78 = v48;
      v79 = v50;
      sub_1ABAD219C(&qword_1EB4D33A8, &unk_1ABF627B0);
      sub_1ABA8E82C(&qword_1EB4D4EA8, MEMORY[0x1E69E6160]);
      sub_1ABA8E200();
      sub_1ABAA52D4();
      sub_1ABAA2598(v54, v55, v56);

      objc_autoreleasePoolPop(v53);
      goto LABEL_11;
    }

LABEL_14:

    goto LABEL_15;
  }

  v21 = v77;
LABEL_15:
  (*(v76 + 8))(v1, v21);
  sub_1ABA7BC90();
}

void sub_1ABBE81BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1ABA7BCA8();
  v84 = v10;
  v12 = v11;
  v13 = sub_1ABF23C54();
  sub_1ABA7BB64();
  v83 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1ABAD219C(&qword_1EB4D4E70, &unk_1ABF486C0);
  sub_1ABA7BB64();
  v19 = v18;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v20);
  sub_1ABA93E20(v12, v12[3]);
  sub_1ABBE9908();
  v21 = v84;
  sub_1ABF252C4();
  if (v21)
  {
    sub_1ABA84B54(v12);
  }

  else
  {
    v81 = v13;
    v82 = v17;
    v22 = v83;
    v84 = v19;
    sub_1ABF217F4();
    swift_allocObject();
    sub_1ABF217E4();
    LOBYTE(a10) = 0;
    sub_1ABAA600C();
    v80 = v12;
    if (v23)
    {
      v24 = v82;
      sub_1ABF23C44();
      sub_1ABAA52D4();
      v25 = sub_1ABF23C14();
      v27 = v26;

      (*(v22 + 8))(v24, v81);
      if (v27 >> 60 == 15)
      {
        v79 = 0;
      }

      else
      {
        sub_1ABAD219C(&qword_1EB4D3398, &unk_1ABF3C150);
        sub_1ABA7F164();
        sub_1ABBE995C(v28, v29, v30, MEMORY[0x1E69E6330]);
        sub_1ABA840B8();
        sub_1ABAA52D4();
        sub_1ABA957F4(v31, v32, v33, v34, v35);
        sub_1ABAC9310(v25, v27);
        v79 = a10;
      }
    }

    else
    {
      v79 = 0;
    }

    sub_1ABAA600C();
    v36 = v82;
    if (v37)
    {
      sub_1ABF23C44();
      sub_1ABAA52D4();
      v38 = sub_1ABF23C14();
      v40 = v39;

      v41 = sub_1ABAA30A8();
      v42(v41);
      if (v40 >> 60 != 15)
      {
        sub_1ABAD219C(&qword_1EB4D3398, &unk_1ABF3C150);
        sub_1ABA7F164();
        sub_1ABBE995C(v43, v44, v45, MEMORY[0x1E69E6330]);
        sub_1ABA840B8();
        sub_1ABAA52D4();
        sub_1ABA957F4(v46, v47, v48, v49, v50);
        sub_1ABAC9310(v38, v40);
      }
    }

    sub_1ABAA600C();
    if (v51)
    {
      sub_1ABF23C44();
      v83 = sub_1ABF23C14();
      v53 = v52;

      v54 = sub_1ABAA30A8();
      v55(v54);
      if (v53 >> 60 != 15)
      {
        v57 = sub_1ABAD219C(&qword_1EB4D3398, &unk_1ABF3C150);
        sub_1ABA7F164();
        sub_1ABBE995C(v58, v59, v60, MEMORY[0x1E69E6330]);
        v61 = sub_1ABA840B8();
        sub_1ABA957F4(v61, v83, v53, v57, v62);
        sub_1ABAC9310(v83, v53);
      }
    }

    v56 = sub_1ABAA600C();
    if (v63 && (v83 = v56, sub_1ABF23C44(), v78 = sub_1ABF23C14(), v83 = v64, , (*(v22 + 8))(v36, v81), v65 = v83, v83 >> 60 != 15))
    {
      v68 = sub_1ABAD219C(&qword_1EB4D3398, &unk_1ABF3C150);
      sub_1ABA7F164();
      sub_1ABBE995C(v69, v70, v71, MEMORY[0x1E69E6330]);
      v72 = sub_1ABA840B8();
      v73 = v78;
      sub_1ABA957F4(v72, v78, v65, v68, v74);
      v75 = sub_1ABA7E628();
      v76(v75);
      sub_1ABAC9310(v73, v65);
    }

    else
    {
      v66 = sub_1ABA7E628();
      v67(v66);
    }

    sub_1ABA84B54(v80);
  }

  sub_1ABA7BC90();
}

void sub_1ABBE8894(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  sub_1ABBE81BC(a1, a2, a3, a4, a5, a6, a7, a8, v15, v16);
  if (!v9)
  {
    *a9 = v11;
    a9[1] = v12;
    a9[2] = v13;
    a9[3] = v14;
  }
}

uint64_t sub_1ABBE88E4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1ABF24D84();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ABBE8938(char a1)
{
  if (a1)
  {
    return 0x7361696C61;
  }

  else
  {
    return 0x44495F444DLL;
  }
}

uint64_t sub_1ABBE8984@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1ABBE88E4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1ABBE89B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1ABBE8938(*v1);
  *a1 = result;
  a1[1] = 0xE500000000000000;
  return result;
}

uint64_t sub_1ABBE8A04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABBE88E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABBE8A2C(uint64_t a1)
{
  v2 = sub_1ABBE93B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBE8A68(uint64_t a1)
{
  v2 = sub_1ABBE93B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABBE8AA4()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 40);
  }

  else
  {
    v1 = sub_1ABBE8B04(v0);
    *(v0 + 40) = v1;
  }

  return v1;
}

uint64_t sub_1ABBE8B04(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  sub_1ABBE8B58(a1, &v4);
  objc_autoreleasePoolPop(v2);
  return v4;
}

uint64_t sub_1ABBE8B58@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1ABE85170(*(a1 + 24), *(a1 + 32));
  sub_1ABF23C84();

  sub_1ABBE6A60();
  sub_1ABBE6748(0, 0xE000000000000000, v3, v4);
  v6 = v5;
  v8 = v7;

  sub_1ABE84B8C(v6, v8);

  v9 = sub_1ABF23C84();
  v11 = v10;

  v23[0] = v9;
  v23[1] = v11;
  sub_1ABAE28EC();
  v12 = sub_1ABF248E4();

  v14 = 0;
  v24 = MEMORY[0x1E69E7CD0];
  v15 = *(v12 + 16);
  for (i = (v12 + 56); ; i += 4)
  {
    if (v15 == v14)
    {

      *a2 = v24;
      return result;
    }

    if (v14 >= *(v12 + 16))
    {
      break;
    }

    ++v14;
    v17 = *(i - 1);
    v18 = *i;
    v20 = *(i - 3);
    v19 = *(i - 2);

    v21 = MEMORY[0x1AC5A9330](v20, v19, v17, v18);
    sub_1ABB1840C(v23, v21, v22);
  }

  __break(1u);
  return result;
}

uint64_t sub_1ABBE8D20()
{
  v1 = sub_1ABBE8AA4();
  if (qword_1ED86BA08 != -1)
  {
    swift_once();
  }

  *(v0 + 40) = sub_1ABC10A08(qword_1ED87C3E0, v1);
}

uint64_t sub_1ABBE8DA0()
{

  return v0;
}

uint64_t sub_1ABBE8DC8()
{
  sub_1ABBE8DA0();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABBE8E20(void *a1)
{
  v4 = sub_1ABAD219C(&qword_1EB4D4E38, &qword_1ABF48390);
  sub_1ABA7BB64();
  v6 = v5;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA83634();
  sub_1ABA93E20(a1, a1[3]);
  v8 = sub_1ABBE93B8();
  sub_1ABAA28BC(&unk_1F20883C0, v9, v8);
  sub_1ABF24FB4();
  if (!v1)
  {
    sub_1ABF24F34();
  }

  return (*(v6 + 8))(v2, v4);
}

uint64_t sub_1ABBE8FB4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 184))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABBE8FF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 184) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1ABBE906C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1ABA7BCA8();
  a22 = v25;
  a23 = v26;
  v27 = v23;
  v29 = v28;
  v30 = sub_1ABAD219C(&qword_1EB4D4E28, &qword_1ABF48388);
  sub_1ABA7BB64();
  v32 = v31;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &a9 - v34;
  *(v23 + 40) = 0;
  sub_1ABA93E20(v29, v29[3]);
  sub_1ABBE93B8();
  sub_1ABF252C4();
  if (v24)
  {

    type metadata accessor for EntityWithAlias();
    swift_deallocPartialClassInstance();
  }

  else
  {
    a13 = 0;
    *(v23 + 16) = sub_1ABF24E94();
    a12 = 1;
    v36 = sub_1ABF24E14();
    v38 = v37;
    (*(v32 + 8))(v35, v30);
    *(v27 + 24) = v36;
    *(v27 + 32) = v38;
  }

  sub_1ABA84B54(v29);
  sub_1ABA7BC90();
}

uint64_t sub_1ABBE9218@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1ABBE8F5C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1ABBE9268()
{
  result = qword_1EB4D4DF0;
  if (!qword_1EB4D4DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4DF0);
  }

  return result;
}

unint64_t sub_1ABBE92BC()
{
  result = qword_1EB4D4E00;
  if (!qword_1EB4D4E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4E00);
  }

  return result;
}

unint64_t sub_1ABBE9310()
{
  result = qword_1EB4D4E10;
  if (!qword_1EB4D4E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4E10);
  }

  return result;
}

unint64_t sub_1ABBE9364()
{
  result = qword_1EB4D4E20;
  if (!qword_1EB4D4E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4E20);
  }

  return result;
}

unint64_t sub_1ABBE93B8()
{
  result = qword_1EB4D4E30;
  if (!qword_1EB4D4E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4E30);
  }

  return result;
}

_BYTE *sub_1ABBE940C(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for KTSSegmentRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
    if (a2 + 11 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 11) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1ABBE956C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1ABBE9644(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABBE9698(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1ABBE96FC()
{
  result = qword_1EB4D4E40;
  if (!qword_1EB4D4E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4E40);
  }

  return result;
}

unint64_t sub_1ABBE9754()
{
  result = qword_1EB4D4E48;
  if (!qword_1EB4D4E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4E48);
  }

  return result;
}

unint64_t sub_1ABBE97AC()
{
  result = qword_1EB4D4E50;
  if (!qword_1EB4D4E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4E50);
  }

  return result;
}

unint64_t sub_1ABBE9804()
{
  result = qword_1EB4D4E58;
  if (!qword_1EB4D4E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4E58);
  }

  return result;
}

unint64_t sub_1ABBE985C()
{
  result = qword_1EB4D4E60;
  if (!qword_1EB4D4E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4E60);
  }

  return result;
}

unint64_t sub_1ABBE98B4()
{
  result = qword_1EB4D4E68;
  if (!qword_1EB4D4E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4E68);
  }

  return result;
}

unint64_t sub_1ABBE9908()
{
  result = qword_1EB4D4E78;
  if (!qword_1EB4D4E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4E78);
  }

  return result;
}

uint64_t sub_1ABBE995C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1ABAE2850(&qword_1EB4D3398, &unk_1ABF3C150);
    sub_1ABBE99E4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1ABBE99E4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for EntityWithAlias();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1ABBE9A24(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1ABAE2850(&qword_1EB4D33A8, &unk_1ABF627B0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *sub_1ABBE9A90(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1ABBE9B6C()
{
  result = qword_1EB4D4EB0;
  if (!qword_1EB4D4EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4EB0);
  }

  return result;
}

unint64_t sub_1ABBE9BC4()
{
  result = qword_1EB4D4EB8;
  if (!qword_1EB4D4EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4EB8);
  }

  return result;
}

unint64_t sub_1ABBE9C1C()
{
  result = qword_1EB4D4EC0;
  if (!qword_1EB4D4EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4EC0);
  }

  return result;
}

uint64_t sub_1ABBE9C74(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  *(v3 + 24) = 0;
  *(v3 + 32) = 1;
  *(v3 + 16) = [objc_allocWithZone(MEMORY[0x1E69C5D38]) initWithCountLimit_];
  *(v3 + 24) = a2;
  *(v3 + 32) = a3 & 1;
  if (qword_1ED871B38 != -1)
  {
    swift_once();
  }

  v8 = sub_1ABF237F4();
  sub_1ABA7AA24(v8, qword_1ED871B40);
  v9 = sub_1ABF237D4();
  v10 = sub_1ABF24654();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 134218242;
    *(v11 + 4) = a1;
    *(v11 + 12) = 2080;
    sub_1ABAD219C(&qword_1EB4D4C68, &unk_1ABF478A0);
    v13 = sub_1ABF23C74();
    v15 = sub_1ABADD6D8(v13, v14, &v17);

    *(v11 + 14) = v15;
    _os_log_impl(&dword_1ABA78000, v9, v10, "MemoryCache initiated with countLimit = %ld and expireAfterHours = %s.", v11, 0x16u);
    sub_1ABA84B54(v12);
    MEMORY[0x1AC5AB8B0](v12, -1, -1);
    MEMORY[0x1AC5AB8B0](v11, -1, -1);
  }

  return v4;
}

id sub_1ABBE9E34(uint64_t a1)
{
  v3 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v24 - v4;
  v6 = sub_1ABF21EB4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  v13 = sub_1ABAD219C(&qword_1EB4D4ED8, &qword_1ABF48948);
  v14 = objc_allocWithZone(v13);
  v15 = MEMORY[0x1E69E7D40];
  *&v14[*((*MEMORY[0x1E69E7D40] & *v14) + 0x68)] = a1;
  v24.receiver = v14;
  v24.super_class = v13;
  v16 = objc_msgSendSuper2(&v24, sel_init);
  v17 = *(v1 + 16);
  v18 = [v17 objectForKey_];
  if (v18)
  {
    v19 = v18;
    sub_1ABBD88DC(v18 + *((*v15 & *v18) + 0x70), v5, &qword_1EB4D9BF0, &qword_1ABF34240);
    if (sub_1ABA7E1E0(v5, 1, v6) == 1)
    {

      sub_1ABAB480C(v5, &qword_1EB4D9BF0, &qword_1ABF34240);
LABEL_9:
      v22 = *(v19 + *((*v15 & *v19) + 0x68));

      return v22;
    }

    (*(v7 + 32))(v12, v5, v6);
    sub_1ABF21EA4();
    v20 = sub_1ABF21E44();
    v21 = *(v7 + 8);
    v21(v9, v6);
    if ((v20 & 1) == 0)
    {
      v21(v12, v6);

      goto LABEL_9;
    }

    [v17 removeObjectForKey_];

    v21(v12, v6);
  }

  else
  {
  }

  return 0;
}

void sub_1ABBEA130(void *a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  objc_allocWithZone(sub_1ABAD219C(qword_1EB4D4EE0, &unk_1ABF48950));
  v8 = sub_1ABBEA224(a1, v6, v7);
  v9 = sub_1ABAD219C(&qword_1EB4D4ED8, &qword_1ABF48948);
  v10 = objc_allocWithZone(v9);
  *&v10[*((*MEMORY[0x1E69E7D40] & *v10) + 0x68)] = a2;
  v12.receiver = v10;
  v12.super_class = v9;
  v11 = objc_msgSendSuper2(&v12, sel_init);
  [v5 setObject:v8 forKey:v11];
}

id sub_1ABBEA224(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = sub_1ABF21EB4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v18 - v14;
  v16 = MEMORY[0x1E69E7D40];
  *(v4 + *((*MEMORY[0x1E69E7D40] & *v4) + 0x68)) = a1;
  if (a3)
  {
    sub_1ABA7B9B4(v4 + *((*v16 & *v4) + 0x70), 1, 1, v9);
LABEL_5:
    v18.receiver = v4;
    v18.super_class = ObjectType;
    return objc_msgSendSuper2(&v18, sel_init);
  }

  result = sub_1ABF21EA4();
  if ((a2 * 3600) >> 64 == (3600 * a2) >> 63)
  {
    sub_1ABF21E24();
    (*(v10 + 8))(v12, v9);
    sub_1ABA7B9B4(v15, 0, 1, v9);
    sub_1ABBD898C(v15, v4 + *((*v16 & *v4) + 0x70), &qword_1EB4D9BF0, &qword_1ABF34240);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_1ABBEA488(uint64_t a1, unint64_t *a2, void *a3, SEL *a4)
{
  v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1ABAFF390(0, a2, a3);
  v8 = sub_1ABF240C4();

  v9 = [v7 *a4];

  return v9;
}

uint64_t EntityResolutionXPCService.__allocating_init(viewService:config:enableSessionLogging:)(void *a1, const void *a2, uint64_t a3)
{
  v3 = a3;
  v6 = swift_allocObject();
  EntityResolutionXPCService.init(viewService:config:enableSessionLogging:)(a1, a2, v3);
  return v6;
}

uint64_t EntityResolutionXPCService.init(viewService:config:enableSessionLogging:)(void *a1, const void *a2, char a3)
{
  v4 = v3;
  memcpy(__dst, a2, 0x8DuLL);
  swift_defaultActor_initialize();
  *(v4 + 112) = 0;
  *(v4 + 288) = a1;
  v7 = a1;
  sub_1ABBA61BC();
  v9 = v8;
  *(v4 + 120) = v8;
  if (sub_1ABBAA37C(__dst) == 1)
  {
    if (*(v9 + 16))
    {

      v10 = sub_1ABA9344C();
      v17 = sub_1ABA94FC8(v10, 0xEA00000000007963, v11, v12, v13, v14, v15, v16, v24[0], v24[1], v24[2], v24[3], v24[4], v24[5], v24[6], v24[7], v24[8], v24[9]);
      if (v18)
      {
        memcpy(__src, (*(v9 + 56) + 144 * v17), 0x8DuLL);
        sub_1ABBA9514(__src, v24);

        v19 = __src[140];
        memcpy((v4 + 128), __src, 0x8DuLL);
        if ((v19 & 1) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_7;
      }
    }

    sub_1ABB32C5C();
    swift_allocError();
    *v22 = 0xD00000000000004ALL;
    *(v22 + 8) = 0x80000001ABF8B030;
    *(v22 + 16) = 7;
    swift_willThrow();

    type metadata accessor for EntityResolutionXPCService();
    sub_1ABA7D1BC();
    swift_defaultActor_destroy();

    swift_deallocPartialClassInstance();
    return v4;
  }

  v20 = __dst[140];
  memcpy((v4 + 128), __dst, 0x8DuLL);
  if (v20 == 1)
  {
LABEL_7:
    sub_1ABAD219C(&qword_1EB4D4EC8, &qword_1ABF48820);
    swift_allocObject();
    *(v4 + 112) = sub_1ABBE9C74(100, 0, 1);
  }

LABEL_8:
  *(v4 + 269) = a3 & 1;
  type metadata accessor for EntityResolutionHandlerPool();
  v21 = swift_allocObject();
  type metadata accessor for EntityResolutionHandlerPool.EntityRerankerHandlerStore();
  swift_allocObject();
  *(v21 + 16) = sub_1ABBABA08();
  *(v4 + 272) = v21;
  type metadata accessor for EntityResolutionServicePool();
  swift_allocObject();
  *(v4 + 280) = sub_1ABBD90C8(v7);
  return v4;
}

uint64_t sub_1ABBEA7D4(uint64_t a1)
{
  *(v2 + 304) = a1;
  *(v2 + 312) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1ABBEA7F4, v1, 0);
}

uint64_t sub_1ABBEA7F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = v9;
  v10 = *(v9[39] + 120);
  switch(v9[38])
  {
    case 1:
      v11 = sub_1ABA90764();
      break;
    case 2:
      v8 = 0xEB00000000797469;
      v11 = sub_1ABA7FC58();
      break;
    case 3:
      v12 = 0x786966657270;
      goto LABEL_8;
    case 4:
      v11 = sub_1ABAA3860();
      break;
    case 5:
      v11 = 0xD000000000000010;
      v8 = 0x80000001ABF7F1A0;
      break;
    case 6:
      v12 = 0x646972627968;
LABEL_8:
      v11 = sub_1ABAA404C(v12);
      break;
    default:
      v8 = 0xEA00000000007963;
      v11 = sub_1ABA9344C();
      break;
  }

  if (*(v10 + 16))
  {
    v13 = sub_1ABA94FC8(v11, v8, a3, a4, a5, a6, a7, a8, v20, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8]);
    v15 = v14;

    if (v15)
    {
      v16 = (*(v10 + 56) + 144 * v13);
      memcpy(v9 + 2, v16, 0x8DuLL);
      memcpy(__dst, v16, 0x8DuLL);
      sub_1ABBA9514((v9 + 2), (v9 + 20));
      sub_1ABBABFF0(__dst);
      memcpy(__dst, v9 + 2, 0x8DuLL);
      sub_1ABBD954C(__dst);
      sub_1ABBA954C((v9 + 2));
      sub_1ABA7BBE0();
      goto LABEL_15;
    }
  }

  else
  {
  }

  sub_1ABB32C5C();
  swift_allocError();
  *v17 = xmmword_1ABF47830;
  *(v17 + 16) = 9;
  swift_willThrow();
  sub_1ABA7BBE0();
LABEL_15:

  return v19();
}

uint64_t sub_1ABBEAA14()
{
  sub_1ABA7BBF8();
  v1[108] = v0;
  v1[107] = v2;
  sub_1ABAD219C(&qword_1EB4D4C48, &unk_1ABF47890);
  v1[109] = sub_1ABA840C8();
  v1[110] = swift_task_alloc();
  v1[111] = swift_task_alloc();
  sub_1ABAD219C(&qword_1EB4D4C50, &unk_1ABF479B0);
  v1[112] = sub_1ABA840C8();
  v1[113] = swift_task_alloc();
  v1[114] = swift_task_alloc();
  v3 = sub_1ABF23744();
  v1[115] = v3;
  sub_1ABA7BBD0(v3);
  v1[116] = v4;
  v1[117] = sub_1ABA840C8();
  v1[118] = swift_task_alloc();
  v1[119] = swift_task_alloc();
  v5 = sub_1ABF237F4();
  v1[120] = v5;
  sub_1ABA7BBD0(v5);
  v1[121] = v6;
  v1[122] = swift_task_alloc();
  v7 = sub_1ABF23774();
  v1[123] = v7;
  sub_1ABA7BBD0(v7);
  v1[124] = v8;
  v1[125] = sub_1ABA840C8();
  v1[126] = swift_task_alloc();
  v1[127] = type metadata accessor for LogSignpost(0);
  v1[128] = sub_1ABA840C8();
  v1[129] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1ABBEAC4C, v0, 0);
}

void sub_1ABBEAC4C()
{
  v479 = v0;
  if (qword_1ED871F20 != -1)
  {
    sub_1ABA7D628();
    swift_once();
  }

  v1 = v0[122];
  v2 = v0[121];
  v457 = sub_1ABA7AA24(v0[120], qword_1ED871EF8);
  v455 = *(v2 + 16);
  v455(v1);
  sub_1ABF23754();
  sub_1ABF23764();
  sub_1ABF23714();
  v3 = sub_1ABF23764();
  v4 = sub_1ABF24714();
  if (sub_1ABF247D4())
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = sub_1ABF23724();
    _os_signpost_emit_with_name_impl(&dword_1ABA78000, v3, v4, v6, "ECR.XPCService.submit", "", v5, 2u);
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  v7 = v0[129];
  v8 = v0[124];
  v465 = v0[123];
  v468 = v0[126];
  v9 = v0[119];
  v10 = v0[118];
  v11 = v0[116];
  v12 = v0[115];
  v471 = v0[127];

  v462 = *(v11 + 16);
  v462(v10, v9, v12);
  sub_1ABF237B4();
  swift_allocObject();
  v13 = sub_1ABA8BFE8();
  v14 = *(v11 + 8);
  v14(v9, v12);
  *v7 = "ECR.XPCService.submit";
  *(v7 + 8) = 21;
  *(v7 + 16) = 2;
  *(v7 + 24) = v13;
  v15 = *(v8 + 32);
  v15(v7 + v471[6], v468, v465);
  Current = CFAbsoluteTimeGetCurrent();
  v17 = 0;
  sub_1ABBAC31C(__src);
  v451 = v14;
  v20 = v462;
  memcpy(v0 + 56, __src, 0x7BuLL);
  v21 = v0;
  if (qword_1ED870770 != -1)
  {
LABEL_93:
    swift_once();
  }

  v23 = v21[60];
  v22 = v21[61];
  v24 = *(qword_1ED87C428 + 16);
  v25 = swift_task_alloc();
  *(v25 + 16) = v23;
  *(v25 + 24) = v22;
  os_unfair_lock_lock((v24 + 24));
  sub_1ABBD8B88((v24 + 16), __dst);
  os_unfair_lock_unlock((v24 + 24));
  if (!v17)
  {
    v26 = v21[108];
    v27 = __dst[0];

    if (*(v26 + 112))
    {

      v28 = sub_1ABBAD864();
      sub_1ABBE9E34(v28);
      sub_1ABA7D1BC();

      v29 = sub_1ABAA57C4();
      sub_1ABBEC1C0(v29, v30, v31);
      goto LABEL_14;
    }

    v34 = sub_1ABA9344C();
    v41 = *(v21[108] + 120);
    v42 = *(v21 + 496);
    v43 = 0xEA00000000007963;
    switch(*(v21 + 496))
    {
      case 1:
        v34 = sub_1ABA90764();
        break;
      case 2:
        v34 = sub_1ABA7FC58();
        v43 = 0xEB00000000797469;
        break;
      case 3:
        v44 = 0x786966657270;
        goto LABEL_24;
      case 4:
        v34 = sub_1ABAA3860();
        break;
      case 5:
        v34 = 0xD000000000000010;
        v43 = 0x80000001ABF7F1A0;
        break;
      case 6:
        v44 = 0x646972627968;
LABEL_24:
        v34 = sub_1ABAA404C(v44);
        break;
      default:
        break;
    }

    v470 = v21;
    if (*(v41 + 16))
    {
      v45 = sub_1ABA94FC8(v34, v43, v35, v36, v37, v38, v39, v40, v238, v246, v254, v262, v271, v280, v289, v298, v308, v318);
      v47 = v46;

      if (v47)
      {
        v281 = v26;
        v290 = v42;
        v366 = v27;
        v48 = *(v470 + 976);
        v49 = *(v470 + 960);
        v50 = *(v470 + 912);
        v436 = *(v470 + 888);
        v51 = (*(v41 + 56) + 144 * v45);
        v52 = v470;
        memcpy((v470 + 16), v51, 0x8DuLL);
        v442 = type metadata accessor for EntityAliasView(0);
        sub_1ABA7B9B4(v50, 1, 1, v442);
        v53 = type metadata accessor for LemmatizedSubgraphView(0);
        v54 = v436;
        v437 = v53;
        sub_1ABA7B9B4(v54, 1, 1, v53);
        (v455)(v48, v457, v49);
        sub_1ABBA9514(v52 + 16, v52 + 160);
        sub_1ABF23754();
        sub_1ABF23764();
        sub_1ABF23714();
        v55 = sub_1ABF23764();
        v56 = sub_1ABF24714();
        if (sub_1ABF247D4())
        {
          v52 = swift_slowAlloc();
          *v52 = 0;
          v57 = sub_1ABF23724();
          _os_signpost_emit_with_name_impl(&dword_1ABA78000, v55, v56, v57, "ECR.XPCService.loadViews", "", v52, 2u);
          sub_1ABAA602C();
          sub_1ABA7BDD8();
          MEMORY[0x1AC5AB8B0]();
        }

        v58 = *(v52 + 1024);
        v59 = *(v52 + 1000);
        v459 = *(v52 + 984);
        v60 = *(v52 + 944);
        v61 = *(v52 + 936);
        v62 = *(v52 + 920);
        v63 = *(v52 + 864);

        v20(v60, v61, v62);
        swift_allocObject();
        v64 = sub_1ABA8BFE8();
        v451(v61, v62);
        *v58 = "ECR.XPCService.loadViews";
        *(v58 + 8) = 24;
        *(v58 + 16) = 2;
        *(v58 + 24) = v64;
        v65 = (v15)(v58 + v471[6], v59, v459);
        v20 = *(v63 + 288);
        ViewService.peopleSubgraphView.getter(v65, v66, v67, v68, v69, v70, v71, v72, v239, v247, v255, v263, v272, v281, v290, v299, v309, v319, v327, v336, v345, v352);
        v410 = __dst[0];
        v416 = __dst[1];
        v420 = __dst[2];
        v424 = __dst[3];
        v428 = __dst[4];
        v432 = __dst[5];
        v77 = __dst[6];
        v21 = v470;
        memcpy(__dst, (v470 + 448), 0x7BuLL);
        sub_1ABBBAAB4();
        v359 = v77;
        if (v78)
        {
          v464 = 0;
          v467 = 0;
          v457 = 0;
          v461 = 0;
          v454 = 0;
          v455 = 0;
          v451 = 0;
        }

        else
        {
          sub_1ABA83870();
          ViewService.entitySubgraphView.getter(v79, v80, v81, v82, v83, v84, v85, v86, v238, v246, v254, v262, v271, v280, v289, v298, v308, v318, v327, v336, v345, v352);
          v464 = __dst[1];
          v467 = __dst[0];
          v457 = __dst[3];
          v461 = __dst[2];
          v454 = __dst[5];
          v455 = __dst[4];
          v451 = __dst[6];
        }

        v87 = *(v470 + 136);
        v88 = *(v470 + 153);
        v396 = *(v470 + 154);
        v89 = *(v87 + 16);
        if (v89)
        {
          v403 = *(v470 + 153);
          v471 = *(v470 + 864);

          v469 = 0;
          v90 = 0;
          v15 = &unk_1ABF479B0;
          v446 = v89;
          while (1)
          {
            if (v90 >= *(v87 + 16))
            {
              __break(1u);
              goto LABEL_93;
            }

            v91 = *(v87 + v90 + 32);
            if (!(v91 >> 6))
            {
              break;
            }

            if (v91 >> 6 != 1)
            {
              if (v91 != 128)
              {
                v17 = 0;
                if (v91 == 129)
                {
                  v102 = sub_1ABBD8DC0();
                }

                else
                {
                  v102 = sub_1ABBD8D2C();
                }

                v103 = v102;

                v469 = v103;
              }

              goto LABEL_54;
            }

            v21[105] = &type metadata for Features.FeatureFlag;
            v21[106] = sub_1ABA8488C();
            *(v21 + 816) = 25;
            v92 = sub_1ABF220A4();
            sub_1ABA84B54(v21 + 102);
            if (v92)
            {
              sub_1ABA83870();
              ViewService.lemmatizedSubgraphView.getter(v93);
              if (v17)
              {
                v145 = v21[128];
                sub_1ABBA954C((v21 + 2));

                sub_1ABE53C00(v145);
                sub_1ABBA4F10(v145);
                static BackgroundSystemTaskUtilities.reportFeatureCheckpoint(state:)(10);
                v73 = v21[129];
                v146 = v21[114];
                v147 = v21[111];
                swift_willThrow();
                sub_1ABA817E8();
                sub_1ABA9A3D8();
                v152 = sub_1ABBD892C(v148, v149, v150, v151);
                sub_1ABAA28DC(v152, v153, v154, v155, v156, v157, v158, v159, v238, v246, v254, v262, v271, v280, v289, v298, v308, v318, v327, v336, v345, v352, v359, v366, v372, 0, 0, 0, 0, 0, v410, v416, v420, v424, v428, v432, 0, 0, 0);

                v160 = swift_unknownObjectRelease();
                v168 = sub_1ABA8F2DC(v160, v161, v162, v163, v164, v165, v166, v167, v242, v250, v258, v267, v276, v285, v294, v304, v314, v323, v332, v341, v348, v355, v362, v368, v374, v379, v386, v392, v399, v406, v412, v418, v422, v426, v430, v434, v440, v444, v449, v451, v454, v455, v457, v461, v464, v467);
                sub_1ABBD892C(v168, v169, v170, v171);

                v180 = sub_1ABA7E63C(v172, v173, v174, v175, v176, v177, v178, v179, v243, v251, v259, v268, v277, v286, v295, v305, v315, v324, v333, v342, v349, v356, v363, v369, v375, v380, v387, v393, v400, v407, v413);
                sub_1ABBD892C(v180, v181, v182, v183);
                sub_1ABAB480C(v147, &qword_1EB4D4C48, &unk_1ABF47890);
                sub_1ABAB480C(v146, &qword_1EB4D4C50, &unk_1ABF479B0);
                goto LABEL_32;
              }

              v94 = v21[111];
              v17 = v21[110];
              sub_1ABAB480C(v94, &qword_1EB4D4C48, &unk_1ABF47890);
              sub_1ABA7B9B4(v17, 0, 1, v437);
              v95 = v17;
              v96 = v94;
              v97 = &qword_1EB4D4C48;
              v89 = v446;
              v98 = &unk_1ABF47890;
              goto LABEL_51;
            }

LABEL_54:
            if (v89 == ++v90)
            {

              v88 = v403;
              goto LABEL_57;
            }
          }

          sub_1ABA83870();
          ViewService.entityAliasView.getter(v99);
          v100 = v21[114];
          if (v17)
          {
            v21 = *(v470 + 904);

            sub_1ABAB480C(v100, &qword_1EB4D4C50, &unk_1ABF479B0);
            v101 = sub_1ABAA602C();
            sub_1ABA7B9B4(v101, 1, 1, v442);
          }

          else
          {
            sub_1ABAB480C(v21[114], &qword_1EB4D4C50, &unk_1ABF479B0);
          }

          v96 = v21[114];
          v95 = v21[113];
          v97 = &qword_1EB4D4C50;
          v98 = &unk_1ABF479B0;
LABEL_51:
          sub_1ABBD898C(v95, v96, v97, v98);
          goto LABEL_54;
        }

        v469 = 0;
LABEL_57:
        if (v88)
        {
          sub_1ABA83870();
          sub_1ABB68E60();
          if (!v17)
          {
            v104 = v21[95];
            v105 = v21[96];
            v106 = v21[97];
            v107 = v21[98];
            v108 = v21[99];
            v109 = v21[100];
            v110 = v21[101];
LABEL_61:
            v404 = v110;
            v21[88] = v104;
            v21[89] = v105;
            v21[90] = v106;
            v21[91] = v107;
            v21[92] = v108;
            v21[93] = v109;
            v21[94] = v110;
            v438 = v109;
            if (v396)
            {
              LOBYTE(__dst[0]) = 1;
              v111 = type metadata accessor for ViewService();
              v112 = static ViewService.clientService.getter(v111);
              type metadata accessor for EntityResolutionRankingService();
              swift_allocObject();
              v17 = 0;
              v381 = EntityResolutionRankingService.init(config:viewService:)(__dst, v112);
            }

            else
            {
              v381 = 0;
            }

            if (*(v21 + 568) == 1)
            {
              sub_1ABA83870();
              ViewService.inferenceFeatureView.getter(v113);
              if (!v17)
              {
                v390 = __dst[1];
                v397 = __dst[0];
                v447 = __dst[2];
                goto LABEL_68;
              }
            }

            v390 = 0;
            v397 = 0;
            v447 = 0;
LABEL_68:
            sub_1ABA83870();
            ViewService.visualIdentifierView()(v114);
            v337 = v106;
            if (v116)
            {

              v384 = 0;
            }

            else
            {
              v384 = v115;
            }

            v117 = v21[128];
            v118 = *(v470 + 912);
            v119 = *(v470 + 896);
            v300 = *(v470 + 888);
            v472 = *(v470 + 872);
            v310 = *(v470 + 864);
            sub_1ABE53C00(v117);
            sub_1ABBA4F10(v117);
            v328 = type metadata accessor for EntityResolutionRequestManager();
            memcpy(v474, (v470 + 448), 0x7BuLL);
            memcpy(__dst, (v470 + 16), 0x8DuLL);
            v120 = sub_1ABAA602C();
            sub_1ABBD88DC(v120, v119, v121, v122);
            v476[0] = v410;
            v476[1] = v416;
            v476[2] = v420;
            v476[3] = v424;
            v476[4] = v428;
            v476[5] = v432;
            v476[6] = v359;
            v477[0] = v397;
            v477[1] = v390;
            v477[2] = v447;
            v478[0] = v467;
            v478[1] = v464;
            v478[2] = v461;
            v478[3] = v457;
            v478[4] = v455;
            v478[5] = v454;
            v478[6] = v451;
            sub_1ABBD88DC(v300, v472, &qword_1EB4D4C48, &unk_1ABF47890);
            LODWORD(v310) = *(v310 + 269);
            sub_1ABBA9514(v118 + 16, v118 + 304);
            sub_1ABBC3BC8(v118 + 448, v118 + 576);
            sub_1ABBDAB5C(v410);
            v123 = v105;
            sub_1ABA9A3D8();
            sub_1ABBDAB5C(v124);
            sub_1ABBD8A4C(v397, v390);
            v125 = v469;
            v126 = v381;

            v135 = sub_1ABA8F2DC(v127, v128, v129, v130, v131, v132, v133, v134, v238, v246, v254, v262, v271, v280, v289, v300, v310, v119, v328, v337, v105, v104, v359, v366, v107, v381, v384, v390, v397, v404, v410, v416, v420, v424, v428, v432, v438, v108, v447, v451, v454, v455, v457, v461, v464, v467);
            sub_1ABBDAB5C(v135);
            v136 = swift_unknownObjectRetain();
            LOBYTE(v264) = v311;
            sub_1ABBD6180(v474, __dst, v320, v476, v118 + 704, v477, v126, v469, v478, v472, v136, v264, v273, v282, v291, v301, v311, v320, v329, v338, v346, v353, v360);

            sub_1ABBD2C28(v137, v138, v139, v140, v141, v142, v143, v144, v240, v248, v256, v265, v274, v283, v292, v302, v312, v321, v330, v339);
            v185 = v184;

            v186 = *(v185 + 16);
            if (v186)
            {
              v474[0] = MEMORY[0x1E69E7CC0];
              sub_1ABF24BC4();
              v187 = 32;
              sub_1ABAA4DEC();
              do
              {
                memcpy(__dst, (v185 + v187), 0x58uLL);
                sub_1ABBAE1B4();
                sub_1ABF24B94();
                sub_1ABF24BD4();
                sub_1ABF24BE4();
                sub_1ABF24BA4();
                v187 += 88;
                --v186;
              }

              while (v186);

              v188 = v474[0];
              v118 = v470;
              v189 = 0xEA00000000007963;
            }

            else
            {

              v188 = MEMORY[0x1E69E7CC0];
              v189 = 0xEA00000000007963;
              sub_1ABAA4DEC();
            }

            sub_1ABAFF390(0, &unk_1ED86B938, off_1E795FEB8);
            v190 = sub_1ABBEA488(v188, &qword_1ED86B970, off_1E7960338, &selRef_initWithRankedResults_);
            sub_1ABBA954C(v118 + 16);
            if ((*(v118 + 156) & 1) != 0 && *(v284 + 112))
            {

              v191 = sub_1ABBAD864();
              sub_1ABBEA130(v190, v191);
            }

            static BackgroundSystemTaskUtilities.reportFeatureCheckpoint(state:)(70);
            v192 = [v190 rankedResults];
            sub_1ABAFF390(0, &qword_1ED86B970, off_1E7960338);
            v193 = sub_1ABF240D4();

            sub_1ABAAB7C8(v193);
            sub_1ABA7D1BC();

            switch(v293)
            {
              case 1:
                v189 = 0xE800000000000000;
                v123 = 0x6465636E616C6162;
                break;
              case 2:
                v123 = 0x6C61755168676968;
                v189 = 0xEB00000000797469;
                break;
              case 3:
                v194 = 0x786966657270;
                goto LABEL_90;
              case 4:
                v189 = 0x80000001ABF7F180;
                v123 = 0xD000000000000014;
                break;
              case 5:
                v123 = 0xD000000000000010;
                v189 = 0x80000001ABF7F1A0;
                break;
              case 6:
                v194 = 0x646972627968;
LABEL_90:
                v123 = v194 & 0xFFFFFFFFFFFFLL | 0x6553000000000000;
                v189 = 0xEC00000068637261;
                break;
              default:
                break;
            }

            v195 = *(v118 + 1032);
            v196 = *(v118 + 912);
            v21 = *(v470 + 888);
            v197 = v192;
            v198 = v367;
            sub_1ABBAB134(v197, v123, v189);

            v199 = swift_unknownObjectRelease();
            v207 = sub_1ABA8F2DC(v199, v200, v201, v202, v203, v204, v205, v206, v241, v249, v257, v266, v275, v284, v293, v303, v313, v322, v331, v340, v347, v354, v361, v367, v373, v378, v385, v391, v398, v405, v411, v417, v421, v425, v429, v433, v439, v443, v448, v452, v453, v456, v458, v460, v463, v466);
            sub_1ABBD892C(v207, v208, v209, v210);

            sub_1ABAA28DC(v211, v212, v213, v214, v215, v216, v217, v218, v244, v252, v260, v269, v278, v287, v296, v306, v316, v325, v334, v343, v350, v357, v364, v370, v376, v382, v388, v394, v401, v408, v414, v419, v423, v427, v431, v435, v441, v445, v450);
            sub_1ABA9A3D8();
            v223 = sub_1ABBD892C(v219, v220, v221, v222);
            v231 = sub_1ABA7E63C(v223, v224, v225, v226, v227, v228, v229, v230, v245, v253, v261, v270, v279, v288, v297, v307, v317, v326, v335, v344, v351, v358, v365, v371, v377, v383, v389, v395, v402, v409, v415);
            sub_1ABBD892C(v231, v232, v233, v234);
            v235 = sub_1ABAA602C();
            sub_1ABAB480C(v235, v236, v237);
            sub_1ABAB480C(v196, &qword_1EB4D4C50, &unk_1ABF479B0);
            sub_1ABBEC1C0(Current, v198, v195);
LABEL_14:

            sub_1ABBC3C00((v21 + 56));
            sub_1ABBA4F10(v21[129]);

            sub_1ABAA30BC();

            __asm { BRAA            X2, X16 }
          }
        }

        v104 = 0;
        v105 = 0;
        v106 = 0;
        v107 = 0;
        v108 = 0;
        v109 = 0;
        v110 = 0;
        goto LABEL_61;
      }
    }

    else
    {
    }

    v21 = v470;
    v73 = *(v470 + 1032);
    sub_1ABB32C5C();
    swift_allocError();
    *v74 = xmmword_1ABF47830;
    *(v74 + 16) = 9;
    swift_willThrow();
LABEL_32:
    v75 = sub_1ABAA57C4();
    sub_1ABBEC1C0(v75, v76, v73);

    sub_1ABBC3C00((v21 + 56));
    sub_1ABBA4F10(v73);

    sub_1ABA7BBE0();
    sub_1ABAA30BC();

    __asm { BRAA            X1, X16 }
  }

  sub_1ABAA30BC();
}

uint64_t sub_1ABBEC1C0(double a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1ABF23784();
  v22 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1ABF23744();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1ABBAB2D0(0, a1);
  sub_1ABBAB520(1);
  type metadata accessor for LogSignpost(0);
  v12 = *a3;
  v13 = *(a3 + 16);
  v14 = sub_1ABF23764();
  sub_1ABF23794();
  v21 = sub_1ABF24704();
  result = sub_1ABF247D4();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v9 + 8))(v11, v8);
  }

  if ((v13 & 1) == 0)
  {
    if (v12)
    {
LABEL_9:

      sub_1ABF237C4();

      v16 = v22;
      if ((*(v22 + 88))(v7, v5) == *MEMORY[0x1E69E93E8])
      {
        v17 = "[Error] Interval already ended";
      }

      else
      {
        (*(v16 + 8))(v7, v5);
        v17 = "";
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = sub_1ABF23724();
      _os_signpost_emit_with_name_impl(&dword_1ABA78000, v14, v21, v19, v12, v17, v18, 2u);
      MEMORY[0x1AC5AB8B0](v18, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v12 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v12 & 0xFFFFF800) != 0xD800)
  {
    if (v12 >> 16 <= 0x10)
    {
      v12 = &v23;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1ABBEC48C(uint64_t a1, uint64_t a2)
{
  v49 = a2;
  v48 = a1;
  v47 = sub_1ABF23744();
  sub_1ABA7BB64();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v46 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v43 - v7;
  v9 = sub_1ABF237F4();
  sub_1ABA7BB64();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA7BC58();
  v15 = v14 - v13;
  v45 = sub_1ABF23774();
  sub_1ABA7BB64();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABA7BC58();
  v21 = v20 - v19;
  v44 = type metadata accessor for LogSignpost(0);
  sub_1ABA7BBB0();
  MEMORY[0x1EEE9AC00](v22);
  sub_1ABA7BC58();
  v25 = v24 - v23;
  if (qword_1ED871F20 != -1)
  {
    sub_1ABA7D628();
    swift_once();
  }

  v26 = sub_1ABA7AA24(v9, qword_1ED871EF8);
  (*(v11 + 16))(v15, v26, v9);
  sub_1ABF23754();
  sub_1ABF23764();
  sub_1ABF23714();
  v27 = sub_1ABF23764();
  v28 = sub_1ABF24714();
  if (sub_1ABF247D4())
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = sub_1ABF23724();
    _os_signpost_emit_with_name_impl(&dword_1ABA78000, v27, v28, v30, "ECR.XPCService.mengen", "", v29, 2u);
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  v31 = v47;
  (*(v3 + 16))(v46, v8, v47);
  sub_1ABF237B4();
  swift_allocObject();
  v32 = sub_1ABF237A4();
  (*(v3 + 8))(v8, v31);
  *v25 = "ECR.XPCService.mengen";
  *(v25 + 8) = 21;
  *(v25 + 16) = 2;
  *(v25 + 24) = v32;
  (*(v17 + 32))(v25 + *(v44 + 24), v21, v45);
  v33 = v50;
  v34 = sub_1ABE0CA30(v48, v49, 2);
  if (v33)
  {
    sub_1ABBEC908(v25);
    sub_1ABBA4F10(v25);
  }

  else
  {
    v35 = v34;
    v36 = MEMORY[0x1E69E7CC0];
    if (v34)
    {
      v37 = *(v34 + 16);
      if (v37)
      {
        v52 = MEMORY[0x1E69E7CC0];
        sub_1ABF24BC4();
        v38 = 32;
        do
        {
          memcpy(__dst, (v35 + v38), sizeof(__dst));
          sub_1ABBADDF0();
          sub_1ABF24B94();
          sub_1ABF24BD4();
          sub_1ABF24BE4();
          sub_1ABF24BA4();
          v38 += 80;
          --v37;
        }

        while (v37);

        v36 = v52;
      }

      else
      {
      }
    }

    v39 = sub_1ABAFF390(0, &qword_1EB4D4D18, off_1E79602F0);
    v40 = v36;
    v32 = v39;
    sub_1ABBEA488(v40, &qword_1EB4D4ED0, off_1E79602E8, &selRef_initWithMentions_);
    v41 = sub_1ABA7D1BC();
    sub_1ABBEC908(v41);
    sub_1ABBA4F10(v25);
  }

  return v32;
}

uint64_t sub_1ABBEC908(uint64_t a1)
{
  v2 = sub_1ABF23784();
  v19 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1ABF23744();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for LogSignpost(0);
  v9 = *a1;
  v10 = *(a1 + 16);
  v11 = sub_1ABF23764();
  sub_1ABF23794();
  v18 = sub_1ABF24704();
  result = sub_1ABF247D4();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v6 + 8))(v8, v5);
  }

  if ((v10 & 1) == 0)
  {
    if (v9)
    {
LABEL_9:

      sub_1ABF237C4();

      v13 = v19;
      if ((*(v19 + 88))(v4, v2) == *MEMORY[0x1E69E93E8])
      {
        v14 = "[Error] Interval already ended";
      }

      else
      {
        (*(v13 + 8))(v4, v2);
        v14 = "";
      }

      v15 = swift_slowAlloc();
      *v15 = 0;
      v16 = sub_1ABF23724();
      _os_signpost_emit_with_name_impl(&dword_1ABA78000, v11, v18, v16, v9, v14, v15, 2u);
      MEMORY[0x1AC5AB8B0](v15, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v9 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v9 & 0xFFFFF800) != 0xD800)
  {
    if (v9 >> 16 <= 0x10)
    {
      v9 = &v20;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t EntityResolutionXPCService.deinit()
{

  memcpy(v2, (v0 + 128), 0x8DuLL);
  sub_1ABBA954C(v2);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t EntityResolutionXPCService.__deallocating_deinit()
{
  EntityResolutionXPCService.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1ABBECC6C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1ABA7FDA0;

  return sub_1ABBEA7D4(a1);
}

uint64_t sub_1ABBECD04()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1ABB9916C;

  return sub_1ABBEAA14();
}

uint64_t dispatch thunk of EntityResolutionXPCServiceProtocol.warmup(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ABAA52E0(a1, a2, a3);
  v3 = swift_task_alloc();
  v4 = sub_1ABA8864C(v3);
  *v4 = v5;
  v6 = sub_1ABA8E850(v4);

  return v7(v6);
}

uint64_t dispatch thunk of EntityResolutionXPCServiceProtocol.submit(clientRequest:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ABAA52E0(a1, a2, a3);
  v3 = swift_task_alloc();
  v4 = sub_1ABA8864C(v3);
  *v4 = v5;
  v6 = sub_1ABA8E850(v4);

  return v7(v6);
}

uint64_t dispatch thunk of EntityResolutionXPCService.warmup(for:)()
{
  v0 = swift_task_alloc();
  v1 = sub_1ABA8864C(v0);
  *v1 = v2;
  v3 = sub_1ABA97AE0(v1);

  return v4(v3);
}

uint64_t dispatch thunk of EntityResolutionXPCService.submit(clientRequest:)()
{
  v0 = swift_task_alloc();
  v1 = sub_1ABA8864C(v0);
  *v1 = v2;
  v3 = sub_1ABA97AE0(v1);

  return v4(v3);
}

uint64_t sub_1ABBED2A0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1ABBED310(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return sub_1ABA7E1E0(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return sub_1ABA7E1E0(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_1ABBED44C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          sub_1ABA7B9B4(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1ABBED684@<X0>(void *a2@<X8>)
{
  v35 = a2;
  sub_1ABA7BD7C();
  v33 = v2;
  MEMORY[0x1EEE9AC00](v3);
  v32 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v5;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_1ABF247E4();
  sub_1ABA7BD7C();
  v28 = v8;
  v29 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v28 - v9;
  sub_1ABA7BD7C();
  v31 = v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v30 = &v28 - v16;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ABF24864();
  if (sub_1ABA7E1E0(v10, 1, TupleTypeMetadata2) == 1)
  {
    result = (*(v28 + 8))(v10, v29);
    v18 = v35;
    v35[4] = 0;
    v19 = 0uLL;
    *v18 = 0u;
    *(v18 + 1) = 0u;
    v20 = -512;
  }

  else
  {
    v21 = v30;
    v22 = v31;
    (*(v31 + 32))(v30, v10, TupleTypeMetadata2);
    (*(v22 + 16))(v14, v21, TupleTypeMetadata2);
    v23 = *v14;
    v25 = v32;
    v24 = v33;
    v26 = v34;
    (*(v33 + 32))(v32, &v14[*(TupleTypeMetadata2 + 48)], v34);
    swift_getAssociatedTypeWitness();
    sub_1ABC80EA0(v36);
    (*(v24 + 8))(v25, v26);
    result = (*(v22 + 8))(v21, TupleTypeMetadata2);
    v27 = v36[1];
    v19 = v36[2];
    v20 = v37;
    v18 = v35;
    *v35 = v23;
    *(v18 + 1) = v36[0];
    *(v18 + 3) = v27;
  }

  *(v18 + 5) = v19;
  *(v18 + 28) = v20;
  return result;
}

uint64_t sub_1ABBEDA08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  *a8 = a1;
  v13[0] = a3;
  v13[1] = a4;
  v13[2] = a5;
  v13[3] = a6;
  v13[4] = a7;
  v10 = *(type metadata accessor for EntitySequence.Iterator(0, v13) + 60);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 32))(&a8[v10], a2, AssociatedTypeWitness);
}

uint64_t sub_1ABBEDAC4@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v5 = a1[2];
  sub_1ABA7BD7C();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v16 = &v18 - v15;
  (*(v7 + 16))(v10, v2, v5, v14);
  sub_1ABF23F04();
  return sub_1ABBEDA08(MEMORY[0x1E69E7CD0], v16, v5, a1[3], v12, a1[5], a1[6], a2);
}

uint64_t sub_1ABBEDC54@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  sub_1ABBEDAC4(a1, a2);
  v4 = *(*(a1 - 1) + 8);

  return v4(v2, a1);
}

void sub_1ABBEDCD4(uint64_t a1)
{
  sub_1ABB68CCC(319);
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1ABBEDD70(unsigned __int16 *a1, unsigned int a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v7)
  {
    goto LABEL_23;
  }

  v9 = ((v8 + 8) & ~v8) + *(*(AssociatedTypeWitness - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((a2 - v7 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_23:
      if ((v6 & 0x80000000) != 0)
      {

        return sub_1ABA7E1E0((a1 + v8 + 8) & ~v8, v6, AssociatedTypeWitness);
      }

      else
      {
        v15 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v15) = -1;
        }

        return (v15 + 1);
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_23;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    switch(v9)
    {
      case 2:
        LODWORD(v9) = *a1;
        break;
      case 3:
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v9) = *a1;
        break;
      default:
        LODWORD(v9) = *a1;
        break;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1ABBEDF44(_BYTE *a1, uint64_t a2, unsigned int a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((v10 + 8) & ~v10) + *(*(AssociatedTypeWitness - 8) + 64);
  v12 = 8 * v11;
  if (a3 <= v9)
  {
    v13 = 0;
  }

  else if (v11 <= 3)
  {
    v16 = ((a3 - v9 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v16))
    {
      v13 = 4;
    }

    else
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
        v13 = v17;
      }

      else
      {
        v13 = 0;
      }
    }
  }

  else
  {
    v13 = 1;
  }

  if (v9 >= a2)
  {
    switch(v13)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_45:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if ((v8 & 0x80000000) != 0)
          {

            sub_1ABA7B9B4(&a1[v10 + 8] & ~v10, a2, v8, AssociatedTypeWitness);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v19 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v19 = (a2 - 1);
            }

            *a1 = v19;
          }
        }

        break;
    }
  }

  else
  {
    v14 = ~v9 + a2;
    if (v11 < 4)
    {
      v15 = (v14 >> v12) + 1;
      if (v11)
      {
        v18 = v14 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v18;
          a1[2] = BYTE2(v18);
        }

        else if (v11 == 2)
        {
          *a1 = v18;
        }

        else
        {
          *a1 = v14;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v14;
      v15 = 1;
    }

    switch(v13)
    {
      case 1:
        a1[v11] = v15;
        break;
      case 2:
        *&a1[v11] = v15;
        break;
      case 3:
        goto LABEL_45;
      case 4:
        *&a1[v11] = v15;
        break;
      default:
        return;
    }
  }
}

id EntitySimilarityClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id EntitySimilarityClient.init()()
{
  v0 = objc_allocWithZone(type metadata accessor for EntitySimilarityClient());
  v1 = EntitySimilarityClient.init(throwing:)();
  swift_getObjectType();
  sub_1ABAA10E4();
  swift_deallocPartialClassInstance();
  return v1;
}

id EntitySimilarityClient.init(throwing:)()
{
  v2 = v0;
  v3 = type metadata accessor for ViewService();
  v4 = static ViewService.clientService.getter(v3);
  v5 = type metadata accessor for EntitySimilarityInProcessService();
  swift_allocObject();
  v6 = sub_1ABBF4440(v4);
  if (v1)
  {
    type metadata accessor for EntitySimilarityClient();
    sub_1ABAA10E4();
    return swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = v5;
    v11 = &off_1F2097C38;
    *&v9 = v6;
    sub_1ABA946C0(&v9, v2 + OBJC_IVAR____TtC20IntelligencePlatform22EntitySimilarityClient_service);
    v8.receiver = v2;
    v8.super_class = type metadata accessor for EntitySimilarityClient();
    return objc_msgSendSuper2(&v8, sel_init);
  }
}

uint64_t sub_1ABBEE3F0()
{
  sub_1ABA7BBF8();
  v2 = v1;
  v4 = sub_1ABA95298(v3);
  *(v0 + 32) = v4;
  sub_1ABA7BBD0(v4);
  *(v0 + 40) = v5;
  v6 = sub_1ABA96BDC();
  v7 = sub_1ABA96050(v6);
  v8 = sub_1ABAA1784(v7);
  *(v0 + 64) = v8;
  sub_1ABA7BBD0(v8);
  *(v0 + 72) = v9;
  v10 = sub_1ABA7E314();
  v11 = sub_1ABA82E34(v10);
  *(v0 + 88) = v11;
  sub_1ABA7BBD0(v11);
  *(v0 + 96) = v12;
  v13 = sub_1ABA7E314();
  v14 = sub_1ABAA19AC(v13);
  sub_1ABA993BC(v14);
  *(v0 + 120) = sub_1ABA7E314();
  *(v0 + 176) = *v2;
  *(v0 + 128) = *(v2 + 8);
  v15 = sub_1ABA83840();

  return MEMORY[0x1EEE6DFA0](v15);
}

uint64_t sub_1ABBEE544()
{
  if (qword_1ED871F20 != -1)
  {
    sub_1ABA7D608(&qword_1ED871F20);
  }

  sub_1ABAA10D4();
  v2 = sub_1ABA80A34(v1, qword_1ED871EF8);
  v3(v2);
  sub_1ABA977C0();
  sub_1ABF23764();
  sub_1ABF23714();
  v4 = sub_1ABF23764();
  v5 = sub_1ABF24714();
  if (sub_1ABF247D4())
  {
    v6 = sub_1ABAA3874();
    *v6 = 0;
    v7 = sub_1ABF23724();
    _os_signpost_emit_with_name_impl(&dword_1ABA78000, v4, v5, v7, "EntitySimilarity.Client.computeSimilarity", "", v6, 2u);
    MEMORY[0x1AC5AB8B0](v6, -1, -1);
  }

  v25 = *(v0 + 136);
  v26 = *(v0 + 176);
  v8 = *(v0 + 120);
  v9 = *(v0 + 112);
  v23 = *(v0 + 104);
  v24 = *(v0 + 128);
  v11 = *(v0 + 88);
  v10 = *(v0 + 96);
  v12 = *(v0 + 48);
  v13 = *(v0 + 56);
  v15 = *(v0 + 32);
  v14 = *(v0 + 40);
  v22 = *(v0 + 24);

  (*(v14 + 16))(v12, v13, v15);
  v16 = sub_1ABF237B4();
  sub_1ABA806BC(v16);
  v17 = sub_1ABA8BFE8();
  (*(v14 + 8))(v13, v15);
  *v8 = "EntitySimilarity.Client.computeSimilarity";
  *(v8 + 8) = 41;
  *(v8 + 16) = 2;
  *(v8 + 24) = v17;
  (*(v10 + 32))(v8 + *(v9 + 24), v23, v11);
  sub_1ABA93E20((v22 + OBJC_IVAR____TtC20IntelligencePlatform22EntitySimilarityClient_service), *(v22 + OBJC_IVAR____TtC20IntelligencePlatform22EntitySimilarityClient_service + 24));
  v18 = [objc_allocWithZone(GDEntityIdentifier) initWithValue_];
  v19 = [objc_allocWithZone(GDEntityIdentifier) initWithValue_];
  sub_1ABBF153C();
  *(v0 + 144) = sub_1ABBF14D8(v18, v19, v26);
  v20 = swift_task_alloc();
  *(v0 + 152) = v20;
  *v20 = v0;
  sub_1ABAA4990(v20);

  return sub_1ABBF44F4();
}

uint64_t sub_1ABBEE7DC()
{
  sub_1ABA8C008();
  v3 = v2;
  sub_1ABA7BC10();
  v5 = v4;
  sub_1ABA7D4E0();
  *v6 = v5;
  v8 = *(v7 + 144);
  v9 = *v1;
  sub_1ABA7BBC0();
  *v10 = v9;
  *(v5 + 160) = v0;

  if (!v0)
  {
    *(v5 + 168) = v3;
  }

  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABBEE90C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1ABAB54AC();
  sub_1ABA906D0();
  v11 = v10[21];
  v12 = v10[15];
  sub_1ABBF62DC(v10[2]);

  sub_1ABBF0F28(v12);
  v13 = sub_1ABA7E64C();
  sub_1ABBA4F10(v13);

  sub_1ABA7BBE0();
  sub_1ABAA10F8();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_1ABBEE9C0()
{
  sub_1ABA8C008();
  sub_1ABBF0F28(*(v0 + 120));
  v1 = sub_1ABA8E86C();
  sub_1ABBA4F10(v1);

  sub_1ABA7BBE0();

  return v2();
}

uint64_t sub_1ABBEEA5C()
{
  sub_1ABA7BBF8();
  v2 = sub_1ABA95298(v1);
  v0[4] = v2;
  sub_1ABA7BBD0(v2);
  v0[5] = v3;
  v4 = sub_1ABA96BDC();
  v5 = sub_1ABA96050(v4);
  v6 = sub_1ABAA1784(v5);
  v0[8] = v6;
  sub_1ABA7BBD0(v6);
  v0[9] = v7;
  v8 = sub_1ABA7E314();
  v9 = sub_1ABA82E34(v8);
  v0[11] = v9;
  sub_1ABA7BBD0(v9);
  v0[12] = v10;
  v11 = sub_1ABA7E314();
  v12 = sub_1ABAA19AC(v11);
  sub_1ABA993BC(v12);
  v0[15] = sub_1ABA7E314();
  v13 = sub_1ABA83840();

  return MEMORY[0x1EEE6DFA0](v13);
}

uint64_t sub_1ABBEEB9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1ABA88600();
  sub_1ABA827D0();
  if (qword_1ED871F20 != -1)
  {
    sub_1ABA7D608(&qword_1ED871F20);
  }

  sub_1ABAA10D4();
  v16 = sub_1ABA80A34(v15, qword_1ED871EF8);
  v17(v16);
  sub_1ABA977C0();
  sub_1ABF23764();
  sub_1ABF23714();
  v18 = sub_1ABF23764();
  sub_1ABF24714();
  if (sub_1ABAA1514())
  {
    v19 = sub_1ABAA3874();
    v20 = sub_1ABAB5A78(v19);
    sub_1ABA9A3E4(&dword_1ABA78000, v21, v22, v20, "EntitySimilarity.Client.batchComputeSimilarity", "");
    sub_1ABA82E18();
  }

  v38 = v14[11];
  v39 = v14[13];
  v23 = v14[6];
  v24 = v14[7];
  v26 = v14[4];
  v25 = v14[5];
  v27 = v14[2];

  (*(v25 + 16))(v23, v24, v26);
  v28 = sub_1ABF237B4();
  sub_1ABA806BC(v28);
  sub_1ABA8BFE8();
  (*(v25 + 8))(v24, v26);
  v29 = sub_1ABA7D654("EntitySimilarity.Client.batchComputeSimilarity");
  v30(v29, v39, v38);
  v31 = *(v27 + 16);
  v32 = MEMORY[0x1E69E7CC0];
  if (v31)
  {
    v33 = v14[2];
    v40 = MEMORY[0x1E69E7CC0];
    sub_1ABF24BC4();
    sub_1ABBF153C();
    v34 = (v33 + 48);
    do
    {
      sub_1ABBF14D8([objc_allocWithZone(GDEntityIdentifier) initWithValue_], objc_msgSend(objc_allocWithZone(GDEntityIdentifier), sel_initWithValue_, *v34), *(v34 - 16));
      sub_1ABF24B94();
      sub_1ABF24BD4();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      v34 += 3;
      --v31;
    }

    while (v31);
    v32 = v40;
  }

  v14[16] = v32;
  sub_1ABA93E20((v14[3] + OBJC_IVAR____TtC20IntelligencePlatform22EntitySimilarityClient_service), *(v14[3] + OBJC_IVAR____TtC20IntelligencePlatform22EntitySimilarityClient_service + 24));
  v35 = swift_task_alloc();
  v14[17] = v35;
  *v35 = v14;
  v35[1] = sub_1ABBEEE34;
  sub_1ABA8BF40();

  return sub_1ABBF4C5C();
}

uint64_t sub_1ABBEEE34()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  sub_1ABA7D4E0();
  *v3 = v2;
  v4 = *v1;
  sub_1ABA7BBC0();
  *v5 = v4;
  *(v7 + 144) = v6;
  *(v7 + 152) = v0;

  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

void sub_1ABBEEF50()
{
  v32 = v1;
  v3 = sub_1ABAAB7C8(*(v1 + 144));
  if (!v3)
  {

LABEL_18:
    sub_1ABA96C74();
    sub_1ABBA4F10(v0);

    sub_1ABA82A20();
    sub_1ABAA30D8();

    __asm { BRAA            X2, X16 }
  }

  v4 = v3;
  sub_1ABAA1C14(v3);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = *(v1 + 152);
    sub_1ABA9580C();
    while (1)
    {
      if (v2)
      {
        v6 = MEMORY[0x1AC5AA170](0, *(v28 + 144));
      }

      else
      {
        if (!*(v27 + 16))
        {
          __break(1u);
          break;
        }

        v6 = *v26;
      }

      v0 = v6;
      sub_1ABBF62DC(v30);
      if (v5)
      {

        v19 = sub_1ABA7E64C();
        sub_1ABBF0F28(v19);
        sub_1ABBA4F10(v0);

        sub_1ABA7BBE0();
        sub_1ABAA30D8();

        __asm { BRAA            X1, X16 }
      }

      v16 = sub_1ABAA34B0(v7, v8, v9, v10, v11, v12, v13, v14, v24.n128_i64[0], v24.n128_i64[1], v25, v26, v27, v28, v29, v30[0], v30[1], v31);
      if (v17)
      {
        sub_1ABA7ACD8(v15);
        v16 = v24;
      }

      sub_1ABAA4504(v16);
      if (v18)
      {

        goto LABEL_18;
      }
    }
  }

  __break(1u);
}

uint64_t sub_1ABBEF150()
{
  sub_1ABA8C008();
  v1 = sub_1ABA8E86C();
  sub_1ABBF0F28(v1);
  sub_1ABBA4F10(v0);

  sub_1ABA7BBE0();

  return v2();
}

uint64_t sub_1ABBEF1EC()
{
  sub_1ABA7BBF8();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[2] = v5;
  v1[3] = v6;
  v7 = sub_1ABF23744();
  v1[8] = v7;
  sub_1ABA7BBD0(v7);
  v1[9] = v8;
  v1[10] = sub_1ABA96BDC();
  v1[11] = swift_task_alloc();
  v9 = sub_1ABF237F4();
  v1[12] = v9;
  sub_1ABA7BBD0(v9);
  v1[13] = v10;
  v1[14] = sub_1ABA7E314();
  v11 = sub_1ABF23774();
  v1[15] = v11;
  sub_1ABA7BBD0(v11);
  v1[16] = v12;
  v1[17] = sub_1ABA7E314();
  v1[18] = type metadata accessor for LogSignpost(0);
  v1[19] = sub_1ABA7E314();
  v13 = sub_1ABA83840();

  return MEMORY[0x1EEE6DFA0](v13);
}

uint64_t sub_1ABBEF528()
{
  sub_1ABA7BC04();
  v3 = v2;
  sub_1ABA7BC10();
  v5 = v4;
  sub_1ABA7D4E0();
  *v6 = v5;
  v7 = *v1;
  sub_1ABA7BBC0();
  *v8 = v7;
  *(v5 + 168) = v0;

  if (!v0)
  {
    *(v5 + 176) = v3;
  }

  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABBEF638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1ABAB54AC();
  sub_1ABA906D0();
  v11 = v10[22];
  v12 = v10[19];
  sub_1ABBF62DC(v10[2]);

  sub_1ABBF0F28(v12);
  sub_1ABBA4F10(v10[19]);

  sub_1ABA7BBE0();
  sub_1ABAA10F8();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1ABBEF6FC()
{
  sub_1ABA8C008();
  sub_1ABBF0F28(*(v0 + 152));
  sub_1ABBA4F10(*(v0 + 152));

  sub_1ABA7BBE0();

  return v1();
}

uint64_t sub_1ABBEF7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1ABBEF7D0, 0, 0);
}

uint64_t sub_1ABBEF7D0()
{
  sub_1ABA906D0();
  v15 = v0;
  v1 = v0[2];
  v2 = v0[3];

  EntityIdentifier.init(_:)(v1, v2, &v13);
  if (v14 & 1) != 0 || (v3 = v13, v5 = v0[4], v4 = v0[5], , EntityIdentifier.init(_:)(v5, v4, &v13), (v14))
  {
    sub_1ABBF1CCC();
    swift_allocError();
    *v6 = 0;
    v6[1] = 0;
    swift_willThrow();
    sub_1ABA7BBE0();

    return v7();
  }

  else
  {
    v9 = v13;
    sub_1ABA9077C(&unk_1ABF48A68);
    v12 = v10;
    v11 = swift_task_alloc();
    v0[7] = v11;
    *v11 = v0;
    v11[1] = sub_1ABBEF930;

    return v12(v3, v9);
  }
}

uint64_t sub_1ABBEF930()
{
  sub_1ABA7BBF8();
  v3 = v2;
  sub_1ABA7BC10();
  v4 = *v1;
  sub_1ABA7BBC0();
  *v5 = v4;

  sub_1ABA82A20();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_1ABBEFA1C()
{
  sub_1ABA7BC04();
  v2 = v1;
  v4 = v3;
  v6 = sub_1ABA95298(v5);
  v0[4] = v6;
  sub_1ABA7BBD0(v6);
  v0[5] = v7;
  v8 = sub_1ABA96BDC();
  v9 = sub_1ABA96050(v8);
  v10 = sub_1ABAA1784(v9);
  v0[8] = v10;
  sub_1ABA7BBD0(v10);
  v0[9] = v11;
  v12 = sub_1ABA7E314();
  v13 = sub_1ABA82E34(v12);
  v0[11] = v13;
  sub_1ABA7BBD0(v13);
  v0[12] = v14;
  v15 = sub_1ABA7E314();
  v16 = sub_1ABAA19AC(v15);
  sub_1ABA993BC(v16);
  v17 = sub_1ABA7E314();
  v18 = *v4;
  v0[15] = v17;
  v0[16] = v18;
  v0[17] = *v2;
  v19 = sub_1ABA83840();

  return MEMORY[0x1EEE6DFA0](v19);
}

uint64_t sub_1ABBEFD08()
{
  sub_1ABA7BC04();
  v3 = v2;
  sub_1ABA7BC10();
  v5 = v4;
  sub_1ABA7D4E0();
  *v6 = v5;
  v7 = *v1;
  sub_1ABA7BBC0();
  *v8 = v7;
  *(v5 + 152) = v0;

  if (!v0)
  {
    *(v5 + 160) = v3;
  }

  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABBEFE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1ABAB54AC();
  sub_1ABA906D0();
  v11 = v10[20];
  v12 = v10[15];
  sub_1ABBF62DC(v10[2]);

  sub_1ABBF0F28(v12);
  v13 = sub_1ABA7E64C();
  sub_1ABBA4F10(v13);

  sub_1ABA7BBE0();
  sub_1ABAA10F8();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_1ABBEFECC()
{
  sub_1ABA8C008();
  sub_1ABBF0F28(*(v0 + 120));
  v1 = sub_1ABA8E86C();
  sub_1ABBA4F10(v1);

  sub_1ABA7BBE0();

  return v2();
}

uint64_t sub_1ABBEFF68(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1ABBEFF8C, 0, 0);
}

uint64_t sub_1ABBEFF8C()
{
  sub_1ABA7BC04();
  v1 = v0[3];
  v2 = [objc_allocWithZone(GDEntityIdentifier) initWithValue_];
  v3 = [objc_allocWithZone(GDEntityIdentifier) initWithValue_];
  sub_1ABBF153C();
  v0[5] = sub_1ABBF14D8(v2, v3, 0);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1ABBF0088;

  return sub_1ABBF44F4();
}

uint64_t sub_1ABBF0088()
{
  sub_1ABA7BC04();
  v3 = v2;
  sub_1ABA7BC10();
  v5 = v4;
  sub_1ABA7D4E0();
  *v6 = v5;
  v7 = *v1;
  sub_1ABA7BBC0();
  *v8 = v7;
  *(v5 + 56) = v0;

  if (!v0)
  {
    *(v5 + 64) = v3;
  }

  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABBF0198()
{
  sub_1ABA7BBF8();

  sub_1ABA82A20();
  v2 = *(v0 + 64);

  return v1(v2);
}

uint64_t sub_1ABBF01F8()
{
  sub_1ABA7BBF8();

  sub_1ABA7BBE0();

  return v1();
}

uint64_t sub_1ABBF0254()
{
  sub_1ABA7BBF8();
  v2 = sub_1ABA95298(v1);
  v0[4] = v2;
  sub_1ABA7BBD0(v2);
  v0[5] = v3;
  v4 = sub_1ABA96BDC();
  v5 = sub_1ABA96050(v4);
  v6 = sub_1ABAA1784(v5);
  v0[8] = v6;
  sub_1ABA7BBD0(v6);
  v0[9] = v7;
  v8 = sub_1ABA7E314();
  v9 = sub_1ABA82E34(v8);
  v0[11] = v9;
  sub_1ABA7BBD0(v9);
  v0[12] = v10;
  v11 = sub_1ABA7E314();
  v12 = sub_1ABAA19AC(v11);
  sub_1ABA993BC(v12);
  v0[15] = sub_1ABA7E314();
  v13 = sub_1ABA83840();

  return MEMORY[0x1EEE6DFA0](v13);
}

uint64_t sub_1ABBF0514()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  sub_1ABA7D4E0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 136) = v4;
  *(v2 + 144) = v0;

  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

void sub_1ABBF0618()
{
  v32 = v1;
  v3 = sub_1ABAAB7C8(*(v1 + 136));
  if (!v3)
  {

LABEL_18:
    sub_1ABA96C74();
    sub_1ABBA4F10(v0);

    sub_1ABA82A20();
    sub_1ABAA30D8();

    __asm { BRAA            X2, X16 }
  }

  v4 = v3;
  sub_1ABAA1C14(v3);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = *(v1 + 144);
    sub_1ABA9580C();
    while (1)
    {
      if (v2)
      {
        v6 = MEMORY[0x1AC5AA170](0, *(v28 + 136));
      }

      else
      {
        if (!*(v27 + 16))
        {
          __break(1u);
          break;
        }

        v6 = *v26;
      }

      v0 = v6;
      sub_1ABBF62DC(v30);
      if (v5)
      {

        v19 = sub_1ABA7E64C();
        sub_1ABBF0F28(v19);
        sub_1ABBA4F10(v0);

        sub_1ABA7BBE0();
        sub_1ABAA30D8();

        __asm { BRAA            X1, X16 }
      }

      v16 = sub_1ABAA34B0(v7, v8, v9, v10, v11, v12, v13, v14, v24.n128_i64[0], v24.n128_i64[1], v25, v26, v27, v28, v29, v30[0], v30[1], v31);
      if (v17)
      {
        sub_1ABA7ACD8(v15);
        v16 = v24;
      }

      sub_1ABAA4504(v16);
      if (v18)
      {

        goto LABEL_18;
      }
    }
  }

  __break(1u);
}

uint64_t sub_1ABBF0818()
{
  sub_1ABA8C008();
  v1 = sub_1ABA8E86C();
  sub_1ABBF0F28(v1);
  sub_1ABBA4F10(v0);

  sub_1ABA7BBE0();

  return v2();
}

uint64_t sub_1ABBF08B4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1ABBF08D4, 0, 0);
}

uint64_t sub_1ABBF08D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = v14[2];
  v16 = *(v15 + 16);
  v17 = MEMORY[0x1E69E7CC0];
  if (v16)
  {
    v21 = MEMORY[0x1E69E7CC0];
    sub_1ABF24BC4();
    sub_1ABBF153C();
    v18 = (v15 + 40);
    do
    {
      sub_1ABBF14D8([objc_allocWithZone(GDEntityIdentifier) initWithValue_], objc_msgSend(objc_allocWithZone(GDEntityIdentifier), sel_initWithValue_, *v18), 0);
      sub_1ABF24B94();
      sub_1ABF24BD4();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      v18 += 2;
      --v16;
    }

    while (v16);
    v17 = v21;
  }

  v14[4] = v17;
  v19 = swift_task_alloc();
  v14[5] = v19;
  *v19 = v14;
  v19[1] = sub_1ABBF0A54;

  return sub_1ABBF4C5C();
}

uint64_t sub_1ABBF0A54()
{
  sub_1ABA7BC04();
  v3 = v2;
  sub_1ABA7BC10();
  v4 = *v1;
  sub_1ABA7BBC0();
  *v5 = v4;

  sub_1ABA82A20();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_1ABBF0B64()
{
  sub_1ABA7BBF8();
  v2 = sub_1ABA95298(v1);
  v0[4] = v2;
  sub_1ABA7BBD0(v2);
  v0[5] = v3;
  v4 = sub_1ABA96BDC();
  v5 = sub_1ABA96050(v4);
  v6 = sub_1ABAA1784(v5);
  v0[8] = v6;
  sub_1ABA7BBD0(v6);
  v0[9] = v7;
  v8 = sub_1ABA7E314();
  v9 = sub_1ABA82E34(v8);
  v0[11] = v9;
  sub_1ABA7BBD0(v9);
  v0[12] = v10;
  v11 = sub_1ABA7E314();
  v12 = sub_1ABAA19AC(v11);
  sub_1ABA993BC(v12);
  v0[15] = sub_1ABA7E314();
  v13 = sub_1ABA83840();

  return MEMORY[0x1EEE6DFA0](v13);
}

uint64_t sub_1ABBF0E24()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  sub_1ABA7D4E0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 136) = v4;
  *(v2 + 144) = v0;

  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABBF0F28(uint64_t a1)
{
  v2 = sub_1ABF23784();
  sub_1ABA7BB64();
  v23 = v3;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1ABF23744();
  sub_1ABA7BB64();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for LogSignpost(0);
  v13 = *a1;
  v14 = *(a1 + 16);
  v15 = sub_1ABF23764();
  sub_1ABF23794();
  v22 = sub_1ABF24704();
  result = sub_1ABF247D4();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v9 + 8))(v12, v7);
  }

  if ((v14 & 1) == 0)
  {
    if (v13)
    {
LABEL_9:

      sub_1ABF237C4();

      v17 = v23;
      if ((*(v23 + 88))(v6, v2) == *MEMORY[0x1E69E93E8])
      {
        v18 = "[Error] Interval already ended";
      }

      else
      {
        (*(v17 + 8))(v6, v2);
        v18 = "";
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = sub_1ABF23724();
      _os_signpost_emit_with_name_impl(&dword_1ABA78000, v15, v22, v20, v13, v18, v19, 2u);
      MEMORY[0x1AC5AB8B0](v19, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v13 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v13 & 0xFFFFF800) != 0xD800)
  {
    if (v13 >> 16 <= 0x10)
    {
      v13 = &v24;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1ABBF11B8(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1ABBF11D8, 0, 0);
}

uint64_t sub_1ABBF11D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1ABA827D0();
  v27 = v14;
  v15 = v14[3];
  v16 = *(v15 + 16);
  v17 = MEMORY[0x1E69E7CC0];
  if (v16)
  {
    v24 = MEMORY[0x1E69E7CC0];
    sub_1ABF24BC4();
    v18 = (v15 + 56);
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v21 = *v18;
      v26[0] = *(v18 - 3);
      v26[1] = v19;
      v26[2] = v20;
      v26[3] = v21;

      sub_1ABBF57E0(v26, v14 + 2, &v25);

      sub_1ABF24B94();
      sub_1ABF24BD4();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      v18 += 4;
      --v16;
    }

    while (v16);
    v17 = v24;
  }

  v14[5] = v17;
  v22 = swift_task_alloc();
  v14[6] = v22;
  *v22 = v14;
  v22[1] = sub_1ABBF1374;

  return sub_1ABBF4C5C();
}

uint64_t sub_1ABBF1374()
{
  sub_1ABA7BC04();
  v3 = v2;
  v4 = *v1;
  sub_1ABA7BBC0();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

id EntitySimilarityClient.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EntitySimilarityClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1ABBF14D8(void *a1, void *a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithEntityId1:a1 entityId2:a2 entitySimilarityMode:a3];

  return v5;
}

unint64_t sub_1ABBF153C()
{
  result = qword_1EB4D4FF0;
  if (!qword_1EB4D4FF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB4D4FF0);
  }

  return result;
}

uint64_t dispatch thunk of EntitySimilarityClient.computeSimilarity(request:)()
{
  sub_1ABA8C008();
  v1 = v0;
  v3 = v2;
  sub_1ABA7ABF0();
  v9 = (*(v4 + 96) + **(v4 + 96));
  v5 = swift_task_alloc();
  v6 = sub_1ABA8864C(v5);
  *v6 = v7;
  v6[1] = sub_1ABAB2788;

  return v9(v3, v1);
}

uint64_t dispatch thunk of EntitySimilarityClient.batchComputeSimilarity(requestBatch:)()
{
  sub_1ABA7BC04();
  sub_1ABA7ABF0();
  v6 = (*(v0 + 104) + **(v0 + 104));
  v1 = swift_task_alloc();
  v2 = sub_1ABA8864C(v1);
  *v2 = v3;
  v4 = sub_1ABAA4990(v2);

  return v6(v4);
}

uint64_t dispatch thunk of EntitySimilarityClient.computeSimilarity(tuple:)()
{
  sub_1ABAB54AC();
  sub_1ABA906D0();
  sub_1ABA7ABF0();
  v13 = v0 + 112;
  v14 = *(v0 + 112) + **(v0 + 112);
  v1 = swift_task_alloc();
  v2 = sub_1ABA8864C(v1);
  *v2 = v3;
  v2[1] = sub_1ABAB2788;
  sub_1ABAA10F8();

  return v9(v4, v5, v6, v7, v8, v9, v10, v11, v13, v14);
}

{
  sub_1ABA8C008();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  sub_1ABA7ABF0();
  v11 = (*(v6 + 120) + **(v6 + 120));
  v7 = swift_task_alloc();
  v8 = sub_1ABA8864C(v7);
  *v8 = v9;
  v8[1] = sub_1ABA7FDA0;

  return v11(v5, v3, v1);
}

uint64_t dispatch thunk of EntitySimilarityClient.batchComputeSimilarity(batchTuples:)()
{
  sub_1ABA7BC04();
  sub_1ABA7ABF0();
  v6 = (*(v0 + 128) + **(v0 + 128));
  v1 = swift_task_alloc();
  v2 = sub_1ABA8864C(v1);
  *v2 = v3;
  v4 = sub_1ABAA4990(v2);

  return v6(v4);
}

{
  sub_1ABA7BC04();
  sub_1ABA7ABF0();
  v6 = (*(v0 + 136) + **(v0 + 136));
  v1 = swift_task_alloc();
  v2 = sub_1ABA8864C(v1);
  *v2 = v3;
  v4 = sub_1ABAA4990(v2);

  return v6(v4);
}

unint64_t sub_1ABBF1CCC()
{
  result = qword_1EB4D4FF8;
  if (!qword_1EB4D4FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4FF8);
  }

  return result;
}

void sub_1ABBF1D2C(uint64_t *a1, uint64_t *a2, void *a3)
{
  v5 = *a1;
  v6 = *a2;
  v7 = v3[1];
  v27 = *v3;
  v28 = v7;
  v8 = v3[3];
  v29 = v3[2];
  v30 = v8;
  if (a3)
  {
    v9 = a3;
  }

  else
  {
    sub_1ABAD219C(&unk_1EB4DB330, &qword_1ABF33420);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1ABF34060;
    *(inited + 32) = v5;
    *(inited + 40) = v6;
    v31 = v27;
    v32 = v28;
    v33 = v29;
    v14 = sub_1ABBF2D9C(inited);
    swift_setDeallocating();
    if (v4)
    {
      return;
    }

    sub_1ABBF427C(&v27, &v25);
    v9 = sub_1ABBF40B8(v14, &v27);
  }

  v10 = sub_1ABAD5888(v5, v9);
  if (v10)
  {
    v11 = v10;
    if (sub_1ABAD5888(v6, v9))
    {

      v12 = *(v11 + 16);

      if (v12 >> 31)
      {
        __break(1u);
      }

      else
      {
        cblas_sdot_NEWLAPACK();
        cblas_snrm2_NEWLAPACK();
        cblas_snrm2_NEWLAPACK();
      }

      return;
    }
  }

  else
  {
  }

  v25 = 0;
  v26 = 0xE000000000000000;
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD000000000000036, 0x80000001ABF8B2B0);
  if (sub_1ABAD5888(v5, v9))
  {

    v15 = 0;
    v16 = 0xE000000000000000;
  }

  else
  {
    v17 = EntityIdentifier.description.getter();
    MEMORY[0x1AC5A9410](v17);

    v15 = 32;
    v16 = 0xE100000000000000;
  }

  MEMORY[0x1AC5A9410](v15, v16);

  v18 = sub_1ABAD5888(v6, v9);

  if (v18)
  {

    v19 = 0;
    v20 = 0xE000000000000000;
  }

  else
  {
    v21 = EntityIdentifier.description.getter();
    MEMORY[0x1AC5A9410](v21);

    v19 = 32;
    v20 = 0xE100000000000000;
  }

  MEMORY[0x1AC5A9410](v19, v20);

  v22 = v25;
  v23 = v26;
  sub_1ABBF1CCC();
  swift_allocError();
  *v24 = v22;
  v24[1] = v23;
  swift_willThrow();
}

void *EntitySimilarityEngine.loadVectorMap(entityIds:)(uint64_t a1)
{
  v4 = v1[1];
  v10[0] = *v1;
  v10[1] = v4;
  v5 = v1[3];
  v11 = v1[2];
  v12 = v5;
  v13 = v10[0];
  v14 = v4;
  v15 = v11;
  v6 = sub_1ABBF2D9C(a1);
  if (!v2)
  {
    v7 = v6;
    sub_1ABBF427C(v10, &v9);
    v3 = sub_1ABBF40B8(v7, v10);
  }

  return v3;
}

double EntitySimilarityEngine.computeSimilarity(request:)@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  v8 = v6;
  v9 = v5;
  sub_1ABBF1D2C(&v9, &v8, 0);
  if (!v2)
  {
    result = *&result;
    *a2 = result;
    *(a2 + 8) = v4;
    *(a2 + 16) = v5;
    *(a2 + 24) = v6;
  }

  return result;
}

void EntitySimilarityEngine.computeSimilarityBatch(batchRequests:batchSize:)(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v6 = v2[1];
  v71 = *v2;
  v72 = v6;
  v7 = v2[3];
  v73 = v2[2];
  v74 = v7;
  v8 = sub_1ABBF25D4(a1);
  v9 = v8;
  v10 = MEMORY[0x1E69E7CC0];
  v70 = MEMORY[0x1E69E7CC0];
  v61 = *(v8 + 16);
  if (v61)
  {
    v11 = 0;
    v62 = v8 + 32;
    v12 = MEMORY[0x1E69E7CC0];
    v58 = a2;
    v60 = v8;
    while (v11 < *(v9 + 16))
    {
      v13 = v62 + 24 * v11;
      v14 = *v13;
      v15 = *(v13 + 8);
      v16 = *(v13 + 16);
      v17 = v12;
      v63 = v11;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v12 = v17;
      }

      else
      {
        sub_1ABADA93C();
        v12 = v56;
      }

      v19 = v12[2];
      v18 = v12[3];
      v20 = v19 + 1;
      if (v19 >= v18 >> 1)
      {
        sub_1ABA7BBEC(v18);
        sub_1ABADA93C();
        v12 = v57;
      }

      v12[2] = v20;
      v21 = &v12[3 * v19];
      *(v21 + 32) = v14;
      v21[5] = v15;
      v21[6] = v16;
      if (v20 == a2 || v63 == *(a1 + 16) - 1)
      {
        v22 = v19 + 1;
        v23 = v10;
        v65 = v12;
        v24 = v12 + 6;
        v25 = v12 + 6;
        do
        {
          v26 = *(v25 - 1);
          v27 = *v25;
          sub_1ABAD219C(&unk_1EB4DB330, &qword_1ABF33420);
          inited = swift_initStackObject();
          *(inited + 32) = v26;
          v29 = (inited + 32);
          *(inited + 40) = v27;
          v30 = *(v23 + 16);
          v31 = v30 + 2;
          if (__OFADD__(v30, 2))
          {
            __break(1u);
LABEL_38:
            __break(1u);
LABEL_39:
            __break(1u);
LABEL_40:
            __break(1u);
            goto LABEL_41;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (!isUniquelyReferenced_nonNull_native || (v33 = *(v23 + 24) >> 1, v33 < v31))
          {
            if (v30 <= v31)
            {
              v34 = v30 + 2;
            }

            else
            {
              v34 = v30;
            }

            sub_1ABAD89C8(isUniquelyReferenced_nonNull_native, v34, 1, v23);
            v23 = v35;
            v33 = *(v35 + 24) >> 1;
          }

          v36 = *(v23 + 16);
          if (v33 - v36 < 2)
          {
            goto LABEL_38;
          }

          *(v23 + 8 * v36 + 32) = *v29;
          swift_setDeallocating();
          v37 = *(v23 + 16);
          v38 = __OFADD__(v37, 2);
          v39 = v37 + 2;
          if (v38)
          {
            goto LABEL_39;
          }

          v25 += 3;
          *(v23 + 16) = v39;
          --v22;
        }

        while (v22);
        v40 = sub_1ABE8AC38();
        v41 = sub_1ABB45610(v40);
        v75 = v71;
        v76 = v72;
        v77 = v73;
        v42 = sub_1ABBF2D9C(v41);
        if (v4)
        {

          return;
        }

        v43 = v42;

        sub_1ABBF427C(&v71, v69);
        v64 = sub_1ABBF40B8(v43, &v71);
        v4 = 0;

        v44 = v65[2];
        if (v44)
        {
          v68 = MEMORY[0x1E69E7CC0];
          sub_1ABADE1AC(0, v44, 0);
          v45 = 0;
          v46 = v68;
          while (v45 < v65[2])
          {
            v47 = *(v24 - 16);
            v49 = *(v24 - 1);
            v48 = *v24;
            v69[0] = v71;
            v69[1] = v72;
            v69[2] = v73;
            v69[3] = v74;
            v66 = v48;
            v67 = v49;
            sub_1ABBF1D2C(&v67, &v66, v64);
            v51 = v50;
            v68 = v46;
            v53 = *(v46 + 16);
            v52 = *(v46 + 24);
            if (v53 >= v52 >> 1)
            {
              v55 = sub_1ABA7BBEC(v52);
              sub_1ABADE1AC(v55, v53 + 1, 1);
              v46 = v68;
            }

            *(v46 + 16) = v53 + 1;
            v54 = v46 + 32 * v53;
            *(v54 + 32) = v51;
            ++v45;
            *(v54 + 40) = v47;
            *(v54 + 48) = v49;
            *(v54 + 56) = v48;
            v24 += 3;
            if (v44 == v45)
            {
              v4 = 0;

              v10 = MEMORY[0x1E69E7CC0];
              goto LABEL_30;
            }
          }

          goto LABEL_40;
        }

        v10 = MEMORY[0x1E69E7CC0];
        v46 = MEMORY[0x1E69E7CC0];
LABEL_30:
        sub_1ABD7E5D4(v46);
        v12 = v10;
        a2 = v58;
        v9 = v60;
      }

      v11 = v63 + 1;
      if (v63 + 1 == v61)
      {

        goto LABEL_35;
      }
    }

LABEL_41:
    __break(1u);
  }

  else
  {

LABEL_35:
  }
}

uint64_t sub_1ABBF25D4(uint64_t a1)
{
  sub_1ABAD219C(&qword_1EB4D5000, &qword_1ABF48B38);
  sub_1ABB668FC();
  v2 = sub_1ABF239C4();
  v3 = sub_1ABF239C4();
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = (a1 + 48);
    while (1)
    {
      v98 = v4;
      v8 = *(v7 - 1);
      v9 = *v7;
      sub_1ABAC9398(v5, 0);
      swift_isUniquelyReferenced_nonNull_native();
      v10 = sub_1ABAF81A8();
      if (__OFADD__(v2[2], (v11 & 1) == 0))
      {
        break;
      }

      v12 = v10;
      v13 = v11;
      sub_1ABAD219C(&qword_1EB4D5008, &qword_1ABF48B40);
      if (sub_1ABF24C64())
      {
        v14 = sub_1ABAF81A8();
        if ((v13 & 1) != (v15 & 1))
        {
          goto LABEL_92;
        }

        v12 = v14;
      }

      if ((v13 & 1) == 0)
      {
        sub_1ABA7D110(&v2[v12 >> 6]);
        *(v2[6] + 8 * v12) = v8;
        *(v2[7] + 8 * v12) = MEMORY[0x1E69E7CD0];
        v16 = v2[2];
        v17 = __OFADD__(v16, 1);
        v18 = v16 + 1;
        if (v17)
        {
          goto LABEL_87;
        }

        v2[2] = v18;
      }

      sub_1ABB192D0();
      sub_1ABAC9398(v6, 0);
      swift_isUniquelyReferenced_nonNull_native();
      v19 = sub_1ABAF81A8();
      if (__OFADD__(*(v3 + 16), (v20 & 1) == 0))
      {
        goto LABEL_83;
      }

      v21 = v19;
      v22 = v20;
      sub_1ABAD219C(&qword_1EB4D5010, &qword_1ABF48B48);
      if (sub_1ABF24C64())
      {
        v23 = sub_1ABAF81A8();
        if ((v22 & 1) != (v24 & 1))
        {
          goto LABEL_92;
        }

        v21 = v23;
      }

      if ((v22 & 1) == 0)
      {
        sub_1ABA7D110(v3 + 8 * (v21 >> 6));
        *(*(v3 + 48) + 8 * v21) = v9;
        *(*(v3 + 56) + 8 * v21) = 0;
        v25 = *(v3 + 16);
        v17 = __OFADD__(v25, 1);
        v26 = v25 + 1;
        if (v17)
        {
          goto LABEL_88;
        }

        *(v3 + 16) = v26;
      }

      v27 = *(v3 + 56);
      v28 = *(v27 + 8 * v21);
      v17 = __OFADD__(v28, 1);
      v29 = v28 + 1;
      if (v17)
      {
        goto LABEL_84;
      }

      *(v27 + 8 * v21) = v29;
      v7 += 3;
      v6 = sub_1ABAD7E5C;
      v5 = sub_1ABBF3790;
      v4 = v98 - 1;
      if (v98 == 1)
      {
        goto LABEL_21;
      }
    }

LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
  }

  else
  {
    v5 = 0;
    v6 = 0;
LABEL_21:
    v96 = v5;
    v101 = v6;
    v30 = 1 << *(v3 + 32);
    v31 = -1;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    v32 = v31 & *(v3 + 64);
    v33 = (v30 + 63) >> 6;

    v34 = 0;
    v35 = MEMORY[0x1E69E7CC0];
    v36 = MEMORY[0x1E69E7CC0];
    while (v32)
    {
LABEL_29:
      v38 = __clz(__rbit64(v32));
      v32 &= v32 - 1;
      v39 = v38 | (v34 << 6);
      if (!*(*(v3 + 56) + 8 * v39))
      {
        v99 = *(*(v3 + 48) + 8 * v39);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1ABAD89C8(0, *(v36 + 16) + 1, 1, v36);
          v36 = v42;
        }

        v41 = *(v36 + 16);
        v40 = *(v36 + 24);
        if (v41 >= v40 >> 1)
        {
          v43 = sub_1ABA7BBEC(v40);
          sub_1ABAD89C8(v43, v41 + 1, 1, v36);
          v36 = v44;
        }

        *(v36 + 16) = v41 + 1;
        *(v36 + 8 * v41 + 32) = v99;
      }
    }

    while (1)
    {
      v37 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
LABEL_81:
        __break(1u);
        goto LABEL_82;
      }

      if (v37 >= v33)
      {
        break;
      }

      v32 = *(v3 + 64 + 8 * v37);
      ++v34;
      if (v32)
      {
        v34 = v37;
        goto LABEL_29;
      }
    }

    v102 = v35;
    if (!*(v36 + 16))
    {

      sub_1ABAC9398(v96, 0);
      sub_1ABAC9398(v6, 0);
      return MEMORY[0x1E69E7CC0];
    }

    while (1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABD8EF30();
        v36 = v87;
      }

      v45 = *(v36 + 16);
      if (!v45)
      {
        break;
      }

      *(v36 + 16) = v45 - 1;
      if (v2[2])
      {
        v46 = sub_1ABAF81A8();
        if (v47)
        {
          v48 = *(v2[7] + 8 * v46);
          swift_bridgeObjectRetain_n();
          sub_1ABD7E3A0(v48);
          v49 = 0;
          v50 = v48 + 56;
          sub_1ABA7F17C();
          v53 = v52 & v51;
          v55 = (v54 + 63) >> 6;
LABEL_42:
          while (v53)
          {
            v56 = v53;
LABEL_49:
            v53 = (v56 - 1) & v56;
            if (v2[2])
            {
              v58 = sub_1ABAF81A8();
              if (v59)
              {
                v95 = *(v2[7] + 8 * v58) + 56;
                sub_1ABA7F17C();
                v62 = v61 & v60;
                v94 = (v63 + 63) >> 6;
                v97 = v64;

                v65 = 0;
                v93 = v48;
                while (v62)
                {
                  v66 = v62;
LABEL_59:
                  v62 = (v66 - 1) & v66;
                  if (*(v3 + 16))
                  {
                    v68 = *(*(v97 + 48) + 24 * (__clz(__rbit64(v66)) | (v65 << 6)) + 16);
                    v100 = (v66 - 1) & v66;
                    v69 = sub_1ABAF81A8();
                    if (v70)
                    {
                      v71 = *(*(v3 + 56) + 8 * v69);
                      v91 = v71 - 1;
                      if (__OFSUB__(v71, 1))
                      {
                        goto LABEL_89;
                      }

                      swift_isUniquelyReferenced_nonNull_native();
                      v89 = sub_1ABAF81A8();
                      v90 = v72;
                      if (__OFADD__(*(v3 + 16), (v72 & 1) == 0))
                      {
                        goto LABEL_90;
                      }

                      sub_1ABAD219C(&qword_1EB4D5010, &qword_1ABF48B48);
                      if (sub_1ABF24C64())
                      {
                        v73 = sub_1ABAF81A8();
                        v75 = v90;
                        if ((v90 & 1) != (v74 & 1))
                        {
                          goto LABEL_92;
                        }
                      }

                      else
                      {
                        v73 = v89;
                        v75 = v90;
                      }

                      if (v75)
                      {
                        v77 = v91;
                        v76 = v68;
                        *(*(v3 + 56) + 8 * v73) = v91;
                      }

                      else
                      {
                        sub_1ABA7D110(v3 + 8 * (v73 >> 6));
                        v77 = v91;
                        v76 = v68;
                        *(*(v3 + 48) + 8 * v78) = v68;
                        *(*(v3 + 56) + 8 * v78) = v91;
                        v79 = *(v3 + 16);
                        v17 = __OFADD__(v79, 1);
                        v80 = v79 + 1;
                        if (v17)
                        {
                          goto LABEL_91;
                        }

                        *(v3 + 16) = v80;
                      }

                      if (!v77)
                      {
                        v82 = *(v36 + 16);
                        v81 = *(v36 + 24);
                        v83 = v82 + 1;
                        if (v82 >= v81 >> 1)
                        {
                          v84 = sub_1ABA7BBEC(v81);
                          v92 = v85;
                          sub_1ABAD89C8(v84, v85, 1, v36);
                          v83 = v92;
                          v76 = v68;
                          v36 = v86;
                        }

                        *(v36 + 16) = v83;
                        *(v36 + 8 * v82 + 32) = v76;
                        v62 = v100;
                      }
                    }
                  }
                }

                v48 = v93;
                while (1)
                {
                  v67 = v65 + 1;
                  if (__OFADD__(v65, 1))
                  {
                    goto LABEL_86;
                  }

                  if (v67 >= v94)
                  {

                    goto LABEL_42;
                  }

                  v66 = *(v95 + 8 * v67);
                  ++v65;
                  if (v66)
                  {
                    v65 = v67;
                    goto LABEL_59;
                  }
                }
              }
            }
          }

          v6 = v101;
          while (1)
          {
            v57 = v49 + 1;
            if (__OFADD__(v49, 1))
            {
              break;
            }

            if (v57 >= v55)
            {

              goto LABEL_77;
            }

            v56 = *(v50 + 8 * v57);
            ++v49;
            if (v56)
            {
              v49 = v57;
              goto LABEL_49;
            }
          }

          __break(1u);
          goto LABEL_81;
        }
      }

LABEL_77:
      if (!*(v36 + 16))
      {

        sub_1ABAC9398(v96, 0);
        sub_1ABAC9398(v6, 0);
        return v102;
      }
    }
  }

  __break(1u);
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
LABEL_92:
  result = sub_1ABF25104();
  __break(1u);
  return result;
}