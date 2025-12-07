uint64_t BodyStructure.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B0D41F7C(a1, v11);
  result = sub_1B04FAE88(v11);
  if (result == 1)
  {
    sub_1B0E46298();

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v10 = sub_1B0E44BA8();
    MEMORY[0x1B2726E80](v10);

    result = sub_1B0E465B8();
    __break(1u);
  }

  else
  {
    v4 = v11[9];
    v5 = v11[10];
    v6 = v11[7];
    *(a2 + 128) = v11[8];
    *(a2 + 144) = v4;
    *(a2 + 160) = v5;
    *(a2 + 176) = v12;
    v7 = v11[5];
    *(a2 + 64) = v11[4];
    *(a2 + 80) = v7;
    *(a2 + 96) = v11[6];
    *(a2 + 112) = v6;
    v8 = v11[1];
    *a2 = v11[0];
    *(a2 + 16) = v8;
    v9 = v11[3];
    *(a2 + 32) = v11[2];
    *(a2 + 48) = v9;
  }

  return result;
}

double sub_1B0D41F7C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_1B0D43690(*(a1 + 32), &v30);
    v26 = v38;
    v27 = v39;
    v28 = v40;
    v22 = v34;
    v23 = v35;
    v24 = v36;
    v25 = v37;
    v18 = v30;
    v19 = v31;
    v20 = v32;
    v21 = v33;
    v50 = v38;
    v51 = v39;
    v52 = v40;
    v46 = v34;
    v47 = v35;
    v48 = v36;
    v49 = v37;
    v42 = v30;
    v43 = v31;
    v29 = v41;
    v53 = v41;
    v44 = v32;
    v45 = v33;
    if (sub_1B04FAE88(&v42) != 1)
    {
      v62 = v50;
      v63 = v51;
      v64 = v52;
      v65 = v53;
      v58 = v46;
      v59 = v47;
      v60 = v48;
      v61 = v49;
      v54 = v42;
      v55 = v43;
      v56 = v44;
      v57 = v45;
      v11.array._rawValue = SectionSpecifier.Part.dropFirst()().array._rawValue;
      sub_1B0D41F7C(v11.array._rawValue, &v66);

      sub_1B0398EFC(&v30, &qword_1EB6E4170, &qword_1B0EC3C60);
      goto LABEL_7;
    }

    v74 = v26;
    v75 = v27;
    v76 = v28;
    v77 = v29;
    v70 = v22;
    v71 = v23;
    v72 = v24;
    v73 = v25;
    v66 = v18;
    v67 = v19;
    v4 = v20;
    v5 = v21;
  }

  else
  {
    v6 = v2[9];
    v62 = v2[8];
    v63 = v6;
    v64 = v2[10];
    v65 = *(v2 + 176);
    v7 = v2[5];
    v58 = v2[4];
    v59 = v7;
    v8 = v2[7];
    v60 = v2[6];
    v61 = v8;
    v9 = v2[1];
    v54 = *v2;
    v55 = v9;
    v10 = v2[3];
    v56 = v2[2];
    v57 = v10;
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    sub_1B07169CC(v2, &v66);
    v74 = v62;
    v75 = v63;
    v76 = v64;
    v77 = v65;
    v70 = v58;
    v71 = v59;
    v72 = v60;
    v73 = v61;
    v66 = v54;
    v67 = v55;
    v4 = v56;
    v5 = v57;
  }

  v68 = v4;
  v69 = v5;
LABEL_7:
  v12 = v75;
  *(a2 + 128) = v74;
  *(a2 + 144) = v12;
  *(a2 + 160) = v76;
  *(a2 + 176) = v77;
  v13 = v71;
  *(a2 + 64) = v70;
  *(a2 + 80) = v13;
  v14 = v73;
  *(a2 + 96) = v72;
  *(a2 + 112) = v14;
  v15 = v67;
  *a2 = v66;
  *(a2 + 16) = v15;
  result = *&v68;
  v17 = v69;
  *(a2 + 32) = v68;
  *(a2 + 48) = v17;
  return result;
}

double BodyStructure.find(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B0D41F7C(a1, v9);
  v3 = v17;
  *(a2 + 128) = v16;
  *(a2 + 144) = v3;
  *(a2 + 160) = v18;
  *(a2 + 176) = v19;
  v4 = v13;
  *(a2 + 64) = v12;
  *(a2 + 80) = v4;
  v5 = v15;
  *(a2 + 96) = v14;
  *(a2 + 112) = v5;
  v6 = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = v6;
  result = *&v10;
  v8 = v11;
  *(a2 + 32) = v10;
  *(a2 + 48) = v8;
  return result;
}

uint64_t BodyStructure.endIndex.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4CE0, &qword_1B0EE4E80);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B0EC1E70;
  *(v0 + 32) = BodyStructure.subpartCount.getter() + 1;
  return v0;
}

NIOIMAPCore2::SectionSpecifier::Part __swiftcall BodyStructure.index(before:)(NIOIMAPCore2::SectionSpecifier::Part before)
{
  v2 = *(before.array._rawValue + 2);
  if (v2)
  {
    v3 = *(before.array._rawValue + v2 + 3);
    v4 = v2 - 1;
    sub_1B0E46AD8();
    swift_unknownObjectRetain_n();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v5 = swift_dynamicCastClass();
    if (v3 < 2)
    {
      if (!v5)
      {
        swift_unknownObjectRelease();
        v5 = MEMORY[0x1E69E7CC0];
      }

      v10 = *(v5 + 16);

      if (v10 == v4)
      {
        v9 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (!v9)
        {
          swift_unknownObjectRelease();
          return MEMORY[0x1E69E7CC0];
        }
      }

      else
      {
        swift_unknownObjectRelease();
        sub_1B0D441B8(before.array._rawValue, before.array._rawValue + 32, 0, (2 * v4) | 1);
        v9 = v13;
        swift_unknownObjectRelease();
      }

      return v9;
    }

    if (!v5)
    {
      swift_unknownObjectRelease();
      v5 = MEMORY[0x1E69E7CC0];
    }

    v6 = *(v5 + 16);

    if (v6 == v4)
    {
      v7 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (v7)
      {
LABEL_9:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4CE0, &qword_1B0EE4E80);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1B0EC1E70;
        *(inited + 32) = v3 - 1;
        sub_1B0D44288(inited);
        v9 = sub_1B0D42560(v7);

        return v9;
      }

      v7 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      swift_unknownObjectRelease();
      sub_1B0D441B8(before.array._rawValue, before.array._rawValue + 32, 0, (2 * v4) | 1);
      v7 = v12;
    }

    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  swift_bridgeObjectRetain_n();
  sub_1B0E46298();

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v14 = sub_1B0E44BA8();
  MEMORY[0x1B2726E80](v14);

  result.array._rawValue = sub_1B0E465B8();
  __break(1u);
  return result;
}

unint64_t sub_1B0D4251C(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(a2 + 16);
    if ((v2 - result) >= 1 && v2 < result)
    {
      __break(1u);
    }

    return a2;
  }

  return result;
}

uint64_t sub_1B0D42560(uint64_t a1)
{
  swift_bridgeObjectRetain_n();
  sub_1B0D41F7C(a1, &v10);

  v30 = v18;
  v31 = v19;
  v32 = v20;
  v33 = v21;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v29 = v17;
  v22 = v10;
  v23 = v11;
  v24 = v12;
  v25 = v13;
  if (sub_1B04FAE88(&v22) == 1)
  {
    return a1;
  }

  else
  {
    while (1)
    {
      v42 = v30;
      v43 = v31;
      v44 = v32;
      v45 = v33;
      v38 = v26;
      v39 = v27;
      v40 = v28;
      v41 = v29;
      v34 = v22;
      v35 = v23;
      v36 = v24;
      v37 = v25;
      if (!BodyStructure.subpartCount.getter())
      {
        sub_1B0398EFC(&v10, &qword_1EB6E4170, &qword_1B0EC3C60);
        return a1;
      }

      v2 = BodyStructure.subpartCount.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4CE0, &qword_1B0EE4E80);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1B0EC1E70;
      *(inited + 32) = v2;
      v4 = *(a1 + 16);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || (v6 = *(a1 + 24) >> 1, v7 = a1, v6 <= v4))
      {
        result = sub_1B0DF5438(result, v4 + 1, 1, a1);
        v7 = result;
        v6 = *(result + 24) >> 1;
      }

      v8 = *(v7 + 16);
      if (v6 <= v8)
      {
        break;
      }

      *(v7 + 8 * v8 + 32) = *(inited + 32);

      ++*(v7 + 16);
      sub_1B0398EFC(&v10, &qword_1EB6E4170, &qword_1B0EC3C60);

      v9 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0D41F7C(v9, &v10);

      v30 = v18;
      v31 = v19;
      v32 = v20;
      v33 = v21;
      v26 = v14;
      v27 = v15;
      v28 = v16;
      v29 = v17;
      v22 = v10;
      v23 = v11;
      v24 = v12;
      v25 = v13;
      a1 = v7;
      if (sub_1B04FAE88(&v22) == 1)
      {
        return v7;
      }
    }

    __break(1u);
  }

  return result;
}

NIOIMAPCore2::SectionSpecifier::Part __swiftcall BodyStructure.index(after:)(NIOIMAPCore2::SectionSpecifier::Part after)
{
  rawValue = after.array._rawValue;
  sub_1B0D41F7C(after.array._rawValue, v16);
  v42 = v16[8];
  v43 = v16[9];
  v44 = v16[10];
  v45 = v17;
  v38 = v16[4];
  v39 = v16[5];
  v40 = v16[6];
  v41 = v16[7];
  v34 = v16[0];
  v35 = v16[1];
  v36 = v16[2];
  v37 = v16[3];
  if (sub_1B04FAE88(&v34) != 1)
  {
    v54 = v42;
    v55 = v43;
    v56 = v44;
    v57 = v45;
    v50 = v38;
    v51 = v39;
    v52 = v40;
    v53 = v41;
    v46 = v34;
    v47 = v35;
    v48 = v36;
    v49 = v37;
    if (BodyStructure.subpartCount.getter())
    {
      *&v32[0] = rawValue;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0D44288(&unk_1F272D318);
      sub_1B0398EFC(v16, &qword_1EB6E4170, &qword_1B0EC3C60);
      return *&v32[0];
    }

    v3 = rawValue[2];
    if (!v3)
    {
LABEL_17:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4CE0, &qword_1B0EE4E80);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1B0EC1E70;
      *(v13 + 32) = BodyStructure.subpartCount.getter() + 1;
      sub_1B0398EFC(v16, &qword_1EB6E4170, &qword_1B0EC3C60);
      return v13;
    }

    swift_bridgeObjectRetain_n();
    v4 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v5 = rawValue[v3 + 3];

      v6 = rawValue[2];
      v7 = v6 - 1;
      if (v6 == 1)
      {
        v8 = v4;
      }

      else if (v6)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4CE0, &qword_1B0EE4E80);
        v8 = swift_allocObject();
        v9 = _swift_stdlib_malloc_size_0(v8);
        v10 = v9 - 32;
        if (v9 < 32)
        {
          v10 = v9 - 25;
        }

        v8[2] = v7;
        v8[3] = 2 * (v10 >> 3);
        memcpy(v8 + 4, rawValue + 4, 8 * v7);
      }

      else
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v8 = rawValue;
      }

      sub_1B0D41F7C(v11, v18);
      v28 = v18[8];
      v29 = v18[9];
      v30 = v18[10];
      v31 = v19;
      v24 = v18[4];
      v25 = v18[5];
      v26 = v18[6];
      v27 = v18[7];
      v20 = v18[0];
      v21 = v18[1];
      v22 = v18[2];
      v23 = v18[3];
      if (sub_1B04FAE88(&v20) == 1)
      {
        break;
      }

      v32[8] = v28;
      v32[9] = v29;
      v32[10] = v30;
      v33 = v31;
      v32[4] = v24;
      v32[5] = v25;
      v32[6] = v26;
      v32[7] = v27;
      v32[0] = v20;
      v32[1] = v21;
      v32[2] = v22;
      v32[3] = v23;

      v12 = BodyStructure.subpartCount.getter();
      sub_1B0398EFC(v18, &qword_1EB6E4170, &qword_1B0EC3C60);
      if (v5 < v12)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4CE0, &qword_1B0EE4E80);
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_1B0EC1E70;
        *(v14 + 32) = v5 + 1;
        sub_1B0D44288(v14);
        sub_1B0398EFC(v16, &qword_1EB6E4170, &qword_1B0EC3C60);
        return v8;
      }

      v3 = v8[2];
      rawValue = v8;
      if (!v3)
      {

        goto LABEL_17;
      }
    }

    __break(1u);
  }

  *&v46 = 0;
  *(&v46 + 1) = 0xE000000000000000;
  sub_1B0E46298();

  *&v46 = 0xD00000000000001ELL;
  *(&v46 + 1) = 0x80000001B0F2FB30;
  *&v32[0] = rawValue;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v15 = sub_1B0E44BA8();
  MEMORY[0x1B2726E80](v15);

  result.array._rawValue = sub_1B0E465B8();
  __break(1u);
  return result;
}

void *sub_1B0D42C6C(void *rawValue, uint64_t a2)
{
  v2 = a2;
  if (a2 < 0)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v5 = 0;
    do
    {
      --v5;
      v4.array._rawValue = BodyStructure.index(before:)(rawValue).array._rawValue;

      rawValue = v4.array._rawValue;
    }

    while (v5 > v2);
  }

  else
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    if (v2)
    {
      do
      {
        v4.array._rawValue = BodyStructure.index(after:)(rawValue).array._rawValue;

        rawValue = v4.array._rawValue;
        --v2;
      }

      while (v2);
    }

    else
    {
      return rawValue;
    }
  }

  return v4.array._rawValue;
}

NIOIMAPCore2::SectionSpecifier::Part sub_1B0D42D08@<X0>(NIOIMAPCore2::SectionSpecifier::Part *a1@<X0>, NIOIMAPCore2::SectionSpecifier::Part *a2@<X8>)
{
  result.array._rawValue = BodyStructure.index(before:)(a1->array._rawValue).array._rawValue;
  a2->array._rawValue = result.array._rawValue;
  return result;
}

uint64_t sub_1B0D42DA0@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4CE0, &qword_1B0EE4E80);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1B0EC1E70;
  result = BodyStructure.subpartCount.getter();
  *(v2 + 32) = result + 1;
  *a1 = v2;
  return result;
}

void (*sub_1B0D42E08(uint64_t *a1, uint64_t *a2))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x221uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = (v5 + 184);
  v8 = *a2;
  v9 = *(v2 + 144);
  *(v6 + 128) = *(v2 + 128);
  *(v6 + 144) = v9;
  *(v6 + 160) = *(v2 + 160);
  *(v6 + 176) = *(v2 + 176);
  v10 = *(v2 + 80);
  *(v6 + 64) = *(v2 + 64);
  *(v6 + 80) = v10;
  v11 = *(v2 + 112);
  *(v6 + 96) = *(v2 + 96);
  *(v6 + 112) = v11;
  v12 = *(v2 + 16);
  *v6 = *v2;
  *(v6 + 16) = v12;
  v13 = *(v2 + 48);
  *(v6 + 32) = *(v2 + 32);
  *(v6 + 48) = v13;
  BodyStructure.subscript.getter(v8, v7);
  v14 = v7[9];
  v15 = v7[10];
  v16 = v7[7];
  *(v6 + 496) = v7[8];
  *(v6 + 512) = v14;
  *(v6 + 528) = v15;
  v17 = v7[5];
  v18 = v7[6];
  *(v6 + 432) = *(v6 + 248);
  *(v6 + 448) = v17;
  *(v6 + 544) = *(v6 + 360);
  *(v6 + 464) = v18;
  *(v6 + 480) = v16;
  v19 = *(v6 + 200);
  *(v6 + 368) = *(v6 + 184);
  *(v6 + 384) = v19;
  v20 = *(v6 + 232);
  *(v6 + 400) = *(v6 + 216);
  *(v6 + 416) = v20;
  return sub_1B0D42F0C;
}

void sub_1B0D42F0C(void **a1)
{
  v1 = *a1;
  sub_1B075E648(*a1 + 184);

  free(v1);
}

void sub_1B0D42FB4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4CE0, &qword_1B0EE4E80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B0EC1E70;
  *(inited + 32) = BodyStructure.subpartCount.getter() + 1;
  if (_s12NIOIMAPCore216SectionSpecifierV4PartV1loiySbAE_AEtFZ_0(inited, MEMORY[0x1E69E7CC0]))
  {
    __break(1u);
    goto LABEL_6;
  }

  if (_s12NIOIMAPCore216SectionSpecifierV4PartV1loiySbAE_AEtFZ_0(a1, MEMORY[0x1E69E7CC0]))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v8 = _s12NIOIMAPCore216SectionSpecifierV4PartV1loiySbAE_AEtFZ_0(inited, a2);
  swift_setDeallocating();
  if (!v8)
  {
    v9 = *(v3 + 144);
    *(a3 + 144) = *(v3 + 128);
    *(a3 + 160) = v9;
    *(a3 + 176) = *(v3 + 160);
    *(a3 + 192) = *(v3 + 176);
    v10 = *(v3 + 80);
    *(a3 + 80) = *(v3 + 64);
    *(a3 + 96) = v10;
    v11 = *(v3 + 112);
    *(a3 + 112) = *(v3 + 96);
    *(a3 + 128) = v11;
    v12 = *(v3 + 16);
    *(a3 + 16) = *v3;
    *(a3 + 32) = v12;
    v13 = *(v3 + 48);
    *(a3 + 48) = *(v3 + 32);
    *(a3 + 64) = v13;
    *a3 = a1;
    *(a3 + 8) = a2;
    sub_1B07169CC(v3, v14);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_1B0D430D4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[9];
  v4 = v1[7];
  v27 = v1[8];
  v28 = v3;
  v5 = v1[9];
  v29 = v1[10];
  v6 = v1[5];
  v8 = v1[3];
  v23 = v1[4];
  v7 = v23;
  v24 = v6;
  v9 = v1[5];
  v10 = v1[7];
  v25 = v1[6];
  v11 = v25;
  v26 = v10;
  v12 = v1[1];
  v20[0] = *v1;
  v20[1] = v12;
  v13 = v1[3];
  v15 = *v1;
  v14 = v1[1];
  v21 = v1[2];
  v16 = v21;
  v22 = v13;
  *(a1 + 128) = v27;
  *(a1 + 144) = v5;
  *(a1 + 160) = v1[10];
  *(a1 + 64) = v7;
  *(a1 + 80) = v9;
  *(a1 + 96) = v11;
  *(a1 + 112) = v4;
  *a1 = v15;
  *(a1 + 16) = v14;
  v30 = *(v1 + 176);
  *(a1 + 176) = *(v1 + 176);
  *(a1 + 32) = v16;
  *(a1 + 48) = v8;
  *(a1 + 184) = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4CE0, &qword_1B0EE4E80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1B0EC1E70;
  sub_1B07169CC(v20, v19);
  result = BodyStructure.subpartCount.getter();
  *(v17 + 32) = result + 1;
  *(a1 + 192) = v17;
  return result;
}

uint64_t sub_1B0D431D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4CE0, &qword_1B0EE4E80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B0EC1E70;
  *(inited + 32) = BodyStructure.subpartCount.getter() + 1;
  v1 = sub_1B0D44374(MEMORY[0x1E69E7CC0], inited);
  swift_setDeallocating();
  return v1;
}

void *sub_1B0D43298@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v6 = *a1;
  v7 = sub_1B0D44374(*a1, *a3);
  if (a2 < 1)
  {
    if (v7 > 0 || v7 <= a2)
    {
      goto LABEL_8;
    }
  }

  else if (v7 < 0 || v7 >= a2)
  {
LABEL_8:
    result = sub_1B0D42C6C(v6, a2);
    goto LABEL_9;
  }

  result = 0;
LABEL_9:
  *a4 = result;
  return result;
}

BOOL sub_1B0D4335C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a2[1];
  result = _s12NIOIMAPCore216SectionSpecifierV4PartV1loiySbAE_AEtFZ_0(*a1, *a2);
  if (result)
  {
    __break(1u);
    goto LABEL_5;
  }

  result = _s12NIOIMAPCore216SectionSpecifierV4PartV1loiySbAE_AEtFZ_0(v2, v3);
  if (!result)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

BOOL sub_1B0D433A8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a2[1];
  result = _s12NIOIMAPCore216SectionSpecifierV4PartV1loiySbAE_AEtFZ_0(*a1, *a2);
  if (result)
  {
    __break(1u);
    goto LABEL_5;
  }

  result = _s12NIOIMAPCore216SectionSpecifierV4PartV1loiySbAE_AEtFZ_0(v3, v2);
  if (result)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

BOOL sub_1B0D433F4(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  result = _s12NIOIMAPCore216SectionSpecifierV4PartV1loiySbAE_AEtFZ_0(*a1, *a2);
  if (result)
  {
    __break(1u);
    goto LABEL_5;
  }

  result = _s12NIOIMAPCore216SectionSpecifierV4PartV1loiySbAE_AEtFZ_0(v3, v2);
  if (result)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

NIOIMAPCore2::SectionSpecifier::Part sub_1B0D43440@<X0>(NIOIMAPCore2::SectionSpecifier::Part *a1@<X0>, NIOIMAPCore2::SectionSpecifier::Part *a2@<X8>)
{
  result.array._rawValue = BodyStructure.index(after:)(a1->array._rawValue).array._rawValue;
  a2->array._rawValue = result.array._rawValue;
  return result;
}

uint64_t sub_1B0D434C8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = (a4)(*a1, a2, a3);

  *a1 = v5;
  return result;
}

__n128 sub_1B0D43554@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 144);
  *(a1 + 128) = *(v1 + 128);
  *(a1 + 144) = v2;
  *(a1 + 160) = *(v1 + 160);
  *(a1 + 176) = *(v1 + 176);
  v3 = *(v1 + 80);
  *(a1 + 64) = *(v1 + 64);
  *(a1 + 80) = v3;
  v4 = *(v1 + 112);
  *(a1 + 96) = *(v1 + 96);
  *(a1 + 112) = v4;
  v5 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v5;
  result = *(v1 + 32);
  v7 = *(v1 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v7;
  *(a1 + 184) = MEMORY[0x1E69E7CC0];
  return result;
}

void *sub_1B0D435B8()
{
  v1 = *(v0 + 144);
  v8[8] = *(v0 + 128);
  v8[9] = v1;
  v8[10] = *(v0 + 160);
  v9 = *(v0 + 176);
  v2 = *(v0 + 80);
  v8[4] = *(v0 + 64);
  v8[5] = v2;
  v3 = *(v0 + 112);
  v8[6] = *(v0 + 96);
  v8[7] = v3;
  v4 = *(v0 + 16);
  v8[0] = *v0;
  v8[1] = v4;
  v5 = *(v0 + 48);
  v8[2] = *(v0 + 32);
  v8[3] = v5;
  v6 = sub_1B0D440CC(v8);
  sub_1B075E648(v8);
  return v6;
}

double sub_1B0D43690@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 < 1)
  {
    goto LABEL_10;
  }

  v5 = *(v2 + 144);
  v85[8] = *(v2 + 128);
  v85[9] = v5;
  v85[10] = *(v2 + 160);
  v86 = *(v2 + 176);
  v6 = *(v2 + 80);
  v85[4] = *(v2 + 64);
  v85[5] = v6;
  v7 = *(v2 + 112);
  v85[6] = *(v2 + 96);
  v85[7] = v7;
  v8 = *(v2 + 16);
  v85[0] = *v2;
  v85[1] = v8;
  v9 = *(v2 + 48);
  v85[2] = *(v2 + 32);
  v85[3] = v9;
  if (sub_1B0717014(v85) != 1)
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    v24 = *v23;
    if (*v23 >> 62 == 1)
    {
      v25 = v24 & 0x3FFFFFFFFFFFFFFFLL;
      memcpy(__dst, ((v24 & 0x3FFFFFFFFFFFFFFFLL) + 16), sizeof(__dst));
      v26 = *(v25 + 296);
      v27 = *(v25 + 312);
      v28 = *(v25 + 264);
      v95 = *(v25 + 280);
      v96 = v26;
      v97 = v27;
      v98 = *(v25 + 328);
      v29 = *(v25 + 232);
      v91 = *(v25 + 216);
      v92 = v29;
      v93 = *(v25 + 248);
      v94 = v28;
      v30 = *(v25 + 168);
      v87 = *(v25 + 152);
      v88 = v30;
      v31 = *(v25 + 200);
      v89 = *(v25 + 184);
      v90 = v31;
      sub_1B0C6700C(__dst, &v56);
      v32 = v81;
      sub_1B0D43690(a1, v81);
      v83[8] = v81[8];
      v83[9] = v81[9];
      v83[10] = v81[10];
      v84 = v82;
      v83[4] = v81[4];
      v83[5] = v81[5];
      v83[6] = v81[6];
      v83[7] = v81[7];
      v83[0] = v81[0];
      v83[1] = v81[1];
      v83[2] = v81[2];
      v83[3] = v81[3];
      if (sub_1B04FAE88(v83) == 1)
      {
        v32 = &__dst[136];
        sub_1B07169CC(&__dst[136], &v56);
      }

      sub_1B0C67068(__dst);
      v33 = *(v32 + 9);
      v76 = *(v32 + 8);
      v77 = v33;
      v78 = *(v32 + 10);
      v79 = v32[176];
      v34 = *(v32 + 5);
      v72 = *(v32 + 4);
      v73 = v34;
      v35 = *(v32 + 7);
      v74 = *(v32 + 6);
      v75 = v35;
      v36 = *(v32 + 1);
      v68 = *v32;
      v69 = v36;
      v37 = *(v32 + 3);
      v70 = *(v32 + 2);
      v71 = v37;
      v52 = v76;
      v53 = v77;
      v54 = v78;
      v55 = v79;
      v48 = v72;
      v49 = v73;
      v50 = v74;
      v51 = v75;
      v44 = v68;
      v45 = v69;
      v46 = v70;
      v47 = v37;
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
      v64 = v52;
      v65 = v53;
      v66 = v54;
      v67 = v55;
      v60 = v48;
      v61 = v49;
      v62 = v50;
      v63 = v51;
      v56 = v44;
      v57 = v45;
      v21 = v46;
      v22 = v47;
      goto LABEL_9;
    }

LABEL_10:
    sub_1B075FEBC(&v56);
    goto LABEL_11;
  }

  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
  if (*(*v10 + 16) < a1)
  {
    goto LABEL_10;
  }

  v11 = *v10 + 184 * a1;
  v12 = *(v11 - 152);
  v13 = *(v11 - 136);
  v14 = *(v11 - 104);
  v89 = *(v11 - 120);
  v90 = v14;
  v87 = v12;
  v88 = v13;
  v15 = *(v11 - 88);
  v16 = *(v11 - 72);
  v17 = *(v11 - 40);
  v93 = *(v11 - 56);
  v94 = v17;
  v91 = v15;
  v92 = v16;
  v18 = *(v11 - 24);
  v19 = *(v11 - 8);
  v20 = *(v11 + 8);
  v98 = *(v11 + 24);
  v96 = v19;
  v97 = v20;
  v95 = v18;
  memmove(__dst, (v11 - 152), 0xB1uLL);
  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
  sub_1B07169CC(&v87, &v56);
  v64 = *&__dst[128];
  v65 = *&__dst[144];
  v66 = *&__dst[160];
  v67 = __dst[176];
  v60 = *&__dst[64];
  v61 = *&__dst[80];
  v62 = *&__dst[96];
  v63 = *&__dst[112];
  v56 = *__dst;
  v57 = *&__dst[16];
  v21 = *&__dst[32];
  v22 = *&__dst[48];
LABEL_9:
  v58 = v21;
  v59 = v22;
LABEL_11:
  v38 = v65;
  *(a2 + 128) = v64;
  *(a2 + 144) = v38;
  *(a2 + 160) = v66;
  *(a2 + 176) = v67;
  v39 = v61;
  *(a2 + 64) = v60;
  *(a2 + 80) = v39;
  v40 = v63;
  *(a2 + 96) = v62;
  *(a2 + 112) = v40;
  v41 = v57;
  *a2 = v56;
  *(a2 + 16) = v41;
  result = *&v58;
  v43 = v59;
  *(a2 + 32) = v58;
  *(a2 + 48) = v43;
  return result;
}

uint64_t BodyStructure.enumerateParts(_:)(void (*a1)(uint64_t, _OWORD *), uint64_t a2)
{
  v4 = v2;
  result = (a1)(MEMORY[0x1E69E7CC0], v4);
  if (!v3)
  {
    return sub_1B0D43A64(MEMORY[0x1E69E7CC0], a1, a2);
  }

  return result;
}

uint64_t sub_1B0D43A64(uint64_t a1, void (*a2)(uint64_t, _OWORD *), uint64_t inited)
{
  result = BodyStructure.subpartCount.getter();
  if (result)
  {
    v8 = BodyStructure.subpartCount.getter();
    if (v8)
    {
      v9 = v8;
      v36 = *(a1 + 16);
      v10 = 1;
      v19 = a2;
      while (1)
      {
        v11 = inited;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4CE0, &qword_1B0EE4E80);
        v12 = swift_initStackObject();
        *(v12 + 16) = xmmword_1B0EC1E70;
        *(v12 + 32) = v10;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || (v14 = *(a1 + 24) >> 1, v15 = a1, v14 <= v36))
        {
          v15 = sub_1B0DF5438(isUniquelyReferenced_nonNull_native, v36 + 1, 1, a1);
          v14 = *(v15 + 3) >> 1;
        }

        v16 = *(v15 + 2);
        if (v14 <= v16)
        {
          break;
        }

        *&v15[8 * v16 + 32] = *(v12 + 32);

        ++*(v15 + 2);
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_1B0EC1E70;
        *(v17 + 32) = v10;
        sub_1B0D41F7C(v17, v20);
        v30 = v20[8];
        v31 = v20[9];
        v32 = v20[10];
        v33 = v21;
        v26 = v20[4];
        v27 = v20[5];
        v28 = v20[6];
        v29 = v20[7];
        v22 = v20[0];
        v23 = v20[1];
        v24 = v20[2];
        v25 = v20[3];
        if (sub_1B04FAE88(&v22) == 1)
        {
          goto LABEL_16;
        }

        v34[8] = v30;
        v34[9] = v31;
        v34[10] = v32;
        v35 = v33;
        v34[4] = v26;
        v34[5] = v27;
        v34[6] = v28;
        v34[7] = v29;
        v34[0] = v22;
        v34[1] = v23;
        v34[2] = v24;
        v34[3] = v25;

        inited = v11;
        v19(v15, v34);
        if (v3)
        {
          sub_1B0398EFC(v20, &qword_1EB6E4170, &qword_1B0EC3C60);
        }

        sub_1B0D43A64(v15, v19, v11);
        sub_1B0398EFC(v20, &qword_1EB6E4170, &qword_1B0EC3C60);

        ++v10;
        if (!--v9)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    sub_1B0E46298();

    v18 = sub_1B0E44BA8();
    MEMORY[0x1B2726E80](v18);

    result = sub_1B0E465B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0D43DA0(__int128 *a1)
{
  v2 = &v25;
  v3 = a1[9];
  v33 = a1[8];
  v34 = v3;
  v35 = a1[10];
  v36 = *(a1 + 176);
  v4 = a1[5];
  v29 = a1[4];
  v30 = v4;
  v5 = a1[7];
  v31 = a1[6];
  v32 = v5;
  v6 = a1[1];
  v25 = *a1;
  v26 = v6;
  v7 = a1[3];
  v27 = a1[2];
  v28 = v7;
  if (sub_1B04FAE88(&v25) != 1)
  {
    goto LABEL_11;
  }

  v8 = *(v1 + 20);
  result = sub_1B0CFC1B0(0x28uLL, 0xE100000000000000, v1 + 8, v8);
  if (v10)
  {
    v11._countAndFlagsBits = 40;
    v11._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v11, v8);
  }

  v2 = result;
  v12 = *(v1 + 20);
  v13 = (v12 + result);
  if (__CFADD__(v12, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  *(v1 + 20) = v13;
  result = sub_1B0CFC1B0(0x29uLL, 0xE100000000000000, v1 + 8, v13);
  if (v14)
  {
    v15._countAndFlagsBits = 41;
    v15._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v15, v13);
  }

  v16 = *(v1 + 20);
  v17 = __CFADD__(v16, result);
  v18 = v16 + result;
  if (v17)
  {
    goto LABEL_14;
  }

  *(v1 + 20) = v18;
  v19 = __OFADD__(v2, result);
  result += v2;
  if (!v19)
  {
    return result;
  }

  __break(1u);
LABEL_11:
  v20 = *(v2 + 144);
  *(v2 + 320) = *(v2 + 128);
  *(v2 + 336) = v20;
  *(v2 + 352) = *(v2 + 160);
  v37[176] = v36;
  v21 = v30;
  *(v2 + 256) = v29;
  *(v2 + 272) = v21;
  v22 = v32;
  *(v2 + 288) = v31;
  *(v2 + 304) = v22;
  v23 = v26;
  *(v2 + 192) = v25;
  *(v2 + 208) = v23;
  v24 = v28;
  *(v2 + 224) = v27;
  *(v2 + 240) = v24;
  return sub_1B0D43F08(v37);
}

uint64_t sub_1B0D43F08(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 20);
  result = sub_1B0CFC1B0(0x28uLL, 0xE100000000000000, v1 + 8, v4);
  if (v6)
  {
    v7._countAndFlagsBits = 40;
    v7._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = result;
  v9 = *(v1 + 20);
  v10 = __CFADD__(v9, result);
  v11 = v9 + result;
  if (v10)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v12 = v36;
  *(v2 + 20) = v11;
  v13 = *(a1 + 144);
  v36[8] = *(a1 + 128);
  v36[9] = v13;
  v36[10] = *(a1 + 160);
  v37 = *(a1 + 176);
  v14 = *(a1 + 80);
  v36[4] = *(a1 + 64);
  v36[5] = v14;
  v15 = *(a1 + 112);
  v36[6] = *(a1 + 96);
  v36[7] = v15;
  v16 = *(a1 + 16);
  v36[0] = *a1;
  v36[1] = v16;
  v17 = *(a1 + 48);
  v36[2] = *(a1 + 32);
  v36[3] = v17;
  if (sub_1B0717014(v36) == 1)
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    v19 = *(v18 + 80);
    v38[4] = *(v18 + 64);
    v38[5] = v19;
    v38[6] = *(v18 + 96);
    v39 = *(v18 + 112);
    v20 = *(v18 + 16);
    v38[0] = *v18;
    v38[1] = v20;
    v21 = *(v18 + 48);
    v38[2] = *(v18 + 32);
    v38[3] = v21;
    v12 = v2;
    sub_1B0DF1B64(v38);
    v23 = v8 + v22;
    if (!__OFADD__(v8, v22))
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
  v25 = v24[9];
  v12[20] = v24[8];
  v12[21] = v25;
  v12[22] = v24[10];
  v26 = v24[5];
  v12[16] = v24[4];
  v12[17] = v26;
  v27 = v24[7];
  v12[18] = v24[6];
  v12[19] = v27;
  v28 = v24[1];
  v12[12] = *v24;
  v12[13] = v28;
  v29 = v24[3];
  v12[14] = v24[2];
  v12[15] = v29;
  result = sub_1B0E2A8C4(v38);
  v23 = v8 + result;
  if (__OFADD__(v8, result))
  {
LABEL_17:
    __break(1u);
    return result;
  }

LABEL_9:
  v30 = *(v2 + 20);
  result = sub_1B0CFC1B0(0x29uLL, 0xE100000000000000, v2 + 8, v30);
  if (v31)
  {
    v32._countAndFlagsBits = 41;
    v32._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v32, v30);
  }

  v33 = *(v2 + 20);
  v10 = __CFADD__(v33, result);
  v34 = v33 + result;
  if (v10)
  {
    goto LABEL_15;
  }

  *(v2 + 20) = v34;
  v35 = __OFADD__(v23, result);
  result += v23;
  if (v35)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  return result;
}

void *sub_1B0D440CC(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4CE0, &qword_1B0EE4E80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B0EC1E70;
  *(inited + 32) = BodyStructure.subpartCount.getter() + 1;
  v3 = MEMORY[0x1E69E7CC0];
  v4 = sub_1B0D44374(MEMORY[0x1E69E7CC0], inited);
  swift_setDeallocating();
  if (!v4)
  {
    return v3;
  }

  v3 = sub_1B0DDA9BC(v4, 0);
  sub_1B07169CC(a1, v7);
  v5 = sub_1B0D444F0(v7, (v3 + 4), v4);
  result = sub_1B0398EFC(v7, &qword_1EB6E70A0, &qword_1B0EEF6F0);
  if (v5 == v4)
  {
    return v3;
  }

  __break(1u);
  return result;
}

void sub_1B0D441B8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x1E69E7CC0];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 8 * a3), 8 * v5);
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4CE0, &qword_1B0EE4E80);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size_0(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 25;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_1B0D44288(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1B0DF5438(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v7 + 32), (v6 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1B0D44374(void *a1, void *a2)
{
  rawValue = a1;
  if (_s12NIOIMAPCore216SectionSpecifierV4PartV1loiySbAE_AEtFZ_0(a1, a2))
  {
    if ((_s12NIOIMAPCore216SectionSpecifierV4PartV23__derived_struct_equalsySbAE_AEtFZ_0(rawValue, a2) & 1) == 0)
    {
      v4 = a2[2];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v5 = 1;
      do
      {
        rawValue = BodyStructure.index(after:)(rawValue).array._rawValue;

        if (rawValue[2] == v4)
        {
          if (!v4 || rawValue == a2)
          {
            goto LABEL_23;
          }

          v8 = 4;
          v9 = v4;
          while (rawValue[v8] == a2[v8])
          {
            ++v8;
            if (!--v9)
            {
              goto LABEL_23;
            }
          }
        }

        v6 = __OFADD__(v5++, 1);
      }

      while (!v6);
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

    return 0;
  }

  if (!_s12NIOIMAPCore216SectionSpecifierV4PartV1loiySbAE_AEtFZ_0(a2, rawValue) || (_s12NIOIMAPCore216SectionSpecifierV4PartV23__derived_struct_equalsySbAE_AEtFZ_0(rawValue, a2) & 1) != 0)
  {
    return 0;
  }

  v10 = a2[2];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v5 = -1;
  while (1)
  {
    rawValue = BodyStructure.index(before:)(rawValue).array._rawValue;

    if (rawValue[2] == v10)
    {
      break;
    }

LABEL_16:
    v6 = __OFSUB__(v5--, 1);
    if (v6)
    {
      goto LABEL_26;
    }
  }

  if (v10 && rawValue != a2)
  {
    v11 = 4;
    v12 = v10;
    while (rawValue[v11] == a2[v11])
    {
      ++v11;
      if (!--v12)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_16;
  }

LABEL_23:

  return v5;
}

uint64_t sub_1B0D444F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = v3[9];
  v41 = v3[10];
  v35 = v3[4];
  v36 = v3[5];
  v37 = v3[6];
  LOBYTE(v42) = *(v3 + 176);
  v38 = v3[7];
  v39 = v3[8];
  v31 = *v3;
  v32 = v3[1];
  v33 = v3[2];
  v34 = v3[3];
  if (!a2)
  {
LABEL_13:
    v5 = 0;
    goto LABEL_14;
  }

  v5 = a3;
  if (!a3)
  {
LABEL_14:
    rawValue = MEMORY[0x1E69E7CC0];
LABEL_17:
    *(a1 + 128) = v39;
    *(a1 + 144) = v40;
    *(a1 + 160) = v41;
    *(a1 + 64) = v35;
    *(a1 + 80) = v36;
    *(a1 + 96) = v37;
    *(a1 + 112) = v38;
    *a1 = v31;
    *(a1 + 16) = v32;
    *(a1 + 32) = v33;
    *(a1 + 48) = v34;
    *(a1 + 176) = v42;
    *(a1 + 184) = rawValue;
    return v5;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = v3;
    v7 = a2;
    rawValue = MEMORY[0x1E69E7CC0];
    v9 = 1;
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4CE0, &qword_1B0EE4E80);
      v10 = swift_allocObject();
      v11 = BodyStructure.subpartCount.getter() + 1;
      *(v10 + 32) = v11;
      if (rawValue[2] == 1 && (rawValue == v10 || rawValue[4] == v11))
      {
        swift_setDeallocating();
        swift_deallocClassInstance();
        v5 = v9 - 1;
        goto LABEL_17;
      }

      swift_setDeallocating();
      swift_deallocClassInstance();
      v12 = v6[9];
      v77 = v6[8];
      v78 = v12;
      v79 = v6[10];
      v80 = *(v6 + 176);
      v13 = v6[5];
      v73 = v6[4];
      v74 = v13;
      v14 = v6[7];
      v75 = v6[6];
      v76 = v14;
      v15 = v6[1];
      v69 = *v6;
      v70 = v15;
      v16 = v6[3];
      v71 = v6[2];
      v72 = v16;
      sub_1B0D41F7C(rawValue, &v43);
      v55[8] = v51;
      v55[9] = v52;
      v55[10] = v53;
      v56 = v54;
      v55[4] = v47;
      v55[5] = v48;
      v55[6] = v49;
      v55[7] = v50;
      v55[0] = v43;
      v55[1] = v44;
      v55[2] = v45;
      v55[3] = v46;
      if (sub_1B04FAE88(v55) == 1)
      {
        goto LABEL_19;
      }

      v17 = v6[9];
      v65 = v6[8];
      v66 = v17;
      v67 = v6[10];
      v68 = *(v6 + 176);
      v18 = v6[5];
      v61 = v6[4];
      v62 = v18;
      v19 = v6[7];
      v63 = v6[6];
      v64 = v19;
      v20 = v6[1];
      v57 = *v6;
      v58 = v20;
      v21 = v6[3];
      v59 = v6[2];
      v60 = v21;
      v22.array._rawValue = BodyStructure.index(after:)(rawValue).array._rawValue;

      v23 = v52;
      *(v7 + 128) = v51;
      *(v7 + 144) = v23;
      *(v7 + 160) = v53;
      *(v7 + 176) = v54;
      v24 = v48;
      *(v7 + 64) = v47;
      *(v7 + 80) = v24;
      v25 = v50;
      *(v7 + 96) = v49;
      *(v7 + 112) = v25;
      v26 = v44;
      *v7 = v43;
      *(v7 + 16) = v26;
      v27 = v46;
      *(v7 + 32) = v45;
      *(v7 + 48) = v27;
      if (v5 == v9)
      {
        break;
      }

      v7 += 184;
      rawValue = v22.array._rawValue;
      if (__OFADD__(v9++, 1))
      {
        __break(1u);
        goto LABEL_13;
      }
    }

    rawValue = v22.array._rawValue;
    goto LABEL_17;
  }

  __break(1u);
LABEL_19:
  sub_1B0E46298();

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v30 = sub_1B0E44BA8();
  MEMORY[0x1B2726E80](v30);

  result = sub_1B0E465B8();
  __break(1u);
  return result;
}

uint64_t sub_1B0D448C4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x1B2728D70](v4);
  if (v4)
  {
    v6 = (a2 + 32);
    do
    {
      v8 = v6 + 1;
      v7 = *v6;
      v16 = v8;
      if ((v7 & 0x8000000000000000) != 0)
      {
        v13 = *((v7 & 0x7FFFFFFFFFFFFFFFLL) + 0x28);
        v14 = *((v7 & 0x7FFFFFFFFFFFFFFFLL) + 0x40);
        MEMORY[0x1B2728D70](1);
        swift_beginAccess();
        sub_1B0E46C38();
        sub_1B0E46C68();
        if (v13)
        {
          swift_beginAccess();
          sub_1B0E46C38();
        }

        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0D448C4(a1, v14);

        goto LABEL_4;
      }

      v9 = *(v7 + 16);
      v10 = *(v7 + 40);
      v11 = *(v7 + 64);
      v15 = *(v7 + 88);
      MEMORY[0x1B2728D70](0);
      if (v9)
      {
        sub_1B0E46C68();
        swift_beginAccess();
        sub_1B0E46C38();
        if (v10)
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_1B0E46C68();
        if (v10)
        {
LABEL_8:
          sub_1B0E46C68();
          swift_beginAccess();
          sub_1B0E46C38();
          v12 = v15;
          if (v11)
          {
            goto LABEL_9;
          }

          goto LABEL_15;
        }
      }

      sub_1B0E46C68();
      v12 = v15;
      if (v11)
      {
LABEL_9:
        sub_1B0E46C68();
        swift_beginAccess();
        sub_1B0E46C38();
        if (!v12)
        {
          goto LABEL_16;
        }

        goto LABEL_3;
      }

LABEL_15:
      sub_1B0E46C68();
      if (!v12)
      {
LABEL_16:
        result = sub_1B0E46C68();
        goto LABEL_4;
      }

LABEL_3:
      sub_1B0E46C68();
      swift_beginAccess();
      result = sub_1B0E46C38();
LABEL_4:
      --v4;
      v6 = v16;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_1B0D44C38(uint64_t a1, uint64_t a2)
{
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4040, &qword_1B0EC2B10);
  v3 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v45 = &v45 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4050, &unk_1B0EC2B20);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v45 - v9;
  v11 = type metadata accessor for ParameterValue(0);
  v12 = *(v11 - 8);
  v55 = v11;
  v56 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v50 = (&v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v54 = &v45 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6440, &unk_1B0EF3530);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v53 = &v45 - v17;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F58, &unk_1B0EF5150);
  MEMORY[0x1EEE9AC00](v52);
  v57 = &v45 - v18;
  v60 = type metadata accessor for MetadataOption(0);
  v19 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v21 = (&v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v45 - v24;
  v26 = *(a2 + 16);
  result = MEMORY[0x1B2728D70](v26, v23);
  v59 = v26;
  if (v26)
  {
    v28 = v3;
    v29 = 0;
    v58 = a2 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v30 = *(v19 + 72);
    v51 = (v56 + 48);
    v46 = (v28 + 48);
    v47 = v7;
    v31 = &unk_1B0EC2B20;
    v56 = v30;
    v49 = v10;
    do
    {
      sub_1B0D4B0D0(v58 + v30 * v29, v25, type metadata accessor for MetadataOption);
      sub_1B0D4B0D0(v25, v21, type metadata accessor for MetadataOption);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        v35 = v31;
        if (EnumCaseMultiPayload != 1)
        {
          v36 = v57;
          sub_1B03C60A4(v21, v57, &qword_1EB6E6F58, &unk_1B0EF5150);
          MEMORY[0x1B2728D70](2);
          _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
          v37 = v53;
          sub_1B03B5C80(v36 + *(v52 + 52), v53, &qword_1EB6E6440, &unk_1B0EF3530);
          if ((*v51)(v37, 1, v55) == 1)
          {
            sub_1B0E46C68();
            goto LABEL_16;
          }

          v38 = v54;
          sub_1B0D4B068(v37, v54, type metadata accessor for ParameterValue);
          sub_1B0E46C68();
          v39 = v50;
          sub_1B0D4B0D0(v38, v50, type metadata accessor for ParameterValue);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v40 = *v39;
            MEMORY[0x1B2728D70](1);
            MEMORY[0x1B2728D70](*(v40 + 16));
            v41 = *(v40 + 16);
            if (v41)
            {
              v42 = v40 + 40;
              do
              {
                _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

                v42 += 16;
                --v41;
              }

              while (v41);
            }

            sub_1B0D4B138(v54, type metadata accessor for ParameterValue);
            v7 = v47;
            v10 = v49;
            v30 = v56;
LABEL_16:
            v31 = v35;
          }

          else
          {
            v31 = v35;
            sub_1B03C60A4(v39, v10, &qword_1EB6E4050, v35);
            MEMORY[0x1B2728D70](0);
            sub_1B03B5C80(v10, v7, &qword_1EB6E4050, v35);
            if ((*v46)(v7, 1, v48) == 1)
            {
              MEMORY[0x1B2728D70](1);
            }

            else
            {
              v43 = v45;
              sub_1B03C60A4(v7, v45, &qword_1EB6E4040, &qword_1B0EC2B10);
              MEMORY[0x1B2728D70](0);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
              sub_1B0B0D328();
              sub_1B0E447C8();
              v44 = v43;
              v31 = v35;
              v10 = v49;
              sub_1B0398EFC(v44, &qword_1EB6E4040, &qword_1B0EC2B10);
            }

            sub_1B0398EFC(v10, &qword_1EB6E4050, v35);
            sub_1B0D4B138(v54, type metadata accessor for ParameterValue);
            v30 = v56;
          }

          sub_1B0D4B138(v25, type metadata accessor for MetadataOption);
          result = sub_1B0398EFC(v57, &qword_1EB6E6F58, &unk_1B0EF5150);
          goto LABEL_5;
        }

        MEMORY[0x1B2728D70](1);
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      }

      else
      {
        v32 = *v21;
        MEMORY[0x1B2728D70](0);
        v33 = v32;
        v30 = v56;
        MEMORY[0x1B2728D70](v33);
      }

      result = sub_1B0D4B138(v25, type metadata accessor for MetadataOption);
LABEL_5:
      ++v29;
    }

    while (v29 != v59);
  }

  return result;
}

uint64_t sub_1B0D453B4(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4040, &qword_1B0EC2B10);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v44 = &v43 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4050, &unk_1B0EC2B20);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v46 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v45 = &v43 - v9;
  v53 = type metadata accessor for ParameterValue(0);
  v56 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v48 = (&v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v52 = &v43 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6440, &unk_1B0EF3530);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v51 = &v43 - v14;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F58, &unk_1B0EF5150);
  MEMORY[0x1EEE9AC00](v50);
  v57 = &v43 - v15;
  v16 = type metadata accessor for SearchReturnOption(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v43 - v22;
  v24 = *(a2 + 16);
  result = MEMORY[0x1B2728D70](v24, v21);
  v58 = v24;
  if (v24)
  {
    v26 = 0;
    v27 = a2 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v28 = *(v17 + 72);
    v29 = v27;
    v49 = (v56 + 48);
    v43 = (v4 + 48);
    v54 = v16;
    v55 = v27;
    v56 = v28;
    v47 = v3;
    do
    {
      sub_1B0D4B0D0(v29 + v28 * v26, v23, type metadata accessor for SearchReturnOption);
      sub_1B0D4B0D0(v23, v19, type metadata accessor for SearchReturnOption);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 2)
      {
        if (!EnumCaseMultiPayload)
        {
          v34 = v19[8];
          MEMORY[0x1B2728D70](5);
          MEMORY[0x1B2728D70](v34);
          v29 = v55;
          sub_1B0E46C88();
          v28 = v56;
          sub_1B0E46C88();
          goto LABEL_5;
        }

        if (EnumCaseMultiPayload == 1)
        {
          v32 = v57;
          sub_1B03C60A4(v19, v57, &qword_1EB6E6F58, &unk_1B0EF5150);
          MEMORY[0x1B2728D70](6);
          _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
          v33 = v51;
          sub_1B03B5C80(v32 + *(v50 + 52), v51, &qword_1EB6E6440, &unk_1B0EF3530);
          if ((*v49)(v33, 1, v53) == 1)
          {
            sub_1B0E46C68();
          }

          else
          {
            v35 = v52;
            sub_1B0D4B068(v33, v52, type metadata accessor for ParameterValue);
            sub_1B0E46C68();
            v36 = v48;
            sub_1B0D4B0D0(v35, v48, type metadata accessor for ParameterValue);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              v37 = *v36;
              MEMORY[0x1B2728D70](1);
              MEMORY[0x1B2728D70](*(v37 + 16));
              v38 = *(v37 + 16);
              if (v38)
              {
                v39 = v37 + 40;
                do
                {
                  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

                  v39 += 16;
                  --v38;
                }

                while (v38);
              }

              sub_1B0D4B138(v52, type metadata accessor for ParameterValue);
              v3 = v47;
              v29 = v55;
            }

            else
            {
              v40 = v45;
              sub_1B03C60A4(v36, v45, &qword_1EB6E4050, &unk_1B0EC2B20);
              MEMORY[0x1B2728D70](0);
              v41 = v46;
              sub_1B03B5C80(v40, v46, &qword_1EB6E4050, &unk_1B0EC2B20);
              if ((*v43)(v41, 1, v3) == 1)
              {
                MEMORY[0x1B2728D70](1);
              }

              else
              {
                v42 = v44;
                sub_1B03C60A4(v41, v44, &qword_1EB6E4040, &qword_1B0EC2B10);
                MEMORY[0x1B2728D70](0);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
                sub_1B0B0D328();
                sub_1B0E447C8();
                sub_1B0398EFC(v42, &qword_1EB6E4040, &qword_1B0EC2B10);
              }

              sub_1B0398EFC(v40, &qword_1EB6E4050, &unk_1B0EC2B20);
              sub_1B0D4B138(v52, type metadata accessor for ParameterValue);
              v29 = v55;
              v3 = v47;
            }
          }

          sub_1B0D4B138(v23, type metadata accessor for SearchReturnOption);
          result = sub_1B0398EFC(v57, &qword_1EB6E6F58, &unk_1B0EF5150);
          v28 = v56;
          goto LABEL_6;
        }

        v30 = 0;
      }

      else if (EnumCaseMultiPayload > 4)
      {
        if (EnumCaseMultiPayload == 5)
        {
          v30 = 3;
        }

        else
        {
          v30 = 4;
        }
      }

      else if (EnumCaseMultiPayload == 3)
      {
        v30 = 1;
      }

      else
      {
        v30 = 2;
      }

      MEMORY[0x1B2728D70](v30);
LABEL_5:
      result = sub_1B0D4B138(v23, type metadata accessor for SearchReturnOption);
LABEL_6:
      ++v26;
    }

    while (v26 != v58);
  }

  return result;
}

uint64_t sub_1B0D45B34(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4040, &qword_1B0EC2B10);
  v4 = *(v3 - 8);
  v43 = v3;
  v44 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v40 = &v39 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4050, &unk_1B0EC2B20);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v42 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v39 - v9;
  v11 = type metadata accessor for ParameterValue(0);
  v47 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v46 = (&v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v50 = &v39 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6440, &unk_1B0EF3530);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v49 = &v39 - v16;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F58, &unk_1B0EF5150);
  MEMORY[0x1EEE9AC00](v48);
  v18 = &v39 - v17;
  v54 = type metadata accessor for StoreModifier(0);
  v19 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v21 = (&v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v39 - v24;
  v26 = *(a2 + 16);
  result = MEMORY[0x1B2728D70](v26, v23);
  v53 = v26;
  if (v26)
  {
    v28 = 0;
    v52 = a2 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v51 = *(v19 + 72);
    v47 += 6;
    v41 = (v44 + 48);
    v44 = v11;
    v45 = v10;
    do
    {
      sub_1B0D4B0D0(v52 + v51 * v28, v25, type metadata accessor for StoreModifier);
      sub_1B0D4B0D0(v25, v21, type metadata accessor for StoreModifier);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1B03C60A4(v21, v18, &qword_1EB6E6F58, &unk_1B0EF5150);
        MEMORY[0x1B2728D70](1);
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        v30 = v49;
        sub_1B03B5C80(&v18[*(v48 + 52)], v49, &qword_1EB6E6440, &unk_1B0EF3530);
        if ((*v47)(v30, 1, v11) == 1)
        {
          sub_1B0E46C68();
        }

        else
        {
          v31 = v50;
          sub_1B0D4B068(v30, v50, type metadata accessor for ParameterValue);
          sub_1B0E46C68();
          v32 = v46;
          sub_1B0D4B0D0(v31, v46, type metadata accessor for ParameterValue);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v33 = *v32;
            MEMORY[0x1B2728D70](1);
            MEMORY[0x1B2728D70](*(v33 + 16));
            v34 = *(v33 + 16);
            if (v34)
            {
              v35 = v33 + 40;
              do
              {
                _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

                v35 += 16;
                --v34;
              }

              while (v34);
            }

            sub_1B0D4B138(v50, type metadata accessor for ParameterValue);
            v11 = v44;
            v10 = v45;
          }

          else
          {
            sub_1B03C60A4(v32, v10, &qword_1EB6E4050, &unk_1B0EC2B20);
            MEMORY[0x1B2728D70](0);
            v36 = v42;
            sub_1B03B5C80(v10, v42, &qword_1EB6E4050, &unk_1B0EC2B20);
            if ((*v41)(v36, 1, v43) == 1)
            {
              MEMORY[0x1B2728D70](1);
            }

            else
            {
              v37 = v40;
              sub_1B03C60A4(v36, v40, &qword_1EB6E4040, &qword_1B0EC2B10);
              MEMORY[0x1B2728D70](0);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
              sub_1B0B0D328();
              sub_1B0E447C8();
              v38 = v37;
              v11 = v44;
              v10 = v45;
              sub_1B0398EFC(v38, &qword_1EB6E4040, &qword_1B0EC2B10);
            }

            sub_1B0398EFC(v10, &qword_1EB6E4050, &unk_1B0EC2B20);
            sub_1B0D4B138(v50, type metadata accessor for ParameterValue);
          }
        }

        sub_1B0D4B138(v25, type metadata accessor for StoreModifier);
        result = sub_1B0398EFC(v18, &qword_1EB6E6F58, &unk_1B0EF5150);
      }

      else
      {
        v29 = *v21;
        MEMORY[0x1B2728D70](0);
        MEMORY[0x1B2728DB0](v29);
        result = sub_1B0D4B138(v25, type metadata accessor for StoreModifier);
      }

      ++v28;
    }

    while (v28 != v53);
  }

  return result;
}

uint64_t sub_1B0D46218(uint64_t a1, uint64_t a2)
{
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4040, &qword_1B0EC2B10);
  v3 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v46 = v45 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4050, &unk_1B0EC2B20);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v48 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v50 = v45 - v8;
  v57 = type metadata accessor for ParameterValue(0);
  v59 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v52 = (v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v56 = v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6440, &unk_1B0EF3530);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v55 = v45 - v13;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F58, &unk_1B0EF5150);
  MEMORY[0x1EEE9AC00](v54);
  v15 = v45 - v14;
  Modifier = type metadata accessor for FetchModifier(0);
  v17 = *(Modifier - 8);
  MEMORY[0x1EEE9AC00](Modifier);
  v19 = v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = v45 - v22;
  v24 = *(a2 + 16);
  result = MEMORY[0x1B2728D70](v24, v21);
  if (v24)
  {
    v26 = v3;
    v27 = 0;
    v61 = a2 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v28 = *(v17 + 72);
    v53 = (v59 + 48);
    v47 = (v26 + 48);
    v29 = &unk_1B0EC2B20;
    v58 = Modifier;
    v59 = v24;
    v60 = v28;
    v51 = v15;
    do
    {
      sub_1B0D4B0D0(v61 + v60 * v27, v23, type metadata accessor for FetchModifier);
      sub_1B0D4B0D0(v23, v19, type metadata accessor for FetchModifier);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload != 1)
        {
          sub_1B03C60A4(v19, v15, &qword_1EB6E6F58, &unk_1B0EF5150);
          MEMORY[0x1B2728D70](2);
          _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
          v33 = v55;
          sub_1B03B5C80(&v15[*(v54 + 52)], v55, &qword_1EB6E6440, &unk_1B0EF3530);
          if ((*v53)(v33, 1, v57) == 1)
          {
            sub_1B0E46C68();
          }

          else
          {
            v34 = v56;
            sub_1B0D4B068(v33, v56, type metadata accessor for ParameterValue);
            sub_1B0E46C68();
            v35 = v52;
            sub_1B0D4B0D0(v34, v52, type metadata accessor for ParameterValue);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              v36 = *v35;
              MEMORY[0x1B2728D70](1);
              MEMORY[0x1B2728D70](*(v36 + 16));
              v37 = *(v36 + 16);
              if (v37)
              {
                v38 = v36 + 40;
                do
                {
                  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

                  v38 += 16;
                  --v37;
                }

                while (v37);
              }

              sub_1B0D4B138(v56, type metadata accessor for ParameterValue);
              v24 = v59;
            }

            else
            {
              v39 = v29;
              v40 = v50;
              sub_1B03C60A4(v35, v50, &qword_1EB6E4050, v39);
              MEMORY[0x1B2728D70](0);
              v41 = v48;
              sub_1B03B5C80(v40, v48, &qword_1EB6E4050, v39);
              v42 = (*v47)(v41, 1, v49);
              v24 = v59;
              if (v42 == 1)
              {
                MEMORY[0x1B2728D70](1);
                v43 = v40;
              }

              else
              {
                v44 = v46;
                sub_1B03C60A4(v41, v46, &qword_1EB6E4040, &qword_1B0EC2B10);
                MEMORY[0x1B2728D70](0);
                v45[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
                sub_1B0B0D328();
                sub_1B0E447C8();
                sub_1B0398EFC(v44, &qword_1EB6E4040, &qword_1B0EC2B10);
                v43 = v50;
              }

              sub_1B0398EFC(v43, &qword_1EB6E4050, v39);
              sub_1B0D4B138(v56, type metadata accessor for ParameterValue);
              v29 = v39;
            }

            v15 = v51;
          }

          sub_1B0D4B138(v23, type metadata accessor for FetchModifier);
          result = sub_1B0398EFC(v15, &qword_1EB6E6F58, &unk_1B0EF5150);
          goto LABEL_5;
        }

        v32 = v19[8];
        MEMORY[0x1B2728D70](1);
        MEMORY[0x1B2728D70](v32);
        v24 = v59;
        sub_1B0E46C88();
        sub_1B0E46C88();
      }

      else
      {
        v30 = *v19;
        MEMORY[0x1B2728D70](0);
        MEMORY[0x1B2728DB0](v30);
      }

      result = sub_1B0D4B138(v23, type metadata accessor for FetchModifier);
LABEL_5:
      ++v27;
    }

    while (v27 != v24);
  }

  return result;
}

uint64_t sub_1B0D46950(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x1B2728D70](v4);
  if (v4)
  {
    v6 = (a2 + 32);
    do
    {
      v8 = v6[1];
      v20 = *v6;
      v21 = v8;
      v9 = v6[3];
      v22 = v6[2];
      v23 = v9;
      v10 = v22;
      if (v22 == 254)
      {
        v7 = 2;
      }

      else
      {
        if (v22 != 255)
        {
          v11 = *(&v22 + 1);
          v12 = *(&v23 + 1);
          MEMORY[0x1B2728D70](1);
          if (v10)
          {
            MEMORY[0x1B2728D70](1);
            v13 = v11;
            v14 = *(&v22 + 1);
            v16 = *(&v23 + 1);
            v15 = v23;
            sub_1B0D4B028(v20, *(&v20 + 1), v21, *(&v21 + 1), v22 & 1);
            v17 = v15;
            v11 = v13;
            sub_1B0D3CB80(v14, v17, v16);
            _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
          }

          else
          {
            MEMORY[0x1B2728D70](0);
            v18 = *(&v22 + 1);
            v19 = v23;
            sub_1B0D4B028(v20, *(&v20 + 1), v21, *(&v21 + 1), v22 & 1);
            sub_1B0D3CB80(v18, v19, *(&v19 + 1));
          }

          _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
          if (HIBYTE(v12) == 255)
          {
            sub_1B0E46C68();
          }

          else
          {
            sub_1B0E46C68();
            if ((v12 & 0x100000000000000) != 0)
            {
              MEMORY[0x1B2728D70](1);
              sub_1B0D46B40(a1, v11);
            }

            else
            {
              MEMORY[0x1B2728D70](0);
              swift_beginAccess();
              sub_1B0E46C38();
            }
          }

          result = sub_1B0D3CCE0(&v20);
          goto LABEL_5;
        }

        v7 = 0;
      }

      result = MEMORY[0x1B2728D70](v7);
LABEL_5:
      v6 += 4;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_1B0D46B40(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x1B2728D70](v4);
  if (v4)
  {
    v6 = (a2 + 55);
    do
    {
      v7 = *(v6 - 23);
      v8 = *(v6 - 15);
      v9 = *(v6 - 7) | ((*(v6 - 3) | (*(v6 - 1) << 16)) << 32);
      if (*v6)
      {
        MEMORY[0x1B2728D70](1);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0D46B40(a1, v7);
        result = sub_1B0D3C8FC(v7, v8, v9, 1);
      }

      else
      {
        MEMORY[0x1B2728D70](0);
        swift_beginAccess();
        result = sub_1B0E46C38();
      }

      v6 += 24;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_1B0D46C34(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x1B2728D70](v4);
  v28 = v4;
  if (v4)
  {
    v6 = 0;
    v27 = a2 + 32;
    do
    {
      v7 = (v27 + (v6 << 6));
      v8 = v7[1];
      v29 = *v7;
      v30 = v8;
      v9 = v7[3];
      v31 = v7[2];
      v32 = v9;
      v10 = v29;
      v11 = *(&v31 + 5) | (BYTE7(v31) << 16);
      if (v11 >> 22)
      {
        v12 = v31;
        v13 = *(&v32 + 1);
        if (v11 >> 22 != 1)
        {
          v17 = v31 | ((*(&v31 + 1) | ((*&v11 & 0xFFFFFFLL) << 32)) << 8);
          v18 = *(&v31 + 1) | v32 | *(&v32 + 1);
          if (v17 == 0x8000000000000000 && (v30 | *(&v29 + 1) | v29 | *(&v30 + 1) | v18) == 0)
          {
            result = MEMORY[0x1B2728D70](0);
          }

          else
          {
            if (v17 == 0x8000000000000000 && v29 == 1 && (v30 | *(&v29 + 1) | *(&v30 + 1) | v18) == 0)
            {
              v22 = 1;
            }

            else
            {
              v22 = 4;
            }

            result = MEMORY[0x1B2728D70](v22);
          }

          goto LABEL_4;
        }

        v26 = *(&v31 + 1);
        MEMORY[0x1B2728D70](3);
        if (v12)
        {
          MEMORY[0x1B2728D70](1);
          v14 = v32;
          v25 = *(&v31 + 1);
          sub_1B0D4B028(v29, *(&v29 + 1), v30, *(&v30 + 1), v31 & 1);
          sub_1B0D3CB80(v25, v14, *(&v14 + 1));
          _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        }

        else
        {
          MEMORY[0x1B2728D70](0);
          v23 = *(&v31 + 1);
          v24 = v32;
          sub_1B0D4B028(v29, *(&v29 + 1), v30, *(&v30 + 1), v31 & 1);
          sub_1B0D3CB80(v23, v24, *(&v24 + 1));
        }

        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        if (HIBYTE(v13) != 255)
        {
          sub_1B0E46C68();
          if ((v13 & 0x100000000000000) != 0)
          {
            MEMORY[0x1B2728D70](1);
            sub_1B0D46B40(a1, v26);
          }

          else
          {
            MEMORY[0x1B2728D70](0);
            swift_beginAccess();
            sub_1B0E46C38();
          }

LABEL_31:
          result = sub_1B0CF2314(&v29);
          goto LABEL_4;
        }

        sub_1B0E46C68();
        result = sub_1B0CF2314(&v29);
      }

      else
      {
        MEMORY[0x1B2728D70](2);
        result = MEMORY[0x1B2728D70](*(v10 + 16));
        v15 = *(v10 + 16);
        if (v15)
        {
          v16 = v10 + 32;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          do
          {
            ++v16;
            _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

            --v15;
          }

          while (v15);
          goto LABEL_31;
        }
      }

LABEL_4:
      ++v6;
    }

    while (v6 != v28);
  }

  return result;
}

uint64_t sub_1B0D4704C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x1B2728D70](v4);
  if (v4)
  {
    v6 = (a2 + 32);
    do
    {
      v8 = v6[1];
      v18 = *v6;
      v19 = v8;
      v9 = v6[3];
      v20 = v6[2];
      v21 = v9;
      v10 = v20;
      v11 = *(&v20 + 1);
      v12 = *(&v9 + 1);
      if (v20 > 0xFDu)
      {
        if (v20 == 254)
        {
          v7 = 1;
        }

        else
        {
          if (v20 != 255)
          {
LABEL_13:
            MEMORY[0x1B2728D70](4);
            if (v10)
            {
              MEMORY[0x1B2728D70](1);
              v16 = v21;
              v17 = *(&v20 + 1);
              v13 = *(&v21 + 1);
              sub_1B0D4B028(v18, *(&v18 + 1), v19, *(&v19 + 1), v20 & 1);
              sub_1B0D3CB80(v17, v16, v13);
              _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
            }

            else
            {
              MEMORY[0x1B2728D70](0);
              v14 = *(&v20 + 1);
              v15 = v21;
              sub_1B0D4B028(v18, *(&v18 + 1), v19, *(&v19 + 1), v20 & 1);
              sub_1B0D3CB80(v14, v15, *(&v15 + 1));
            }

            _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
            if (HIBYTE(v12) == 255)
            {
              sub_1B0E46C68();
            }

            else
            {
              sub_1B0E46C68();
              if ((v12 & 0x100000000000000) != 0)
              {
                MEMORY[0x1B2728D70](1);
                sub_1B0D46B40(a1, v11);
              }

              else
              {
                MEMORY[0x1B2728D70](0);
                swift_beginAccess();
                sub_1B0E46C38();
              }
            }

            result = sub_1B0D3CC0C(&v18);
            goto LABEL_5;
          }

          v7 = 0;
        }
      }

      else if (v20 == 252)
      {
        v7 = 3;
      }

      else
      {
        if (v20 != 253)
        {
          goto LABEL_13;
        }

        v7 = 2;
      }

      result = MEMORY[0x1B2728D70](v7);
LABEL_5:
      v6 += 4;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_1B0D47258(uint64_t a1, uint64_t a2)
{
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v3 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v73 = &v64 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EB0, &unk_1B0EC2010);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v72 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v71 = &v64 - v8;
  matched = type metadata accessor for SequenceMatchData(0);
  v88 = *(matched - 8);
  v89 = matched;
  MEMORY[0x1EEE9AC00](matched);
  v11 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E70A8, &unk_1B0EFCDB0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v86 = &v64 - v13;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v87 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v70 = &v64 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v84 = &v64 - v16;
  v91 = type metadata accessor for QResyncParameter(0);
  MEMORY[0x1EEE9AC00](v91);
  v92 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4040, &qword_1B0EC2B10);
  v65 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v64 = &v64 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4050, &unk_1B0EC2B20);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v67 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v66 = &v64 - v22;
  v83 = type metadata accessor for ParameterValue(0);
  v74 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v69 = (&v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v24);
  v82 = &v64 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6440, &unk_1B0EF3530);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v81 = &v64 - v27;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F58, &unk_1B0EF5150);
  MEMORY[0x1EEE9AC00](v80);
  v90 = &v64 - v28;
  v29 = type metadata accessor for SelectParameter(0);
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v64 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v33);
  v36 = &v64 - v35;
  v37 = *(a2 + 16);
  result = MEMORY[0x1B2728D70](v37, v34);
  v94 = v37;
  if (v37)
  {
    v39 = 0;
    v93 = a2 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
    v40 = *(v30 + 72);
    v76 = (v88 + 48);
    v77 = (v87 + 48);
    v74 += 6;
    v75 = (v3 + 48);
    v65 += 6;
    v87 = v11;
    v88 = v40;
    v78 = v29;
    do
    {
      sub_1B0D4B0D0(v93 + v40 * v39, v36, type metadata accessor for SelectParameter);
      sub_1B0D4B0D0(v36, v32, type metadata accessor for SelectParameter);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (!EnumCaseMultiPayload)
      {
        v44 = v11;
        v45 = v90;
        sub_1B03C60A4(v32, v90, &qword_1EB6E6F58, &unk_1B0EF5150);
        MEMORY[0x1B2728D70](0);
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        v46 = v81;
        sub_1B03B5C80(v45 + *(v80 + 52), v81, &qword_1EB6E6440, &unk_1B0EF3530);
        if ((*v74)(v46, 1, v83) == 1)
        {
          sub_1B0E46C68();
          v11 = v44;
        }

        else
        {
          v53 = v82;
          sub_1B0D4B068(v46, v82, type metadata accessor for ParameterValue);
          sub_1B0E46C68();
          v54 = v69;
          sub_1B0D4B0D0(v53, v69, type metadata accessor for ParameterValue);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v55 = *v54;
            MEMORY[0x1B2728D70](1);
            MEMORY[0x1B2728D70](*(v55 + 16));
            v56 = *(v55 + 16);
            if (v56)
            {
              v57 = v55 + 40;
              do
              {
                _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

                v57 += 16;
                --v56;
              }

              while (v56);
            }

            sub_1B0D4B138(v82, type metadata accessor for ParameterValue);
            v11 = v87;
          }

          else
          {
            v61 = v66;
            sub_1B03C60A4(v54, v66, &qword_1EB6E4050, &unk_1B0EC2B20);
            MEMORY[0x1B2728D70](0);
            v62 = v67;
            sub_1B03B5C80(v61, v67, &qword_1EB6E4050, &unk_1B0EC2B20);
            if ((*v65)(v62, 1, v68) == 1)
            {
              MEMORY[0x1B2728D70](1);
            }

            else
            {
              v63 = v64;
              sub_1B03C60A4(v62, v64, &qword_1EB6E4040, &qword_1B0EC2B10);
              MEMORY[0x1B2728D70](0);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
              sub_1B0B0D328();
              sub_1B0E447C8();
              sub_1B0398EFC(v63, &qword_1EB6E4040, &qword_1B0EC2B10);
            }

            sub_1B0398EFC(v61, &qword_1EB6E4050, &unk_1B0EC2B20);
            sub_1B0D4B138(v82, type metadata accessor for ParameterValue);
            v11 = v44;
          }

          v40 = v88;
        }

        sub_1B0D4B138(v36, type metadata accessor for SelectParameter);
        result = sub_1B0398EFC(v90, &qword_1EB6E6F58, &unk_1B0EF5150);
        goto LABEL_5;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v42 = v92;
        sub_1B0D4B068(v32, v92, type metadata accessor for QResyncParameter);
        MEMORY[0x1B2728D70](1);
        sub_1B0E46C88();
        MEMORY[0x1B2728DB0](*(v42 + 8));
        v43 = v84;
        sub_1B03B5C80(v42 + *(v91 + 24), v84, &qword_1EB6E3920, &qword_1B0E9B070);
        if ((*v77)(v43, 1, v85) == 1)
        {
          sub_1B0E46C68();
        }

        else
        {
          v47 = v70;
          sub_1B03C60A4(v43, v70, &unk_1EB6E1AF0, &unk_1B0E9AF40);
          sub_1B0E46C68();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
          sub_1B0B0D328();
          v11 = v87;
          sub_1B0E447C8();
          v48 = v47;
          v40 = v88;
          sub_1B0398EFC(v48, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        }

        v49 = v92;
        v50 = v86;
        sub_1B03B5C80(v92 + *(v91 + 28), v86, &qword_1EB6E70A8, &unk_1B0EFCDB0);
        if ((*v76)(v50, 1, v89) != 1)
        {
          sub_1B0D4B068(v50, v11, type metadata accessor for SequenceMatchData);
          sub_1B0E46C68();
          v51 = v71;
          sub_1B03B5C80(v11, v71, &qword_1EB6E3EB0, &unk_1B0EC2010);
          v52 = *v75;
          if ((*v75)(v51, 1, v79) == 1)
          {
            MEMORY[0x1B2728D70](1);
          }

          else
          {
            v58 = v73;
            sub_1B03C60A4(v51, v73, &unk_1EB6E26C0, &unk_1B0E9DE10);
            MEMORY[0x1B2728D70](0);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
            sub_1B0B0D328();
            v11 = v87;
            sub_1B0E447C8();
            sub_1B0398EFC(v58, &unk_1EB6E26C0, &unk_1B0E9DE10);
          }

          v59 = v72;
          sub_1B03B5C80(&v11[*(v89 + 20)], v72, &qword_1EB6E3EB0, &unk_1B0EC2010);
          if (v52(v59, 1, v79) == 1)
          {
            MEMORY[0x1B2728D70](1);
          }

          else
          {
            v60 = v73;
            sub_1B03C60A4(v59, v73, &unk_1EB6E26C0, &unk_1B0E9DE10);
            MEMORY[0x1B2728D70](0);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
            sub_1B0B0D328();
            v11 = v87;
            sub_1B0E447C8();
            sub_1B0398EFC(v60, &unk_1EB6E26C0, &unk_1B0E9DE10);
          }

          sub_1B0D4B138(v11, type metadata accessor for SequenceMatchData);
          sub_1B0D4B138(v92, type metadata accessor for QResyncParameter);
          result = sub_1B0D4B138(v36, type metadata accessor for SelectParameter);
          v40 = v88;
          goto LABEL_5;
        }

        sub_1B0E46C68();
        sub_1B0D4B138(v49, type metadata accessor for QResyncParameter);
      }

      else
      {
        MEMORY[0x1B2728D70](2);
      }

      result = sub_1B0D4B138(v36, type metadata accessor for SelectParameter);
LABEL_5:
      ++v39;
    }

    while (v39 != v94);
  }

  return result;
}

uint64_t sub_1B0D48094(uint64_t a1, uint64_t a2)
{
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4040, &qword_1B0EC2B10);
  v54 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v42 = &v42 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4050, &unk_1B0EC2B20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v45 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v44 = &v42 - v7;
  v8 = type metadata accessor for ParameterValue(0);
  v53 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v47 = (&v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v52 = &v42 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6440, &unk_1B0EF3530);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v42 - v13;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F58, &unk_1B0EF5150);
  MEMORY[0x1EEE9AC00](v51);
  v16 = &v42 - v15;
  Parameter = type metadata accessor for CreateParameter(0);
  v18 = *(Parameter - 8);
  MEMORY[0x1EEE9AC00](Parameter);
  v20 = (&v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v42 - v23;
  v56 = a2;
  v25 = *(a2 + 16);
  result = MEMORY[0x1B2728D70](v25, v22);
  v57 = v25;
  if (v25)
  {
    v27 = 0;
    v56 += (*(v18 + 80) + 32) & ~*(v18 + 80);
    v28 = *(v18 + 72);
    v48 = v8;
    v49 = (v53 + 48);
    v43 = (v54 + 6);
    v54 = v20;
    v55 = v28;
    v53 = v24;
    v50 = Parameter;
    do
    {
      sub_1B0D4B0D0(v56 + v55 * v27, v24, type metadata accessor for CreateParameter);
      sub_1B0D4B0D0(v24, v20, type metadata accessor for CreateParameter);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v29 = v16;
        v30 = v14;
        v31 = *v20;
        MEMORY[0x1B2728D70](1);
        MEMORY[0x1B2728D70](*(v31 + 16));
        v32 = *(v31 + 16);
        if (v32)
        {
          v33 = v31 + 40;
          do
          {
            sub_1B0E44B98();
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

            v33 += 16;
            --v32;
          }

          while (v32);
          v24 = v53;
          sub_1B0D4B138(v53, type metadata accessor for CreateParameter);

          v8 = v48;
          v14 = v30;
          v16 = v29;
          v20 = v54;
        }

        else
        {
          sub_1B0D4B138(v24, type metadata accessor for CreateParameter);

          v14 = v30;
          v16 = v29;
        }
      }

      else
      {
        sub_1B03C60A4(v20, v16, &qword_1EB6E6F58, &unk_1B0EF5150);
        MEMORY[0x1B2728D70](0);
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        sub_1B03B5C80(&v16[*(v51 + 52)], v14, &qword_1EB6E6440, &unk_1B0EF3530);
        if ((*v49)(v14, 1, v8) == 1)
        {
          sub_1B0E46C68();
        }

        else
        {
          v34 = v52;
          sub_1B0D4B068(v14, v52, type metadata accessor for ParameterValue);
          sub_1B0E46C68();
          v35 = v47;
          sub_1B0D4B0D0(v34, v47, type metadata accessor for ParameterValue);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v36 = *v35;
            MEMORY[0x1B2728D70](1);
            MEMORY[0x1B2728D70](*(v36 + 16));
            v37 = *(v36 + 16);
            if (v37)
            {
              v38 = v36 + 40;
              do
              {
                _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

                v38 += 16;
                --v37;
              }

              while (v37);
            }

            sub_1B0D4B138(v52, type metadata accessor for ParameterValue);
            v8 = v48;
            v24 = v53;
            v20 = v54;
          }

          else
          {
            v39 = v44;
            sub_1B03C60A4(v35, v44, &qword_1EB6E4050, &unk_1B0EC2B20);
            MEMORY[0x1B2728D70](0);
            v40 = v45;
            sub_1B03B5C80(v39, v45, &qword_1EB6E4050, &unk_1B0EC2B20);
            if ((*v43)(v40, 1, v46) == 1)
            {
              MEMORY[0x1B2728D70](1);
            }

            else
            {
              v41 = v42;
              sub_1B03C60A4(v40, v42, &qword_1EB6E4040, &qword_1B0EC2B10);
              MEMORY[0x1B2728D70](0);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
              sub_1B0B0D328();
              sub_1B0E447C8();
              sub_1B0398EFC(v41, &qword_1EB6E4040, &qword_1B0EC2B10);
            }

            sub_1B0398EFC(v39, &qword_1EB6E4050, &unk_1B0EC2B20);
            sub_1B0D4B138(v52, type metadata accessor for ParameterValue);
            v24 = v53;
            v20 = v54;
          }
        }

        sub_1B0D4B138(v24, type metadata accessor for CreateParameter);
        result = sub_1B0398EFC(v16, &qword_1EB6E6F58, &unk_1B0EF5150);
      }

      ++v27;
    }

    while (v27 != v57);
  }

  return result;
}

uint64_t sub_1B0D48858(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1B2728D70](v3);
  if (v3)
  {
    v5 = 0;
    v6 = a2 + 32;
    do
    {
      v7 = (v6 + 16 * v5);
      v8 = *v7;
      v9 = *(v7 + 8);
      if (v9 > 1)
      {
        if (v9 == 2)
        {
          MEMORY[0x1B2728D70](7);
          result = MEMORY[0x1B2728D70](*(v8 + 16));
          v13 = *(v8 + 16);
          if (v13)
          {
            v14 = (v8 + 40);
            do
            {
              v15 = *v14;
              v14 += 4;
              result = MEMORY[0x1B2728D70](v15 | (v15 << 32));
              --v13;
            }

            while (v13);
          }
        }

        else
        {
          result = MEMORY[0x1B2728D70](qword_1B0EEFD58[v8]);
        }
      }

      else if (v9)
      {
        MEMORY[0x1B2728D70](4);
        result = MEMORY[0x1B2728D70](*(v8 + 16));
        v16 = *(v8 + 16);
        if (v16)
        {
          v17 = (v8 + 40);
          do
          {
            v18 = *v17;
            v17 += 4;
            result = MEMORY[0x1B2728D70](v18 | (v18 << 32));
            --v16;
          }

          while (v16);
        }
      }

      else
      {
        MEMORY[0x1B2728D70](3);
        result = MEMORY[0x1B2728D70](*(v8 + 16));
        v10 = *(v8 + 16);
        if (v10)
        {
          v11 = (v8 + 40);
          do
          {
            v12 = *v11;
            v11 += 4;
            result = MEMORY[0x1B2728D70](v12 | (v12 << 32));
            --v10;
          }

          while (v10);
        }
      }

      ++v5;
    }

    while (v5 != v3);
  }

  return result;
}

void sub_1B0D48988(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  MEMORY[0x1B2728D70](v3);
  v14 = v3;
  if (v3)
  {
    v4 = 0;
    v13 = a2 + 32;
    while (1)
    {
      v5 = (v13 + (v4 << 6));
      v6 = v5[4];
      v17 = v5[7];
      v18 = v5[6];
      swift_beginAccess();
      sub_1B0E46C38();
      v15 = v4;
      sub_1B0E46C68();
      if (v6)
      {
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      }

      MEMORY[0x1B2728D70](*(v17 + 16));
      v7 = *(v17 + 16);

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      swift_retain_n();
      v16 = v7;
      if (v7)
      {
        break;
      }

LABEL_3:

      ++v4;
      if (v15 + 1 == v14)
      {
        return;
      }
    }

    v8 = 0;
    while (v8 < *(v18 + 16))
    {
      if (v8 >= *(v17 + 16))
      {
        goto LABEL_18;
      }

      v9 = *(v18 + 32 + 24 * v8);
      v10 = *(v17 + 32 + 8 * v8);

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      if (v9)
      {
        swift_beginAccess();
        sub_1B0E46C38();
        MEMORY[0x1B2728D70](*(v10 + 16));
        v11 = *(v10 + 16);
        if (v11)
        {
          v12 = v10 + 54;
          do
          {
            v12 += 24;
            swift_beginAccess();
            sub_1B0E46C38();
            --v11;
          }

          while (v11);
        }

        ++v8;

        if (v8 != v16)
        {
          continue;
        }
      }

      goto LABEL_3;
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }
}

uint64_t sub_1B0D48C38(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1B2728D70](v3);
  if (v3)
  {
    v5 = (a2 + 40);
    do
    {
      v6 = *v5;
      v5 += 2;
      if (v6)
      {
        MEMORY[0x1B2728D70](0);
        sub_1B0E44BB8();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      }

      else
      {
        result = MEMORY[0x1B2728D70](1);
      }

      --v3;
    }

    while (v3);
  }

  return result;
}

void sub_1B0D48CF0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  MEMORY[0x1B2728D70](v4);
  v86 = v4;
  if (!v4)
  {
    return;
  }

  v5 = 0;
  v85 = a2 + 32;
  while (1)
  {
    v87 = v5;
    v6 = (v85 + 184 * v5);
    v7 = v6[9];
    v8 = v6[7];
    v101 = v6[8];
    v102 = v7;
    v9 = v6[9];
    v103 = v6[10];
    v10 = v6[5];
    v11 = v6[3];
    v97 = v6[4];
    v98 = v10;
    v12 = v6[5];
    v13 = v6[7];
    v99 = v6[6];
    v100 = v13;
    v14 = v6[1];
    v93 = *v6;
    v94 = v14;
    v15 = v6[3];
    v17 = *v6;
    v16 = v6[1];
    v95 = v6[2];
    v96 = v15;
    v105[8] = v101;
    v105[9] = v9;
    v105[10] = v6[10];
    v105[4] = v97;
    v105[5] = v12;
    v105[6] = v99;
    v105[7] = v8;
    v105[0] = v17;
    v105[1] = v16;
    v104 = *(v6 + 176);
    v106 = *(v6 + 176);
    v105[2] = v95;
    v105[3] = v11;
    if (sub_1B0717014(v105) != 1)
    {
      break;
    }

    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    v19 = v18;
    __dst[8] = v101;
    __dst[9] = v102;
    __dst[10] = v103;
    LOBYTE(__dst[11]) = v104;
    __dst[4] = v97;
    __dst[5] = v98;
    __dst[6] = v99;
    __dst[7] = v100;
    __dst[0] = v93;
    __dst[1] = v94;
    __dst[2] = v95;
    __dst[3] = v96;
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    v21 = v20;
    MEMORY[0x1B2728D70](1);
    v22 = *v19;
    sub_1B07AD120(v21, v90);
    sub_1B0D48CF0(a1, v22);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    v23 = v19[4];
    if (!v23)
    {
      goto LABEL_3;
    }

    v24 = v19[5];
    v88 = v19[9];
    v77 = v19[10];
    v78 = v19[11];
    v76 = v19[13];
    v79 = v19[14];
    v81 = v19[7];
    sub_1B0E46C68();
    v25 = *(v24 + 16);
    MEMORY[0x1B2728D70](v25);

    if (v25)
    {
      v26 = 0;
      v27 = v24 + 40;
      v28 = v23 + 40;
      while (v26 < *(v23 + 16))
      {
        ++v26;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

        v27 += 16;
        v28 += 16;
        if (v25 == v26)
        {
          goto LABEL_11;
        }
      }

LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

LABEL_11:

    if (v81 == 1)
    {
      goto LABEL_3;
    }

    sub_1B0E46C68();
    if (v81)
    {
      sub_1B0E46C68();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      v29 = *(v77 + 16);
      MEMORY[0x1B2728D70](v29);

      if (v29)
      {
        v30 = 0;
        v31 = v77 + 40;
        v32 = v88 + 40;
        while (v30 < *(v88 + 16))
        {
          ++v30;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
          _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

          v31 += 16;
          v32 += 16;
          if (v29 == v30)
          {
            goto LABEL_17;
          }
        }

        goto LABEL_84;
      }

LABEL_17:

      v33 = v78;
      v34 = v79;
      if (!v78)
      {
        goto LABEL_3;
      }
    }

    else
    {
      sub_1B0E46C68();
      v33 = v78;
      v34 = v79;
      if (!v78)
      {
        goto LABEL_3;
      }
    }

    sub_1B0E46C68();
    MEMORY[0x1B2728D70](*(v33 + 16));
    v66 = *(v33 + 16);
    if (v66)
    {
      v67 = v33 + 40;
      do
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

        v67 += 16;
        --v66;
      }

      while (v66);
    }

    if (v34)
    {
      sub_1B0E46C68();
      sub_1B0E46C68();
      if (v76)
      {
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      }

      MEMORY[0x1B2728D70](*(v34 + 16));
      v70 = *(v34 + 16);
      if (v70)
      {
        v71 = (v34 + 55);
        do
        {
          v72 = *(v71 - 23);
          if (*v71)
          {
            MEMORY[0x1B2728D70](1);
            MEMORY[0x1B2728D70](v72);
          }

          else
          {
            MEMORY[0x1B2728D70](0);
            sub_1B0E46C68();
            if (v72)
            {
              swift_beginAccess();
              sub_1B0E46C38();
            }
          }

          v71 += 24;
          --v70;
        }

        while (v70);
      }

      goto LABEL_4;
    }

LABEL_3:
    sub_1B0E46C68();
LABEL_4:
    sub_1B075E648(&v93);
    v5 = v87 + 1;
    if (v87 + 1 == v86)
    {
      return;
    }
  }

  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
  v36 = v35;
  MEMORY[0x1B2728D70](0);
  v37 = *v36 >> 62;
  if (!v37)
  {
    MEMORY[0x1B2728D70](0);
    sub_1B07169CC(&v93, __dst);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

LABEL_25:

    goto LABEL_28;
  }

  if (v37 != 1)
  {
    v43 = *((*v36 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    MEMORY[0x1B2728D70](2);
    sub_1B07169CC(&v93, __dst);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    MEMORY[0x1B2728D70](v43);
    goto LABEL_25;
  }

  memcpy(__dst, ((*v36 & 0x3FFFFFFFFFFFFFFFLL) + 16), 0x148uLL);
  MEMORY[0x1B2728D70](1);
  sub_1B07169CC(&v93, v90);
  sub_1B0C6700C(__dst, v90);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v128 = __dst[5];
  v129 = __dst[6];
  v130 = __dst[7];
  v131 = *&__dst[8];
  v124 = __dst[1];
  v125 = __dst[2];
  v126 = __dst[3];
  v127 = __dst[4];
  Envelope.hash(into:)(a1);
  v90[8] = *(&__dst[16] + 8);
  v90[9] = *(&__dst[17] + 8);
  v90[10] = *(&__dst[18] + 8);
  v91 = BYTE8(__dst[19]);
  v90[4] = *(&__dst[12] + 8);
  v90[5] = *(&__dst[13] + 8);
  v90[6] = *(&__dst[14] + 8);
  v90[7] = *(&__dst[15] + 8);
  v90[0] = *(&__dst[8] + 8);
  v90[1] = *(&__dst[9] + 8);
  v90[2] = *(&__dst[10] + 8);
  v90[3] = *(&__dst[11] + 8);
  if (sub_1B0717014(v90) == 1)
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    v39 = v38;
    MEMORY[0x1B2728D70](1);
    sub_1B0D48CF0(a1, *v39);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    v40 = *(v39 + 72);
    v120 = *(v39 + 56);
    v121 = v40;
    v41 = *(v39 + 104);
    v122 = *(v39 + 88);
    v123 = v41;
    v42 = *(v39 + 40);
    v118 = *(v39 + 24);
    v119 = v42;
    sub_1B0D49DD8(a1);
  }

  else
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    v45 = v44;
    MEMORY[0x1B2728D70](0);
    BodyStructure.Singlepart.Kind.hash(into:)(a1, *v45);
    v46 = *(v45 + 24);
    v47 = *(v45 + 56);
    v115 = *(v45 + 40);
    v116 = v47;
    v117 = *(v45 + 72);
    v48 = *(v45 + 8);
    v114 = v46;
    v113 = v48;
    BodyStructure.Fields.hash(into:)(a1);
    v49 = *(v45 + 136);
    v109 = *(v45 + 120);
    v110 = v49;
    v111 = *(v45 + 152);
    v112 = *(v45 + 168);
    v50 = *(v45 + 104);
    v107 = *(v45 + 88);
    v108 = v50;
    sub_1B0D4A1BC(a1);
  }

  MEMORY[0x1B2728D70](*&__dst[20]);
  sub_1B0C67068(__dst);
LABEL_28:
  v52 = v36[2];
  v51 = v36[3];
  v83 = v36;
  v53 = *(v51 + 16);
  MEMORY[0x1B2728D70](v53);

  if (v53)
  {
    v54 = 0;
    v55 = v51 + 40;
    v56 = v52 + 40;
    while (v54 < *(v52 + 16))
    {
      ++v54;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      v55 += 16;
      v56 += 16;
      if (v53 == v54)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
    goto LABEL_83;
  }

LABEL_32:

  if (v83[5])
  {
    sub_1B0E46C68();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    if (v83[7])
    {
      goto LABEL_34;
    }

LABEL_37:
    sub_1B0E46C68();
    if (v83[9])
    {
      goto LABEL_35;
    }

    goto LABEL_38;
  }

  sub_1B0E46C68();
  if (!v83[7])
  {
    goto LABEL_37;
  }

LABEL_34:
  sub_1B0E46C68();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  if (v83[9])
  {
LABEL_35:
    sub_1B0E46C68();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    goto LABEL_39;
  }

LABEL_38:
  sub_1B0E46C68();
LABEL_39:
  MEMORY[0x1B2728D70](v83[10]);
  v57 = v83[12];
  if (v57 == 1)
  {
    goto LABEL_3;
  }

  v58 = v83[14];
  v59 = v83[16];
  v89 = v83[17];
  v60 = v83[21];
  v80 = v83[20];
  v82 = v83[18];
  sub_1B0E46C68();
  if (v57)
  {
    sub_1B0E46C68();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    if (v58 == 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1B0E46C68();
    if (v58 == 1)
    {
      goto LABEL_3;
    }
  }

  sub_1B0E46C68();
  if (!v58)
  {
    sub_1B0E46C68();
    v65 = v82;
    if (v82)
    {
LABEL_59:
      sub_1B0E46C68();
      MEMORY[0x1B2728D70](*(v65 + 16));
      v68 = *(v65 + 16);
      if (v68)
      {
        v69 = v65 + 40;
        do
        {
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

          v69 += 16;
          --v68;
        }

        while (v68);
      }

      if (v60)
      {
        sub_1B0E46C68();
        sub_1B0E46C68();
        if (v80)
        {
          _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        }

        MEMORY[0x1B2728D70](*(v60 + 16));
        v73 = *(v60 + 16);
        if (v73)
        {
          v74 = (v60 + 55);
          do
          {
            v75 = *(v74 - 23);
            if (*v74)
            {
              MEMORY[0x1B2728D70](1);
              MEMORY[0x1B2728D70](v75);
            }

            else
            {
              MEMORY[0x1B2728D70](0);
              sub_1B0E46C68();
              if (v75)
              {
                swift_beginAccess();
                sub_1B0E46C38();
              }
            }

            v74 += 24;
            --v73;
          }

          while (v73);
        }

        goto LABEL_4;
      }

      goto LABEL_3;
    }

    goto LABEL_3;
  }

  v84 = v60;
  sub_1B0E46C68();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v61 = *(v89 + 16);
  MEMORY[0x1B2728D70](v61);

  if (!v61)
  {
LABEL_49:

    v60 = v84;
    v65 = v82;
    if (v82)
    {
      goto LABEL_59;
    }

    goto LABEL_3;
  }

  v62 = 0;
  v63 = v89 + 40;
  v64 = v59 + 40;
  while (v62 < *(v59 + 16))
  {
    ++v62;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    v63 += 16;
    v64 += 16;
    if (v61 == v62)
    {
      goto LABEL_49;
    }
  }

LABEL_85:
  __break(1u);
}

uint64_t sub_1B0D498DC(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (HIBYTE(a4) == 255)
  {
    return sub_1B0E46C68();
  }

  sub_1B0E46C68();
  if ((a4 & 0x100000000000000) != 0)
  {
    MEMORY[0x1B2728D70](1);

    return sub_1B0D46B40(a1, a2);
  }

  else
  {
    MEMORY[0x1B2728D70](0);
    swift_beginAccess();
    return sub_1B0E46C38();
  }
}

uint64_t sub_1B0D499AC(uint64_t a1)
{
  v25 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v24 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EB0, &unk_1B0EC2010);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v23 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  matched = type metadata accessor for SequenceMatchData(0);
  v11 = *(matched - 8);
  MEMORY[0x1EEE9AC00](matched);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E70A8, &unk_1B0EFCDB0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v22 - v15;
  sub_1B03B5C80(v1, &v22 - v15, &qword_1EB6E70A8, &unk_1B0EFCDB0);
  if ((*(v11 + 48))(v16, 1, matched) == 1)
  {
    return sub_1B0E46C68();
  }

  sub_1B0D4B068(v16, v13, type metadata accessor for SequenceMatchData);
  sub_1B0E46C68();
  sub_1B03B5C80(v13, v9, &qword_1EB6E3EB0, &unk_1B0EC2010);
  v18 = *(v3 + 48);
  if (v18(v9, 1, v2) == 1)
  {
    MEMORY[0x1B2728D70](1);
  }

  else
  {
    v19 = v24;
    sub_1B03C60A4(v9, v24, &unk_1EB6E26C0, &unk_1B0E9DE10);
    MEMORY[0x1B2728D70](0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
    sub_1B0B0D328();
    sub_1B0E447C8();
    sub_1B0398EFC(v19, &unk_1EB6E26C0, &unk_1B0E9DE10);
  }

  v20 = v23;
  sub_1B03B5C80(&v13[*(matched + 20)], v23, &qword_1EB6E3EB0, &unk_1B0EC2010);
  if (v18(v20, 1, v2) == 1)
  {
    MEMORY[0x1B2728D70](1);
  }

  else
  {
    v21 = v24;
    sub_1B03C60A4(v20, v24, &unk_1EB6E26C0, &unk_1B0E9DE10);
    MEMORY[0x1B2728D70](0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
    sub_1B0B0D328();
    sub_1B0E447C8();
    sub_1B0398EFC(v21, &unk_1EB6E26C0, &unk_1B0E9DE10);
  }

  return sub_1B0D4B138(v13, type metadata accessor for SequenceMatchData);
}

uint64_t sub_1B0D49DD8(uint64_t a1)
{
  v3 = v1[1];
  if (!v3)
  {
    return sub_1B0E46C68();
  }

  v4 = v1[2];
  v20 = v1[6];
  v14 = v1[7];
  v18 = v1[8];
  v19 = v1[4];
  v16 = v1[10];
  v17 = v1[9];
  v15 = v1[11];
  sub_1B0E46C68();
  v5 = *(v4 + 16);
  MEMORY[0x1B2728D70](v5);

  if (v5)
  {
    v7 = 0;
    v8 = v4 + 40;
    v9 = v3 + 40;
    while (v7 < *(v3 + 16))
    {
      ++v7;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      v8 += 16;
      v9 += 16;
      if (v5 == v7)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

LABEL_6:

  if (v19 == 1)
  {
    return sub_1B0E46C68();
  }

  sub_1B0E46C68();
  if (v19)
  {
    sub_1B0E46C68();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    v10 = *(v14 + 16);
    MEMORY[0x1B2728D70](v10);

    if (v10)
    {
      v11 = 0;
      v12 = v14 + 40;
      v13 = v20 + 40;
      while (v11 < *(v20 + 16))
      {
        ++v11;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

        v12 += 16;
        v13 += 16;
        if (v10 == v11)
        {
          goto LABEL_13;
        }
      }

LABEL_19:
      __break(1u);
      return result;
    }

LABEL_13:
  }

  else
  {
    sub_1B0E46C68();
  }

  return sub_1B0D4A030(a1, v18, v17, v16, v15);
}

uint64_t sub_1B0D4A030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    return sub_1B0E46C68();
  }

  sub_1B0E46C68();
  v8 = *(a2 + 16);
  MEMORY[0x1B2728D70](v8);
  if (v8)
  {
    v9 = a2 + 40;
    do
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      v9 += 16;
      --v8;
    }

    while (v8);
  }

  if (!a5)
  {
    return sub_1B0E46C68();
  }

  sub_1B0E46C68();
  sub_1B0E46C68();
  if (a4)
  {
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  v11 = *(a5 + 16);
  result = MEMORY[0x1B2728D70](v11);
  if (v11)
  {
    v12 = (a5 + 55);
    do
    {
      v13 = *(v12 - 23);
      if (*v12)
      {
        MEMORY[0x1B2728D70](1);
        result = MEMORY[0x1B2728D70](v13);
      }

      else
      {
        MEMORY[0x1B2728D70](0);
        if (v13)
        {
          sub_1B0E46C68();
          swift_beginAccess();
          result = sub_1B0E46C38();
        }

        else
        {
          result = sub_1B0E46C68();
        }
      }

      v12 += 24;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t sub_1B0D4A1BC(uint64_t a1)
{
  v3 = v1[1];
  if (v3 == 1)
  {
    return sub_1B0E46C68();
  }

  v4 = v1[3];
  v5 = v1[5];
  v6 = v1[7];
  v7 = v1[8];
  v8 = v1[9];
  v17 = v1[10];
  v18 = v1[6];
  sub_1B0E46C68();
  if (v3)
  {
    sub_1B0E46C68();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    if (v4 == 1)
    {
      return sub_1B0E46C68();
    }
  }

  else
  {
    sub_1B0E46C68();
    if (v4 == 1)
    {
      return sub_1B0E46C68();
    }
  }

  sub_1B0E46C68();
  if (!v4)
  {
    sub_1B0E46C68();
    goto LABEL_13;
  }

  v14 = v8;
  v15 = v7;
  v16 = v6;
  sub_1B0E46C68();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v10 = *(v18 + 16);
  MEMORY[0x1B2728D70](v10);

  if (!v10)
  {
LABEL_11:

    v7 = v15;
    v6 = v16;
    v8 = v14;
LABEL_13:

    return sub_1B0D4A030(a1, v6, v7, v8, v17);
  }

  v11 = 0;
  v12 = v18 + 40;
  v13 = v5 + 40;
  while (v11 < *(v5 + 16))
  {
    ++v11;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    v12 += 16;
    v13 += 16;
    if (v10 == v11)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

BOOL _s12NIOIMAPCore213BodyStructureO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 144);
  v80[8] = *(a1 + 128);
  v80[9] = v3;
  v80[10] = *(a1 + 160);
  v81 = *(a1 + 176);
  v4 = *(a1 + 80);
  v80[4] = *(a1 + 64);
  v80[5] = v4;
  v5 = *(a1 + 112);
  v80[6] = *(a1 + 96);
  v80[7] = v5;
  v6 = *(a1 + 16);
  v80[0] = *a1;
  v80[1] = v6;
  v7 = *(a1 + 48);
  v80[2] = *(a1 + 32);
  v80[3] = v7;
  if (sub_1B0717014(v80) != 1)
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    v69 = v29[7];
    v70 = v29[8];
    v71 = v29[9];
    v72 = v29[10];
    v65 = v29[3];
    v66 = v29[4];
    v67 = v29[5];
    v68 = v29[6];
    v62 = *v29;
    v63 = v29[1];
    v64 = v29[2];
    LOBYTE(v50) = *(a2 + 176);
    v30 = a2[10];
    v48 = a2[9];
    v49 = v30;
    v31 = a2[8];
    v46 = a2[7];
    v47 = v31;
    v32 = a2[6];
    v44 = a2[5];
    v45 = v32;
    v33 = a2[4];
    v42 = a2[3];
    v43 = v33;
    v34 = a2[2];
    v40 = a2[1];
    v41 = v34;
    v39 = *a2;
    if (sub_1B0717014(&v39) != 1)
    {
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
      v58 = v35[7];
      v59 = v35[8];
      v60 = v35[9];
      v61 = v35[10];
      v54 = v35[3];
      v55 = v35[4];
      v56 = v35[5];
      v57 = v35[6];
      v51 = *v35;
      v52 = v35[1];
      v53 = v35[2];
      return static BodyStructure.Singlepart.__derived_struct_equals(_:_:)(&v62, &v51);
    }

    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    return 0;
  }

  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
  v10 = *v8;
  v9 = *(v8 + 8);
  v11 = *(v8 + 16);
  v12 = *(v8 + 72);
  v84 = *(v8 + 56);
  v85 = v12;
  v13 = *(v8 + 104);
  v86 = *(v8 + 88);
  v87 = v13;
  v14 = *(v8 + 40);
  v82 = *(v8 + 24);
  v83 = v14;
  v15 = a2[3];
  v64 = a2[2];
  v65 = v15;
  v16 = a2[9];
  v70 = a2[8];
  v71 = v16;
  v72 = a2[10];
  v73 = *(a2 + 176);
  v17 = a2[7];
  v68 = a2[6];
  v69 = v17;
  v18 = a2[5];
  v66 = a2[4];
  v67 = v18;
  v19 = a2[1];
  v62 = *a2;
  v63 = v19;
  if (sub_1B0717014(&v62) != 1)
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    return 0;
  }

  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
  v21 = *(v20 + 8);
  v22 = *(v20 + 16);
  v23 = *(v20 + 72);
  v76 = *(v20 + 56);
  v77 = v23;
  v24 = *(v20 + 104);
  v78 = *(v20 + 88);
  v79 = v24;
  v25 = *(v20 + 40);
  v74 = *(v20 + 24);
  v75 = v25;
  if ((sub_1B0D36050(v10) & 1) == 0 || (v9 != v21 || v11 != v22) && (sub_1B0E46A78() & 1) == 0)
  {
    return 0;
  }

  v88[2] = v84;
  v88[3] = v85;
  v88[4] = v86;
  v88[5] = v87;
  v88[0] = v82;
  v88[1] = v83;
  v89[2] = v76;
  v89[3] = v77;
  v89[4] = v78;
  v89[5] = v79;
  v89[0] = v74;
  v89[1] = v75;
  v26 = v82;
  if (!*(&v82 + 1))
  {
    if (!*(&v74 + 1))
    {
      v39 = v82;
      v42 = v85;
      v43 = v86;
      v44 = v87;
      v40 = v83;
      v41 = v84;
      sub_1B03B5C80(v88, &v51, &qword_1EB6E6F78, &qword_1B0EEEB20);
      sub_1B03B5C80(v89, &v51, &qword_1EB6E6F78, &qword_1B0EEEB20);
      sub_1B0398EFC(&v39, &qword_1EB6E6F78, &qword_1B0EEEB20);
      return 1;
    }

    goto LABEL_17;
  }

  if (!*(&v74 + 1))
  {
LABEL_17:
    *&v39 = *&v88[0];
    *(&v39 + 1) = *(&v82 + 1);
    v42 = v85;
    v43 = v86;
    v44 = v87;
    v40 = v83;
    v41 = v84;
    v45 = v74;
    v49 = v78;
    v50 = v79;
    v47 = v76;
    v48 = v77;
    v46 = v75;
    sub_1B03B5C80(v88, &v51, &qword_1EB6E6F78, &qword_1B0EEEB20);
    sub_1B03B5C80(v89, &v51, &qword_1EB6E6F78, &qword_1B0EEEB20);
    sub_1B0398EFC(&v39, &qword_1EB6E6F80, &qword_1B0EEEB28);
    return 0;
  }

  *&v37[0] = *&v89[0];
  *(&v37[0] + 1) = *(&v74 + 1);
  v37[3] = v77;
  v37[4] = v78;
  v37[5] = v79;
  v37[1] = v75;
  v37[2] = v76;
  v43 = v78;
  v44 = v79;
  v41 = v76;
  v42 = v77;
  v39 = v37[0];
  v40 = v75;
  v55 = v86;
  v56 = v87;
  v53 = v84;
  v54 = v85;
  v52 = v83;
  v51 = v82;
  sub_1B03B5C80(v88, v38, &qword_1EB6E6F78, &qword_1B0EEEB20);
  sub_1B03B5C80(v89, v38, &qword_1EB6E6F78, &qword_1B0EEEB20);
  v27 = _s12NIOIMAPCore213BodyStructureO9MultipartV9ExtensionV23__derived_struct_equalsySbAG_AGtFZ_0(&v51, &v39);
  sub_1B0398EFC(v37, &qword_1EB6E6F78, &qword_1B0EEEB20);
  v38[0] = v26;
  v38[3] = v85;
  v38[4] = v86;
  v38[5] = v87;
  v38[1] = v83;
  v38[2] = v84;
  sub_1B0398EFC(v38, &qword_1EB6E6F78, &qword_1B0EEEB20);
  return v27;
}

unint64_t sub_1B0D4A884()
{
  result = qword_1EB6E7028;
  if (!qword_1EB6E7028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7028);
  }

  return result;
}

unint64_t sub_1B0D4A8DC()
{
  result = qword_1EB6E7030;
  if (!qword_1EB6E7030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7030);
  }

  return result;
}

unint64_t sub_1B0D4A934()
{
  result = qword_1EB6E7038;
  if (!qword_1EB6E7038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7038);
  }

  return result;
}

unint64_t sub_1B0D4A9D0()
{
  result = qword_1EB6E7050;
  if (!qword_1EB6E7050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7050);
  }

  return result;
}

unint64_t sub_1B0D4AA28()
{
  result = qword_1EB6E7058;
  if (!qword_1EB6E7058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E7060, &qword_1B0EEF558);
    sub_1B0D4A9D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7058);
  }

  return result;
}

unint64_t sub_1B0D4AAB0()
{
  result = qword_1EB6E7068;
  if (!qword_1EB6E7068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7068);
  }

  return result;
}

uint64_t sub_1B0D4AB4C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E7048, &qword_1B0EEF550);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B0D4ABC8()
{
  result = qword_1EB6E7078;
  if (!qword_1EB6E7078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E7060, &qword_1B0EEF558);
    sub_1B0D4A934();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7078);
  }

  return result;
}

unint64_t sub_1B0D4AC50()
{
  result = qword_1EB6E7080;
  if (!qword_1EB6E7080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7080);
  }

  return result;
}

uint64_t sub_1B0D4AD74(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 177))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 176);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  if (v4 + 1 >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0D4ADBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 176) = 0;
    *(result + 144) = 0u;
    *(result + 160) = 0u;
    *(result + 112) = 0u;
    *(result + 128) = 0u;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 177) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 177) = 0;
    }

    if (a2)
    {
      *(result + 176) = ~a2;
    }
  }

  return result;
}

double sub_1B0D4AE1C(uint64_t a1, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *(a1 + 168) = 0;
    result = 0.0;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 176) = 0;
    *a1 = a2 - 255;
  }

  else if (a2)
  {
    *(a1 + 176) = -a2;
  }

  return result;
}

uint64_t sub_1B0D4AE84(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 177))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 176);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B0D4AECC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 168) = 0;
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
    *(result + 176) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 177) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 177) = 0;
    }

    if (a2)
    {
      *(result + 176) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B0D4AF5C(uint64_t result, uint64_t a2, unint64_t a3, __n128 a4)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;
  result = sub_1B0E44CF8();
  if (__OFSUB__(result, v4))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_1B0E44D28();

  return sub_1B0E44EE8();
}

double sub_1B0D4B028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v5 = vars8;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return result;
}

uint64_t sub_1B0D4B068(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0D4B0D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0D4B138(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t BodyExtension.hash(into:)(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x100000000000000) != 0)
  {
    MEMORY[0x1B2728D70](1, a2, a3);
    return MEMORY[0x1B2728D70](a2);
  }

  else
  {
    MEMORY[0x1B2728D70](0);
    if (a2)
    {
      sub_1B0E46C68();
      swift_beginAccess();
      return sub_1B0E46C38();
    }

    else
    {
      return sub_1B0E46C68();
    }
  }
}

uint64_t BodyExtension.hashValue.getter(uint64_t a1, unint64_t a2, unint64_t a3)
{
  sub_1B0E46C28();
  BodyExtension.hash(into:)(v7, a1, a2, a3 & 0xFFFFFFFFFFFFFFLL | ((HIBYTE(a3) & 1) << 56));
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D4B2DC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16) | ((*(v0 + 20) | (*(v0 + 22) << 16)) << 32);
  v4 = *(v0 + 23);
  sub_1B0E46C28();
  BodyExtension.hash(into:)(v6, v1, v2, v3 | (v4 << 56));
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D4B388(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16) | ((*(v1 + 20) | (*(v1 + 22) << 16)) << 32);
  v5 = *(v1 + 23);
  sub_1B0E46C28();
  BodyExtension.hash(into:)(v7, v2, v3, v4 | (v5 << 56));
  return sub_1B0E46CB8();
}

BOOL sub_1B0D4B460(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a3 & 0x100000000000000) != 0)
  {
    return HIBYTE(a6) & (a1 == a4);
  }

  if ((a6 & 0x100000000000000) != 0)
  {
    return 0;
  }

  if (a1)
  {
    if (a4)
    {
      sub_1B0D3CB74(a4, a5, a6, 0);
      sub_1B0D3CB74(a1, a2, a3, 0);
      v12 = sub_1B0C2DB54(a1, a2, a3 & 0xFFFFFFFFFFFFFFLL, a4, a5, a6 & 0xFFFFFFFFFFFFFFLL);
      sub_1B0D4B6AC(a4, a5, a6, 0);
      sub_1B0D4B6AC(a1, a2, a3, 0);
      return v12;
    }

LABEL_9:
    sub_1B0D3CB74(a4, a5, a6, 0);
    sub_1B0D3CB74(a1, a2, a3, 0);

    return 0;
  }

  if (a4)
  {
    goto LABEL_9;
  }

  return 1;
}

unint64_t sub_1B0D4B5A4()
{
  result = qword_1EB6E70B0;
  if (!qword_1EB6E70B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E70B0);
  }

  return result;
}

uint64_t sub_1B0D4B604(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 24))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 23);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B0D4B64C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 23) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B0D4B6AC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1B0D4B6B8(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (HIDWORD(a2) < a2)
  {
    __break(1u);
  }

  else if (a3 - (BYTE6(a3) | (WORD2(a3) << 8)) >= HIDWORD(a2))
  {
    v5[0] = result;
    v5[1] = a2;
    v6 = a3;
    v7 = WORD2(a3);
    v8 = BYTE6(a3);
    v9 = a2;
    v10 = HIDWORD(a2);

    sub_1B0DD5CEC(v5);
    v4 = v3;
    sub_1B04394F4(v5);
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t ByteBuffer.init(string:)(unint64_t a1, unint64_t a2)
{
  v2 = ByteBufferAllocator.buffer(string:)(a1, a2, j__malloc, j__realloc, sub_1B0B815B8, sub_1B0439080);

  return v2;
}

Swift::Int __swiftcall ByteBuffer.writeString(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = *(v1 + 12);
  result = sub_1B0CFC1B0(a1._countAndFlagsBits, a1._object, v1, v4);
  if (v6)
  {
    v7._countAndFlagsBits = countAndFlagsBits;
    v7._object = object;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = *(v1 + 12);
  v9 = __CFADD__(v8, result);
  v10 = v8 + result;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 12) = v10;
  }

  return result;
}

uint64_t ByteBuffer.writeBytes<A>(_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = ByteBuffer.setBytes<A>(_:at:)(a1, *(v3 + 12), a2, a3);
  v5 = *(v3 + 12);
  v6 = __CFADD__(v5, result);
  v7 = v5 + result;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 12) = v7;
  }

  return result;
}

Swift::OpaquePointer_optional __swiftcall ByteBuffer.getBytes(at:length:)(Swift::Int at, Swift::Int length)
{
  v6 = 0;
  if (at >= v3 && (length & 0x8000000000000000) == 0)
  {
    if ((HIDWORD(v3) - v3) - length >= at - v3)
    {
      v7 = at;
      v8 = v4;
      v9 = v2;
      swift_beginAccess();
      if (length)
      {
        v11 = length;
        v12 = *(v9 + 24);
        v13 = ((v8 >> 24) & 0xFFFF00 | BYTE6(v8)) + v7;
        v14 = v11;
        v15 = sub_1B03B7A3C(v11, 0);
        memcpy(v15 + 4, (v12 + v13), v14);
        v6 = v15;
      }

      else
      {
        v6 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v6 = 0;
    }
  }

  result.is_nil = length;
  result.value._rawValue = v6;
  return result;
}

Swift::OpaquePointer_optional __swiftcall ByteBuffer.readBytes(length:)(Swift::Int length)
{
  v2 = length;
  v3 = *(v1 + 8);
  result = ByteBuffer.getBytes(at:length:)(v3, length);
  if (result.value._rawValue)
  {
    if (__CFADD__(v3, v2))
    {
      __break(1u);
    }

    else
    {
      *(v1 + 8) = v3 + v2;
    }
  }

  return result;
}

void ByteBuffer.writeStaticString(_:)(const void *a1, uint64_t a2, uint64_t a3)
{
  ByteBuffer.setStaticString(_:at:)(a1, a2, a3, *(v3 + 12));
  v4 = *(v3 + 12);
  v6 = __CFADD__(v4, v5);
  v7 = v4 + v5;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 12) = v7;
  }
}

void ByteBuffer.setStaticString(_:at:)(const void *a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (!a1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = a4;
  v8 = a4 + a2;
  if (__CFADD__(a4, a2))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = *(v4 + 16);
    v10 = v8 >= v9;
    v11 = v8 - v9;
    if (v10)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = sub_1B03904C0();
    ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v12, v13 & 1);
  }

  if (a2 <= 0xFFFFFFFFLL)
  {
    ByteBuffer._ensureAvailableCapacity(_:at:)(a2, v6);
    ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)(a1, a1 + a2, v6);
    return;
  }

LABEL_14:
  __break(1u);
}

Swift::Int __swiftcall ByteBuffer.setString(_:at:)(Swift::String _, Swift::Int at)
{
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  result = sub_1B0CFC1B0(_._countAndFlagsBits, _._object, v2, at);
  if (v7)
  {
    v8 = countAndFlagsBits;
    v9 = object;

    return ByteBuffer._setStringSlowpath(_:at:)(*&v8, at);
  }

  return result;
}

Swift::Int __swiftcall ByteBuffer.writeNullTerminatedString(_:)(Swift::String a1)
{
  result = ByteBuffer.setNullTerminatedString(_:at:)(a1, *(v1 + 12));
  v3 = *(v1 + 12);
  v4 = __CFADD__(v3, result);
  v5 = v3 + result;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 12) = v5;
  }

  return result;
}

Swift::Int __swiftcall ByteBuffer.setNullTerminatedString(_:at:)(Swift::String _, Swift::Int at)
{
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  v19[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1B0CFC1B0(_._countAndFlagsBits, _._object, v2, at);
  if (v7)
  {
    v8._countAndFlagsBits = countAndFlagsBits;
    v8._object = object;
    v6 = ByteBuffer._setStringSlowpath(_:at:)(v8, at);
  }

  v9 = v6;
  v10 = v6 + at;
  v18 = 0;
  v11 = v6 + at + 1;
  if (v10 == -1)
  {
    __break(1u);
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = *(v2 + 16);
    v13 = v11 >= v12;
    v14 = v11 - v12;
    if (v13)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = sub_1B03904C0();
    ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v15, v16 & 1);
  }

  ByteBuffer._ensureAvailableCapacity(_:at:)(1u, v10);
  ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)(&v18, v19, v10);
  return v9 + 1;
}

Swift::Int __swiftcall ByteBuffer._setStringSlowpath(_:at:)(Swift::String _, Swift::Int at)
{
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  result = sub_1B0D4BCC4(_._countAndFlagsBits, _._object, v2, at);
  if (v7)
  {
    result = sub_1B0D4BDD0(countAndFlagsBits, object, v2, at);
    if ((result & 0x100000000) != 0)
    {
      LODWORD(result) = sub_1B0D4E9D0(countAndFlagsBits, object, at);
    }

    return result;
  }

  return result;
}

unint64_t sub_1B0D4BCC4(unint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = HIBYTE(a2);
  if ((a2 & 0x1000000000000000) != 0)
  {
    return 0;
  }

  v7 = result;
  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v7 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_1B0E46368();
    }

    if (v8)
    {
      v10 = v8 + v9;
    }

    else
    {
      v10 = 0;
    }

    ByteBuffer._setBytes(_:at:)(v8, v10, a4);
    return v11;
  }

  v12 = HIBYTE(a2) & 0xF;
  v19[0] = result;
  v19[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  v13 = a4 + v12;
  if (!__CFADD__(a4, v12))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = *(a3 + 16);
      v15 = v13 >= v14;
      v16 = v13 - v14;
      if (v15)
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }

      v18 = sub_1B03904C0();
      ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v17, v18 & 1);
    }

    ByteBuffer._ensureAvailableCapacity(_:at:)(v4 & 0xF, a4);
    ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)(v19, v19 + v12, a4);
    return v12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0D4BDD0(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    v19 = 0;
    return v19 | (((a2 >> 60) & 1) << 32);
  }

  v7 = result;
  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v7 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_1B0E46368();
    }

    if (v8)
    {
      v10 = v8 + v9;
    }

    else
    {
      v10 = 0;
    }

    ByteBuffer._setBytes(_:at:)(v8, v10, a4);
    LODWORD(v12) = v11;
LABEL_16:
    v19 = v12;
    return v19 | (((a2 >> 60) & 1) << 32);
  }

  v12 = HIBYTE(a2) & 0xF;
  v20[0] = result;
  v20[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  v13 = a4 + v12;
  if (!__CFADD__(a4, v12))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = *(a3 + 16);
      v15 = v13 >= v14;
      v16 = v13 - v14;
      if (v15)
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }

      v18 = sub_1B03904C0();
      ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v17, v18 & 1);
    }

    ByteBuffer._ensureAvailableCapacity(_:at:)(HIBYTE(a2) & 0xF, a4);
    ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)(v20, v20 + v12, a4);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

Swift::String_optional __swiftcall ByteBuffer.getString(at:length:)(Swift::Int at, Swift::Int length)
{
  v4 = 0;
  v5 = 0;
  if (at < v2 || length < 0)
  {
    goto LABEL_6;
  }

  if ((HIDWORD(v2) - v2) - length >= at - v2)
  {
    swift_beginAccess();
    v4 = sub_1B0E44C68();
    v5 = v7;
LABEL_6:
    v6 = v5;
    goto LABEL_7;
  }

  v4 = 0;
  v6 = 0;
LABEL_7:
  result.value._object = v6;
  result.value._countAndFlagsBits = v4;
  return result;
}

Swift::String_optional __swiftcall ByteBuffer.getNullTerminatedString(at:)(Swift::Int at)
{
  v2 = v1;
  v8 = ByteBuffer._getNullTerminatedStringLength(at:)(at);
  if (v8.is_nil)
  {
    goto LABEL_2;
  }

  value = v8.value;
  v4 = 0;
  v5 = 0;
  if (at >= v2 && (value & 0x8000000000000000) == 0)
  {
    if ((HIDWORD(v2) - v2) - value < at - v2)
    {
LABEL_2:
      v4 = 0;
      v5 = 0;
      goto LABEL_8;
    }

    swift_beginAccess();
    v4 = sub_1B0E44C68();
  }

LABEL_8:
  result.value._object = v5;
  result.value._countAndFlagsBits = v4;
  return result;
}

Swift::Int_optional __swiftcall ByteBuffer._getNullTerminatedStringLength(at:)(Swift::Int at)
{
  v4 = v1;
  v6 = 0;
  v7 = 1;
  if (v2 > at)
  {
    goto LABEL_18;
  }

  v8 = HIDWORD(v2);
  if (HIDWORD(v2) <= at)
  {
    goto LABEL_18;
  }

  v9 = (WORD2(v3) << 8) | BYTE6(v3);
  if ((v3 - v9) < v8)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v8 < v2 || (v10 = v8 - at, v8 < at))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v12[0] = v4;
  v12[1] = v2;
  v13 = v3;
  v14 = WORD2(v3);
  v15 = BYTE6(v3);
  v16 = at;
  v17 = HIDWORD(v2);
  v6 = swift_beginAccess();
  v11 = 0;
  while (*(*(v4 + 24) + v9 + at + v11))
  {
    if ((v10 & ~(v10 >> 63)) == v11)
    {
      __break(1u);
      goto LABEL_15;
    }

    if (v10 == ++v11)
    {

      sub_1B04394F4(v12);
      v6 = 0;
      v7 = 1;
      goto LABEL_18;
    }
  }

  v6 = sub_1B04394F4(v12);
  if (__OFADD__(v11, at))
  {
    goto LABEL_17;
  }

  v7 = 0;
  v6 = v11;
LABEL_18:
  result.value = v6;
  result.is_nil = v7;
  return result;
}

Swift::String_optional __swiftcall ByteBuffer.readString(length:)(Swift::Int length)
{
  if (length < 0 || (v2 = *(v1 + 8), (*(v1 + 12) - v2) < length))
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v5 = length;
    swift_beginAccess();
    v3 = sub_1B0E44C68();
    if (__CFADD__(v2, v5))
    {
      __break(1u);
    }

    else
    {
      *(v1 + 8) = v2 + v5;
    }
  }

  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

Swift::String_optional __swiftcall ByteBuffer.readNullTerminatedString()()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 12);
  v9 = ByteBuffer._getNullTerminatedStringLength(at:)(v1);
  if (!v9.is_nil)
  {
    value = v9.value;
    v3 = 0;
    if (value < 0)
    {
      v4 = 0;
      v7 = v1 + 1;
      if (v1 != -1)
      {
LABEL_8:
        if (v2 >= v7)
        {
          *(v0 + 8) = v7;
          goto LABEL_14;
        }

        goto LABEL_12;
      }
    }

    else
    {
      v4 = 0;
      if (value <= v2 - v1)
      {
        swift_beginAccess();
        v3 = sub_1B0E44C68();
        v6 = __CFADD__(v1, value);
        v1 += value;
        if (v6)
        {
LABEL_13:
          __break(1u);
          goto LABEL_14;
        }

        *(v0 + 8) = v1;
      }

      v7 = v1 + 1;
      if (v1 != -1)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v3 = 0;
  v4 = 0;
LABEL_14:
  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

unint64_t ByteBuffer.writeSubstring(_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v9 = *(v4 + 12);
  result = sub_1B0D4EEF4(a1, a2, a3, a4, v4, v9);
  if (v11)
  {
    v12 = MEMORY[0x1B2726D00](a1, a2, a3, a4);
    v14 = v13;
    v15 = sub_1B0CFC1B0(v12, v13, v4, v9);
    if (v16)
    {
      v17._countAndFlagsBits = v12;
      v17._object = v14;
      v15 = ByteBuffer._setStringSlowpath(_:at:)(v17, v9);
    }

    v18 = v15;

    result = v18;
  }

  v19 = *(v4 + 12);
  v20 = __CFADD__(v19, result);
  v21 = v19 + result;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 12) = v21;
  }

  return result;
}

unint64_t ByteBuffer.setSubstring(_:at:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  result = sub_1B0D4EEF4(a1, a2, a3, a4, v5, a5);
  if (v12)
  {
    v13 = MEMORY[0x1B2726D00](a1, a2, a3, a4);
    v15 = v14;
    v16 = sub_1B0CFC1B0(v13, v14, v5, a5);
    if (v17)
    {
      v18._countAndFlagsBits = v13;
      v18._object = v15;
      v16 = ByteBuffer._setStringSlowpath(_:at:)(v18, a5);
    }

    v19 = v16;

    return v19;
  }

  return result;
}

void ByteBuffer.writeDispatchData(_:)(uint64_t a1)
{
  ByteBuffer.setDispatchData(_:at:)(a1, *(v1 + 12));
  v2 = *(v1 + 12);
  v4 = __CFADD__(v2, v3);
  v5 = v2 + v3;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 12) = v5;
  }
}

void ByteBuffer.setDispatchData(_:at:)(uint64_t a1, int64_t a2)
{
  v4 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  v5 = a2 + v4;
  if (__OFADD__(a2, v4))
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v5 > *(v2 + 16) - (*(v2 + 22) | (*(v2 + 20) << 8)))
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      ByteBuffer._ensureAvailableCapacity(_:at:)(v5, 0);
    }

    else
    {
      v6 = sub_1B03904C0();
      ByteBuffer._copyStorageAndRebase(capacity:resetIndices:)(v5, v6 & 1);
    }
  }

  ByteBuffer._copyStorageAndRebaseIfNeeded()();
  v7 = *(v2 + 16);
  v8 = *(v2 + 20);
  v9 = *(v2 + 22);
  swift_beginAccess();
  v10 = v7 - (v9 | (v8 << 8));
  if (v5 < a2)
  {
    goto LABEL_16;
  }

  v11 = __OFSUB__(v5, a2);
  if (a2 < 0)
  {
    goto LABEL_17;
  }

  if (v10 < a2)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v5 > v10)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (!v11)
  {
    sub_1B0E443B8();
    return;
  }

LABEL_20:
  __break(1u);
}

uint64_t ByteBuffer.getDispatchData(at:length:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a6@<X8>)
{
  if (a1 < a4 || a2 < 0 || (HIDWORD(a4) - a4) - a2 < a1 - a4)
  {
    v7 = sub_1B0E443C8();
    v8 = *(*(v7 - 8) + 56);

    return v8(a6, 1, 1, v7);
  }

  else
  {
    swift_beginAccess();
    sub_1B0E44358();
    v10 = sub_1B0E443C8();
    return (*(*(v10 - 8) + 56))(a6, 0, 1, v10);
  }
}

uint64_t ByteBuffer.readDispatchData(length:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1B0E443C8();
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0x8000000000000000) != 0 || (v10 = *(v2 + 8), (*(v2 + 12) - v10) < a1))
  {
    v11 = *(v6 + 56);

    return v11(a2, 1, 1, v5, v7);
  }

  else
  {
    v13 = v6;
    swift_beginAccess();
    sub_1B0E44358();
    result = (*(v13 + 32))(a2, v9, v5);
    if (__CFADD__(v10, a1))
    {
      __break(1u);
    }

    else
    {
      *(v2 + 8) = v10 + a1;
      return (*(v13 + 56))(a2, 0, 1, v5);
    }
  }

  return result;
}

uint64_t ByteBuffer.readWithUnsafeReadableBytes(_:)(uint64_t (*a1)(uint64_t, uint64_t))
{
  v4 = *v1;
  v5 = *(v1 + 2);
  v6 = *(v1 + 3);
  v7 = *(v1 + 10);
  v8 = *(v1 + 22);
  swift_beginAccess();
  v9 = *(v4 + 24) + (v8 | (v7 << 8));
  result = a1(v9 + v5, v9 + v6);
  if (!v2)
  {
    if (__CFADD__(v5, result))
    {
      __break(1u);
    }

    else
    {
      *(v1 + 2) = v5 + result;
    }
  }

  return result;
}

uint64_t ByteBuffer.readWithUnsafeMutableReadableBytes(_:)(uint64_t (*a1)(uint64_t, uint64_t))
{
  v3 = v1;
  ByteBuffer._copyStorageAndRebaseIfNeeded()();
  v6 = *(v1 + 2);
  v5 = *(v1 + 3);
  v7 = *v3;
  v8 = *(v3 + 10);
  v9 = *(v3 + 22);
  swift_beginAccess();
  v10 = *(v7 + 24) + (v9 | (v8 << 8));
  result = a1(v10 + v6, v10 + v5);
  if (!v2)
  {
    if (__CFADD__(v6, result))
    {
      __break(1u);
    }

    else
    {
      *(v3 + 2) = v6 + result;
    }
  }

  return result;
}

void sub_1B0D4CA58(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = a4;
  v7 = a2;
  v9 = HIDWORD(a2);
  swift_beginAccess();
  v10 = v5 + v9 - v7;
  if (__CFADD__(v5, v9 - v7))
  {
    __break(1u);
  }

  else
  {
    v11 = *(a1 + 24);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = *(v4 + 16);
      v13 = v10 >= v12;
      v14 = v10 - v12;
      if (v13)
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }

      v16 = sub_1B03904C0();
      ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v15, v16 & 1);
    }

    v17 = v11 + ((a3 >> 24) & 0xFFFF00 | BYTE6(a3));
    ByteBuffer._ensureAvailableCapacity(_:at:)(v9 - v7, v5);
    ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)((v17 + v7), v17 + v9, v5);
  }
}

void ByteBuffer.writeBuffer(_:)(uint64_t *a1)
{
  v3 = *a1;
  v4 = *(a1 + 2);
  v5 = *(a1 + 3);
  v6 = *(a1 + 10);
  v7 = *(a1 + 22);
  v8 = *(v1 + 12);
  swift_beginAccess();
  v9 = v5 - v4;
  v10 = v8 + v5 - v4;
  if (__CFADD__(v8, v5 - v4))
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = *(v3 + 24) + (v7 | (v6 << 8));
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = *(v1 + 16);
    v13 = v10 >= v12;
    v14 = v10 - v12;
    if (v13)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = sub_1B03904C0();
    ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v15, v16 & 1);
  }

  ByteBuffer._ensureAvailableCapacity(_:at:)(v5 - v4, v8);
  ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)((v11 + v4), v11 + v5, v8);
  v17 = *(v1 + 12);
  v13 = __CFADD__(v17, v9);
  v18 = v17 + v9;
  if (v13)
  {
    goto LABEL_11;
  }

  *(v1 + 12) = v18;
  if (!__CFADD__(v4, v9))
  {
    *(a1 + 2) = v5;
    return;
  }

LABEL_12:
  __break(1u);
}

void ByteBuffer.writeBytes(_:)(const void *a1, uint64_t a2)
{
  ByteBuffer._setBytes(_:at:)(a1, a2, *(v2 + 12));
  v3 = *(v2 + 12);
  v5 = __CFADD__(v3, v4);
  v6 = v3 + v4;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 12) = v6;
  }
}

Swift::Int __swiftcall ByteBuffer.writeRepeatingByte(_:count:)(Swift::UInt8 _, Swift::Int count)
{
  result = ByteBuffer.setRepeatingByte(_:count:at:)(_, count, *(v2 + 12));
  v5 = *(v2 + 12);
  v6 = __CFADD__(v5, count);
  v7 = v5 + count;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 12) = v7;
    return count;
  }

  return result;
}

Swift::Int __swiftcall ByteBuffer.setRepeatingByte(_:count:at:)(Swift::UInt8 _, Swift::Int count, Swift::Int at)
{
  if (count < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v6 = at + count;
  if (__OFADD__(at, count))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = _;
  if (v6 > *(v3 + 4) - (*(v3 + 22) | (*(v3 + 10) << 8)))
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      ByteBuffer._ensureAvailableCapacity(_:at:)(v6, 0);
    }

    else
    {
      v8 = sub_1B03904C0();
      ByteBuffer._copyStorageAndRebase(capacity:resetIndices:)(v6, v8 & 1);
    }
  }

  ByteBuffer._copyStorageAndRebaseIfNeeded()();
  v9 = *v3;
  v10 = *(v3 + 10);
  v11 = *(v3 + 22);
  *&_ = swift_beginAccess();
  if (v6 < at)
  {
    goto LABEL_14;
  }

  if (v6 - at < 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v6 != at)
  {
    memset((*(v9 + 24) + (v10 << 8) + at + v11), v7, v6 - at);
  }

  *&_ = count;
LABEL_16:
  LOBYTE(result) = _;
  return result;
}

uint64_t ByteBuffer.slice()(uint64_t a1, unint64_t a2, uint64_t a3)
{
  result = ByteBuffer.getSlice(at:length:)(a2, (HIDWORD(a2) - a2), a1, a2, a3 & 0xFFFFFFFFFFFFFFLL);
  if (!result)
  {
    __break(1u);
  }

  return result;
}

void ByteBuffer.writeImmutableBuffer(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a1;
  v3[1] = a2;
  v4 = a3;
  v6 = BYTE6(a3);
  v5 = WORD2(a3);
  ByteBuffer.writeBuffer(_:)(v3);
}

uint64_t ByteBuffer.readWithUnsafeMutableReadableBytes<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = &v18[-v11];
  v19 = a3;
  v20 = a1;
  v21 = a2;
  result = ByteBuffer.withUnsafeMutableReadableBytes<A>(_:)(sub_1B0D4EFAC);
  if (!v5)
  {
    v14 = *v12;
    result = (*(*(a3 - 8) + 32))(a4, &v12[*(TupleTypeMetadata2 + 48)], a3);
    v15 = *(v4 + 8);
    v16 = __CFADD__(v15, v14);
    v17 = v15 + v14;
    if (v16)
    {
      __break(1u);
    }

    else
    {
      *(v4 + 8) = v17;
    }
  }

  return result;
}

uint64_t ByteBuffer.readWithUnsafeReadableBytes<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = &v20[-v11];
  v13 = *v4;
  v14 = *(v4 + 8);
  v15 = *(v4 + 16);
  v16 = *(v4 + 20);
  v17 = *(v4 + 22);
  v21 = a3;
  v22 = a1;
  v23 = a2;
  result = ByteBuffer.withUnsafeReadableBytes<A>(_:)(sub_1B0D4EFC8, v20, v13, v14, v15 | (v16 << 32) | (v17 << 48));
  if (!v5)
  {
    v19 = *v12;
    result = (*(*(a3 - 8) + 32))(a4, &v12[*(TupleTypeMetadata2 + 48)], a3);
    if (__CFADD__(v14, v19))
    {
      __break(1u);
    }

    else
    {
      *(v4 + 8) = v14 + v19;
    }
  }

  return result;
}

uint64_t ByteBuffer.init()()
{
  if (qword_1EB6DE5C0 != -1)
  {
    swift_once();
  }
}

uint64_t ByteBufferAllocator.buffer(string:)(unint64_t a1, unint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    v15 = a3;
    v16 = a4;
    v17 = a5;
    v18 = a6;
    v8 = sub_1B0E44DC8();
    if ((v8 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    a6 = v18;
    a5 = v17;
    a4 = v16;
    a3 = v15;
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_10:
    if (qword_1EB6DE5C0 != -1)
    {
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
    goto LABEL_10;
  }

LABEL_6:
  v9 = _s12NIOIMAPCore210ByteBufferV8_StorageC11reallocated15minimumCapacity9allocatorAEs6UInt32V_AA0bC9AllocatorVtFZ_0(v8, a3, a4, a5, a6);
  swift_beginAccess();
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = *(v9 + 16);
  while (1)
  {
    v23 = v9;
    v24 = v10;
    v25 = v11;
    v26 = v14;
    v27 = v12;
    v28 = v13;
    v19 = sub_1B0CFC1B0(a1, a2, &v23, v11);
    if (v20)
    {
      v21._countAndFlagsBits = a1;
      v21._object = a2;
      v19 = ByteBuffer._setStringSlowpath(_:at:)(v21, v11);
    }

    if (!__CFADD__(v25, v19))
    {
      break;
    }

    __break(1u);
LABEL_17:
    swift_once();
LABEL_11:
    v9 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
    v10 = qword_1EB737EB0;
    v11 = HIDWORD(qword_1EB737EB0);
    v14 = dword_1EB737EB8;
    v12 = word_1EB737EBC;
    v13 = byte_1EB737EBE;
  }

  return v23;
}

uint64_t ByteBuffer.init(substring:)(unint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v4 = ByteBufferAllocator.buffer(substring:)(a1, a2, a3, a4, j__malloc, j__realloc, sub_1B0B815B8, sub_1B0439080);

  return v4;
}

uint64_t ByteBufferAllocator.buffer(substring:)(unint64_t a1, uint64_t a2, unint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = sub_1B0E45E08();
  if (v16 < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (!v16)
  {
    if (qword_1EB6DE5C0 != -1)
    {
      goto LABEL_14;
    }

    goto LABEL_5;
  }

  v17 = _s12NIOIMAPCore210ByteBufferV8_StorageC11reallocated15minimumCapacity9allocatorAEs6UInt32V_AA0bC9AllocatorVtFZ_0(v16, a5, a6, a7, a8);
  swift_beginAccess();
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = *(v17 + 16);
  while (1)
  {
    v30 = v17;
    v31 = v18;
    v32 = v19;
    v33 = v22;
    v34 = v20;
    v35 = v21;
    v23 = sub_1B0D4EEF4(a1, a2, a3, a4, &v30, v19);
    if (v24)
    {
      a2 = MEMORY[0x1B2726D00](a1, a2, a3, a4);
      a4 = v25;
      v26 = sub_1B0CFC1B0(a2, v25, &v30, v19);
      if (v27)
      {
        v28._countAndFlagsBits = a2;
        v28._object = a4;
        v26 = ByteBuffer._setStringSlowpath(_:at:)(v28, v19);
      }

      a3 = v26;

      v23 = a3;
    }

    if (!__CFADD__(v32, v23))
    {
      break;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    swift_once();
LABEL_5:
    v17 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
    v18 = qword_1EB737EB0;
    v19 = HIDWORD(qword_1EB737EB0);
    v22 = dword_1EB737EB8;
    v20 = word_1EB737EBC;
    v21 = byte_1EB737EBE;
  }

  return v30;
}

uint64_t ByteBufferAllocator.buffer(staticString:)(const void *a1, uint64_t a2, char a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3)
  {
    __break(1u);
    goto LABEL_10;
  }

  v8 = a2;
  if (a2 < 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = a3;
  v9 = a1;
  if (!a2)
  {
    if (qword_1EB6DE5C0 != -1)
    {
      goto LABEL_12;
    }

    goto LABEL_6;
  }

  v10 = _s12NIOIMAPCore210ByteBufferV8_StorageC11reallocated15minimumCapacity9allocatorAEs6UInt32V_AA0bC9AllocatorVtFZ_0(a2, a4, a5, a6, a7);
  swift_beginAccess();
  v11 = 0;
  while (1)
  {
    ByteBuffer.setStaticString(_:at:)(v9, v8, v7, v11);
    if (!__CFADD__(v11, v12))
    {
      break;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    swift_once();
LABEL_6:
    v10 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
    v11 = HIDWORD(qword_1EB737EB0);
  }

  return v10;
}

uint64_t ByteBuffer.init<A>(bytes:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = ByteBufferAllocator.buffer<A>(bytes:)(a1, j__malloc, j__realloc, sub_1B0B815B8, sub_1B0439080, a2, a3);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v5;
}

uint64_t ByteBufferAllocator.buffer<A>(bytes:)(uint64_t *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = sub_1B0E44F28();
  if (v14 < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (!v14)
  {
    if (qword_1EB6DE5C0 != -1)
    {
      goto LABEL_10;
    }

    goto LABEL_5;
  }

  v15 = _s12NIOIMAPCore210ByteBufferV8_StorageC11reallocated15minimumCapacity9allocatorAEs6UInt32V_AA0bC9AllocatorVtFZ_0(v14, a2, a3, a4, a5);
  swift_beginAccess();
  v16 = 0;
  while (__CFADD__(v16, ByteBuffer.setBytes<A>(_:at:)(a1, v16, a6, a7)))
  {
LABEL_9:
    __break(1u);
LABEL_10:
    swift_once();
LABEL_5:
    v15 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
    v16 = HIDWORD(qword_1EB737EB0);
  }

  return v15;
}

uint64_t ByteBuffer.init<A>(integer:endianness:as:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = ByteBufferAllocator.buffer<A>(integer:endianness:as:)(a1, a2 & 1, a3, j__malloc, j__realloc, sub_1B0B815B8, sub_1B0439080, a4, a5);
  (*(*(a4 - 8) + 8))(a1, a4);
  return v7;
}

uint64_t ByteBufferAllocator.buffer<A>(integer:endianness:as:)(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = *(*(a8 - 8) + 64);
  if (v13 < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v9 = a8;
  v11 = a3;
  v10 = a2;
  if (!v13)
  {
    if (qword_1EB6DE5C0 == -1)
    {
LABEL_5:
      v14 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;

      goto LABEL_6;
    }

LABEL_8:
    swift_once();
    goto LABEL_5;
  }

  v14 = _s12NIOIMAPCore210ByteBufferV8_StorageC11reallocated15minimumCapacity9allocatorAEs6UInt32V_AA0bC9AllocatorVtFZ_0(v13, a4, a5, a6, a7);
  swift_beginAccess();
LABEL_6:
  ByteBuffer.writeInteger<A>(_:endianness:as:)(a1, v10 & 1, v11, v9);
  return v14;
}

void *ByteBuffer.init(repeating:count:)(Swift::UInt8 a1, Swift::Int a2)
{
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v2 = a2;
  v3 = a1;
  if (!a2)
  {
    if (qword_1EB6DE5C0 != -1)
    {
      goto LABEL_16;
    }

    goto LABEL_8;
  }

  if (a2)
  {
    v4 = (a2 - 1) | ((a2 - 1) >> 1) | (((a2 - 1) | ((a2 - 1) >> 1)) >> 2);
    v5 = v4 | (v4 >> 4) | ((v4 | (v4 >> 4)) >> 8);
    v6 = v5 | HIWORD(v5);
    v7 = __CFADD__(v6, 1);
    v8 = v6 + 1;
    if (v7)
    {
      v9 = -1;
    }

    else
    {
      v9 = v8;
    }
  }

  else
  {
    v9 = 0;
  }

  result = malloc(v9);
  if (result)
  {
    v14 = result;
    type metadata accessor for ByteBuffer._Storage();
    v11 = swift_allocObject();
    v10 = 0;
    *(v11 + 16) = v9;
    *(v11 + 24) = v14;
    *(v11 + 32) = j__malloc;
    *(v11 + 40) = j__realloc;
    *(v11 + 48) = sub_1B0B815B8;
    *(v11 + 56) = sub_1B0439080;
    for (i = v2; ; i = 0)
    {
      v15 = v11;
      ByteBuffer.setRepeatingByte(_:count:at:)(v3, v2, v10);
      if (!__CFADD__(v10, i))
      {
        break;
      }

LABEL_15:
      __break(1u);
LABEL_16:
      swift_once();
LABEL_8:
      v10 = HIDWORD(qword_1EB737EB0);
    }

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ByteBufferAllocator.buffer(repeating:count:)(Swift::UInt8 a1, Swift::Int a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = a2;
  v7 = a1;
  if (!a2)
  {
    if (qword_1EB6DE5C0 != -1)
    {
      goto LABEL_10;
    }

    goto LABEL_5;
  }

  v8 = _s12NIOIMAPCore210ByteBufferV8_StorageC11reallocated15minimumCapacity9allocatorAEs6UInt32V_AA0bC9AllocatorVtFZ_0(a2, a3, a4, a5, a6);
  swift_beginAccess();
  v9 = 0;
  for (i = v6; ; i = 0)
  {
    ByteBuffer.setRepeatingByte(_:count:at:)(v7, v6, v9);
    if (!__CFADD__(v9, i))
    {
      break;
    }

LABEL_9:
    __break(1u);
LABEL_10:
    swift_once();
LABEL_5:
    v8 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
    v9 = HIDWORD(qword_1EB737EB0);
  }

  return v8;
}

void *ByteBuffer.init(buffer:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = HIDWORD(a2);
  if (HIDWORD(a2) == a2)
  {
    if (qword_1EB6DE5C0 != -1)
    {
      swift_once();
    }

    v19 = qword_1EB737EB0;
    LODWORD(v7) = dword_1EB737EB8;
    v8 = word_1EB737EBC;
    v9 = byte_1EB737EBE;

    v11 = v19;
    goto LABEL_10;
  }

  v12 = (HIDWORD(a2) + ~a2) | ((HIDWORD(a2) + ~a2) >> 1);
  v13 = v12 | (v12 >> 2) | ((v12 | (v12 >> 2)) >> 4);
  v14 = v13 | (v13 >> 8) | ((v13 | (v13 >> 8)) >> 16);
  v15 = __CFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = v16;
  }

  result = malloc(v7);
  if (result)
  {
    v18 = result;
    type metadata accessor for ByteBuffer._Storage();
    v10 = swift_allocObject();
    v8 = 0;
    v9 = 0;
    *(v10 + 16) = v7;
    *(v10 + 24) = v18;
    *(v10 + 32) = j__malloc;
    *(v10 + 40) = j__realloc;
    *(v10 + 48) = sub_1B0B815B8;
    *(v10 + 56) = sub_1B0439080;
    v11 = 0;
LABEL_10:
    v26 = v10;
    v27 = v11;
    v28 = v7;
    v29 = v8;
    v30 = v9;
    v20 = a1;
    v21 = v4;
    v22 = v6;
    v23 = a3;
    v24 = WORD2(a3);
    v25 = BYTE6(a3);
    ByteBuffer.writeBuffer(_:)(&v20);

    return v26;
  }

  __break(1u);
  return result;
}

uint64_t ByteBufferAllocator.buffer(buffer:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2;
  v10 = HIDWORD(a2);
  if (HIDWORD(a2) == a2)
  {
    if (qword_1EB6DE5C0 != -1)
    {
      swift_once();
    }

    v11 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
    v17 = qword_1EB737EB0;
    v12 = dword_1EB737EB8;
    v13 = word_1EB737EBC;
    v14 = byte_1EB737EBE;

    v15 = v17;
  }

  else
  {
    v11 = _s12NIOIMAPCore210ByteBufferV8_StorageC11reallocated15minimumCapacity9allocatorAEs6UInt32V_AA0bC9AllocatorVtFZ_0(HIDWORD(a2) - a2, a4, a5, a6, a7);
    swift_beginAccess();
    v13 = 0;
    v14 = 0;
    v12 = *(v11 + 16);
    v15 = 0;
  }

  v24 = v11;
  v25 = v15;
  v26 = v12;
  v27 = v13;
  v28 = v14;
  v18 = a1;
  v19 = v8;
  v20 = v10;
  v21 = a3;
  v22 = WORD2(a3);
  v23 = BYTE6(a3);
  ByteBuffer.writeBuffer(_:)(&v18);
  return v24;
}

void *ByteBuffer.init(dispatchData:)(uint64_t a1)
{
  v2 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  if (v2 < 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (!v2)
  {
    if (qword_1EB6DE5C0 != -1)
    {
      goto LABEL_16;
    }

    goto LABEL_8;
  }

  if (v2)
  {
    v3 = (v2 - 1) | ((v2 - 1) >> 1) | (((v2 - 1) | ((v2 - 1) >> 1)) >> 2);
    v4 = v3 | (v3 >> 4) | ((v3 | (v3 >> 4)) >> 8);
    v5 = v4 | HIWORD(v4);
    v6 = __CFADD__(v5, 1);
    v7 = v5 + 1;
    if (v6)
    {
      v8 = -1;
    }

    else
    {
      v8 = v7;
    }
  }

  else
  {
    v8 = 0;
  }

  result = malloc(v8);
  if (result)
  {
    v12 = result;
    type metadata accessor for ByteBuffer._Storage();
    v10 = swift_allocObject();
    v9 = 0;
    *(v10 + 16) = v8;
    *(v10 + 24) = v12;
    *(v10 + 32) = j__malloc;
    *(v10 + 40) = j__realloc;
    *(v10 + 48) = sub_1B0B815B8;
    *(v10 + 56) = sub_1B0439080;
    while (1)
    {
      v15 = v10;
      ByteBuffer.setDispatchData(_:at:)(a1, v9);
      if (!__CFADD__(v9, v13))
      {
        break;
      }

LABEL_15:
      __break(1u);
LABEL_16:
      swift_once();
LABEL_8:
      v9 = HIDWORD(qword_1EB737EB0);
    }

    v14 = sub_1B0E443C8();
    (*(*(v14 - 8) + 8))(a1, v14);
    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ByteBufferAllocator.buffer(dispatchData:)(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  if (v10 < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (!v10)
  {
    if (qword_1EB6DE5C0 != -1)
    {
      goto LABEL_10;
    }

    goto LABEL_5;
  }

  v11 = _s12NIOIMAPCore210ByteBufferV8_StorageC11reallocated15minimumCapacity9allocatorAEs6UInt32V_AA0bC9AllocatorVtFZ_0(v10, a2, a3, a4, a5);
  swift_beginAccess();
  v12 = 0;
  while (1)
  {
    ByteBuffer.setDispatchData(_:at:)(a1, v12);
    if (!__CFADD__(v12, v13))
    {
      break;
    }

LABEL_9:
    __break(1u);
LABEL_10:
    swift_once();
LABEL_5:
    v11 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
    v12 = HIDWORD(qword_1EB737EB0);
  }

  return v11;
}

void *ByteBuffer.init(from:)(void *a1)
{
  result = sub_1B0D4F300(a1);
  if (v1)
  {
    return (v3 & 0xFFFFFFFFFFFFFFLL);
  }

  return result;
}

void *ByteBuffer.encode(to:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = a3;
  v7 = HIDWORD(a3);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  result = sub_1B0E46D38();
  if (v7 < v5)
  {
    __break(1u);
  }

  else if (a4 - ((WORD2(a4) << 8) | BYTE6(a4)) >= v7)
  {
    v11 = a2;
    v12 = v5;
    v13 = v7;
    v14 = a4;
    v15 = WORD2(a4);
    v16 = BYTE6(a4);
    v17 = v5;
    v18 = v7;
    v9 = swift_beginAccess();
    MEMORY[0x1EEE9AC00](v9);

    sub_1B0E44CB8();
    sub_1B04394F4(&v11);
    __swift_mutable_project_boxed_opaque_existential_1(v10, v10[3]);
    sub_1B0E46AB8();

    return __swift_destroy_boxed_opaque_existential_0(v10);
  }

  __break(1u);
  return result;
}

void *sub_1B0D4E63C@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1B0D4F300(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 20) = WORD2(v6);
    *(a1 + 22) = BYTE6(v6);
  }

  return result;
}

void Optional<A>.setOrWriteImmutableBuffer(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a2;
  v5 = a3;
  v7 = BYTE6(a3);
  v6 = WORD2(a3);
  if (*v3)
  {
    ByteBuffer.writeBuffer(_:)(v4);
  }

  else
  {
    *v3 = a1;
    *(v3 + 8) = a2;
    *(v3 + 16) = a3;
    *(v3 + 22) = BYTE6(a3);
    *(v3 + 20) = WORD2(a3);
  }
}

void Optional<A>.setOrWriteBuffer(_:)(uint64_t a1)
{
  if (*v1)
  {

    ByteBuffer.writeBuffer(_:)(a1);
  }

  else
  {
    v2 = *(a1 + 8);
    v3 = *(a1 + 12);
    v4 = *(a1 + 16);
    v5 = *(a1 + 20);
    v6 = *(a1 + 22);
    *v1 = *a1;
    *(v1 + 8) = v2 | (v3 << 32);
    *(v1 + 22) = v6;
    *(v1 + 20) = v5;
    *(v1 + 16) = v4;
    *(a1 + 8) = v3;
  }
}

void sub_1B0D4E7A0(uint64_t a1, uint64_t a2, uint64_t a3, Swift::UInt32 a4)
{
  v8 = a3 - a2;
  if (a3 < a2)
  {
    v8 += *(a1 + 16);
  }

  v9 = a4 + v8;
  if (!__CFADD__(a4, v8))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = *(v4 + 16);
      v11 = v9 >= v10;
      v12 = v9 - v10;
      if (v11)
      {
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }

      v14 = sub_1B03904C0();
      ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v13, v14 & 1);
    }

    v15 = sub_1B0BD0DC8(v8, v4, a4);
    sub_1B0D4ED28(v15, v8, a1, a2, a3, &v31);
    v16 = v33;
    if ((v33 & 0x8000000000000000) != 0)
    {
      goto LABEL_31;
    }

    if (HIDWORD(v33))
    {
      goto LABEL_32;
    }

    v28 = v32;
    v29 = v31;
    v17 = v34;
    v18 = v38;
    if (v34 == v33 && v35 == 0xFFFF && v36 == 255 && v33 < v32 != v37)
    {
LABEL_24:

      return;
    }

    v27 = v31 + 32;
    while (1)
    {
      v19 = *(v29 + 16);
      if (v19 <= v17)
      {
        break;
      }

      v20 = (v27 + 2 * v17);
      if (v20[1])
      {
        goto LABEL_33;
      }

      v21 = (v19 + 0x1FFFFFFFFLL) & (v17 + 1);
      if (HIDWORD(v21))
      {
        goto LABEL_26;
      }

      v22 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_27;
      }

      if ((v22 & 0x8000000000000000) != 0)
      {
        goto LABEL_28;
      }

      if (HIDWORD(v22))
      {
        goto LABEL_29;
      }

      v23 = *v20;
      v17 = (v19 - 1) & (v17 + 1);
      ByteBuffer._ensureAvailableCapacity(_:at:)(v18 + 1, a4);
      v24 = *v4;
      v25 = *(v4 + 20);
      v26 = *(v4 + 22);
      swift_beginAccess();
      *(*(v24 + 24) + (v26 | (v25 << 8)) + a4 + v18++) = v23;
      if (v21 == v16 && v16 < v28 != v21 >= v28)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
}

uint64_t sub_1B0D4E9D0(uint64_t a1, unint64_t a2, Swift::UInt32 a3)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E53C8, &qword_1B0ECFB78);
  if (result == MEMORY[0x1E69E6108])
  {
    goto LABEL_17;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    result = sub_1B0E44DC8();
    v8 = result;
    v9 = a3 + result;
    if (!__CFADD__(a3, result))
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v9 = a3 + v8;
  if (__CFADD__(a3, v8))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

LABEL_7:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = *(v3 + 16);
    v11 = v9 >= v10;
    v12 = v9 - v10;
    if (v11)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = sub_1B03904C0();
    ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v13, v14 & 1);
  }

  sub_1B0BD0DC8(v8, v3, a3);
  result = sub_1B0E462A8();
  if (v15)
  {
    goto LABEL_18;
  }

  return result;
}

void *sub_1B0D4EAB8(int64_t a1, int a2, Swift::UInt32 a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E70C0, &qword_1B0EEFEC8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E53C8, &qword_1B0ECFB78);
  if (v7 != result)
  {
    v9 = a3 + a1;
    if (!__CFADD__(a3, a1))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = *(v3 + 16);
        v11 = v9 >= v10;
        v12 = v9 - v10;
        if (v11)
        {
          v13 = v12;
        }

        else
        {
          v13 = 0;
        }

        v14 = sub_1B03904C0();
        ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v13, v14 & 1);
      }

      result = sub_1B0BD0DC8(a1, v3, a3);
      if (!a1)
      {
        return a1;
      }

      if (a1 >= 1)
      {
        memset(result, a2, a1);
        return a1;
      }

      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0D4EB8C(char a1, Swift::UInt32 a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E57B8, &qword_1B0ED7C28);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E53C8, &qword_1B0ECFB78);
  if (v5 == result)
  {
    goto LABEL_10;
  }

  v7 = a2 + 1;
  if (a2 == -1)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = *(v2 + 16);
    v9 = v7 >= v8;
    v10 = v7 - v8;
    if (v9)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = sub_1B03904C0();
    ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v11, v12 & 1);
  }

  *sub_1B0BD0DC8(1uLL, v2, a2) = a1;
  return 1;
}

uint64_t sub_1B0D4EC3C(Swift::UInt32 a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E70B8, &qword_1B0EEFEC0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E53C8, &qword_1B0ECFB78);
  if (v3 == result)
  {
    __break(1u);
  }

  else
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = *(v1 + 16);
      v6 = a1 >= v5;
      v7 = a1 - v5;
      if (v6)
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }

      v9 = sub_1B03904C0();
      ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v8, v9 & 1);
    }

    sub_1B0BD0DC8(0, v1, a1);
    return 0;
  }

  return result;
}

uint64_t sub_1B0D4ECD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if ((a1 & 0x100000000000000) != 0)
  {
    v5 = v3 - a1 + a2;
    if ((a2 & 0x100000000000000) != 0)
    {
      return a2 - a1;
    }

    else
    {
      return v5;
    }
  }

  else if ((a2 & 0x100000000000000) != 0)
  {
    v6 = a1 - a2 + v3;
    result = -v6;
    if (__OFSUB__(0, v6))
    {
      __break(1u);
    }
  }

  else
  {
    return a2 - a1;
  }

  return result;
}

_BYTE *sub_1B0D4ED28@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int64_t a4@<X3>, int64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = a5;
  v7 = a4;
  v8 = a3;
  v10 = a5 - a4;
  if (a5 < a4)
  {
    v10 += *(a3 + 16);
  }

  if (v10 > a2)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (!result)
  {
    if (a4 < 0)
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    if (HIDWORD(a4))
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v18 = 0;
    goto LABEL_35;
  }

  if (a5 >= a4)
  {
    if (a5 == a4)
    {
LABEL_22:
      if ((a5 & 0x8000000000000000) == 0)
      {
LABEL_29:
        if (HIDWORD(a5))
        {
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

LABEL_30:
        v21 = a5 | ((a5 >= a4) << 56) | 0xFFFFFF00000000;
        result = sub_1B0D4F06C(v21, v21, a3, a4, a5);
        if ((v22 & 0x8000000000000000) != 0)
        {
LABEL_41:
          __break(1u);
          goto LABEL_42;
        }

        if (HIDWORD(v22))
        {
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        v18 = v6 - v7;
        if (v6 < v7)
        {
          v18 += *(v8 + 2);
        }

        v8 = result;
        v7 = v22;
        v6 = v23;
LABEL_35:

        *a6 = v8;
        *(a6 + 8) = v7;
        *(a6 + 16) = v6;
        *(a6 + 24) = v7;
        *(a6 + 28) = 0x1FFFFFF;
        *(a6 + 32) = v18;
        return result;
      }

      __break(1u);
    }

    v19 = (a3 + 2 * a4 + 33);
    v20 = a4;
    while ((a4 & 0x8000000000000000) == 0)
    {
      if (v20 >= *(a3 + 16))
      {
        goto LABEL_38;
      }

      if (*v19)
      {
        goto LABEL_49;
      }

      ++v20;
      *result++ = *(v19 - 1);
      v19 += 2;
      if (a5 == v20)
      {
        goto LABEL_29;
      }
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v11 = *(a3 + 16);
  v12 = v11 == a4;
  v13 = v11 < a4;
  v14 = v11 - a4;
  if (v13)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (!v12)
  {
    v15 = (a3 + 2 * a4 + 33);
    while ((a4 & 0x8000000000000000) == 0)
    {
      if (*v15)
      {
        goto LABEL_48;
      }

      *result++ = *(v15 - 1);
      v15 += 2;
      if (!--v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_37;
  }

LABEL_12:
  if (a5 < 0)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (!a5)
  {
    goto LABEL_30;
  }

  v16 = (a3 + 33);
  v17 = a5;
  while ((*v16 & 1) == 0)
  {
    *result++ = *(v16 - 1);
    v16 += 2;
    if (!--v17)
    {
      goto LABEL_22;
    }
  }

LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

unint64_t sub_1B0D4EEF4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    return 0;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v12 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v12 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v12 = sub_1B0E46368();
  }

  return sub_1B0D4F114(v12, a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1B0D4EFE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v8 = *(v3 + 24);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = v8(&a3[*(TupleTypeMetadata2 + 48)], a1, a2);
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1B0D4F06C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4 < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (HIDWORD(a4))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = *(a3 + 16);
  if ((result & 0x100000000000000) != 0)
  {
    v6 = 0;
  }

  if (result - a4 + v6 < 0)
  {
    goto LABEL_14;
  }

  if (a5 < 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (HIDWORD(a5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = 0x1FFFFFF00000000;
  if (a5 < a4)
  {
    v7 = 0xFFFFFF00000000;
  }

  result = sub_1B0D4ECD8(a2 & 0x1FFFFFFFFFFFFFFLL, v7 | a5, a3);
  if ((result & 0x8000000000000000) == 0)
  {
    return a3;
  }

LABEL_17:
  __break(1u);
  return result;
}

unint64_t sub_1B0D4F114(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = result;
  v10 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v10) = 1;
  }

  v11 = 4 << v10;
  v12 = a2 & 0xC;
  v13 = a2;
  if (v12 == v11)
  {
    v27 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_1B0A6D6C4(a2, a4, a5);
    a2 = v27;
    a3 = v15;
    a5 = v16;
    v13 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v14 = v13 >> 16;
      if (v12 != v11)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v28 = a2;
  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v13 >> 16)
  {
    goto LABEL_34;
  }

  v18 = a3;
  v19 = a5;
  result = sub_1B0E44DF8();
  a5 = v19;
  v14 = result;
  a3 = v18;
  a2 = v28;
  if (v12 == v11)
  {
LABEL_14:
    v20 = a3;
    v21 = a5;
    result = sub_1B0A6D6C4(a2, a4, a5);
    a3 = v20;
    a5 = v21;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v11)
  {
    v22 = a2;
    v23 = a5;
    result = sub_1B0A6D6C4(a3, a4, a5);
    a2 = v22;
    a5 = v23;
    a3 = result;
    if ((v23 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v24 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v24 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v24 < a2 >> 16)
  {
    goto LABEL_32;
  }

  if (v24 < a3 >> 16)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    return result;
  }

  result = sub_1B0E44DF8();
LABEL_21:
  if (__OFADD__(v14, result))
  {
    __break(1u);
    goto LABEL_31;
  }

  if ((v14 + result) < v14)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v9)
  {
    v25 = v9 + v14 + result;
  }

  else
  {
    v25 = 0;
  }

  if (v9)
  {
    v26 = (v9 + v14);
  }

  else
  {
    v26 = 0;
  }

  ByteBuffer._setBytes(_:at:)(v26, v25, a7);
  return result;
}

void *sub_1B0D4F300(void *a1)
{
  v3 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0E46D08();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_0(v8, v8[3]);
    v4 = sub_1B0E46A98();
    v7 = static Base64.decode(string:options:)(v4, v5, 0);

    v3 = sub_1B0D8F260(v7, j__malloc, j__realloc, sub_1B0B815B8, sub_1B0439080);

    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

int64_t ByteBuffer.rangeWithinReadableBytes(index:length:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 - a4;
  if ((HIDWORD(a4) - a4) - a2 < v4)
  {
    v4 = 0;
  }

  if (a2 < 0)
  {
    v4 = 0;
  }

  if (a1 >= a4)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t ByteBuffer.withUnsafeReadableBytes<A>(_:)(uint64_t (*a1)(unint64_t, unint64_t), uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  swift_beginAccess();
  v9 = *(a3 + 24) + ((a5 >> 24) & 0xFFFF00 | BYTE6(a5));
  return a1(v9 + a4, v9 + HIDWORD(a4));
}

Swift::Void __swiftcall ByteBuffer._moveReaderIndex(forwardBy:)(Swift::Int forwardBy)
{
  v2 = *(v1 + 8);
  v3 = __CFADD__(v2, forwardBy);
  v4 = v2 + forwardBy;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 8) = v4;
  }
}

Swift::Void __swiftcall ByteBuffer._moveWriterIndex(forwardBy:)(Swift::Int forwardBy)
{
  v2 = *(v1 + 12);
  v3 = __CFADD__(v2, forwardBy);
  v4 = v2 + forwardBy;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 12) = v4;
  }
}

Swift::Void __swiftcall ByteBuffer.moveReaderIndex(forwardBy:)(Swift::Int forwardBy)
{
  v2 = *(v1 + 8);
  v3 = __CFADD__(v2, forwardBy);
  v4 = v2 + forwardBy;
  if (v3)
  {
    __break(1u);
  }

  else if (*(v1 + 12) >= v4)
  {
    *(v1 + 8) = v4;
    return;
  }

  __break(1u);
}

Swift::Void __swiftcall ByteBuffer.reserveCapacity(_:)(Swift::Int a1)
{
  if (*(v1 + 16) - (*(v1 + 22) | (*(v1 + 20) << 8)) < a1)
  {
    v2 = a1;
    if (swift_isUniquelyReferenced_nonNull_native())
    {

      ByteBuffer._ensureAvailableCapacity(_:at:)(v2, 0);
    }

    else
    {
      v3 = sub_1B03904C0() & 1;

      ByteBuffer._copyStorageAndRebase(capacity:resetIndices:)(v2, v3);
    }
  }
}

uint64_t ByteBuffer.withVeryUnsafeMutableBytes<A>(_:)(uint64_t (*a1)(void, void, __n128))
{
  ByteBuffer._copyStorageAndRebaseIfNeeded()();
  v3 = *v1;
  v4 = *(v1 + 4);
  v5 = *(v1 + 10);
  v6 = *(v1 + 22);
  swift_beginAccess();
  return (a1)(*(v3 + 24) + (v6 | (v5 << 8)), *(v3 + 24) + (v6 | (v5 << 8)) + v4 - (v6 | (v5 << 8)));
}

uint64_t ByteBuffer.withUnsafeMutableReadableBytes<A>(_:)(uint64_t (*a1)(uint64_t, uint64_t))
{
  ByteBuffer._copyStorageAndRebaseIfNeeded()();
  v3 = *(v1 + 2);
  v4 = *(v1 + 3);
  v5 = *v1;
  v6 = *(v1 + 10);
  v7 = *(v1 + 22);
  swift_beginAccess();
  v8 = *(v5 + 24) + (v7 | (v6 << 8));
  return a1(v8 + v3, v8 + v4);
}

uint64_t ByteBuffer.getSlice(at:length:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  result = 0;
  if ((a1 & 0x8000000000000000) == 0 && (a2 & 0x8000000000000000) == 0 && a4 <= a1)
  {
    result = 0;
    if (HIDWORD(a4) >= a2 && (HIDWORD(a4) - a2) >= a1)
    {
      v7 = (a5 >> 24) & 0xFFFF00 | BYTE6(a5);
      v8 = __CFADD__(v7, a1);
      v9 = v7 + a1;
      if (v8)
      {
        __break(1u);
      }

      else if (HIBYTE(v9))
      {
        return ByteBuffer._copyIntoByteBufferWithSliceIndex0_slowPath(index:length:)(a1, a2, a3);
      }

      else
      {

        return a3;
      }
    }
  }

  return result;
}

uint64_t ByteBuffer.getSlice_inlineAlways(at:length:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  result = 0;
  if ((a1 & 0x8000000000000000) == 0 && (a2 & 0x8000000000000000) == 0 && a4 <= a1)
  {
    result = 0;
    if (HIDWORD(a4) >= a2 && (HIDWORD(a4) - a2) >= a1)
    {
      v7 = (a5 >> 24) & 0xFFFF00 | BYTE6(a5);
      v8 = __CFADD__(v7, a1);
      v9 = v7 + a1;
      if (v8)
      {
        __break(1u);
      }

      else if (HIBYTE(v9))
      {
        return ByteBuffer._copyIntoByteBufferWithSliceIndex0_slowPath(index:length:)(a1, a2, a3);
      }

      else
      {

        return a3;
      }
    }
  }

  return result;
}

uint64_t *ByteBufferAllocator.zeroCapacityWithDefaultAllocator.unsafeMutableAddressor()
{
  if (qword_1EB6DE5C0 != -1)
  {
    swift_once();
  }

  return &static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
}

uint64_t ByteBufferAllocator.buffer(capacity:)(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (!a1)
  {
    if (qword_1EB6DE5C0 == -1)
    {
LABEL_5:
      v5 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;

      return v5;
    }

LABEL_8:
    swift_once();
    goto LABEL_5;
  }

  v5 = _s12NIOIMAPCore210ByteBufferV8_StorageC11reallocated15minimumCapacity9allocatorAEs6UInt32V_AA0bC9AllocatorVtFZ_0(a1, a2, a3, a4, a5);
  swift_beginAccess();
  return v5;
}

Swift::Void __swiftcall ByteBuffer.moveReaderIndex(to:)(Swift::Int to)
{
  if (*(v1 + 12) < to)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 8) = to;
  }
}

BOOL sub_1B0D4FB74(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  return *(a1 + 4) == *(a2 + 4) && *(a1 + 6) == *(a2 + 6);
}

uint64_t _ByteBufferSlice._begin.setter(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 6) = BYTE2(result);
  return result;
}

unint64_t _ByteBufferSlice.description.getter()
{
  sub_1B0E46298();

  v0 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v0);

  MEMORY[0x1B2726E80](3943982, 0xE300000000000000);
  v1 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v1);

  MEMORY[0x1B2726E80](32032, 0xE200000000000000);
  return 0xD000000000000013;
}

uint64_t ByteBuffer.init(allocator:startingCapacity:)(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = _s12NIOIMAPCore210ByteBufferV8_StorageC11reallocated15minimumCapacity9allocatorAEs6UInt32V_AA0bC9AllocatorVtFZ_0(a5, a1, a2, a3, a4);
  swift_beginAccess();
  return v5;
}

_DWORD *sub_1B0D4FDF0()
{
  result = malloc(0);
  if (result)
  {
    v1 = result;
    type metadata accessor for ByteBuffer._Storage();
    result = swift_allocObject();
    result[4] = 0;
    *(result + 3) = v1;
    *(result + 4) = j__malloc;
    *(result + 5) = j__realloc;
    *(result + 6) = sub_1B0B815B8;
    *(result + 7) = sub_1B0439080;
    static ByteBufferAllocator.zeroCapacityWithDefaultAllocator = result;
    qword_1EB737EB0 = 0;
    *(&qword_1EB737EB0 + 7) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static ByteBufferAllocator.zeroCapacityWithDefaultAllocator.getter()
{
  if (qword_1EB6DE5C0 != -1)
  {
    swift_once();
  }
}

uint64_t ByteBuffer._storage.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t ByteBuffer._slice.setter(uint64_t result)
{
  *(v1 + 16) = result;
  *(v1 + 20) = WORD2(result);
  *(v1 + 22) = BYTE6(result);
  return result;
}

uint64_t ByteBuffer._Storage.__allocating_init(bytesNoCopy:capacity:allocator:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = swift_allocObject();
  *(result + 16) = a2;
  *(result + 24) = a1;
  *(result + 32) = a3;
  *(result + 40) = a4;
  *(result + 48) = a5;
  *(result + 56) = a6;
  return result;
}

uint64_t ByteBuffer._Storage.init(bytesNoCopy:capacity:allocator:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a2;
  *(v6 + 24) = a1;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  return v6;
}

uint64_t ByteBuffer._Storage.deinit()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  v1(*(v0 + 24));
  return v0;
}

uint64_t ByteBuffer._Storage.__deallocating_deinit()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  v1(*(v0 + 24));
  return swift_deallocClassInstance();
}

uint64_t static ByteBuffer._Storage._allocateAndPrepareRawMemory(bytes:allocator:)(unsigned int a1, uint64_t (*a2)(void))
{
  result = a2(a1);
  if (!result)
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall ByteBuffer._Storage.reallocStorage(capacity:)(Swift::UInt32 capacity)
{
  if (capacity)
  {
    v2 = (capacity - 1) | ((capacity - 1) >> 1) | (((capacity - 1) | ((capacity - 1) >> 1)) >> 2);
    v3 = v2 | (v2 >> 4) | ((v2 | (v2 >> 4)) >> 8);
    v4 = v3 | HIWORD(v3);
    v5 = __CFADD__(v4, 1);
    v6 = v4 + 1;
    if (v5)
    {
      v7 = -1;
    }

    else
    {
      v7 = v6;
    }
  }

  else
  {
    v7 = 1;
  }

  v8 = *(v1 + 40);
  swift_beginAccess();
  v9 = v8(*(v1 + 24), v7);
  if (v9)
  {
    *(v1 + 24) = v9;
    swift_beginAccess();
    *(v1 + 16) = v7;
  }

  else
  {
    __break(1u);
  }
}

void sub_1B0D503F4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  swift_beginAccess();
  v7 = (a1 >> 24) & 0xFFFF00 | BYTE6(a1);
  v8 = v7 + a2;
  if (__OFADD__(v7, a2))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = v8 + a3;
  if (__OFADD__(v8, a3))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v9 < v8)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v8 == v9)
  {
LABEL_15:
    MEMORY[0x1B2726E80](23840, 0xE200000000000000);
    return;
  }

  if (v8 < v9)
  {
    v10 = *(v3 + 16);
    while (v8 < v10)
    {
      ++v8;
      sub_1B0BA1E94();
      v11 = sub_1B0E44E98();
      v13 = v12;
      v14 = sub_1B0E44CF8();
      v15 = v14 == 1;
      if (v14 == 1)
      {
        v16 = 48;
      }

      else
      {
        v16 = 0;
      }

      if (v15)
      {
        v17 = 0xE100000000000000;
      }

      else
      {
        v17 = 0xE000000000000000;
      }

      MEMORY[0x1B2726E80](v16, v17);

      MEMORY[0x1B2726E80](v11, v13);

      MEMORY[0x1B2726E80](32, 0xE100000000000000);

      if (!--a3)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_20:
  __break(1u);
}

char *ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)(const void *a1, uint64_t a2, unsigned int a3)
{
  v7 = *v3;
  v8 = *(v3 + 4);
  v9 = *(v3 + 10);
  v10 = *(v3 + 22);
  swift_beginAccess();
  result = sub_1B04391FC(a3, *(v7 + 24) + (v10 | (v9 << 8)), *(v7 + 24) + (v10 | (v9 << 8)) + v8 - (v10 | (v9 << 8)));
  if (v12)
  {
    v13 = a1 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    return memmove(&result[v12], a1, a2 - a1);
  }

  return result;
}

void ByteBuffer._setSlowPath<A>(bytes:at:)(uint64_t *a1, Swift::UInt32 a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v31 = &v29 - v10;
  if (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E53C8, &qword_1B0ECFB78) == a3)
  {
    v19 = *a1;
    v20 = a1[1];
    v21 = a1[2];

    sub_1B0D4E7A0(v19, v20, v21, a2);
  }

  else
  {
    v11 = sub_1B0E44F28();
    v12 = a2 + v11;
    if (!__CFADD__(a2, v11))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = *(v5 + 16);
        v14 = v12 >= v13;
        v15 = v12 - v13;
        if (v14)
        {
          v16 = v15;
        }

        else
        {
          v16 = 0;
        }

        v17 = sub_1B03904C0();
        ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v16, v17 & 1);
      }

      v30 = v9;
      sub_1B0BD0DC8(v11, v5, a2);
      v18 = sub_1B0E45D98();
      swift_getAssociatedConformanceWitness();
      sub_1B0E45E38();
      if (v34 == 1)
      {
LABEL_18:
        (*(v30 + 8))(v31, AssociatedTypeWitness);
        return;
      }

      v22 = a2;
      v23 = a2;
      while (1)
      {
        v24 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if ((v24 & 0x8000000000000000) != 0)
        {
          goto LABEL_20;
        }

        if (HIDWORD(v24))
        {
          goto LABEL_21;
        }

        v25 = v33;
        ByteBuffer._ensureAvailableCapacity(_:at:)(v18 + 1, v22);
        v26 = *v5;
        v27 = *(v5 + 20);
        v28 = *(v5 + 22);
        swift_beginAccess();
        *(*(v26 + 24) + (v28 | (v27 << 8)) + v23 + v18) = v25;
        sub_1B0E45E38();
        ++v18;
        if (v34 == 1)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
    }

    __break(1u);
  }
}

void ByteBuffer._setBytes<A>(_:at:)(uint64_t *a1, Swift::UInt32 a2, uint64_t a3, uint64_t a4)
{
  sub_1B0E44F38();
  if (v8)
  {
    ByteBuffer._setSlowPath<A>(bytes:at:)(a1, a2, a3, a4);
  }
}

Swift::Void __swiftcall ByteBuffer.reserveCapacity(minimumWritableBytes:)(Swift::Int minimumWritableBytes)
{
  v2 = *(v1 + 12);
  v3 = v2 + minimumWritableBytes;
  if (__OFADD__(v2, minimumWritableBytes))
  {
    __break(1u);
  }

  else if (v3 > *(v1 + 16) - (*(v1 + 22) | (*(v1 + 20) << 8)))
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {

      ByteBuffer._ensureAvailableCapacity(_:at:)(v3, 0);
    }

    else
    {
      v4 = sub_1B03904C0() & 1;

      ByteBuffer._copyStorageAndRebase(capacity:resetIndices:)(v3, v4);
    }
  }
}

Swift::Void __swiftcall ByteBuffer._copyStorageAndRebaseIfNeeded()()
{
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v0 = sub_1B03904C0();
    v1 = sub_1B03904C0() & 1;

    ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v0, v1);
  }
}

uint64_t ByteBuffer.withUnsafeMutableWritableBytes<A>(_:)(uint64_t (*a1)(uint64_t, uint64_t))
{
  ByteBuffer._copyStorageAndRebaseIfNeeded()();
  v3 = *v1;
  v4 = *(v1 + 4);
  v5 = *(v1 + 10);
  v6 = *(v1 + 22);
  swift_beginAccess();
  v7 = sub_1B04391FC(*(v1 + 3), *(v3 + 24) + (v6 | (v5 << 8)), *(v3 + 24) + (v6 | (v5 << 8)) + v4 - (v6 | (v5 << 8)));
  if (v9)
  {
    v10 = v9 + v8;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = v9 + v7;
  }

  else
  {
    v11 = 0;
  }

  return a1(v11, v10);
}

uint64_t ByteBuffer.writeWithUnsafeMutableBytes(minimumWritableBytes:_:)(Swift::Int a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = v2;
  if (a1 >= 1)
  {
    ByteBuffer.reserveCapacity(minimumWritableBytes:)(a1);
  }

  ByteBuffer._copyStorageAndRebaseIfNeeded()();
  v6 = *v2;
  v7 = *(v4 + 4);
  v8 = *(v4 + 10);
  v9 = *(v4 + 22);
  swift_beginAccess();
  v10 = v9 | (v8 << 8);
  v11 = (v7 - v10);
  v12 = *(v4 + 3);
  v13 = sub_1B04391FC(v12, *(v6 + 24) + v10, *(v6 + 24) + v10 + v11);
  if (v15)
  {
    v16 = v15 + v14;
  }

  else
  {
    v16 = 0;
  }

  if (v15)
  {
    v17 = v15 + v13;
  }

  else
  {
    v17 = 0;
  }

  result = a2(v17, v16);
  if (!v3)
  {
    if (__CFADD__(v12, result))
    {
      __break(1u);
    }

    else
    {
      *(v4 + 3) = v12 + result;
    }
  }

  return result;
}

uint64_t ByteBuffer.writeWithUnsafeMutableBytes(_:)(uint64_t (*a1)(uint64_t, uint64_t))
{
  v3 = v1;
  ByteBuffer._copyStorageAndRebaseIfNeeded()();
  v5 = *v1;
  v6 = *(v3 + 4);
  v7 = *(v3 + 10);
  v8 = *(v3 + 22);
  swift_beginAccess();
  v9 = v8 | (v7 << 8);
  v10 = (v6 - v9);
  v11 = *(v3 + 3);
  v12 = sub_1B04391FC(v11, *(v5 + 24) + v9, *(v5 + 24) + v9 + v10);
  if (v14)
  {
    v15 = v14 + v13;
  }

  else
  {
    v15 = 0;
  }

  if (v14)
  {
    v16 = v14 + v12;
  }

  else
  {
    v16 = 0;
  }

  result = a1(v16, v15);
  if (!v2)
  {
    if (__CFADD__(v11, result))
    {
      __break(1u);
    }

    else
    {
      *(v3 + 3) = v11 + result;
    }
  }

  return result;
}

uint64_t ByteBuffer.withVeryUnsafeBytes<A>(_:)(uint64_t (*a1)(unint64_t, unint64_t), uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  swift_beginAccess();
  v8 = (a5 >> 24) & 0xFFFF00 | BYTE6(a5);
  return a1(*(a3 + 24) + v8, *(a3 + 24) + v8 + (a5 - v8));
}

uint64_t ByteBuffer.withUnsafeReadableBytesWithStorageManagement<A>(_:)(uint64_t (*a1)(unint64_t, unint64_t, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  swift_beginAccess();
  v9 = *(a3 + 24) + ((a5 >> 24) & 0xFFFF00 | BYTE6(a5));
  return a1(v9 + a4, v9 + HIDWORD(a4), a3);
}

uint64_t ByteBuffer.withVeryUnsafeBytesWithStorageManagement<A>(_:)(uint64_t (*a1)(unint64_t, unint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  swift_beginAccess();
  v8 = (a5 >> 24) & 0xFFFF00 | BYTE6(a5);
  return a1(*(a3 + 24) + v8, *(a3 + 24) + v8 + (a5 - v8), a3);
}

uint64_t ByteBuffer._copyIntoByteBufferWithSliceIndex0_slowPath(index:length:)(uint64_t result, Swift::UInt32 a2, uint64_t a3)
{
  if (__CFADD__(result, a2))
  {
    __break(1u);
  }

  else
  {

    ByteBuffer._copyStorageAndRebase(capacity:resetIndices:)(a2, 1);
    return a3;
  }

  return result;
}

Swift::Bool __swiftcall ByteBuffer.discardReadBytes()()
{
  v1 = *(v0 + 2);
  if (!v1)
  {
    return v1 != 0;
  }

  v2 = *(v0 + 3);
  if (v1 == v2)
  {
    v0[1] = 0;
    return v1 != 0;
  }

  if (!swift_isUniquelyReferenced_nonNull_native())
  {
    ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(0, 1);
    return v1 != 0;
  }

  v3 = *v0;
  result = swift_beginAccess();
  v5 = *(v0 + 22) | (*(v0 + 10) << 8);
  if (__CFADD__(v5, v1))
  {
    __break(1u);
  }

  else
  {
    v6 = *(v3 + 24);
    v7 = v2 >= v1;
    v8 = v2 - v1;
    v9 = !v7;
    result = memmove((v6 + v5), (v6 + v5 + v1), v8);
    *(v0 + 2) = 0;
    if ((v9 & 1) == 0)
    {
      *(v0 + 3) = v8;
      return v1 != 0;
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall ByteBuffer.clear()()
{
  v1 = v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *v0;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    swift_beginAccess();
    v4 = ByteBuffer._Storage.allocateStorage(capacity:)(*(v3 + 16));

    *v1 = v4;
    v3 = v4;
  }

  swift_beginAccess();
  *(v1 + 4) = *(v3 + 16);
  *(v1 + 10) = 0;
  *(v1 + 22) = 0;
  v1[1] = 0;
}

Swift::Void __swiftcall ByteBuffer.clear(minimumCapacity:)(Swift::UInt32 minimumCapacity)
{
  v2 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    swift_beginAccess();
    if (*(v5 + 16) < minimumCapacity)
    {
      ByteBuffer._Storage.reallocStorage(capacity:)(minimumCapacity);
    }
  }

  else
  {
    v6 = ByteBuffer._Storage.allocateStorage(capacity:)(minimumCapacity);

    *v2 = v6;
    v5 = v6;
  }

  swift_beginAccess();
  *(v2 + 4) = *(v5 + 16);
  *(v2 + 10) = 0;
  *(v2 + 22) = 0;
  v2[1] = 0;
}

Swift::Void __swiftcall ByteBuffer.clear(minimumCapacity:)(Swift::Int minimumCapacity)
{
  if (HIDWORD(minimumCapacity))
  {
    __break(1u);
  }

  else
  {
    v2 = v1;
    v3 = minimumCapacity;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = *v1;
    if (isUniquelyReferenced_nonNull_native)
    {
      swift_beginAccess();
      if (*(v5 + 16) < v3)
      {
        ByteBuffer._Storage.reallocStorage(capacity:)(v3);
      }
    }

    else
    {
      v6 = ByteBuffer._Storage.allocateStorage(capacity:)(v3);

      *v2 = v6;
      v5 = v6;
    }

    swift_beginAccess();
    *(v2 + 4) = *(v5 + 16);
    *(v2 + 10) = 0;
    *(v2 + 22) = 0;
    v2[1] = 0;
  }
}

uint64_t ByteBuffer.description.getter(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_1B0E46298();
  MEMORY[0x1B2726E80](0xD00000000000001ALL, 0x80000001B0F2FB70);
  v3 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v3);

  MEMORY[0x1B2726E80](0x726574697277202CLL, 0xEF203A7865646E49);
  v4 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v4);

  MEMORY[0x1B2726E80](0xD000000000000011, 0x80000001B0F2FB90);
  v5 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v5);

  MEMORY[0x1B2726E80](0x696361706163202CLL, 0xEC000000203A7974);
  v6 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v6);

  MEMORY[0x1B2726E80](0xD000000000000013, 0x80000001B0F2FBB0);
  swift_beginAccess();
  v7 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v7);

  MEMORY[0x1B2726E80](0x3A6563696C73202CLL, 0xE900000000000020);
  v8 = _ByteBufferSlice.description.getter();
  MEMORY[0x1B2726E80](v8);

  MEMORY[0x1B2726E80](0x6761726F7473202CLL, 0xEB00000000203A65);
  swift_beginAccess();
  sub_1B0E46508();
  MEMORY[0x1B2726E80](10272, 0xE200000000000000);
  v9 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v9);

  MEMORY[0x1B2726E80](0x2029736574796220, 0xE90000000000007DLL);
  return 0;
}

uint64_t ByteBuffer.debugDescription.getter(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = HIDWORD(a2);
  sub_1B0E46298();
  v7 = ByteBuffer.description.getter(a1, a2, a3 & 0xFFFFFFFFFFFFFFLL);

  MEMORY[0x1B2726E80](0xD00000000000001ALL, 0x80000001B0F2FBD0);
  if ((v6 - a2) >= 0x400uLL)
  {
    v8 = 1024;
  }

  else
  {
    v8 = (v6 - a2);
  }

  sub_1B0D503F4(a3 & 0xFFFFFFFFFFFFFFLL, a2, v8);
  MEMORY[0x1B2726E80]();

  return v7;
}

Swift::Void __swiftcall ByteBuffer.moveWriterIndex(forwardBy:)(Swift::Int forwardBy)
{
  v2 = *(v1 + 12);
  v3 = __CFADD__(v2, forwardBy);
  v4 = v2 + forwardBy;
  if (v3)
  {
    __break(1u);
  }

  else if (*(v1 + 16) - (*(v1 + 22) | (*(v1 + 20) << 8)) >= v4)
  {
    *(v1 + 12) = v4;
    return;
  }

  __break(1u);
}

Swift::Void __swiftcall ByteBuffer.moveWriterIndex(to:)(Swift::Int to)
{
  if (*(v1 + 16) - (*(v1 + 22) | (*(v1 + 20) << 8)) < to)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 12) = to;
  }
}

Swift::Int __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ByteBuffer.copyBytes(at:to:length:)(Swift::Int at, Swift::Int to, Swift::Int length)
{
  if (length < 0)
  {
    v6 = 0;
    goto LABEL_8;
  }

  v4 = length;
  if (!length)
  {
    return v4;
  }

  if (*(v3 + 2) > at)
  {
LABEL_6:
    v6 = 1;
LABEL_8:
    sub_1B0D51D24();
    swift_allocError();
    *v7 = v6;
    swift_willThrow();
    return v4;
  }

  if (__OFADD__(at, length))
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v5 = *(v3 + 3);
  if (at + length > v5)
  {
    goto LABEL_6;
  }

  v9 = at;
  at = swift_isUniquelyReferenced_nonNull_native();
  if (at)
  {
LABEL_15:
    if (!HIDWORD(v4))
    {
      v11 = to;
      ByteBuffer._ensureAvailableCapacity(_:at:)(v4, to);
      ByteBuffer._copyStorageAndRebaseIfNeeded()();
      v12 = *v3;
      v13 = *(v3 + 4);
      v14 = *(v3 + 10);
      v15 = *(v3 + 22);
      swift_beginAccess();
      v16 = v15 | (v14 << 8);
      v17 = *(v12 + 24) + v16;
      v18 = sub_1B04391FC(v11, v17, v17 + (v13 - v16));
      if (v19)
      {
        memmove((v19 + v18), (v17 + v9), v4);
      }

      return v4;
    }

    goto LABEL_19;
  }

  if (!__OFADD__(to, v4))
  {
    if (v5 <= to + v4)
    {
      LODWORD(v5) = to + v4;
    }

    v10 = sub_1B03904C0();
    ByteBuffer._copyStorageAndRebase(capacity:resetIndices:)(v5, v10 & 1);
    goto LABEL_15;
  }

LABEL_20:
  __break(1u);
  return at;
}

uint64_t ByteBuffer.CopyBytesError.hashValue.getter(char a1)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a1 & 1);
  return sub_1B0E46CB8();
}

uint64_t ByteBuffer.hashValue.getter(uint64_t a1, unint64_t a2, unint64_t a3)
{
  sub_1B0E46C28();
  swift_beginAccess();
  sub_1B0E46C38();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D51BA0(uint64_t a1)
{
  sub_1B0E46C28();
  swift_beginAccess();
  sub_1B0E46C38();
  return sub_1B0E46CB8();
}

uint64_t ByteBuffer.modifyIfUniquelyOwned<A>(_:)@<X0>(uint64_t (*a1)(void *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    result = a1(v3);
    if (v4)
    {
      return result;
    }

    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  return (*(*(a2 - 8) + 56))(a3, v9, 1, a2);
}

void sub_1B0D51CD4(const void *a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  if (a1)
  {
    v5 = a1 + a2;
  }

  else
  {
    v5 = 0;
  }

  ByteBuffer._setBytes(_:at:)(a1, v5, *(v3 + 24));
  *a3 = v6;
}

unint64_t sub_1B0D51D24()
{
  result = qword_1EB6E70C8;
  if (!qword_1EB6E70C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E70C8);
  }

  return result;
}

unint64_t sub_1B0D51D7C()
{
  result = qword_1EB6E70D0;
  if (!qword_1EB6E70D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E70D0);
  }

  return result;
}

unint64_t sub_1B0D51DD4()
{
  result = qword_1EB6E70D8;
  if (!qword_1EB6E70D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E70D8);
  }

  return result;
}

_DWORD *__swift_memcpy7_4(_DWORD *result, int *a2)
{
  v2 = *a2;
  *(result + 3) = *(a2 + 3);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for _ByteBufferSlice(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 7))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for _ByteBufferSlice(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 6) = 0;
    *(result + 4) = 0;
    *result = a2 - 1;
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

  *(result + 7) = v3;
  return result;
}

__n128 __swift_memcpy23_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t sub_1B0D51EC0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 23))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B0D51F08(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 22) = 0;
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 23) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 23) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B0D51FA8()
{
  result = qword_1EB6E70E0;
  if (!qword_1EB6E70E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E70E0);
  }

  return result;
}

uint64_t ByteBuffer.setInteger<A>(_:at:endianness:as:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16[3] = *MEMORY[0x1E69E9840];
  v7 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v10)
  {
    v11 = sub_1B0E46558();
  }

  else
  {
    v11 = sub_1B0E46578();
  }

  MEMORY[0x1EEE9AC00](v11);
  v15 = a2;
  v14 = 803;
  sub_1B0D528BC(v9, sub_1B0D52874, &v16[-4], a5, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v12);
  (*(v7 + 8))(v9, a5);
  return v16[2];
}

uint64_t ByteBuffer.writeInteger<A>(_:endianness:as:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  result = ByteBuffer.setInteger<A>(_:at:endianness:as:)(a1, *(v4 + 12), a2 & 1, a4, a4);
  v6 = *(v4 + 12);
  v7 = __CFADD__(v6, result);
  v8 = v6 + result;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 12) = v8;
  }

  return result;
}

uint64_t ByteBuffer._toEndianness<A>(value:endianness:)(double a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3)
  {
    return sub_1B0E46558();
  }

  else
  {
    return sub_1B0E46578();
  }
}

uint64_t ByteBuffer.readInteger<A>(endianness:as:)@<X0>(uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_1B0E45D88();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - v8;
  v10 = *(v3 + 8);
  ByteBuffer.getInteger<A>(at:endianness:as:)(v10, v10 | (*(v3 + 12) << 32), *(v3 + 16) | (*(v3 + 20) << 32) | (*(v3 + 22) << 48), a2, &v17 - v8);
  v11 = *(a2 - 8);
  if ((*(v11 + 48))(v9, 1, a2) == 1)
  {
    (*(v7 + 8))(v9, v6);
    v12 = 1;
    return (*(v11 + 56))(a3, v12, 1, a2);
  }

  result = (*(v11 + 32))(a3, v9, a2);
  v14 = *(v11 + 64);
  v15 = __CFADD__(v10, v14);
  v16 = v10 + v14;
  if (!v15)
  {
    v12 = 0;
    *(v3 + 8) = v16;
    return (*(v11 + 56))(a3, v12, 1, a2);
  }

  __break(1u);
  return result;
}

uint64_t ByteBuffer.getInteger<A>(at:endianness:as:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, unint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  v7 = *(a4 - 8);
  v8 = *(v7 + 64);
  if (a1 < a2 || v8 < 0 || (HIDWORD(a2) - a2) - v8 < a1 - a2)
  {
    v9 = *(v7 + 56);

    return v9(a5, 1, 1, a4);
  }

  else
  {
    v41 = v5;
    v42 = v6;
    v11 = MEMORY[0x1E69E7508];
    if (a4 == MEMORY[0x1E69E7508])
    {
      v40 = v7;
      MEMORY[0x1EEE9AC00](a1);
      v36 = v11;
      v37 = v26;
      v38 = v27;
      v39 = v28;
      v31 = v30;
      ByteBuffer.withUnsafeReadableBytes<A>(_:)(sub_1B0D529F8, v35, v32, v33, v29 & 0xFFFFFFFFFFFFFFLL);
      return (*(v40 + 56))(v31, 0, 1, v11);
    }

    else
    {
      MEMORY[0x1EEE9AC00](HIDWORD(a3));
      v34[2] = v12;
      v34[3] = v13;
      v35[0] = v14;
      v35[1] = v15;
      v36 = v16;
      v37 = __PAIR64__(v18, v17);
      LODWORD(v38) = v19;
      WORD2(v38) = v20;
      BYTE6(v38) = v21;
      HIBYTE(v38) = v22 & 1;
      v23 = v17;
      v24 = v16;
      v25 = v19;
      sub_1B0E45D88();
      return ByteBuffer.withUnsafeReadableBytes<A>(_:)(sub_1B0D529B0, v34, v24, v23, v25 & 0xFFFFFFFFFFFFFFLL);
    }
  }
}

uint64_t sub_1B0D525E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W7>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8)
{
  v19 = a4;
  v20 = a5;
  v17 = a2;
  v18 = a3;
  v21 = a6;
  v27 = *MEMORY[0x1E69E9840];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedConformanceWitness();
  sub_1B0E46B38();
  sub_1B0E46A38();
  v23 = a1;
  v24 = v17;
  v25 = v18;
  v26 = v19;
  sub_1B0D528BC(v13, sub_1B0D53534, v22, a7, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v14);
  v15 = v21;
  if (v20)
  {
    sub_1B0E46558();
  }

  else
  {
    sub_1B0E46578();
  }

  (*(v10 + 8))(v13, a7);
  return (*(v10 + 56))(v15, 0, 1, a7);
}

uint64_t sub_1B0D528BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v17(v16, v16 + *(*(v15 - 8) + 64), v14, v12);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a5);
  }

  return result;
}

void FixedWidthInteger.nextPowerOf2()(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *(a2 + 8);
  v36 = *(v7 + 24);
  v37 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v35 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v11 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v33 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v34 = &v30 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v30 - v17;
  v19 = sub_1B0E45FB8();
  v38 = a3;
  if ((v19 & 1) == 0)
  {
    v20 = v11;
    v21 = sub_1B0E45FB8();
    v22 = sub_1B0E45FA8();
    if (v21)
    {
      if (v22 <= 64)
      {
        swift_getAssociatedConformanceWitness();
        sub_1B0E46B38();
        sub_1B0E46A38();
        v23 = sub_1B0E44918();
        v11 = v20;
        (*(v20 + 8))(v18, a1);
        if ((v23 & 1) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_3;
      }
    }

    else if (v22 < 64)
    {
      v11 = v20;
      if (!sub_1B0E45F98())
      {
        goto LABEL_16;
      }

      goto LABEL_10;
    }

    v39 = 0;
    sub_1B03948EC();
    sub_1B0E45F78();
    v29 = sub_1B0E44A28();
    v11 = v20;
    (*(v20 + 8))(v18, a1);
    if ((v29 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_16:
    swift_getAssociatedConformanceWitness();
    sub_1B0E46B38();
    sub_1B0E46A38();
    return;
  }

  if (sub_1B0E45FA8() >= 64)
  {
    v39 = 0;
    sub_1B03948EC();
    sub_1B0E45F78();
    v24 = sub_1B0E44A28();
    (*(v11 + 8))(v18, a1);
    if ((v24 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_16;
  }

LABEL_3:
  if (!sub_1B0E45F98())
  {
    goto LABEL_16;
  }

LABEL_10:
  v30 = v7;
  swift_getAssociatedConformanceWitness();
  v32 = v4;
  sub_1B0E46B38();
  sub_1B0E46A38();
  v31 = sub_1B0E46548();
  sub_1B0E46B38();
  v25 = v33;
  sub_1B0E46A38();
  v26 = v34;
  sub_1B0E465E8();
  v27 = *(v11 + 8);
  v27(v25, a1);
  v28 = sub_1B0E46568();
  v27(v26, a1);
  if (__OFSUB__(v31, v28))
  {
    __break(1u);
  }

  else
  {
    v39 = v31 - v28;
    sub_1B03948EC();
    sub_1B0E45F88();
    v27(v18, a1);
  }
}