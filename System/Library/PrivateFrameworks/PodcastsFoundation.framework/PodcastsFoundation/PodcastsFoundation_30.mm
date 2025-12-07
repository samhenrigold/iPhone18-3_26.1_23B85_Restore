void sub_1D8FFEF1C(unint64_t a1, void *a2, unint64_t i, uint64_t a4, NSObject *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v63 - v11;
  v13 = swift_allocObject();
  v13[2].isa = a4;
  v13[3].isa = a5;
  v14 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_37:
    v60 = i;
    v61 = v13;
    v15 = sub_1D917935C();
    v13 = v61;
    i = v60;
  }

  else
  {
    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v70 = v13;
  if (!v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_1D9189070;
    v23 = sub_1D9176E3C();
    (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
    sub_1D8FFB7BC();
    v24 = swift_allocError();
    *v25 = 0;
    v26 = type metadata accessor for ContentKeyResponse(0);
    v27 = objc_allocWithZone(v26);
    v28 = OBJC_IVAR___MTContentKeyResponse_error;
    *&v27[OBJC_IVAR___MTContentKeyResponse_error] = 0;
    v29 = &v27[OBJC_IVAR___MTContentKeyResponse_keyData];
    v73 = xmmword_1D9190380;
    *&v27[OBJC_IVAR___MTContentKeyResponse_keyData] = xmmword_1D9190380;
    *&v27[OBJC_IVAR___MTContentKeyResponse_request] = 0;
    swift_beginAccess();
    v30 = *v29;
    v31 = v29[1];
    *v29 = v73;

    v32 = a5;
    sub_1D8D75668(v30, v31);
    sub_1D8CF6B1C(v12, &v27[OBJC_IVAR___MTContentKeyResponse_renewalDate]);
    swift_beginAccess();
    v33 = *&v27[v28];
    *&v27[v28] = v24;
    v34 = v24;

    v75.receiver = v27;
    v75.super_class = v26;
    v35 = objc_msgSendSuper2(&v75, sel_init);

    sub_1D8D08A50(v12, &qword_1ECAB75C0, &unk_1D9188A50);
    *(v74 + 32) = v35;
    swift_beginAccess();

    sub_1D8E30154(v36);
    swift_endAccess();
    dispatch_group_leave(v32);

    return;
  }

  v74 = a1 & 0xC000000000000001;
  v69 = a4;
  v68 = a5;
  v64 = i;
  v63 = a2;
  v65 = v14;
  if ((a1 & 0xC000000000000001) != 0)
  {

    v62 = a5;
    v12 = MEMORY[0x1DA72AA90](0, a1);
    v71 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v71 = a1 & 0xFFFFFFFFFFFFFF8;
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_40:
      __break(1u);
      __break(1u);
      return;
    }

    v16 = *(a1 + 32);

    v17 = a5;
    v12 = v16;
  }

  v66 = sub_1D8FF9BA0();
  a2 = *(v12 + OBJC_IVAR___MTContentKeyRequest_requestType);
  a5 = *(v12 + OBJC_IVAR___MTContentKeyRequest_secureInvalidationDsid);
  v67 = v12;
  a4 = *(v12 + OBJC_IVAR___MTContentKeyRequest_offlineRequest);
  v13 = a5;
  v72 = v13;
  *&v73 = a1;
  for (i = 0; ; ++i)
  {
    if (v74)
    {
      v13 = MEMORY[0x1DA72AA90](i, a1);
    }

    else
    {
      if (i >= *(v71 + 16))
      {
        goto LABEL_36;
      }

      v13 = *(a1 + 8 * i + 32);
    }

    v18 = v13;
    v14 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (a2 != *(&v13->isa + OBJC_IVAR___MTContentKeyRequest_requestType) || a4 != *(&v13->isa + OBJC_IVAR___MTContentKeyRequest_offlineRequest))
    {
      break;
    }

    v19 = *(&v13->isa + OBJC_IVAR___MTContentKeyRequest_secureInvalidationDsid);
    if (v19)
    {
      if (!a5)
      {
        break;
      }

      sub_1D8CF2154(0, qword_1EDCD0810, 0x1E696AD98);
      v20 = v72;
      v21 = v19;
      v12 = sub_1D917914C();

      a1 = v73;
      if ((v12 & 1) == 0)
      {
        break;
      }
    }

    else if (a5)
    {
      break;
    }

    if (v14 == v15)
    {
      v47 = v64;
      [v64 setPersonalizeRequests_];
      sub_1D8FFBA68(a1);
      v48 = v47;
      v50 = v49;
      v52 = v51;
      v53 = swift_allocObject();
      v53[2] = a1;
      v53[3] = sub_1D8FFF8D8;
      v53[4] = v70;
      v53[5] = a2;
      v53[6] = v50;
      v53[7] = v52;
      v53[8] = a5;
      v53[9] = v48;
      v54 = v63;
      v53[10] = v63;
      aBlock[4] = sub_1D8FFF8E0;
      aBlock[5] = v53;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D8D591F0;
      aBlock[3] = &block_descriptor_32_0;
      v55 = _Block_copy(aBlock);
      v56 = v72;

      sub_1D8DA04B0(v50, v52);
      v57 = v54;
      v58 = v48;

      v59 = v66;
      [v66 valueWithCompletion_];
      _Block_release(v55);
      sub_1D8D75668(v50, v52);

      return;
    }
  }

  if (v65)
  {
    v22 = sub_1D917935C();
  }

  else
  {
    v22 = *(v71 + 16);
  }

  v37 = v68;
  if (v22)
  {
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1D91795CC();
    if (v22 < 0)
    {
      goto LABEL_40;
    }

    v38 = 0;
    do
    {
      if (v74)
      {
        v39 = MEMORY[0x1DA72AA90](v38, v73);
      }

      else
      {
        v39 = *(v73 + 8 * v38 + 32);
      }

      v40 = v39;
      ++v38;
      sub_1D8FFB7BC();
      v41 = swift_allocError();
      *v42 = 3;
      v43 = objc_allocWithZone(type metadata accessor for ContentKeyResponse(0));
      v44 = v41;
      v45 = sub_1D9176A5C();

      [v43 initWithRequest:v40 keyData:0 renewalDate:0 error:v45];
      sub_1D917959C();
      sub_1D91795DC();
      sub_1D91795EC();
      sub_1D91795AC();
    }

    while (v22 != v38);
    v37 = v68;
  }

  swift_beginAccess();

  sub_1D8E30154(v46);
  swift_endAccess();
  dispatch_group_leave(v37);
}

uint64_t objectdestroy_19Tm(void (*a1)(void))
{

  a1(*(v1 + 32));

  return swift_deallocObject();
}

unint64_t sub_1D8FFF9DC()
{
  result = qword_1ECAB8C50;
  if (!qword_1ECAB8C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8C50);
  }

  return result;
}

void sub_1D8FFFA50(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D8F5DEC0(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  v4 = sub_1D9179A2C();
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (*v13 >= v11)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      v7 = sub_1D917867C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = (v7 + 32);
    v16[1] = v6;
    sub_1D9002CF0(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
}

id BaseFeedRequest.__allocating_init(storeID:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___MTBaseFeedRequest_showMetadata] = 0;
  *&v3[OBJC_IVAR___MTBaseFeedRequest_storeID] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id BaseFeedRequest.init(storeID:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___MTBaseFeedRequest_showMetadata] = 0;
  *&v1[OBJC_IVAR___MTBaseFeedRequest_storeID] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BaseFeedRequest();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_1D8FFFCB8@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - v3;
  v32 = &v23 - v3;
  v5 = sub_1D9176C2C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 1, 1, v5);
  v7 = MEMORY[0x1E69E7CC0];
  v31 = sub_1D8D94DF8(MEMORY[0x1E69E7CC0]);
  v30 = sub_1D8D94DF8(v7);
  v29 = sub_1D8D951E0(v7);
  v28 = sub_1D8D9503C(v7);
  v27 = sub_1D8D9536C(v7);
  v26 = sub_1D8D9536C(v7);
  v25 = sub_1D8D953C4(v7);
  v23 = sub_1D8D952D8(v7);
  v24 = sub_1D8D95394(v7);
  v8 = sub_1D8D957C4(v7);
  *(a1 + 41) = 263;
  *(a1 + 43) = 5;
  *(a1 + 152) = 1;
  *(a1 + 201) = 1;
  v9 = type metadata accessor for MediaRequest.Params(0);
  v10 = v9[28];
  v6((a1 + v10), 1, 1, v5);
  v11 = (a1 + v9[29]);
  v12 = (a1 + v9[31]);
  v13 = v9[34];
  v14 = (a1 + v9[33]);
  v15 = (a1 + v9[35]);
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 83951876;
  v16 = v30;
  *(a1 + 48) = v31;
  *(a1 + 56) = v16;
  v17 = v28;
  *(a1 + 64) = v29;
  *(a1 + 72) = v7;
  v19 = v26;
  v18 = v27;
  *(a1 + 80) = v17;
  *(a1 + 88) = v18;
  v20 = v25;
  *(a1 + 96) = v19;
  *(a1 + 104) = v20;
  v21 = v23;
  *(a1 + 112) = v7;
  *(a1 + 120) = v21;
  *(a1 + 128) = v7;
  *(a1 + 136) = v7;
  *(a1 + 144) = v7;
  *(a1 + 152) = 1;
  *(a1 + 160) = 0;
  *(a1 + 168) = 1;
  *(a1 + 176) = v24;
  *(a1 + 184) = v8;
  *(a1 + 192) = 0;
  *(a1 + 200) = 257;
  *(a1 + 202) = 0;
  result = sub_1D8E26828(v32, a1 + v10);
  *v11 = 0;
  v11[1] = 0;
  *(a1 + v9[30]) = 0;
  *v12 = 0;
  v12[1] = 0;
  *(a1 + v9[32]) = v7;
  *v14 = 0;
  v14[1] = 0;
  *(a1 + v13) = 2;
  *v15 = 0;
  v15[1] = 0;
  return result;
}

id sub_1D8FFFF20()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v33 - v1;
  v42 = &v33 - v1;
  v3 = type metadata accessor for MediaRequest.Params(0);
  v4 = (v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v46 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v33 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4630, &unk_1D9192070);
  v9 = swift_allocObject();
  v45 = v9;
  *(v9 + 16) = xmmword_1D9189080;
  v10 = MEMORY[0x1E69E7CC0];
  *(v9 + 32) = sub_1D8D653BC(MEMORY[0x1E69E7CC0]);
  v44 = type metadata accessor for FullFeedRequest();
  v11 = objc_allocWithZone(v44);
  v11[OBJC_IVAR___MTFullFeedRequest_isSerial] = 0;
  v11[OBJC_IVAR___MTFullFeedRequest_hasSeasons] = 0;
  *&v11[OBJC_IVAR___MTBaseFeedRequest_showMetadata] = 0;
  *&v11[OBJC_IVAR___MTBaseFeedRequest_storeID] = 0;
  v12 = type metadata accessor for BaseFeedRequest();
  v47.receiver = v11;
  v47.super_class = v12;
  v43 = objc_msgSendSuper2(&v47, sel_init);
  v13 = sub_1D9176C2C();
  v14 = *(*(v13 - 8) + 56);
  v14(v2, 1, 1, v13);
  v41 = sub_1D8D94DF8(v10);
  v40 = sub_1D8D94DF8(v10);
  v39 = sub_1D8D951E0(v10);
  v38 = sub_1D8D9503C(v10);
  v37 = sub_1D8D9536C(v10);
  v36 = sub_1D8D9536C(v10);
  v35 = sub_1D8D953C4(v10);
  v33 = sub_1D8D952D8(v10);
  v34 = sub_1D8D95394(v10);
  v15 = sub_1D8D957C4(v10);
  *(v8 + 41) = 263;
  v8[43] = 5;
  v8[152] = 1;
  v8[201] = 1;
  v16 = v4[30];
  v14(&v8[v16], 1, 1, v13);
  v17 = &v8[v4[31]];
  v18 = &v8[v4[33]];
  v19 = v4[36];
  v20 = &v8[v4[35]];
  v21 = &v8[v4[37]];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  *(v8 + 10) = 83951876;
  v22 = v40;
  *(v8 + 6) = v41;
  *(v8 + 7) = v22;
  v23 = v38;
  *(v8 + 8) = v39;
  *(v8 + 9) = v10;
  v24 = v36;
  v25 = v37;
  *(v8 + 10) = v23;
  *(v8 + 11) = v25;
  *(v8 + 12) = v24;
  *(v8 + 13) = v35;
  *(v8 + 14) = v10;
  *(v8 + 15) = v33;
  *(v8 + 16) = v10;
  *(v8 + 17) = v10;
  *(v8 + 18) = v10;
  v8[152] = 1;
  *(v8 + 20) = 0;
  v8[168] = 1;
  *(v8 + 22) = v34;
  *(v8 + 23) = v15;
  *(v8 + 24) = 0;
  *(v8 + 100) = 257;
  v8[202] = 0;
  sub_1D8E26828(v42, &v8[v16]);
  *v17 = 0;
  *(v17 + 1) = 0;
  v8[v4[32]] = 0;
  *v18 = 0;
  *(v18 + 1) = 0;
  *&v8[v4[34]] = v10;
  *v20 = 0;
  *(v20 + 1) = 0;
  v8[v19] = 2;
  v26 = type metadata accessor for FullFeedResponse(0);
  *v21 = 0;
  *(v21 + 1) = 0;
  v27 = objc_allocWithZone(v26);
  v28 = v43;
  *&v27[OBJC_IVAR___MTFullFeedResponse_fullFeedRequest] = swift_dynamicCastClassUnconditional();
  v29 = v46;
  sub_1D900BF9C(v8, v46, type metadata accessor for MediaRequest.Params);
  v30 = v28;
  v31 = BaseFeedResponse.init(jsonArray:request:params:)(v45, v30, v29);
  sub_1D9001E64();

  sub_1D8D90BEC(v8);
  return v31;
}

uint64_t sub_1D9000318(uint64_t a1, uint64_t a2)
{
  v89 = a1;
  v90 = a2;
  v74 = sub_1D917744C();
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v76 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v70 - v5;
  v86 = &v70 - v5;
  v7 = type metadata accessor for MediaRequest.Params(0);
  v8 = (v7 - 8);
  v75 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v91 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v70 - v11;
  v88 = sub_1D8D946F4(&unk_1F54613C8);
  sub_1D900B924(&unk_1F54613E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D9189080;
  v71 = *(v2 + OBJC_IVAR___MTBaseFeedRequest_storeID);
  v92[0] = v71;
  *(v13 + 32) = sub_1D9179A4C();
  *(v13 + 40) = v14;
  v15 = sub_1D9176C2C();
  v16 = *(*(v15 - 8) + 56);
  v16(v6, 1, 1, v15);
  v17 = MEMORY[0x1E69E7CC0];
  v85 = sub_1D8D94DF8(MEMORY[0x1E69E7CC0]);
  v84 = sub_1D8D94DF8(v17);
  v83 = sub_1D8D951E0(v17);
  v82 = sub_1D8D9503C(v17);
  v81 = sub_1D8D9536C(v17);
  v80 = sub_1D8D953C4(v17);
  v78 = sub_1D8D952D8(v17);
  v79 = sub_1D8D95394(v17);
  v18 = sub_1D8D957C4(v17);
  *(v12 + 41) = 263;
  v12[43] = 5;
  v12[152] = 1;
  v12[201] = 1;
  v19 = v8[30];
  v16(&v12[v19], 1, 1, v15);
  v20 = &v12[v8[31]];
  v21 = &v12[v8[33]];
  v22 = v8[35];
  v77 = v8[36];
  v23 = &v12[v22];
  v24 = &v12[v8[37]];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 4) = 0;
  *(v12 + 10) = 83951876;
  v25 = v84;
  *(v12 + 6) = v85;
  *(v12 + 7) = v25;
  v26 = v82;
  *(v12 + 8) = v83;
  *(v12 + 9) = v17;
  v27 = v81;
  *(v12 + 10) = v26;
  *(v12 + 11) = v27;
  v28 = v80;
  *(v12 + 12) = v88;
  *(v12 + 13) = v28;
  v29 = v78;
  *(v12 + 14) = v17;
  *(v12 + 15) = v29;
  *(v12 + 16) = v17;
  *(v12 + 17) = v17;
  *(v12 + 18) = v13;
  v12[152] = 1;
  *(v12 + 20) = 0;
  v12[168] = 1;
  *(v12 + 22) = v79;
  *(v12 + 23) = v18;
  v30 = v86;
  v31 = v87;
  *(v12 + 24) = 0;
  *(v12 + 100) = 257;
  v12[202] = 0;
  v32 = &v12[v19];
  v33 = v89;
  sub_1D8E26828(v30, v32);
  *v20 = 0;
  *(v20 + 1) = 0;
  v12[v8[32]] = 0;
  *v21 = 0;
  *(v21 + 1) = 0;
  *&v12[v8[34]] = v17;
  *v23 = 0;
  *(v23 + 1) = 0;
  v34 = v90;
  v12[v77] = 2;
  *v24 = 0;
  *(v24 + 1) = 0;
  v35 = swift_allocObject();
  *(v35 + 2) = v31;
  *(v35 + 3) = v33;
  *(v35 + 4) = v34;
  if (*(v31 + OBJC_IVAR___MTBaseFeedRequest_showMetadata))
  {
    v36 = OBJC_IVAR___MTBaseMAPIRequest_mediaRequestController;
    swift_beginAccess();
    sub_1D8CFD9D8(v31 + v36, v92);
    v37 = v31;
    v38 = v93;
    v39 = v94;
    v88 = __swift_project_boxed_opaque_existential_1(v92, v93);
    v40 = *((*MEMORY[0x1E69E7D40] & *v37) + 0xA0);

    v41 = v37;
    v42 = v91;
    v40();
    v43 = swift_allocObject();
    v43[2] = v41;
    v43[3] = v33;
    v43[4] = v34;
    v44 = *(v39 + 48);

    v45 = v41;
    v44(v42, sub_1D900BA6C, v43, v38, v39);

    sub_1D8D90BEC(v42);
    __swift_destroy_boxed_opaque_existential_1Tm(v92);
    return sub_1D8D90BEC(v12);
  }

  else
  {
    v47 = v72;
    v48 = v73;
    v49 = v74;
    v50 = v91;
    v51 = qword_1ECAB3590;

    v52 = v31;
    if (v51 != -1)
    {
      swift_once();
    }

    v53 = __swift_project_value_buffer(v49, qword_1ECAB7940);
    swift_beginAccess();
    v54 = v76;
    (*(v48 + 16))(v76, v53, v49);
    v55 = v52;
    v56 = sub_1D917741C();
    v57 = sub_1D9178D1C();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 134217984;
      *(v58 + 4) = v71;

      _os_log_impl(&dword_1D8CEC000, v56, v57, "Fetching show metadata for show with storeID %lld...", v58, 0xCu);
      v59 = v58;
      v54 = v76;
      MEMORY[0x1DA72CB90](v59, -1, -1);
    }

    else
    {

      v56 = v55;
    }

    (*(v48 + 8))(v54, v49);
    v60 = OBJC_IVAR___MTBaseMAPIRequest_mediaRequestController;
    swift_beginAccess();
    sub_1D8CFD9D8(v55 + v60, v92);
    v61 = v93;
    v62 = v94;
    __swift_project_boxed_opaque_existential_1(v92, v93);
    sub_1D900BF9C(v12, v50, type metadata accessor for MediaRequest.Params);
    v63 = (*(v75 + 80) + 24) & ~*(v75 + 80);
    v64 = swift_allocObject();
    v65 = v50;
    v66 = v64;
    *(v64 + 16) = v55;
    sub_1D900C004(v65, v64 + v63, type metadata accessor for MediaRequest.Params);
    v67 = (v66 + ((v47 + v63 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v67 = sub_1D900B98C;
    v67[1] = v35;
    v68 = *(v62 + 56);
    v69 = v55;

    v68(v12, sub_1D900B998, v66, v61, v62);

    sub_1D8D90BEC(v12);
    return __swift_destroy_boxed_opaque_existential_1Tm(v92);
  }
}

uint64_t sub_1D9000B3C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MediaRequest.Params(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = OBJC_IVAR___MTBaseMAPIRequest_mediaRequestController;
  swift_beginAccess();
  sub_1D8CFD9D8(a1 + v9, v17);
  v10 = v18;
  v11 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0xA0))();
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v13 = *(v11 + 48);
  v14 = a1;

  v13(v8, sub_1D900C06C, v12, v10, v11);

  sub_1D8D90BEC(v8);
  return __swift_destroy_boxed_opaque_existential_1Tm(v17);
}

void sub_1D9000CC8(uint64_t a1, void *a2, void *a3, void (*a4)(uint64_t, void *), uint64_t a5)
{
  v41[1] = a5;
  v9 = type metadata accessor for MediaRequest.Params(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D917744C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v41 - v17;
  if (a2)
  {
    v19 = a2;
    if (qword_1ECAB3590 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v12, qword_1ECAB7940);
    swift_beginAccess();
    (*(v13 + 16))(v18, v20, v12);
    v21 = a2;
    v22 = a3;
    v23 = sub_1D917741C();
    v24 = sub_1D9178CFC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v41[0] = a4;
      v27 = v26;
      v42 = v26;
      *v25 = 134218242;
      *(v25 + 4) = *&v22[OBJC_IVAR___MTBaseFeedRequest_storeID];

      *(v25 + 12) = 2080;
      swift_getErrorValue();
      v28 = sub_1D9179D2C();
      v30 = sub_1D8CFA924(v28, v29, &v42);

      *(v25 + 14) = v30;
      _os_log_impl(&dword_1D8CEC000, v23, v24, "Feed fetch for show with storeID - %lld - resulted in error: %s", v25, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      v31 = v27;
      a4 = v41[0];
      MEMORY[0x1DA72CB90](v31, -1, -1);
      MEMORY[0x1DA72CB90](v25, -1, -1);
    }

    else
    {
    }

    (*(v13 + 8))(v18, v12);
    v37 = a2;
    a4(0, a2);
  }

  else
  {
    if (qword_1ECAB3590 != -1)
    {
      swift_once();
    }

    v32 = __swift_project_value_buffer(v12, qword_1ECAB7940);
    swift_beginAccess();
    (*(v13 + 16))(v15, v32, v12);
    v33 = a3;
    v34 = sub_1D917741C();
    v35 = sub_1D9178D1C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 134217984;
      *(v36 + 4) = *(v33 + OBJC_IVAR___MTBaseFeedRequest_storeID);

      _os_log_impl(&dword_1D8CEC000, v34, v35, "Feed fetch completed successfully for show with storeID %lld", v36, 0xCu);
      MEMORY[0x1DA72CB90](v36, -1, -1);
    }

    else
    {

      v34 = v33;
    }

    v38 = (*(v13 + 8))(v15, v12);
    if (a1)
    {
      v39 = MEMORY[0x1E69E7D40];
      (*((*MEMORY[0x1E69E7D40] & v33->isa) + 0xA0))(v38);
      (*((*v39 & v33->isa) + 0xA8))(a1, v33, v11);
      sub_1D8D90BEC(v11);
      v40 = swift_unknownObjectRetain();
      a4(v40, 0);
      swift_unknownObjectRelease_n();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1D90011C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char *a6, uint64_t a7, uint64_t (*a8)(__n128))
{
  v12 = sub_1D917744C();
  v13 = *(v12 - 8);
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v12);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5)
  {
    v17 = a5;
    if (qword_1ECAB3590 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v12, qword_1ECAB7940);
    swift_beginAccess();
    (*(v13 + 16))(v16, v18, v12);
    v19 = a5;
    v20 = a6;
    v21 = sub_1D917741C();
    v22 = sub_1D9178CFC();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v37 = a8;
      v24 = v23;
      v25 = swift_slowAlloc();
      v38 = v25;
      *v24 = 134218242;
      *(v24 + 4) = *&v20[OBJC_IVAR___MTBaseFeedRequest_storeID];

      *(v24 + 12) = 2080;
      swift_getErrorValue();
      v26 = sub_1D9179D2C();
      v28 = sub_1D8CFA924(v26, v27, &v38);

      *(v24 + 14) = v28;
      _os_log_impl(&dword_1D8CEC000, v21, v22, "Show metadata fetch with storeID - %lld - resulted in error: %s", v24, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x1DA72CB90](v25, -1, -1);
      v29 = v24;
      a8 = v37;
      MEMORY[0x1DA72CB90](v29, -1, -1);
    }

    else
    {
    }

    (*(v13 + 8))(v16, v12);
    return a8(v14);
  }

  if (!a3)
  {
    return a8(v14);
  }

  type metadata accessor for MediaRequestResponseParser();
  _s18PodcastsFoundation26MediaRequestResponseParserC15extractNextPageySSSgSDys11AnyHashableVypGFZ_0(a3);
  if (v30)
  {
  }

  sub_1D90507E0(a3, v39);
  if (v39[1])
  {
    v31 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    LOBYTE(v38) = v39[0];
    v31 = sub_1D9052EB8(a3, &v38);
  }

  if (!(v31 >> 62))
  {
    result = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_16;
    }

LABEL_22:

    goto LABEL_23;
  }

  result = sub_1D917935C();
  if (!result)
  {
    goto LABEL_22;
  }

LABEL_16:
  if ((v31 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1DA72AA90](0, v31);
    goto LABEL_19;
  }

  if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    swift_unknownObjectRetain();
LABEL_19:

    type metadata accessor for ServerPodcastBase();
    v34 = swift_dynamicCastClass();
    if (v34)
    {
LABEL_24:
      v35 = *&a6[OBJC_IVAR___MTBaseFeedRequest_showMetadata];
      *&a6[OBJC_IVAR___MTBaseFeedRequest_showMetadata] = v34;

      return a8(v14);
    }

    swift_unknownObjectRelease();
LABEL_23:
    v34 = 0;
    goto LABEL_24;
  }

  __break(1u);
  return result;
}

id BaseFeedRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_1D90016D0(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = *(v1 + 16);
  if (*(v2 + 16) <= a1)
  {
LABEL_8:
    __break(1u);
    return;
  }

  if (*(*(v1 + 8) + 16))
  {
    sub_1D8D490F4(*(v2 + 8 * a1 + 32));
    if (v3)
    {
    }
  }
}

double sub_1D900173C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18PodcastsFoundation16BaseFeedResponse_response;
  swift_beginAccess();
  *(v3 + v4) = v2;

  return result;
}

double sub_1D90017A4()
{
  swift_beginAccess();

  return result;
}

double sub_1D90017EC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18PodcastsFoundation16BaseFeedResponse_response;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

void sub_1D90018A4(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18PodcastsFoundation16BaseFeedResponse_showMetadata;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_1D9001904()
{
  v1 = OBJC_IVAR____TtC18PodcastsFoundation16BaseFeedResponse_showMetadata;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1D9001950(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18PodcastsFoundation16BaseFeedResponse_showMetadata;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

double sub_1D9001A54@<D0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC18PodcastsFoundation16BaseFeedResponse_parsedCache);
  swift_beginAccess();
  v4 = v3[1];
  v6 = v3[2];
  v5 = v3[3];
  *a2 = *v3;
  a2[1] = v4;
  a2[2] = v6;
  a2[3] = v5;
  swift_unknownObjectRetain();

  return result;
}

uint64_t sub_1D9001ADC(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = (*a2 + OBJC_IVAR____TtC18PodcastsFoundation16BaseFeedResponse_parsedCache);
  swift_beginAccess();
  *v6 = v2;
  v6[1] = v3;
  v6[2] = v4;
  v6[3] = v5;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

double sub_1D9001B9C@<D0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC18PodcastsFoundation16BaseFeedResponse_parsedCache);
  swift_beginAccess();
  v4 = v3[1];
  v6 = v3[2];
  v5 = v3[3];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = v5;
  swift_unknownObjectRetain();

  return result;
}

uint64_t sub_1D9001C20(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = v1 + OBJC_IVAR____TtC18PodcastsFoundation16BaseFeedResponse_parsedCache;
  swift_beginAccess();
  *v5 = *a1;
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;

  return swift_unknownObjectRelease();
}

id BaseFeedResponse.init(jsonArray:request:params:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC18PodcastsFoundation16BaseFeedResponse_showMetadata;
  *&v3[OBJC_IVAR____TtC18PodcastsFoundation16BaseFeedResponse_showMetadata] = 0;
  *&v3[OBJC_IVAR____TtC18PodcastsFoundation16BaseFeedResponse_response] = a1;
  *&v3[OBJC_IVAR____TtC18PodcastsFoundation16BaseFeedResponse_request] = a2;
  sub_1D900BF9C(a3, &v3[OBJC_IVAR____TtC18PodcastsFoundation16BaseFeedResponse_params], type metadata accessor for MediaRequest.Params);
  v7 = *(a2 + OBJC_IVAR___MTBaseFeedRequest_showMetadata);
  swift_beginAccess();
  *&v3[v6] = v7;
  v8 = MEMORY[0x1E69E7CC0];
  v9 = sub_1D8E271A4(MEMORY[0x1E69E7CC0]);
  v10 = &v3[OBJC_IVAR____TtC18PodcastsFoundation16BaseFeedResponse_parsedCache];
  *v10 = v8;
  *(v10 + 1) = v9;
  *(v10 + 2) = v8;
  *(v10 + 3) = 0;
  v14.receiver = v3;
  v14.super_class = type metadata accessor for BaseFeedResponse(0);
  v11 = v7;
  v12 = objc_msgSendSuper2(&v14, sel_init);
  sub_1D8D90BEC(a3);
  return v12;
}

void sub_1D9001E64()
{
  v1 = (v0 + OBJC_IVAR____TtC18PodcastsFoundation16BaseFeedResponse_parsedCache);
  swift_beginAccess();
  if (*v1 >> 62)
  {
    goto LABEL_118;
  }

  if (!*((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    do
    {
      v107 = MEMORY[0x1E69E7CC0];
      v2 = OBJC_IVAR____TtC18PodcastsFoundation16BaseFeedResponse_response;
      swift_beginAccess();
      v3 = *(v96 + v2);
      v99 = *(v3 + 16);
      if (!v99)
      {
        goto LABEL_104;
      }

      type metadata accessor for MediaRequestResponseParser();
      v95 = OBJC_IVAR____TtC18PodcastsFoundation16BaseFeedResponse_request;
      v98 = v3 + 32;

      v4 = 0;
      v101 = v1;
      v97 = v3;
      while (1)
      {
        if (v4 >= *(v3 + 16))
        {
LABEL_116:
          __break(1u);
          goto LABEL_117;
        }

        v100 = v4;
        v5 = *(v98 + 8 * v4);
        v106[0] = 1954047342;
        v106[1] = 0xE400000000000000;

        sub_1D91793EC();
        if (*(v5 + 16) && (v6 = sub_1D8D6550C(&v105), (v7 & 1) != 0))
        {
          sub_1D8CFAD1C(*(v5 + 56) + 32 * v6, v106);
          sub_1D8D9A308(&v105);
          if (swift_dynamicCast())
          {
          }
        }

        else
        {
          sub_1D8D9A308(&v105);
        }

        sub_1D90507E0(v5, &v105);
        if (BYTE1(v105))
        {

          v8 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          LOBYTE(v106[0]) = v105;
          v8 = sub_1D9052EB8(v5, v106);
          v10 = v9;
        }

        sub_1D8E3016C(v11);
        if (!(v8 >> 62))
        {
          v12 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v12)
          {
            break;
          }

          goto LABEL_5;
        }

        v12 = sub_1D917935C();
        if (v12)
        {
          break;
        }

LABEL_5:
        v4 = v100 + 1;

        v3 = v97;
        if (v100 + 1 == v99)
        {

LABEL_104:
          v90 = v1[1];
          v91 = *(v90 + 16);
          if (v91)
          {
            v92 = sub_1D8F06378(*(v90 + 16), 0);
            v93 = sub_1D8DB8018(&v105, (v92 + 32), v91, v90);
            v94 = v105;
            swift_bridgeObjectRetain_n();
            sub_1D8D1B144(v94);
            if (v93 == v91)
            {
LABEL_108:
              v105 = v92;
              sub_1D8FFFA50(&v105);

              v1[2] = v105;
              *v1 = v107;

              return;
            }

            __break(1u);
          }

          v92 = MEMORY[0x1E69E7CC0];
          goto LABEL_108;
        }
      }

      if (v12 >= 1)
      {
        v13 = 0;
        v103 = OBJC_IVAR___MTBaseFeedRequest_showMetadata;
        v104 = *(v96 + v95);
        v102 = v8 & 0xC000000000000001;
        while (1)
        {
          if (v102)
          {
            MEMORY[0x1DA72AA90](v13, v8);
          }

          else
          {
            swift_unknownObjectRetain();
          }

          type metadata accessor for ServerPodcastEpisode();
          v14 = swift_dynamicCastClassUnconditional();
          v15 = *(v104 + v103);
          if (v15)
          {
            break;
          }

LABEL_37:
          v35 = OBJC_IVAR___MTServerPodcastEpisode_attributes;
          v1 = v101;
          if (*(*&v14[OBJC_IVAR___MTServerPodcastEpisode_attributes] + 168) && ((, v36 = sub_1D917980C(), , v36 == 1) || v36 == 2))
          {
            v37 = sub_1D9179ACC();

            if ((v37 & 1) == 0)
            {
              goto LABEL_44;
            }
          }

          else
          {
          }

          if (!v101[3])
          {
            v101[3] = v14;
            swift_unknownObjectRetain();
          }

LABEL_44:
          v38 = *&v14[v35];
          if (*(v38 + 360))
          {
            if (*(v38 + 168) && (, v39 = sub_1D917980C(), , v39 == 1))
            {
            }

            else
            {
              v56 = sub_1D9179ACC();

              if ((v56 & 1) == 0)
              {
                v57 = v101[1];
                if (*(v57 + 16) && (v58 = sub_1D8D490F4(0), (v59 & 1) != 0))
                {
                  v106[0] = *(*(v57 + 56) + 8 * v58);
                }

                else
                {
                  v106[0] = MEMORY[0x1E69E7CC0];
                }

                v63 = v14;
                MEMORY[0x1DA729B90]();
                if (*((v106[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v106[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_1D917863C();
                }

                sub_1D917869C();
                v64 = v106[0];
                swift_beginAccess();
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v47 = v101[1];
                v101[1] = 0x8000000000000000;
                v66 = sub_1D8D490F4(0);
                v68 = v47[2];
                v69 = (v67 & 1) == 0;
                v61 = __OFADD__(v68, v69);
                v70 = v68 + v69;
                if (v61)
                {
                  goto LABEL_113;
                }

                v71 = v67;
                if (v47[3] < v70)
                {
                  sub_1D90081F8(v70, isUniquelyReferenced_nonNull_native, &qword_1ECAB42C0, &qword_1D9188E18);
                  v66 = sub_1D8D490F4(0);
                  if ((v71 & 1) != (v72 & 1))
                  {
                    goto LABEL_120;
                  }

                  goto LABEL_92;
                }

                if (isUniquelyReferenced_nonNull_native)
                {
LABEL_92:
                  if ((v71 & 1) == 0)
                  {
                    goto LABEL_99;
                  }
                }

                else
                {
                  v87 = v8;
                  v88 = v66;
                  sub_1D8F84494();
                  v66 = v88;
                  v8 = v87;
                  if ((v71 & 1) == 0)
                  {
LABEL_99:
                    v47[(v66 >> 6) + 8] |= 1 << v66;
                    *(v47[6] + 8 * v66) = 0;
                    *(v47[7] + 8 * v66) = v64;
                    v89 = v47[2];
                    v61 = __OFADD__(v89, 1);
                    v62 = v89 + 1;
                    if (v61)
                    {
                      goto LABEL_115;
                    }

                    goto LABEL_100;
                  }
                }

                goto LABEL_93;
              }
            }

            v73 = v101[1];
            if (*(v73 + 16) && (v74 = sub_1D8D490F4(-1), (v75 & 1) != 0))
            {
              v106[0] = *(*(v73 + 56) + 8 * v74);
            }

            else
            {
              v106[0] = MEMORY[0x1E69E7CC0];
            }

            v76 = v14;
            MEMORY[0x1DA729B90]();
            if (*((v106[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v106[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1D917863C();
            }

            sub_1D917869C();
            v64 = v106[0];
            swift_beginAccess();
            v77 = swift_isUniquelyReferenced_nonNull_native();
            v47 = v101[1];
            v101[1] = 0x8000000000000000;
            v66 = sub_1D8D490F4(-1);
            v79 = v47[2];
            v80 = (v78 & 1) == 0;
            v61 = __OFADD__(v79, v80);
            v81 = v79 + v80;
            if (v61)
            {
              goto LABEL_111;
            }

            v82 = v78;
            if (v47[3] >= v81)
            {
              if ((v77 & 1) == 0)
              {
                v85 = v8;
                v86 = v66;
                sub_1D8F84494();
                v66 = v86;
                v8 = v85;
                if ((v82 & 1) == 0)
                {
LABEL_88:
                  v47[(v66 >> 6) + 8] |= 1 << v66;
                  *(v47[6] + 8 * v66) = -1;
                  *(v47[7] + 8 * v66) = v64;
                  v84 = v47[2];
                  v61 = __OFADD__(v84, 1);
                  v62 = v84 + 1;
                  if (v61)
                  {
                    goto LABEL_114;
                  }

                  goto LABEL_100;
                }

                goto LABEL_93;
              }
            }

            else
            {
              sub_1D90081F8(v81, v77, &qword_1ECAB42C0, &qword_1D9188E18);
              v66 = sub_1D8D490F4(-1);
              if ((v82 & 1) != (v83 & 1))
              {
LABEL_120:
                sub_1D9179CFC();
                __break(1u);

                __break(1u);
                return;
              }
            }

            if ((v82 & 1) == 0)
            {
              goto LABEL_88;
            }

LABEL_93:
            *(v47[7] + 8 * v66) = v64;
            goto LABEL_20;
          }

          v40 = *(v38 + 352);
          v41 = v101[1];
          if (*(v41 + 16) && (v42 = sub_1D8D490F4(v40), (v43 & 1) != 0))
          {
            v106[0] = *(*(v41 + 56) + 8 * v42);
          }

          else
          {
            v106[0] = MEMORY[0x1E69E7CC0];
          }

          v44 = swift_unknownObjectRetain();
          MEMORY[0x1DA729B90](v44);
          if (*((v106[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v106[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D917863C();
          }

          sub_1D917869C();
          v45 = v106[0];
          swift_beginAccess();
          v46 = swift_isUniquelyReferenced_nonNull_native();
          v47 = v101[1];
          v101[1] = 0x8000000000000000;
          v49 = sub_1D8D490F4(v40);
          v50 = v47[2];
          v51 = (v48 & 1) == 0;
          v52 = v50 + v51;
          if (__OFADD__(v50, v51))
          {
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
            goto LABEL_116;
          }

          v53 = v48;
          if (v47[3] >= v52)
          {
            if (v46)
            {
              if ((v48 & 1) == 0)
              {
                goto LABEL_65;
              }
            }

            else
            {
              sub_1D8F84494();
              if ((v53 & 1) == 0)
              {
                goto LABEL_65;
              }
            }
          }

          else
          {
            sub_1D90081F8(v52, v46, &qword_1ECAB42C0, &qword_1D9188E18);
            v54 = sub_1D8D490F4(v40);
            if ((v53 & 1) != (v55 & 1))
            {
              goto LABEL_120;
            }

            v49 = v54;
            if ((v53 & 1) == 0)
            {
LABEL_65:
              v47[(v49 >> 6) + 8] |= 1 << v49;
              *(v47[6] + 8 * v49) = v40;
              *(v47[7] + 8 * v49) = v45;
              v60 = v47[2];
              v61 = __OFADD__(v60, 1);
              v62 = v60 + 1;
              if (v61)
              {
                goto LABEL_112;
              }

LABEL_100:
              v47[2] = v62;
              goto LABEL_21;
            }
          }

          *(v47[7] + 8 * v49) = v45;
LABEL_20:

LABEL_21:
          v101[1] = v47;
          swift_endAccess();
          swift_unknownObjectRelease();
          if (v12 == ++v13)
          {
            goto LABEL_5;
          }
        }

        v16 = v12;
        v17 = v8;
        v18 = OBJC_IVAR___MTServerPodcastEpisode_relationships;
        swift_beginAccess();
        v19 = *&v14[v18];
        if (v19)
        {
          v20 = v15;
          goto LABEL_29;
        }

        v21 = objc_allocWithZone(type metadata accessor for PodcastEpisodeRelationships());
        v22 = v15;
        v23 = [v21 init];
        v24 = *&v14[v18];
        *&v14[v18] = v23;

        v19 = *&v14[v18];
        if (v19)
        {
LABEL_29:
          v25 = OBJC_IVAR____TtC18PodcastsFoundation27PodcastEpisodeRelationships_podcast;
          swift_beginAccess();
          if (*&v19[v25])
          {
            v26 = *&v14[v18];
            if (!v26)
            {
              goto LABEL_35;
            }
          }

          else
          {
            v27 = objc_allocWithZone(type metadata accessor for PodcastRelationshipContainer());
            v28 = v19;
            v29 = [v27 init];
            v30 = *&v19[v25];
            *&v19[v25] = v29;

            v26 = *&v14[v18];
            if (!v26)
            {
              goto LABEL_35;
            }
          }

          v31 = OBJC_IVAR____TtC18PodcastsFoundation27PodcastEpisodeRelationships_podcast;
          swift_beginAccess();
          v32 = *(v26 + v31);
          if (!v32)
          {
            goto LABEL_35;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
          v33 = swift_allocObject();
          *(v33 + 16) = xmmword_1D9189070;
          *(v33 + 32) = v15;
          v34 = OBJC_IVAR____TtC18PodcastsFoundation28PodcastRelationshipContainer_data;
          swift_beginAccess();
          *(v32 + v34) = v33;
        }

        else
        {
LABEL_35:
        }

        v8 = v17;
        v12 = v16;
        goto LABEL_37;
      }

LABEL_117:
      __break(1u);
LABEL_118:
      ;
    }

    while (!sub_1D917935C());
  }
}

id sub_1D9002AD8()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69E58C0]);

  return [v0 init];
}

id sub_1D9002C14(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1D9002CF0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = sub_1D8F5DE20(v8);
    }

    v75 = v8 + 16;
    v76 = *(v8 + 2);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = &v8[16 * v76];
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_1D900323C((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        *(v77 + 1) = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v11 < v10) ^ (v13 >= v14);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v11 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v11 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1D8ECC734(0, *(v8 + 2) + 1, 1, v8);
    }

    v5 = *(v8 + 2);
    v29 = *(v8 + 3);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      v8 = sub_1D8ECC734((v29 > 1), v5 + 1, 1, v8);
    }

    *(v8 + 2) = v30;
    v31 = v8 + 32;
    v32 = &v8[16 * v5 + 32];
    *v32 = v9;
    *(v32 + 1) = v7;
    v84 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 4);
          v34 = *(v8 + 5);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = &v8[16 * v30];
          v51 = *v49;
          v50 = *(v49 + 1);
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = &v31[16 * v5];
          v57 = *v55;
          v56 = *(v55 + 1);
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = &v8[16 * v30];
        v61 = *v59;
        v60 = *(v59 + 1);
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = &v31[16 * v5];
        v64 = *v62;
        v63 = *(v62 + 1);
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
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

        v70 = &v31[16 * v5 - 16];
        v71 = *v70;
        v72 = &v31[16 * v5];
        v73 = *(v72 + 1);
        sub_1D900323C((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 2))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        *(v70 + 1) = v73;
        v74 = *(v8 + 2);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        memmove(&v31[16 * v5], v72 + 16, 16 * (v74 - 1 - v5));
        *(v8 + 2) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = &v31[16 * v30];
      v38 = *(v37 - 8);
      v39 = *(v37 - 7);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 6);
      v41 = *(v37 - 5);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = &v8[16 * v30];
      v46 = *v44;
      v45 = *(v44 + 1);
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = &v31[16 * v5];
        v68 = *v66;
        v67 = *(v66 + 1);
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (*v26 >= v24)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
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

uint64_t sub_1D900323C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v4 < *v6)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (*v17 < v21)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_1D9003430(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8C98, &qword_1D91A6C38);
  v38 = v4;
  result = sub_1D917978C();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v5 + 56) + 40 * v23;
      if (v38)
      {
        v28 = *v27;
        v29 = *(v27 + 16);
        v41 = *(v27 + 32);
        v39 = v28;
        v40 = v29;
      }

      else
      {
        sub_1D8FD68E4(v27, &v39);
      }

      sub_1D9179DBC();
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      result = sub_1D9179E1C();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v25;
      v16[1] = v26;
      v17 = *(v7 + 56) + 40 * v15;
      v18 = v39;
      v19 = v40;
      *(v17 + 32) = v41;
      *v17 = v18;
      *(v17 + 16) = v19;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1D9003700(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB43D0, &unk_1D91A6CB0);
  v41 = v4;
  result = sub_1D917978C();
  v7 = result;
  if (*(v5 + 16))
  {
    v39 = v2;
    v40 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v42 = (v12 - 1) & v12;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(v5 + 56);
      v23 = *(v5 + 48) + 48 * v21;
      v24 = *v23;
      v25 = *(v23 + 8);
      v26 = *(v23 + 16);
      v27 = *(v23 + 24);
      v45 = *(v23 + 32);
      v44 = *(v23 + 40);
      v28 = *(v22 + 8 * v21);
      if ((v41 & 1) == 0)
      {
        v29 = v24;
        sub_1D8D092C0(v25, v26, v27, v45, v44);
      }

      v43 = v28;
      sub_1D9179DBC();
      sub_1D9179DDC();
      if (v24)
      {
        v30 = v24;
        sub_1D917915C();
      }

      MediaIdentifier.hash(into:)(v46);
      result = sub_1D9179E1C();
      v31 = -1 << *(v7 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v14 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v16 = v43;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v14 + 8 * v33);
          if (v37 != -1)
          {
            v15 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v32) & ~*(v14 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v16 = v43;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v17 = *(v7 + 48) + 48 * v15;
      *v17 = v24;
      *(v17 + 8) = v25;
      *(v17 + 16) = v26;
      *(v17 + 24) = v27;
      *(v17 + 32) = v45;
      *(v17 + 40) = v44;
      *(*(v7 + 56) + 8 * v15) = v16;
      ++*(v7 + 16);
      v5 = v40;
      v12 = v42;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v42 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v9, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v7;
  return result;
}

uint64_t sub_1D9003A40(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB43C0, &qword_1D9188F28);
  result = sub_1D917978C();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      if (v4)
      {
        memcpy(__src, (*(v5 + 48) + 264 * v19), 0x108uLL);
        v20 = *(*(v5 + 56) + 8 * v19);
      }

      else
      {
        sub_1D8D41388(*(v5 + 48) + 264 * v19, __src);
        v20 = *(*(v5 + 56) + 8 * v19);
      }

      sub_1D9179DBC();
      ArtworkRequest.hash(into:)(v37, v21, v22, v23, v24, v25, v26, v27);
      result = sub_1D9179E1C();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = memcpy((*(v7 + 48) + 264 * v15), __src, 0x108uLL);
      *(*(v7 + 56) + 8 * v15) = v20;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1D9003D04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB43B8, &qword_1D9188F20);
  result = sub_1D917978C();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
      }

      result = sub_1D917913C();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1D9003F74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4390, &unk_1D9188EF0);
  result = sub_1D917978C();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
        v23 = v21;
      }

      result = sub_1D917913C();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1D90041E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4398, &qword_1D9188F00);
  v34 = v4;
  result = sub_1D917978C();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      sub_1D9179DBC();
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      result = sub_1D9179E1C();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1D90044B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v39 = sub_1D917653C();
  v5 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4308, &qword_1D9188E68);
  v37 = v4;
  result = sub_1D917978C();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v3;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = (v5 + 16);
    v36 = v5;
    v16 = (v5 + 32);
    v17 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(v5 + 72);
      v25 = *(v7 + 56) + v24 * v22;
      if (v37)
      {
        (*v16)(v38, v25, v39);
      }

      else
      {
        (*v35)(v38, v25, v39);
      }

      result = sub_1D9179DAC();
      v26 = -1 << *(v9 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + 8 * v18) = v23;
      result = (*v16)(*(v9 + 56) + v24 * v18, v38, v39);
      ++*(v9 + 16);
      v5 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v7 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_1D9004800(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1D917653C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4318, &unk_1D91A6C60);
  v40 = v4;
  result = sub_1D917978C();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v36 = v2;
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
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v18 = result + 64;
    v39 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v42 = v21;
      v25 = *(v6 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v40)
      {
        (*v41)(v43, v26, v5);
      }

      else
      {
        (*v37)(v43, v26, v5);
      }

      v27 = *(*(v9 + 56) + 8 * v24);
      sub_1D8D111F4(&qword_1ECAB2CC8, MEMORY[0x1E6967EC8], MEMORY[0x1E6967ED0]);
      result = sub_1D917813C();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v41)(*(v11 + 48) + v25 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v27;
      ++*(v11 + 16);
      v6 = v38;
      v9 = v39;
      v16 = v42;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1D9004BD4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1D9176EAC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4388, &unk_1D91A6C80);
  v39 = v4;
  result = sub_1D917978C();
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

      sub_1D8D111F4(&qword_1EDCD5920, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = sub_1D917813C();
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

uint64_t sub_1D9004FB0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4370, &qword_1D9188ED0);
  result = sub_1D917978C();
  v7 = result;
  if (*(v5 + 16))
  {
    v38 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = *(v5 + 48) + 72 * v23;
      if (v4)
      {
        v25 = *(v24 + 16);
        v26 = *(v24 + 32);
        v27 = *(v24 + 48);
        v43 = *(v24 + 64);
        v42 = v27;
        v28 = *v24;
        v40 = v25;
        v41 = v26;
        v39 = v28;
        v29 = *(*(v5 + 56) + 8 * v23);
      }

      else
      {
        sub_1D8EC8C5C(v24, &v39);
        v29 = *(*(v5 + 56) + 8 * v23);
      }

      sub_1D9179DBC();
      MEMORY[0x1DA72B3C0](v39);
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      sub_1D9179DEC();
      result = sub_1D9179E1C();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 72 * v15;
      v17 = v40;
      v18 = v41;
      v19 = v42;
      *(v16 + 64) = v43;
      *(v16 + 32) = v18;
      *(v16 + 48) = v19;
      *(v16 + 16) = v17;
      *v16 = v39;
      *(*(v7 + 56) + 8 * v15) = v29;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1D90052B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1D9176C2C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v45 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v51 = &v41 - v9;
  v10 = type metadata accessor for TTMLRequest(0);
  v49 = *(v10 - 8);
  v50 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4368, &unk_1D91A6C70);
  v52 = v4;
  result = sub_1D917978C();
  v15 = result;
  if (*(v13 + 16))
  {
    v48 = v5;
    v42 = v2;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v46 = (v6 + 48);
    v47 = v13;
    v43 = (v6 + 8);
    v44 = (v6 + 32);
    v22 = result + 64;
    while (v20)
    {
      v27 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_16:
      v30 = v27 | (v16 << 6);
      v31 = *(v13 + 48);
      v54 = *(v49 + 72);
      v32 = v31 + v54 * v30;
      if (v52)
      {
        sub_1D900C004(v32, v12, type metadata accessor for TTMLRequest);
        v53 = *(*(v13 + 56) + 8 * v30);
      }

      else
      {
        sub_1D900BF9C(v32, v12, type metadata accessor for TTMLRequest);
        v53 = *(*(v13 + 56) + 8 * v30);
      }

      sub_1D9179DBC();
      v33 = v51;
      sub_1D8ECA48C(v12, v51);
      v34 = v48;
      if ((*v46)(v33, 1, v48) == 1)
      {
        sub_1D9179DDC();
      }

      else
      {
        v35 = v45;
        (*v44)(v45, v33, v34);
        sub_1D9179DDC();
        sub_1D8D111F4(&qword_1ECAB2CA8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
        sub_1D917814C();
        (*v43)(v35, v34);
      }

      sub_1D9179DEC();
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      v13 = v47;
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

      result = sub_1D9179E1C();
      v23 = -1 << *(v15 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v22 + 8 * (v24 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v23) >> 6;
        while (++v25 != v37 || (v36 & 1) == 0)
        {
          v38 = v25 == v37;
          if (v25 == v37)
          {
            v25 = 0;
          }

          v36 |= v38;
          v39 = *(v22 + 8 * v25);
          if (v39 != -1)
          {
            v26 = __clz(__rbit64(~v39)) + (v25 << 6);
            goto LABEL_8;
          }
        }

LABEL_40:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v24) & ~*(v22 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v22 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = sub_1D900C004(v12, *(v15 + 48) + v54 * v26, type metadata accessor for TTMLRequest);
      *(*(v15 + 56) + 8 * v26) = v53;
      ++*(v15 + 16);
    }

    v28 = v16;
    while (1)
    {
      v16 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_40;
      }

      if (v16 >= v21)
      {
        break;
      }

      v29 = v17[v16];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v20 = (v29 - 1) & v29;
        goto LABEL_16;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_38;
    }

    v40 = 1 << *(v13 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v17, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v40;
    }

    *(v13 + 16) = 0;
  }

LABEL_38:
  *v3 = v15;
  return result;
}

uint64_t sub_1D9005930(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1D9176C2C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v45 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v51 = &v41 - v9;
  v10 = type metadata accessor for ShazamSignatureRequest(0);
  v49 = *(v10 - 8);
  v50 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4358, &qword_1D9188EB8);
  v52 = v4;
  result = sub_1D917978C();
  v15 = result;
  if (*(v13 + 16))
  {
    v48 = v5;
    v42 = v2;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v46 = (v6 + 48);
    v47 = v13;
    v43 = (v6 + 8);
    v44 = (v6 + 32);
    v22 = result + 64;
    while (v20)
    {
      v27 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_16:
      v30 = v27 | (v16 << 6);
      v31 = *(v13 + 48);
      v54 = *(v49 + 72);
      v32 = v31 + v54 * v30;
      if (v52)
      {
        sub_1D900C004(v32, v12, type metadata accessor for ShazamSignatureRequest);
        v53 = *(*(v13 + 56) + 8 * v30);
      }

      else
      {
        sub_1D900BF9C(v32, v12, type metadata accessor for ShazamSignatureRequest);
        v53 = *(*(v13 + 56) + 8 * v30);
      }

      sub_1D9179DBC();
      v33 = v51;
      sub_1D8ECA48C(v12, v51);
      v34 = v48;
      if ((*v46)(v33, 1, v48) == 1)
      {
        sub_1D9179DDC();
      }

      else
      {
        v35 = v45;
        (*v44)(v45, v33, v34);
        sub_1D9179DDC();
        sub_1D8D111F4(&qword_1ECAB2CA8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
        sub_1D917814C();
        (*v43)(v35, v34);
      }

      sub_1D9179DEC();
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      v13 = v47;
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

      result = sub_1D9179E1C();
      v23 = -1 << *(v15 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v22 + 8 * (v24 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v23) >> 6;
        while (++v25 != v37 || (v36 & 1) == 0)
        {
          v38 = v25 == v37;
          if (v25 == v37)
          {
            v25 = 0;
          }

          v36 |= v38;
          v39 = *(v22 + 8 * v25);
          if (v39 != -1)
          {
            v26 = __clz(__rbit64(~v39)) + (v25 << 6);
            goto LABEL_8;
          }
        }

LABEL_40:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v24) & ~*(v22 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v22 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = sub_1D900C004(v12, *(v15 + 48) + v54 * v26, type metadata accessor for ShazamSignatureRequest);
      *(*(v15 + 56) + 8 * v26) = v53;
      ++*(v15 + 16);
    }

    v28 = v16;
    while (1)
    {
      v16 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_40;
      }

      if (v16 >= v21)
      {
        break;
      }

      v29 = v17[v16];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v20 = (v29 - 1) & v29;
        goto LABEL_16;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_38;
    }

    v40 = 1 << *(v13 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v17, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v40;
    }

    *(v13 + 16) = 0;
  }

LABEL_38:
  *v3 = v15;
  return result;
}

uint64_t sub_1D9005FD0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6820, &qword_1D9193770);
  v37 = v4;
  result = sub_1D917978C();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_1D9179DBC();
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      result = sub_1D9179E1C();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1D90062A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6AC0, &unk_1D9194690);
  result = sub_1D917978C();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      result = sub_1D9179DAC();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1D9006580(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v43 = a6;
  v9 = v6;
  v10 = a2;
  v11 = a3(0);
  v41 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v40 - v12;
  v14 = *v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v42 = v10;
  result = sub_1D917978C();
  v16 = result;
  if (*(v14 + 16))
  {
    v40 = v9;
    v17 = 0;
    v18 = (v14 + 64);
    v19 = 1 << *(v14 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v14 + 64);
    v22 = (v19 + 63) >> 6;
    v23 = result + 64;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_15:
      v28 = v25 | (v17 << 6);
      v29 = *(*(v14 + 48) + 8 * v28);
      v30 = *(v41 + 72);
      v31 = *(v14 + 56) + v30 * v28;
      if (v42)
      {
        sub_1D900C004(v31, v13, v43);
      }

      else
      {
        sub_1D900BF9C(v31, v13, v43);
      }

      result = sub_1D9179DAC();
      v32 = -1 << *(v16 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v23 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v23 + 8 * v34);
          if (v38 != -1)
          {
            v24 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v33) & ~*(v23 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      *(*(v16 + 48) + 8 * v24) = v29;
      result = sub_1D900C004(v13, *(v16 + 56) + v30 * v24, v43);
      ++*(v16 + 16);
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v17 >= v22)
      {
        break;
      }

      v27 = v18[v17];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v21 = (v27 - 1) & v27;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v9 = v40;
      goto LABEL_34;
    }

    v39 = 1 << *(v14 + 32);
    v9 = v40;
    if (v39 >= 64)
    {
      bzero((v14 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v39;
    }

    *(v14 + 16) = 0;
  }

LABEL_34:
  *v9 = v16;
  return result;
}

uint64_t sub_1D900689C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB41F8, &qword_1D9188D40);
  v35 = v4;
  result = sub_1D917978C();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    v34 = v5;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = (*(v5 + 48) + 2 * v20);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v21 + 8 * v20);
      if ((v35 & 1) == 0)
      {
      }

      sub_1D9179DBC();
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

      sub_1D9179DDC();
      if (v24 != 26)
      {
        MediaRequest.IncludeExtendTypes.rawValue.getter();
        _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      }

      result = sub_1D9179E1C();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 2 * v15);
      *v16 = v23;
      v16[1] = v24;
      *(*(v7 + 56) + 8 * v15) = v25;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v7;
  return result;
}

uint64_t sub_1D9006C9C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB42B8, &qword_1D9188E10);
  v30 = v4;
  result = sub_1D917978C();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_16:
      v22 = v19 | (v8 << 6);
      v23 = *(*(v5 + 48) + v22);
      v24 = *(*(v5 + 56) + 8 * v22);
      if ((v30 & 1) == 0)
      {
      }

      sub_1D9179DBC();
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

      result = sub_1D9179E1C();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v15) >> 6;
        while (++v17 != v26 || (v25 & 1) == 0)
        {
          v27 = v17 == v26;
          if (v17 == v26)
          {
            v17 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v17);
          if (v28 != -1)
          {
            v18 = __clz(__rbit64(~v28)) + (v17 << 6);
            goto LABEL_8;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v23;
      *(*(v7 + 56) + 8 * v18) = v24;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_16;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1D9006FE0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB42D0, &unk_1D9188E30);
  v30 = v4;
  result = sub_1D917978C();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_16:
      v22 = v19 | (v8 << 6);
      v23 = *(*(v5 + 48) + v22);
      v24 = *(*(v5 + 56) + 8 * v22);
      if ((v30 & 1) == 0)
      {
      }

      sub_1D9179DBC();
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

      result = sub_1D9179E1C();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v15) >> 6;
        while (++v17 != v26 || (v25 & 1) == 0)
        {
          v27 = v17 == v26;
          if (v17 == v26)
          {
            v17 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v17);
          if (v28 != -1)
          {
            v18 = __clz(__rbit64(~v28)) + (v17 << 6);
            goto LABEL_8;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v23;
      *(*(v7 + 56) + 8 * v18) = v24;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_16;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1D900737C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7768, &unk_1D91A6B70);
  v35 = v4;
  result = sub_1D917978C();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_1D9179DBC();
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      result = sub_1D9179E1C();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1D9007620(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB42E0, &unk_1D9188E40);
  v33 = v4;
  result = sub_1D917978C();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_1D8D65618(v24, v34);
      }

      else
      {
        sub_1D8CFAD1C(v24, v34);
      }

      sub_1D9179DBC();
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      result = sub_1D9179E1C();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1D8D65618(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1D90078EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB42C8, &unk_1D9188E20);
  result = sub_1D917978C();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_1D8D65618((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_1D8D9A2A4(v23, &v36);
        sub_1D8CFAD1C(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_1D91793CC();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_1D8D65618(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1D9007BB8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7B20, &unk_1D91A6C20);
  v35 = v4;
  result = sub_1D917978C();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 32 * v20;
      v23 = *v22;
      v36 = *(v22 + 8);
      v24 = *(v22 + 24);
      if ((v35 & 1) == 0)
      {

        v25 = v21;
      }

      result = sub_1D917913C();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 32 * v15;
      *v16 = v23;
      *(v16 + 8) = v36;
      *(v16 + 24) = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1D9007E60(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v39 = sub_1D9176E3C();
  v5 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7B18, &unk_1D91A6C00);
  v36 = v4;
  result = sub_1D917978C();
  v9 = result;
  if (*(v7 + 16))
  {
    v33 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v34 = (v5 + 16);
    v35 = v5;
    v37 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + v21);
      v23 = *(v5 + 72);
      v24 = *(v7 + 56) + v23 * v21;
      if (v36)
      {
        (*v37)(v38, v24, v39);
      }

      else
      {
        (*v34)(v38, v24, v39);
      }

      sub_1D9179DBC();
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

      result = sub_1D9179E1C();
      v25 = -1 << *(v9 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v16 + 8 * v27);
          if (v31 != -1)
          {
            v17 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + v17) = v22;
      result = (*v37)(*(v9 + 56) + v23 * v17, v38, v39);
      ++*(v9 + 16);
      v5 = v35;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v7 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_1D90081F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = sub_1D917978C();
  v9 = result;
  if (*(v7 + 16))
  {
    v32 = v5;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v6 & 1) == 0)
      {
      }

      result = sub_1D9179DAC();
      v24 = -1 << *(v9 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v16 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v16 + 8 * v26);
          if (v30 != -1)
          {
            v17 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v25) & ~*(v16 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v6 & 1) == 0)
    {

      v5 = v32;
      goto LABEL_33;
    }

    v31 = 1 << *(v7 + 32);
    v5 = v32;
    if (v31 >= 64)
    {
      bzero((v7 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v31;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_1D9008474(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4288, &unk_1D91A6C10);
  v30 = v4;
  result = sub_1D917978C();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_1D9179DBC();
      MEMORY[0x1DA72B390](v20);
      result = sub_1D9179E1C();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1D9008718(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7B10, &qword_1D9199740);
  v32 = v4;
  result = sub_1D917978C();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = v22[1];
      v33 = *v22;
      if ((v32 & 1) == 0)
      {
      }

      sub_1D9179DBC();
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

      result = sub_1D9179E1C();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v33;
      v16[1] = v23;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1D90089D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB41D0, &unk_1D9188D10);
  v33 = v4;
  result = sub_1D917978C();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {

        sub_1D8D752C4(v34, *(&v34 + 1));
      }

      sub_1D9179DBC();
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      result = sub_1D9179E1C();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1D9008C8C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4280, &unk_1D91A6BF0);
  v32 = v4;
  result = sub_1D917978C();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_16:
      v23 = v20 | (v8 << 6);
      v24 = *(*(v5 + 48) + v23);
      v25 = (*(v5 + 56) + 16 * v23);
      v26 = v25[1];
      v33 = *v25;
      if ((v32 & 1) == 0)
      {
      }

      sub_1D9179DBC();
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

      result = sub_1D9179E1C();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v15) >> 6;
        while (++v17 != v28 || (v27 & 1) == 0)
        {
          v29 = v17 == v28;
          if (v17 == v28)
          {
            v17 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v17);
          if (v30 != -1)
          {
            v18 = __clz(__rbit64(~v30)) + (v17 << 6);
            goto LABEL_8;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v24;
      v19 = (*(v7 + 56) + 16 * v18);
      *v19 = v33;
      v19[1] = v26;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_16;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1D900912C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4278, qword_1D9188DC0);
  result = sub_1D917978C();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_16:
      v22 = v19 | (v8 << 6);
      v23 = *(*(v5 + 48) + v22);
      v29 = *(*(v5 + 56) + 16 * v22);
      if ((v4 & 1) == 0)
      {
      }

      sub_1D9179DBC();
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

      result = sub_1D9179E1C();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v15) >> 6;
        while (++v17 != v25 || (v24 & 1) == 0)
        {
          v26 = v17 == v25;
          if (v17 == v25)
          {
            v17 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v17);
          if (v27 != -1)
          {
            v18 = __clz(__rbit64(~v27)) + (v17 << 6);
            goto LABEL_8;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v23;
      *(*(v7 + 56) + 16 * v18) = v29;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_16;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v28 = 1 << *(v5 + 32);
    v3 = v2;
    if (v28 >= 64)
    {
      bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1D90095B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7AA0, &unk_1D91B63B0);
  v31 = v4;
  result = sub_1D917978C();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
        v22 = v21;
      }

      sub_1D9179DBC();
      MEMORY[0x1DA72B3C0](v20);
      result = sub_1D9179E1C();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1D9009844(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7A98, &unk_1D91A6B50);
  v31 = v4;
  result = sub_1D917978C();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 56) + 8 * v19);
      v32 = *(*(v5 + 48) + 16 * v19);
      v21 = *(*(v5 + 48) + 16 * v19 + 8);
      if ((v31 & 1) == 0)
      {

        v22 = v20;
      }

      sub_1D9179DBC();
      sub_1D9179DDC();
      if (v21)
      {
        _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      }

      result = sub_1D9179E1C();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v32;
      *(*(v7 + 56) + 8 * v15) = v20;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_35;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v7;
  return result;
}

uint64_t sub_1D9009B1C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = sub_1D917978C();
  v9 = result;
  if (*(v7 + 16))
  {
    v33 = v5;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v6 & 1) == 0)
      {
        v24 = v23;
      }

      result = sub_1D9179DAC();
      v25 = -1 << *(v9 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v16 + 8 * v27);
          if (v31 != -1)
          {
            v17 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if (v6)
    {
      v32 = 1 << *(v7 + 32);
      if (v32 >= 64)
      {
        bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v11 = -1 << v32;
      }

      *(v7 + 16) = 0;
    }

    v5 = v33;
  }

  else
  {
  }

  *v5 = v9;
  return result;
}

uint64_t sub_1D9009D7C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7B08, &qword_1D9199738);
  v35 = v4;
  result = sub_1D917978C();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = *(v5 + 48) + 24 * v20;
      v23 = *v22;
      v36 = *(v22 + 8);
      v24 = *(v22 + 16);
      v25 = *(v21 + 8 * v20);
      if ((v35 & 1) == 0)
      {
        sub_1D8DB5EC8(v23, v36, *(v22 + 16));
      }

      sub_1D9179DBC();
      if (v24)
      {
        MEMORY[0x1DA72B390](1);
        _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      }

      else
      {
        MEMORY[0x1DA72B390](0);
        MEMORY[0x1DA72B3C0](v23);
      }

      result = sub_1D9179E1C();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 24 * v15;
      *v16 = v23;
      *(v16 + 8) = v36;
      *(v16 + 16) = v24;
      *(*(v7 + 56) + 8 * v15) = v25;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_36;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v7;
  return result;
}

uint64_t sub_1D900A094(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = sub_1D917978C();
  v9 = result;
  if (*(v7 + 16))
  {
    v33 = v4;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v6 & 1) == 0)
      {
        v24 = v22;
      }

      result = sub_1D917913C();
      v25 = -1 << *(v9 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v16 + 8 * v27);
          if (v31 != -1)
          {
            v17 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v6 & 1) == 0)
    {

      v5 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v7 + 32);
    v5 = v33;
    if (v32 >= 64)
    {
      bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_1D900A2FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4230, &unk_1D91946B0);
  v65 = v4;
  v6 = sub_1D917978C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v63 = (v5 + 64);
    v64 = v5;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v61 = v3;
    v62 = (v9 + 63) >> 6;
    v12 = v6 + 64;
    v66 = v6;
    while (v11)
    {
      v18 = __clz(__rbit64(v11));
      v19 = (v11 - 1) & v11;
LABEL_15:
      v23 = v18 | (v8 << 6);
      v75 = v19;
      if (v65)
      {
        v24 = *(v5 + 56);
        v25 = *(v5 + 48) + 96 * v23;
        v26 = *v25;
        v27 = *(v25 + 8);
        v28 = *(v25 + 9);
        v29 = *(v25 + 10);
        v30 = *(v25 + 11);
        v31 = *(v25 + 12);
        v32 = *(v25 + 13);
        v33 = *(v25 + 16);
        v34 = *(v25 + 32);
        v35 = *(v25 + 88) | (*(v25 + 90) << 16);
        v36 = *(v25 + 40);
        v38 = *(v25 + 48);
        v37 = *(v25 + 64);
        v39 = *(v25 + 80);
        v74 = *(v24 + 8 * v23);
      }

      else
      {
        v40 = (*(v5 + 48) + 96 * v23);
        v41 = v40[2];
        v42 = v40[3];
        v43 = v40[4];
        *&v87[11] = *(v40 + 75);
        v86 = v42;
        *v87 = v43;
        v44 = v40[1];
        v83 = *v40;
        v84 = v44;
        v85 = v41;
        v45 = *(*(v5 + 56) + 8 * v23);
        v78 = v42;
        v80 = *v87;
        v39 = *&v87[16];
        v72 = *&v87[24] | (v87[26] << 16);
        v36 = BYTE8(v41);
        v34 = v41;
        v76 = v44;
        v32 = BYTE13(v83);
        v68 = BYTE11(v83);
        v70 = BYTE12(v83);
        v46 = BYTE10(v83);
        v28 = BYTE9(v83);
        v27 = BYTE8(v83);
        v26 = v83;
        sub_1D8F0C914(&v83, v82);
        v74 = v45;

        v29 = v46;
        v35 = v72;
        v30 = v68;
        v31 = v70;
        v33 = v76;
        v38 = v78;
        v37 = v80;
      }

      v67 = v26;
      *&v83 = v26;
      BYTE8(v83) = v27;
      v69 = v28;
      BYTE9(v83) = v28;
      v47 = v29;
      BYTE10(v83) = v29;
      v48 = v30;
      BYTE11(v83) = v30;
      v49 = v31;
      BYTE12(v83) = v31;
      v73 = v32;
      BYTE13(v83) = v32;
      v77 = v33;
      v79 = v38;
      v84 = v33;
      *&v85 = v34;
      v50 = v36;
      BYTE8(v85) = v36;
      v86 = v38;
      *v87 = v37;
      v81 = v37;
      v71 = v39;
      *&v87[16] = v39;
      v51 = HIWORD(v35);
      v87[26] = BYTE2(v35);
      v52 = v35;
      *&v87[24] = v35;
      sub_1D9179DBC();
      EpisodeStateModel.hash(into:)(v82);
      result = sub_1D9179E1C();
      v7 = v66;
      v53 = -1 << *(v66 + 32);
      v54 = result & ~v53;
      v55 = v54 >> 6;
      if (((-1 << v54) & ~*(v12 + 8 * (v54 >> 6))) == 0)
      {
        v56 = 0;
        v57 = (63 - v53) >> 6;
        v15 = v79;
        v14 = v81;
        v16 = v77;
        while (++v55 != v57 || (v56 & 1) == 0)
        {
          v58 = v55 == v57;
          if (v55 == v57)
          {
            v55 = 0;
          }

          v56 |= v58;
          v59 = *(v12 + 8 * v55);
          if (v59 != -1)
          {
            v13 = __clz(__rbit64(~v59)) + (v55 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v54) & ~*(v12 + 8 * (v54 >> 6)))) | v54 & 0x7FFFFFFFFFFFFFC0;
      v15 = v79;
      v14 = v81;
      v16 = v77;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v17 = *(v66 + 48) + 96 * v13;
      *v17 = v67;
      *(v17 + 8) = v27;
      *(v17 + 9) = v69;
      *(v17 + 10) = v47;
      *(v17 + 11) = v48;
      *(v17 + 12) = v49;
      *(v17 + 13) = v73;
      *(v17 + 16) = v16;
      *(v17 + 32) = v34;
      *(v17 + 40) = v50;
      *(v17 + 48) = v15;
      *(v17 + 64) = v14;
      *(v17 + 80) = v71;
      *(v17 + 90) = v51;
      *(v17 + 88) = v52;
      *(*(v66 + 56) + 8 * v13) = v74;
      ++*(v66 + 16);
      v5 = v64;
      v11 = v75;
    }

    v20 = v8;
    result = v63;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v62)
      {
        break;
      }

      v22 = v63[v8];
      ++v20;
      if (v22)
      {
        v18 = __clz(__rbit64(v22));
        v19 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v65 & 1) == 0)
    {

      v3 = v61;
      goto LABEL_34;
    }

    v60 = 1 << *(v5 + 32);
    v3 = v61;
    if (v60 >= 64)
    {
      bzero(v63, ((v60 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v63 = -1 << v60;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1D900A760(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7AF0, &qword_1D9199728);
  result = sub_1D917978C();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + v19);
      sub_1D9179DBC();
      MEMORY[0x1DA72B3C0](v20);
      result = sub_1D9179E1C();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_1D900A9E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for EpisodePlayState(0);
  v35 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v37 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7AE8, &unk_1D91A6BD0);
  v36 = v4;
  result = sub_1D917978C();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(v35 + 72);
      v24 = *(v7 + 56) + v23 * v21;
      if (v36)
      {
        sub_1D900C004(v24, v37, type metadata accessor for EpisodePlayState);
      }

      else
      {
        sub_1D900BF9C(v24, v37, type metadata accessor for EpisodePlayState);
      }

      sub_1D9179DBC();
      MEMORY[0x1DA72B3C0](v22);
      result = sub_1D9179E1C();
      v25 = -1 << *(v9 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v16 + 8 * v27);
          if (v31 != -1)
          {
            v17 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      result = sub_1D900C004(v37, *(v9 + 56) + v23 * v17, type metadata accessor for EpisodePlayState);
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v32 = 1 << *(v7 + 32);
    v3 = v34;
    if (v32 >= 64)
    {
      bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_1D900AD3C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6AC8, &qword_1D91946A0);
  result = sub_1D917978C();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + v19);
      sub_1D9179DBC();
      MEMORY[0x1DA72B3C0](v20);
      result = sub_1D9179E1C();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_1D900AFBC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1D9176EAC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4228, &unk_1D9188D70);
  v39 = v4;
  result = sub_1D917978C();
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

      sub_1D8D111F4(&qword_1EDCD5920, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = sub_1D917813C();
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

uint64_t sub_1D900B398(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4218, &qword_1D9188D60);
  v30 = v4;
  result = sub_1D917978C();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_1D9179DBC();
      if (v20 == 2)
      {
        MEMORY[0x1DA72B390](1);
      }

      else
      {
        MEMORY[0x1DA72B390](0);
        sub_1D9179DDC();
      }

      result = sub_1D9179E1C();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_36;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v7;
  return result;
}

uint64_t sub_1D900B648(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4210, &unk_1D91A6BC0);
  v36 = v4;
  result = sub_1D917978C();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 32 * v21;
      v37 = *v25;
      v38 = *(v25 + 8);
      v26 = *(v25 + 24);
      if ((v36 & 1) == 0)
      {
      }

      sub_1D9179DBC();
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      result = sub_1D9179E1C();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 32 * v15;
      *v17 = v37;
      *(v17 + 8) = v38;
      *(v17 + 24) = v26;
      ++*(v7 + 16);
      v5 = v35;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1D900B924(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB9A50, &unk_1D9197130);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D900B998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *(type metadata accessor for MediaRequest.Params(0) - 8);
  v12 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  return sub_1D90011C0(a1, a2, a3, a4, a5, *(v5 + 16), v5 + v12, *(v5 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t type metadata accessor for BaseFeedResponse(uint64_t a1)
{
  result = qword_1ECAB8C80;
  if (!qword_1ECAB8C80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D900BB94(uint64_t a1)
{
  result = type metadata accessor for MediaRequest.Params(319);
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

uint64_t sub_1D900BF9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D900C004(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D900C078(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v37 = MEMORY[0x1E69E7CC0];
    sub_1D8D41BE0(0, v1, 0);
    v3 = v2 + 64;
    v4 = sub_1D91792DC();
    v5 = 0;
    v6 = *(v2 + 36);
    v29 = v2 + 72;
    v30 = v1;
    v31 = v6;
    v32 = v2 + 64;
    v33 = v2;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(v2 + 32))
    {
      v8 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_28;
      }

      if (v6 != *(v2 + 36))
      {
        goto LABEL_29;
      }

      v34 = v5;
      v9 = *(*(v2 + 48) + 8 * v4);
      v10 = (*(v2 + 56) + 32 * v4);
      v11 = v10[1];
      v35 = *v10;

      v12 = v9;

      v13 = [v12 description];
      v14 = sub_1D917820C();
      v16 = v15;

      v36 = v14;
      MEMORY[0x1DA7298F0](46, 0xE100000000000000);
      if (v11)
      {
        v17 = v35;
      }

      else
      {
        v17 = 0;
      }

      if (v11)
      {
        v18 = v11;
      }

      else
      {
        v18 = 0xE000000000000000;
      }

      MEMORY[0x1DA7298F0](v17, v18);

      v20 = *(v37 + 16);
      v19 = *(v37 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1D8D41BE0((v19 > 1), v20 + 1, 1);
      }

      *(v37 + 16) = v20 + 1;
      v21 = v37 + 16 * v20;
      *(v21 + 32) = v36;
      *(v21 + 40) = v16;
      v2 = v33;
      v7 = 1 << *(v33 + 32);
      if (v4 >= v7)
      {
        goto LABEL_30;
      }

      v3 = v32;
      v22 = *(v32 + 8 * v8);
      if ((v22 & (1 << v4)) == 0)
      {
        goto LABEL_31;
      }

      v6 = v31;
      if (v31 != *(v33 + 36))
      {
        goto LABEL_32;
      }

      v23 = v22 & (-2 << (v4 & 0x3F));
      if (v23)
      {
        v7 = __clz(__rbit64(v23)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v24 = v8 << 6;
        v25 = v8 + 1;
        v26 = (v29 + 8 * v8);
        while (v25 < (v7 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            sub_1D8D9B144(v4, v31, 0);
            v7 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        sub_1D8D9B144(v4, v31, 0);
      }

LABEL_4:
      v5 = v34 + 1;
      v4 = v7;
      if (v34 + 1 == v30)
      {
        return;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }
}

void sub_1D900C36C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v36 = MEMORY[0x1E69E7CC0];
    sub_1D8D41BE0(0, v1, 0);
    v3 = v36;
    v4 = v2 + 64;
    v5 = sub_1D91792DC();
    v6 = 0;
    v7 = *(v2 + 36);
    v29 = v2 + 72;
    v30 = v1;
    v31 = v7;
    v32 = v2 + 64;
    v33 = v2;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v2 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_28;
      }

      if (v7 != *(v2 + 36))
      {
        goto LABEL_29;
      }

      v34 = v6;
      v10 = *(*(v2 + 48) + 8 * v5);
      v11 = (*(v2 + 56) + 32 * v5);
      v12 = v3;
      v13 = *v11;
      v14 = v11[1];
      v15 = v11[2];
      v16 = v11[3];

      v35 = v10;

      MEMORY[0x1DA7298F0](v15, v16);
      MEMORY[0x1DA7298F0](2112032, 0xE300000000000000);
      if (v14)
      {
        v17 = v13;
      }

      else
      {
        v17 = 1162760014;
      }

      v3 = v12;
      if (v14)
      {
        v18 = v14;
      }

      else
      {
        v18 = 0xE400000000000000;
      }

      MEMORY[0x1DA7298F0](v17, v18);

      MEMORY[0x1DA7298F0](93, 0xE100000000000000);

      v20 = *(v12 + 16);
      v19 = *(v12 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1D8D41BE0((v19 > 1), v20 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v20 + 1;
      v21 = v3 + 16 * v20;
      *(v21 + 32) = 91;
      *(v21 + 40) = 0xE100000000000000;
      v2 = v33;
      v8 = 1 << *(v33 + 32);
      if (v5 >= v8)
      {
        goto LABEL_30;
      }

      v4 = v32;
      v22 = *(v32 + 8 * v9);
      if ((v22 & (1 << v5)) == 0)
      {
        goto LABEL_31;
      }

      v7 = v31;
      if (v31 != *(v33 + 36))
      {
        goto LABEL_32;
      }

      v23 = v22 & (-2 << (v5 & 0x3F));
      if (v23)
      {
        v8 = __clz(__rbit64(v23)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v24 = v9 << 6;
        v25 = v9 + 1;
        v26 = (v29 + 8 * v9);
        while (v25 < (v8 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            sub_1D8D9B144(v5, v31, 0);
            v8 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        sub_1D8D9B144(v5, v31, 0);
      }

LABEL_4:
      v6 = v34 + 1;
      v5 = v8;
      if (v34 + 1 == v30)
      {
        return;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }
}

void sub_1D900C668()
{
  v11 = sub_1D9178E0C();
  v0 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v2 = v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D9178D8C();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1D9177E9C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v10[1] = sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  sub_1D9177E4C();
  v12 = MEMORY[0x1E69E7CC0];
  sub_1D9014D64(&qword_1EDCD7B50, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF48EC(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0, MEMORY[0x1E69E6328]);
  sub_1D91792CC();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v11);
  v5 = sub_1D9178E4C();
  v6 = [objc_allocWithZone(type metadata accessor for MediaRequestController()) init];
  v7 = OBJC_IVAR____TtC18PodcastsFoundation22MediaRequestController_responseQueue;
  swift_beginAccess();
  v8 = *&v6[v7];
  *&v6[v7] = v5;
  v9 = v6;

  qword_1ECAB8CA0 = v9;
}

uint64_t sub_1D900C934()
{
  v7 = sub_1D9178E0C();
  v0 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D9178D8C();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1D9177E9C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6[1] = sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  sub_1D9177E4C();
  v8 = MEMORY[0x1E69E7CC0];
  sub_1D9014D64(&qword_1EDCD7B50, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF48EC(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0, MEMORY[0x1E69E6328]);
  sub_1D91792CC();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v7);
  result = sub_1D9178E4C();
  qword_1ECAB18F0 = result;
  return result;
}

uint64_t sub_1D900CBA8(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_1D917906C();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_1D9176EAC();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D900CCDC, 0, 0);
}

uint64_t sub_1D900CCDC()
{
  v30 = v0;
  v1 = v0[3];
  if (v1 >> 62)
  {
    if (!sub_1D917935C())
    {
      goto LABEL_15;
    }
  }

  else if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_15;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x1DA72AA90](0, v0[3]);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_20;
    }

    v2 = *(v0[3] + 32);
  }

  v3 = v2;
  v4 = [v2 managedObjectContext];
  v0[13] = v4;

  if (v4)
  {
    sub_1D9176E9C();
    if (qword_1EDCD1100 == -1)
    {
LABEL_8:
      v5 = v0[11];
      v6 = v0[12];
      v7 = v0[8];
      v8 = v0[9];
      v9 = sub_1D917744C();
      v0[14] = __swift_project_value_buffer(v9, qword_1EDCD1108);
      v10 = *(v8 + 16);
      v0[15] = v10;
      v0[16] = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v10(v5, v6, v7);
      v11 = sub_1D917741C();
      v12 = sub_1D9178D1C();
      v13 = os_log_type_enabled(v11, v12);
      v14 = v0[11];
      v15 = v0[8];
      v16 = v0[9];
      if (v13)
      {
        v17 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v29 = v28;
        *v17 = 136315138;
        sub_1D9014D64(&qword_1EDCD5918, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v18 = sub_1D9179A4C();
        v20 = v19;
        v21 = *(v16 + 8);
        v21(v14, v15);
        v22 = sub_1D8CFA924(v18, v20, &v29);

        *(v17 + 4) = v22;
        _os_log_impl(&dword_1D8CEC000, v11, v12, "[BatchFeedRequest] (%s) Starting", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v28);
        MEMORY[0x1DA72CB90](v28, -1, -1);
        MEMORY[0x1DA72CB90](v17, -1, -1);
      }

      else
      {

        v21 = *(v16 + 8);
        v21(v14, v15);
      }

      v0[17] = v21;
      v23 = swift_task_alloc();
      v0[18] = v23;
      *v23 = v0;
      v23[1] = sub_1D900D060;
      v24 = v0[3];

      return sub_1D9013418(v24);
    }

LABEL_20:
    swift_once();
    goto LABEL_8;
  }

LABEL_15:

  v26 = v0[1];
  v27 = MEMORY[0x1E69E7CD0];

  return v26(v27);
}

uint64_t sub_1D900D060(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 152) = a1;
  *(v3 + 160) = v1;

  if (v1)
  {
    v4 = sub_1D900D3A8;
  }

  else
  {
    v4 = sub_1D900D174;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D900D174()
{
  v1 = v0[19];
  v2 = v0[12];
  v3 = v0[4];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB4F30, &qword_1D918DA90);
  v5 = swift_task_alloc();
  v0[21] = v5;
  v5[2] = v1;
  v5[3] = v2;
  v5[4] = v3;
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_1D900D28C;

  return MEMORY[0x1EEE6DD58](v0 + 2, v4, v4, 0, 0, &unk_1D91A6D00, v5, v4);
}

uint64_t sub_1D900D28C()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_1D900D954;
  }

  else
  {

    v2 = sub_1D900D460;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D900D3A8()
{
  (*(v0 + 136))(*(v0 + 96), *(v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D900D460()
{
  v1 = v0[13];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  v6 = v0[2];
  v5 = v0[3];
  v0[24] = v6;
  v7 = swift_allocObject();
  v0[25] = v7;
  v7[2] = v5;
  v7[3] = v6;
  v7[4] = v1;
  (*(v3 + 104))(v2, *MEMORY[0x1E695D2B8], v4);

  v8 = v1;
  v9 = swift_task_alloc();
  v0[26] = v9;
  *v9 = v0;
  v9[1] = sub_1D900D5A8;
  v10 = v0[7];
  v11 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEDB6538](v9, v10, sub_1D9013CD0, v7, v11);
}

void sub_1D900D5A8()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[6] + 8))(v2[7], v2[5]);

    MEMORY[0x1EEE6DFA0](sub_1D900D708, 0, 0);
  }
}

uint64_t sub_1D900D708()
{
  v19 = v0;
  (*(v0 + 120))(*(v0 + 80), *(v0 + 96), *(v0 + 64));
  v1 = sub_1D917741C();
  v2 = sub_1D9178D1C();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 136);
  v5 = *(v0 + 80);
  v6 = *(v0 + 64);
  if (v3)
  {
    v17 = *(v0 + 104);
    v16 = *(v0 + 136);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    sub_1D9014D64(&qword_1EDCD5918, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v9 = sub_1D9179A4C();
    v11 = v10;
    v16(v5, v6);
    v12 = sub_1D8CFA924(v9, v11, &v18);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1D8CEC000, v1, v2, "[BatchFeedRequest] (%s) Finished", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1DA72CB90](v8, -1, -1);
    MEMORY[0x1DA72CB90](v7, -1, -1);
  }

  else
  {

    v4(v5, v6);
  }

  (*(v0 + 136))(*(v0 + 96), *(v0 + 64));
  v13 = *(v0 + 192);

  v14 = *(v0 + 8);

  return v14(v13);
}

uint64_t sub_1D900D954()
{

  (*(v0 + 136))(*(v0 + 96), *(v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D900DA24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  v6 = sub_1D9176EAC();
  v5[14] = v6;
  v7 = *(v6 - 8);
  v5[15] = v7;
  v5[16] = *(v7 + 64);
  v5[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D900DB38, 0, 0);
}

uint64_t sub_1D900DB38()
{
  v1 = *(v0 + 88);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    v29 = **(v0 + 80);
    v30 = *(v0 + 120);
    v28 = *(v0 + 128) + 7;
    v4 = sub_1D917886C();
    v5 = *(v4 - 8);
    v27 = *(v5 + 56);
    v26 = (v5 + 48);
    v25 = (v5 + 8);
    do
    {
      v35 = v2;
      v33 = *(v0 + 144);
      v7 = *(v0 + 136);
      v8 = *(v0 + 112);
      v31 = *(v0 + 152);
      v32 = *(v0 + 104);
      v9 = *(v0 + 96);
      v34 = v3;
      v10 = *v3;
      v27();
      (*(v30 + 16))(v7, v9, v8);
      v11 = (*(v30 + 80) + 40) & ~*(v30 + 80);
      v12 = swift_allocObject();
      *(v12 + 2) = 0;
      *(v12 + 3) = 0;
      *(v12 + 4) = v10;
      (*(v30 + 32))(&v12[v11], v7, v8);
      *&v12[(v28 + v11) & 0xFFFFFFFFFFFFFFF8] = v32;
      sub_1D8CF5C74(v31, v33);
      v13 = (*v26)(v33, 1, v4);

      v14 = *(v0 + 144);
      if (v13 == 1)
      {
        sub_1D8D08A50(*(v0 + 144), &qword_1ECABB890, &qword_1D918B960);
      }

      else
      {
        sub_1D917885C();
        (*v25)(v14, v4);
      }

      if (*(v12 + 2))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v15 = sub_1D917874C();
        v17 = v16;
        swift_unknownObjectRelease();
      }

      else
      {
        v15 = 0;
        v17 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB4F30, &qword_1D918DA90);
      v18 = v17 | v15;
      if (v17 | v15)
      {
        v18 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v15;
        *(v0 + 40) = v17;
      }

      v6 = *(v0 + 152);
      *(v0 + 48) = 1;
      *(v0 + 56) = v18;
      *(v0 + 64) = v29;
      swift_task_create();

      sub_1D8D08A50(v6, &qword_1ECABB890, &qword_1D918B960);
      v3 = v34 + 1;
      v2 = v35 - 1;
    }

    while (v35 != 1);
  }

  v19 = *(v0 + 96);
  v20 = **(v0 + 80);
  v21 = swift_task_alloc();
  *(v0 + 160) = v21;
  *(v21 + 16) = v19;
  v22 = swift_task_alloc();
  *(v0 + 168) = v22;
  *v22 = v0;
  v22[1] = sub_1D900DF10;
  v23 = MEMORY[0x1E69E7CD0];

  return sub_1D900EA6C(v23, &unk_1D91A6EE8, v21, v20);
}

uint64_t sub_1D900DF10(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 176) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D900E090, 0, 0);
  }

  else
  {
    **(v4 + 72) = a1;

    v5 = *(v4 + 8);

    return v5();
  }
}

uint64_t sub_1D900E090()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D900E118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a1;
  v6[4] = a4;
  v7 = sub_1D9176EAC();
  v6[7] = v7;
  v6[8] = *(v7 - 8);
  v6[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D900E1DC, 0, 0);
}

uint64_t sub_1D900E1DC()
{
  v28 = v0;
  sub_1D900C36C(v0[4]);
  v0[2] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
  sub_1D8CF48EC(&qword_1EDCD7708, &qword_1ECAB75E0, &qword_1D918DE30, MEMORY[0x1E69E6310]);
  v2 = sub_1D917817C();
  v4 = v3;

  if (qword_1EDCD1100 != -1)
  {
    swift_once();
  }

  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[7];
  v8 = v0[5];
  v9 = sub_1D917744C();
  __swift_project_value_buffer(v9, qword_1EDCD1108);
  (*(v6 + 16))(v5, v8, v7);

  v10 = sub_1D917741C();
  v11 = sub_1D9178D1C();

  v12 = os_log_type_enabled(v10, v11);
  v14 = v0[8];
  v13 = v0[9];
  v15 = v0[7];
  if (v12)
  {
    v16 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27[0] = v26;
    *v16 = 136315394;
    sub_1D9014D64(&qword_1EDCD5918, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v25 = v2;
    v17 = sub_1D9179A4C();
    v19 = v18;
    (*(v14 + 8))(v13, v15);
    v20 = sub_1D8CFA924(v17, v19, v27);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    v21 = sub_1D8CFA924(v25, v4, v27);

    *(v16 + 14) = v21;
    _os_log_impl(&dword_1D8CEC000, v10, v11, "[BatchFeedRequest] (%s) Sync tokens for batch - %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v26, -1, -1);
    MEMORY[0x1DA72CB90](v16, -1, -1);
  }

  else
  {

    (*(v14 + 8))(v13, v15);
  }

  v22 = swift_task_alloc();
  v0[10] = v22;
  *v22 = v0;
  v22[1] = sub_1D900E528;
  v23 = v0[4];

  return sub_1D9011A64(v23);
}

uint64_t sub_1D900E528(uint64_t a1)
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
    *(v4 + 88) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1D900E67C, 0, 0);
  }
}

uint64_t sub_1D900E67C()
{
  **(v0 + 24) = *(v0 + 88);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D900E6EC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v5 = sub_1D9176EAC();
  v3[4] = v5;
  v3[5] = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *a2;
  v3[6] = v6;
  v3[7] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D900E7B4, 0, 0);
}

uint64_t sub_1D900E7B4()
{
  v27 = v0;
  if (qword_1EDCD1100 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[3];
  v5 = sub_1D917744C();
  __swift_project_value_buffer(v5, qword_1EDCD1108);
  (*(v3 + 16))(v1, v4, v2);

  v6 = sub_1D917741C();
  v7 = sub_1D9178D1C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[6];
    v10 = v0[4];
    v9 = v0[5];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26 = v12;
    *v11 = 136315394;
    sub_1D9014D64(&qword_1EDCD5918, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v13 = sub_1D9179A4C();
    v15 = v14;
    (*(v9 + 8))(v8, v10);
    v16 = sub_1D8CFA924(v13, v15, &v26);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;
    v17 = sub_1D9178AAC();
    v19 = sub_1D8CFA924(v17, v18, &v26);

    *(v11 + 14) = v19;
    _os_log_impl(&dword_1D8CEC000, v6, v7, "[BatchFeedRequest] (%s) Adding out of date uuids for batch - %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v12, -1, -1);
    MEMORY[0x1DA72CB90](v11, -1, -1);
  }

  else
  {
    v21 = v0[5];
    v20 = v0[6];
    v22 = v0[4];

    (*(v21 + 8))(v20, v22);
  }

  sub_1D9111F88(v23);

  v24 = v0[1];

  return v24();
}

uint64_t sub_1D900EA6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[5] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8D30, &unk_1D91A6EF8);
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();
  v4[2] = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D900EB44, 0, 0);
}

uint64_t sub_1D900EB44()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB4F30, &qword_1D918DA90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
  sub_1D917899C();
  v1 = sub_1D8CF48EC(&qword_1ECAB8D38, &qword_1ECAB8D30, &unk_1D91A6EF8, MEMORY[0x1E69E8718]);
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  v2[1] = sub_1D900EC74;
  v3 = *(v0 + 64);

  return MEMORY[0x1EEE6D8C8](v0 + 32, v3, v1);
}

uint64_t sub_1D900EC74()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    (*(v2[9] + 8))(v2[10], v2[8]);

    v3 = sub_1D900EF24;
  }

  else
  {
    v3 = sub_1D900EDA8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D900EDA8()
{
  v1 = v0[4];
  v0[13] = v1;
  if (v1)
  {
    v2 = v0[5];
    v0[3] = v1;
    v7 = (v2 + *v2);
    v3 = swift_task_alloc();
    v0[14] = v3;
    *v3 = v0;
    v3[1] = sub_1D900EF88;

    return (v7)(v0 + 2, v0 + 3);
  }

  else
  {
    (*(v0[9] + 8))(v0[10], v0[8]);
    v5 = v0[2];

    v6 = v0[1];

    return v6(v5);
  }
}

uint64_t sub_1D900EF24()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D900EF88()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = v2[9];
    v3 = v2[10];
    v5 = v2[8];

    (*(v4 + 8))(v3, v5);

    v6 = sub_1D900F1B4;
  }

  else
  {

    v6 = sub_1D900F0DC;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D900F0DC()
{
  v1 = sub_1D8CF48EC(&qword_1ECAB8D38, &qword_1ECAB8D30, &unk_1D91A6EF8, MEMORY[0x1E69E8718]);
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  v2[1] = sub_1D900EC74;
  v3 = *(v0 + 64);

  return MEMORY[0x1EEE6D8C8](v0 + 32, v3, v1);
}

uint64_t sub_1D900F1B4()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_1D900F218(unint64_t a1, uint64_t a2, void *a3)
{
  if (a1 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D917935C())
  {
    v6 = 0;
    v7 = a2 + 56;
    v24 = i;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1DA72AA90](v6, a1);
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v8 = *(a1 + 32 + 8 * v6);
      }

      v9 = v8;
      if (__OFADD__(v6++, 1))
      {
        break;
      }

      v11 = [v8 uuid];
      if (v11)
      {
        v12 = v11;
        v13 = sub_1D917820C();
        v15 = v14;

        if (*(a2 + 16) && (sub_1D9179DBC(), _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0(), v16 = sub_1D9179E1C(), v17 = -1 << *(a2 + 32), v18 = v16 & ~v17, ((*(v7 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) != 0))
        {
          v19 = ~v17;
          while (1)
          {
            v20 = (*(a2 + 48) + 16 * v18);
            v21 = *v20 == v13 && v20[1] == v15;
            if (v21 || (sub_1D9179ACC() & 1) != 0)
            {
              break;
            }

            v18 = (v18 + 1) & v19;
            if (((*(v7 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
            {
              goto LABEL_20;
            }
          }
        }

        else
        {
LABEL_20:

          [objc_opt_self() timeIntervalSinceReferenceDate];
          [v9 setLastFetchedDate_];
        }

        i = v24;
        if (v6 == v24)
        {
          return [a3 saveInCurrentBlock];
        }
      }

      else
      {

        if (v6 == i)
        {
          return [a3 saveInCurrentBlock];
        }
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

  return [a3 saveInCurrentBlock];
}

uint64_t sub_1D900F5C4(uint64_t a1, void *aBlock, uint64_t a3)
{
  v3[2] = _Block_copy(aBlock);
  sub_1D8CF2154(0, &qword_1EDCD0790, off_1E8567640);
  v4 = sub_1D91785FC();
  v3[3] = v4;
  swift_getObjCClassMetadata();
  v5 = swift_task_alloc();
  v3[4] = v5;
  *v5 = v3;
  v5[1] = sub_1D900F6A0;

  return sub_1D900CBA8(v4);
}

uint64_t sub_1D900F6A0(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *v2;

  if (v3)
  {
    v6 = sub_1D9176A5C();

    v7 = v6;
    v8 = 0;
  }

  else
  {
    v9 = sub_1D9178A8C();

    v8 = v9;
    v7 = 0;
    v6 = v9;
  }

  v10 = *(v4 + 16);
  (v10)[2](v10, v8, v7);

  _Block_release(v10);
  v11 = *(v5 + 8);

  return v11();
}

uint64_t sub_1D900F834(char a1)
{
  *(v2 + 96) = v1;
  *(v2 + 144) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D900F858, 0, 0);
}

uint64_t sub_1D900F858()
{
  if (qword_1EDCD1100 != -1)
  {
    swift_once();
  }

  v1 = sub_1D917744C();
  *(v0 + 104) = __swift_project_value_buffer(v1, qword_1EDCD1108);
  v2 = sub_1D917741C();
  v3 = sub_1D9178D1C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D8CEC000, v2, v3, "[BatchFeedRequest] [Full Fetch] Starting", v4, 2u);
    MEMORY[0x1DA72CB90](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  *(v0 + 112) = v5;
  *v5 = v0;
  v5[1] = sub_1D900F9B0;
  v6 = *(v0 + 144);

  return sub_1D90103A4(v6);
}

uint64_t sub_1D900F9B0(char a1)
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
    *(v4 + 145) = a1 & 1;

    return MEMORY[0x1EEE6DFA0](sub_1D900FB00, 0, 0);
  }
}

uint64_t sub_1D900FB00(uint64_t a1)
{
  if (*(v1 + 145))
  {
    v2 = swift_task_alloc();
    *(v1 + 120) = v2;
    *v2 = v1;
    v2[1] = sub_1D900FD80;
    v3 = *(v1 + 144);

    return sub_1D9013EE0(v3);
  }

  else
  {
    v5 = sub_1D917741C();
    v6 = sub_1D9178CFC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1D8CEC000, v5, v6, "[BatchFeedRequest] [Full Fetch] Not enough store shows in library", v7, 2u);
      MEMORY[0x1DA72CB90](v7, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6700, &unk_1D918C310);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D9189080;
    *(inited + 32) = sub_1D917820C();
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 40) = v9;
    *(inited + 48) = 0xD000000000000039;
    *(inited + 56) = 0x80000001D91D26E0;
    sub_1D8E2696C(inited);
    swift_setDeallocating();
    sub_1D8D08A50(inited + 32, &qword_1ECAB42E8, &qword_1D9193650);
    v10 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v11 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    v12 = sub_1D917802C();

    [v10 initWithDomain:v11 code:0 userInfo:v12];

    swift_willThrow();
    v13 = *(v1 + 8);

    return v13();
  }
}

uint64_t sub_1D900FD80(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  *(v3 + 128) = a1;

  v5 = swift_task_alloc();
  *(v3 + 136) = v5;
  *v5 = v4;
  v5[1] = sub_1D900FED4;

  return sub_1D900CBA8(a1);
}

uint64_t sub_1D900FED4(uint64_t a1)
{
  v4 = *v2;

  v6 = *(v4 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_1D901017C(char a1, void *aBlock, uint64_t a3)
{
  *(v3 + 16) = _Block_copy(aBlock);
  swift_getObjCClassMetadata();
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_1D901022C;

  return sub_1D900F834(a1);
}

uint64_t sub_1D901022C(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *v2;

  if (v3)
  {
    v6 = sub_1D9176A5C();

    v7 = v6;
    v8 = 0;
  }

  else
  {
    v9 = sub_1D9178A8C();

    v8 = v9;
    v7 = 0;
    v6 = v9;
  }

  v10 = *(v4 + 16);
  (v10)[2](v10, v8, v7);

  _Block_release(v10);
  v11 = *(v5 + 8);

  return v11();
}

uint64_t sub_1D90103A4(char a1)
{
  *(v2 + 1352) = v1;
  *(v2 + 1424) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D90103C8, 0, 0);
}