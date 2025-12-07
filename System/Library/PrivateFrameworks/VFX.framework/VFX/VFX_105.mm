uint64_t sub_1AF9157EC(char a1)
{
  v2 = v1;
  sub_1AF483618(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1AFDFC318();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    (*(v8 + 16))(v11, v2 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v7, v9);
  }

  else
  {
    sub_1AFDFC308();
  }

  v12 = *(v2 + OBJC_IVAR____TtC3VFX21AuthoringSubGraphNode_graph);

  v13 = sub_1AF96FB80(1);
  v14 = *(v2 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs);
  (*(v8 + 16))(v6, v11, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v15 = swift_allocObject();

  sub_1AF91526C(v12, v13, v14, v6);
  (*(v8 + 8))(v11, v7);
  v16 = *(v2 + OBJC_IVAR____TtC3VFX13AuthoringNode_position + 16);
  v17 = v15 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
  *v17 = *(v2 + OBJC_IVAR____TtC3VFX13AuthoringNode_position);
  *(v17 + 16) = v16;
  v18 = *(v2 + OBJC_IVAR____TtC3VFX13AuthoringNode_size + 16);
  v19 = v15 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
  *v19 = *(v2 + OBJC_IVAR____TtC3VFX13AuthoringNode_size);
  *(v19 + 16) = v18;
  v20 = *(v2 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex + 8);
  v21 = v15 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
  *v21 = *(v2 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex);
  *(v21 + 8) = v20;
  v22 = *(v2 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName + 8);
  v23 = (v15 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
  *v23 = *(v2 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
  v23[1] = v22;

  return v15;
}

uint64_t sub_1AF915ACC()
{
  v1 = OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
  v2 = sub_1AFDFC318();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1AF915C2C()
{
  v1 = *(v0 + OBJC_IVAR____TtC3VFX12SubGraphNode_name);

  return v1;
}

uint64_t sub_1AF915C68@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(v2 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph))
  {
    v18 = 0;
    v19 = 0;
    MEMORY[0x1EEE9AC00](a1);
    v16[6] = &v19;
    v16[7] = &v18;
    MEMORY[0x1EEE9AC00](v4);
    v16[2] = sub_1AF919DEC;
    v16[3] = v5;

    v6 = MEMORY[0x1E69E7CC0];
    v17[0] = sub_1AF42B0F4(MEMORY[0x1E69E7CC0]);
    v17[1] = v7;
    sub_1AF412D4C(sub_1AF919F20, v16, 1, 0x1000000000000000uLL, 0, v6, v17);

    v10 = v18;
    v9 = v19;
    v11 = MEMORY[0x1E69E7CC0];
    v12 = &unk_1F24F37E0;
    v13 = MEMORY[0x1E69E7CC0];
    v14 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v15 = (v2 + OBJC_IVAR____TtC3VFX12SubGraphNode__signature);
    v9 = *(v2 + OBJC_IVAR____TtC3VFX12SubGraphNode__signature);
    v10 = v15[1];
    v12 = v15[2];
    v11 = v15[3];
    v13 = v15[4];
    v14 = v15[5];
  }

  *a2 = v9;
  a2[1] = v10;
  a2[2] = v12;
  a2[3] = v11;
  a2[4] = v13;
  a2[5] = v14;
  return result;
}

uint64_t sub_1AF915E18(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  if (!*(*(result + 16) + 16))
  {
    v3 = *(result + 8);
    if (*v3 == _TtC3VFX17SubGraphEnterNode)
    {
      v4 = *(v3 + OBJC_IVAR____TtC3VFX20SubGraphEndpointNode__signature + 8);
      v5 = *(v4 + 16);
      v6 = v5 != 0;
      v7 = (2 * v5) | 1;

      v10 = sub_1AF61FB90(v9, v4 + 32, v6, v7);

      *a2 = v10;
    }

    else
    {
      if (*v3 != _TtC3VFX18SubGraphReturnNode)
      {
        return result;
      }

      *a3 = *(v3 + OBJC_IVAR____TtC3VFX20SubGraphEndpointNode__signature);
    }
  }

  return result;
}

char *sub_1AF915F50(char *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC3VFX12SubGraphNode_name);
  *v3 = 0x6870617247627553;
  v3[1] = 0xE800000000000000;
  v4 = OBJC_IVAR____TtC3VFX12SubGraphNode_graph;
  *(v1 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph) = 0;
  v5 = *&a1[OBJC_IVAR____TtC3VFX12SubGraphNode_name + 8];
  *v3 = *&a1[OBJC_IVAR____TtC3VFX12SubGraphNode_name];
  v3[1] = v5;
  *(v1 + v4) = *&a1[OBJC_IVAR____TtC3VFX12SubGraphNode_graph];
  v6 = *&a1[OBJC_IVAR____TtC3VFX12SubGraphNode__signature + 8];
  v7 = *&a1[OBJC_IVAR____TtC3VFX12SubGraphNode__signature + 16];
  v8 = *&a1[OBJC_IVAR____TtC3VFX12SubGraphNode__signature + 24];
  v9 = *&a1[OBJC_IVAR____TtC3VFX12SubGraphNode__signature + 32];
  v10 = *&a1[OBJC_IVAR____TtC3VFX12SubGraphNode__signature + 40];
  v11 = (v1 + OBJC_IVAR____TtC3VFX12SubGraphNode__signature);
  *v11 = *&a1[OBJC_IVAR____TtC3VFX12SubGraphNode__signature];
  v11[1] = v6;
  v11[2] = v7;
  v11[3] = v8;
  v11[4] = v9;
  v11[5] = v10;

  return sub_1AF96FD00(a1);
}

uint64_t sub_1AF916060()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF916150(uint64_t a1)
{
  sub_1AFDFD038();
}

uint64_t sub_1AF91622C(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

unint64_t sub_1AF916318@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF918AE0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1AF916348(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701667182;
  v5 = 0xEB00000000746E75;
  v6 = 0x6F4374757074756FLL;
  v7 = 0x6D614E7475706E69;
  v8 = 0xEB0000000073656DLL;
  if (v2 == 3)
  {
    v8 = 0xEA00000000007365;
  }

  else
  {
    v7 = 0x614E74757074756FLL;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = v8;
  }

  if (*v1)
  {
    v4 = 0x756F437475706E69;
    v3 = 0xEA0000000000746ELL;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1AF9163F4()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x6F4374757074756FLL;
  v4 = 0x6D614E7475706E69;
  if (v1 != 3)
  {
    v4 = 0x614E74757074756FLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x756F437475706E69;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1AF91649C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF918AE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AF9164C4(uint64_t a1)
{
  v2 = sub_1AF918A8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF916500(uint64_t a1)
{
  v2 = sub_1AF918A8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF91653C(void *a1)
{
  v3 = v1;
  sub_1AF9192B0(0, &qword_1EB640610, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v17 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF918A8C();
  sub_1AFDFF3F8();
  v18 = 0;

  sub_1AFDFE8B8();
  if (v2)
  {
    (*(v7 + 8))(v9, v6);
  }

  else
  {

    v10 = (v3 + OBJC_IVAR____TtC3VFX12SubGraphNode__signature);
    v11 = *(v3 + OBJC_IVAR____TtC3VFX12SubGraphNode__signature);
    v12 = v10[1];
    v13 = v10[2];
    v14 = v10[3];
    v15 = v10[4];

    v17[1] = v13;

    sub_1AF918B2C(v11, v12, v14, v15);
    (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_1AF916774(void *a1)
{
  v3 = v1;
  sub_1AF9192B0(0, &qword_1EB640600, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-v8];
  sub_1AF441150(a1, a1[3]);
  sub_1AF918A8C();
  result = sub_1AFDFF3B8();
  if (!v2)
  {
    v16[15] = 0;
    v11 = sub_1AFDFE708();
    v12 = (v3 + OBJC_IVAR____TtC3VFX12SubGraphNode_name);
    *v12 = v11;
    v12[1] = v13;

    sub_1AF918F0C(v17);
    (*(v7 + 8))(v9, v6);
    v14 = (v3 + OBJC_IVAR____TtC3VFX12SubGraphNode__signature);
    v15 = v17[1];
    *v14 = v17[0];
    v14[1] = v15;
    v14[2] = v17[2];
  }

  return result;
}

uint64_t sub_1AF916988()
{
  v0 = MEMORY[0x1E69E7CC0];
  v18 = MEMORY[0x1E69E7CC0];
  v17 = MEMORY[0x1E69E7CD0];
  v14 = &v17;
  v11 = sub_1AF919398;
  v12 = &v13;

  v15 = sub_1AF42B0F4(v0);
  v16 = v1;
  sub_1AF412D4C(sub_1AF9193B4, v10, 1, 0x1000000000000000uLL, 0, v0, &v15);

  v3 = v17;
  MEMORY[0x1EEE9AC00](v2);
  v9[6] = v3;
  v9[7] = &v18;
  MEMORY[0x1EEE9AC00](v4);
  v9[2] = sub_1AF9193CC;
  v9[3] = v5;

  v6 = MEMORY[0x1E69E7CC0];
  v15 = sub_1AF42B0F4(MEMORY[0x1E69E7CC0]);
  v16 = v7;
  sub_1AF412D4C(sub_1AF919F20, v9, 1, 0x1000000000000000uLL, 0, v6, &v15);

  return v18;
}

uint64_t sub_1AF916B68(uint64_t result, uint64_t a2)
{
  if (!*(*(result + 16) + 16))
  {
    v2 = *(result + 8);
    result = sub_1AF7025B4(v2, a2);
    if ((result & 1) == 0)
    {
      v3 = *v2;
      result = swift_conformsToProtocol2();
      if (result)
      {
        v4 = *(result + 48);
        v5 = result;

        v6 = v4(v3, v5);
        sub_1AF490C24(v6);
      }
    }
  }

  return result;
}

uint64_t sub_1AF916C54(unsigned __int8 *a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v95 = *a1;
  if (v95 == 3)
  {
    sub_1AFDFE218();

    v96 = 0xD000000000000024;
    v97 = 0x80000001AFF3A8D0;
    v4 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v4);

    MEMORY[0x1B2718AE0](15145, 0xE200000000000000);
    sub_1AF919A38(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1AFE431C0;
    *(inited + 32) = 0xD000000000000024;
    *(inited + 40) = 0x80000001AFF3A8D0;
    sub_1AF441DD8(0);
    *(inited + 48) = 0;
    *(inited + 56) = 0;
    v6 = swift_initStackObject();
    *(v6 + 16) = xmmword_1AFE431C0;
    *(v6 + 32) = inited;
    v7 = v6 + 32;
    v91 = sub_1AFA56CA0();
    swift_setDeallocating();
    sub_1AF919968(v7, &unk_1ED723290, &type metadata for CodeEmitter.Code);
    v93 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v8 = *(*(a2 + 32) + 16);

    v92 = v8;
    if (v8)
    {
      v10 = 0;
      v89 = v9 + 32;
      v93 = MEMORY[0x1E69E7CC0];
      v11 = MEMORY[0x1E69E7CC0];
      do
      {
        v94 = v11;
        v12 = *(v89 + 8 * v10);
        sub_1AF442064(v12);
        sub_1AF90EDE8(v12, &v96, 0.0);
        v13 = sub_1AF930984(v12, &v96, 3174949, 0xE300000000000000, v95);
        v15 = v14;
        v17 = v16;
        v19 = v18;
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v96);
        v96 = 0;
        v97 = 0xE000000000000000;
        v20 = sub_1AF937FF8(v95, v12);
        if ((~v20 & 0xF000000000000007) == 0)
        {
          sub_1AF442064(v12);
          v20 = v12;
        }

        v21 = sub_1AF94B594(v95, v20);
        v23 = v22;
        sub_1AF445BE4(v20);
        MEMORY[0x1B2718AE0](v21, v23);

        MEMORY[0x1B2718AE0](7480608, 0xE300000000000000);
        v24 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v24);

        MEMORY[0x1B2718AE0](2112800, 0xE300000000000000);
        MEMORY[0x1B2718AE0](v13, v15);

        MEMORY[0x1B2718AE0](59, 0xE100000000000000);
        v25 = v96;
        v26 = v97;
        sub_1AF919A38(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
        v27 = swift_initStackObject();
        *(v27 + 16) = xmmword_1AFE431C0;
        *(v27 + 32) = v25;
        *(v27 + 40) = v26;
        *(v27 + 48) = 0;
        *(v27 + 56) = 0;
        v96 = v17;
        v97 = v19;
        v28 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v28);

        sub_1AF4486E4();
        v29 = sub_1AFDFDEB8();
        v31 = v30;

        v32 = *(v93 + 2);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v98 = v93;
        if (!isUniquelyReferenced_nonNull_native || v32 >= *(v93 + 3) >> 1)
        {
          v93 = sub_1AF420554(isUniquelyReferenced_nonNull_native, v32 + 1, 1, v93);
          v98 = v93;
        }

        sub_1AF64DF78(0, 0, 1, v29, v31);

        sub_1AF441DD8(0);
        v34 = swift_initStackObject();
        *(v34 + 16) = xmmword_1AFE4C620;
        *(v34 + 32) = v27;
        *(v34 + 40) = MEMORY[0x1E69E7CC0];
        v35 = sub_1AFA56CA0();
        swift_setDeallocating();
        sub_1AF919A38(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
        swift_arrayDestroy();
        v11 = v94;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_1AF426BC8(0, v94[2] + 1, 1, v94);
        }

        v37 = v11[2];
        v36 = v11[3];
        if (v37 >= v36 >> 1)
        {
          v11 = sub_1AF426BC8(v36 > 1, v37 + 1, 1, v11);
        }

        ++v10;
        sub_1AF445BE4(v12);
        v11[2] = v37 + 1;
        v11[v37 + 4] = v35;
      }

      while (v92 != v10);
    }

    else
    {
      v93 = MEMORY[0x1E69E7CC0];
    }

    v38 = sub_1AFA56CA0();

    sub_1AF441DD8(0);
    v39 = swift_initStackObject();
    *(v39 + 16) = xmmword_1AFE431C0;
    *(v39 + 32) = v38;
    v40 = v39 + 32;
    v91 = sub_1AFA56CA0();
    swift_setDeallocating();
    sub_1AF919968(v40, &unk_1ED723290, &type metadata for CodeEmitter.Code);
    v3 = a1;
    v2 = a2;
  }

  v41 = *(v3 + 3);
  v42 = *(v3 + 4);
  v43 = *(v3 + 2);
  v44 = v3[40];

  sub_1AF487F80(v43, v41, v42);

  sub_1AFA55030(v43, v41, 1, v95, v43, v41, v42, v44, v2);
  v46 = v45;
  v48 = v47;

  sub_1AF487074(v43, v41, v42);
  v96 = v46;
  v97 = v48;

  MEMORY[0x1B2718AE0](59, 0xE100000000000000);

  v49 = v96;
  v50 = v97;
  sub_1AF919A38(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
  v51 = swift_initStackObject();
  *(v51 + 16) = xmmword_1AFE431C0;
  *(v51 + 32) = v49;
  *(v51 + 40) = v50;
  *(v51 + 48) = 0;
  *(v51 + 56) = 0;
  v90 = v51;
  if (v95 == 3)
  {
    v52 = *(*(v2 + 32) + 16);
    if (v52)
    {
      v53 = 0;
      v54 = MEMORY[0x1E69E7CC0];
      do
      {
        v96 = 0;
        v97 = 0xE000000000000000;
        sub_1AFDFE218();

        v96 = 0x72252074736E6F63;
        v97 = 0xE800000000000000;
        v55 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v55);

        MEMORY[0x1B2718AE0](0xD000000000000015, 0x80000001AFF3A8B0);
        v56 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v56);

        MEMORY[0x1B2718AE0](15197, 0xE200000000000000);
        v57 = v96;
        v58 = v97;
        v59 = swift_initStackObject();
        *(v59 + 16) = xmmword_1AFE431C0;
        *(v59 + 32) = v57;
        *(v59 + 40) = v58;
        sub_1AF441DD8(0);
        *(v59 + 48) = 0;
        *(v59 + 56) = 0;
        v60 = swift_initStackObject();
        *(v60 + 16) = xmmword_1AFE431C0;
        *(v60 + 32) = v59;
        v61 = v60 + 32;
        v62 = sub_1AFA56CA0();
        swift_setDeallocating();
        sub_1AF919968(v61, &unk_1ED723290, &type metadata for CodeEmitter.Code);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v54 = sub_1AF426BC8(0, v54[2] + 1, 1, v54);
        }

        v64 = v54[2];
        v63 = v54[3];
        if (v64 >= v63 >> 1)
        {
          v54 = sub_1AF426BC8(v63 > 1, v64 + 1, 1, v54);
        }

        ++v53;
        v54[2] = v64 + 1;
        v54[v64 + 4] = v62;
      }

      while (v52 != v53);
    }

    v66 = sub_1AFA56CA0();

    sub_1AF441DD8(0);
    v67 = swift_initStackObject();
    *(v67 + 16) = xmmword_1AFE431C0;
    *(v67 + 32) = v66;
    v68 = v67 + 32;
    v65 = sub_1AFA56CA0();
    swift_setDeallocating();
    sub_1AF919968(v68, &unk_1ED723290, &type metadata for CodeEmitter.Code);
  }

  else
  {
    v65 = MEMORY[0x1E69E7CC0];
  }

  v69 = 0;
  v70 = *(v93 + 2) + 1;
  v71 = MEMORY[0x1E69E7CC0];
LABEL_30:
  v72 = &v93[16 * v69 + 40];
  while (v70 != ++v69)
  {
    v74 = *(v72 - 1);
    v73 = *v72;
    v72 += 16;
    v75 = HIBYTE(v73) & 0xF;
    if ((v73 & 0x2000000000000000) == 0)
    {
      v75 = v74 & 0xFFFFFFFFFFFFLL;
    }

    if (v75)
    {

      v76 = swift_isUniquelyReferenced_nonNull_native();
      v96 = v71;
      if ((v76 & 1) == 0)
      {
        sub_1AFC05CE4(0, *(v71 + 16) + 1, 1);
        v71 = v96;
      }

      v78 = *(v71 + 16);
      v77 = *(v71 + 24);
      if (v78 >= v77 >> 1)
      {
        sub_1AFC05CE4(v77 > 1, v78 + 1, 1);
        v71 = v96;
      }

      *(v71 + 16) = v78 + 1;
      v79 = v71 + 16 * v78;
      *(v79 + 32) = v74;
      *(v79 + 40) = v73;
      goto LABEL_30;
    }
  }

  v80 = *(v71 + 16);

  if (v80)
  {
    v81 = sub_1AFA54F5C(v93);

    sub_1AF441DD8(0);
    v82 = swift_initStackObject();
    *(v82 + 16) = xmmword_1AFE4C620;
    *(v82 + 32) = &unk_1F2504B40;
    *(v82 + 40) = v81;
    v83 = sub_1AFA56CA0();
    swift_setDeallocating();
    sub_1AF919A38(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
    swift_arrayDestroy();
  }

  else
  {

    v83 = MEMORY[0x1E69E7CC0];
  }

  sub_1AF441DD8(0);
  v84 = swift_initStackObject();
  *(v84 + 16) = xmmword_1AFE4C6B0;
  *(v84 + 32) = v91;
  *(v84 + 40) = v90;
  *(v84 + 48) = v65;
  *(v84 + 56) = v83;
  v85 = sub_1AFA56CA0();
  swift_setDeallocating();
  sub_1AF919A38(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  swift_arrayDestroy();
  return v85;
}

uint64_t sub_1AF9177A4()
{
}

uint64_t sub_1AF917844()
{

  sub_1AF919DAC(*(v0 + 24), *(v0 + 32));
  v1 = OBJC_IVAR____TtC3VFX4Node_authoringID;
  v2 = sub_1AFDFC318();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1AF917A3C(unsigned __int8 *a1)
{
  v2 = sub_1AF916C54(a1, v1);
  v3 = sub_1AFA5413C(v2);

  return v3;
}

uint64_t sub_1AF917A8C@<X0>(void *a1@<X8>)
{
  v2 = (v1 + OBJC_IVAR____TtC3VFX20SubGraphEndpointNode__signature);
  v3 = *(v1 + OBJC_IVAR____TtC3VFX20SubGraphEndpointNode__signature);
  v4 = *(v1 + OBJC_IVAR____TtC3VFX20SubGraphEndpointNode__signature + 8);
  v5 = *(v1 + OBJC_IVAR____TtC3VFX20SubGraphEndpointNode__signature + 16);
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
}

uint64_t sub_1AF917B44()
{
}

void *sub_1AF917C40(uint64_t *a1)
{
  v2 = v1;
  v4 = a1[3];
  v5 = MEMORY[0x1E69E7CC0];
  if (*(v4 + 16))
  {

    v6 = v4;
  }

  else
  {
    v13 = *(*a1 + 16);
    v6 = MEMORY[0x1E69E7CC0];
    if (v13)
    {
      v22 = MEMORY[0x1E69E7CC0];
      sub_1AFC05DE8(0, v13, 0);
      v6 = v22;
      v14 = *(v22 + 16);
      v15 = 16 * v14 + 32;
      do
      {
        v22 = v6;
        v16 = *(v6 + 24);
        v17 = v14 + 1;
        if (v14 >= v16 >> 1)
        {
          sub_1AFC05DE8(v16 > 1, v14 + 1, 1);
          v6 = v22;
        }

        *(v6 + 16) = v17;
        v18 = (v6 + v15);
        *v18 = 0;
        v18[1] = 0;
        v15 += 16;
        v14 = v17;
        --v13;
      }

      while (v13);
    }
  }

  sub_1AF919A38(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AFE431C0;
  v8 = swift_allocObject();
  *(v8 + 16) = 0xC000000000000008;
  *(v7 + 32) = v8 | 0x8000000000000000;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AFE431C0;
  v10 = swift_allocObject();
  *(v10 + 16) = 0xC000000000000008;
  *(v9 + 32) = v10 | 0x8000000000000000;
  sub_1AF48F7D8(*a1);
  v22 = a1[1];
  sub_1AF919968(&v22, &qword_1EB638968, &type metadata for TypeConstraint);
  v21 = a1[2];
  sub_1AF919968(&v21, &qword_1EB638968, &type metadata for TypeConstraint);

  v20 = a1[4];
  sub_1AF9199D8(&v20, sub_1AF445C2C);
  v19 = a1[5];
  sub_1AF919968(&v19, &qword_1EB638978, &type metadata for AnyValue);
  sub_1AF48F7B0(v6);
  v11 = (v2 + OBJC_IVAR____TtC3VFX20SubGraphEndpointNode__signature);
  *v11 = v7;
  v11[1] = v9;
  v11[2] = &unk_1F24FFD50;
  v11[3] = v5;
  v11[4] = &unk_1F24FFD20;
  v11[5] = v5;
  v2[3] = 0;
  v2[4] = 0;
  v2[2] = v5;
  sub_1AFDFC308();
  return v2;
}

uint64_t sub_1AF917EEC@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC3VFX20SubGraphEndpointNode__signature;
  v4 = *(v1 + OBJC_IVAR____TtC3VFX20SubGraphEndpointNode__signature + 8);
  v5 = *(v4 + 16);
  v6 = v5 != 0;
  v7 = (2 * v5) | 1;

  v9 = sub_1AF61FB90(v8, v4 + 32, v6, v7);

  v10 = *(v3 + 32);
  v11 = *(v10 + 16);
  v12 = v11 != 0;
  v13 = (2 * v11) | 1;

  v15 = sub_1AF61FBA4(v14, v10 + 32, v12, v13);

  v17 = MEMORY[0x1E69E7CC0];
  *a1 = v9;
  a1[1] = v17;
  a1[2] = &unk_1F24FD790;
  a1[3] = v15;
  a1[4] = v17;
  a1[5] = v17;
  return result;
}

uint64_t sub_1AF917FE4(void *a1)
{
  sub_1AF9192B0(0, &qword_1EB640610, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  sub_1AF441150(a1, a1[3]);
  sub_1AF918A8C();
  sub_1AFDFF3F8();
  sub_1AF917EEC(&v10);
  v22 = v13;
  v23 = v14;
  v20 = v10;
  v21 = v11;
  sub_1AF918B2C(v10, v11, v13, v14);
  (*(v5 + 8))(v7, v4);
  sub_1AF919968(&v20, &qword_1EB638968, &type metadata for TypeConstraint);
  sub_1AF919968(&v21, &qword_1EB638968, &type metadata for TypeConstraint);
  if (v1)
  {
    v19 = v12;
    sub_1AF919968(&v19, &qword_1EB638968, &type metadata for TypeConstraint);
    sub_1AF9199D8(&v22, sub_1AF445C2C);
    sub_1AF9199D8(&v23, sub_1AF445C2C);
    v18 = v15;
    v8 = &v18;
  }

  else
  {
    v17 = v12;
    sub_1AF919968(&v17, &qword_1EB638968, &type metadata for TypeConstraint);
    sub_1AF9199D8(&v22, sub_1AF445C2C);
    sub_1AF9199D8(&v23, sub_1AF445C2C);
    v16 = v15;
    v8 = &v16;
  }

  return sub_1AF919968(v8, &qword_1EB638978, &type metadata for AnyValue);
}

void *sub_1AF9182C0(uint64_t *a1)
{
  v3 = a1[1];
  sub_1AF919A38(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AFE431C0;
  v5 = swift_allocObject();
  *(v5 + 16) = 0xC000000000000008;
  *(v4 + 32) = v5 | 0x8000000000000000;
  v6 = a1[4];
  v13 = *a1;

  sub_1AF919968(&v13, &qword_1EB638968, &type metadata for TypeConstraint);
  v12 = a1[2];
  sub_1AF919968(&v12, &qword_1EB638968, &type metadata for TypeConstraint);
  v11 = a1[3];
  sub_1AF9199D8(&v11, sub_1AF445C2C);

  v10 = a1[5];
  sub_1AF919968(&v10, &qword_1EB638978, &type metadata for AnyValue);
  v7 = (v1 + OBJC_IVAR____TtC3VFX20SubGraphEndpointNode__signature);
  *v7 = v3;
  v7[1] = v4;
  v7[2] = &unk_1F24FFD80;
  v7[3] = v6;
  v8 = MEMORY[0x1E69E7CC0];
  v7[4] = MEMORY[0x1E69E7CC0];
  v7[5] = v8;
  v1[2] = v8;
  v1[3] = 0;
  v1[4] = 0;
  sub_1AFDFC308();
  return v1;
}

char *sub_1AF918450(char *a1)
{
  v2 = swift_allocObject();
  v3 = *&a1[OBJC_IVAR____TtC3VFX20SubGraphEndpointNode__signature + 8];
  v4 = *&a1[OBJC_IVAR____TtC3VFX20SubGraphEndpointNode__signature + 16];
  v5 = *&a1[OBJC_IVAR____TtC3VFX20SubGraphEndpointNode__signature + 24];
  v6 = *&a1[OBJC_IVAR____TtC3VFX20SubGraphEndpointNode__signature + 32];
  v7 = *&a1[OBJC_IVAR____TtC3VFX20SubGraphEndpointNode__signature + 40];
  v8 = (v2 + OBJC_IVAR____TtC3VFX20SubGraphEndpointNode__signature);
  *v8 = *&a1[OBJC_IVAR____TtC3VFX20SubGraphEndpointNode__signature];
  v8[1] = v3;
  v8[2] = v4;
  v8[3] = v5;
  v8[4] = v6;
  v8[5] = v7;

  return sub_1AF96FD00(a1);
}

uint64_t sub_1AF9184F8(void *a1, void (*a2)(uint64_t *))
{
  v24 = a2;
  v4 = v2;
  sub_1AF9192B0(0, &qword_1EB640600, MEMORY[0x1E69E6F48]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v22 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AF918A8C();
  result = sub_1AFDFF3B8();
  if (!v3)
  {
    v12 = v24;
    sub_1AF918F0C(v23);
    v22[1] = 0;
    v13 = swift_allocObject();
    v12(v23);
    (*(v8 + 8))(v10, v7);
    v14 = *(v13 + OBJC_IVAR____TtC3VFX20SubGraphEndpointNode__signature);
    v15 = *(v13 + OBJC_IVAR____TtC3VFX20SubGraphEndpointNode__signature + 8);
    v16 = *(v13 + OBJC_IVAR____TtC3VFX20SubGraphEndpointNode__signature + 16);
    v17 = *(v13 + OBJC_IVAR____TtC3VFX20SubGraphEndpointNode__signature + 24);
    v18 = *(v13 + OBJC_IVAR____TtC3VFX20SubGraphEndpointNode__signature + 32);
    v19 = *(v13 + OBJC_IVAR____TtC3VFX20SubGraphEndpointNode__signature + 40);

    v20 = (v4 + OBJC_IVAR____TtC3VFX20SubGraphEndpointNode__signature);
    v21 = *(v4 + OBJC_IVAR____TtC3VFX20SubGraphEndpointNode__signature + 8);
    v24 = *(v4 + OBJC_IVAR____TtC3VFX20SubGraphEndpointNode__signature);
    v22[0] = v21;
    *v20 = v14;
    v20[1] = v15;
    v20[2] = v16;
    v20[3] = v17;
    v20[4] = v18;
    v20[5] = v19;
  }

  return result;
}

uint64_t sub_1AF91875C()
{

  sub_1AF919DAC(*(v0 + 24), *(v0 + 32));
  v1 = OBJC_IVAR____TtC3VFX4Node_authoringID;
  v2 = sub_1AFDFC318();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1AF9188C0(void *a1)
{
  v2 = v1;
  sub_1AF9192B0(0, &qword_1EB640610, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AF918A8C();
  sub_1AFDFF3F8();
  v9 = v2 + OBJC_IVAR____TtC3VFX20SubGraphEndpointNode__signature;
  v10 = *(v2 + OBJC_IVAR____TtC3VFX20SubGraphEndpointNode__signature);
  v11 = *(v9 + 24);

  sub_1AF918B2C(MEMORY[0x1E69E7CC0], v10, MEMORY[0x1E69E7CC0], v11);
  (*(v6 + 8))(v8, v5);

  swift_arrayDestroy();
}

unint64_t sub_1AF918A8C()
{
  result = qword_1EB640608;
  if (!qword_1EB640608)
  {
    result = swift_getWitnessTable(byte_1AFE85700, &type metadata for SubGraphNode.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB640608);
  }

  return result;
}

unint64_t sub_1AF918AE0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AFDFE638();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1AF918B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v34 = *(a1 + 16);
  if (v34)
  {
    v30 = a2;
    v35 = MEMORY[0x1E69E7CC0];
    sub_1AFC05CE4(0, v34, 0);
    v6 = v34;
    v7 = 0;
    v8 = *(a3 + 16);
    v9 = (a3 + 40);
    do
    {
      if (v7 < v8 && *v9)
      {
        sub_1AF4486E4();
        v10 = sub_1AFDFDE98();
        v11 = *(v10 + 32);
        v12 = *(v10 + 40);

        v6 = v34;
      }

      else
      {
        v11 = 0;
        v12 = 0xE000000000000000;
      }

      v14 = *(v35 + 16);
      v13 = *(v35 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1AFC05CE4(v13 > 1, v14 + 1, 1);
        v6 = v34;
      }

      ++v7;
      *(v35 + 16) = v14 + 1;
      v15 = v35 + 16 * v14;
      *(v15 + 32) = v11;
      *(v15 + 40) = v12;
      v9 += 2;
    }

    while (v6 != v7);
    v4 = a4;
    a2 = v30;
  }

  v33 = *(a2 + 16);
  if (v33)
  {
    v36 = MEMORY[0x1E69E7CC0];
    sub_1AFC05CE4(0, v33, 0);
    v16 = v33;
    v17 = 0;
    v18 = v36;
    v19 = *(v4 + 16);
    v20 = (v4 + 40);
    do
    {
      if (v17 < v19 && *v20)
      {
        v21 = v19;
        sub_1AF4486E4();
        v22 = sub_1AFDFDE98();
        v23 = *(v22 + 32);
        v24 = *(v22 + 40);

        v19 = v21;
        v16 = v33;
      }

      else
      {
        v23 = 0;
        v24 = 0xE000000000000000;
      }

      v37 = v18;
      v26 = *(v18 + 16);
      v25 = *(v18 + 24);
      if (v26 >= v25 >> 1)
      {
        v28 = v19;
        sub_1AFC05CE4(v25 > 1, v26 + 1, 1);
        v19 = v28;
        v16 = v33;
        v18 = v37;
      }

      ++v17;
      *(v18 + 16) = v26 + 1;
      v27 = v18 + 16 * v26;
      *(v27 + 32) = v23;
      *(v27 + 40) = v24;
      v20 += 2;
    }

    while (v16 != v17);
  }

  sub_1AF9192B0(0, &qword_1EB640610, MEMORY[0x1E69E6F58]);
  sub_1AFDFE8F8();
  if (v31)
  {
  }

  else
  {
    sub_1AFDFE8F8();
    sub_1AF919A38(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1AF919314(&qword_1EB639870, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    sub_1AFDFE918();

    sub_1AFDFE918();
  }
}

uint64_t sub_1AF918F0C@<X0>(uint64_t *a1@<X8>)
{
  sub_1AF9192B0(0, &qword_1EB640600, MEMORY[0x1E69E6F48]);
  result = sub_1AFDFE748();
  if (v1)
  {
    return result;
  }

  v4 = result;
  LOBYTE(v32) = 2;
  v5 = sub_1AFDFE748();
  sub_1AF919A38(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1AF919314(&qword_1ED726C58, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
  sub_1AFDFE768();
  v6 = v32;
  sub_1AFDFE768();
  v7 = v32;
  if (v4 < 1)
  {
    v9 = v4;
    v8 = MEMORY[0x1E69E7CC0];
    if (!v4)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v8 = sub_1AFDFD488();
    v9 = v4;
    *(v8 + 16) = v4;
  }

  memset_pattern16((v8 + 32), &unk_1AFE854D0, 8 * v9);
LABEL_6:
  if (v5 >= 1)
  {
    v10 = sub_1AFDFD488();
    v11 = v5;
    *(v10 + 16) = v5;
LABEL_9:
    memset_pattern16((v10 + 32), &unk_1AFE854D0, 8 * v11);
    goto LABEL_10;
  }

  v11 = v5;
  v10 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  v29 = v10;
  v30 = v8;
  v12 = MEMORY[0x1E69E7CC0];
  v13 = *(v32 + 16);
  v31 = v32;
  if (v13)
  {
    v33 = MEMORY[0x1E69E7CC0];
    sub_1AFC05DE8(0, v13, 0);
    v14 = v33;
    v15 = (v6 + 40);
    do
    {
      v16 = *(v15 - 1);
      v17 = *v15;
      v19 = *(v33 + 16);
      v18 = *(v33 + 24);

      if (v19 >= v18 >> 1)
      {
        sub_1AFC05DE8(v18 > 1, v19 + 1, 1);
      }

      *(v33 + 16) = v19 + 1;
      v20 = v33 + 16 * v19;
      *(v20 + 32) = v16;
      *(v20 + 40) = v17;
      v15 += 2;
      --v13;
    }

    while (v13);

    v7 = v31;
    v12 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  v21 = *(v7 + 16);
  if (v21)
  {
    sub_1AFC05DE8(0, v21, 0);
    v22 = v12;
    v23 = (v7 + 40);
    do
    {
      v24 = *(v23 - 1);
      v25 = *v23;
      v27 = *(v22 + 16);
      v26 = *(v22 + 24);

      if (v27 >= v26 >> 1)
      {
        sub_1AFC05DE8(v26 > 1, v27 + 1, 1);
      }

      *(v22 + 16) = v27 + 1;
      v28 = v22 + 16 * v27;
      *(v28 + 32) = v24;
      *(v28 + 40) = v25;
      v23 += 2;
      --v21;
    }

    while (v21);

    v12 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v22 = MEMORY[0x1E69E7CC0];
  }

  *a1 = v30;
  a1[1] = v29;
  a1[2] = &unk_1F2500088;
  a1[3] = v14;
  a1[4] = v22;
  a1[5] = v12;
  return result;
}

void sub_1AF9192B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AF918A8C();
    v7 = a3(a1, &type metadata for SubGraphNode.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1AF919314(unint64_t *a1, uint64_t a2, const char *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1AF919A38(255, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v8 = a2;
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AF9193E8(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (a5)
  {
    v9 = sub_1AFA56CA0();
    sub_1AF919968(&unk_1F2504AD0, &unk_1ED723290, &type metadata for CodeEmitter.Code);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v51 = v9;
  v50 = a1;
  if (a1 == 3)
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v11 = *(a4 + 16);
    if (v11)
    {
      sub_1AF919A38(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
      sub_1AF441DD8(0);
      v12 = (a4 + 80);
      v13 = MEMORY[0x1E69E7CC0];
      do
      {
        v14 = *(v12 - 6);
        v15 = *(v12 - 4);
        v16 = *(v12 - 1);
        v17 = *v12;
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1AFE431C0;
        *(inited + 32) = v16;
        *(inited + 40) = v17;
        *(inited + 48) = 0;
        *(inited + 56) = 0;
        v19 = swift_initStackObject();
        *(v19 + 16) = xmmword_1AFE431C0;
        *(v19 + 32) = inited;
        v20 = v19 + 32;
        swift_bridgeObjectRetain_n();
        sub_1AF443EE0(v14);
        sub_1AF444224(v15);
        v21 = sub_1AFA56CA0();
        swift_setDeallocating();
        sub_1AF919968(v20, &unk_1ED723290, &type metadata for CodeEmitter.Code);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_1AF426BC8(0, v13[2] + 1, 1, v13);
        }

        v23 = v13[2];
        v22 = v13[3];
        if (v23 >= v22 >> 1)
        {
          v13 = sub_1AF426BC8(v22 > 1, v23 + 1, 1, v13);
        }

        sub_1AF443F24(v14);
        sub_1AF444AF4(v15);

        v13[2] = v23 + 1;
        v13[v23 + 4] = v21;
        v12 += 7;
        --v11;
      }

      while (v11);
    }

    v24 = sub_1AFA56CA0();

    sub_1AF441DD8(0);
    v25 = swift_initStackObject();
    *(v25 + 16) = xmmword_1AFE431C0;
    *(v25 + 32) = v24;
    v26 = v25 + 32;
    v10 = sub_1AFA56CA0();
    swift_setDeallocating();
    sub_1AF919968(v26, &unk_1ED723290, &type metadata for CodeEmitter.Code);
  }

  v27 = *(*(a6 + 24) + 16);
  v28 = MEMORY[0x1E69E7CC0];
  v52 = v10;
  if (v27)
  {
    v53 = MEMORY[0x1E69E7CC0];
    sub_1AFC05CE4(0, v27, 0);
    v29 = 0;
    v28 = v53;
    do
    {
      v30 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v30);

      v32 = *(v53 + 16);
      v31 = *(v53 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_1AFC05CE4(v31 > 1, v32 + 1, 1);
      }

      ++v29;
      *(v53 + 16) = v32 + 1;
      v33 = v53 + 16 * v32;
      *(v33 + 32) = 37;
      *(v33 + 40) = 0xE100000000000000;
    }

    while (v27 != v29);
  }

  v34 = sub_1AFA54F5C(v28);

  if (v50 == 3)
  {
    v35 = sub_1AFA56CA0();
    v36 = &unk_1F2504B38;
  }

  else
  {
    v37 = *(*(a6 + 32) + 16);
    v38 = MEMORY[0x1E69E7CC0];
    if (v37)
    {
      v54 = MEMORY[0x1E69E7CC0];
      sub_1AFC05CE4(0, v37, 0);
      v39 = 0;
      v38 = v54;
      do
      {
        v40 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v40);

        v42 = *(v54 + 16);
        v41 = *(v54 + 24);
        if (v42 >= v41 >> 1)
        {
          sub_1AFC05CE4(v41 > 1, v42 + 1, 1);
        }

        ++v39;
        *(v54 + 16) = v42 + 1;
        v43 = v54 + 16 * v42;
        *(v43 + 32) = 29221;
        *(v43 + 40) = 0xE200000000000000;
      }

      while (v37 != v39);
      v10 = v52;
    }

    v44 = sub_1AFA54F5C(v38);

    sub_1AF441DD8(0);
    v45 = swift_initStackObject();
    *(v45 + 16) = xmmword_1AFE431C0;
    *(v45 + 32) = v44;
    v46 = (v45 + 32);
    v35 = sub_1AFA56CA0();
    swift_setDeallocating();
    v36 = v46;
  }

  sub_1AF919968(v36, &unk_1ED723290, &type metadata for CodeEmitter.Code);
  sub_1AF441DD8(0);
  v47 = swift_initStackObject();
  *(v47 + 16) = xmmword_1AFE4C6B0;
  *(v47 + 32) = v51;
  *(v47 + 40) = v10;
  *(v47 + 48) = v34;
  *(v47 + 56) = v35;
  v48 = sub_1AFA56CA0();
  swift_setDeallocating();
  sub_1AF919A38(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  swift_arrayDestroy();
  return v48;
}

uint64_t sub_1AF919968(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1AF919A38(0, a2, a3, MEMORY[0x1E69E62F8]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1AF9199D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AF919A38(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1AF919A88(uint64_t a1)
{
  v2 = *(*(v1 + 24) + 16);
  if (v2)
  {
    v3 = a1;
    v23 = MEMORY[0x1E69E7CC0];
    sub_1AFC05CE4(0, v2, 0);
    v4 = 4;
    v21 = v3;
    do
    {
      v5 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v5);

      if (v3 == 3)
      {
        MEMORY[0x1B2718AE0](93, 0xE100000000000000);
        v6 = *(*(v22 + 24) + 8 * v4);
        sub_1AF448650(*(v22 + 24), *(v22 + 32));
        sub_1AF442064(v6);

        v7 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v7);

        v8 = 0x5B7374756F627573;
        v9 = 0xE800000000000000;
        v10 = v6;
        v11 = 3;
      }

      else
      {
        v6 = *(*(v22 + 24) + 8 * v4);
        sub_1AF448650(*(v22 + 24), *(v22 + 32));
        sub_1AF442064(v6);

        v12 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v12);

        v8 = 0x74756F627573;
        v9 = 0xE600000000000000;
        v10 = v6;
        v11 = v3;
      }

      v13 = sub_1AF92EF80(v8, v9, v10, 37, 0xE100000000000000, v11);
      v15 = v14;

      sub_1AF445BE4(v6);
      v17 = *(v23 + 16);
      v16 = *(v23 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1AFC05CE4(v16 > 1, v17 + 1, 1);
      }

      *(v23 + 16) = v17 + 1;
      v18 = v23 + 16 * v17;
      *(v18 + 32) = v13;
      *(v18 + 40) = v15;
      ++v4;
      --v2;
      v3 = v21;
    }

    while (v2);
  }

  sub_1AF919A38(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1AF488088();
  v19 = sub_1AFDFCD98();

  return v19;
}

uint64_t sub_1AF919DAC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1AF919E1C()
{
  result = qword_1EB640618;
  if (!qword_1EB640618)
  {
    result = swift_getWitnessTable(aQ7, &type metadata for SubGraphNode.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB640618);
  }

  return result;
}

unint64_t sub_1AF919E74()
{
  result = qword_1EB640620;
  if (!qword_1EB640620)
  {
    result = swift_getWitnessTable(byte_1AFE85610, &type metadata for SubGraphNode.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB640620);
  }

  return result;
}

unint64_t sub_1AF919ECC()
{
  result = qword_1EB640628;
  if (!qword_1EB640628)
  {
    result = swift_getWitnessTable(byte_1AFE85638, &type metadata for SubGraphNode.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB640628);
  }

  return result;
}

uint64_t sub_1AF919F44()
{
  v1 = *(v0 + 16);
  if (*(v1 + 16) && (v2 = sub_1AF0D3F10(&type metadata for AuthoringNodeCoder.UserDataInfo_pre3002), (v3 & 1) != 0))
  {
    return *(*(v1 + 56) + 24 * v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AF919FA0@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1;
  v5 = sub_1AFDFCF78();
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1AF441194(v1 + 72, v23);
  v6 = v25;
  v7 = v26;
  sub_1AF441150(v23, v25);
  v8 = sub_1AFDFD048();
  v9 = (*(v7 + 16))(v8, v6, v7);
  v11 = v10;
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v23);
  if (!v2)
  {
    sub_1AF43C9F0(v9, v11);
    v23[0] = sub_1AF61657C(v9, v11);
    sub_1AFDFCF58();
    sub_1AF920CE8(0, &unk_1ED726C20, MEMORY[0x1E69E7508], MEMORY[0x1E69E62F8]);
    sub_1AF615BA0();
    v13 = sub_1AFDFCF28();
    v15 = v14;

    if (v15)
    {
      v16 = v13 == 0x30316E6962786676 && v15 == 0xE800000000000000;
      if (v16 || (sub_1AFDFEE28() & 1) != 0)
      {

        sub_1AF441194(v3 + 72, &v24);
        v17 = sub_1AF60A9E4();
        v18 = *(v3 + 48);
        v23[0] = v17;
        v23[1] = v18;
        v22[3] = &type metadata for _BinaryDecoder.SingleValueStore;
        v22[4] = &off_1F2531380;
        v22[0] = swift_allocObject();
        v19 = sub_1AF60FFFC(&v24, v22[0] + 16);
        MEMORY[0x1EEE9AC00](v19);
        v22[-4] = v17;
        v22[-3] = &v24;
        v22[-2] = v17;

        sub_1AF91A2B4(v22, sub_1AF920D38, a1);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v22);
        sub_1AF439ED8(v9, v11);
        return sub_1AF6151E8(v23);
      }

      sub_1AF60A3B8();
      swift_allocError();
      *v20 = v13;
      *(v20 + 8) = v15;
      v21 = 1;
    }

    else
    {
      sub_1AF60A3B8();
      swift_allocError();
      *v20 = 0;
      *(v20 + 8) = 0;
      v21 = 6;
    }

    *(v20 + 16) = v21;
    swift_willThrow();
    return sub_1AF439ED8(v9, v11);
  }

  return result;
}

uint64_t sub_1AF91A2B4@<X0>(uint64_t *a1@<X0>, void (*a2)(_OWORD *__return_ptr)@<X1>, _OWORD *a3@<X8>)
{
  v5 = v3;
  sub_1AF441194(v3 + 72, v25);
  sub_1AF6156AC((v3 + 72), a1);
  v9 = a1[3];
  v10 = a1[4];
  sub_1AF441150(a1, v9);
  v11 = (*(v10 + 56))(v9, v10);
  v13 = v12;
  a2(v24);
  if (v4)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v25);
  }

  if ((v13 & 1) == 0)
  {
    v18 = a1[3];
    v19 = a1[4];
    sub_1AF441150(a1, v18);
    v20 = (*(v19 + 56))(v18, v19);
    if ((v21 & 1) == 0 && v11 == v20)
    {
      v22 = a1[3];
      v23 = a1[4];
      sub_1AF441150(a1, v22);
      sub_1AF60B28C(v22, v23);
    }
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0((v5 + 72));
  result = sub_1AF616568(v25, v5 + 72);
  v15 = v24[3];
  v16 = v24[4];
  a3[2] = v24[2];
  a3[3] = v15;
  a3[4] = v16;
  v17 = v24[1];
  *a3 = v24[0];
  a3[1] = v17;
  return result;
}

__n128 sub_1AF91A458@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  if (*(a1 + 24) == 1 && *(a1 + 16) && (v7 = sub_1AF919F44()) != 0)
  {
    v8 = v7;
    sub_1AF920D58();
    sub_1AF6121A0(a2, &type metadata for _BinaryDecoder.SingleValueStore, &type metadata for AuthoringNodeCoder.UserDataInfo_pre3002, v8, &off_1F2531380, a3);
  }

  else
  {
    v11[3] = type metadata accessor for _BinaryDecoder();
    v11[4] = sub_1AF92037C(qword_1ED72B938, type metadata accessor for _BinaryDecoder, byte_1AFE6A200);
    v11[0] = a1;

    sub_1AF91DC50(v11, v12);
    if (!v3)
    {
      v10 = v12[3];
      *(a3 + 32) = v12[2];
      *(a3 + 48) = v10;
      *(a3 + 64) = v12[4];
      result = v12[1];
      *a3 = v12[0];
      *(a3 + 16) = result;
    }
  }

  return result;
}

uint64_t sub_1AF91A59C()
{
  sub_1AFDFE218();

  v1 = *(v0 + OBJC_IVAR____TtC3VFX17DecodingErrorNode_name);
  v2 = *(v0 + OBJC_IVAR____TtC3VFX17DecodingErrorNode_name + 8);

  MEMORY[0x1B2718AE0](v1, v2);

  return 0x676E69646F636544;
}

void sub_1AF91A640(void *a1@<X8>)
{
  *a1 = &unk_1F24F0230;
  a1[1] = &unk_1F24F0288;
  v1 = MEMORY[0x1E69E7CC0];
  a1[2] = &unk_1F24F0258;
  a1[3] = v1;
  a1[4] = v1;
  a1[5] = v1;
}

char *sub_1AF91A670(char *a1)
{
  v2 = swift_allocObject();
  v3 = *&a1[OBJC_IVAR____TtC3VFX17DecodingErrorNode_name + 8];
  v4 = (v2 + OBJC_IVAR____TtC3VFX17DecodingErrorNode_name);
  *v4 = *&a1[OBJC_IVAR____TtC3VFX17DecodingErrorNode_name];
  v4[1] = v3;

  return sub_1AF96FD00(a1);
}

uint64_t sub_1AF91A70C()
{

  sub_1AF919DAC(*(v0 + 24), *(v0 + 32));
  v1 = OBJC_IVAR____TtC3VFX4Node_authoringID;
  v2 = sub_1AFDFC318();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1AF91A83C(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  sub_1AF441150(a1, v2);
  v4 = *(v1 + OBJC_IVAR____TtC3VFX17DecodingErrorNode_name + 8);
  v6[0] = *(v1 + OBJC_IVAR____TtC3VFX17DecodingErrorNode_name);
  v6[1] = v4;
  return sub_1AF974C50(v6, v2, MEMORY[0x1E69E6158], v3, MEMORY[0x1E69E6160]);
}

void *sub_1AF91A8B8(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  result = sub_1AF974940();
  if (!v2)
  {
    v4 = (v1 + OBJC_IVAR____TtC3VFX17DecodingErrorNode_name);
    *v4 = v5;
    v4[1] = v6;
  }

  return result;
}

void sub_1AF91A96C(uint64_t *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_inputCount);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3 >= 1)
  {
    v5 = sub_1AFDFD488();
    *(v5 + 16) = v3;
LABEL_4:
    memset_pattern16((v5 + 32), &unk_1AFE854D0, 8 * v3);
    goto LABEL_5;
  }

  v5 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    goto LABEL_4;
  }

LABEL_5:
  *a1 = v5;
  a1[1] = &unk_1F24F2070;
  a1[2] = &unk_1F24F2098;
  a1[3] = v4;
  a1[4] = v4;
  a1[5] = v4;
}

char *sub_1AF91AA44(char *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_payload);
  *v3 = 0u;
  v3[1] = 0u;
  v4 = *&a1[OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_codingID + 8];
  v5 = (v1 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_codingID);
  *v5 = *&a1[OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_codingID];
  v5[1] = v4;
  *(v1 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_inputCount) = *&a1[OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_inputCount];
  v6 = OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_payload;

  sub_1AF91AED8(&a1[v6], v3);
  v8 = *&a1[OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_decodeFn];
  v7 = *&a1[OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_decodeFn + 8];

  v9 = (v1 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_decodeFn);
  *v9 = v8;
  v9[1] = v7;

  return sub_1AF96FD00(a1);
}

uint64_t sub_1AF91AB0C()
{
  v1 = MEMORY[0x1E69E7CA0];
  v2 = MEMORY[0x1E69E6720];
  sub_1AF920458(v0 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_payload, &v4, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1AF920CE8);
  sub_1AF920CE8(0, &qword_1ED726850, v1 + 8, v2);
  return sub_1AFDFCF88();
}

uint64_t sub_1AF91ABE0()
{

  sub_1AF920C2C(v0 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_payload, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
}

uint64_t sub_1AF91AC60()
{

  sub_1AF919DAC(*(v0 + 24), *(v0 + 32));
  v1 = OBJC_IVAR____TtC3VFX4Node_authoringID;
  v2 = sub_1AFDFC318();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1AF920C2C(v0 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_payload, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);

  return swift_deallocClassInstance();
}

void *sub_1AF91AE74()
{
  result = (*(v0 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_decodeFn))(v3);
  if (!v1)
  {
    return sub_1AF7E8BCC(v3, v0 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_payload);
  }

  return result;
}

uint64_t sub_1AF91AED8(uint64_t a1, uint64_t a2)
{
  sub_1AF920CE8(0, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AF91AF64(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 25705;
    v6 = 0x65756C6176;
    if (a1 != 2)
    {
      v6 = 0x6870617267627573;
    }

    if (a1)
    {
      v5 = 1701869940;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 1702521203;
    v2 = 0x7865646E497ALL;
    if (a1 != 7)
    {
      v2 = 0x6E69726F68747561;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6F666E4972657375;
    if (a1 != 4)
    {
      v3 = 0x6E6F697469736F70;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1AF91B074()
{
  v1 = *v0;
  sub_1AFDFF288();
  sub_1AF3D49A4(v3, v1);
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF91B0C4(uint64_t a1)
{
  v2 = *v1;
  sub_1AFDFF288();
  sub_1AF3D49A4(v4, v2);
  return sub_1AFDFF2F8();
}

unint64_t sub_1AF91B108@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF91DA48(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1AF91B138@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AF91AF64(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1AF91B180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF91DA48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AF91B1A8(uint64_t a1)
{
  v2 = sub_1AF920BD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF91B1E4(uint64_t a1)
{
  v2 = sub_1AF920BD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF91B220(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v52 = a6;
  v51 = a5;
  v54 = a4;
  v9 = sub_1AFDFC318();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF92022C(0, &qword_1ED72DF30, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v49 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v48 - v15;
  v55 = 0;
  v56 = 0xE000000000000000;
  sub_1AFDFE218();

  v55 = 0xD000000000000016;
  v56 = 0x80000001AFF3AAC0;
  v48 = a2;
  MEMORY[0x1B2718AE0](a2, a3);
  v57 = v55;
  v58 = v56;
  if (a1)
  {
    v55 = 8250;
    v56 = 0xE200000000000000;
    swift_getErrorValue();
    v17 = a1;
    v18 = sub_1AFDFF1D8();
    MEMORY[0x1B2718AE0](v18);

    MEMORY[0x1B2718AE0](v55, v56);
  }

  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v20 = v57;
  v19 = v58;
  v21 = sub_1AFDFDA08();
  if (qword_1ED731058 != -1)
  {
    v47 = v21;
    swift_once();
    v21 = v47;
  }

  v55 = 0;
  sub_1AF0D4F18(v21, &v55, v20, v19);
  v22 = v54[3];
  v23 = v54[4];
  sub_1AF441150(v54, v22);
  LODWORD(v22) = *(sub_1AF6950A0(v22, v23) + 82);

  if (v22 == 1)
  {
    v24 = sub_1AFDFDA08();
    v55 = 0;
    sub_1AF0D4F18(v24, &v55, v20, v19);

    type metadata accessor for DecodingErrorNode(0);
    v25 = swift_allocObject();
    v26 = &v25[OBJC_IVAR____TtC3VFX17DecodingErrorNode_name];
    *v26 = v48;
    v26[1] = a3;
    v27 = MEMORY[0x1E69E7CC0];
    *(v25 + 2) = MEMORY[0x1E69E7CC0];
    *(v25 + 3) = 0;
    *(v25 + 4) = 0;
    v28 = OBJC_IVAR____TtC3VFX4Node_authoringID;

    v48 = v28;
    sub_1AFDFC308();
    (*(v10 + 56))(v16, 1, 1, v9);
    type metadata accessor for AuthoringNode(0);
    v29 = swift_allocObject();
    *(v29 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) = v25;
    v55 = v27;

    sub_1AFC05D04(0, 1, 0);
    v30 = v55;
    v32 = *(v55 + 16);
    v31 = *(v55 + 24);
    if (v32 >= v31 >> 1)
    {
      sub_1AFC05D04(v31 > 1, v32 + 1, 1);
      v30 = v55;
    }

    *(v30 + 16) = v32 + 1;
    v33 = v30 + 16 * v32;
    *(v33 + 32) = 0;
    *(v33 + 40) = 0;
    *(v29 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs) = v30;
    v34 = v49;
    sub_1AF920458(v16, v49, &qword_1ED72DF30, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1AF92022C);
    v35 = *(v10 + 48);
    if (v35(v34, 1, v9) == 1)
    {
      v36 = v50;
      sub_1AFDFC308();
      sub_1AF9204CC(v16, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
      if (v35(v34, 1, v9) != 1)
      {
        sub_1AF9204CC(v34, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
      }
    }

    else
    {
      sub_1AF9204CC(v16, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
      v36 = v50;
      (*(v10 + 32))(v50, v34, v9);
    }

    (*(v10 + 32))(v29 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v36, v9);
    v38 = OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
    v39 = *(v10 + 24);
    v40 = v48;
    v39(&v25[v48], v29 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v9);

    v41 = v29 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
    *v41 = 0;
    *(v41 + 8) = 0;
    *(v41 + 16) = 1;
    v42 = v29 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
    *v42 = 0;
    *(v42 + 8) = 0;
    *(v42 + 16) = 1;
    v43 = v29 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
    *v43 = 0;
    *(v43 + 8) = 1;
    v44 = (v29 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
    *v44 = 0;
    v44[1] = 0;
    (*(v10 + 8))(v29 + v38, v9);
    (*(v10 + 16))(v29 + v38, v51, v9);
    v39(&v25[v40], v29 + v38, v9);
    v45 = v53;
    sub_1AF91DFE4(v54, v52, v29);
    if (v45)
    {
    }
  }

  else
  {
    sub_1AF4567E0();
    v29 = swift_allocError();
    *v37 = v20;
    *(v37 + 8) = v19;
    *(v37 + 16) = 32;
    swift_willThrow();
  }

  return v29;
}

uint64_t sub_1AF91B8F8(void *a1, __objc2_class **a2)
{
  v27 = a2;
  v3 = sub_1AFDFC318();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF920E00(0, &qword_1EB640690, sub_1AF920BD8, &type metadata for AuthoringNodeCoder.CodingKeys, MEMORY[0x1E69E6F58]);
  v8 = v7;
  v25 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AF920BD8();
  v11 = v27;
  sub_1AFDFF3F8();
  (*(v4 + 16))(v6, v11 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v3);
  LOBYTE(v28) = 0;
  sub_1AF92037C(&qword_1EB639808, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);

  v12 = v26;
  sub_1AFDFE918();
  if (v12)
  {

    (*(v4 + 8))(v6, v3);
    return (*(v25 + 8))(v10, v8);
  }

  else
  {
    v14 = v25;
    (*(v4 + 8))(v6, v3);
    v15 = *(v11 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw);
    sub_1AFDFF4B8();
    LOBYTE(v28) = 1;
    sub_1AFDFE8B8();

    v16 = *(v11 + OBJC_IVAR____TtC3VFX13AuthoringNode_position + 16);
    v28 = *(v11 + OBJC_IVAR____TtC3VFX13AuthoringNode_position);
    v29 = v16;
    v30 = 5;
    type metadata accessor for CGPoint(0);
    v17 = v11;
    v18 = v10;
    sub_1AF92037C(&qword_1EB640698, type metadata accessor for CGPoint, MEMORY[0x1E695EFA8]);
    sub_1AFDFE8A8();
    v19 = *(v17 + OBJC_IVAR____TtC3VFX13AuthoringNode_size + 16);
    v28 = *(v17 + OBJC_IVAR____TtC3VFX13AuthoringNode_size);
    v29 = v19;
    v30 = 6;
    type metadata accessor for CGSize(0);
    sub_1AF92037C(&qword_1EB6406A0, type metadata accessor for CGSize, MEMORY[0x1E695EF88]);
    sub_1AFDFE8A8();
    LOBYTE(v28) = 7;
    sub_1AFDFE898();
    v20 = v14;
    LOBYTE(v28) = 8;

    sub_1AFDFE868();

    v21 = *v15;
    v22 = swift_conformsToProtocol2();
    if (v22)
    {
      v23 = v22;
      v30 = 2;

      sub_1AFDFE858();
      (*(v23 + 8))(&v28, v21, v23);

      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v28);
    }

    if (*v27 == _TtC3VFX21AuthoringSubGraphNode)
    {
      *&v28 = *(v27 + OBJC_IVAR____TtC3VFX21AuthoringSubGraphNode_graph);
      v30 = 3;
      sub_1AF448068();

      sub_1AFDFE918();
    }

    return (*(v20 + 8))(v18, v8);
  }
}

uint64_t sub_1AF91BFB0(void *a1, double a2)
{
  sub_1AF920E00(0, &qword_1EB6406A8, sub_1AF920DAC, &type metadata for EdgeCoder.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AF920DAC();
  sub_1AFDFF3F8();
  v14 = 0;
  sub_1AFDFC318();
  sub_1AF92037C(&qword_1EB639808, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1AFDFE918();
  if (!v2)
  {
    type metadata accessor for EdgeCoder(0);
    v13 = 1;
    sub_1AFDFE8F8();
    v12 = 2;
    sub_1AFDFE918();
    v11 = 3;
    sub_1AFDFE8F8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1AF91C200@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v27 = sub_1AFDFC318();
  v30 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v31 = v25 - v6;
  sub_1AF920E00(0, &qword_1EB630A48, sub_1AF920DAC, &type metadata for EdgeCoder.CodingKeys, MEMORY[0x1E69E6F48]);
  v28 = *(v7 - 8);
  v29 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v25 - v8;
  v10 = type metadata accessor for EdgeCoder(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF441150(a1, a1[3]);
  sub_1AF920DAC();
  v32 = v9;
  v13 = v33;
  sub_1AFDFF3B8();
  if (v13)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v33 = v4;
  v14 = v12;
  v15 = v30;
  v37 = 0;
  v16 = sub_1AF92037C(&qword_1ED72DF38, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v17 = v27;
  sub_1AFDFE768();
  v25[1] = v16;
  v18 = *(v15 + 32);
  v18(v12, v31, v17);
  v36 = 1;
  v19 = sub_1AFDFE748();
  v25[0] = v18;
  v31 = v10;
  *&v12[*(v10 + 20)] = v19;
  v35 = 2;
  v20 = v33;
  sub_1AFDFE768();
  v21 = a1;
  v22 = v31;
  (v25[0])(v14 + *(v31 + 6), v20, v17);
  v34 = 3;
  v23 = sub_1AFDFE748();
  (*(v28 + 8))(v32, v29);
  *(v14 + *(v22 + 7)) = v23;
  sub_1AF9201C8(v14, v26);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v21);
  return sub_1AF920C88(v14, type metadata accessor for EdgeCoder);
}

uint64_t sub_1AF91C6AC@<X0>(uint64_t *a1@<X8>, void *a2@<X0>, double a3@<D0>)
{
  result = sub_1AF91E41C(a2, a3);
  if (!v3)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1AF91C700()
{
  v1 = 0x44497475706E69;
  v2 = 0x444974757074756FLL;
  if (*v0 != 2)
  {
    v2 = 0x6E4974757074756FLL;
  }

  if (*v0)
  {
    v1 = 0x646E497475706E69;
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

uint64_t sub_1AF91C788@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1AF91DAE0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1AF91C7B0(uint64_t a1)
{
  v2 = sub_1AF920DAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF91C7EC(uint64_t a1)
{
  v2 = sub_1AF920DAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF91C858(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x7365676465;
  if (v2 != 1)
  {
    v5 = 0x6F666E4972657375;
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x7365646F6ELL;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v8 = 0x7365676465;
  if (*a2 != 1)
  {
    v8 = 0x6F666E4972657375;
    v3 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7365646F6ELL;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1AFDFEE28();
  }

  return v11 & 1;
}

uint64_t sub_1AF91C94C()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF91C9E8(uint64_t a1)
{
  sub_1AFDFD038();
}

uint64_t sub_1AF91CA70(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

unint64_t sub_1AF91CB08@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF91DA94(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1AF91CB38(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x7365676465;
  if (v2 != 1)
  {
    v5 = 0x6F666E4972657375;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7365646F6ELL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1AF91CB90()
{
  v1 = 0x7365676465;
  if (*v0 != 1)
  {
    v1 = 0x6F666E4972657375;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7365646F6ELL;
  }
}

unint64_t sub_1AF91CBE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF91DA94(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AF91CC0C(uint64_t a1)
{
  v2 = sub_1AF920040();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF91CC48(uint64_t a1)
{
  v2 = sub_1AF920040();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1AF91CC84(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1AFDFC318();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(*(a1 + 16) + 16))
  {
    v9 = *(a1 + 8);
    (*(v5 + 16))(v8, v9 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v4, v6);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *a2;
    *a2 = 0x8000000000000000;
    sub_1AF8583B0(v9, v8, isUniquelyReferenced_nonNull_native);
    (*(v5 + 8))(v8, v4);
    *a2 = v12;
  }
}

uint64_t sub_1AF91CDD4(void *a1, uint64_t a2, double a3)
{
  v35 = *MEMORY[0x1E69E9840];
  sub_1AF920E00(0, &qword_1EB640640, sub_1AF920040, &type metadata for AuthoringGraphCoder.CodingKeys, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v28 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF920040();
  sub_1AFDFF3F8();
  v10 = MEMORY[0x1E69E7CC0];
  v30 = MEMORY[0x1E69E7CC0];
  v32 = &v30;
  v33 = sub_1AF43A958(MEMORY[0x1E69E7CC0]);
  v34 = v11;
  v27 = a2;
  sub_1AF41420C(sub_1AF920290, v31, 0, 0x1000000000000000uLL, 0, v10, &v33);
  if (v3)
  {

    __break(1u);
  }

  else
  {
    v12 = sub_1AF42A0E4(v33, v34, sub_1AF42ADF4);

    v13 = 0;
    v33 = v10;
    v14 = v12[2];
    while (v14 != v13)
    {
      if (v12[v13++ + 4])
      {

        MEMORY[0x1B2718E00](v16);
        if (v33[2] >= v33[3] >> 1)
        {
          sub_1AFDFD458();
        }

        sub_1AFDFD4B8();
        v10 = v33;
      }
    }

    v33 = v10;
    v29 = 0;
    sub_1AF920CE8(0, &qword_1EB630D90, &type metadata for AuthoringNodeCoder, MEMORY[0x1E69E62F8]);
    sub_1AF920298(&qword_1EB640648, sub_1AF920328, MEMORY[0x1E69E6300]);
    sub_1AFDFE918();

    v33 = v30;
    v29 = 1;
    sub_1AF92022C(0, &qword_1EB630D70, type metadata accessor for EdgeCoder, MEMORY[0x1E69E62F8]);
    sub_1AF920104(&qword_1EB640658, &qword_1EB640660, byte_1AFE85968, MEMORY[0x1E69E6300], v17);
    sub_1AFDFE918();
    if (*(v27 + 16))
    {
      v19 = objc_opt_self();

      v20 = sub_1AFDFCBE8();

      v33 = 0;
      v21 = [v19 dataWithJSONObject:v20 options:0 error:&v33];

      v22 = v33;
      if (v21)
      {
        v23 = sub_1AFDFC1B8();
        v25 = v24;

        v33 = v23;
        v34 = v25;
        v29 = 2;
        sub_1AF8711B4();
        sub_1AFDFE918();
        sub_1AF439ED8(v33, v34);
      }

      else
      {
        v26 = v22;
        sub_1AFDFBF58();

        swift_willThrow();
      }
    }

    (*(v28 + 8))(v9, v7);
  }

  return result;
}

void sub_1AF91D334(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for EdgeCoder(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF92022C(0, &qword_1EB640668, type metadata accessor for EdgeCoder, MEMORY[0x1E69E6720]);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v44 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = 0;
  if (!*(*(a1 + 16) + 16))
  {
    v45 = a3;
    v46 = v44 - v18;
    v54 = v6;
    v20 = *(a1 + 8);
    v21 = *(v20 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs);
    v22 = *(v21 + 16);
    v48 = v9;
    v49 = v7;
    v47 = v13;
    v44[2] = a2;
    v51 = v20;
    if (v22)
    {
      v55 = MEMORY[0x1E69E7CC0];

      sub_1AFC0789C(0, v22, 0);
      v23 = 0;
      v25 = v54;
      v24 = v55;
      v50 = OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
      v52 = (v7 + 56);
      v44[1] = v21;
      v26 = (v21 + 40);
      do
      {
        v27 = *(v26 - 1);
        if (v27)
        {
          v53 = *v26;
          v28 = sub_1AFDFC318();
          v29 = v24;
          v30 = v22;
          v31 = v11;
          v32 = *(*(v28 - 8) + 16);
          v32(v16, v51 + v50, v28);
          v32(&v16[*(v54 + 24)], v27 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v28);
          v11 = v31;
          v22 = v30;
          v24 = v29;
          v33 = v53;
          v25 = v54;
          v34 = 0;
          *&v16[*(v54 + 20)] = v23;
          *&v16[*(v25 + 28)] = v33;
        }

        else
        {
          v34 = 1;
        }

        (*v52)(v16, v34, 1, v25);
        v55 = v24;
        v36 = *(v24 + 16);
        v35 = *(v24 + 24);
        if (v36 >= v35 >> 1)
        {
          sub_1AFC0789C(v35 > 1, v36 + 1, 1);
          v24 = v55;
        }

        ++v23;
        *(v24 + 16) = v36 + 1;
        sub_1AF9203C4(v16, v24 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v36);
        v26 += 2;
      }

      while (v22 != v23);

      v9 = v48;
      v7 = v49;
      v13 = v47;
      v37 = *(v24 + 16);
      if (v37)
      {
        goto LABEL_11;
      }
    }

    else
    {

      v24 = MEMORY[0x1E69E7CC0];
      v25 = v54;
      v37 = *(MEMORY[0x1E69E7CC0] + 16);
      if (v37)
      {
LABEL_11:
        v38 = v24 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
        v54 = *(v11 + 72);
        v39 = (v7 + 48);
        v40 = MEMORY[0x1E69E7CC0];
        v41 = v46;
        do
        {
          sub_1AF920458(v38, v41, &qword_1EB640668, type metadata accessor for EdgeCoder, MEMORY[0x1E69E6720], sub_1AF92022C);
          sub_1AF9203C4(v41, v13);
          if ((*v39)(v13, 1, v25) == 1)
          {
            sub_1AF9204CC(v13, &qword_1EB640668, type metadata accessor for EdgeCoder);
          }

          else
          {
            sub_1AF92053C(v13, v9);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v40 = sub_1AF426CF0(0, v40[2] + 1, 1, v40);
            }

            v43 = v40[2];
            v42 = v40[3];
            if (v43 >= v42 >> 1)
            {
              v40 = sub_1AF426CF0(v42 > 1, v43 + 1, 1, v40);
            }

            v40[2] = v43 + 1;
            v9 = v48;
            sub_1AF92053C(v48, v40 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v43);
            v41 = v46;
            v13 = v47;
          }

          v38 += v54;
          --v37;
        }

        while (v37);

        goto LABEL_23;
      }
    }

    v40 = MEMORY[0x1E69E7CC0];
LABEL_23:
    sub_1AF490CF0(v40);
    a3 = v45;
    v19 = v51;
  }

  *a3 = v19;
}

void *sub_1AF91D89C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1AF91F298(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1AF91D8E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;
  v8 = *(v3 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs);
  v9 = v8[2];
  v10 = a3 - v9;
  if (a3 != v9)
  {
    v11 = 2 * v9;
    do
    {
      v12 = v8[v11];
      v13 = v8[v11 + 1];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v3 + v7) = v8;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v8 = sub_1AFC0DA6C(v8);
        *(v3 + v7) = v8;
      }

      v15 = &v8[v11];
      v15[2] = v12;
      v15[3] = v13;

      v8 = *(v3 + v7);
      v11 -= 2;
    }

    while (!__CFADD__(v10++, 1));
  }

  v17 = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + v7) = v8;
  if ((v17 & 1) == 0)
  {
    v8 = sub_1AFC0DA6C(v8);
    *(v3 + v7) = v8;
  }

  v18 = &v8[2 * a3];
  v18[4] = a1;
  v18[5] = a2;
}

__n128 sub_1AF91D9EC@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF91DC50(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v6[4];
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

unint64_t sub_1AF91DA48(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AFDFE638();

  if (v2 >= 9)
  {
    return 9;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1AF91DA94(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AFDFE638();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1AF91DAE0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44497475706E69 && a2 == 0xE700000000000000;
  if (v4 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646E497475706E69 && a2 == 0xEA00000000007865 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x444974757074756FLL && a2 == 0xE800000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E4974757074756FLL && a2 == 0xEB00000000786564)
  {

    return 3;
  }

  else
  {
    v6 = sub_1AFDFEE28();

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

uint64_t sub_1AF91DC50@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1AF920E00(0, &qword_1ED726A70, sub_1AF445B90, &type metadata for StringCodingKeys, MEMORY[0x1E69E6F48]);
  v34 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF445B90();
  sub_1AFDFF3B8();
  if (v3)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v10 = v7;
  v33 = a2;
  type metadata accessor for CGPoint(0);
  v35 = 0;
  v36 = 1;
  strcpy(v37, "position");
  BYTE1(v37[1]) = 0;
  WORD1(v37[1]) = 0;
  HIDWORD(v37[1]) = -402653184;
  sub_1AF92037C(&qword_1EB640678, type metadata accessor for CGPoint, MEMORY[0x1E695EFC0]);
  v11 = v34;
  sub_1AFDFE6E8();
  v12 = v38;
  v13 = v39;
  v43 = v40;
  type metadata accessor for CGSize(0);
  v35 = 0;
  v36 = 1;
  v37[0] = 1702521203;
  v37[1] = 0xE400000000000000;
  sub_1AF92037C(&qword_1EB640680, type metadata accessor for CGSize, MEMORY[0x1E695EFA0]);
  sub_1AFDFE6E8();
  v31 = v13;
  v32 = v12;
  v15 = v38;
  v14 = v39;
  v42 = v40;
  v35 = 0;
  v36 = 1;
  v37[0] = 0x7865646E497ALL;
  v37[1] = 0xE600000000000000;
  v30 = sub_1AFDFE6D8();
  v41 = v16 & 1;
  v35 = 0;
  v36 = 1;
  strcpy(v37, "authoringName");
  HIWORD(v37[1]) = -4864;
  v17 = sub_1AFDFE698();
  v18 = *(v10 + 8);
  v29 = v19;
  v18(v9, v11);
  v20 = v43;
  LOBYTE(v11) = v42;
  v21 = v41;
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  v23 = v14;
  v24 = v33;
  v25 = v30;
  v26 = v31;
  *v33 = v32;
  v24[1] = v26;
  *(v24 + 16) = v20;
  v24[3] = v15;
  v24[4] = v23;
  *(v24 + 40) = v11;
  v24[6] = v25;
  *(v24 + 56) = v21;
  v27 = v29;
  v24[8] = v17;
  v24[9] = v27;
  return result;
}

void *sub_1AF91DFE4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[3];
  v6 = a1[4];
  sub_1AF441150(a1, v5);
  if (!sub_1AF69504C(3002, v5, v6))
  {
    type metadata accessor for CGPoint(0);
    LOBYTE(v34) = 5;
    sub_1AF920E00(0, &unk_1EB630AC0, sub_1AF920BD8, &type metadata for AuthoringNodeCoder.CodingKeys, MEMORY[0x1E69E6F48]);
    sub_1AF92037C(&qword_1EB640678, type metadata accessor for CGPoint, MEMORY[0x1E695EFC0]);
    result = sub_1AFDFE6E8();
    if (v3)
    {
      return result;
    }

    v24 = v38;
    v25 = a3 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
    *v25 = v37;
    *(v25 + 16) = v24;
    type metadata accessor for CGSize(0);
    LOBYTE(v34) = 6;
    sub_1AF92037C(&qword_1EB640680, type metadata accessor for CGSize, MEMORY[0x1E695EFA0]);
    sub_1AFDFE6E8();
    v26 = v38;
    v27 = a3 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
    *v27 = v37;
    *(v27 + 16) = v26;
    LOBYTE(v37) = 7;
    v28 = sub_1AFDFE6D8();
    v30 = a3 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
    *v30 = v28;
    *(v30 + 8) = v29 & 1;
    LOBYTE(v37) = 8;
    v31 = sub_1AFDFE698();
    v33 = (a3 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
    *v33 = v31;
    v33[1] = v32;
  }

  LOBYTE(v34) = 4;
  sub_1AF920E00(0, &unk_1EB630AC0, sub_1AF920BD8, &type metadata for AuthoringNodeCoder.CodingKeys, MEMORY[0x1E69E6F48]);
  sub_1AF8710A0();
  result = sub_1AFDFE6E8();
  if (!v3)
  {
    v8 = *(&v37 + 1);
    if (*(&v37 + 1) >> 60 != 15)
    {
      v9 = v37;
      v10 = MEMORY[0x1E69E7CC0];
      v11 = sub_1AF43A744(MEMORY[0x1E69E7CC0]);
      v12 = type metadata accessor for _BinaryDecoder.DataStream();
      v13 = swift_allocObject();
      v13[2] = v37;
      v13[3] = v8;
      v13[4] = 0;
      v35 = v12;
      v36 = &off_1F2531128;
      *&v34 = v13;
      type metadata accessor for _BinaryDecoder();
      v14 = swift_allocObject();
      *(v14 + 48) = v10;
      *(v14 + 64) = 0;
      *(v14 + 112) = v10;
      sub_1AF616568(&v34, v14 + 72);
      *(v14 + 56) = v11;
      *(v14 + 16) = 0;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0;
      *(v14 + 40) = 0;

      sub_1AF587E54(v9, v8);
      sub_1AF919FA0(&v37);

      sub_1AF587E7C(v9, v8);
      v15 = v38;
      v16 = v40;
      v17 = v41;
      v18 = v42;
      v19 = v43;
      v20 = v39;
      v21 = a3 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
      *v21 = v37;
      *(v21 + 16) = v15;
      v22 = a3 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
      *v22 = v20;
      *(v22 + 16) = v16;
      v23 = a3 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
      *v23 = v17;
      *(v23 + 8) = v18;
      *(a3 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName) = v19;
    }
  }

  return result;
}

uint64_t sub_1AF91E41C(void *a1, double a2)
{
  sub_1AF92022C(0, &qword_1ED72DF30, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v81 = v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v79 = v73 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v80 = v73 - v8;
  v84 = sub_1AFDFC318();
  v82 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v10 = v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v83 = v73 - v12;
  sub_1AF920E00(0, &unk_1EB630AC0, sub_1AF920BD8, &type metadata for AuthoringNodeCoder.CodingKeys, MEMORY[0x1E69E6F48]);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v73 - v16;
  v18 = a1[4];
  sub_1AF441150(a1, a1[3]);
  sub_1AF920BD8();
  v19 = v85;
  sub_1AFDFF3B8();
  if (!v19)
  {
    v20 = v81;
    v78 = v10;
    v21 = v82;
    v85 = v15;
    LOBYTE(v86[0]) = 0;
    sub_1AF92037C(&qword_1ED72DF38, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    sub_1AFDFE768();
    v22 = v14;
    LOBYTE(v86[0]) = 1;
    v24 = a1;
    v25 = sub_1AFDFE708();
    v77 = v26;
    v76 = v17;
    if (qword_1EB631E00 != -1)
    {
      swift_once();
    }

    v27 = a1[3];
    v28 = a1[4];
    sub_1AF441150(a1, v27);
    sub_1AF695174(v27, v28);
    v29 = v25;
    v30 = v25;
    v31 = v77;
    v32 = sub_1AF966E30(v29, v77);
    if (v32)
    {
      v73[1] = v30;
      v74 = a1;
      v33 = *v32;
      v75 = v32;
      v34 = swift_conformsToProtocol2();
      if (v34)
      {
        v35 = v34;
        v87 = 2;
        sub_1AFDFE688();
        v39 = v75;
        (*(v35 + 16))(v86, *v75, v35);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v86);
        v33 = *v39;
        v54 = v39;
      }

      else
      {
        v54 = v75;
      }

      v38 = v82;
      if (v33 == _TtC3VFX12SubGraphNode)
      {
        v87 = 3;
        sub_1AF4480BC();

        sub_1AFDFE768();
        v24 = v74;
        v73[0] = 0;

        v55 = v86[0];
        v56 = v20;
        v57 = v20;
        v58 = v84;
        (v38[7])(v57, 1, 1, v84);
        type metadata accessor for AuthoringSubGraphNode(0);
        swift_allocObject();
        v59 = sub_1AF91526C(v55, v54, MEMORY[0x1E69E7CC0], v56);
      }

      else
      {
        v73[0] = 0;

        (v38[7])(v80, 1, 1, v84);
        type metadata accessor for AuthoringNode(0);
        v81 = swift_allocObject();
        *&v81[OBJC_IVAR____TtC3VFX13AuthoringNode_raw] = v54;
        v40 = *(*v54 + 152);
        swift_retain_n();
        v40(v88);
        v41 = v88[0];
        v94 = v88[0];
        v93 = v88[1];
        v42 = MEMORY[0x1E69E62F8];
        sub_1AF920C2C(&v93, &qword_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8]);
        v92 = v88[2];
        sub_1AF920C2C(&v92, &qword_1EB638968, &type metadata for TypeConstraint, v42);
        v91 = v88[3];
        sub_1AF920C88(&v91, sub_1AF445C2C);
        v90 = v88[4];
        sub_1AF920C88(&v90, sub_1AF445C2C);
        v89 = v88[5];
        sub_1AF920C2C(&v89, &qword_1EB638978, &type metadata for AnyValue, v42);
        v43 = *(v41 + 16);
        sub_1AF920C2C(&v94, &qword_1EB638968, &type metadata for TypeConstraint, v42);
        v44 = MEMORY[0x1E69E7CC0];
        if (v43)
        {
          v86[0] = MEMORY[0x1E69E7CC0];
          sub_1AFC05D04(0, v43, 0);
          v44 = v86[0];
          v45 = *(v86[0] + 16);
          v46 = 16 * v45 + 32;
          v47 = v79;
          v48 = v80;
          do
          {
            v86[0] = v44;
            v49 = *(v44 + 24);
            v50 = v45 + 1;
            if (v45 >= v49 >> 1)
            {
              sub_1AFC05D04(v49 > 1, v45 + 1, 1);
              v44 = v86[0];
            }

            *(v44 + 16) = v50;
            v51 = (v44 + v46);
            *v51 = 0;
            v51[1] = 0;
            v46 += 16;
            v45 = v50;
            --v43;
          }

          while (v43);
        }

        else
        {
          v47 = v79;
          v48 = v80;
        }

        *&v81[OBJC_IVAR____TtC3VFX13AuthoringNode_inputs] = v44;
        sub_1AF920458(v48, v47, &qword_1ED72DF30, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1AF92022C);
        v38 = v21;
        v60 = v21[6];
        v61 = v48;
        v58 = v84;
        if ((v60)(v47, 1, v84) == 1)
        {
          v62 = v78;
          sub_1AFDFC308();
          sub_1AF9204CC(v61, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
          if ((v60)(v47, 1, v58) != 1)
          {
            sub_1AF9204CC(v47, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
          }
        }

        else
        {
          sub_1AF9204CC(v61, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
          v63 = v21[4];
          v62 = v78;
          (v63)(v78, v47, v58);
        }

        v59 = v81;
        (v38[4])(&v81[OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID], v62, v58);
        (v38[3])(v75 + OBJC_IVAR____TtC3VFX4Node_authoringID, v59 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v58);

        v64 = v59 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
        *v64 = 0;
        *(v64 + 8) = 0;
        *(v64 + 16) = 1;
        v65 = v59 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
        *v65 = 0;
        *(v65 + 8) = 0;
        *(v65 + 16) = 1;
        v66 = v59 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
        *v66 = 0;
        *(v66 + 8) = 1;
        v67 = (v59 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
        *v67 = 0;
        v67[1] = 0;
        v24 = v74;
      }

      v68 = OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
      v69 = v38[1];

      v82 = v69;
      v69(v59 + v68, v58);
      v18 = v59;
      (v38[2])(v59 + v68, v83, v58);
      (v38[3])(*(v59 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) + OBJC_IVAR____TtC3VFX4Node_authoringID, v59 + v68, v58);
      v70 = v38;
      v71 = v76;
      v72 = v73[0];
      sub_1AF91DFE4(v24, v76, v59);
      if (v72)
      {

        (v82)(v83, v58);
        (*(v85 + 8))(v71, v22);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v24);

        return v18;
      }

      v52 = v85;
      v37 = v71;
      v36 = v83;
      v53 = v70;
    }

    else
    {
      v36 = v83;
      v37 = v76;
      v18 = sub_1AF91B220(0, v30, v31, a1, v83, v76);

      v52 = v85;
      v53 = v82;
    }

    v53[1](v36, v84);
    (*(v52 + 8))(v37, v22);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v24);
    return v18;
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v18;
}

void *sub_1AF91F298(void *a1)
{
  v94 = *MEMORY[0x1E69E9840];
  sub_1AF0D4E74(0);
  v4 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v6 = v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_1AFDFC298();
  v84 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v85 = v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for EdgeCoder(0);
  v83 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v87 = v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF920E00(0, &qword_1EB630AB0, sub_1AF920040, &type metadata for AuthoringGraphCoder.CodingKeys, MEMORY[0x1E69E6F48]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v67 - v12;
  v14 = a1[3];
  v15 = a1[4];
  sub_1AF441150(a1, v14);
  if (!sub_1AF694FF8(2039, v14, v15))
  {
    type metadata accessor for AuthoringGraph(0);
    v16 = swift_allocObject();
    v17 = MEMORY[0x1E69E7CC0];
    v16[2] = 0;
    v16[3] = v17;
    v16[4] = 0;
    v16[5] = 0;
    v16[6] = sub_1AF42B088(v17);
    sub_1AFDFC308();

    goto LABEL_6;
  }

  v82 = v6;
  v16 = a1[3];
  sub_1AF441150(a1, v16);
  sub_1AF920040();
  sub_1AFDFF3B8();
  if (!v1)
  {
    sub_1AF920CE8(0, &qword_1EB630D90, &type metadata for AuthoringNodeCoder, MEMORY[0x1E69E62F8]);
    LOBYTE(v89) = 0;
    sub_1AF920298(&qword_1EB630D88, sub_1AF920094, MEMORY[0x1E69E6330]);
    sub_1AFDFE768();
    v77 = v13;
    v19 = v92[2];
    v72 = v4;
    v79 = v10;
    v80 = v11;
    if (v19)
    {
      v89 = MEMORY[0x1E69E7CC0];
      sub_1AFDFE368();
      v20 = 32;
      do
      {

        sub_1AFDFE328();
        sub_1AFDFE398();
        sub_1AFDFE3A8();
        sub_1AFDFE348();
        v20 += 8;
        --v19;
      }

      while (v19);

      v21 = v89;
      v10 = v79;
    }

    else
    {

      v21 = MEMORY[0x1E69E7CC0];
    }

    type metadata accessor for AuthoringGraph(0);
    v16 = swift_allocObject();
    v22 = MEMORY[0x1E69E7CC0];
    v16[2] = 0;
    v16[3] = v22;
    v16[4] = 0;
    v16[5] = 0;
    v16[6] = sub_1AF42B088(v22);
    sub_1AFDFC308();
    v16[3] = v21;

    LOBYTE(v89) = 2;
    sub_1AF8710A0();
    sub_1AFDFE6E8();
    v23 = v93;
    if (v93 >> 60 == 15)
    {
LABEL_17:
      v29 = MEMORY[0x1E69E7CC0];
      v91 = sub_1AF42B088(MEMORY[0x1E69E7CC0]);
      MEMORY[0x1EEE9AC00](v91);
      v67[-2] = &v91;
      MEMORY[0x1EEE9AC00](v30);
      v67[-2] = sub_1AF9200E8;
      v67[-1] = v31;
      v92 = sub_1AF42B0F4(v29);
      v93 = v32;
      sub_1AF412AA8(sub_1AF441EF8, &v67[-4], 1, 0x1000000000000000uLL, 0, v29, &v92);

      sub_1AF92022C(0, &qword_1EB630D70, type metadata accessor for EdgeCoder, MEMORY[0x1E69E62F8]);
      LOBYTE(v89) = 1;
      sub_1AF920104(&qword_1EB630D68, &qword_1EB630EE8, byte_1AFE859B8, MEMORY[0x1E69E6330], v33);
      sub_1AFDFE768();
      v34 = v92[2];
      v35 = v80;
      if (v34)
      {
        v36 = (v83[80] + 32) & ~v83[80];
        v37 = v91;
        v67[0] = v92;
        v38 = v92 + v36;
        v75 = *(v83 + 9);
        v71 = 0x80000001AFF3AA80;
        v70 = "graph decoding error: ";
        v69 = (v84 + 32);
        v68 = xmmword_1AFE431C0;
        v39 = v87;
        v76 = v91;
        v67[1] = 0;
        while (1)
        {
          v83 = v38;
          v84 = v34;
          sub_1AF9201C8(v38, v39);
          v44 = v88;
          if (v37[2])
          {
            break;
          }

          v48 = 0;
          v81 = 0;
LABEL_33:
          v51 = *(v39 + v44[5]);
          v52 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;
          v53 = *(v48 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs);
          if (v51 < v53[2])
          {
            v40 = *(v39 + v44[7]);
            v41 = v48;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v41 + v52) = v53;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              *(v41 + v52) = sub_1AFC0DA6C(v53);
            }

            sub_1AF920C88(v39, type metadata accessor for EdgeCoder);
            v43 = *(v41 + v52) + 16 * v51;
            *(v43 + 32) = v81;
            *(v43 + 40) = v40;
          }

          else
          {
            v78 = v48;
            if (qword_1ED730EA0 != -1)
            {
              swift_once();
            }

            v92 = 0;
            v93 = 0xE000000000000000;
            sub_1AFDFE218();

            v92 = 0xD000000000000016;
            v93 = v71;
            v89 = 60;
            v90 = 0xE100000000000000;
            v54 = sub_1AFDFF4B8();
            MEMORY[0x1B2718AE0](v54);

            MEMORY[0x1B2718AE0](58, 0xE100000000000000);
            v55 = sub_1AF9703D8();
            MEMORY[0x1B2718AE0](v55);

            MEMORY[0x1B2718AE0](62, 0xE100000000000000);
            MEMORY[0x1B2718AE0](v89, v90);

            MEMORY[0x1B2718AE0](0xD000000000000011, v70 | 0x8000000000000000);
            v57 = v92;
            v56 = v93;
            v58 = sub_1AFDFDA08();
            if (qword_1ED731058 != -1)
            {
              swift_once();
            }

            if (qword_1ED730E98 != -1)
            {
              swift_once();
            }

            v59 = qword_1ED73B890;
            sub_1AF92022C(0, &qword_1ED730B50, sub_1AF0D5CF0, MEMORY[0x1E69E6F90]);
            v60 = swift_allocObject();
            *(v60 + 16) = v68;
            *(v60 + 56) = MEMORY[0x1E69E6158];
            *(v60 + 64) = sub_1AF0D544C();
            *(v60 + 32) = v57;
            *(v60 + 40) = v56;

            sub_1AFDFC4C8(v58, &dword_1AF0CE000, v59, "%{public}s", 10, 2, v60, v67[0]);

            v74 = v57;
            v61 = v85;
            sub_1AFDFC288();
            v73 = v72[12];
            v62 = v72[16];
            LOBYTE(v60) = v58;
            v63 = v82;
            v64 = v56;
            v65 = &v82[v72[20]];
            (*v69)(v82, v61, v86);
            *(v63 + v73) = v60;
            *(v63 + v62) = 0;
            *v65 = v74;
            *(v65 + 1) = v64;

            sub_1AFDFC608();

            sub_1AF920C88(v63, sub_1AF0D4E74);

            v39 = v87;
            sub_1AF920C88(v87, type metadata accessor for EdgeCoder);
          }

          v38 = &v83[v75];
          v34 = v84 - 1;
          v10 = v79;
          v35 = v80;
          v37 = v76;
          if (v84 == 1)
          {
            goto LABEL_41;
          }
        }

        v45 = sub_1AF419940(v39);
        if (v46)
        {
          v47 = *(v37[7] + 8 * v45);

          if (!v37[2])
          {
            goto LABEL_31;
          }
        }

        else
        {
          v47 = 0;
          if (!v37[2])
          {
            goto LABEL_31;
          }
        }

        v49 = sub_1AF419940(v39 + v44[6]);
        if (v50)
        {
          v81 = *(v37[7] + 8 * v49);

LABEL_32:
          v48 = v47;
          goto LABEL_33;
        }

LABEL_31:
        v81 = 0;
        goto LABEL_32;
      }

LABEL_41:

      sub_1AF9114A4();
      (*(v35 + 8))(v77, v10);

      goto LABEL_6;
    }

    v24 = v92;
    v25 = objc_opt_self();
    v26 = sub_1AFDFC1A8();
    v92 = 0;
    v27 = [v25 JSONObjectWithData:v26 options:0 error:&v92];

    if (v27)
    {
      v28 = v92;
      sub_1AFDFDFB8();
      sub_1AF587E7C(v24, v23);
      swift_unknownObjectRelease();
      sub_1AF4468AC();
      if (swift_dynamicCast())
      {
        v16[2] = v89;
      }

      goto LABEL_17;
    }

    v66 = v92;
    sub_1AFDFBF58();

    swift_willThrow();
    sub_1AF587E7C(v24, v23);
    (*(v80 + 8))(v77, v10);
LABEL_6:
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);

    return v16;
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v16;
}

unint64_t sub_1AF920040()
{
  result = qword_1EB631988;
  if (!qword_1EB631988)
  {
    result = swift_getWitnessTable(byte_1AFE85A08, &type metadata for AuthoringGraphCoder.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB631988);
  }

  return result;
}

unint64_t sub_1AF920094()
{
  result = qword_1EB631B70;
  if (!qword_1EB631B70)
  {
    result = swift_getWitnessTable(byte_1AFE859E0, &type metadata for AuthoringNodeCoder, v0, v1);
    atomic_store(result, &qword_1EB631B70);
  }

  return result;
}

uint64_t sub_1AF920104(unint64_t *a1, unint64_t *a2, const char *a3, const char *a4, double a5)
{
  result = *a1;
  if (!result)
  {
    sub_1AF92022C(255, &qword_1EB630D70, type metadata accessor for EdgeCoder, MEMORY[0x1E69E62F8]);
    v11 = v10;
    v12 = sub_1AF92037C(a2, type metadata accessor for EdgeCoder, a3);
    result = swift_getWitnessTable(a4, v11, &v12);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AF9201C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EdgeCoder(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1AF92022C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1AF920298(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1AF920CE8(255, &qword_1EB630D90, &type metadata for AuthoringNodeCoder, MEMORY[0x1E69E62F8]);
    v8 = v7;
    v9 = a2();
    result = swift_getWitnessTable(a3, v8, &v9);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AF920328()
{
  result = qword_1EB640650;
  if (!qword_1EB640650)
  {
    result = swift_getWitnessTable(byte_1AFE85990, &type metadata for AuthoringNodeCoder, v0, v1);
    atomic_store(result, &qword_1EB640650);
  }

  return result;
}

uint64_t sub_1AF92037C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AF9203C4(uint64_t a1, uint64_t a2)
{
  sub_1AF92022C(0, &qword_1EB640668, type metadata accessor for EdgeCoder, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AF920458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1AF9204CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1AF92022C(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1AF92053C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EdgeCoder(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t *sub_1AF9205C0(uint64_t *a1, uint64_t *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_1AFDFC318();
    v8 = *(*(v7 - 8) + 16);
    v8(a1, a2, v7);
    v9 = a3[6];
    *(a1 + a3[5]) = *(a2 + a3[5]);
    v8((a1 + v9), (a2 + v9), v7);
    *(a1 + a3[7]) = *(a2 + a3[7]);
  }

  return a1;
}

uint64_t sub_1AF9206B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AFDFC318();
  v7 = *(*(v4 - 8) + 8);
  (v7)((v4 - 8), a1, v4);
  v5 = a1 + *(a2 + 24);

  return v7(v5, v4);
}

uint64_t sub_1AF920758(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1AFDFC318();
  v7 = *(*(v6 - 8) + 16);
  v7(a1, a2, v6);
  v8 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v7(a1 + v8, a2 + v8, v6);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  return a1;
}

uint64_t sub_1AF920804(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1AFDFC318();
  v7 = *(*(v6 - 8) + 24);
  v7(a1, a2, v6);
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v7(a1 + a3[6], a2 + a3[6], v6);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  return a1;
}

uint64_t sub_1AF9208B4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1AFDFC318();
  v7 = *(*(v6 - 8) + 32);
  v7(a1, a2, v6);
  v8 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v7(a1 + v8, a2 + v8, v6);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  return a1;
}

uint64_t sub_1AF920960(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1AFDFC318();
  v7 = *(*(v6 - 8) + 40);
  v7(a1, a2, v6);
  v8 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v7(a1 + v8, a2 + v8, v6);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  return a1;
}

uint64_t sub_1AF920A34(uint64_t a1)
{
  result = sub_1AFDFC318();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t sub_1AF920AD4()
{
  result = qword_1EB640670;
  if (!qword_1EB640670)
  {
    result = swift_getWitnessTable(a5_23, &type metadata for AuthoringGraphCoder.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB640670);
  }

  return result;
}

unint64_t sub_1AF920B2C()
{
  result = qword_1EB631978;
  if (!qword_1EB631978)
  {
    result = swift_getWitnessTable(aYb, &type metadata for AuthoringGraphCoder.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB631978);
  }

  return result;
}

unint64_t sub_1AF920B84()
{
  result = qword_1EB631980;
  if (!qword_1EB631980)
  {
    result = swift_getWitnessTable(byte_1AFE858A0, &type metadata for AuthoringGraphCoder.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB631980);
  }

  return result;
}

unint64_t sub_1AF920BD8()
{
  result = qword_1EB631B88;
  if (!qword_1EB631B88)
  {
    result = swift_getWitnessTable(aE_47, &type metadata for AuthoringNodeCoder.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB631B88);
  }

  return result;
}

uint64_t sub_1AF920C2C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  sub_1AF920CE8(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1AF920C88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AF920CE8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1AF920D58()
{
  result = qword_1EB640688;
  if (!qword_1EB640688)
  {
    result = swift_getWitnessTable(byte_1AFE85C70, &type metadata for AuthoringNodeCoder.UserDataInfo_pre3002, v0, v1);
    atomic_store(result, &qword_1EB640688);
  }

  return result;
}

unint64_t sub_1AF920DAC()
{
  result = qword_1EB630F00;
  if (!qword_1EB630F00)
  {
    result = swift_getWitnessTable(byte_1AFE85C20, &type metadata for EdgeCoder.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB630F00);
  }

  return result;
}

void sub_1AF920E00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t initializeWithCopy for AuthoringNodeCoder.UserDataInfo_pre3002(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  v3 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v3;

  return a1;
}

uint64_t assignWithCopy for AuthoringNodeCoder.UserDataInfo_pre3002(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a1 = v3;
  v4 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v4;
  v5 = *(a2 + 6);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 48) = v5;
  *(a1 + 64) = a2[4];

  return a1;
}

uint64_t assignWithTake for AuthoringNodeCoder.UserDataInfo_pre3002(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  v3 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v3;

  return a1;
}

unint64_t sub_1AF920FD4()
{
  result = qword_1EB6406B0;
  if (!qword_1EB6406B0)
  {
    result = swift_getWitnessTable(a3_4, &type metadata for AuthoringNodeCoder.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB6406B0);
  }

  return result;
}

unint64_t sub_1AF92102C()
{
  result = qword_1EB6406B8;
  if (!qword_1EB6406B8)
  {
    result = swift_getWitnessTable(aQ2_0, &type metadata for EdgeCoder.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB6406B8);
  }

  return result;
}

unint64_t sub_1AF921084()
{
  result = qword_1EB630EF0;
  if (!qword_1EB630EF0)
  {
    result = swift_getWitnessTable(byte_1AFE85B68, &type metadata for EdgeCoder.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB630EF0);
  }

  return result;
}

unint64_t sub_1AF9210DC()
{
  result = qword_1EB630EF8;
  if (!qword_1EB630EF8)
  {
    result = swift_getWitnessTable(byte_1AFE85B90, &type metadata for EdgeCoder.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB630EF8);
  }

  return result;
}

unint64_t sub_1AF921134()
{
  result = qword_1EB631B78;
  if (!qword_1EB631B78)
  {
    result = swift_getWitnessTable(aY_67, &type metadata for AuthoringNodeCoder.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB631B78);
  }

  return result;
}

unint64_t sub_1AF92118C()
{
  result = qword_1EB631B80;
  if (!qword_1EB631B80)
  {
    result = swift_getWitnessTable(byte_1AFE85AA0, &type metadata for AuthoringNodeCoder.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB631B80);
  }

  return result;
}

uint64_t sub_1AF9211E0(uint64_t a1, void *a2)
{
  v4 = v2;
  v19[16] = 1;
  v7 = MEMORY[0x1E69E7CC0];
  sub_1AF3FB9C8(sub_1AF42B5C4, v19, 0, 0x1000000000000000uLL, 1, MEMORY[0x1E69E7CC0]);
  v8 = sub_1AF449CC8();

  v9 = swift_allocObject();
  *(v9 + 2) = 0;
  *(v9 + 3) = v7;
  *(v9 + 4) = 0;
  *(v9 + 5) = 0;
  *(v9 + 6) = sub_1AF42B088(v7);
  v10 = OBJC_IVAR____TtC3VFX14AuthoringGraph_id;
  sub_1AFDFC308();
  *(v9 + 3) = v8;
  sub_1AF9114A4();
  v11 = OBJC_IVAR____TtC3VFX14AuthoringGraph_id;
  v12 = sub_1AFDFC318();
  (*(*(v12 - 8) + 24))(&v9[v10], v4 + v11, v12);
  sub_1AF92199C(a2);
  sub_1AF9233B0(a2);
  if (v3)
  {
  }

  else
  {
    type metadata accessor for GraphTypeResolver();
    v13 = swift_allocObject();

    v14 = a2;
    v15 = MEMORY[0x1E69E7CC0];
    *(v13 + 32) = sub_1AF42BA48(MEMORY[0x1E69E7CC0]);
    *(v13 + 40) = sub_1AF42BC98(v15);
    *(v13 + 48) = 0;
    *(v13 + 56) = sub_1AF42BEA0(v15);
    *(v13 + 16) = v9;
    *(v13 + 24) = v14;
    *(v13 + 64) = a1 & 1;
    a1 = sub_1AF93E534();

    v18 = sub_1AF921528(v17);

    *&v14[OBJC_IVAR____TtC3VFX16GraphDiagnostics_rawNodesByID] = v18;
  }

  return a1;
}

void *sub_1AF921528(uint64_t a1)
{
  sub_1AF92371C(0);
  v55 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v49 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v54 = &v46 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v53 = &v46 - v7;
  v50 = MEMORY[0x1E69E7CC8];
  v57 = MEMORY[0x1E69E7CC8];
  v8 = 1 << *(a1 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  v51 = a1;
  v52 = v11;
LABEL_5:
  v13 = v12;
  if (!v10)
  {
    goto LABEL_7;
  }

  do
  {
    v12 = v13;
LABEL_9:
    v14 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v15 = v14 | (v12 << 6);
    v16 = *(a1 + 48);
    v17 = sub_1AFDFC318();
    v18 = *(v17 - 8);
    v19 = v18;
    v20 = *(v18 + 72);
    v21 = v53;
    (*(v18 + 16))(v53, v16 + v20 * v15, v17);
    v22 = *(a1 + 56) + 16 * v15;
    v23 = *v22;
    v24 = *(v22 + 8);
    v25 = v55;
    v26 = &v21[*(v55 + 48)];
    *v26 = v23;
    v26[8] = v24;
    v27 = v21;
    v28 = v54;
    sub_1AF9237AC(v27, v54, sub_1AF92371C);
    v29 = v28 + *(v25 + 48);
    v30 = *v29;
    if (*(v29 + 8) != 1)
    {
      v47 = v20;
      v48 = v19;
      sub_1AF9237AC(v28, v49, sub_1AF92371C);
      v31 = v50[2];
      if (v50[3] <= v31)
      {
        sub_1AF85AA64(v23, v24);
        sub_1AF85AA64(v30, 0);
        sub_1AF82C660(v31 + 1, 1);
      }

      else
      {
        sub_1AF85AA64(v23, v24);
        sub_1AF85AA64(v30, 0);
      }

      v11 = v52;
      v32 = v57;
      sub_1AF923814(&qword_1EB633A20, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v33 = sub_1AFDFCCF8();
      v34 = v32 + 64;
      v50 = v32;
      v35 = -1 << *(v32 + 32);
      v36 = v33 & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v32 + 64 + 8 * (v36 >> 6))) != 0)
      {
        v38 = __clz(__rbit64((-1 << v36) & ~*(v32 + 64 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
        v40 = v47;
        v39 = v48;
      }

      else
      {
        v41 = (63 - v35) >> 6;
        v40 = v47;
        do
        {
          if (v37 + 1 == v41)
          {
            v37 = 0;
          }

          else
          {
            ++v37;
          }

          v42 = *(v34 + 8 * v37);
        }

        while (v42 == -1);
        v38 = __clz(__rbit64(~v42)) + (v37 << 6);
        v39 = v48;
      }

      v43 = v49 + *(v55 + 48);
      *(v34 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
      v44 = v50;
      (*(v39 + 32))(v50[6] + v38 * v40);
      *(v44[7] + 8 * v38) = v30;
      ++v44[2];
      sub_1AF85AA70(*v43, *(v43 + 8));
      a1 = v51;
      goto LABEL_5;
    }

    v56 = *v29;
    sub_1AF85AA64(v23, v24);
    sub_1AF61FF58();
    swift_willThrowTypedImpl();
    sub_1AF923984(v28, sub_1AF92371C);
    v13 = v12;
    a1 = v51;
    v11 = v52;
  }

  while (v10);
LABEL_7:
  while (1)
  {
    v12 = v13 + 1;
    if (v13 + 1 >= v11)
    {
      break;
    }

    v10 = *(a1 + 8 * v13++ + 72);
    if (v10)
    {
      goto LABEL_9;
    }
  }

  return v50;
}

uint64_t sub_1AF92199C(uint64_t a1)
{
  v2 = a1;
  if (qword_1EB6325E8 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x1EEE9AC00](a1);
  LOBYTE(v19) = v3;
  v20 = v4;
  LOBYTE(v21) = v5;
  v22 = sub_1AF921C70;
  v23 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  sub_1AF3FB9C8(sub_1AF9238C0, v18, v3, v4, v5, MEMORY[0x1E69E7CC0]);
  v7 = sub_1AF449CC8();

  *(v1 + 24) = v7;

  v27 = sub_1AF42B0C8(v6);
  MEMORY[0x1EEE9AC00](v27);
  v23 = 0x1000000000000000;
  v24 = &v27;
  MEMORY[0x1EEE9AC00](v8);
  v19 = sub_1AF915204;
  v20 = v9;
  v25 = sub_1AF42B0F4(v6);
  v26 = v10;
  sub_1AF412AA8(sub_1AF9122F0, v18, 1, 0x1000000000000000uLL, 0, v6, &v25);

  v11 = sub_1AF3D9910(v27);

  MEMORY[0x1EEE9AC00](v12);
  v21 = v11;
  v22 = v1;
  v23 = v2;
  MEMORY[0x1EEE9AC00](v13);
  v18[0] = sub_1AF923910;
  v18[1] = v14;
  v25 = sub_1AF42B0F4(v6);
  v26 = v15;
  sub_1AF412AA8(sub_1AF449DD8, &v17, 1, 0x1000000000000000uLL, 0, v6, &v25);
}

uint64_t sub_1AF921C70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, __n128 *a3@<X3>, __n128 *a4@<X8>)
{
  v8 = sub_1AFDFC318();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF923930(0, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v40 - v16;
  v18 = *a3;
  if (a3->n128_u64[0] || (v19 = *(**(*(a1 + 8) + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) + 152), v40 = *a3, v19(v42), v41 = a4, v20 = v42[0], v47 = v42[1], v48 = v42[0], sub_1AF9121F8(&v47, &qword_1EB638968, &type metadata for TypeConstraint), v46 = v42[2], sub_1AF9121F8(&v46, &qword_1EB638968, &type metadata for TypeConstraint), v45 = v42[3], sub_1AF923984(&v45, sub_1AF445C2C), v44 = v42[4], sub_1AF923984(&v44, sub_1AF445C2C), v43 = v42[5], sub_1AF9121F8(&v43, &qword_1EB638978, &type metadata for AnyValue), v21 = v20 + 8 * a2, a4 = v41, v22 = *(v21 + 32), sub_1AF4410A8(v22), sub_1AF9121F8(&v48, &qword_1EB638968, &type metadata for TypeConstraint), v23 = swift_allocObject(), *(v23 + 16) = 0xC000000000000008, v24 = sub_1AF9C5694(v22, v23 | 0x8000000000000000), , sub_1AF441114(v22), v18 = v40, !v24))
  {
    *a4 = v18;
  }

  else
  {
    type metadata accessor for ImplicitNoopNode(0);
    v25 = swift_allocObject();
    v26 = MEMORY[0x1E69E7CC0];
    *(v25 + 3) = 0;
    *(v25 + 4) = 0;
    *(v25 + 2) = v26;
    v40.n128_u64[0] = OBJC_IVAR____TtC3VFX4Node_authoringID;
    sub_1AFDFC308();
    (*(v9 + 56))(v17, 1, 1, v8);
    type metadata accessor for AuthoringNode(0);
    v27 = swift_allocObject();
    v28 = v27 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
    *v28 = 0;
    *(v28 + 8) = 0;
    *(v28 + 16) = 1;
    v29 = v27 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
    *v29 = 0;
    *(v29 + 8) = 0;
    *(v29 + 16) = 1;
    v30 = v27 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
    *v30 = 0;
    *(v30 + 8) = 1;
    v31 = (v27 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
    *v31 = 0;
    v31[1] = 0;
    *(v27 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) = v25;
    *(v27 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs) = v26;
    sub_1AF487314(v17, v14);
    v32 = v9;
    v33 = *(v9 + 48);
    LODWORD(v26) = v33(v14, 1, v8);

    if (v26 == 1)
    {
      sub_1AFDFC308();
      sub_1AF9239E4(v17, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
      if (v33(v14, 1, v8) != 1)
      {
        sub_1AF9239E4(v14, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
      }
    }

    else
    {
      sub_1AF9239E4(v17, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
      (*(v32 + 32))(v11, v14, v8);
    }

    (*(v32 + 32))(v27 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v11, v8);
    (*(v32 + 24))(&v25[v40.n128_u64[0]], v27 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v8);

    v35 = v27 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
    *v35 = 0;
    *(v35 + 8) = 0;
    *(v35 + 16) = 1;
    v36 = v27 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
    *v36 = 0;
    *(v36 + 8) = 0;
    *(v36 + 16) = 1;
    v37 = v27 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
    *v37 = 0;
    *(v37 + 8) = 1;
    v38 = (v27 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
    *v38 = 0;
    v38[1] = 0;

    v39 = v41;
    v41->n128_u64[0] = v27;
    v39->n128_u64[1] = 0;
  }

  return result;
}

uint64_t sub_1AF922210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for GraphError(0);
  MEMORY[0x1EEE9AC00](v8);
  v97 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v96 = &v89 - v11;
  v112 = sub_1AFDFC318();
  v12 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v14 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF923930(0, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v106 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v98 = &v89 - v18;
  v19 = *(a1 + 8);
  v105 = *(a1 + 40);
  v113 = v19;
  v107 = OBJC_IVAR____TtC3VFX13AuthoringNode_raw;
  result = sub_1AF9749E4();
  if (result)
  {
    v21 = *(a2 + 16);
    v22 = MEMORY[0x1E69E7CC0];
    v95 = v4;
    v111 = v12;
    if (v21)
    {
      v23 = sub_1AF0D3F10(v113);
      if (v24)
      {
        v25 = *(*(a2 + 56) + 8 * v23);
      }

      else
      {
        v25 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v25 = MEMORY[0x1E69E7CC0];
    }

    v93 = v8;
    v94 = a4;
    v26 = *(v25 + 16);
    v104 = v14;
    if (v26)
    {
      v115 = v22;
      sub_1AFC06F08(0, v26, 0);
      v27 = v115;
      v28 = *(v115 + 16);
      v29 = 40;
      do
      {
        v30 = *(v25 + v29);
        v115 = v27;
        v31 = *(v27 + 24);
        if (v28 >= v31 >> 1)
        {
          sub_1AFC06F08(v31 > 1, v28 + 1, 1);
          v27 = v115;
        }

        *(v27 + 16) = v28 + 1;
        *(v27 + 8 * v28 + 32) = v30;
        v29 += 24;
        ++v28;
        --v26;
      }

      while (v26);
      v110 = v27;
    }

    else
    {

      v110 = MEMORY[0x1E69E7CC0];
    }

    (*(**(v113 + v107) + 152))(&v115, v32);
    v33 = v116;
    v126 = v116;
    v125 = v115;
    sub_1AF9121F8(&v125, &qword_1EB638968, &type metadata for TypeConstraint);
    v124 = v117;
    sub_1AF9121F8(&v124, &qword_1EB638968, &type metadata for TypeConstraint);
    v123 = v118;
    sub_1AF923984(&v123, sub_1AF445C2C);
    v122 = v119;
    sub_1AF923984(&v122, sub_1AF445C2C);
    v121 = v120;
    sub_1AF9121F8(&v121, &qword_1EB638978, &type metadata for AnyValue);
    v34 = *(v33 + 16);
    v35 = v98;
    v36 = v112;
    if (v34)
    {
      v37 = 0;
      v38 = v33 + 32;
      v109 = (v110 + 32);
      v91 = (v111 + 16);
      v90 = OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
      v101 = (v111 + 56);
      v92 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics;
      v89 = 0x80000001AFF3AAE0;
      v108 = (v111 + 32);
      v99 = (v111 + 24);
      v103 = v34;
      v102 = v38;
      v100 = (v111 + 48);
      do
      {
        v39 = *(v38 + 8 * v37);
        v40 = swift_allocObject();
        *(v40 + 16) = 0xC000000000000008;
        sub_1AF4410A8(v39);
        v41 = sub_1AF9C5694(v39, v40 | 0x8000000000000000);

        if (v41)
        {
          v42 = v109;
          v43 = *(v110 + 16);
          if (!v43)
          {
LABEL_22:
            v112 = v39;
            if (**(v113 + v107) == _TtC3VFX24InspectorSetECSValueNode || ((v45 = **(v113 + v107), type metadata accessor for InspectorSetWorldValueNode(0), v46 = swift_dynamicCastClass(), v45 != _TtC3VFX29InspectorSetParticleValueNode) ? (v47 = v46 == 0) : (v47 = 0), !v47 || (type metadata accessor for SubGraphEndpointNode(0), swift_dynamicCastClass()) || (type metadata accessor for OnTriggerNode(0), swift_dynamicCastClass())))
            {
              type metadata accessor for ImplicitStartNode(0);
              v48 = swift_allocObject();
              *(v48 + 4) = 0;
              v49 = MEMORY[0x1E69E7CC0];
              *(v48 + 2) = MEMORY[0x1E69E7CC0];
              *(v48 + 3) = 0;
              v111 = OBJC_IVAR____TtC3VFX4Node_authoringID;
              sub_1AFDFC308();
              (*v101)(v35, 1, 1, v36);
              type metadata accessor for AuthoringNode(0);
              v50 = swift_allocObject();
              v51 = v50 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
              *v51 = 0;
              *(v51 + 8) = 0;
              *(v51 + 16) = 1;
              v52 = v50 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
              *v52 = 0;
              *(v52 + 8) = 0;
              *(v52 + 16) = 1;
              v53 = v50 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
              *v53 = 0;
              *(v53 + 8) = 1;
              v54 = (v50 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
              *v54 = 0;
              v54[1] = 0;
              *(v50 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) = v48;
              v114 = v49;

              sub_1AFC05D04(0, 1, 0);
              v55 = v114;
              v56 = v35;
              v58 = *(v114 + 16);
              v57 = *(v114 + 24);
              if (v58 >= v57 >> 1)
              {
                sub_1AFC05D04(v57 > 1, v58 + 1, 1);
                v55 = v114;
              }

              *(v55 + 16) = v58 + 1;
              v59 = v55 + 16 * v58;
              *(v59 + 32) = 0;
              *(v59 + 40) = 0;
              *(v50 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs) = v55;
              v60 = v106;
              sub_1AF487314(v56, v106);
              v61 = *v100;
              if ((*v100)(v60, 1, v36) == 1)
              {
                v62 = v104;
                sub_1AFDFC308();
                sub_1AF9239E4(v56, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
                v47 = v61(v60, 1, v36) == 1;
                v63 = v60;
                v35 = v56;
                v64 = v105;
                if (!v47)
                {
                  sub_1AF9239E4(v63, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
                }
              }

              else
              {
                sub_1AF9239E4(v56, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
                v62 = v104;
                (*v108)(v104, v60, v36);
                v35 = v56;
                v64 = v105;
              }

              (*v108)((v50 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID), v62, v36);
              (*v99)(&v48[v111], v50 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v36);

              v65 = v50 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
              *v65 = 0;
              *(v65 + 8) = 0;
              *(v65 + 16) = 1;
              v66 = v50 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
              *v66 = 0;
              *(v66 + 8) = 0;
              *(v66 + 16) = 1;
              v67 = v50 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
              *v67 = 0;
              *(v67 + 8) = 1;
              v68 = (v50 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
              *v68 = 0;
              v68[1] = 0;

              v69 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;
              v70 = *(v50 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs);

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *(v50 + v69) = v70;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v70 = sub_1AFC0DA6C(v70);
                *(v50 + v69) = v70;
              }

              v70[4] = v113;
              v70[5] = v37;

              MEMORY[0x1B2718E00](v72);
              if (*((*v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_1AFDFD458();
              }

              sub_1AFDFD4B8();
              sub_1AF441114(v112);
            }

            else
            {
              v73 = v93;
              v74 = v93[5];
              v75 = v96;
              (*v91)(&v96[v74], v113 + v90, v36);
              (*v101)(&v75[v74], 0, 1, v36);
              v75[v73[8]] = 0;
              *v75 = 0;
              v76 = &v75[v73[6]];
              *v76 = 1;
              v76[8] = -64;
              v77 = &v75[v73[7]];
              *v77 = 0xD00000000000002ALL;
              *(v77 + 1) = v89;
              v78 = v97;
              sub_1AF92385C(v75, v97);
              *(v78 + v73[8]) = 1;
              sub_1AF923814(&qword_1EB638988, type metadata accessor for GraphError, byte_1AFE863D0);
              v79 = swift_allocError();
              sub_1AF92385C(v78, v80);
              v81 = v94;
              v82 = v92;
              v83 = *(v94 + v92);
              v84 = swift_isUniquelyReferenced_nonNull_native();
              *(v81 + v82) = v83;
              if ((v84 & 1) == 0)
              {
                v83 = sub_1AF420408(0, v83[2] + 1, 1, v83);
                *(v81 + v92) = v83;
              }

              v86 = v83[2];
              v85 = v83[3];
              if (v86 >= v85 >> 1)
              {
                v83 = sub_1AF420408(v85 > 1, v86 + 1, 1, v83);
              }

              v83[2] = v86 + 1;
              v83[v86 + 4] = v79;
              *(v94 + v92) = v83;
              v87 = swift_allocError();
              sub_1AF9237AC(v97, v88, type metadata accessor for GraphError);
              sub_1AF441114(v112);
              sub_1AF923984(v96, type metadata accessor for GraphError);

              v35 = v98;
            }

            v34 = v103;
            v38 = v102;
            goto LABEL_17;
          }

          while (1)
          {
            v44 = *v42++;
            if (v44 == v37)
            {
              break;
            }

            if (!--v43)
            {
              goto LABEL_22;
            }
          }
        }

        sub_1AF441114(v39);
LABEL_17:
        ++v37;
      }

      while (v37 != v34);
    }

    return sub_1AF9121F8(&v126, &qword_1EB638968, &type metadata for TypeConstraint);
  }

  return result;
}

uint64_t sub_1AF922E30@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1AF923930(0, &qword_1EB632708, type metadata accessor for GraphError);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (v36 - v6);
  v8 = *(a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw);
  type metadata accessor for ImportErrorNode(0);
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v10 = *(v9 + OBJC_IVAR____TtC3VFX15ImportErrorNode_message + 8);
    if (v10)
    {
      v11 = *(v9 + OBJC_IVAR____TtC3VFX15ImportErrorNode_message);
      v36[0] = 0;
      v36[1] = 0xE000000000000000;

      sub_1AFDFE218();

      strcpy(v36, "Import error: ");
      HIBYTE(v36[1]) = -18;
      MEMORY[0x1B2718AE0](v11, v10);

      v13 = v36[0];
      v12 = v36[1];
      v14 = type metadata accessor for GraphError(0);
      *(v7 + v14[8]) = 0;
      *v7 = a1;
      v15 = v14[5];
      v16 = OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
      v17 = sub_1AFDFC318();
      v18 = *(v17 - 8);
      (*(v18 + 16))(v7 + v15, a1 + v16, v17);
      (*(v18 + 56))(v7 + v15, 0, 1, v17);
      v19 = v7 + v14[6];
      *v19 = 1;
      v19[8] = -64;
      v20 = v14[7];
      *(v7 + v20) = v13;
    }

    else
    {
      v14 = type metadata accessor for GraphError(0);
      *(v7 + v14[8]) = 0;
      *v7 = a1;
      v28 = v14[5];
      v29 = OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
      v30 = sub_1AFDFC318();
      v31 = *(v30 - 8);
      (*(v31 + 16))(v7 + v28, a1 + v29, v30);
      (*(v31 + 56))(v7 + v28, 0, 1, v30);
      v32 = v7 + v14[6];
      *v32 = 1;
      v32[8] = -64;
      v20 = v14[7];
      *(v7 + v20) = 0x652074726F706D49;
      v12 = 0xEC000000726F7272;
    }

    *(v7 + v20 + 8) = v12;
    type metadata accessor for GraphError(0);
    v33 = (*(*(v14 - 1) + 56))(v7, 0, 1, v14);
    sub_1AF923330(v7, a2, v33);
  }

  else if (*v8 == _TtC3VFX17DecodingErrorNode)
  {
    v21 = type metadata accessor for GraphError(0);
    *(a2 + v21[8]) = 0;
    *a2 = a1;
    v22 = v21[5];
    v23 = OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
    v24 = sub_1AFDFC318();
    v25 = *(v24 - 8);
    (*(v25 + 16))(a2 + v22, a1 + v23, v24);
    (*(v25 + 56))(a2 + v22, 0, 1, v24);
    v26 = a2 + v21[6];
    *v26 = 1;
    v26[8] = -64;
    *(a2 + v21[7]) = xmmword_1AFE85CF0;
    (*(*(v21 - 1) + 56))(a2, 0, 1, v21);
  }

  else
  {
    v34 = type metadata accessor for GraphError(0);
    v35 = *(*(v34 - 8) + 56);

    return v35(a2, 1, 1, v34);
  }
}

uint64_t sub_1AF923330(uint64_t a1, uint64_t a2, double a3)
{
  sub_1AF923930(0, &qword_1EB632708, type metadata accessor for GraphError);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AF9233B0(uint64_t a1)
{
  v3 = *v1;
  v9 = a1;
  v10 = v3;
  v7[2] = sub_1AF923790;
  v7[3] = &v8;
  v4 = MEMORY[0x1E69E7CC0];
  v11[0] = sub_1AF42B0F4(MEMORY[0x1E69E7CC0]);
  v11[1] = v5;
  sub_1AF412AA8(sub_1AF441EF8, v7, 1, 0x1000000000000000uLL, 0, v4, v11);

  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AF923490(uint64_t a1, uint64_t a2, double a3)
{
  sub_1AF923930(0, &qword_1EB632708, type metadata accessor for GraphError);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v21 - v6);
  v8 = type metadata accessor for GraphError(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF922E30(*(a1 + 8), v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1AF9239E4(v7, &qword_1EB632708, type metadata accessor for GraphError);
  }

  sub_1AF9237AC(v7, v11, type metadata accessor for GraphError);
  sub_1AF923814(&qword_1EB638988, type metadata accessor for GraphError, byte_1AFE863D0);
  v13 = swift_allocError();
  sub_1AF92385C(v11, v14);
  v15 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics;
  v16 = *(a2 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + v15) = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_1AF420408(0, v16[2] + 1, 1, v16);
    *(a2 + v15) = v16;
  }

  v19 = v16[2];
  v18 = v16[3];
  if (v19 >= v18 >> 1)
  {
    *(a2 + v15) = sub_1AF420408(v18 > 1, v19 + 1, 1, v16);
  }

  result = sub_1AF923984(v11, type metadata accessor for GraphError);
  v20 = *(a2 + v15);
  *(v20 + 16) = v19 + 1;
  *(v20 + 8 * v19 + 32) = v13;
  *(a2 + v15) = v20;
  return result;
}

void sub_1AF92371C(uint64_t a1)
{
  if (!qword_1EB632778)
  {
    sub_1AFDFC318();
    sub_1AF444718(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB632778);
    }
  }
}

uint64_t sub_1AF9237AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AF923814(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AF92385C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GraphError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AF9238C0@<X0>(_OWORD *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 24);
  v6 = *(v2 + 40);
  v7 = a1[1];
  v9[0] = *a1;
  v9[1] = v7;
  v9[2] = a1[2];
  result = sub_1AF923A40(v9, v5, v6);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

void sub_1AF923930(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1AFDFDD58();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1AF923984(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AF9239E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1AF923930(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1AF923A40(uint64_t a1, unint64_t a2, void (*a3)(void *__return_ptr, _OWORD *, uint64_t *, uint64_t, void *))
{
  v4 = *(a1 + 8);

  v5 = sub_1AF97228C();
  v6 = *(v5 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  v35 = v4;
  if (!v6)
  {

    v9 = MEMORY[0x1E69E7CC0];
    v24 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v24)
    {
      goto LABEL_22;
    }

    goto LABEL_29;
  }

  v44 = MEMORY[0x1E69E7CC0];
  sub_1AFC05D98(0, v6, 0);
  v8 = 0;
  v9 = v44;
  v37 = *(**(v4 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) + 152);
  v33 = a2;
  v36 = (a2 >> 59) & 2 | (a2 >> 2) & 1;
  v10 = (v5 + 40);
  v38 = v6;
  do
  {
    v11 = *(v10 - 1);
    v12 = *v10;
    v13 = *(a1 + 16);
    v43[0] = *a1;
    v43[1] = v13;
    v43[2] = *(a1 + 32);

    v37(v45, v14);

    v15 = v45[0];
    v51 = v45[0];
    v50 = v45[1];
    sub_1AF9121F8(&v50, &qword_1EB638968, &type metadata for TypeConstraint);
    v49 = v45[2];
    sub_1AF9121F8(&v49, &qword_1EB638968, &type metadata for TypeConstraint);
    v48 = v45[3];
    sub_1AF923984(&v48, sub_1AF445C2C);
    v47 = v45[4];
    sub_1AF923984(&v47, sub_1AF445C2C);
    v46 = v45[5];
    sub_1AF9121F8(&v46, &qword_1EB638978, &type metadata for AnyValue);
    v16 = *(v15 + 8 * v8 + 32);
    sub_1AF4410A8(v16);
    sub_1AF9121F8(&v51, &qword_1EB638968, &type metadata for TypeConstraint);
    if (v36)
    {
      if (v36 == 1)
      {
        v17 = sub_1AF9C5694(v16, v33 & 0xEFFFFFFFFFFFFFFBLL);
        sub_1AF441114(v16);
        if (v17)
        {
          goto LABEL_16;
        }
      }

      else
      {
        sub_1AF441114(v16);
      }
    }

    else
    {
      v18 = sub_1AF9C5694(v16, v33);
      sub_1AF441114(v16);
      if (!v18)
      {
        goto LABEL_16;
      }
    }

    if (v11)
    {
      v19 = v12;
    }

    else
    {
      v19 = 0;
    }

    v40[0] = v11;
    v40[1] = v19;
    v41 = v35;

    a3(v42, v43, &v41, v8, v40);

    v20 = v42[0];

    if (v20)
    {
      v12 = v42[1];
      v11 = v20;
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

LABEL_16:
    v44 = v9;
    v22 = v9[2];
    v21 = v9[3];
    if (v22 >= v21 >> 1)
    {
      sub_1AFC05D98(v21 > 1, v22 + 1, 1);
      v9 = v44;
    }

    v10 += 2;
    ++v8;
    v9[2] = v22 + 1;
    v23 = &v9[2 * v22];
    v23[4] = v11;
    v23[5] = v12;
  }

  while (v38 != v8);

  v7 = MEMORY[0x1E69E7CC0];
  v24 = v9[2];
  if (!v24)
  {
    goto LABEL_29;
  }

LABEL_22:
  *&v43[0] = v7;
  sub_1AFC05D04(0, v24, 0);
  v7 = *&v43[0];
  v25 = *(*&v43[0] + 16);
  v26 = 16 * v25;
  v27 = v9 + 5;
  do
  {
    v28 = *(v27 - 1);
    if (v28)
    {
      v29 = *v27;
    }

    else
    {
      v29 = 0;
    }

    *&v43[0] = v7;
    v30 = *(v7 + 24);

    if (v25 >= v30 >> 1)
    {
      sub_1AFC05D04(v30 > 1, v25 + 1, 1);
      v7 = *&v43[0];
    }

    v27 += 2;
    *(v7 + 16) = v25 + 1;
    v31 = v7 + v26;
    *(v31 + 32) = v28;
    *(v31 + 40) = v29;
    v26 += 16;
    ++v25;
    --v24;
  }

  while (v24);
LABEL_29:

  *(v35 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs) = v7;

  return v35;
}

uint64_t sub_1AF923E60(int a1)
{
  v2 = v1;
  v67 = a1;
  v3 = sub_1AFDFC318();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v53 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v66 = &v50 - v7;
  sub_1AF483618(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v65 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v50 - v11;
  v13 = sub_1AF96FB80(1);
  v14 = *(v1 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs);
  v15 = *(v4 + 16);
  v52 = v4 + 16;
  v51 = v15;
  v15(v12, v1 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v3);
  v16 = *(v4 + 56);
  v54 = v12;
  v16(v12, 0, 1, v3);
  v17 = *(v1 + OBJC_IVAR____TtC3VFX13AuthoringNode_position);
  v63 = *(v1 + OBJC_IVAR____TtC3VFX13AuthoringNode_position + 8);
  v64 = v17;
  v62 = *(v1 + OBJC_IVAR____TtC3VFX13AuthoringNode_position + 16);
  v18 = *(v1 + OBJC_IVAR____TtC3VFX13AuthoringNode_size + 8);
  v61 = *(v1 + OBJC_IVAR____TtC3VFX13AuthoringNode_size);
  v60 = v18;
  v59 = *(v1 + OBJC_IVAR____TtC3VFX13AuthoringNode_size + 16);
  v58 = *(v1 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex);
  v57 = *(v1 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex + 8);
  v19 = *(v1 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName + 8);
  v55 = *(v2 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
  type metadata accessor for AuthoringNode(0);
  v20 = swift_allocObject();
  *(v20 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) = v13;
  v21 = *(v14 + 16);
  v22 = *(*v13 + 152);
  v56 = v19;

  v22(v70, v23);
  v24 = v70[0];
  v75 = v70[1];
  v76 = v70[0];
  sub_1AF9121F8(&v75, &qword_1EB638968, &type metadata for TypeConstraint);
  v74 = v70[2];
  sub_1AF9121F8(&v74, &qword_1EB638968, &type metadata for TypeConstraint);
  v73 = v70[3];
  sub_1AF9199D8(&v73, sub_1AF445C2C);
  v72 = v70[4];
  sub_1AF9199D8(&v72, sub_1AF445C2C);
  v71 = v70[5];
  sub_1AF9121F8(&v71, &qword_1EB638978, &type metadata for AnyValue);
  v25 = *(v24 + 16);
  sub_1AF9121F8(&v76, &qword_1EB638968, &type metadata for TypeConstraint);
  if (v25 <= v21)
  {
    v26 = v21;
  }

  else
  {
    v26 = v25;
  }

  if (v26)
  {
    v50 = v4;
    v69 = MEMORY[0x1E69E7CC0];
    sub_1AFC05D04(0, v26, 0);
    v27 = 0;
    v28 = v69;
    do
    {
      v29 = 0uLL;
      if (v27 < v21)
      {
        v68 = *(v14 + 16 * v27 + 32);

        v29 = v68;
      }

      v69 = v28;
      v31 = *(v28 + 16);
      v30 = *(v28 + 24);
      if (v31 >= v30 >> 1)
      {
        v68 = v29;
        sub_1AFC05D04(v30 > 1, v31 + 1, 1);
        v29 = v68;
        v28 = v69;
      }

      ++v27;
      *(v28 + 16) = v31 + 1;
      *(v28 + 16 * v31 + 32) = v29;
    }

    while (v26 != v27);

    v4 = v50;
  }

  else
  {

    v28 = MEMORY[0x1E69E7CC0];
  }

  *(v20 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs) = v28;
  v32 = v54;
  v33 = v65;
  sub_1AF487314(v54, v65);
  v34 = *(v4 + 48);
  v35 = v34(v33, 1, v3);
  v36 = v66;
  if (v35 == 1)
  {
    sub_1AFDFC308();
    sub_1AF9199D8(v32, sub_1AF483618);
    if (v34(v33, 1, v3) != 1)
    {
      sub_1AF9199D8(v33, sub_1AF483618);
    }
  }

  else
  {
    sub_1AF9199D8(v32, sub_1AF483618);
    (*(v4 + 32))(v36, v33, v3);
  }

  (*(v4 + 32))(v20 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v36, v3);
  v37 = OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
  v38 = OBJC_IVAR____TtC3VFX4Node_authoringID;
  v39 = *(v4 + 24);
  v39(v13 + OBJC_IVAR____TtC3VFX4Node_authoringID, v20 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v3);

  v40 = v20 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
  v41 = v63;
  *v40 = v64;
  *(v40 + 8) = v41;
  *(v40 + 16) = v62;
  v42 = v20 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
  v43 = v60;
  *v42 = v61;
  *(v42 + 8) = v43;
  *(v42 + 16) = v59;
  v44 = v20 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
  *v44 = v58;
  *(v44 + 8) = v57;
  v45 = (v20 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
  v46 = v56;
  *v45 = v55;
  v45[1] = v46;
  if ((v67 & 1) == 0)
  {
    v47 = v53;
    sub_1AFDFC308();
    (*(v4 + 40))(v20 + v37, v47, v3);
    v39(v13 + v38, v20 + v37, v3);
    v48 = *(v4 + 8);

    v48(v13 + v38, v3);
    v51(v13 + v38, v20 + v37, v3);
  }

  return v20;
}

uint64_t sub_1AF924540()
{
  v1 = OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
  v2 = sub_1AFDFC318();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AuthoringNode(uint64_t a1)
{
  result = qword_1EB6323A8;
  if (!qword_1EB6323A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1AF924664(uint64_t a1)
{
  result = sub_1AFDFC318();
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

uint64_t sub_1AF924740()
{
  v0 = sub_1AFDFF4B8();
  MEMORY[0x1B2718AE0](v0);

  MEMORY[0x1B2718AE0](58, 0xE100000000000000);
  v1 = sub_1AF9703D8();
  MEMORY[0x1B2718AE0](v1);

  MEMORY[0x1B2718AE0](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_1AF924808()
{
  v1 = sub_1AFDFC318();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v5 = v0[1];
  sub_1AFDFF288();
  (*(v2 + 16))(v4, v6 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v1);
  sub_1AF4644D8();
  sub_1AFDFCD08();
  (*(v2 + 8))(v4, v1);
  MEMORY[0x1B271ACB0](v5);
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF92492C(uint64_t a1)
{
  v2 = sub_1AFDFC318();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1[1];
  (*(v3 + 16))(v6, *v1 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v2, v4);
  sub_1AF4644D8();
  sub_1AFDFCD08();
  (*(v3 + 8))(v6, v2);
  return MEMORY[0x1B271ACB0](v7);
}

uint64_t sub_1AF924A40(uint64_t a1)
{
  v2 = sub_1AFDFC318();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v6 = v1[1];
  sub_1AFDFF288();
  (*(v3 + 16))(v5, v7 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v2);
  sub_1AF4644D8();
  sub_1AFDFCD08();
  (*(v3 + 8))(v5, v2);
  MEMORY[0x1B271ACB0](v6);
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF924B70(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_1AFDFC318();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - v10;
  v12 = *a1;
  v13 = a1[1];
  v14 = *a2;
  v15 = a2[1];
  v16 = *(v5 + 16);
  v16(&v19 - v10, v12 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v4, v9);
  (v16)(v7, v14 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v4);
  LOBYTE(a2) = sub_1AFDFC2D8();
  v17 = *(v5 + 8);
  v17(v7, v4);
  v17(v11, v4);
  return a2 & (v13 == v15);
}

unint64_t sub_1AF924CE8()
{
  result = qword_1EB6406C0;
  if (!qword_1EB6406C0)
  {
    result = swift_getWitnessTable(byte_1AFE85D68, &type metadata for AuthoringNode.Port, v0, v1);
    atomic_store(result, &qword_1EB6406C0);
  }

  return result;
}

uint64_t sub_1AF924D3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v26 = MEMORY[0x1E69E7CC0];
    sub_1AFC06F08(0, v1, 0);
    v4 = 0;
    v2 = v26;
    v5 = a1 + 64;
    v6 = 1 << *(a1 + 32);
    v7 = (v6 + 63) >> 6;
    v8 = (a1 + 64);
    while (1)
    {
      v10 = *v8++;
      v9 = v10;
      if (v10)
      {
        break;
      }

      v4 -= 64;
      if (!--v7)
      {
        goto LABEL_7;
      }
    }

    v6 = __clz(__rbit64(v9)) - v4;
LABEL_7:
    for (i = 0; i != v1; ++i)
    {
      v13 = *(*(a1 + 48) + 8 * v6);
      v14 = *(a1 + 36);
      v16 = *(v26 + 16);
      v15 = *(v26 + 24);
      if (v16 >= v15 >> 1)
      {
        v24 = *(a1 + 36);
        v25 = v6;
        sub_1AFC06F08(v15 > 1, v16 + 1, 1);
        v14 = v24;
        v6 = v25;
      }

      *(v26 + 16) = v16 + 1;
      *(v26 + 8 * v16 + 32) = v13;
      v17 = v6 >> 6;
      if ((*(v5 + 8 * (v6 >> 6)) & (-2 << v6)) != 0)
      {
        v12 = __clz(__rbit64(*(v5 + 8 * (v6 >> 6)) & (-2 << v6))) | v6 & 0xFFFFFFFFFFFFFFC0;
      }

      else
      {
        v12 = 1 << *(a1 + 32);
        v18 = v17 << 6;
        v19 = v17 + 1;
        v20 = (a1 + 72 + 8 * v17);
        while (v19 < (v12 + 63) >> 6)
        {
          v22 = *v20++;
          v21 = v22;
          v18 += 64;
          ++v19;
          if (v22)
          {
            sub_1AF0FBAE8(v6, v14, 0);
            v12 = __clz(__rbit64(v21)) + v18;
            goto LABEL_9;
          }
        }

        sub_1AF0FBAE8(v6, v14, 0);
      }

LABEL_9:
      v6 = v12;
    }
  }

  return v2;
}

uint64_t sub_1AF924F00(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v35 = MEMORY[0x1E69E7CC0];
    sub_1AFC06F08(0, v1, 0);
    v4 = 0;
    v2 = v35;
    v5 = 1 << *(a1 + 32);
    v6 = (v5 + 63) >> 6;
    v26 = a1 + 64;
    v7 = (a1 + 64);
    while (1)
    {
      v9 = *v7++;
      v8 = v9;
      if (v9)
      {
        break;
      }

      v4 -= 64;
      if (!--v6)
      {
        goto LABEL_7;
      }
    }

    v5 = __clz(__rbit64(v8)) - v4;
LABEL_7:
    v10 = 0;
    v27 = v1;
    do
    {
      v13 = *(a1 + 36);
      sub_1AF447040(*(a1 + 48) + 48 * v5, v34);
      sub_1AFDFF288();
      sub_1AF447040(v34, &v29);
      v14 = v29;
      if (v32)
      {
        if (v32 == 1)
        {
          sub_1AF447144(v30, v28);
          MEMORY[0x1B271ACB0](3);
          sub_1AFDFCEF8();
          sub_1AFDFD038();

          sub_1AF9AC90C(v33);

          sub_1AF4470F0(v28);
        }

        else
        {
          v15 = v31 || v30[2] | v30[3] | v29 | v30[1] | v30[0];
          MEMORY[0x1B271ACB0](v15);
        }
      }

      else
      {
        MEMORY[0x1B271ACB0](2);
        sub_1AFDFF2A8();
      }

      v16 = sub_1AFDFF2F8();
      sub_1AF44709C(v34);
      v35 = v2;
      v18 = *(v2 + 16);
      v17 = *(v2 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1AFC06F08(v17 > 1, v18 + 1, 1);
        v2 = v35;
      }

      *(v2 + 16) = v18 + 1;
      *(v2 + 8 * v18 + 32) = v16;
      v19 = v5 >> 6;
      if ((*(v26 + 8 * (v5 >> 6)) & (-2 << v5)) != 0)
      {
        v11 = __clz(__rbit64(*(v26 + 8 * (v5 >> 6)) & (-2 << v5))) | v5 & 0xFFFFFFFFFFFFFFC0;
        v12 = v27;
      }

      else
      {
        v11 = 1 << *(a1 + 32);
        v20 = v19 << 6;
        v21 = v19 + 1;
        v22 = (a1 + 72 + 8 * v19);
        v12 = v27;
        while (v21 < (v11 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            sub_1AF0FBAE8(v5, v13, 0);
            v11 = __clz(__rbit64(v23)) + v20;
            goto LABEL_9;
          }
        }

        sub_1AF0FBAE8(v5, v13, 0);
      }

LABEL_9:
      ++v10;
      v5 = v11;
    }

    while (v10 != v12);
  }

  return v2;
}

uint64_t sub_1AF9251E0(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1AF6270E4(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1AF92CA88(v6);
  return sub_1AFDFE348();
}

void sub_1AF92525C(unint64_t a1, unint64_t a2)
{
  v5 = HIDWORD(a1);
  if (HIDWORD(a1) || a1 != -1)
  {
    v6 = HIDWORD(a2);
    if (HIDWORD(a2) || a2 != -1)
    {
      v7 = v2;
      v8 = *v2;
      swift_unownedRetainStrong();
      sub_1AF6937A8(a1, &type metadata for IsSubEntityOf, &off_1F2564150, a2);

      swift_unownedRetainStrong();

      swift_unownedRetainStrong();

      if (swift_unknownObjectUnownedLoadStrong())
      {
        swift_unknownObjectRelease();
      }

      if (*(v7 + 24) == 1)
      {
        swift_unownedRetainStrong();
        v9[0] = __PAIR64__(v5, a1);
        v9[1] = v8;
        v9[2] = &type metadata for IsSubEntityOf;
        v9[3] = &off_1F2564150;
        v10 = a2;
        v11 = v6;
        v12 = v8;
        v13 = 8;
        sub_1AF6C67D0(v9);

        sub_1AF57955C(v9);
      }
    }
  }
}

void sub_1AF925378(void *a1)
{
  v2 = v1;
  v76 = sub_1AF43F7C0(MEMORY[0x1E69E7CC0]);
  sub_1AFCDACFC(a1, &v76);
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v108 = qword_1ED73B840;
  v109 = 0;
  v110 = 2;
  v111 = 0;
  v112 = 2;
  v113 = 0;
  sub_1AF705058(3, &v77);
  v102 = v77;
  v103 = v78;
  v104 = v79;
  v105 = v80 | 1;
  v106 = v81;
  v107 = v82;
  v4 = *(v2 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
  sub_1AF6B06C0(v2, &v102, 0x200000000, &v83);
  if (v83)
  {
    v95 = v83;
    v98 = v86;
    v99 = v87;
    v100 = v88;
    v101 = v89;
    v96 = v84;
    v97 = v85;
    v5 = sub_1AF6B9944();
    sub_1AF92E794(&v83, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF89FF4C);
    v6 = *(v5 + 2);
    if (v6)
    {
LABEL_5:
      v114 = v4;
      v7 = v76;
      v8 = 32;
      do
      {
        if (*(v7 + 16))
        {
          v9 = sub_1AF449D3C(*&v5[v8]);
          if (v10)
          {
            v11 = *(v7 + 56) + 16 * v9;
            v12 = *(v11 + 8);
            v13 = *v11;
            v14 = sub_1AF92AABC(v13, v12, 0, MEMORY[0x1E69E7CD0]);
            sub_1AF93E174();

            if (v64)
            {

              sub_1AF92DFB0(&v77, sub_1AF92EABC);

              return;
            }
          }
        }

        v8 += 8;
        --v6;
      }

      while (v6);
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
    v6 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v6)
    {
      goto LABEL_5;
    }
  }

  sub_1AF6B06C0(v2, &v102, 0x200000000, v90);
  if (*&v90[0])
  {
    if (v94 >= 1 && v92)
    {
      v15 = v91;
      v60 = v91 + 48 * v92;
      v61 = v93;
      do
      {
        v16 = *(v15 + 40);
        v17 = *(v16 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v17);
        os_unfair_lock_lock(*(v16 + 344));
        LODWORD(v17) = *(v16 + 24);

        v70 = 0;
        v68 = 0u;
        v69 = 0u;
        memset(v75, 0, 40);
        v18 = sub_1AF65A4B4(v17, 0, 0, &type metadata for GraphComponent, &off_1F2547EF8, &v68, v75);

        v19 = MEMORY[0x1E69E6720];
        sub_1AF92E794(v75, &qword_1ED72C1C0, sub_1AF66FF40, MEMORY[0x1E69E6720], sub_1AF92EB14);
        sub_1AF92E794(&v68, &qword_1ED72C1C0, sub_1AF66FF40, v19, sub_1AF92EB14);
        if (sub_1AF649CEC(v18))
        {
          sub_1AF649D40(v18, v61);
        }

        else
        {
          v21 = *(v16 + 232);
          v20 = *(v16 + 240);
          v22 = *(v16 + 120);
          v59 = *(v16 + 28);
          v58 = *(v16 + 32);
          v23 = *(v16 + 16);
          v24 = *(v16 + 40);
          v25 = v24[200];
          v114 = *(*(v23 + 88) + 8 * v18 + 32);

          if ((v25 & 1) != 0 || *(v114 + 200) == 1)
          {
            *(v23 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v24 = *(v16 + 40);
          }

          if (v24[212])
          {
            v57 = 0;
          }

          else
          {
            v57 = *(v114 + 212);
          }

          v56 = v24[208];
          v66 = *(v16 + 128);
          v26 = *(v16 + 256);
          v27 = v21;
          v28 = v64;
          sub_1AF5B4FCC(v24, v27, v20, 0, v16);
          v62 = *(v16 + 256);
          v63 = v26;
          v29 = v62 - v26;
          if (v62 == v26)
          {
            v30 = 0;
          }

          else
          {
            v30 = v26;
          }

          v64 = v28;
          v65 = v30;
          v75[0] = v30;
          v31 = *(*(v16 + 40) + 24);
          v32 = *(v31 + 16);
          if (v32)
          {
            v54 = v22;
            v55 = v15;
            v33 = v31 + 32;
            v53 = v31;

            for (i = 0; i != v32; ++i)
            {
              v35 = (v33 + 40 * i);
              if ((v35[4] & 1) == 0)
              {
                v36 = *v35;
                v38 = v35[2];
                v37 = v35[3];
                v39 = *(v114 + 24);
                v40 = *(v39 + 16);
                if (v40)
                {
                  v41 = (v39 + 32);
                  while (*v41 != v36)
                  {
                    v41 += 5;
                    if (!--v40)
                    {
                      goto LABEL_31;
                    }
                  }
                }

                else
                {
LABEL_31:
                  sub_1AF640BC8(v66 + v38 * v65 + v37, v29);
                }
              }
            }

            v15 = v55;
            LOBYTE(v22) = v54;
          }

          v42 = v59;
          v43 = v58;
          if (*(v23 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v23 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v16 + 72) * v29);
          }

          if (*(v16 + 184))
          {
            v44 = 0;
          }

          else
          {
            v44 = *(v16 + 168);
          }

          v74 = 0;

          MEMORY[0x1EEE9AC00](v45);
          *(&v53 - 28) = v42;
          *(&v53 - 108) = v43;
          v46 = v114;
          *(&v53 - 13) = v16;
          *(&v53 - 12) = v46;
          *(&v53 - 11) = 0u;
          *(&v53 - 9) = 0u;
          *(&v53 - 7) = v75;
          *(&v53 - 6) = v66;
          *(&v53 - 5) = &v74;
          LOBYTE(v46) = v57;
          *(&v53 - 32) = v56;
          *(&v53 - 7) = v18;
          *(&v53 - 24) = v46;
          v47 = v62;
          *(&v53 - 2) = v61;
          *(&v68 + 1) = v47;
          *&v69 = v44;
          DWORD2(v69) = -1;
          v70 = v63;
          v71 = v47;
          v72 = v63;
          v73 = v47;
          *&v68 = v63;
          v65 = v48;
          if (v29 >= 1)
          {
            do
            {
              v67 = v43;
              sub_1AF6248A8(v18, v42 | (v43 << 32), v22, v23, &v68, sub_1AF5C5ACC);
            }

            while ((*(&v68 + 1) - v68) > 0);
          }

          v49 = *(v16 + 192);
          if (v49)
          {
            v50 = *(v16 + 208);
            v52 = v62;
            v51 = v63;
            sub_1AF75D364(v63, v62, v49);
            sub_1AF75D364(v51, v52, v50);
          }
        }

        v15 += 48;
        os_unfair_lock_unlock(*(v16 + 344));
        os_unfair_lock_unlock(*(v16 + 376));
      }

      while (v15 != v60);
    }

    sub_1AF92E794(v90, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF89FF4C);
  }

  sub_1AF92DFB0(&v77, sub_1AF92EABC);
}

void *sub_1AF925B2C(uint64_t a1)
{
  v1 = 1 << *(a1 + 32);
  v2 = -1;
  if (v1 < 64)
  {
    v2 = ~(-1 << v1);
  }

  v3 = v2 & *(a1 + 64);
  v4 = (v1 + 63) >> 6;

  v6 = 0;
  v27 = v5;
  v7 = v5 + 72;
  v8 = MEMORY[0x1E69E7CC8];
  if (!v3)
  {
    goto LABEL_7;
  }

LABEL_6:
  v9 = v6;
LABEL_13:
  v12 = __clz(__rbit64(v3));
  v3 &= v3 - 1;
  v13 = v12 | (v9 << 6);
  sub_1AF447040(*(v27 + 48) + 48 * v13, v36);
  sub_1AF85B49C(*(v27 + 56) + 40 * v13, &v29);
  sub_1AF4473A0(v36, &v37);
  v40 = v29;
  *v41 = v30;
  *&v41[16] = v31;
  v11 = v9;
  while (1)
  {
    sub_1AF92E9D8(&v37, v42, &qword_1EB6406F0, sub_1AF92EA58);
    if (*(&v44 + 1) == 2)
    {
      break;
    }

    sub_1AF4473A0(v42, v36);
    v34[0] = v43;
    v34[1] = v44;
    v35 = v45;
    sub_1AFDFF288();
    sub_1AF447040(v36, &v29);
    v14 = v29;
    if (v33)
    {
      if (v33 == 1)
      {
        sub_1AF447144(&v29 + 8, v28);
        MEMORY[0x1B271ACB0](3);
        sub_1AFDFCEF8();
        sub_1AFDFD038();

        sub_1AF9AC90C(&v37);

        sub_1AF4470F0(v28);
      }

      else
      {
        v15 = v32 || *(&v30 + 1) | v31 | v29 | v30 | *(&v29 + 1);
        MEMORY[0x1B271ACB0](v15);
      }
    }

    else
    {
      MEMORY[0x1B271ACB0](2);
      sub_1AFDFF2A8();
    }

    v16 = sub_1AFDFF2F8();
    sub_1AF85B49C(v34, &v37);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v29 = v8;
    v18 = sub_1AF449CB8(v16);
    v20 = v19;
    if (v8[3] < (v8[2] + ((v19 & 1) == 0)))
    {
      sub_1AF83CA24(v8[2] + ((v19 & 1) == 0), isUniquelyReferenced_nonNull_native);
      v18 = sub_1AF449CB8(v16);
      if ((v20 & 1) != (v21 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }

LABEL_29:
      v8 = v29;
      if (v20)
      {
        goto LABEL_5;
      }

      goto LABEL_30;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_29;
    }

    v25 = v18;
    sub_1AF84D31C();
    v18 = v25;
    v8 = v29;
    if (v20)
    {
LABEL_5:
      sub_1AF85B4F8(&v37, v8[7] + 40 * v18);
      sub_1AF92E918(v34);
      sub_1AF44709C(v36);
      v6 = v11;
      if (v3)
      {
        goto LABEL_6;
      }

      goto LABEL_7;
    }

LABEL_30:
    v8[(v18 >> 6) + 8] |= 1 << v18;
    *(v8[6] + 8 * v18) = v16;
    v22 = v8[7] + 40 * v18;
    v23 = v37;
    v24 = v38;
    *(v22 + 32) = v39;
    *v22 = v23;
    *(v22 + 16) = v24;
    sub_1AF92E918(v34);
    sub_1AF44709C(v36);
    ++v8[2];
    v6 = v11;
    if (v3)
    {
      goto LABEL_6;
    }

LABEL_7:
    if (v4 <= v6 + 1)
    {
      v10 = v6 + 1;
    }

    else
    {
      v10 = v4;
    }

    v11 = v10 - 1;
    while (1)
    {
      v9 = v6 + 1;
      if (v6 + 1 >= v4)
      {
        break;
      }

      v3 = *(v7 + 8 * v6++);
      if (v3)
      {
        goto LABEL_13;
      }
    }

    v3 = 0;
    *v41 = 0;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    *&v41[8] = xmmword_1AFE505D0;
  }

  return v8;
}

void sub_1AF925F0C(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  v6 = *v3;
  swift_unknownObjectRetain();
  v7 = sub_1AF92D900(v6, a1);
  swift_unknownObjectRelease();
  *a3 = v7;
}

uint64_t sub_1AF925F78(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v12[16] = 1;
  v7 = sub_1AF3DA770(0, 0x1000000000000000uLL, 0, sub_1AF449D00, v12);
  sub_1AF9114A4();
  v8 = OBJC_IVAR____TtC3VFX14AuthoringGraph_id;
  v9 = sub_1AFDFC318();
  (*(*(v9 - 8) + 24))(v7 + v8, v6 + v8, v9);

  *v3 = v7;
  ObjectType = swift_getObjectType();
  return sub_1AF98EE94(a1, v7, ObjectType, a2);
}

uint64_t sub_1AF92606C@<X0>(void *a1@<X8>)
{
  type metadata accessor for AuthoringGraph(0);
  v2 = swift_allocObject();
  v3 = MEMORY[0x1E69E7CC0];
  v2[2] = 0;
  v2[3] = v3;
  v2[4] = 0;
  v2[5] = 0;
  v2[6] = sub_1AF42B088(v3);
  result = sub_1AFDFC308();
  *a1 = v2;
  return result;
}

void *sub_1AF9260D4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1AF92DBF4(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1AF926100(void *a1)
{
  v2 = *v1;
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3C8();
  v4[6] = v2;
  sub_1AF448018(v4, v4[3]);
  sub_1AF448068();
  sub_1AFDFEC38();
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v4);
}

uint64_t sub_1AF9261A8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v26 = MEMORY[0x1E69E7CC0];
  if (v2 >> 62)
  {
    v3 = sub_1AFDFE108();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1B2719C70](i, v2);
      }

      else
      {
        v5 = *(v2 + 8 * i + 32);
      }

      if (*v5 == _TtC3VFX24InspectorSetECSValueNode || (type metadata accessor for InspectorSetWorldValueNode(0), swift_dynamicCastClass()))
      {
        sub_1AFDFE328();
        sub_1AFDFE398();
        sub_1AFDFE3A8();
        sub_1AFDFE348();
      }

      else
      {
      }
    }

    v6 = v26;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  if ((v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
  {
    v21 = sub_1AFDFE108();
    if (v21)
    {
      v22 = v21;
      v7 = sub_1AFC892CC();

      sub_1AF56E010(v7 + 32, v22, v6);
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {

    v7 = v6;
  }

  v26 = v7;
  sub_1AF9251E0(&v26);

  v8 = v26;
  if (v26 < 0 || (v26 & 0x4000000000000000) != 0)
  {
    v9 = sub_1AFDFE108();
  }

  else
  {
    v9 = *(v26 + 16);
  }

  v25 = v9 - 1;
  if (v9 <= 1)
  {
  }

  else
  {
    v10 = 0;
    v24 = v8 & 0xC000000000000001;
    do
    {
      if (v24)
      {
        v11 = MEMORY[0x1B2719C70](v10 + 1, v8);
        v12 = MEMORY[0x1B2719C70](v10, v8);
        v13 = v12;
      }

      else
      {
        v14 = v8 + 8 * v10;
        v13 = *(v14 + 32);
        v11 = *(v14 + 40);
      }

      MEMORY[0x1EEE9AC00](v12);
      v23[6] = sub_1AF92EF34;
      v23[7] = v11;
      MEMORY[0x1EEE9AC00](v15);
      v23[2] = sub_1AF92EF78;
      v23[3] = v16;
      sub_1AF3FC1C0(sub_1AF92EF58, v23, 0, 0x1000000000000000uLL, 0, MEMORY[0x1E69E7CC0]);
      v17 = sub_1AF449CC8();

      *(a1 + 16) = v17;

      v18 = *(v13 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v13 + 16) = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v18 = sub_1AFC0DC4C(v18);
        *(v13 + 16) = v18;
      }

      *(v18 + 4) = v11;
      *(v18 + 5) = 0;

      ++v10;
    }

    while (v25 != v10);
  }
}

uint64_t sub_1AF92658C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v26 = MEMORY[0x1E69E7CC0];
  if (v2 >> 62)
  {
    v3 = sub_1AFDFE108();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1B2719C70](i, v2);
      }

      else
      {
        v5 = *(v2 + 8 * i + 32);
      }

      if (*v5 == _TtC3VFX29InspectorSetParticleValueNode)
      {
        sub_1AFDFE328();
        sub_1AFDFE398();
        sub_1AFDFE3A8();
        sub_1AFDFE348();
      }

      else
      {
      }
    }

    v6 = v26;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  if ((v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
  {
    v21 = sub_1AFDFE108();
    if (v21)
    {
      v22 = v21;
      v7 = sub_1AFC892CC();

      sub_1AF56E010(v7 + 32, v22, v6);
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {

    v7 = v6;
  }

  v26 = v7;
  sub_1AF9251E0(&v26);

  v8 = v26;
  if (v26 < 0 || (v26 & 0x4000000000000000) != 0)
  {
    v9 = sub_1AFDFE108();
  }

  else
  {
    v9 = *(v26 + 16);
  }

  v25 = v9 - 1;
  if (v9 <= 1)
  {
  }

  else
  {
    v10 = 0;
    v24 = v8 & 0xC000000000000001;
    do
    {
      if (v24)
      {
        v11 = MEMORY[0x1B2719C70](v10 + 1, v8);
        v12 = MEMORY[0x1B2719C70](v10, v8);
        v13 = v12;
      }

      else
      {
        v14 = v8 + 8 * v10;
        v13 = *(v14 + 32);
        v11 = *(v14 + 40);
      }

      MEMORY[0x1EEE9AC00](v12);
      v23[6] = sub_1AF92E8D4;
      v23[7] = v11;
      MEMORY[0x1EEE9AC00](v15);
      v23[2] = sub_1AF915248;
      v23[3] = v16;
      sub_1AF3FC1C0(sub_1AF92E8FC, v23, 0, 0x1000000000000000uLL, 0, MEMORY[0x1E69E7CC0]);
      v17 = sub_1AF449CC8();

      *(a1 + 16) = v17;

      v18 = *(v13 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v13 + 16) = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v18 = sub_1AFC0DC4C(v18);
        *(v13 + 16) = v18;
      }

      *(v18 + 4) = v11;
      *(v18 + 5) = 0;

      ++v10;
    }

    while (v25 != v10);
  }
}

uint64_t sub_1AF926958()
{
  v0 = sub_1AF43F2F8(MEMORY[0x1E69E7CC0]);
  v1 = sub_1AF932728();
  v2 = v1;
  if (v1 >> 62)
  {
    v3 = sub_1AFDFE108();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_36:

    goto LABEL_37;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_36;
  }

LABEL_3:
  for (i = 0; i != v3; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1B2719C70](i, v2);
    }

    else
    {
    }

    type metadata accessor for StartNode(0);
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = *(*(v6 + 16) + 32);
      if (*v7 == _TtC3VFX29InspectorSetParticleValueNode)
      {
        v8 = 0;
        v28[0] = *(v7 + OBJC_IVAR____TtC3VFX29InspectorSetParticleValueNode_stage);
      }

      else
      {
        type metadata accessor for OnTriggerNode(0);
        v9 = swift_dynamicCastClass();
        if (!v9)
        {
          goto LABEL_17;
        }

        *v28 = *(v9 + OBJC_IVAR____TtC3VFX13OnTriggerNode_eventType);
        v10 = *v28;
        v11 = *(*v9 + 320);

        v11(&v28[8], v10);

        v8 = 1;
      }
    }

    else
    {
      type metadata accessor for OnFirstFrameNode(0);
      if (!swift_dynamicCastClass())
      {
        type metadata accessor for OnUpdateNode(0);
        if (!swift_dynamicCastClass())
        {
          type metadata accessor for OnParticleStageNode(0);
          v21 = swift_dynamicCastClass();
          if (v21)
          {
            v8 = 0;
            v28[0] = *(v21 + OBJC_IVAR____TtC3VFX19OnParticleStageNode_stage);
            goto LABEL_18;
          }
        }

LABEL_17:
        v8 = 2;
        memset(v28, 0, sizeof(v28));
        goto LABEL_18;
      }

      *v28 = 1;
      memset(&v28[8], 0, 33);
      v8 = 2;
    }

LABEL_18:
    v29 = v8;
    if (v0[2] && (v12 = sub_1AF41AED0(v28), (v13 & 1) != 0))
    {
      v27 = *(v0[7] + 8 * v12);
    }

    else
    {
      v27 = MEMORY[0x1E69E7CC0];
    }

    MEMORY[0x1B2718E00](v14);
    if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1AFDFD458();
    }

    sub_1AFDFD4B8();
    v15 = v27;
    sub_1AF447040(v28, v26);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v0;
    v17 = sub_1AF41AED0(v26);
    v19 = v18;
    if (v0[3] < (v0[2] + ((v18 & 1) == 0)))
    {
      sub_1AF83BD58(v0[2] + ((v18 & 1) == 0), isUniquelyReferenced_nonNull_native);
      v17 = sub_1AF41AED0(v26);
      if ((v19 & 1) != (v20 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }

LABEL_28:
      if ((v19 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_29;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_28;
    }

    v22 = v17;
    sub_1AF84CC48();
    v17 = v22;
    v0 = v25;
    if ((v19 & 1) == 0)
    {
LABEL_4:
      v0[(v17 >> 6) + 8] |= 1 << v17;
      v5 = v17;
      sub_1AF447040(v26, v0[6] + 48 * v17);
      *(v0[7] + 8 * v5) = v15;

      sub_1AF44709C(v26);
      sub_1AF44709C(v28);
      ++v0[2];
      continue;
    }

LABEL_29:
    *(v0[7] + 8 * v17) = v15;

    sub_1AF44709C(v26);
    sub_1AF44709C(v28);
  }

LABEL_37:

  v23 = sub_1AF92E264(v0);

  return v23;
}

void *sub_1AF926DC4(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v263 = a5;
  v259 = type metadata accessor for TriggerScript(0);
  MEMORY[0x1EEE9AC00](v259);
  v258 = &v235 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for ParticleUpdateScript(0);
  MEMORY[0x1EEE9AC00](updated);
  v255 = &v235 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  inited = type metadata accessor for ParticleInitScript(0);
  MEMORY[0x1EEE9AC00](inited);
  v254 = &v235 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v262 = type metadata accessor for GraphScript(0);
  MEMORY[0x1EEE9AC00](v262);
  v261 = &v235 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v267 = a3;
  if (a2)
  {
    swift_getObjectType();
    v13 = sub_1AF92975C();
    v16 = v15 == 0;
    if (v15)
    {
      v17 = v13;
    }

    else
    {
      v17 = 0;
    }

    v270 = v17;
  }

  else
  {
    v270 = 0;
    v16 = 1;
  }

  *&v274 = 0;
  MEMORY[0x1EEE9AC00](v13);
  *(&v235 - 4) = &v274;
  *(&v235 - 3) = sub_1AF9298B4;
  MEMORY[0x1EEE9AC00](v18);
  v233 = sub_1AF92DD30;
  v234 = v19;
  v20 = MEMORY[0x1E69E7CC0];
  *&v281 = sub_1AF42B0F4(MEMORY[0x1E69E7CC0]);
  *(&v281 + 1) = v21;
  sub_1AF412AA8(sub_1AF9122F0, (&v235 - 4), 1, 0x1000000000000000uLL, 0, v20, &v281);
  if (v5)
  {
    goto LABEL_185;
  }

  v272 = v16;
  v266 = a2;

  v23 = v274;
  if (v274)
  {
  }

  v264 = v23;
  MEMORY[0x1EEE9AC00](v22);
  v24 = MEMORY[0x1E69E7CC0];
  sub_1AF3FB9C8(sub_1AF92DD50, (&v235 - 4), 0, 0x1000000000000000uLL, 0, MEMORY[0x1E69E7CC0]);
  v25 = sub_1AF449CC8();

  *(a1 + 24) = v25;

  MEMORY[0x1EEE9AC00](v26);
  MEMORY[0x1EEE9AC00](v27);
  v233 = sub_1AF92DD70;
  v234 = v28;
  sub_1AF3FB9C8(sub_1AF92EF04, (&v235 - 4), 0, 0x1000000000000000uLL, 0, v24);
  v29 = sub_1AF449CC8();

  *(a1 + 24) = v29;

  v30 = v272;
  sub_1AF99D45C(v270, v272, a4);
  sub_1AF9211E0(1, a4);
  v271 = 0;
  v249 = sub_1AF932954();

  v32 = swift_allocObject();
  v33 = v32;
  v32[16] = 0;
  v34 = v266;
  if (v266)
  {
    v273 = &unk_1F25D71B0;
    v32 = swift_dynamicCastObjCProtocolConditional();
    if (v32)
    {
      v32 = [v32 world];
      v35 = v32;
    }

    else
    {
      v35 = 0;
    }
  }

  else
  {
    v35 = 0;
  }

  a2 = &v235;
  MEMORY[0x1EEE9AC00](v32);
  *(&v235 - 6) = a4;
  *(&v235 - 5) = v33;
  *(&v235 - 4) = v35;
  *(&v235 - 3) = v34;
  MEMORY[0x1EEE9AC00](v36);
  v233 = sub_1AF92DDFC;
  v234 = v37;
  v301 = v34;
  v38 = MEMORY[0x1E69E7CC0];
  *&v281 = sub_1AF42B0F4(MEMORY[0x1E69E7CC0]);
  *(&v281 + 1) = v39;
  v40 = v271;
  sub_1AF412D4C(sub_1AF441EF8, (&v235 - 4), 1, 0x1000000000000000uLL, 0, v38, &v281);
  if (v40)
  {
LABEL_185:

    __break(1u);
LABEL_186:

    __break(1u);
LABEL_187:
    sub_1AFDFF1A8();
    __break(1u);
LABEL_188:
    *&v295[0] = 0;
    *(&v295[0] + 1) = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD000000000000014, 0x80000001AFF3AC20);
    sub_1AFDFE458();
    LODWORD(v234) = 0;
    v233 = 402;
    sub_1AFDFE518();
    __break(1u);

    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  if (v33[16])
  {
    sub_1AF93E174();
  }

  MEMORY[0x1EEE9AC00](v41);
  MEMORY[0x1EEE9AC00](v42);
  v43 = MEMORY[0x1E69E7CC0];
  *&v281 = sub_1AF42B0F4(MEMORY[0x1E69E7CC0]);
  *(&v281 + 1) = v44;
  v45 = v249;
  sub_1AF412D4C(sub_1AF449DD8, (&v235 - 4), 1, 0x1000000000000000uLL, 0, v43, &v281);

  MEMORY[0x1EEE9AC00](v46);
  MEMORY[0x1EEE9AC00](v47);
  v233 = sub_1AF92DE3C;
  v234 = v48;
  v49 = MEMORY[0x1E69E7CC0];
  *&v281 = sub_1AF42B0F4(MEMORY[0x1E69E7CC0]);
  *(&v281 + 1) = v50;
  sub_1AF412D4C(sub_1AF449DD8, (&v235 - 4), 1, 0x1000000000000000uLL, 0, v49, &v281);
  a2 = 0;

  type metadata accessor for GraphScopeChecker();
  swift_allocObject();

  v51 = a4;
  sub_1AF93411C(v45, v51);
  v52 = sub_1AF9359F4();

  type metadata accessor for GraphRunModeChecker();
  v53 = swift_allocObject();
  *(v53 + 16) = v45;
  *(v53 + 24) = v51;

  v260 = v51;
  v54 = sub_1AF9361BC();
  swift_setDeallocating();

  swift_deallocClassInstance();
  if (v52 & 1) != 0 && (v54)
  {
    v271 = 0;
    v55 = v260;
  }

  else
  {
    v55 = v260;
    sub_1AF93E174();
    v271 = 0;
  }

  v56 = sub_1AF43F1BC(MEMORY[0x1E69E7CC0]);
  v252 = sub_1AF926958();
  if (v30)
  {
    goto LABEL_31;
  }

  v57 = v270;
  if (v270 == 0xFFFFFFFF)
  {
    v287 = 0;
    v285 = 0u;
    v286 = 0u;
    v283 = 0u;
    v284 = 0u;
    v282 = 0u;
    v281 = 0u;
  }

  else
  {

    sub_1AF3CA1CC(v57, &v281);
  }

  v278 = v285;
  v279 = v286;
  v274 = v281;
  v275 = v282;
  v280 = v287;
  v276 = v283;
  v277 = v284;
  if (!v281)
  {
LABEL_31:
    v251 = 0;
  }

  else
  {
    v251 = BYTE13(v277);
    sub_1AF92E794(&v274, &unk_1EB634140, &type metadata for EmitterDescription, MEMORY[0x1E69E6720], sub_1AF89FF4C);
  }

  v58 = swift_allocObject();
  *(v58 + 16) = 0;
  v236 = (v58 + 16);
  v59 = swift_allocObject();
  swift_weakInit();
  v60 = swift_allocObject();
  *(v60 + 16) = v59;
  *(v60 + 24) = v58;
  v247 = v60;
  v61 = v252;
  v62 = 1 << *(v252 + 32);
  v63 = -1;
  if (v62 < 64)
  {
    v63 = ~(-1 << v62);
  }

  v64 = v63 & *(v252 + 64);
  v244 = 0x80000001AFF3AC60;
  v245 = (v62 + 63) >> 6;
  v237 = v58;

  v65 = 0;
  v66 = v61 + 72;
  v243 = xmmword_1AFE85E00;
  v240 = xmmword_1AFE22A20;
  v239 = xmmword_1AFE431C0;
  v250 = v61 + 72;
  if (!v64)
  {
    goto LABEL_36;
  }

LABEL_35:
  v67 = v65;
LABEL_43:
  v265 = (v64 - 1) & v64;
  v70 = __clz(__rbit64(v64)) | (v67 << 6);
  v71 = v252;
  sub_1AF447040(*(v252 + 48) + 48 * v70, &v296);
  v72 = *(*(v71 + 56) + 8 * v70);
  sub_1AF4473A0(&v296, &v274);
  *&v277 = v72;

  while (1)
  {
    sub_1AF92E9D8(&v274, &v281, &qword_1EB6406C8, sub_1AF92DE60);
    v73 = v284;
    if (!v284)
    {
      break;
    }

    sub_1AF4473A0(&v281, &v274);
    sub_1AF447040(&v274, &v296);
    v301 = v73;
    v268 = v56;
    if (!v300)
    {
      v86 = swift_allocObject();
      v253 = &v235;
      *(v86 + 16) = 0;
      LOBYTE(v296) = 0;
      MEMORY[0x1EEE9AC00](v86);
      *(&v235 - 6) = v73;
      *(&v235 - 5) = v55;
      *(&v235 - 4) = v87;
      *(&v235 - 3) = 0xD000000000000012;
      v233 = v244;
      v234 = &v296;
      v88 = v271;
      sub_1AF3FC1C0(sub_1AF92EF1C, (&v235 - 8), 0, 0x1000000000000000uLL, 0, MEMORY[0x1E69E7CC0]);
      v89 = sub_1AF449CC8();

      v73[2] = v89;

      if (*(v86 + 16) == 1)
      {
        sub_1AF93E174();
        v56 = v268;
        if (v88)
        {
          goto LABEL_184;
        }

        v80 = 0;
      }

      else
      {
        v80 = v88;
        v56 = v268;
      }

      if (v296 == 1)
      {
        sub_1AF938D88();
      }

LABEL_57:
      if ((v251 & 1) == 0)
      {
        goto LABEL_64;
      }

      goto LABEL_62;
    }

    v74 = sub_1AF44709C(&v296);
    LOBYTE(v295[0]) = 0;
    MEMORY[0x1EEE9AC00](v74);
    MEMORY[0x1EEE9AC00](v75);
    v233 = sub_1AF92DECC;
    v234 = v76;
    v77 = MEMORY[0x1E69E7CC0];
    *&v296 = sub_1AF42B0F4(MEMORY[0x1E69E7CC0]);
    *(&v296 + 1) = v78;
    v79 = v271;
    sub_1AF412D4C(sub_1AF9122F0, (&v235 - 4), 1, 0x1000000000000000uLL, 0, v77, &v296);
    if (v79)
    {
      goto LABEL_186;
    }

    v80 = 0;

    if (v295[0])
    {
      goto LABEL_57;
    }

    v81 = v301;
    v82 = [objc_allocWithZone(type metadata accessor for GraphDiagnostics(0)) init];
    v83 = swift_allocObject();
    v271 = &v235;
    *(v83 + 16) = 0;
    LOBYTE(v296) = 0;
    MEMORY[0x1EEE9AC00](v83);
    *(&v235 - 6) = v81;
    *(&v235 - 5) = v82;
    *(&v235 - 4) = v84;
    *(&v235 - 3) = 0;
    v233 = 0xE000000000000000;
    v234 = &v296;
    sub_1AF3FC1C0(sub_1AF92DEE8, (&v235 - 8), 0, 0x1000000000000000uLL, 0, MEMORY[0x1E69E7CC0]);
    v85 = sub_1AF449CC8();

    v81[2] = v85;

    sub_1AF93E174();
    v80 = 0;
    v56 = v268;
    if (v296 == 1)
    {
      sub_1AF938D88();
    }

    v55 = v260;
    if ((v251 & 1) == 0)
    {
      goto LABEL_64;
    }

LABEL_62:
    sub_1AF447040(&v274, &v296);
    if (v300)
    {
      sub_1AF44709C(&v296);
LABEL_64:
      sub_1AF447040(&v274, &v296);
      if (!v300 || (sub_1AF44709C(&v296), !v264))
      {
        v99 = 0;
        v100 = v80;
        goto LABEL_82;
      }

      v91 = swift_allocObject();
      v92 = v91;
      *(v91 + 16) = 0;
      if (qword_1EB6325F0 != -1)
      {
        v91 = swift_once();
      }

      v271 = &v235;
      MEMORY[0x1EEE9AC00](v91);
      v233 = v55;
      v234 = v92;
      v93 = v301;
      sub_1AF3FC1C0(sub_1AF92E754, (&v235 - 4), v94, v95, v96, MEMORY[0x1E69E7CC0]);
      v56 = v55;
      v97 = v80;
      v98 = sub_1AF449CC8();

      v93[2] = v98;

      if (*(v92 + 16) != 1)
      {

        v99 = 3;
LABEL_80:
        v100 = v97;
        v55 = v56;
        goto LABEL_81;
      }

      sub_1AF93E174();
      if (v97)
      {
        goto LABEL_184;
      }

      v99 = 3;
      goto LABEL_77;
    }

    v101 = swift_allocObject();
    v102 = v101;
    *(v101 + 16) = 0;
    if (qword_1EB6325F0 != -1)
    {
      v101 = swift_once();
    }

    v271 = &v235;
    MEMORY[0x1EEE9AC00](v101);
    v233 = v55;
    v234 = v102;
    v103 = v301;
    sub_1AF3FC1C0(sub_1AF92EF40, (&v235 - 4), v104, v105, v106, MEMORY[0x1E69E7CC0]);
    v56 = v55;
    v97 = v80;
    v107 = sub_1AF449CC8();

    v103[2] = v107;

    if (*(v102 + 16) != 1)
    {

      v99 = 2;
      goto LABEL_80;
    }

    sub_1AF93E174();
    if (v97)
    {
LABEL_184:

      sub_1AF44709C(&v274);

      sub_1AF929900(v236, v55);

      goto LABEL_11;
    }

    v99 = 2;
LABEL_77:
    v100 = 0;
LABEL_81:
    v56 = v268;
LABEL_82:
    sub_1AF937E48(v266, v90, v267, v269, v55);
    v271 = v100;
    if (v100)
    {
      sub_1AF44709C(&v274);

      goto LABEL_183;
    }

    LODWORD(v253) = v99;
    if (v272 || !sub_1AFABF13C(v270))
    {
      if (sub_1AF932A58(v55))
      {
        v108 = sub_1AF92E558(&v274);
        v113 = v112;
        v114 = byte_1EB6C3348;
        type metadata accessor for GraphCodeGen();
        swift_allocObject();

        v116 = sub_1AF94C4E4(v115, v99, v114);
        *(v116 + 40) = 1;
        *(v116 + 16) = v243;

        *(v116 + 32) = v263;

        v117 = v271;
        sub_1AF95665C(v55);
        v271 = v117;
        if (v117)
        {
          sub_1AF44709C(&v274);

LABEL_183:

          sub_1AF929900(v236, v55);

LABEL_11:
          byte_1EB6C3349 = 0;
          return v56;
        }

        v118 = sub_1AF95644C(v108, v113);
        v110 = v119;
        v121 = v120;
        v123 = v122;

        if (v123)
        {

          v108 = 0;
          v109 = 0;
          v110 = 0;
          v111 = 0;
          v56 = v268;
          a2 = 1;
        }

        else
        {
          v109 = v118;
          v124 = v121;
          v56 = v268;
          a2 = v113;
          v111 = v124;
        }
      }

      else
      {
        v108 = 0;
        a2 = 0;
        v109 = 0;
        v110 = 0;
        v111 = 0;
      }
    }

    else
    {
      v108 = 0;
      v109 = 0;
      v110 = 0;
      v111 = 0;
      a2 = 1;
    }

    sub_1AF447040(&v274, &v296);
    if (!v300)
    {
      sub_1AF447040(&v296, v295);
      if (LOBYTE(v295[0]) == 5)
      {
        if (a2)
        {
          if (a2 != 1)
          {
            v248 = v108;
            v131 = v109;
            v132 = *(updated + 40);
            v133 = type metadata accessor for ScriptIndex(0);
            v134 = v255;
            (*(*(v133 - 8) + 56))(&v255[v132], 1, 1, v133);
            *(v134 + 40) = 1;
            v135 = v247;
            *(v134 + 48) = sub_1AF92DE58;
            *(v134 + 56) = v135;
            *(v134 + 24) = 0x4020100u >> (8 * v253);
            sub_1AF89FF4C(0, &qword_1ED72F7C0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
            v136 = swift_allocObject();
            *(v136 + 16) = v239;
            *(v136 + 32) = v248;
            *(v136 + 40) = a2;
            *(v134 + 8) = v110;
            *(v134 + 16) = v136;
            *(v134 + 32) = v111;
            *v134 = v131;
            *(&v289 + 1) = updated;
            v290 = &off_1F255BB20;
            v137 = sub_1AF585714(&v288);
            sub_1AF92E010(v134, v137, type metadata accessor for ParticleUpdateScript);
            v292 = v288;
            *v293 = v289;
            *&v293[16] = v290;

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v294[0] = v56;
            sub_1AF857470(&v292, &v274, isUniquelyReferenced_nonNull_native);
            sub_1AF92DF5C(v248, a2, v131, v110, v111);

            sub_1AF44709C(&v274);
            v56 = v294[0];
            v139 = type metadata accessor for ParticleUpdateScript;
            goto LABEL_162;
          }

LABEL_111:
          sub_1AF447040(&v274, &v288);
          v292 = 0u;
          memset(v293, 0, sizeof(v293));
          v145 = swift_isUniquelyReferenced_nonNull_native();
          v294[0] = v56;
          v146 = sub_1AF41AED0(&v288);
          v148 = v147;
          if (v56[3] >= (v56[2] + ((v147 & 1) == 0)))
          {
            if ((v145 & 1) == 0)
            {
              v229 = v146;
              sub_1AF84D184();
              v146 = v229;
            }
          }

          else
          {
            sub_1AF83C6A4(v56[2] + ((v147 & 1) == 0), v145);
            v146 = sub_1AF41AED0(&v288);
            if ((v148 & 1) != (v149 & 1))
            {
              goto LABEL_187;
            }
          }

          v55 = v260;
          v56 = v294[0];
          if (v148)
          {
            sub_1AF85B4F8(&v292, *(v294[0] + 56) + 40 * v146);

            sub_1AF44709C(&v288);
LABEL_140:
            sub_1AF44709C(&v274);
LABEL_164:
            v66 = v250;
            v64 = v265;
LABEL_165:
            sub_1AF44709C(&v296);
            if (v64)
            {
              goto LABEL_35;
            }

            goto LABEL_36;
          }

          *(v294[0] + 8 * (v146 >> 6) + 64) |= 1 << v146;
          v202 = v146;
          sub_1AF447040(&v288, v56[6] + 48 * v146);
          v203 = v56[7] + 40 * v202;
          v204 = v292;
          v205 = *v293;
          *(v203 + 32) = *&v293[16];
          *v203 = v204;
          *(v203 + 16) = v205;

          sub_1AF44709C(&v288);
LABEL_143:
          sub_1AF44709C(&v274);
          ++v56[2];
          goto LABEL_164;
        }

LABEL_117:
        sub_1AF447040(&v274, &v288);
        v292 = 0uLL;
        *v293 = 0;
        *&v293[8] = v240;
        v156 = swift_isUniquelyReferenced_nonNull_native();
        v294[0] = v56;
        v157 = sub_1AF41AED0(&v288);
        v159 = v158;
        if (v56[3] >= (v56[2] + ((v158 & 1) == 0)))
        {
          if ((v156 & 1) == 0)
          {
            v230 = v157;
            sub_1AF84D184();
            v157 = v230;
          }
        }

        else
        {
          sub_1AF83C6A4(v56[2] + ((v158 & 1) == 0), v156);
          v157 = sub_1AF41AED0(&v288);
          if ((v159 & 1) != (v160 & 1))
          {
            goto LABEL_187;
          }
        }

        v55 = v260;
        v56 = v294[0];
        if (v159)
        {
          sub_1AF85B4F8(&v292, *(v294[0] + 56) + 40 * v157);

          sub_1AF44709C(&v288);
LABEL_148:
          sub_1AF44709C(&v274);
LABEL_151:
          v64 = v265;
          v66 = v250;
          goto LABEL_165;
        }

        *(v294[0] + 8 * (v157 >> 6) + 64) |= 1 << v157;
        v206 = v157;
        sub_1AF447040(&v288, v56[6] + 48 * v157);
        v207 = v56[7] + 40 * v206;
        v208 = v292;
        v209 = *v293;
        *(v207 + 32) = *&v293[16];
        *v207 = v208;
        *(v207 + 16) = v209;

        sub_1AF44709C(&v288);
LABEL_150:
        sub_1AF44709C(&v274);
        ++v56[2];
        goto LABEL_151;
      }

      if (LOBYTE(v295[0]) != 3)
      {
        goto LABEL_188;
      }

      if (!a2)
      {
        goto LABEL_117;
      }

      if (a2 == 1)
      {
        goto LABEL_111;
      }

      v248 = v108;
      v214 = v109;
      v215 = *(inited + 40);
      v216 = type metadata accessor for ScriptIndex(0);
      v134 = v254;
      (*(*(v216 - 8) + 56))(&v254[v215], 1, 1, v216);
      *(v134 + 40) = 1;
      v217 = v247;
      *(v134 + 48) = sub_1AF92DE58;
      *(v134 + 56) = v217;
      *v134 = 0x4020100u >> (8 * v253);
      sub_1AF89FF4C(0, &qword_1ED72F7C0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
      v218 = swift_allocObject();
      *(v218 + 16) = v239;
      *(v218 + 32) = v248;
      *(v218 + 40) = a2;
      *(v134 + 24) = v218;
      *(v134 + 32) = v111;
      *(v134 + 8) = v214;
      *(v134 + 16) = v110;
      *(&v289 + 1) = inited;
      v290 = &off_1F255BA00;
      v219 = sub_1AF585714(&v288);
      sub_1AF92E010(v134, v219, type metadata accessor for ParticleInitScript);
      v292 = v288;
      *v293 = v289;
      *&v293[16] = v290;

      v220 = swift_isUniquelyReferenced_nonNull_native();
      v294[0] = v56;
      sub_1AF857470(&v292, &v274, v220);
      sub_1AF92DF5C(v248, a2, v214, v110, v111);

      sub_1AF44709C(&v274);
      v56 = v294[0];
      v139 = type metadata accessor for ParticleInitScript;
LABEL_162:
      v176 = v139;
      v177 = v134;
LABEL_163:
      sub_1AF92DFB0(v177, v176);
      v55 = v260;
      goto LABEL_164;
    }

    if (v300 == 1)
    {
      sub_1AF447040(&v296, v295);
      v125 = *&v295[0];
      sub_1AF447144(v295 + 8, v294);
      if (!a2)
      {
        v150 = v125;
        sub_1AF447040(&v274, &v288);
        v292 = 0uLL;
        *v293 = 0;
        *&v293[8] = v240;
        v151 = swift_isUniquelyReferenced_nonNull_native();
        v291 = v56;
        v152 = sub_1AF41AED0(&v288);
        v154 = v153;
        if (v56[3] >= (v56[2] + ((v153 & 1) == 0)))
        {
          if ((v151 & 1) == 0)
          {
            v228 = v152;
            sub_1AF84D184();
            v152 = v228;
          }
        }

        else
        {
          sub_1AF83C6A4(v56[2] + ((v153 & 1) == 0), v151);
          v152 = sub_1AF41AED0(&v288);
          if ((v154 & 1) != (v155 & 1))
          {
            goto LABEL_187;
          }
        }

        v55 = v260;
        v56 = v291;
        if (v154)
        {
          sub_1AF85B4F8(&v292, v291[7] + 40 * v152);

          sub_1AF44709C(&v288);
          sub_1AF4470F0(v294);
          goto LABEL_148;
        }

        v291[(v152 >> 6) + 8] |= 1 << v152;
        v198 = v152;
        sub_1AF447040(&v288, v56[6] + 48 * v152);
        v199 = v56[7] + 40 * v198;
        v200 = v292;
        v201 = *v293;
        *(v199 + 32) = *&v293[16];
        *v199 = v200;
        *(v199 + 16) = v201;

        sub_1AF44709C(&v288);
        sub_1AF4470F0(v294);
        goto LABEL_150;
      }

      v241 = v125;
      if (a2 == 1)
      {
        sub_1AF447040(&v274, &v288);
        v292 = 0u;
        memset(v293, 0, sizeof(v293));
        v126 = swift_isUniquelyReferenced_nonNull_native();
        v291 = v56;
        v127 = sub_1AF41AED0(&v288);
        v129 = v128;
        if (v56[3] >= (v56[2] + ((v128 & 1) == 0)))
        {
          if ((v126 & 1) == 0)
          {
            v227 = v127;
            sub_1AF84D184();
            v127 = v227;
          }
        }

        else
        {
          sub_1AF83C6A4(v56[2] + ((v128 & 1) == 0), v126);
          v127 = sub_1AF41AED0(&v288);
          if ((v129 & 1) != (v130 & 1))
          {
            goto LABEL_187;
          }
        }

        v55 = v260;
        v56 = v291;
        if (v129)
        {
          sub_1AF85B4F8(&v292, v291[7] + 40 * v127);

          sub_1AF44709C(&v288);
          sub_1AF4470F0(v294);
          goto LABEL_140;
        }

        v291[(v127 >> 6) + 8] |= 1 << v127;
        v194 = v127;
        sub_1AF447040(&v288, v56[6] + 48 * v127);
        v195 = v56[7] + 40 * v194;
        v196 = v292;
        v197 = *v293;
        *(v195 + 32) = *&v293[16];
        *v195 = v196;
        *(v195 + 16) = v197;

        sub_1AF44709C(&v288);
        sub_1AF4470F0(v294);
        goto LABEL_143;
      }

      v242 = v111;
      v161 = v259;
      v238 = v110;
      v246 = v109;
      v162 = *(v259 + 44);
      v163 = type metadata accessor for ScriptIndex(0);
      v164 = *(*(v163 - 8) + 56);
      v165 = v108;
      v248 = v108;
      v166 = v258;
      v164(&v258[v162], 1, 1, v163);
      v167 = v166 + *(v161 + 52);
      *v167 = 0u;
      *(v167 + 16) = 0u;
      *(v167 + 32) = 6;
      *(v166 + 41) = 1;
      v168 = v247;
      *(v166 + 48) = sub_1AF92DE58;
      *(v166 + 56) = v168;
      v169 = 0x4020100u >> (8 * v253);
      v253 = *(v161 + 48);
      *(v166 + 24) = v169;
      sub_1AF89FF4C(0, &qword_1ED72F7C0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
      v170 = swift_allocObject();
      *(v170 + 16) = v239;
      *(v170 + 32) = v165;
      *(v170 + 40) = a2;
      *(v166 + 32) = v170;
      v171 = v242;
      v172 = v246;
      *v166 = v242;
      *(v166 + 8) = v172;
      v173 = v238;
      *(v166 + 16) = v238;
      *(v166 + 40) = 0;
      *(v253 + v166) = v241;

      sub_1AF92DF00(v294, v167);
      *(&v289 + 1) = v161;
      v290 = &off_1F255BBE8;
      v174 = sub_1AF585714(&v288);
      sub_1AF92E010(v166, v174, type metadata accessor for TriggerScript);
      v292 = v288;
      *v293 = v289;
      *&v293[16] = v290;
      v175 = swift_isUniquelyReferenced_nonNull_native();
      v291 = v56;
      sub_1AF857470(&v292, &v274, v175);
      sub_1AF92DF5C(v248, a2, v246, v173, v171);

      sub_1AF4470F0(v294);
      sub_1AF44709C(&v274);
      v56 = v291;
      v176 = type metadata accessor for TriggerScript;
      v177 = v166;
      goto LABEL_163;
    }

    sub_1AF44709C(&v296);
    if (!a2)
    {
      sub_1AF447040(&v274, &v296);
      memset(v295, 0, 24);
      *(&v295[1] + 8) = v240;
      v178 = swift_isUniquelyReferenced_nonNull_native();
      *&v288 = v56;
      v141 = sub_1AF41AED0(&v296);
      v180 = v179;
      if (v56[3] >= (v56[2] + ((v179 & 1) == 0)))
      {
        if ((v178 & 1) == 0)
        {
          v232 = v141;
          sub_1AF84D184();
          v141 = v232;
        }
      }

      else
      {
        sub_1AF83C6A4(v56[2] + ((v179 & 1) == 0), v178);
        v141 = sub_1AF41AED0(&v296);
        if ((v180 & 1) != (v181 & 1))
        {
          goto LABEL_187;
        }
      }

      v55 = v260;
      v56 = v288;
      if (v180)
      {
LABEL_159:
        sub_1AF85B4F8(v295, v56[7] + 40 * v141);

        sub_1AF44709C(&v296);
        sub_1AF44709C(&v274);
        goto LABEL_178;
      }

      goto LABEL_160;
    }

    if (a2 == 1)
    {
      sub_1AF447040(&v274, &v296);
      memset(v295, 0, 40);
      v140 = swift_isUniquelyReferenced_nonNull_native();
      *&v288 = v56;
      v141 = sub_1AF41AED0(&v296);
      v143 = v142;
      if (v56[3] >= (v56[2] + ((v142 & 1) == 0)))
      {
        if ((v140 & 1) == 0)
        {
          v231 = v141;
          sub_1AF84D184();
          v141 = v231;
        }
      }

      else
      {
        sub_1AF83C6A4(v56[2] + ((v142 & 1) == 0), v140);
        v141 = sub_1AF41AED0(&v296);
        if ((v143 & 1) != (v144 & 1))
        {
          goto LABEL_187;
        }
      }

      v55 = v260;
      v56 = v288;
      if (v143)
      {
        goto LABEL_159;
      }

LABEL_160:
      *(v288 + 8 * (v141 >> 6) + 64) |= 1 << v141;
      v210 = v141;
      sub_1AF447040(&v296, v56[6] + 48 * v141);
      v211 = v56[7] + 40 * v210;
      v212 = v295[0];
      v213 = v295[1];
      *(v211 + 32) = *&v295[2];
      *v211 = v212;
      *(v211 + 16) = v213;

      sub_1AF44709C(&v296);
      sub_1AF44709C(&v274);
      ++v56[2];
      goto LABEL_178;
    }

    v182 = v109;
    v183 = *(v262 + 44);
    v184 = type metadata accessor for ScriptIndex(0);
    v185 = *(*(v184 - 8) + 56);
    v242 = v111;
    v186 = v108;
    v187 = v261;
    v188 = &v261[v183];
    v189 = v110;
    v185(v188, 1, 1, v184);
    v187[41] = 1;
    v190 = v247;
    *(v187 + 6) = sub_1AF92DE58;
    *(v187 + 7) = v190;
    v187[24] = 0x4020100u >> (8 * v253);
    sub_1AF89FF4C(0, &qword_1ED72F7C0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v191 = swift_allocObject();
    *(v191 + 16) = v239;
    v248 = v186;
    *(v191 + 32) = v186;
    *(v191 + 40) = a2;
    v192 = v242;
    *(v187 + 4) = v191;
    *v187 = v192;
    *(v187 + 1) = v182;
    v246 = v182;
    *(v187 + 2) = v189;
    sub_1AF447040(&v274, &v296);
    v193 = v296;
    if (!v300)
    {
      v221 = v296;

      if (v221 == 3)
      {
        v222 = 13;
      }

      else
      {
        v222 = 14;
      }

      v223 = v189;
      v55 = v260;
      goto LABEL_177;
    }

    v55 = v260;
    if (v300 == 1)
    {

      sub_1AF4470F0(&v296 + 8);
    }

    else
    {
      if (v299 || *(&v297 + 1) | v298 | v296 | v297 | *(&v296 + 1))
      {

        v222 = 1;
        goto LABEL_176;
      }
    }

    v222 = 0;
LABEL_176:
    v223 = v189;
LABEL_177:
    v224 = v261;
    v261[40] = v222;
    *(&v297 + 1) = v262;
    v298 = &off_1F255B588;
    v225 = sub_1AF585714(&v296);
    sub_1AF92E010(v224, v225, type metadata accessor for GraphScript);
    v295[0] = v296;
    v295[1] = v297;
    *&v295[2] = v298;
    v226 = swift_isUniquelyReferenced_nonNull_native();
    *&v288 = v56;
    sub_1AF857470(v295, &v274, v226);
    sub_1AF92DF5C(v248, a2, v246, v223, v192);

    sub_1AF44709C(&v274);
    v56 = v288;
    sub_1AF92DFB0(v224, type metadata accessor for GraphScript);
LABEL_178:
    v66 = v250;
    v64 = v265;
    if (v265)
    {
      goto LABEL_35;
    }

LABEL_36:
    if (v245 <= v65 + 1)
    {
      v68 = v65 + 1;
    }

    else
    {
      v68 = v245;
    }

    v69 = v68 - 1;
    while (1)
    {
      v67 = v65 + 1;
      if (v65 + 1 >= v245)
      {
        break;
      }

      v64 = *(v66 + 8 * v65++);
      if (v64)
      {
        v65 = v67;
        goto LABEL_43;
      }
    }

    v265 = 0;
    *&v277 = 0;
    v275 = 0u;
    v276 = 0u;
    v65 = v69;
    v274 = 0u;
  }

  sub_1AF929900(v236, v55);

  byte_1EB6C3349 = 0;
  return v56;
}

unint64_t sub_1AF92949C()
{
  v1 = [v0 coreEntity];
  v2 = v1 & 0xFFFFFFFF00000000;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = 0xFFFFFFFFLL;
  }

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = v0;
    if ([v5 coreEntityManager])
    {
      sub_1AFDFDFB8();
      swift_unknownObjectRelease();

      sub_1AF449D40(&v12, &v13);
      sub_1AF441150(&v13, v14);
      v7 = v2 | v3;
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v13);
      return v7;
    }
  }

  v8 = [v0 behaviorGraph];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = [v8 entityManager];

  sub_1AFDFDFB8();
  swift_unknownObjectRelease();
  type metadata accessor for EntityManager(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  return v2 | v3;
}

unint64_t sub_1AF929618()
{
  v1 = [v0 coreEntity];
  v2 = v1 & 0xFFFFFFFF00000000;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = 0xFFFFFFFFLL;
  }

  if ([v0 coreEntityManager])
  {
    sub_1AFDFDFB8();
    swift_unknownObjectRelease();
    sub_1AF449D40(&v9, &v10);
    sub_1AF441150(&v10, v11);
    v4 = v2 | v3;
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v10);
  }

  else
  {
    v5 = [v0 behaviorGraph];
    if (v5 && (v6 = v5, v7 = [v5 entityManager], v6, sub_1AFDFDFB8(), swift_unknownObjectRelease(), type metadata accessor for EntityManager(0), (swift_dynamicCast() & 1) != 0))
    {

      return v2 | v3;
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

unint64_t sub_1AF92975C()
{
  v1 = sub_1AF9A30B4();
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = v0;
    if ([v3 coreEntityManager])
    {
      sub_1AFDFDFB8();
      swift_unknownObjectRelease();

      sub_1AF449D40(&v9, &v10);
      sub_1AF441150(&v10, v11);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v10);
      return v1;
    }
  }

  v5 = [v0 behaviorGraph];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = [v5 entityManager];

  sub_1AFDFDFB8();
  swift_unknownObjectRelease();
  type metadata accessor for EntityManager(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  return v1;
}

void sub_1AF929900(void **a1, void *a2)
{
  v4 = *(swift_getObjectType() + 192);
  v5 = v4(a2);
  v6 = *a1;
  *a1 = v5;
}

uint64_t sub_1AF929970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1AFDFCA88();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1AFDFCAC8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = *(a4 + 16);
    if (v16)
    {
      v27 = result;
      v28 = v11;
      sub_1AF615168();
      v17 = v16;
      v25 = sub_1AFDFDB08();
      v18 = swift_allocObject();
      v26 = v8;
      v19 = v18;
      swift_weakInit();
      v20 = swift_allocObject();
      v20[2] = v19;
      v20[3] = a1;
      v20[4] = a2;
      v20[5] = v17;
      aBlock[4] = sub_1AF92E7F4;
      aBlock[5] = v20;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1AFCDA044;
      aBlock[3] = &unk_1F2547D88;
      v21 = _Block_copy(aBlock);
      v22 = v17;

      sub_1AFDFCAA8();
      v29 = MEMORY[0x1E69E7CC0];
      sub_1AF92E800(&qword_1ED72F9D0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      sub_1AF92EB14(0, &qword_1ED72F9A0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
      sub_1AF6FD510();
      sub_1AFDFE058();
      v23 = v25;
      MEMORY[0x1B2719530](0, v14, v10, v21);
      _Block_release(v21);

      (*(v26 + 8))(v10, v7);
      (*(v12 + 8))(v14, v28);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1AF929D10(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v69 = a3;
  v8 = HIDWORD(a1);
  if (HIDWORD(a1))
  {
    v9 = 0;
  }

  else
  {
    v9 = a1 == -1;
  }

  v10 = v9;
  if (v9 || (, v11 = sub_1AF3CAA18(a1), v13 = v12, v15 = v14, , !v11))
  {
    v11 = sub_1AF42C520(MEMORY[0x1E69E7CC0]);

    v16 = 0;
    v68 = 0;
    v15 = 0xFFFFFFFFLL;
    v13 = 0xFFFFFFFFLL;
  }

  else
  {
    v68 = HIDWORD(v13);
    v16 = HIDWORD(v15);
  }

  sub_1AF85B49C(a4, &v84);
  if (v85 == 1)
  {
    if (!v10)
    {
LABEL_38:
      v71 = v11;
      v72 = __PAIR64__(v68, v13);
      v73 = __PAIR64__(v16, v15);

      MEMORY[0x1EEE9AC00](v45);

      sub_1AFC75668(0, sub_1AF92E9B0);
      swift_bridgeObjectRelease_n();
    }
  }

  v66 = v10;
  v67 = v15;
  v65 = v13;
  if (!v85)
  {
    v17 = *(v11 + 16);
    v64 = v8;
    if (v17 && (v18 = sub_1AF449CB8(v69), (v19 & 1) != 0))
    {
      v20 = (*(v11 + 56) + 8 * v18);
      v21 = *v20;
      v22 = v20[1] << 32;
    }

    else
    {
      v22 = 0;
      v21 = 0xFFFFFFFFLL;
    }

    v29 = sub_1AF3CB520(v22 | v21);
    if (v29)
    {
      sub_1AFD08440(v5, v29, v30);
    }

    v31 = v16;
    v32 = *(v5 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);
    if (v32)
    {
      v33 = *(v32 + 80);
      swift_unknownObjectWeakLoadStrong();
      v34 = *(v32 + 56);
    }

    else
    {
      v33 = 0;
      v34 = 0;
    }

    swift_unknownObjectUnownedInit();
    v71 = v5;
    v73 = v34;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    LOBYTE(v74) = v33;
    sub_1AF6C8594(v22 | v21);
    sub_1AF579490(&v71);
    if (v33)
    {
      v38 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v38 ^ 1);
    }

    v39 = sub_1AF449CB8(v69);
    v40 = v66;
    LODWORD(v15) = v67;
    LODWORD(v16) = v31;
    if (v41)
    {
      v42 = v39;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v71 = v11;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1AF846E40();
        v11 = v71;
      }

      sub_1AF6B2F08(v42, v11);
    }

    LOBYTE(v79[0]) = 3;
    v82 = 0;
    sub_1AFDFF288();
    sub_1AF933064(&v71);
    v44 = sub_1AFDFF2F8();
    sub_1AF44709C(v79);
    if (v44 == v69)
    {
      v68 = 0;
      LODWORD(v13) = -1;
      if (!v66)
      {
        goto LABEL_38;
      }
    }

    LOBYTE(v79[0]) = 5;
    v82 = 0;
    sub_1AFDFF288();
    sub_1AF933064(&v71);
    v47 = sub_1AFDFF2F8();
    sub_1AF44709C(v79);
    if (v47 == v69)
    {
      LODWORD(v15) = -1;
      LODWORD(v16) = 0;
    }

LABEL_64:
    LODWORD(v13) = v65;
    if (!v40)
    {
      goto LABEL_38;
    }
  }

  sub_1AF0FBA54(&v84, v83);
  v23 = *(v11 + 16);
  v63 = v16;
  if (v23)
  {
    v24 = sub_1AF449CB8(v69);
    if (v25)
    {
      v26 = (*(v11 + 56) + 8 * v24);
      v28 = *v26;
      v27 = v26[1];
LABEL_54:
      v55 = swift_isUniquelyReferenced_nonNull_native();
      v71 = v11;
      sub_1AF852D2C(v28 | (v27 << 32), v69, v55);
      v11 = v71;
      LOBYTE(v79[0]) = 3;
      v82 = 0;
      sub_1AFDFF288();
      sub_1AF933064(&v71);
      v56 = sub_1AFDFF2F8();
      v57 = sub_1AF44709C(v79);
      if (v56 == v69)
      {
        v65 = v28;
        v58 = v27;
        v59 = &v86;
      }

      else
      {
        LOBYTE(v79[0]) = 5;
        v82 = 0;
        sub_1AFDFF288();
        sub_1AF933064(&v71);
        v60 = sub_1AFDFF2F8();
        v57 = sub_1AF44709C(v79);
        if (v60 == v69)
        {
          v61 = v28;
        }

        else
        {
          v61 = v67;
        }

        v67 = v61;
        if (v60 == v69)
        {
          v58 = v27;
        }

        else
        {
          v58 = v63;
        }

        v59 = &v85;
      }

      *(v59 - 32) = v58;
      MEMORY[0x1EEE9AC00](v57);
      sub_1AFC75668(0, sub_1AF92E954);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v83);
      v40 = v66;
      LODWORD(v15) = v67;
      LODWORD(v16) = v63;
      goto LABEL_64;
    }
  }

  sub_1AF85B49C(a4, &v71);
  v35 = v74;
  sub_1AF92E918(&v71);
  if (v35 >= 2)
  {
    v64 = v8;
    v62 = OBJC_IVAR____TtC3VFX13EntityManager_replicationStream;
    v36 = *(v5 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);
    if (v36)
    {
      v37 = *(v36 + 80);
      swift_unknownObjectWeakLoadStrong();
      v36 = *(v36 + 56);
    }

    else
    {
      v37 = 0;
    }

    v80 = 0;
    swift_unknownObjectUnownedInit();
    v79[0] = v5;
    v80 = v36;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    v81 = v37;
    swift_unownedRetainStrong();
    v48 = **(v5 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);

    LOBYTE(v71) = 1;
    v49 = MEMORY[0x1E69E7CC0];
    v28 = sub_1AF62C02C(MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, v48);
    v27 = HIDWORD(v28);
    swift_unownedRetainStrong();

    if (v37)
    {
      swift_unownedRetainStrong();
      v70 = 1;
      v71 = v28;
      v72 = v5;
      v73 = v49;
      v74 = v49;
      v75 = 1;
      v76 = 0;
      v77 = 1;
      v78 = 2;
      sub_1AF6C67D0(&v71);

      sub_1AF57955C(&v71);
    }

    if (swift_unknownObjectUnownedLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    v50 = a1;
    sub_1AF579490(v79);
    if (v37)
    {
      v51 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v51 ^ 1);
    }

    v52 = *(v5 + v62);
    if (v52)
    {
      v53 = *(v52 + 80);
      swift_unknownObjectWeakLoadStrong();
      v52 = *(v52 + 56);
    }

    else
    {
      v53 = 0;
    }

    v73 = 0;
    swift_unknownObjectUnownedInit();
    v71 = v5;
    v73 = v52;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    LOBYTE(v74) = v53;
    sub_1AF92525C(v28, v50);
    sub_1AF579490(&v71);
    if (v53)
    {
      v54 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v54 ^ 1);
    }

    goto LABEL_54;
  }

  sub_1AFDFE518();
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1AF92A61C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == 0xFFFFFFFF || (, v6 = sub_1AF3CAA18(a1), , !v6))
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v7 = sub_1AF924D3C(v6);
  }

  v8 = *(v7 + 16);

  v9 = MEMORY[0x1B27191B0](v8, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
  *&v35 = v9;
  v10 = *(v7 + 16);
  if (v10)
  {
    v11 = 32;
    do
    {
      sub_1AF70D168(v33, *(v7 + v11));
      v11 += 8;
      --v10;
    }

    while (v10);

    v12 = v35;
  }

  else
  {
    v12 = v9;
  }

  v13 = sub_1AF924F00(a3);
  v14 = MEMORY[0x1B27191B0](*(v13 + 16), MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
  *&v35 = v14;
  v15 = *(v13 + 16);
  if (v15)
  {
    v16 = 32;
    do
    {
      sub_1AF70D168(v33, *(v13 + v16));
      v16 += 8;
      --v15;
    }

    while (v15);

    v17 = v35;
  }

  else
  {
    v18 = v14;

    v17 = v18;
  }

  v19 = sub_1AF92A974(v17, v12);
  v20 = v19;
  v21 = *(v19 + 16);
  if (v21)
  {
    v22 = sub_1AFC8581C(*(v19 + 16), 0);
    sub_1AFC874F4(&v35, v22 + 4, v21, v20);
    sub_1AF0FBB14(v35);
  }

  else
  {

    v22 = MEMORY[0x1E69E7CC0];
  }

  v23 = sub_1AF925B2C(a3);
  v24 = v22[2];
  if (v24)
  {
    v25 = 4;
    do
    {
      v26 = v22[v25];
      if (v23[2] && (v27 = sub_1AF449CB8(v22[v25]), (v28 & 1) != 0))
      {
        sub_1AF85B49C(v23[7] + 40 * v27, v33);
        v35 = v33[0];
        v36 = v33[1];
        v37 = v34;
      }

      else
      {
        v37 = 0;
        v35 = 0u;
        v36 = 0u;
      }

      sub_1AF929D10(a1, a2, v26, &v35);
      sub_1AF92E918(&v35);
      ++v25;
      --v24;
    }

    while (v24);
  }

  v29 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

  if (v29)
  {
    v30 = *(v29 + 80);
    swift_unknownObjectWeakLoadStrong();
    v29 = *(v29 + 56);
  }

  else
  {
    v30 = 0;
  }

  *&v36 = 0;
  swift_unknownObjectUnownedInit();
  *&v35 = a2;
  *&v36 = v29;
  swift_unknownObjectUnownedAssign();
  swift_unownedRetain();
  swift_unknownObjectRelease();
  BYTE8(v36) = v30;
  sub_1AF6C8780(a1);
  sub_1AF579490(&v35);
  if (v30)
  {
    v31 = [objc_opt_self() immediateMode];
    sub_1AF6C5E30(v31 ^ 1);
  }
}

uint64_t sub_1AF92A974(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v12 = a2;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = v3;
LABEL_8:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    sub_1AF70D168(&v11, *(*(a1 + 48) + ((v8 << 9) | (8 * v9))));
  }

  while (1)
  {
    v8 = v3 + 1;
    if (v3 + 1 >= v7)
    {
      break;
    }

    v6 = *(a1 + 8 * v3++ + 64);
    if (v6)
    {
      v3 = v8;
      goto LABEL_8;
    }
  }

  return v12;
}

unsigned int *sub_1AF92AA4C(unsigned int *result, uint64_t a2)
{
  v3 = *result;
  v4 = result[1];
  if (v3 != a2 || v4 != HIDWORD(a2))
  {
    v7 = *(result + 1);
    v6 = *(result + 2);
    v8 = v3 | (v4 << 32);

    sub_1AF92A61C(v8, v7, v6);
  }

  return result;
}

id sub_1AF92AABC(unint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  swift_getObjectType();
  v9 = sub_1AF92975C();
  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0xFFFFFFFFLL;
  }

  if (v10)
  {
    v12 = HIDWORD(v9);
  }

  else
  {
    v12 = 0;
  }

  if (v11 == -1 && v12 == 0)
  {
    v32 = sub_1AF43F1BC(MEMORY[0x1E69E7CC0]);
    if (a3)
    {
      v33 = *(v4 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);
      if (v33)
      {
        v34 = *(v33 + 80);
        swift_unknownObjectWeakLoadStrong();
        v33 = *(v33 + 56);
      }

      else
      {
        v34 = 0;
      }

      swift_unknownObjectUnownedInit();
      v76[0] = v4;
      v77 = v33;
      swift_unknownObjectUnownedAssign();
      swift_unownedRetain();
      swift_unknownObjectRelease();
      v78 = v34;
      v41 = swift_allocObject();
      *(v41 + 16) = 0xFFFFFFFFLL;
      *(v41 + 24) = v4;
      if (v34)
      {
        v42 = v41;
        swift_unownedRetainStrong();
        v71 = &_s18ReplicationPayloadVN;
        v72 = &off_1F2547F18;
        v68 = 0xFFFFFFFFLL;
        v69 = v4;
        v70 = v32;
        v43 = swift_allocObject();
        *(v43 + 16) = sub_1AF92EF70;
        *(v43 + 24) = v42;
        v44 = sub_1AF92EF74;
LABEL_32:
        v73 = v44;
        v74 = v43;
        v75 = 14;

        sub_1AF6C67D0(&v68);

        sub_1AF57955C(&v68);
        sub_1AF579490(v76);
        v47 = [objc_opt_self() immediateMode];
        sub_1AF6C5E30(v47 ^ 1);
        goto LABEL_34;
      }

LABEL_33:

      sub_1AF579490(v76);
      goto LABEL_34;
    }

    v35 = 0xFFFFFFFFLL;
LABEL_27:
    sub_1AF92A61C(v35, v4, v32);
LABEL_34:

    return [objc_allocWithZone(type metadata accessor for GraphDiagnostics(0)) init];
  }

  v14 = sub_1AF3CB8BC(v11 | (v12 << 32));
  if (!v14)
  {
    v32 = sub_1AF43F1BC(MEMORY[0x1E69E7CC0]);
    if (a3)
    {
      v36 = *(v4 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);
      if (v36)
      {
        v37 = *(v36 + 80);
        swift_unknownObjectWeakLoadStrong();
        v36 = *(v36 + 56);
      }

      else
      {
        v37 = 0;
      }

      swift_unknownObjectUnownedInit();
      v76[0] = v4;
      v77 = v36;
      swift_unknownObjectUnownedAssign();
      swift_unownedRetain();
      swift_unknownObjectRelease();
      v78 = v37;
      v45 = swift_allocObject();
      *(v45 + 16) = v11;
      *(v45 + 20) = v12;
      *(v45 + 24) = v4;
      if (v37)
      {
        v46 = v45;
        swift_unownedRetainStrong();
        v71 = &_s18ReplicationPayloadVN;
        v72 = &off_1F2547F18;
        v68 = __PAIR64__(v12, v11);
        v69 = v4;
        v70 = v32;
        v43 = swift_allocObject();
        *(v43 + 16) = sub_1AF92DD20;
        *(v43 + 24) = v46;
        v44 = sub_1AF92DD28;
        goto LABEL_32;
      }

      goto LABEL_33;
    }

    v35 = v11 | (v12 << 32);
    goto LABEL_27;
  }

  v15 = v14;
  v58 = v11 | (v12 << 32);
  v61 = a3;
  v59 = v11;
  v60 = v12;
  v62 = type metadata accessor for GraphDiagnostics(0);
  v65 = a4;
  v16 = objc_allocWithZone(v62);
  v17 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_graphID;
  v66 = v4;
  v18 = sub_1AFDFC318();
  v19 = *(v18 - 8);
  v64 = a2;
  v20 = v19;
  v21 = *(v19 + 56);
  v21(&v16[v17], 1, 1, v18);
  v22 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_rawNodesByID;

  v23 = MEMORY[0x1E69E7CC0];
  *&v16[v22] = sub_1AF42B7E0(MEMORY[0x1E69E7CC0]);
  *&v16[OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics] = v23;
  sub_1AF92E794(&v16[v17], &qword_1ED72DF30, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1AF92EB14);
  v63 = OBJC_IVAR____TtC3VFX14AuthoringGraph_id;
  (*(v20 + 16))(&v16[v17], v15 + OBJC_IVAR____TtC3VFX14AuthoringGraph_id, v18);
  v21(&v16[v17], 0, 1, v18);
  v67.receiver = v16;
  v67.super_class = v62;
  v24 = objc_msgSendSuper2(&v67, sel_init);

  v62 = &v57;
  MEMORY[0x1EEE9AC00](v25);
  v56[16] = 1;

  sub_1AF3FB9C8(sub_1AF42B5C4, v56, 0, 0x1000000000000000uLL, 1, v23);
  v26 = sub_1AF449CC8();

  type metadata accessor for AuthoringGraph(0);
  v27 = swift_allocObject();
  *(v27 + 2) = 0;
  *(v27 + 3) = v23;
  *(v27 + 4) = 0;
  *(v27 + 5) = 0;
  *(v27 + 6) = sub_1AF42B088(v23);
  v28 = OBJC_IVAR____TtC3VFX14AuthoringGraph_id;
  sub_1AFDFC308();
  *(v27 + 3) = v26;
  sub_1AF9114A4();
  v29 = v66;
  (*(v20 + 24))(&v27[v28], v15 + v63, v18);

  v30 = v24;
  v31 = sub_1AF926DC4(v27, a1, v64, v24, v65);
  if (v61)
  {
    v38 = v31;
    v39 = *(v29 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);
    if (v39)
    {
      v40 = *(v39 + 80);
      swift_unknownObjectWeakLoadStrong();
      v39 = *(v39 + 56);
    }

    else
    {
      v40 = 0;
    }

    v77 = 0;
    swift_unknownObjectUnownedInit();
    v76[0] = v29;
    v77 = v39;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    v78 = v40;
    v49 = swift_allocObject();
    v50 = v59;
    v51 = v60;
    *(v49 + 16) = v59;
    *(v49 + 20) = v51;
    *(v49 + 24) = v29;
    if (v40)
    {
      v52 = v51;
      v53 = v49;
      swift_unownedRetainStrong();
      v71 = &_s18ReplicationPayloadVN;
      v72 = &off_1F2547F18;
      v68 = __PAIR64__(v52, v50);
      v69 = v29;
      v70 = v38;
      v54 = swift_allocObject();
      *(v54 + 16) = sub_1AF92EF70;
      *(v54 + 24) = v53;
      v73 = sub_1AF92EF74;
      v74 = v54;
      v75 = 14;

      sub_1AF6C67D0(&v68);

      sub_1AF57955C(&v68);
      sub_1AF579490(v76);
      v55 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v55 ^ 1);
    }

    else
    {

      sub_1AF579490(v76);
    }
  }

  else
  {
    sub_1AF92A61C(v58, v29, v31);
  }

  return v30;
}

void sub_1AF92B444(void *a1, uint64_t a2, uint64_t *a3)
{
  ObjectType = swift_getObjectType();

  sub_1AF92E078(a1, a3, ObjectType, a2);
}

void sub_1AF92B498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a3;
  v6 = type metadata accessor for GraphError(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1AF92EB14(0, &qword_1ED72DF30, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v43 = v39 - v10;
  sub_1AFDFD638();
  v11 = sub_1AFDFD628();
  sub_1AFDFD5B8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_26;
  }

  v13 = Strong;
  v14 = swift_unknownObjectWeakLoadStrong();
  if (!v14)
  {

LABEL_26:

    return;
  }

  v39[1] = v13;
  v40 = v14;
  v41 = v11;
  v15 = *(a2 + 16);
  if (v15)
  {
    v16 = (a2 + 80);
    while (1)
    {
      v17 = *(v16 - 6);
      v19 = *(v16 - 1);
      v18 = *v16;
      if (!*(v16 - 16))
      {
        break;
      }

      v20 = sub_1AFDFEE28();

      if (v20)
      {
        goto LABEL_13;
      }

LABEL_8:
      v16 += 7;
      if (!--v15)
      {
        goto LABEL_18;
      }
    }

LABEL_13:
    type metadata accessor for GraphCodeGen();
    v21 = v43;
    sub_1AF94ADBC(v17, v42, v43);
    sub_1AF487314(v21, v8 + v6[5]);
    *(v8 + v6[8]) = 0;
    *v8 = 0;
    v22 = v8 + v6[6];
    *v22 = 8;
    v22[8] = -64;
    v23 = (v8 + v6[7]);
    *v23 = v19;
    v23[1] = v18;
    sub_1AF92E800(&qword_1EB638988, type metadata accessor for GraphError, byte_1AFE863D0);
    v24 = swift_allocError();
    sub_1AF92E010(v8, v25, type metadata accessor for GraphError);
    v26 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics;
    v27 = *(a4 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a4 + v26) = v27;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v27 = sub_1AF420408(0, v27[2] + 1, 1, v27);
      *(a4 + v26) = v27;
    }

    v30 = v27[2];
    v29 = v27[3];
    if (v30 >= v29 >> 1)
    {
      *(a4 + v26) = sub_1AF420408(v29 > 1, v30 + 1, 1, v27);
    }

    sub_1AF92DFB0(v8, type metadata accessor for GraphError);
    sub_1AF92E794(v43, &qword_1ED72DF30, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1AF92EB14);
    v31 = *(a4 + v26);
    *(v31 + 16) = v30 + 1;
    *(v31 + 8 * v30 + 32) = v24;
    *(a4 + v26) = v31;
    goto LABEL_8;
  }

LABEL_18:
  v32 = objc_opt_self();
  v33 = v40;
  v34 = [v32 worldWithWorldRef_];
  v35 = sub_1AF93E128();
  if (sub_1AF3D8564(&unk_1EB6440D0) && (v36 = swift_unknownObjectWeakLoadStrong(), , v36))
  {
    ObjectType = swift_getObjectType();
    v38 = swift_conformsToProtocol2();
    if (v38)
    {
      (*(v38 + 24))(v35, ObjectType, v38);

      swift_unknownObjectRelease();

      return;
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_1AF92B9EC(void *a1)
{
  v1 = a1;
  sub_1AF92BA28(v1);
}

uint64_t sub_1AF92BA28(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  *v60 = MEMORY[0x1E69E7CC0];
  v3 = sub_1AF92949C();
  if (v4)
  {
    if (v3 != 0xFFFFFFFF)
    {
      v5 = v3;

      v6 = sub_1AF3CB8BC(v5);

      if (v6)
      {
        v7 = v2;
        v8 = v2;
        v9 = MEMORY[0x1E69E7CC0];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1AF426E64(0, v9[2] + 1, 1, v9);
        }

        v11 = v9[2];
        v10 = v9[3];
        if (v11 >= v10 >> 1)
        {
          v9 = sub_1AF426E64(v10 > 1, v11 + 1, 1, v9);
        }

        v9[2] = v11 + 1;
        v12 = &v9[3 * v11];
        v12[4] = v8;
        v12[5] = &off_1F256A548;
        v12[6] = v6;
        *v60 = v9;
        v2 = v7;
      }
    }
  }

  v13 = [v2 rootNode];
  v14 = swift_allocObject();
  *(v14 + 16) = v60;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1AF92CA38;
  *(v15 + 24) = v14;
  *&v61[2] = sub_1AF92EEFC;
  *(&v61[2] + 1) = v15;
  *&v61[0] = MEMORY[0x1E69E9820];
  *(&v61[0] + 1) = 1107296256;
  *&v61[1] = sub_1AF92EF7C;
  *(&v61[1] + 1) = &unk_1F24E6140;
  v16 = _Block_copy(v61);

  [v13 enumerateHierarchyUsingBlock_];

  _Block_release(v16);
  swift_isEscapingClosureAtFileLocation();

  v17 = [v2 assetRegistry];
  v18 = [v17 rootNode];

  v19 = swift_allocObject();
  *(v19 + 16) = v60;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1AF92CA58;
  *(v20 + 24) = v19;
  *&v61[2] = sub_1AF92CA60;
  *(&v61[2] + 1) = v20;
  *&v61[0] = MEMORY[0x1E69E9820];
  *(&v61[0] + 1) = 1107296256;
  *&v61[1] = sub_1AF92EF7C;
  *(&v61[1] + 1) = &unk_1F2547B80;
  v21 = _Block_copy(v61);

  [v18 enumerateHierarchyUsingBlock_];

  _Block_release(v21);
  swift_isEscapingClosureAtFileLocation();

  v22 = *v60;
  v23 = *(*v60 + 16);
  if (v23)
  {

    v24 = v2;
    v25 = v22 + 48;
    do
    {
      v26 = *(v25 - 16);
      v27 = *(v25 - 8);
      v25 += 24;
      v28 = v26;

      v29 = [v24 scene];

      v30 = sub_1AF92AABC(v28, v27, 0, MEMORY[0x1E69E7CD0]);

      --v23;
    }

    while (v23);

    v2 = v24;
  }

  v31 = [v2 scene];
  v32 = *&v31[OBJC_IVAR____TtC3VFX8VFXScene_entityManager];

  sub_1AF8D360C(v32);
  sub_1AF8BD8C0(v32);
  type metadata accessor for ScriptCompilerSystem();
  swift_allocObject();
  v34 = sub_1AFA5C588(v33);
  v35 = OBJC_IVAR____TtC3VFX13EntityManager_scriptingConfig;
  *(v32 + OBJC_IVAR____TtC3VFX13EntityManager_scriptingConfig) = 1;
  v34[2] = v32;
  v36 = swift_allocObject();
  *(v36 + 16) = 0;

  v37 = dispatch_group_create();

  dispatch_group_enter(v37);
  memcpy(v61, v34 + 12, 0x148uLL);
  sub_1AFA70744(v34, 0, v37, 1, 0, 0, v61, v36, v34);
  memcpy(v60, v34 + 53, sizeof(v60));
  sub_1AFA74E78(v34, 0, v37, 1, 0, 0, v60, v36, v34);
  memcpy(v59, v34 + 94, sizeof(v59));
  sub_1AFA7959C(v34, 0, v37, 1, 0, 0, v59, v36, v34);
  memcpy(v58, v34 + 135, sizeof(v58));
  sub_1AFA7E50C(v34, 0, v37, 1, 0, 0, v58, v36, v34);
  memcpy(v57, v34 + 176, sizeof(v57));
  sub_1AFA833C4(v34, 0, v37, 1, 0, 0, v57, v36, v34);
  memcpy(__dst, v34 + 258, sizeof(__dst));
  sub_1AFA87AFC(v34, 0, v37, 1, 0, 0, __dst, v36, v34);
  memcpy(v55, v34 + 299, sizeof(v55));
  sub_1AFA8C234(v34, 0, v37, 1, 0, 0, v55, v36, v34);
  memcpy(v54, v34 + 340, sizeof(v54));
  sub_1AFA90A30(v34, 0, v37, 1, 0, 0, v54, v36, v34);
  memcpy(v53, v34 + 217, sizeof(v53));
  sub_1AFA967B8(v34, 0, v37, 1, 0, 0, v53, v36, v34);
  dispatch_group_leave(v37);
  sub_1AFDFDAA8();
  dispatch_group_enter(v37);
  memcpy(v52, v34 + 12, sizeof(v52));
  sub_1AFA70744(v34, 0, v37, 1, 0, 1, v52, v36, v34);
  memcpy(v51, v34 + 53, sizeof(v51));
  sub_1AFA74E78(v34, 0, v37, 1, 0, 1, v51, v36, v34);
  memcpy(v50, v34 + 94, sizeof(v50));
  sub_1AFA7959C(v34, 0, v37, 1, 0, 1, v50, v36, v34);
  memcpy(v49, v34 + 135, sizeof(v49));
  sub_1AFA7E50C(v34, 0, v37, 1, 0, 1, v49, v36, v34);
  memcpy(v48, v34 + 176, sizeof(v48));
  sub_1AFA833C4(v34, 0, v37, 1, 0, 1, v48, v36, v34);
  memcpy(v47, v34 + 258, sizeof(v47));
  sub_1AFA87AFC(v34, 0, v37, 1, 0, 1, v47, v36, v34);
  memcpy(v46, v34 + 299, sizeof(v46));
  sub_1AFA8C234(v34, 0, v37, 1, 0, 1, v46, v36, v34);
  memcpy(v45, v34 + 340, sizeof(v45));
  sub_1AFA90A30(v34, 0, v37, 1, 0, 1, v45, v36, v34);
  memcpy(v44, v34 + 217, sizeof(v44));
  sub_1AFA967B8(v34, 0, v37, 1, 0, 1, v44, v36, v34);

  dispatch_group_leave(v37);
  v38 = *(v36 + 16);
  if (v38)
  {
    swift_willThrow();
    v39 = v38;

    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v43[1] = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD00000000000001BLL, 0x80000001AFF3AB90);
    swift_getErrorValue();
    sub_1AFDFEDD8();
    v40 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v42 = v40;
      swift_once();
      v40 = v42;
    }

    v43[0] = 0;
    sub_1AF0D4F18(v40, v43, 0, 0xE000000000000000);
  }

  else
  {
  }

  *(v32 + v35) = 0;
}

void sub_1AF92C524(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v6 = v3[2];
  v7 = sub_1AF6C97E0(*v3);
  v8 = v7;
  v9 = HIDWORD(v7);
  v10 = *(a1 + OBJC_IVAR____TtC3VFX15DefaultRemapper_destinationEntityManager);
  swift_unownedRetainStrong();

  swift_unknownObjectRetain();
  v11 = sub_1AF92D900(v6, a1);
  swift_unknownObjectRelease();
  *a3 = v8;
  *(a3 + 4) = v9;
  *(a3 + 8) = v10;
  *(a3 + 16) = v11;
}

uint64_t sub_1AF92C5D0(uint64_t a1, uint64_t (*a2)(_OWORD *))
{
  v5 = sub_1AFDFC318();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF92EB14(0, &qword_1ED72DF30, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - v13;
  v15 = *(a1 + 16);
  v27[0] = *a1;
  v27[1] = v15;
  v27[2] = *(a1 + 32);
  if (a2(v27))
  {
    v16 = *(a1 + 8);
  }

  else
  {
    v28 = v2;
    _s11DeletedNodeCMa_0(0);
    v16 = swift_allocObject();
    _s11DeletedNodeCMa(0);
    v17 = swift_allocObject();
    v18 = MEMORY[0x1E69E7CC0];
    *(v17 + 3) = 0;
    *(v17 + 4) = 0;
    *(v17 + 2) = v18;
    v26 = OBJC_IVAR____TtC3VFX4Node_authoringID;
    sub_1AFDFC308();
    (*(v6 + 56))(v14, 1, 1, v5);
    *(v16 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) = v17;
    *(v16 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs) = v18;
    sub_1AF487314(v14, v11);
    v19 = *(v6 + 48);
    if (v19(v11, 1, v5) == 1)
    {
      sub_1AFDFC308();

      sub_1AF92E794(v14, &qword_1ED72DF30, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1AF92EB14);
      if (v19(v11, 1, v5) != 1)
      {
        sub_1AF92E794(v11, &qword_1ED72DF30, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1AF92EB14);
      }
    }

    else
    {

      sub_1AF92E794(v14, &qword_1ED72DF30, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1AF92EB14);
      (*(v6 + 32))(v8, v11, v5);
    }

    (*(v6 + 32))(v16 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v8, v5);
    (*(v6 + 24))(&v17[v26], v16 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v5);

    v20 = v16 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
    *v20 = 0;
    *(v20 + 8) = 0;
    *(v20 + 16) = 1;
    v21 = v16 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
    *v21 = 0;
    *(v21 + 8) = 0;
    *(v21 + 16) = 1;
    v22 = v16 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
    *v22 = 0;
    *(v22 + 8) = 1;
    v23 = (v16 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
    *v23 = 0;
    v23[1] = 0;
  }

  return v16;
}

uint64_t sub_1AF92CA40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1AF92CA88(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1AFDFE9D8();
  if (result >= v2)
  {
    if (v2)
    {
      return sub_1AF92CB78(0, v2, 1, a1);
    }
  }

  else
  {
    v4 = result;
    v5 = v2 / 2;
    if (v2 <= 1)
    {
      v6 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      type metadata accessor for Node(0);
      v6 = sub_1AFDFD488();
      *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
    }

    v7 = v6 & 0xFFFFFFFFFFFFFF8;
    v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
    v8[1] = v5;
    sub_1AF92CD04(v8, v9, a1, v4);
    *(v7 + 16) = 0;
  }

  return result;
}

uint64_t sub_1AF92CB78(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v20 = *a4;
    v5 = (*a4 + 8 * a3 - 8);
    v6 = result - a3;
    do
    {
      v7 = *(v20 + 8 * v4);
      v8 = v6;
      v22 = v5;
      while (1)
      {
        v9 = *v5;
        v10 = *(*v7 + 128);

        v12 = v10(v11);
        v14 = v13;
        if (v12 == (*(*v9 + 128))() && v14 == v15)
        {
          break;
        }

        v17 = sub_1AFDFEE28();

        if (v17)
        {
          v18 = *v5;
          v7 = v5[1];
          *v5 = v7;
          v5[1] = v18;
          --v5;
          if (!__CFADD__(v8++, 1))
          {
            continue;
          }
        }

        goto LABEL_5;
      }

LABEL_5:
      ++v4;
      v5 = v22 + 1;
      --v6;
    }

    while (v4 != a2);
  }

  return result;
}