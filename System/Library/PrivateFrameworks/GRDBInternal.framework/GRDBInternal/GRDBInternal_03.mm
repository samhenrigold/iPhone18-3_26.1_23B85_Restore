uint64_t sub_1B214B35C()
{
  sub_1B2112904();
  v15 = v1;
  v16[0] = v0;
  v14 = v2;
  sub_1B212FF14(v13);
  sub_1B211562C();
  sub_1B211194C();
  v4 = v3();
  sub_1B2115014(v4, v5, v6, v7, v8, v9, v10, v11, v13[0], v13[1], v13[2], v14, v15);
  sub_1B2113208(v13);
  return sub_1B212AC5C(v16, &qword_1EB7A0E30, &unk_1B2259360);
}

uint64_t sub_1B214B3E8(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = MEMORY[0x1E69E6370];
  v14 = &protocol witness table for Bool;
  v12[0] = a1;
  v11[3] = a5;
  v11[4] = a7;
  v9 = sub_1B212FF14(v11);
  (*(*(a5 - 8) + 16))(v9, a2, a5);
  sub_1B21443FC(v12, v11);
  sub_1B2113208(v11);
  return sub_1B212AC5C(v12, &qword_1EB7A0E30, &unk_1B2259360);
}

uint64_t sub_1B214B4AC(int (*a1)(void))
{
  type metadata accessor for SchedulingWatchdog();
  if (sub_1B2117B40(v1))
  {
    sub_1B2122734();
    swift_beginAccess();
    return a1(*(v1 + 16));
  }

  else
  {
    sub_1B2111608();
    sub_1B2112ECC();
    result = sub_1B2252EC0();
    __break(1u);
  }

  return result;
}

void *QueryInterfaceRequest.deleteAll(_:)(uint64_t a1)
{
  memcpy(__dst, v1, 0xA2uLL);
  sub_1B2136148(__dst, __src);
  sub_1B21366E4(__dst, __src);
  sub_1B2137278();
  v4 = v3;
  memcpy(v9, __src, 0xA8uLL);
  v9[168] = 0;
  v10 = v4;
  sub_1B214B670();
  v5.value.values._rawValue = sub_1B2142BCC(v9);
  if (!v2)
  {
    *__src = 0;
    *&__src[8] = 0;
    v5.value.values._rawValue = __src;
    Statement.execute(arguments:)(v5);

    if (!v6)
    {
      v5.value.values._rawValue = Database.changesCount.getter();
    }
  }

  return v5.value.values._rawValue;
}

void sub_1B214B670()
{
  sub_1B2111640();
  v3 = sub_1B214BBD0(v2);
  if (v1)
  {
    goto LABEL_8;
  }

  if (!v3)
  {
    memcpy(__dst, v0, sizeof(__dst));
    if (!*(__dst[10] + 16))
    {
      v4 = sub_1B2138500();
      v5 = type metadata accessor for StatementArgumentsSink();
      sub_1B2111758(v5);

      v12 = sub_1B2114D98(0, v6, v7, v8, v9, v10, v11);
      v13 = type metadata accessor for SQLGenerationContext();
      v14 = sub_1B211AD64(v13);

      v16 = sub_1B2117164(v15, v12, v4);
      sub_1B21225BC();
      sub_1B21397D0(v17);
      if (v14)
      {

LABEL_8:
        sub_1B21223F4();
        sub_1B2112FDC();
        return;
      }

      v85 = v18;
      v86 = v19;
      v20 = sub_1B213ACD0(v16, __dst[0], __dst[1], __dst[2]);
      strcpy(__src, "DELETE FROM ");
      BYTE13(__src[0]) = 0;
      HIWORD(__src[0]) = -5120;
      MEMORY[0x1B2741EB0](v20);

      MEMORY[0x1B2741EB0](*&__src[0], *(&__src[0] + 1));

      if (__dst[6])
      {
        v21 = sub_1B21223F4();
        v22(v21);
        memcpy(v82, __src, 0xA3uLL);
        v23 = sub_1B2115828();
        MEMORY[0x1B2741EB0](v23, 0xE700000000000000);
        memcpy(v81, v82, 0xA3uLL);
        v24 = sub_1B21181C0();
        MEMORY[0x1B2741EB0](v24);

        sub_1B21356F8(v82);
      }

      if ((__dst[18] & 0x100) == 0)
      {
        v25 = __dst[16];
        v26 = __dst[17];
        v27 = __dst[18];
        sub_1B213D4F4();
        sub_1B2117EEC(v28, v29, v30, v31, v32, v33, v34, v35, v70, v71, v72, v74, v75, v77, v79, v81[0], v81[1], v81[2], v81[3], v81[4]);
        v37 = v36;

        if (*(v37 + 16))
        {
          v76 = v26;
          sub_1B211551C();
          sub_1B2113134();
          v38 = *(v37 + 16);
          if (v38)
          {
            v84 = MEMORY[0x1E69E7CC0];
            sub_1B2111CD4();
            sub_1B2116B10(v39, v40, v41, v42, v43, v44, v45);
            v46 = 0;
            v47 = v84;
            v78 = v38 - 1;
            v80 = v37;
            v48 = 32;
            v73 = v27;
            while (1)
            {
              v88 = v46;
              if (v46 >= *(v37 + 16))
              {
                break;
              }

              memcpy(__src, (v37 + v48), 0xA3uLL);
              memcpy(v82, (v37 + v48), 0xA3uLL);
              sub_1B214D958(__src, v81);
              v49 = sub_1B214DCE8(v16);
              v51 = v50;
              sub_1B214DC54(__src);
              v84 = v47;
              v53 = *(v47 + 16);
              v52 = *(v47 + 24);
              v54 = v47;
              if (v53 >= v52 >> 1)
              {
                sub_1B211156C(v52);
                sub_1B2114574();
                sub_1B2116B10(v56, v57, v58, v59, v60, v61, v62);
                v54 = v84;
              }

              *(v54 + 16) = v53 + 1;
              v55 = v54 + 16 * v53;
              *(v55 + 32) = v49;
              *(v55 + 40) = v51;
              v47 = v54;
              if (v78 == v88)
              {

                v27 = v73;
                goto LABEL_23;
              }

              v48 += 168;
              v46 = v88 + 1;
              v37 = v80;
            }

            __break(1u);
            goto LABEL_27;
          }

          v47 = MEMORY[0x1E69E7CC0];
LABEL_23:
          *&__src[0] = v47;
          v63 = sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
          sub_1B21179D8(qword_1ED85E790);
          sub_1B21164C8();
          sub_1B2252250();
          sub_1B21159FC();

          MEMORY[0x1B2741EB0](&qword_1B2254340, v63);

          v26 = v76;
        }

        else
        {
        }

        sub_1B2154370(v25, v26, v27 & 1);
        sub_1B21149C8();
        *&__src[0] = v64;
        *(&__src[0] + 1) = v65;
        MEMORY[0x1B2741EB0]();

        MEMORY[0x1B2741EB0](*&__src[0], *(&__src[0] + 1));
      }

      sub_1B2111CD4();
      sub_1B212641C(v66, v67, v68);

      sub_1B211B048(__src);
      v82[0] = __src[0];
      Statement.arguments.setter(v82, v69);

      goto LABEL_8;
    }

LABEL_7:
    sub_1B21225BC();
    sub_1B224F63C();
    goto LABEL_8;
  }

  if (v3 == 1)
  {
    goto LABEL_7;
  }

LABEL_27:
  sub_1B2118614("Fatal error");
  __break(1u);
}

uint64_t sub_1B214BBD0(uint64_t a1)
{
  v3 = v1[12];
  if (!v3)
  {
    return 0;
  }

  v5 = *v1;
  v6 = v1[1];
  v7 = v1[2];
  result = v3(__dst);
  if (v2)
  {
    return result;
  }

  v9 = __dst[0];
  v10 = *(__dst[0] + 16);
  if (!v10)
  {

    return 0;
  }

  v11._countAndFlagsBits = v5;
  v11._object = v6;
  result = Database.tableExists(_:)(v11);
  if (v12)
  {
  }

  if (result)
  {
    v24 = v5;
    v13 = 0;
    v28 = MEMORY[0x1E69E7CD0];
    v14 = 32;
    while (v10 != v13)
    {
      if (v13 >= *(v9 + 16))
      {
        __break(1u);
        return result;
      }

      memcpy(__dst, (v9 + v14), 0xA3uLL);
      memcpy(v26, (v9 + v14), 0xA3uLL);
      sub_1B2127DC0(__dst, v25);
      v15 = sub_1B213F348(a1, v7, 1);
      if (!v16)
      {

        sub_1B21356F8(__dst);
        goto LABEL_19;
      }

      sub_1B2139304(v26, v15, v16, v17, v18, v19, v20, v21, v23, v24, v25[0], v25[1], v25[2], v25[3], v25[4], v25[5], v25[6], v25[7], v25[8], v25[9], v25[10], v25[11], v25[12], v25[13], v25[14], v25[15], v25[16], v25[17], v25[18], v25[19]);
      sub_1B21356F8(__dst);

      v14 += 168;
      ++v13;
    }

    v22 = sub_1B213FF40(v24, v6, v28);

    if (v22)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  else
  {
LABEL_19:

    return 2;
  }
}

void sub_1B214BDE0()
{
  sub_1B2122150();
  sub_1B211D530();
  sub_1B2117330();
  swift_beginAccess();
  v3 = *(v1 + 40);
  v4 = sub_1B2116B08();

  v5 = 0;
  while (1)
  {
    v6 = v5;
    if (v4 == v5)
    {
LABEL_10:

      sub_1B2114274();
      return;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1B27427E0](v5, v3);
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      sub_1B2117C0C();
    }

    if (__OFADD__(v6, 1))
    {
      break;
    }

    v7 = sub_1B217605C(v2, v0, 0, 1);

    v5 = v6 + 1;
    if (v7)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

uint64_t SelectionRequest.select(_:)()
{
  sub_1B2123510();
  sub_1B2112174();
  sub_1B2115660();
  v1 = swift_allocObject();
  sub_1B211AE34(v1);
  v2 = *(v0 + 8);

  v3 = sub_1B211623C();
  v2(v3);
  sub_1B2115ED4();
}

uint64_t sub_1B214BF4C()
{

  sub_1B2115660();

  return swift_deallocObject();
}

uint64_t sub_1B214BF9C(uint64_t a1)
{
  v2 = sub_1B21619D8(&qword_1EB7A10F0, &qword_1B225D320);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1B214C008(char *__src, uint64_t a2, uint64_t a3, uint64_t a4)
{
  memcpy(__dst, __src, 0xA2uLL);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v16 = *__src;
  v17 = *(__src + 2);
  memcpy(__srca, __src + 40, sizeof(__srca));
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1B214D338;
  *(v9 + 24) = v8;

  sub_1B2136148(__dst, v18);

  memcpy(v18, __src, 0xA2uLL);
  InterfaceRequest = type metadata accessor for QueryInterfaceRequest(0, a4, v10, v11);
  (*(*(InterfaceRequest - 8) + 8))(v18, InterfaceRequest);
  *__src = v16;
  *(__src + 2) = v17;
  *(__src + 3) = sub_1B2139E34;
  *(__src + 4) = v9;
  return memcpy(__src + 40, __srca, 0x7AuLL);
}

uint64_t sub_1B214C180()
{

  sub_1B2111904();

  return swift_deallocObject();
}

void *SQLSubqueryable.contains(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  (*(a3 + 16))(v10, a2, a3);
  sub_1B214C43C(v10);
  memcpy(__dst, v10, sizeof(__dst));
  v6 = a1[3];
  v7 = a1[4];
  sub_1B21139A0(a1, v6);
  (*(v7 + 8))(__src, v6, v7);
  v8 = swift_allocObject();
  memcpy(v8 + 16, __src, 0xA3uLL);
  memcpy(v8 + 184, __dst, 0xA2uLL);
  v8[346] = 0;
  v13[0] = v8;
  sub_1B214C468(v13);
  return memcpy(a4, v13, 0xA3uLL);
}

uint64_t sub_1B214C2D8()
{
  sub_1B213B9FC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176) | (*(v0 + 178) << 16));
  sub_1B214DF8C(*(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232), *(v0 + 240), *(v0 + 248), *(v0 + 256), *(v0 + 264), *(v0 + 272), *(v0 + 280), *(v0 + 288), *(v0 + 296), *(v0 + 304), *(v0 + 312), *(v0 + 320), *(v0 + 328), *(v0 + 336), *(v0 + 344));

  return swift_deallocObject();
}

uint64_t QueryInterfaceRequest.sqlSubquery.getter@<X0>(void *a1@<X8>)
{
  sub_1B2114F78();
  memcpy(v2, v3, v4);
  sub_1B2114F78();
  memcpy(v5, v6, v7);
  sub_1B214C410(__src);
  memcpy(a1, __src, 0xA2uLL);
  return sub_1B2136148(v10, &v9);
}

uint64_t sub_1B214C410(uint64_t result)
{
  v1 = *(result + 160);
  v2 = *(result + 104) & 1;
  *(result + 64) &= 1uLL;
  *(result + 104) = v2;
  *(result + 160) = v1 & 0x1FF | 0x8000;
  return result;
}

uint64_t sub_1B214C43C(uint64_t result)
{
  v1 = *(result + 104) & 1;
  v2 = *(result + 160) & 0x81FF | 0x2000;
  *(result + 64) &= 1uLL;
  *(result + 104) = v1;
  *(result + 160) = v2;
  return result;
}

uint64_t sub_1B214C468(uint64_t a1)
{
  v2 = *(a1 + 160);
  result = a1 + 160;
  v3 = v2 | (*(result + 2) << 16);
  v4 = *(result - 56) & 1;
  *(result - 96) &= 1uLL;
  *(result - 56) = v4;
  *result = v3 & 0x81FF;
  *(result + 2) = (v3 & 0x1FFFF | 0x580000u) >> 16;
  return result;
}

uint64_t sub_1B214C4AC()
{
  sub_1B2111F14();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_1B2115660();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = *(v3 + 8);

  v9(v1, v8, v5, v3);
  sub_1B2111588();
}

uint64_t OrderedRequest.order(_:)()
{
  return sub_1B214C4AC();
}

{
  return sub_1B214C4AC();
}

void *sub_1B214C584(void *__src, uint64_t a2, uint64_t a3, uint64_t a4)
{
  memcpy(__dst, __src, sizeof(__dst));
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;

  sub_1B214C6B4(sub_1B214D66C, v8, __srca);

  memcpy(v15, __src, 0xA2uLL);
  InterfaceRequest = type metadata accessor for QueryInterfaceRequest(0, a4, v9, v10);
  (*(*(InterfaceRequest - 8) + 8))(v15, InterfaceRequest);
  return memcpy(__src, __srca, 0xA2uLL);
}

void *sub_1B214C6B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *(v4 + 48);
  v15 = *(v4 + 56);
  v16 = *(v4 + 64);
  v9 = *(v4 + 16);
  v18 = *v4;
  v19 = v9;
  v20 = *(v4 + 32);
  v21 = v8;
  memcpy(__dst, (v4 + 65), sizeof(__dst));
  sub_1B21619D8(&qword_1EB7A0EB0, &unk_1B225BB30);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1B22546B0;
  sub_1B2111904();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v10 + 32) = sub_1B214D4F8;
  *(v10 + 40) = v11;
  *(v10 + 48) = 0;
  sub_1B2136148(v4, &v14);

  sub_1B214C808(&v15);
  v12 = v19;
  *a3 = v18;
  *(a3 + 16) = v12;
  *(a3 + 32) = v20;
  *(a3 + 48) = v21;
  *(a3 + 56) = v10;
  *(a3 + 64) = 0;
  return memcpy((a3 + 65), __dst, 0x61uLL);
}

uint64_t sub_1B214C7D0()
{

  sub_1B2111904();

  return swift_deallocObject();
}

void *FetchRequest<>.fetchCursor(_:)()
{
  sub_1B211543C();
  sub_1B21130B8(v0, v1, v2);
  v3 = sub_1B2115A3C();
  return static FetchableRecord.fetchCursor<A>(_:_:)(v3, v4, v5, v6, v7, v8);
}

void *static FetchableRecord.fetchCursor<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = (*(a6 + 32))(v23, a1, 0, a4, a6);
  if (v6)
  {
    return a2;
  }

  if (!v23[6])
  {
    v18 = sub_1B2117FCC(result, v11, v12, v13, v14, v15, v16, v17, v21, v22, v23[0]);
    static FetchableRecord.fetchCursor(_:arguments:adapter:)(v18, v19, v20, a3, a5);
    sub_1B212D124();
    sub_1B2142D18(v23);
    return a2;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B214C970(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void *sub_1B214C980@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1B2114F78();
  memcpy(v4, v5, v6);
  sub_1B2114F78();
  memcpy(v7, v8, v9);
  v10 = sub_1B214CB20(v23);
  v11 = sub_1B214CB10(v23);
  if (v10)
  {
    memcpy(a2, v22, 0xA2uLL);
    return sub_1B214CB2C(v22, __src);
  }

  else
  {
    v12 = *v11;
    v13 = *(*v11 + 16);
    v14 = MEMORY[0x1E69E7CC0];
    if (v13)
    {
      v21 = MEMORY[0x1E69E7CC0];
      sub_1B213CA68();
      v14 = v21;
      v15 = (v12 + 32);
      do
      {
        memcpy(__dst, v15, 0xA3uLL);
        memcpy(v18, v15, sizeof(v18));
        sub_1B2127DC0(__dst, __src);
        sub_1B213BBD8(a1, __src);
        sub_1B21356F8(__dst);
        v21 = v14;
        v16 = *(v14 + 16);
        if (v16 >= *(v14 + 24) >> 1)
        {
          sub_1B213CA68();
          v14 = v21;
        }

        *(v14 + 16) = v16 + 1;
        memcpy((v14 + 168 * v16 + 32), __src, 0xA3uLL);
        v15 += 168;
        --v13;
      }

      while (v13);
    }

    __src[0] = v14;
    sub_1B21513E8(__src);
    return memcpy(a2, __src, 0xA2uLL);
  }
}

void sub_1B214CB88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  sub_1B2116B10(0, v7, 0, a4, a5, a6, a7);
}

void *sub_1B214CBA8(void *a1)
{

  return memcpy(a1, (v1 + 16), 0xB8uLL);
}

uint64_t sub_1B214CBC0(uint64_t a1, uint64_t a2)
{

  return sub_1B21117B4(v2, a2, 1, v3);
}

void sub_1B214CBDC()
{

  JUMPOUT(0x1B2741EB0);
}

void sub_1B214CBF8()
{
  *(v0 + 16) = v2;
  v5 = v0 + 16 * v1;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
}

uint64_t sub_1B214CC10(uint64_t a1)
{

  return sub_1B2252E70();
}

void *sub_1B214CC30(void *a1)
{

  return memcpy(a1, &STACK[0x4B8], 0xA3uLL);
}

uint64_t sub_1B214CC54()
{
}

void sub_1B214CC70(uint64_t a1)
{
  v2 = v1;
  sub_1B2114F78();
  memcpy(v3, v4, v5);
  sub_1B2114F78();
  memcpy(v6, v7, v8);
  v9 = sub_1B214CB20(v47);
  if (v9)
  {
    if (v9 == 1)
    {
      v10 = sub_1B214CB10(v47);
      memcpy(__dst, v10, 0xA2uLL);
      memcpy(v44, __src, 0xA2uLL);
      v11 = sub_1B214CB10(v44);
      sub_1B214CFE0(v11, v42);
      v12 = sub_1B214D03C(a1);
      if (!v1)
      {
        __dst[0] = 40;
        __dst[1] = 0xE100000000000000;
        MEMORY[0x1B2741EB0](v12);

        MEMORY[0x1B2741EB0](41, 0xE100000000000000);
      }
    }

    else
    {
      v34 = sub_1B214CB10(v47);
      v35 = *v34;
      v36 = v34[1];
      __dst[0] = 34;
      __dst[1] = 0xE100000000000000;
      sub_1B21A33A0(__src, v44);
      MEMORY[0x1B2741EB0](v35, v36);
      MEMORY[0x1B2741EB0](34, 0xE100000000000000);
    }

    sub_1B214D4C8(__src);
  }

  else
  {
    v13 = sub_1B214CB10(v47);
    v14 = *v13;
    v15 = *(*v13 + 16);
    v16 = MEMORY[0x1E69E7CC0];
    if (v15)
    {
      memcpy(v45, __src, 0xA2uLL);
      sub_1B214CB10(v45);
      v48 = v16;

      sub_1B2116B10(0, v15, 0, v17, v18, v19, v20);
      v21 = 0;
      v16 = v48;
      v22 = (v14 + 32);
      v40 = v15 - 1;
      while (v21 < *(v14 + 16))
      {
        memcpy(v44, v22, 0xA3uLL);
        memcpy(__dst, v22, 0xA3uLL);
        sub_1B2127DC0(v44, v42);
        v23 = sub_1B2127E58(a1, 0);
        if (v2)
        {
          sub_1B214D4C8(__src);
          sub_1B21356F8(v44);

          return;
        }

        v25 = v23;
        v26 = v24;
        sub_1B21356F8(v44);
        v48 = v16;
        v32 = *(v16 + 16);
        v31 = *(v16 + 24);
        if (v32 >= v31 >> 1)
        {
          sub_1B2116B10(v31 > 1, v32 + 1, 1, v27, v28, v29, v30);
          v16 = v48;
        }

        *(v16 + 16) = v32 + 1;
        v33 = v16 + 16 * v32;
        *(v33 + 32) = v25;
        *(v33 + 40) = v26;
        if (v40 == v21)
        {
          sub_1B214D4C8(__src);
          goto LABEL_17;
        }

        v22 += 168;
        ++v21;
        v2 = 0;
      }

      __break(1u);
    }

    else
    {
LABEL_17:
      v44[0] = v16;
      sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
      sub_1B215175C();
      v37 = sub_1B2252250();
      v39 = v38;

      v44[0] = 40;
      v44[1] = 0xE100000000000000;
      MEMORY[0x1B2741EB0](v37, v39);

      MEMORY[0x1B2741EB0](41, 0xE100000000000000);
    }
  }
}

uint64_t sub_1B214D03C(uint64_t a1)
{
  sub_1B2114F78();
  memcpy(v2, v3, v4);
  sub_1B2114F78();
  memcpy(v5, v6, v7);
  if (sub_1B214D180(v52) == 1)
  {
    v8 = sub_1B21197F4(v52);
    memcpy(__dst, v8, 0xA2uLL);
    sub_1B211589C(v47);
    v9 = sub_1B21197F4(v47);
    sub_1B214D18C(v51, &v27);
    sub_1B2136148(v9, &v27);
    sub_1B21366E4(__dst, &v27);
    sub_1B2137278();
    sub_1B2115268(v10, v11, v12, v13, v14, v15, v16, v17, v27.n128_i64[0], v27.n128_i64[1], v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47[0], v47[1], v47[2], v47[3], v47[4], v47[5], v47[6], v47[7], v47[8], v47[9], v47[10], v47[11], v47[12], v47[13], v47[14], v47[15], v47[16], v47[17], v47[18], v47[19], v47[20]);
    v48[168] = 0;
    v49 = __dst;
    sub_1B21376C4();
    v19 = v18;
    sub_1B2142BCC(v48);
  }

  else
  {
    v47[0] = *sub_1B21197F4(v52);
    sub_1B211589C(&v27);
    sub_1B21197F4(&v27);

    v19 = sub_1B2119120(a1, v20, v21, v22, v23, v24, v25);
  }

  sub_1B214D498(v51);
  return v19;
}

uint64_t sub_1B214D1C4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = a2(a1);
  if (!v2)
  {
    v5 = v4;
    v6 = *(v4 + 16);
    if (v6)
    {
      v17 = MEMORY[0x1E69E7CC0];
      sub_1B213A1C8();
      v3 = v17;
      v7 = v5 + 32;
      for (i = v6 - 1; ; --i)
      {
        sub_1B214D38C(v7, v13);
        v9 = v14;
        v10 = v15;
        sub_1B21139A0(v13, v14);
        (*(v10 + 8))(__src, v9, v10);
        sub_1B2113208(v13);
        v17 = v3;
        v11 = *(v3 + 16);
        if (v11 >= *(v3 + 24) >> 1)
        {
          sub_1B213A1C8();
          v3 = v17;
        }

        *(v3 + 16) = v11 + 1;
        memcpy((v3 + 184 * v11 + 32), __src, 0xB8uLL);
        if (!i)
        {
          break;
        }

        v7 += 40;
      }
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

uint64_t sub_1B214D38C(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  sub_1B2111808();
  (*v3)(a2);
  return a2;
}

uint64_t sub_1B214D3EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5[0] = a1;
  v5[1] = a2;
  sub_1B2134F5C(v5);
  memcpy(__dst, v5, 0xA3uLL);
  sub_1B214D464(__dst);
  memcpy(a3, __dst, 0xB8uLL);
}

void *sub_1B214D464(void *result)
{
  v1 = result[13] & 1;
  v2 = result[20] & 0xF981FFLL | 0x2000000000000000;
  result[8] &= 1uLL;
  result[13] = v1;
  result[20] = v2;
  return result;
}

uint64_t sub_1B214D510(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = a2(a1);
  if (!v2)
  {
    v5 = v4;
    v6 = *(v4 + 16);
    if (v6)
    {
      v17 = MEMORY[0x1E69E7CC0];
      sub_1B214D708();
      v3 = v17;
      v7 = v5 + 32;
      for (i = v6 - 1; ; --i)
      {
        sub_1B214D38C(v7, v13);
        v9 = v14;
        v10 = v15;
        sub_1B21139A0(v13, v14);
        (*(v10 + 8))(__src, v9, v10);
        sub_1B2113208(v13);
        v17 = v3;
        v11 = *(v3 + 16);
        if (v11 >= *(v3 + 24) >> 1)
        {
          sub_1B214D708();
          v3 = v17;
        }

        *(v3 + 16) = v11 + 1;
        memcpy((v3 + 168 * v11 + 32), __src, 0xA3uLL);
        if (!i)
        {
          break;
        }

        v7 += 40;
      }
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

void *sub_1B214D688@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr, uint64_t *)@<X1>, uint64_t a3@<X2>, void *(*a4)(uint64_t *__return_ptr)@<X3>, void *a5@<X8>)
{
  result = sub_1B2139E68(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

uint64_t sub_1B214D6B4@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1B214D754@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5[0] = a1;
  v5[1] = a2;
  sub_1B2134F5C(v5);
  memcpy(__dst, v5, 0xA3uLL);
  sub_1B214D7CC(__dst);
  memcpy(a3, __dst, 0xA3uLL);
}

uint64_t sub_1B214D7CC(uint64_t a1)
{
  v2 = *(a1 + 160);
  result = a1 + 160;
  v3 = *(result - 56) & 1;
  v4 = (v2 | (*(result + 2) << 16)) & 0xF981FF;
  *(result - 96) &= 1uLL;
  *(result - 56) = v3;
  *result = v4;
  *(result + 2) = BYTE2(v4);
  return result;
}

uint64_t *sub_1B214D80C@<X0>(uint64_t *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = *result;
  v5 = *(*result + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1B214D708();
    v6 = v13;
    v8 = (v4 + 32);
    do
    {
      memcpy(__dst, v8, 0xA3uLL);
      memcpy(v10, v8, sizeof(v10));
      sub_1B214D958(__dst, __src);
      sub_1B214D9C8(a2, __src);
      sub_1B214DC54(__dst);
      v13 = v6;
      v9 = *(v6 + 16);
      if (v9 >= *(v6 + 24) >> 1)
      {
        sub_1B214D708();
        v6 = v13;
      }

      *(v6 + 16) = v9 + 1;
      result = memcpy((v6 + 168 * v9 + 32), __src, 0xA3uLL);
      v8 += 168;
      --v5;
    }

    while (v5);
  }

  *a3 = v6;
  return result;
}

void *sub_1B214D9C8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1B2111ADC();
  memcpy(v4, v5, v6);
  sub_1B2111ADC();
  memcpy(v7, v8, v9);
  switch(sub_1B214DC10(v209))
  {
    case 1u:
      v122 = sub_1B213D4C8(v209);
      sub_1B2116868(v122, v123, v124, v125, v126, v127, v128, v129, v154, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206);
      sub_1B2112E28();
      memcpy(v130, v131, v132);
      v133 = sub_1B213D4C8(&v165);
      v134 = sub_1B2127DC0(v133, &v186);
      sub_1B21153C8(v134, v135, v136, v137, v138, v139, v140, v141, v163, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186);
      v142 = sub_1B214DC24(v208);
      sub_1B2115A08(v142, v143, v144, v145, v146, v147, v148, v149, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206);
      sub_1B21C7F70(__src);
      break;
    case 2u:
      v66 = sub_1B213D4C8(v209);
      sub_1B2116868(v66, v67, v68, v69, v70, v71, v72, v73, v154, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206);
      sub_1B2112E28();
      memcpy(v74, v75, v76);
      v77 = sub_1B213D4C8(&v165);
      v78 = sub_1B2127DC0(v77, &v186);
      sub_1B21153C8(v78, v79, v80, v81, v82, v83, v84, v85, v159, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186);
      v86 = sub_1B214DC24(v208);
      sub_1B2115A08(v86, v87, v88, v89, v90, v91, v92, v93, v160, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206);
      sub_1B21C7FB4(__src);
      break;
    case 3u:
      v94 = sub_1B213D4C8(v209);
      sub_1B2116868(v94, v95, v96, v97, v98, v99, v100, v101, v154, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206);
      sub_1B2112E28();
      memcpy(v102, v103, v104);
      v105 = sub_1B213D4C8(&v165);
      v106 = sub_1B2127DC0(v105, &v186);
      sub_1B21153C8(v106, v107, v108, v109, v110, v111, v112, v113, v161, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186);
      v114 = sub_1B214DC24(v208);
      sub_1B2115A08(v114, v115, v116, v117, v118, v119, v120, v121, v162, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206);
      sub_1B21C7E84(__src);
      break;
    case 4u:
      v38 = sub_1B213D4C8(v209);
      sub_1B2116868(v38, v39, v40, v41, v42, v43, v44, v45, v154, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206);
      sub_1B2112E28();
      memcpy(v46, v47, v48);
      v49 = sub_1B213D4C8(&v165);
      v50 = sub_1B2127DC0(v49, &v186);
      sub_1B21153C8(v50, v51, v52, v53, v54, v55, v56, v57, v157, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186);
      v58 = sub_1B214DC24(v208);
      sub_1B2115A08(v58, v59, v60, v61, v62, v63, v64, v65, v158, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206);
      sub_1B21C7F2C(__src);
      break;
    case 5u:
      *__src = *sub_1B213D4C8(v209);
      sub_1B2112E28();
      memcpy(v150, v151, v152);
      sub_1B213D4C8(&v186);

      sub_1B2153E58(a1, &v165);
      sub_1B214DC24(v208);
      *__src = v165;
      sub_1B221BBD0(__src);
      break;
    default:
      v10 = sub_1B213D4C8(v209);
      sub_1B2116868(v10, v11, v12, v13, v14, v15, v16, v17, v154, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206);
      sub_1B2112E28();
      memcpy(v18, v19, v20);
      v21 = sub_1B213D4C8(&v165);
      v22 = sub_1B2127DC0(v21, &v186);
      sub_1B21153C8(v22, v23, v24, v25, v26, v27, v28, v29, v155, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186);
      v30 = sub_1B214DC24(v208);
      sub_1B2115A08(v30, v31, v32, v33, v34, v35, v36, v37, v156, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206);
      sub_1B214D7CC(__src);
      break;
  }

  return memcpy(a2, __src, 0xA3uLL);
}

uint64_t sub_1B214DCD8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void *sub_1B214DCE8(uint64_t a1)
{
  sub_1B2111ADC();
  memcpy(v4, v5, v6);
  sub_1B2111ADC();
  memcpy(v7, v8, v9);
  switch(sub_1B214DC10(v110))
  {
    case 1u:
      v63 = sub_1B213D4C8(v110);
      sub_1B21163DC(v63, v64, v65, v66, v67, v68, v69, v70, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106);
      sub_1B2112E28();
      memcpy(v71, v72, v73);
      v74 = sub_1B213D4C8(v108);
      sub_1B2127DC0(v74, &v86);
      sub_1B21178AC();
      if (v2)
      {
        goto LABEL_14;
      }

      sub_1B2118558();
      v38 = 1129529632;
      v37 = 0xE400000000000000;
      goto LABEL_11;
    case 2u:
      v39 = sub_1B213D4C8(v110);
      sub_1B21163DC(v39, v40, v41, v42, v43, v44, v45, v46, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106);
      sub_1B2112E28();
      memcpy(v47, v48, v49);
      v50 = sub_1B213D4C8(v108);
      sub_1B2127DC0(v50, &v86);
      sub_1B21178AC();
      if (v2)
      {
        goto LABEL_14;
      }

      sub_1B2118558();
      v38 = 0x4353454420;
      v37 = 0xE500000000000000;
      goto LABEL_11;
    case 3u:
      v51 = sub_1B213D4C8(v110);
      sub_1B21163DC(v51, v52, v53, v54, v55, v56, v57, v58, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106);
      sub_1B2112E28();
      memcpy(v59, v60, v61);
      v62 = sub_1B213D4C8(v108);
      sub_1B2127DC0(v62, &v86);
      sub_1B21178AC();
      if (v2)
      {
        goto LABEL_14;
      }

      sub_1B2118558();
      v38 = 0x4C554E2043534120;
      v37 = 0xEF5453414C20534CLL;
      goto LABEL_11;
    case 4u:
      v23 = sub_1B213D4C8(v110);
      sub_1B21163DC(v23, v24, v25, v26, v27, v28, v29, v30, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106);
      sub_1B2112E28();
      memcpy(v31, v32, v33);
      v34 = sub_1B213D4C8(v108);
      sub_1B2127DC0(v34, &v86);
      v35 = sub_1B21178AC();
      if (v2)
      {
        goto LABEL_14;
      }

      v107[0] = v35;
      v107[1] = v36;

      v37 = 0x80000001B2270290;
      v38 = 0xD000000000000011;
LABEL_11:
      MEMORY[0x1B2741EB0](v38, v37);

      sub_1B214DC24(v109);
      v1 = v107[0];
      break;
    case 5u:
      v107[0] = *sub_1B213D4C8(v110);
      sub_1B2112E28();
      memcpy(v75, v76, v77);
      sub_1B213D4C8(v108);

      v1 = v107;
      v22 = sub_1B2119120(a1, v78, v79, v80, v81, v82, v83);
      goto LABEL_13;
    default:
      v10 = sub_1B213D4C8(v110);
      sub_1B21163DC(v10, v11, v12, v13, v14, v15, v16, v17, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106);
      sub_1B2112E28();
      memcpy(v18, v19, v20);
      v21 = sub_1B213D4C8(v108);
      sub_1B2127DC0(v21, &v86);
      v22 = sub_1B21178AC();
LABEL_13:
      if (v2)
      {
LABEL_14:
        sub_1B214DC24(v109);
      }

      else
      {
        v1 = v22;
        sub_1B214DC24(v109);
      }

      break;
  }

  return v1;
}

uint64_t sub_1B214DF8C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned __int16 a21)
{
  switch((a21 >> 13) & 3)
  {
    case 1uLL:

      result = sub_1B214E054(result, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21 & 0x9FFF);
      break;
    case 3uLL:
      return result;
    default:

      break;
  }

  return result;
}

uint64_t sub_1B214E054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int16 a21)
{
  if (a21 < 0)
  {

    sub_1B2112F4C(a6, a7);

    sub_1B2112F4C(a15, a16);

    return sub_1B2112F4C(a17, a18);
  }

  else
  {
  }
}

uint64_t == infix(_:_:)(void *a1, char a2)
{
  v2 = a1[3];
  if (a2)
  {
    sub_1B21139A0(a1, a1[3]);
    sub_1B2115328();
    v3(v2);
    sub_1B2113BD0();
    v5 = 0;
  }

  else
  {
    sub_1B21139A0(a1, a1[3]);
    sub_1B2115328();
    v6(v2);
    sub_1B2113BD0();
    v5 = 1;
  }

  sub_1B214E21C(v5, v4);
  sub_1B213CBB8(v16, v7, v8, v9, v10, v11, v12, v13, v15);
  return sub_1B21356F8(v16);
}

void *sub_1B214E21C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B2111ADC();
  memcpy(v5, v6, v7);
  sub_1B2111ADC();
  memcpy(v8, v9, v10);
  switch(sub_1B2127E1C(v90))
  {
    case 2u:
      v11 = sub_1B2127E38(v90);
      v12 = *v11;
      if (*(v11 + 16))
      {
        if (*(v11 + 16) != 4 || *v11 != 0)
        {
          goto LABEL_16;
        }

        v88[1] = 0;
        v88[0] = 0;
        LOBYTE(v88[2]) = 4;
      }

      else
      {
        if (v12 > 1)
        {
          goto LABEL_16;
        }

        if (a1)
        {
          v72 = v12 ^ 1;
        }

        else
        {
          v72 = v12 == 1;
        }

        v88[0] = v72;
        v88[1] = 0;
        LOBYTE(v88[2]) = 0;
      }

      v81 = sub_1B2127D7C(v88);
      return sub_1B211A2B4(v81, v88);
    case 6u:
      v25 = sub_1B2113984();
      if (v21)
      {
        goto LABEL_29;
      }

      if (v26 == 1)
      {
        goto LABEL_28;
      }

      v27 = *(*v25 + 515);
      sub_1B211D694();
      memcpy(v28, v29, v30);
      sub_1B21D09A0();
      memcpy(v31, v32, v33);
      sub_1B2142348();
      memcpy(v34, v35, v36);
      sub_1B21262D8();
      return sub_1B21CF574(v37 & ~v27, a2);
    case 8u:
      v13 = sub_1B2127E38(v90);
      v14 = *v13;
      v16 = *(*v13 + 16);
      v15 = *(*v13 + 24);
      v18 = *(*v13 + 32);
      v17 = *(*v13 + 40);
      memcpy(__dst, (*v13 + 48), 0xA3uLL);
      memcpy(v87, (v14 + 216), 0xA3uLL);
      memcpy(v88, (v14 + 384), 0xA3uLL);
      if (!a1)
      {
        sub_1B213532C(v83);
        *v84 = xmmword_1B2259350;
        goto LABEL_37;
      }

      if (a1 == 1)
      {
        sub_1B213532C(v83);
        *v84 = 0uLL;
LABEL_37:
        v84[16] = 0;
        sub_1B2127D7C(v84);
        v71 = memcpy(v82, v84, 0xA3uLL);
        sub_1B21352D4(v71, v83, v82);
        memcpy(__src, v82, 0xA3uLL);
        v60 = __src;
        return sub_1B21356F8(v60);
      }

      v73 = swift_allocObject();
      v73[2] = v18;
      v73[3] = v17;
      v73[4] = v16;
      v73[5] = v15;
      memcpy(v73 + 6, __dst, 0xA3uLL);
      sub_1B212B4CC(v73 + 27);
      sub_1B2126034(v73 + 48);
      __src[0] = v73;
      v74 = sub_1B21D0530(__src);
      sub_1B211A2B4(v74, __src);

      sub_1B2127DC0(__dst, v84);
      sub_1B2127DC0(v87, v84);
      return sub_1B2122B00(v88, v84, &qword_1EB7A1CD0, &unk_1B225D310);
    case 0xAu:
      v48 = sub_1B2113984();
      if (v21)
      {
        goto LABEL_29;
      }

      if (v49 == 1)
      {
        goto LABEL_28;
      }

      v50 = (v48[162] & 1) == 0;
      memmove(v88, v48, 0xA2uLL);
      BYTE2(v88[20]) = v50;
      v40 = sub_1B21D04EC(v88);
      goto LABEL_46;
    case 0xBu:
      sub_1B2149808();
      sub_1B211D694();
      memcpy(v51, v52, v53);
      sub_1B2114090();
      memcpy(v54, v55, v56);
      if (!a1)
      {
        sub_1B213532C(__src);
        __dst[0] = xmmword_1B2259350;
        goto LABEL_43;
      }

      if (a1 == 1)
      {
        sub_1B213532C(__src);
        __dst[0] = 0uLL;
LABEL_43:
        LOBYTE(__dst[1]) = 0;
        sub_1B2127D7C(__dst);
        v75 = memcpy(v84, __dst, sizeof(v84));
        sub_1B21352D4(v75, __src, v84);
        memcpy(v87, v84, 0xA3uLL);
        v60 = v87;
        return sub_1B21356F8(v60);
      }

      v76 = *(v2 + 346);
      sub_1B21D0994();
      v77 = swift_allocObject();
      v78 = sub_1B211E4F4(v77);
      sub_1B2126034(v78);
      memcpy((v2 + 184), v83, 0xA2uLL);
      *(v2 + 346) = (v76 & 1) == 0;
      *v87 = v2;
      v79 = sub_1B214C468(v87);
      sub_1B211A2B4(v79, v87);
      sub_1B2127DC0(v88, __dst);
      return sub_1B214CB2C(v83, __dst);
    case 0xDu:
      v19 = sub_1B2113984();
      if (v21)
      {
        goto LABEL_29;
      }

      if (v20 == 1)
      {
        goto LABEL_28;
      }

      v22 = *v19;
      v23 = 0x2030001u >> (8 * *(*v19 + 16));
      memcpy(v88, (*v19 + 24), 0xA3uLL);
      memcpy(v87, (v22 + 192), 0xA3uLL);
      return sub_1B21353B0(v23, v88, a2);
    case 0xFu:
      sub_1B2127E38(v90);
      goto LABEL_16;
    case 0x10u:
      sub_1B2149808();
      sub_1B211D694();
      memcpy(v41, v42, v43);
      v44 = *(v2 + 184);
      v45 = *(v2 + 192);
      sub_1B214E21C(a1);
      *&__dst[0] = v44;
      *(&__dst[0] + 1) = v45;
      sub_1B21CF728(__dst, a2);
      v46 = sub_1B21262D8();
      goto LABEL_31;
    case 0x12u:
      sub_1B2149808();
      sub_1B211D694();
      v40 = memcpy(v61, v62, v63);
      if (a1)
      {
        v64 = *(v2 + 179);
        v65 = swift_allocObject();
        v66 = sub_1B211E4F4(v65);
        sub_1B2126034(v66);
        *(v2 + 179) = (v64 & 1) == 0;
        *v87 = v2;
        v67 = sub_1B21D04A8(v87);
        sub_1B211A2B4(v67, v87);
        v68 = v88;
        v69 = __dst;
        return sub_1B2127DC0(v68, v69);
      }

      v70 = &v89;
      goto LABEL_47;
    case 0x14u:
      v57 = sub_1B2113984();
      if (v21)
      {
        goto LABEL_29;
      }

      if (v58 == 1)
      {
        goto LABEL_28;
      }

      v80 = *(v57 + 8);
      v88[0] = *v57;
      LOBYTE(v88[1]) = (v80 & 1) == 0;
      v40 = sub_1B21D041C(v88);
      goto LABEL_46;
    default:
LABEL_16:
      if (!a1)
      {
LABEL_29:
        sub_1B213532C(__dst);
        *v87 = xmmword_1B2259350;
        goto LABEL_30;
      }

      if (a1 == 1)
      {
LABEL_28:
        sub_1B213532C(__dst);
        *&v87[8] = 0;
        *v87 = 0;
LABEL_30:
        v87[16] = 0;
        sub_1B2127D7C(v87);
        v59 = sub_1B212B4CC(__src);
        sub_1B21352D4(v59, __dst, __src);
        v46 = v88;
        v47 = __src;
LABEL_31:
        memcpy(v46, v47, 0xA3uLL);
        v60 = v88;
        return sub_1B21356F8(v60);
      }

      v38 = swift_allocObject();
      v39 = sub_1B211E4F4(v38);
      sub_1B213532C(v39);
      v88[0] = v2;
      v40 = sub_1B21D03D8(v88);
LABEL_46:
      v70 = v88;
LABEL_47:
      sub_1B211A2B4(v40, v70);
      v68 = sub_1B212D864();
      return sub_1B2127DC0(v68, v69);
  }
}

__int128 *FetchRequest<>.fetchAll(_:)()
{
  sub_1B211543C();
  sub_1B21130B8(v0, v1, v2);
  v3 = sub_1B2115A3C();
  return static FetchableRecord.fetchAll<A>(_:_:)(v3, v4, v5, v6, v7, v8);
}

__int128 *static FetchableRecord.fetchAll<A>(_:_:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  (*(a6 + 32))(&v33, a1, 0, a4, a6);
  if (!v6)
  {
    if (v35)
    {
      v36 = v35;
      type metadata accessor for Row();
      v17 = v33;
      v32 = 0uLL;

      v18 = static Row.fetchAll(_:arguments:adapter:)(v17, &v32, v34);
      v19 = a1;
      v20 = v18;
      v21 = v36(v19);
      v31[0] = v20;
      v31[1] = v31;
      *&v32 = v20;
      MEMORY[0x1EEE9AC00](v21);
      v30[2] = a3;
      v30[3] = a4;
      v30[4] = a5;
      v30[5] = a6;
      v30[6] = a3;
      v22 = sub_1B21619D8(&qword_1EB7A11A8, &qword_1B22549B8);
      sub_1B211AE9C();
      v26 = sub_1B211AB74(v23, v24, &qword_1B22549B8, v25);
      a2 = &v32;
      sub_1B221B368(sub_1B2225FE8, v30, v22, a3, MEMORY[0x1E69E73E0], v26, MEMORY[0x1E69E7410], v27);
      sub_1B212D124();
      v28 = sub_1B2112F9C();
      sub_1B2112F4C(v28, v29);
      sub_1B2142D18(&v33);
    }

    else
    {
      v32 = 0uLL;
      static FetchableRecord.fetchAll(_:arguments:adapter:)(v33, &v32, v34, a3, a5, v13, v14, v15);
      sub_1B212D124();
      sub_1B2142D18(&v33);
    }
  }

  return a2;
}

uint64_t sub_1B214EAFC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v7[3] = &type metadata for SQLExpression;
  v7[4] = &protocol witness table for SQLExpression;
  sub_1B2117AD0();
  v7[0] = swift_allocObject();
  a3(a1, a2);
  ! prefix(_:)(v7);
  return sub_1B2113208(v7);
}

uint64_t sub_1B214EB88()
{
  sub_1B211668C(v0[1].n128_i64[0], v0[1].n128_u64[1], v0[2].n128_i64[0], v0[2].n128_u64[1], v0[3].n128_i64[0], v0[3].n128_i64[1], v0[4].n128_i64[0], v0[4].n128_i64[1], v0[5], v0[6], v0[7], v0[8], v0[9], v0[11].n128_u16[0] | (v0[11].n128_u8[2] << 16));
  sub_1B2117AD0();

  return swift_deallocObject();
}

uint64_t != infix(_:_:)(uint64_t a1, uint64_t a2)
{
  return sub_1B214EAFC(a1, a2, == infix(_:_:));
}

{
  return sub_1B214EAFC(a1, a2, == infix(_:_:));
}

{
  return sub_1B214EAFC(a1, a2, == infix(_:_:));
}

uint64_t ! prefix(_:)(void *a1)
{
  v1 = a1[3];
  sub_1B21139A0(a1, v1);
  sub_1B2115328();
  v2(v1);
  sub_1B2113BD0();
  sub_1B214E21C(2, v3);
  sub_1B213CBB8(v13, v4, v5, v6, v7, v8, v9, v10, v12);
  return sub_1B21356F8(v13);
}

void *sub_1B214EC70(void *a1)
{

  return memcpy(a1, (v1 + 2088), 0xA3uLL);
}

_BYTE *storeEnumTagSinglePayload for Database.ConflictResolution(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1B214ED70);
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

void *ColumnExpression.set(to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v15 = a2;
  v16 = a3;
  sub_1B212FF14(&v14);
  sub_1B2111808();
  (*(v6 + 16))();
  sub_1B211E17C(a1, v11, &qword_1EB7A10F0, &qword_1B225D320);
  v7 = v12;
  if (v12)
  {
    v8 = v13;
    sub_1B21139A0(v11, v12);
    (*(v8 + 8))(__dst, v7, v8);
    sub_1B2113208(v11);
  }

  else
  {
    sub_1B2122400(v11, &qword_1EB7A10F0, &qword_1B225D320);
    v10[0] = 0;
    v10[1] = 0;
    LOBYTE(v10[2]) = 4;
    sub_1B2127D7C(v10);
    memcpy(__dst, v10, 0xA3uLL);
  }

  sub_1B21217FC(&v14, a4);
  return memcpy((a4 + 40), __dst, 0xA3uLL);
}

void *sub_1B214EECC(char a1)
{
  *__src = a1 & 1;
  v12 = 0;
  v13 = 0;
  v1 = sub_1B2127D7C(__src);
  return sub_1B21182E8(v1, v2, v3, v4, v5, v6, v7, v8, v10);
}

uint64_t QueryInterfaceRequest.updateAll(_:onConflict:_:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  sub_1B2114F78();
  memcpy(v8, v9, v10);
  if (v7 == 5)
  {
    sub_1B2114F78();
    memcpy(v11, v12, v13);
    sub_1B214F08C(a4, &v27);
    LOBYTE(v7) = v27;
  }

  memcpy(__dst, __src, 0xA2uLL);
  sub_1B2111808();
  (*(v14 + 16))(v22, __src, a4);
  sub_1B21366E4(__dst, v22);
  sub_1B2137278();
  v16 = v15;
  memcpy(v23, v22, 0xA8uLL);
  v23[168] = 0;
  v24 = v16;
  v22[0] = v7;
  sub_1B214F0F8();
  v18 = v17;
  sub_1B2142BCC(v23);
  if (!v4)
  {
    if (v18)
    {
      *v22 = 0;
      *&v22[8] = 0;
      v19.value.values._rawValue = v22;
      Statement.execute(arguments:)(v19);
      if (!v21)
      {
        a1 = Database.changesCount.getter();
      }
    }

    else
    {
      return 0;
    }
  }

  return a1;
}

void *sub_1B214F08C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  result = sub_1B212FED0(*(a1 + 16), *(a1 + 16), &protocol descriptor for MutablePersistableRecord);
  if (result)
  {
    result = (*(v4 + 24))(&v6);
    v5 = BYTE1(v6);
  }

  else
  {
    v5 = 1;
  }

  *a2 = v5;
  return result;
}

void sub_1B214F0F8()
{
  sub_1B2111640();
  v3 = v2;
  v5 = v4;
  v7 = *v6;
  v8 = sub_1B214BBD0(v4);
  if (v1)
  {
    goto LABEL_8;
  }

  if (v8)
  {
    if (v8 != 1)
    {
LABEL_42:
      sub_1B2118614("Fatal error");
      __break(1u);
      JUMPOUT(0x1B214FA98);
    }

LABEL_7:
    LOBYTE(v128) = v7;
    sub_1B224FEF8(v5, &v128, v3);
    goto LABEL_8;
  }

  memcpy(__dst, v0, sizeof(__dst));
  if (*(__dst[10] + 16))
  {
    goto LABEL_7;
  }

  if (!*(v3 + 16))
  {
    goto LABEL_8;
  }

  v115 = *(v3 + 16);
  v9 = sub_1B2138500();
  v10 = type metadata accessor for StatementArgumentsSink();
  sub_1B2111758(v10);

  v17 = sub_1B2114D98(0, v11, v12, v13, v14, v15, v16);
  v18 = type metadata accessor for SQLGenerationContext();
  sub_1B211AD64(v18);

  v20 = sub_1B2117164(v19, v17, v9);
  sub_1B21397D0(v20);
  v117 = v20;
  v134 = v21;
  v135 = v22;
  MEMORY[0x1B2741EB0](0x20455441445055, 0xE700000000000000);
  switch(v7)
  {
    case 1:
      goto LABEL_18;
    default:
      v23 = 0x54524F4241;
      v24 = sub_1B22531F0();

      if ((v24 & 1) == 0)
      {
        v128 = 2118223;
        v129 = 0xE300000000000000;
        v25 = 0xE500000000000000;
        switch(v7)
        {
          case 0:
            v25 = 0xE800000000000000;
            v23 = 0x4B4341424C4C4F52;
            break;
          case 1:
            break;
          case 2:
            v25 = 0xE400000000000000;
            v23 = 1279869254;
            break;
          case 3:
            v25 = 0xE600000000000000;
            v23 = 0x45524F4E4749;
            break;
          case 4:
            v25 = 0xE700000000000000;
            v23 = 0x4543414C504552;
            break;
          default:
            JUMPOUT(0);
        }

        MEMORY[0x1B2741EB0](v23, v25);

        MEMORY[0x1B2741EB0](32, 0xE100000000000000);
        MEMORY[0x1B2741EB0](v128, v129);
LABEL_18:
      }

      v26 = v20;
      v27 = sub_1B213ACD0(v20, __dst[0], __dst[1], __dst[2]);
      MEMORY[0x1B2741EB0](v27);

      MEMORY[0x1B2741EB0](0x2054455320, 0xE500000000000000);
      v133 = MEMORY[0x1E69E7CC0];
      sub_1B2116B10(0, v115, 0, v28, v29, v30, v31);
      v137 = v133;
      v32 = v3 + 32;
      for (i = v115 - 1; ; --i)
      {
        sub_1B214FAC0(v32, &v128);
        v34 = v130;
        v35 = v131;
        sub_1B21139A0(&v128, v130);
        (*(*(*(v35 + 8) + 8) + 8))(__src, v34);
        v36 = sub_1B2127E58(v26, 0);
        v38 = v37;
        memcpy(v125, __src, 0xA3uLL);
        sub_1B21356F8(v125);
        v124[0] = v36;
        v124[1] = v38;

        MEMORY[0x1B2741EB0](2112800, 0xE300000000000000);

        v39 = v124[0];
        v40 = v124[1];
        memcpy(v126, v132, 0xA3uLL);
        memcpy(v124, v132, 0xA3uLL);
        sub_1B2127DC0(v126, v123);
        v41 = sub_1B2127E58(v26, 0);
        v43 = v42;
        memcpy(v123, v124, 0xA3uLL);
        sub_1B21356F8(v123);
        *&v121[0] = v39;
        *(&v121[0] + 1) = v40;

        MEMORY[0x1B2741EB0](v41, v43);

        v44 = v40;
        sub_1B214FAF8(&v128);
        v45 = v137;
        v133 = v137;
        v47 = *(v137 + 16);
        v46 = *(v137 + 24);
        v48 = v47 + 1;
        if (v47 >= v46 >> 1)
        {
          sub_1B211156C(v46);
          sub_1B2114574();
          sub_1B2116B10(v50, v51, v52, v53, v54, v55, v56);
          v45 = v133;
        }

        *(v45 + 16) = v48;
        v49 = v45 + 16 * v47;
        *(v49 + 32) = v39;
        *(v49 + 40) = v44;
        if (!i)
        {
          break;
        }

        v137 = v45;
        v32 += 208;
        v26 = v117;
      }

      *&v121[0] = v45;
      sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
      sub_1B21179D8(qword_1ED85E790);
      sub_1B21164C8();
      sub_1B2252250();
      sub_1B21159FC();

      MEMORY[0x1B2741EB0](&qword_1B2254340, v48);

      if (__dst[6])
      {
        v57 = sub_1B21223F4();
        v58(v57);
        memcpy(v120, v121, 0xA3uLL);
        v59 = sub_1B2115828();
        MEMORY[0x1B2741EB0](v59, 0xE700000000000000);
        memcpy(v119, v120, 0xA3uLL);
        v60 = sub_1B21181C0();
        MEMORY[0x1B2741EB0](v60);

        sub_1B21356F8(v120);
      }

      if ((__dst[18] & 0x100) != 0)
      {
        goto LABEL_40;
      }

      v113 = __dst[16];
      v61 = __dst[17];
      v62 = __dst[18];
      sub_1B213D4F4();
      sub_1B2117EEC(v63, v64, v65, v66, v67, v68, v69, v70, v105, v106, v107, v109, v111, v112, v113, v115, v117, v119[0], v119[1], v119[2]);
      v72 = v71;

      if (!*(v72 + 16))
      {

        v98 = v114;
        goto LABEL_39;
      }

      v108 = v62;
      v110 = v61;
      sub_1B211551C();
      sub_1B2113134();
      v73 = *(v72 + 16);
      if (!v73)
      {

        v82 = MEMORY[0x1E69E7CC0];
        goto LABEL_38;
      }

      v122 = MEMORY[0x1E69E7CC0];
      sub_1B2111CD4();
      sub_1B2116B10(v74, v75, v76, v77, v78, v79, v80);
      v81 = 0;
      v82 = v122;
      v116 = v73 - 1;
      v83 = 32;
      v138 = v72;
      break;
  }

  while (1)
  {
    if (v81 >= *(v72 + 16))
    {
      __break(1u);
      goto LABEL_42;
    }

    v84 = v81;
    memcpy(v121, (v72 + v83), 0xA3uLL);
    v85 = v83;
    memcpy(v120, (v72 + v83), 0xA3uLL);
    sub_1B214D958(v121, v119);
    v86 = sub_1B214DCE8(v118);
    v73 = v87;
    sub_1B214DC54(v121);
    v122 = v82;
    v88 = *(v82 + 16);
    v89 = *(v82 + 24);
    v72 = v88 + 1;
    if (v88 >= v89 >> 1)
    {
      sub_1B211156C(v89);
      sub_1B2114574();
      sub_1B2116B10(v91, v92, v93, v94, v95, v96, v97);
      v82 = v122;
    }

    *(v82 + 16) = v72;
    v90 = v82 + 16 * v88;
    *(v90 + 32) = v86;
    *(v90 + 40) = v73;
    if (v116 == v84)
    {
      break;
    }

    v83 = v85 + 168;
    v81 = v84 + 1;
    v72 = v138;
  }

LABEL_38:
  *&v121[0] = v82;
  sub_1B21164C8();
  sub_1B2252250();
  sub_1B21159FC();

  MEMORY[0x1B2741EB0](v73, v72);

  v98 = v114;
  v61 = v110;
  v62 = v108;
LABEL_39:
  sub_1B2154370(v98, v61, v62 & 1);
  sub_1B21149C8();
  *&v121[0] = v99;
  *(&v121[0] + 1) = v100;
  MEMORY[0x1B2741EB0]();

  MEMORY[0x1B2741EB0](*&v121[0], *(&v121[0] + 1));

LABEL_40:
  sub_1B2111CD4();
  sub_1B212641C(v101, v102, v103);

  sub_1B211B048(v121);
  v120[0] = v121[0];
  Statement.arguments.setter(v120, v104);

LABEL_8:
  sub_1B21223F4();
  sub_1B2112FDC();
}

void sub_1B214FB4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  swift_beginAccess();
  v10 = *(v4 + 32);
  v11 = *(v10 + 16);

  v12 = 0;
  for (i = 56; ; i += 32)
  {
    if (v11 == v12)
    {

      sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1B22546B0;
      *(inited + 32) = a3;
      *(inited + 40) = a4;

      v18 = sub_1B213285C(inited);
      sub_1B2116618(v18, v19, v20, v21, v22, v23, v24);

      sub_1B214AB94();
      v25 = *(*(v6 + 32) + 16);
      sub_1B214ACA8();
      v26 = *(v6 + 32);
      *(v26 + 16) = v25 + 1;
      v27 = v26 + 32 * v25;
      *(v27 + 32) = a1;
      *(v27 + 40) = a2;
      *(v27 + 48) = v18;
      *(v27 + 56) = 2;
      *(v6 + 32) = v26;
      swift_endAccess();
      return;
    }

    if (v12 >= *(v10 + 16))
    {
      __break(1u);
      goto LABEL_19;
    }

    v14 = v10 + i;
    if (*(v10 + i) != 2)
    {
      goto LABEL_11;
    }

    v15 = *(v14 - 8);
    if (*(v14 - 24) == a1 && *(v14 - 16) == a2)
    {
      break;
    }

    v5 = sub_1B22531F0();

    if (v5)
    {
      goto LABEL_14;
    }

LABEL_11:
    ++v12;
  }

LABEL_14:

  sub_1B2139304(v55, a3, a4, v28, v29, v30, v31, v32, a3, v49, v50, v51, v52, v53, v54, v55[0], v55[1], v55[2], v15, v55[4], v55[5], v55[6], v55[7], v55[8], v55[9], v55[10], v55[11], v55[12], v55[13], v55[14]);

  v5 = v55[3];
  sub_1B2116618(v33, v34, v35, v36, v37, v38, v39);
  v40 = *(v6 + 32);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v6 + 32) = v40;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_15;
  }

LABEL_19:
  sub_1B21956FC();
  v40 = v47;
  *(v6 + 32) = v47;
LABEL_15:
  if (v12 >= *(v40 + 16))
  {
    __break(1u);
  }

  else
  {
    v42 = (v40 + i);
    v43 = *(v40 + i - 24);
    v44 = *(v40 + i - 16);
    v45 = *(v40 + i - 8);
    *(v42 - 3) = a1;
    *(v42 - 2) = a2;
    *(v42 - 1) = v5;
    v46 = *(v40 + i);
    *v42 = 2;
    *(v6 + 32) = v40;
    swift_endAccess();
    sub_1B21505F8(v43, v44, v45, v46);
  }
}

uint64_t sub_1B214FDA8(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12[3] = MEMORY[0x1E69E63B0];
  v12[4] = &protocol witness table for Double;
  *v12 = a2;
  v11[3] = a5;
  v11[4] = a7;
  v9 = sub_1B212FF14(v11);
  (*(*(a5 - 8) + 16))(v9, a1, a5);
  sub_1B21443FC(v12, v11);
  sub_1B2113208(v11);
  return sub_1B212AC5C(v12, &qword_1EB7A0E30, &unk_1B2259360);
}

void sub_1B214FEBC()
{
  sub_1B2111640();
  v1 = v0;
  v3 = v2;
  type metadata accessor for SchedulingWatchdog();
  v4 = sub_1B21114CC();
  if (v4)
  {
    MEMORY[0x1EEE9AC00](v4);
    sub_1B215023C(v3, v1);

    sub_1B2112FDC();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B214FF78(uint64_t a1, uint64_t a2)
{
  v5[3] = MEMORY[0x1E69E6158];
  v5[4] = &protocol witness table for String;
  v5[0] = a1;
  v5[1] = a2;
  sub_1B211EE68(v2 + 24, v4);

  sub_1B21443FC(v5, v4);

  sub_1B2113208(v4);
  return sub_1B212AC5C(v5, &qword_1EB7A0E30, &unk_1B2259360);
}

uint64_t sub_1B215006C(uint64_t a1, int64_t iCol)
{
  if ((iCol & 0x8000000000000000) == 0 && *(a1 + 72) > iCol)
  {
    v3 = *(a1 + 64);
    if (!v3)
    {
      return sub_1B212614C();
    }

    if (iCol >> 31)
    {
      __break(1u);
    }

    else
    {
      if (sqlite3_column_type(*(a1 + 64), iCol) == 5)
      {
        v12 = iCol;
        LOBYTE(v13) = 1;

        RowDecodingContext.init(row:key:)(v4, &v12, v16);
        sub_1B21A2FC0();
        swift_allocError();
        v6 = v5;
        v12 = v16[0];
        v13 = v16[1];
        v14 = v16[2];
        v15 = v16[3];
        sub_1B21320F0(v3, iCol, &v10);
        v8 = v10;
        v9 = v11;
        sub_1B2183238(MEMORY[0x1E69E6158], &v12, &v8, v6);
        sub_1B2113A44(v8, *(&v8 + 1), v9);
        sub_1B218450C(v16);
        return swift_willThrow();
      }

      if (sqlite3_column_text(v3, iCol))
      {
        return sub_1B2252400();
      }
    }

    __break(1u);
  }

  result = sub_1B2252EC0();
  __break(1u);
  return result;
}

uint64_t sub_1B215023C(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = swift_beginAccess();
  v5 = *(v2 + 16);
  sub_1B2112E08(v4, v6, v7, v8);
  sub_1B21159D0(v2 + 16, v9);

  sub_1B2150300(v10);
  v11 = swift_endAccess();
  a2(v11);
  *(v2 + 16) = v5;
}

uint64_t sub_1B2150300(unint64_t a1)
{
  v3 = sub_1B2116B08();
  v4 = sub_1B2116B08();
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1B21503AC(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1B215044C(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1B21503AC(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1B2252C20();
LABEL_9:
  result = sub_1B2252D10();
  *v2 = result;
  return result;
}

uint64_t sub_1B215044C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1B2252C20();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1B2116B08();
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for Database(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1B211AB74(&qword_1EB7A1110, &qword_1EB7A1108, &qword_1B2254940, MEMORY[0x1E69E6340]);
        for (i = 0; i != v7; ++i)
        {
          sub_1B21619D8(&qword_1EB7A1108, &qword_1B2254940);
          v9 = sub_1B21C2528(v12, i, a3);
          v11 = *v10;

          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B21505F8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 >= 2u)
  {
    if (a4 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_1B2150658()
{
  result = qword_1ED85DE50;
  if (!qword_1ED85DE50)
  {
    sub_1B2161A20(&qword_1EB7A10C0, &unk_1B2257E70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED85DE50);
  }

  return result;
}

uint64_t sub_1B21506CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(a1 + 16);
  v24 = MEMORY[0x1E69E7CC0];
  sub_1B2114114(0, v8, 0, a4, a5, a6, a7);
  if (v8)
  {
    v9 = (a1 + 48);
    do
    {
      v10 = *v9;
      v20 = *(v9 - 2);
      v21 = *(v9 - 1);
      sub_1B2113A20(v20, v21, *v9);
      swift_getAtKeyPath();
      sub_1B2113A44(v20, v21, v10);
      v15 = v22;
      v17 = *(v24 + 16);
      v16 = *(v24 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1B2114114(v16 > 1, v17 + 1, 1, v11, v12, v13, v14);
        v15 = v22;
      }

      v9 += 24;
      *(v24 + 16) = v17 + 1;
      v18 = v24 + 24 * v17;
      *(v18 + 32) = v15;
      *(v18 + 48) = v23;
      --v8;
    }

    while (v8);
  }

  return v24;
}

uint64_t sub_1B2150804(uint64_t a1, float a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = MEMORY[0x1E69E6448];
  v14 = &protocol witness table for Float;
  *v12 = a2;
  v11[3] = a5;
  v11[4] = a7;
  v9 = sub_1B212FF14(v11);
  (*(*(a5 - 8) + 16))(v9, a1, a5);
  sub_1B21443FC(v12, v11);
  sub_1B2113208(v11);
  return sub_1B212AC5C(v12, &qword_1EB7A0E30, &unk_1B2259360);
}

double sub_1B21508C8@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + a2 - 8);
  v5 = *(v4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5(&v9, AssociatedTypeWitness, v4);
  v7 = v10;
  result = *&v9;
  *a3 = v9;
  *(a3 + 16) = v7;
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for DatabaseBackupProgress(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

float sub_1B21509A0(uint64_t a1)
{
  v3 = sub_1B212EBC0(a1);
  if (!v1)
  {
    sub_1B2150A38(v3);
    v2 = v5;
  }

  return v2;
}

BOOL sub_1B2150B7C(_BOOL8 iCol, int a2, sqlite3_stmt *a3)
{
  if (iCol < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (iCol <= 0x7FFFFFFF)
  {
    return sqlite3_column_type(a3, iCol) == 5;
  }

  __break(1u);
  return iCol;
}

uint64_t Sequence<>.contains(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v13 = a2;
  v14 = a3;
  v15 = a4;
  KeyPath = swift_getKeyPath();
  v8 = sub_1B2150D28(sub_1B2151328, &v12, v13, &type metadata for SQLExpression, MEMORY[0x1E69E73E0], v14, MEMORY[0x1E69E7410], v7);

  __src[0] = v8;
  sub_1B21513E8(__src);
  memcpy(__dst, __src, sizeof(__dst));
  sub_1B211592C(a1, a1[3]);
  v9 = sub_1B2116AC4();
  v10(v9);
  sub_1B2151410(v20, a5);
  memcpy(v23, v20, 0xA3uLL);
  sub_1B21356F8(v23);
  memcpy(v24, __dst, 0xA2uLL);
  return sub_1B2151630(v24);
}

__n128 sub_1B2150D14(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1B2150D28(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v61 = a8;
  v9 = v8;
  v75 = a2;
  v76 = a4;
  v74 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B21115E0();
  v69 = v14;
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v15);
  v62 = a5;
  v63 = &v57 - v16;
  v60 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v17);
  sub_1B2112FA8();
  v72 = (v18 - v19);
  MEMORY[0x1EEE9AC00](v20);
  v70 = &v57 - v21;
  sub_1B2252B00();
  sub_1B21115E0();
  v58 = v23;
  v59 = v22;
  MEMORY[0x1EEE9AC00](v22);
  sub_1B2112FA8();
  v26 = v24 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v57 - v28;
  MEMORY[0x1EEE9AC00](v30);
  sub_1B2112FA8();
  v71 = v31 - v32;
  MEMORY[0x1EEE9AC00](v33);
  sub_1B21115E0();
  v68 = v34;
  MEMORY[0x1EEE9AC00](v35);
  sub_1B2111844();
  v67 = v37 - v36;
  v66 = a6;
  sub_1B211E52C();
  v77 = swift_getAssociatedTypeWitness();
  sub_1B21115E0();
  v64 = v38;
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v57 - v40;
  v42 = sub_1B22524C0();
  v78 = sub_1B2252DD0();
  v73 = sub_1B2252DE0();
  sub_1B2252D80();
  (*(v68 + 16))(v67, v65, a3);
  v76 = v41;
  v68 = a3;
  result = sub_1B22524B0();
  if (v42 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v42)
  {
    v44 = (v69 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_1B2252B50();
      result = sub_1B2122A98(v29, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v74(v29, v70);
      if (v9)
      {
        v55 = sub_1B212D094();
        v56(v55);

        (*(v60 + 32))(v61, v70, v62);
        return (*v44)(v29, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v44)(v29, AssociatedTypeWitness);
      sub_1B2252DC0();
      if (!--v42)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v45 = (v69 + 32);
  v46 = v63;
  while (1)
  {
    sub_1B2252B50();
    if (sub_1B2122A98(v26, 1, AssociatedTypeWitness) == 1)
    {
      v49 = sub_1B212D094();
      v50(v49);
      (*(v58 + 8))(v26, v59);
      return v78;
    }

    (*v45)(v46, v26, AssociatedTypeWitness);
    v74(v46, v72);
    if (v9)
    {
      break;
    }

    v9 = 0;
    v47 = sub_1B21140C4();
    v48(v47);
    sub_1B2252DC0();
  }

  v51 = sub_1B21140C4();
  v52(v51);
  v53 = sub_1B212D094();
  v54(v53);

  return (*(v60 + 32))(v61, v72, v62);
}

void *sub_1B2151354@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v4 = *(a1 + a2 - 8);
  v5 = *(v4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5(__src, AssociatedTypeWitness, v4);
  return memcpy(a3, __src, 0xA3uLL);
}

uint64_t sub_1B21513E8(uint64_t result)
{
  v1 = *(result + 104) & 1;
  v2 = *(result + 160) & 0x81FF;
  *(result + 64) &= 1uLL;
  *(result + 104) = v1;
  *(result + 160) = v2;
  return result;
}

void *sub_1B2151410@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, 0xA3uLL);
  sub_1B2114F78();
  memcpy(v3, v4, v5);
  sub_1B2114F78();
  memcpy(v6, v7, v8);
  v9 = sub_1B214CB20(v19);
  v10 = sub_1B214CB10(v19);
  if (!v9)
  {
    v11 = *v10;
    v12 = *(*v10 + 16);
    if (!v12)
    {
      memset(v16, 0, 17);
      sub_1B2127D7C(v16);
      return memcpy(a2, v16, 0xA3uLL);
    }

    if (v12 == 1)
    {
      memcpy(v16, __dst, 0xA3uLL);
      memcpy(v15, (v11 + 32), 0xA3uLL);
      return sub_1B21353B0(0, v16, a2);
    }
  }

  v14 = swift_allocObject();
  memcpy(v14 + 16, __dst, 0xA3uLL);
  memcpy(v14 + 184, __srca, 0xA2uLL);
  v14[346] = 0;
  v16[0] = v14;
  sub_1B214C468(v16);
  memcpy(a2, v16, 0xA3uLL);
  sub_1B2127DC0(__dst, v15);
  return sub_1B214CB2C(__srca, v15);
}

uint64_t sub_1B2151560()
{
  sub_1B213B9FC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176) | (*(v0 + 178) << 16));
  sub_1B214DF8C(*(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232), *(v0 + 240), *(v0 + 248), *(v0 + 256), *(v0 + 264), *(v0 + 272), *(v0 + 280), *(v0 + 288), *(v0 + 296), *(v0 + 304), *(v0 + 312), *(v0 + 320), *(v0 + 328), *(v0 + 336), *(v0 + 344));

  return swift_deallocObject();
}

unint64_t sub_1B215175C()
{
  result = qword_1ED85E790[0];
  if (!qword_1ED85E790[0])
  {
    sub_1B2161A20(&qword_1EB7A0DA0, &qword_1B2254340);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED85E790);
  }

  return result;
}

uint64_t Table.filter(_:)()
{
  sub_1B211D530();
  sub_1B211566C();
  Table.all()(v0);
  v1 = sub_1B2115BE4();
  type metadata accessor for QueryInterfaceRequest(v1, v2, v3, v4);
  v5 = sub_1B21115BC();
  v8 = FilteredRequest.filter(_:)(v5, v6, v7);
  sub_1B2116508(v8, v9, v10, v11, v12, v13, v14, v15, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67);
  sub_1B211283C();
  v24 = sub_1B2118220(v16, v17, v18, v19, v20, v21, v22, v23, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v69);
  return v25(v24);
}

double sub_1B21518F0@<D0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];

  v5 = MEMORY[0x1E69E7CC0];
  sub_1B2116B4C();
  v7 = v6;
  v9 = v8;
  sub_1B21359AC();
  *a1 = v4;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = sub_1B2151AA4;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = v5;
  *(a1 + 64) = 0;
  *(a1 + 72) = v7;
  *(a1 + 80) = v9;
  *(a1 + 88) = v10;
  *(a1 + 96) = v11;
  *(a1 + 104) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0;
  *(a1 + 161) = 1;
  return result;
}

uint64_t FetchRequest<>.fetchAll(_:)()
{
  sub_1B213CB2C();
  sub_1B2144154();
  return static Row.fetchAll<A>(_:_:)();
}

{
  sub_1B21150E0();
  sub_1B212CDC0();
  swift_getAssociatedTypeWitness();
  v0 = sub_1B21129A8();
  return static DatabaseValueConvertible<>.fetchAll<A>(_:_:)(v0, v1, v2, v3, v4, v5, v6);
}

{
  sub_1B211543C();
  sub_1B21130B8(v0, v1, v2);
  v3 = sub_1B2115A3C();
  return static DatabaseValueConvertible.fetchAll<A>(_:_:)(v3, v4, v5, v6, v7, v8);
}

uint64_t static Row.fetchAll<A>(_:_:)()
{
  sub_1B2135390();
  v2 = v1();
  if (!v0)
  {
    v10 = sub_1B2154354(v2, v3, v4, v5, v6, v7, v8, v9, v17, v18, v19[0]);
    static Row.fetchAll(_:arguments:adapter:)(v10, v11, v12);
    if (v20)
    {

      v14 = sub_1B2122C80();
      v20(v14);
      v15 = sub_1B2122C8C();
      sub_1B2112F4C(v15, v16);
    }

    sub_1B2142D18(v19);
  }

  return sub_1B21223F4();
}

void *sub_1B2151AA4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B2151AD4();
  *a1 = result;
  return result;
}

void (*sub_1B2151B44())()
{
  sub_1B211D530();
  v2 = sub_1B2170FB8(0x68uLL);
  *v1 = v2;
  Row.subscript.getter(v2 + 16, v0);
  *(v2 + 5) = v3;
  *v2 = v3;
  *(v2 + 1) = v4;
  v5 = *(v2 + 2);
  v6 = *(v2 + 3);
  *(v2 + 10) = v4;
  *(v2 + 11) = v5;
  *(v2 + 12) = v6;
  v7 = *(v2 + 32);
  *(v2 + 33) = v7;
  *(v2 + 6) = v4;
  *(v2 + 7) = v5;
  *(v2 + 8) = v6;
  *(v2 + 72) = v7;

  sub_1B2113A20(v5, v6, v7);
  return sub_1B2151D58;
}

void Row.subscript.getter(uint64_t a1, uint64_t a2)
{
  sub_1B224B638();
  if ((*v3 & 0x8000000000000000) != 0 || *v3 >= v2[9])
  {
    sub_1B2111608();
    sub_1B2112EEC();
    sub_1B2252EC0();
    __break(1u);
  }

  else
  {
    sub_1B21139A0(v2 + 2, v2[5]);
    sub_1B224B38C();
    sub_1B2127108();
    v4();
    sub_1B21139A0(v2 + 2, v2[5]);
    sub_1B224B2A8();
    v5();
    sub_1B224B5E0();
  }
}

{
  sub_1B224B638();
  sub_1B2151D4C();
  v4(v2, v3);
  Row.decode<A>(_:forKey:)();

  sub_1B224B5E0();
}

unint64_t sub_1B2151D00(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a3 + 16) > result)
  {
    v3 = *(a3 + 16 * result + 32);

    return v3;
  }

  __break(1u);
  return result;
}

void sub_1B2151D58()
{
  sub_1B2123510();
  v2 = *(*v0 + 88);
  v1 = *(*v0 + 96);
  v3 = *(*v0 + 56);
  v4 = *(*v0 + 64);
  v5 = *(*v0 + 72);
  v6 = *(*v0 + 33);

  sub_1B2113A44(v3, v4, v5);

  sub_1B2113A44(v2, v1, v6);
  sub_1B2115ED4();

  free(v7);
}

void sub_1B2151DE0(void *a1@<X8>, uint64_t a2@<X0>)
{
  if (a2 < 0 || *(v2 + 72) <= a2)
  {
    __break(1u);
  }

  else
  {
    sub_1B211815C(a1);
  }
}

uint64_t Configuration.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 23) = 0;
  *(a1 + 32) = MEMORY[0x1E69E7CC0];
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 2;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = -1;
  *(a1 + 96) = 5;
  v2 = type metadata accessor for Configuration(0);
  result = sub_1B2252110();
  *(a1 + v2[17]) = 0;
  *(a1 + v2[18]) = 0;
  *(a1 + v2[19]) = 1;
  *(a1 + v2[20]) = 0;
  v4 = (a1 + v2[21]);
  *v4 = 0;
  v4[1] = 0;
  v5 = (a1 + v2[22]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a1 + v2[23]);
  *v6 = 0;
  v6[1] = 0;
  return result;
}

uint64_t Configuration.prepareDatabase(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  sub_1B2151EF0();
  v7 = *(*(v3 + 32) + 16);
  result = sub_1B2151FD8(v7);
  v9 = *(v3 + 32);
  *(v9 + 16) = v7 + 1;
  v10 = v9 + 16 * v7;
  *(v10 + 32) = sub_1B2124ADC;
  *(v10 + 40) = v6;
  *(v3 + 32) = v9;
  return result;
}

uint64_t sub_1B2151FA0()
{

  return swift_deallocObject();
}

uint64_t sub_1B2151FF0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

uint64_t sub_1B2152008(uint64_t result, unsigned int a2)
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

uint64_t Configuration.busyMode.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_1B2151FF0(*(v1 + 48), *(v1 + 56), *(v1 + 64));
  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  return result;
}

uint64_t *DatabaseQueue.init(path:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Configuration(0);
  v7 = sub_1B2111894(v6);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B2111844();
  sub_1B212392C(a3, v9 - v8);
  type metadata accessor for SerializedDatabase();
  swift_allocObject();
  sub_1B21166D4();
  sub_1B2123A30();
  if (v4)
  {
    sub_1B2133D70(a3);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v3 + 16) = v10;
    sub_1B21521EC();
    sub_1B2133D70(a3);
  }

  return v3;
}

uint64_t Database.sqliteConnection.getter()
{
  sub_1B2117330();
  swift_beginAccess();
  return *(v0 + 16);
}

void sub_1B21521EC()
{
  v1 = type metadata accessor for Configuration(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  DatabaseQueue.configuration.getter(v3);
  v4 = v3[25];
  sub_1B2133D70(v3);
  if (v4 == 1)
  {
    v5 = [objc_opt_self() defaultCenter];
    if (qword_1EB7A0D88 != -1)
    {
      swift_once();
    }

    [v5 addObserver:v0 selector:sel_suspend_ name:qword_1EB7A3338 object:0];
    if (qword_1EB7A0D90 != -1)
    {
      swift_once();
    }

    [v5 addObserver:v0 selector:sel_resume_ name:qword_1EB7A3340 object:0];
  }
}

uint64_t DatabaseQueue.__deallocating_deinit()
{
  DatabaseQueue.deinit();
  v0 = sub_1B2114EE8();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t DatabaseQueue.deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  return v0;
}

void Configuration.targetQueue.setter()
{
  v2 = *(sub_1B2116170() + 68);

  *(v1 + v2) = v0;
}

void DatabaseQueue.read<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = a1;
  v3[4] = a2;
  sub_1B2111304(sub_1B2152538, v3, a3);
}

uint64_t sub_1B21524F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7[5] = a1;
  v7[2] = a4;
  v7[3] = a2;
  v7[4] = a3;
  return sub_1B212B00C(1, a5, v7, a4, a6);
}

void sub_1B215256C(void (*a1)(uint64_t *__return_ptr))
{
  sub_1B2152610();
  if (!v1)
  {
    a1(&v3);
    sub_1B215476C();
  }
}

void sub_1B2152610()
{
  if ((*(v0 + OBJC_IVAR____TtC12GRDBInternal8Database_configuration + 1) & 1) == 0)
  {
    v2 = OBJC_IVAR____TtC12GRDBInternal8Database__readOnlyDepth;
    v3 = *(v0 + OBJC_IVAR____TtC12GRDBInternal8Database__readOnlyDepth);
    if (!v3)
    {
      sub_1B2122088();
      sub_1B2111BFC();
      v8 = sub_1B212DAFC(v6, v7);
      if (v1)
      {
        return;
      }

      sub_1B211F1E0(v8, v9, v10, v11, v12, v13, v14, v15);

      v3 = *(v0 + v2);
    }

    v4 = __OFADD__(v3, 1);
    v5 = v3 + 1;
    if (v4)
    {
      __break(1u);
    }

    else
    {
      *(v0 + v2) = v5;
    }
  }
}

void sub_1B21526B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[2] = a5;
  v5[3] = a2;
  v5[4] = a3;
  Database.inSavepoint(_:)(sub_1B2152728, v5);
}

uint64_t StatementArguments.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v14 = a2;
  v15 = a3;
  v16 = a4;
  KeyPath = swift_getKeyPath();
  v9 = sub_1B2150D28(sub_1B2151328, &v13, v14, &type metadata for DatabaseValue, MEMORY[0x1E69E73E0], v15, MEMORY[0x1E69E7410], v8);

  sub_1B2111808();
  result = (*(v10 + 8))(a1, a2);
  v12 = MEMORY[0x1E69E7CC8];
  *a5 = v9;
  a5[1] = v12;
  return result;
}

__n128 sub_1B215288C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1B21528A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_1B21528F4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 17))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 4)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B2152954(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(char *))
{
  v10 = *a3;
  v11 = a3[1];
  v24[3] = &type metadata for SQL;
  v24[4] = a6;
  sub_1B21619D8(&qword_1EB7A0F70, &qword_1B2257590);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1B22546B0;
  __src[0] = a1;
  __src[1] = a2;
  __src[2] = v10;
  __src[3] = v11;
  sub_1B2114CC4(__src);
  memcpy((v12 + 32), __src, 0xB8uLL);

  v21 = sub_1B2144118(v13, v14, v15, v16, v17, v18, v19, v20, v23, v12);
  a7(v21);
  return sub_1B2113208(v24);
}

void TableRequest<>.filter<A>(key:)()
{
  sub_1B2111F14();
  v28[2] = v0;
  v28[3] = v1;
  v28[1] = v2;
  v4 = v3;
  v6 = v5;
  v29 = v7;
  v8 = sub_1B2252B00();
  sub_1B21115E0();
  v10 = v9;
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v28 - v12;
  sub_1B21115E0();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  sub_1B2111844();
  v19 = v18 - v17;
  sub_1B211E52C();
  v20();
  if (sub_1B2122A98(v13, 1, v6) == 1)
  {
    (*(v10 + 8))(v13, v8);
    v21 = sub_1B2117694();
    v22(v21, 0, v29, v4);
  }

  else
  {
    v23 = sub_1B21140C4();
    v24(v23);
    sub_1B2152D64(v6, v6);
    swift_allocObject();
    v25 = sub_1B22525B0();
    (*(v15 + 16))(v26, v19, v6);
    sub_1B2152E00(v25, v6);
    v30 = v27;
    sub_1B22526A0();
    sub_1B2111B28();
    swift_getWitnessTable();
    TableRequest<>.filter<A>(keys:)();

    (*(v15 + 8))(v19, v6);
  }

  sub_1B2111588();
}

uint64_t sub_1B2152D64(uint64_t a1, uint64_t a2)
{
  if (sub_1B2152DD0(a2, a2))
  {

    return sub_1B21619D8(qword_1EB7A13D0, qword_1B2257E80);
  }

  else
  {

    return sub_1B2252FE0();
  }
}

uint64_t sub_1B2152DD0(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void TableRequest<>.filter<A>(keys:)()
{
  sub_1B2111F14();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v44 = v16;
  v45 = v17;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = sub_1B212FED0(AssociatedTypeWitness, AssociatedTypeWitness, &protocol descriptor for EncodableRecord);
  if (v19)
  {
    v21 = v19;
    v22 = v20;
    v43 = v1;
    v23 = swift_getAssociatedTypeWitness();
    if (v23 == sub_1B2251E90())
    {
      v25 = (*(v22 + 32))(v46, v21, v22);
      v26 = v46[0];
      v42 = v46[1];
      v41 = v47;
      MEMORY[0x1EEE9AC00](v25);
      v32[0] = v15;
      v32[1] = v13;
      v33 = v11;
      v34 = v9;
      v35 = v7;
      v36 = v5;
      v37 = v3;
      v38 = v26;
      v39 = v27;
      v40 = v28;
      v46[0] = sub_1B22524D0();
      sub_1B21619D8(&qword_1EB7A10C0, &unk_1B2257E70);
      sub_1B21183E4(&qword_1ED85DE50);
      sub_1B2114434();
      sub_1B2153154();
      sub_1B2187B6C(v26, v42, v41);
    }

    else
    {
      if (v23 != sub_1B2251EE0())
      {
        goto LABEL_4;
      }

      v29 = (*(v22 + 40))(v46, v21, v22);
      MEMORY[0x1EEE9AC00](v29);
      v33 = v15;
      v34 = v13;
      v35 = v11;
      v36 = v9;
      v37 = v7;
      v38 = v5;
      v39 = v3;
      v40 = v30;
      v46[0] = sub_1B2150D28(sub_1B21EDA3C, v32, v13, &type metadata for DatabaseValue, MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v31);
      sub_1B21619D8(&qword_1EB7A10C0, &unk_1B2257E70);
      sub_1B21183E4(&qword_1ED85DE50);
      sub_1B2114434();
      sub_1B2153154();
    }

    sub_1B2111588();
    return;
  }

LABEL_4:
  sub_1B211E52C();
  sub_1B2111588();

  sub_1B2153154();
}

void sub_1B2153154()
{
  sub_1B2111F14();
  v23 = v0;
  v24 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  sub_1B21115E0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1B2111844();
  (*(v15 + 16))(v14 - v13);
  sub_1B211E52C();
  swift_getAssociatedTypeWitness();
  v16 = sub_1B22526C0();
  sub_1B22526A0();
  swift_getWitnessTable();
  if (sub_1B2252900())
  {

    v17 = sub_1B2117694();
    v18(v17, 0, v11, v7);
  }

  else
  {
    v19 = (*(v5 + 8))(v11, v5);
    v21 = v20;
    v22 = swift_allocObject();
    v22[2] = v11;
    v22[3] = v9;
    v22[4] = v7;
    v22[5] = v5;
    v22[6] = v23;
    v22[7] = v3;
    v22[8] = v24;
    v22[9] = v19;
    v22[10] = v21;
    v22[11] = v16;
    (*(v7 + 8))(sub_1B215442C, v22, v11, v7);
  }

  sub_1B2111588();
}

uint64_t sub_1B215336C()
{

  return swift_deallocObject();
}

uint64_t QueryInterfaceRequest.databaseTableName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FetchRequest<>.fetchOne(_:)()
{
  sub_1B213CB2C();
  sub_1B2144154();
  return static Row.fetchOne<A>(_:_:)();
}

{
  sub_1B21150E0();
  sub_1B212CDC0();
  swift_getAssociatedTypeWitness();
  sub_1B21129A8();
  return static DatabaseValueConvertible<>.fetchOne<A>(_:_:)();
}

{
  sub_1B2114774();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  return static DatabaseValueConvertible<>.fetchOne<A>(_:_:)();
}

{
  sub_1B211543C();
  sub_1B21130B8(v0, v1, v2);
  sub_1B2115A3C();
  return static DatabaseValueConvertible.fetchOne<A>(_:_:)();
}

{
  sub_1B21150E0();
  swift_getAssociatedTypeWitness();
  sub_1B2113BDC();
  swift_getAssociatedTypeWitness();
  return static DatabaseValueConvertible.fetchOne<A>(_:_:)();
}

uint64_t static Row.fetchOne<A>(_:_:)()
{
  sub_1B2135390();
  v2 = v1();
  if (!v0)
  {
    v10 = sub_1B2154354(v2, v3, v4, v5, v6, v7, v8, v9, v23, v24, v25[0]);
    v13 = static Row.fetchOne(_:arguments:adapter:)(v10, v11, v12);
    v15 = v13;
    if (v13)
    {
      v16 = v26;
      if (v26)
      {
        sub_1B21619D8(qword_1EB7A13D0, qword_1B2257E80);
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_1B2257570;
        *(v17 + 32) = v15;
        v18 = sub_1B2122C8C();
        sub_1B2112328(v18, v19);

        v20 = sub_1B211F390();
        v16(v20);

        v21 = sub_1B2122C8C();
        sub_1B2112F4C(v21, v22);
      }
    }

    sub_1B2142D18(v25);
  }

  return sub_1B21223F4();
}

uint64_t sub_1B215354C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1B2153588()
{
  result = qword_1ED85D810;
  if (!qword_1ED85D810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED85D810);
  }

  return result;
}

unint64_t sub_1B21535E0()
{
  result = qword_1ED85DA18;
  if (!qword_1ED85DA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED85DA18);
  }

  return result;
}

uint64_t sub_1B2153644(uint64_t a1)
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

uint64_t sub_1B2153750()
{
  sub_1B2153588();
  v0 = sub_1B2252190();
  sub_1B21619D8(&qword_1EB7A2338, &unk_1B225D9A0);
  swift_allocObject();
  result = sub_1B21537C8(v0);
  qword_1ED85DA28 = result;
  return result;
}

uint64_t sub_1B21537D0(uint64_t a1)
{
  v13 = sub_1B2252A10();
  sub_1B211280C();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  sub_1B2111844();
  v8 = v7 - v6;
  v9 = sub_1B2252120();
  v10 = sub_1B2111894(v9);
  MEMORY[0x1EEE9AC00](v10);
  sub_1B2111844();
  v11 = sub_1B22529C0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1B2111844();
  *(v1 + 16) = a1;
  sub_1B2111770();
  sub_1B21619D8(&qword_1EB7A3158, &qword_1B2269C10);
  *(swift_allocObject() + 16) = xmmword_1B22546B0;
  sub_1B22529B0();
  sub_1B21202AC(&qword_1ED85E780, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  sub_1B21619D8(&qword_1EB7A21A0, &unk_1B225E830);
  sub_1B21E8598(&qword_1ED85E788, &qword_1EB7A21A0, &unk_1B225E830);
  sub_1B2252BC0();
  sub_1B2252100();
  (*(v4 + 104))(v8, *MEMORY[0x1E69E8090], v13);
  *(v1 + 24) = sub_1B2252A70();
  return v1;
}

uint64_t sub_1B2153B18()
{
  sub_1B211AD88();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v25 = v9;
  v11 = v10;
  sub_1B2145D20();
  sub_1B211744C();
  if (v14)
  {
    __break(1u);
LABEL_14:
    result = sub_1B2253390();
    __break(1u);
    return result;
  }

  v15 = v12;
  v16 = v13;
  v17 = sub_1B21619D8(&qword_1EB7A1D08, &qword_1B225A770);
  if (sub_1B2113040(v17))
  {
    sub_1B2145D20();
    sub_1B2118020();
    if (!v19)
    {
      goto LABEL_14;
    }

    v15 = v18;
  }

  v20 = *v0;
  if (v16)
  {
    v21 = (*(v20 + 56) + 16 * v15);
    *v21 = v11;
    v21[1] = v25;
    sub_1B21119F0();
  }

  else
  {
    sub_1B2153C5C(v15, v8, v6, v4, v2, v11, v25, v20);

    sub_1B21119F0();
  }
}

uint64_t sub_1B2153C5C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = sub_1B21157C0(a1, a8 + 8 * (a1 >> 6));
  v10 = v9[6] + 32 * result;
  *v10 = v11;
  *(v10 + 8) = v12;
  *(v10 + 16) = v13;
  *(v10 + 24) = v14;
  v15 = (v9[7] + 16 * result);
  *v15 = v16;
  v15[1] = v17;
  v18 = v9[2];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    v9[2] = v20;
  }

  return result;
}

uint64_t Configuration.qos.setter()
{
  v2 = *(sub_1B2116170() + 64);
  sub_1B2252120();
  sub_1B21118A0();
  v4 = *(v3 + 40);

  return v4(v1 + v2, v0);
}

uint64_t sub_1B2153D1C(uint64_t a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *(v1 + 16) = a1;
  *(v1 + 24) = v3;
  return v1;
}

void *SQLSpecificExpressible.sqlSelection.getter@<X0>(void *a1@<X8>)
{
  sub_1B2124228();
  v2();
  sub_1B214D464(__src);
  return memcpy(a1, __src, 0xB8uLL);
}

uint64_t sub_1B2153DC4()
{
  sub_1B21144C0();
  v1();
  memcpy(v0, __src, 0xA3uLL);
}

uint64_t sub_1B2153E14(uint64_t a1)
{
  v2 = *(a1 + 160);
  result = a1 + 160;
  v3 = v2 | (*(result + 2) << 16);
  v4 = *(result - 56) & 1;
  *(result - 96) &= 1uLL;
  *(result - 56) = v4;
  *result = v3 & 0x81FF;
  *(result + 2) = (v3 & 0x1FFFF | 0x280000u) >> 16;
  return result;
}

void *sub_1B2153E58@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v7 = result;
    v45 = MEMORY[0x1E69E7CC0];
    sub_1B21542F0();
    v6 = v45;
    v8 = (v4 + 32);
    do
    {
      memcpy(__dst, v8, sizeof(__dst));
      memmove(v44, v8, 0xB8uLL);
      switch(sub_1B211AF10(v44))
      {
        case 1u:
          sub_1B2119818(v44);
          sub_1B2116850(v41);
          v23 = sub_1B2119818(v41);
          sub_1B214CFE0(v23, v42);
          v13 = __dst;
          goto LABEL_17;
        case 2u:
          v11 = sub_1B2119818(v44);
          memcpy(v42, v11, 0xA3uLL);
          sub_1B2116850(v40);
          v12 = sub_1B2119818(v40);
          sub_1B2127DC0(v12, v41);
          sub_1B213BBD8(v7, __src);
          sub_1B211AC90(__dst);
          memcpy(v41, __src, 0xA3uLL);
          sub_1B2127AE0(v41);
          goto LABEL_7;
        case 3u:
          sub_1B2119818(v44);
          sub_1B21118C4();
          memcpy(v14, v15, v16);
          switch(sub_1B213A580(v41))
          {
            case 1u:
              v33 = sub_1B213AA9C(v41);
              memcpy(v40, v33, 0xA3uLL);
              sub_1B2116850(__src);
              v34 = sub_1B2119818(__src);
              sub_1B213A774(v34, v42);
              v35 = sub_1B21159EC();
              sub_1B213BBD8(v35, v36);
              sub_1B211AC90(__dst);
              memcpy(v42, v38, 0xA3uLL);
              sub_1B214D464(v42);
              goto LABEL_15;
            case 2u:
              v24 = sub_1B213AA9C(v41);
              v25 = v24[21];
              v26 = v24[22];
              memcpy(v40, v24, 0xA3uLL);
              sub_1B2116850(__src);
              v27 = sub_1B2119818(__src);
              sub_1B211AF1C(__dst, v42);
              sub_1B213A774(v27, v42);
              v28 = sub_1B21159EC();
              sub_1B213BBD8(v28, v29);
              sub_1B21356F8(v24);
              sub_1B211AC90(__dst);
              memcpy(v42, v38, 0xA8uLL);
              v42[21] = v25;
              v42[22] = v26;
              sub_1B2155A5C(v42);
              goto LABEL_15;
            case 3u:
              v40[0] = *sub_1B213AA9C(v41);
              sub_1B2116850(__src);
              v30 = sub_1B2119818(__src);
              sub_1B213A774(v30, v42);
              v31 = sub_1B21159EC();
              sub_1B2153E58(v31, v32);
              sub_1B211AC90(__dst);
              v42[0] = v38[0];
              sub_1B216ED24(v42);
              goto LABEL_15;
            case 4u:
              v42[0] = v7;
              sub_1B213A59C(v42);

              sub_1B211AC90(__dst);
LABEL_15:
              memcpy(v40, v42, sizeof(v40));
              break;
            default:
              sub_1B213AA9C(v41);
              sub_1B21118C4();
              memcpy(v17, v18, v19);
              sub_1B213AA9C(v42);
              sub_1B21118C4();
              memcpy(v20, v21, v22);

              break;
          }

          memcpy(__src, v40, sizeof(__src));
          sub_1B216ED58(__src);
          v13 = __src;
          goto LABEL_17;
        case 4u:
          v9 = sub_1B2119818(v44);
          memcpy(v42, v9, 0xA3uLL);
          sub_1B2116850(v40);
          v10 = sub_1B2119818(v40);
          sub_1B214D958(v10, v41);
          sub_1B214D9C8(v7, __src);
          sub_1B211AC90(__dst);
          memcpy(v41, __src, 0xA3uLL);
          sub_1B216ED8C(v41);
LABEL_7:
          v13 = v41;
LABEL_17:
          memcpy(v42, v13, sizeof(v42));
          break;
        default:
          sub_1B2119818(v44);
          sub_1B2116850(v41);
          sub_1B2119818(v41);
          sub_1B2116850(v42);

          break;
      }

      v45 = v6;
      v37 = *(v6 + 16);
      if (v37 >= *(v6 + 24) >> 1)
      {
        sub_1B21542F0();
        v6 = v45;
      }

      *(v6 + 16) = v37 + 1;
      result = memcpy((v6 + 184 * v37 + 32), v42, 0xB8uLL);
      v8 += 184;
      --v5;
    }

    while (v5);
  }

  *a2 = v6;
  return result;
}

uint64_t sub_1B215433C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{

  return sub_1B2122B00(&STACK[0x2B8], &a31, a3, a4);
}

uint64_t sub_1B2154370(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return sub_1B2252FD0();
  }

  sub_1B2115FBC();
  v5 = sub_1B2252FD0();
  MEMORY[0x1B2741EB0](0x2054455346464F20, 0xE800000000000000);
  sub_1B2115FBC();
  v4 = sub_1B2252FD0();
  MEMORY[0x1B2741EB0](v4);

  return v5;
}

uint64_t sub_1B215445C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a5@<X8>, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = Database.primaryKey(_:)();
  if (!v8)
  {
    v15 = v27;
    v14 = v28;
    v16 = v29;
    v26 = v28;
    if (v29)
    {
      if (v29 == 1)
      {
        v17 = v27;
      }

      else
      {
        v17 = &unk_1F2969A08;
      }
    }

    else
    {
      sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
      v18 = swift_allocObject();
      v14 = v28;
      v17 = v18;
      *(v18 + 16) = xmmword_1B22546B0;
      *(v18 + 32) = v15;
      *(v18 + 40) = v26;
    }

    v19 = v17[2];
    sub_1B21414CC(v15, v14, v16);

    if (v19 == 1)
    {
      v32 = a3;
      if (v16)
      {
        if (v16 == 1)
        {
          v20 = v15;
        }

        else
        {
          v20 = &unk_1F2969A38;
        }
      }

      else
      {
        sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
        v20 = swift_allocObject();
        v20[1] = xmmword_1B22546B0;
        *(v20 + 4) = v15;
        *(v20 + 5) = v26;
      }

      if (*(v20 + 2))
      {
        v22 = *(v20 + 4);
        v21 = *(v20 + 5);

        v30 = &type metadata for Column;
        v31 = &protocol witness table for Column;
        v27 = v22;
        v28 = v21;
        a5[3] = &type metadata for SQLExpression;
        a5[4] = &protocol witness table for SQLExpression;
        v23 = swift_allocObject();
        *a5 = v23;
        swift_getAssociatedTypeWitness();
        v24 = sub_1B22526A0();
        WitnessTable = swift_getWitnessTable();
        Sequence<>.contains(_:)(&v27, v24, WitnessTable, *(a8 + 8), (v23 + 16));
        return sub_1B2113208(&v27);
      }

      __break(1u);
    }

    sub_1B2252CD0();
    MEMORY[0x1B2741EB0](0xD000000000000044, 0x80000001B226F470);
    MEMORY[0x1B2741EB0](a1, a2);
    result = sub_1B2252EC0();
    __break(1u);
  }

  return result;
}

uint64_t sub_1B2154704()
{
  v1 = sub_1B2117D64();
  sub_1B213B9FC(v2, v3, v4, v5, v6, v7, v8, v9, v1.n128_i64[0], v1.n128_i64[1], v10, v11, v12, v13, v14, v15, *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176) | (*(v0 + 178) << 16));

  return swift_deallocObject();
}

void sub_1B215476C()
{
  if ((*(v0 + OBJC_IVAR____TtC12GRDBInternal8Database_configuration + 1) & 1) == 0)
  {
    v2 = *(v0 + OBJC_IVAR____TtC12GRDBInternal8Database__readOnlyDepth);
    v3 = __OFSUB__(v2, 1);
    v4 = v2 - 1;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      *(v0 + OBJC_IVAR____TtC12GRDBInternal8Database__readOnlyDepth) = v4;
      if (!v4)
      {
        v5 = sub_1B2122088();
        v7 = sub_1B212DAFC(v5, v6);
        if (!v1)
        {
          sub_1B211F1E0(v7, v8, v9, v10, v11, v12, v13, v14);
        }
      }
    }
  }
}

void static DatabaseValueConvertible.fetchOne(_:arguments:adapter:)()
{
  sub_1B2111640();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v29 = v11;
  v12 = sub_1B2252B00();
  v13 = sub_1B2252B00();
  sub_1B211280C();
  v28 = v14;
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v15);
  v32 = &v27 - v16;
  v18 = *v8;
  v17 = v8[1];
  v19 = sub_1B2113BDC();
  v22 = type metadata accessor for NullableDatabaseValueCursor(v19, v20, v2, v21);
  v31[0] = v18;
  v31[1] = v17;
  sub_1B2122784(v6, v30);

  sub_1B211CF8C(v18);
  sub_1B211D084(v10, v31, v30);
  if (!v0)
  {
    v24 = v28;
    v23 = v29;
    WitnessTable = swift_getWitnessTable();
    DatabaseCursor.next()(v22, WitnessTable, v32);

    if (sub_1B2122A98(v32, 1, v12) == 1)
    {
      sub_1B21117B4(v23, 1, 1, v4);
      if (sub_1B2122A98(v32, 1, v12) != 1)
      {
        (*(v24 + 8))(v32, v13);
      }
    }

    else
    {
      sub_1B2111808();
      (*(v26 + 32))(v23, v32, v12);
    }
  }

  sub_1B2112FDC();
}

uint64_t sub_1B2154AB4()
{
  sub_1B21233F8();
  type metadata accessor for SchedulingWatchdog();
  v1 = sub_1B2113B28();
  if ((sub_1B2117B40(v1) & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_1B21118B8();
  result = swift_beginAccess();
  v3 = *(v0 + 16);
  if (v3)
  {
    v4 = v0 + OBJC_IVAR____TtC12GRDBInternal8Database_configuration;
    v5 = type metadata accessor for Configuration(0);
    v6 = *(v4 + *(v5 + 88));
    if (v6)
    {
      v6(v3);
    }

    v7 = sub_1B211FF34(&OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___internalStatementCache);
    sub_1B21140E4(v7, v8);

    type metadata accessor for Statement();
    v9 = sub_1B223C24C();
    v10 = sub_1B211499C(v9, OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___internalStatementCache);
    sub_1B2120024(v10, v11);
    v12 = sub_1B211FF34(&OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___publicStatementCache);
    sub_1B21140E4(v12, v13);

    v14 = sub_1B223C24C();
    v15 = sub_1B211499C(v14, OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___publicStatementCache);
    sub_1B2120024(v15, v16);
    result = sqlite3_close(v3);
    if (result)
    {
      v17 = result;
      sub_1B21115FC();
      swift_beginAccess();
      v18 = off_1EB7A3328;
      if (off_1EB7A3328 && v17 == 5)
      {
        v19 = qword_1EB7A3330;

        stmt = sqlite3_next_stmt(v3, 0);
        if (stmt)
        {
          while (1)
          {
            v30 = 5;
            sub_1B2252CD0();

            if (!sqlite3_sql(stmt))
            {
              break;
            }

            v21 = sub_1B22523F0();
            MEMORY[0x1B2741EB0](v21);

            v18(&v30, 0xD000000000000017, 0x80000001B2270F70);

            stmt = sqlite3_next_stmt(v3, stmt);
            if (!stmt)
            {
              goto LABEL_11;
            }
          }

          __break(1u);
          goto LABEL_20;
        }

LABEL_11:
        sub_1B2112F4C(v18, v19);
        v17 = 5;
      }

      v22 = Database.lastErrorMessage.getter();
      v24 = v23;
      v25 = sub_1B21AC298();
      sub_1B21152FC(&type metadata for DatabaseError, v25);
      v27 = v26;
      if (!v24)
      {
        if (!sqlite3_errstr(v17))
        {
LABEL_20:
          __break(1u);
LABEL_21:
          sub_1B2112A88();
          result = sub_1B2252EC0();
          __break(1u);
          return result;
        }

        v22 = sub_1B22523F0();
        v24 = v28;
      }

      *v27 = v17;
      *(v27 + 8) = v22;
      *(v27 + 16) = v24;
      *(v27 + 24) = 0u;
      *(v27 + 40) = 0u;
      *(v27 + 56) = 0;
      return swift_willThrow();
    }

    *(v0 + 16) = 0;
    v29 = (v4 + *(v5 + 92));
    if (*v29)
    {
      return (*v29)();
    }
  }

  return result;
}

uint64_t static DatabaseValueConvertible<>.fromDatabaseValue(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  sub_1B2251A00();
  sub_1B211280C();
  MEMORY[0x1EEE9AC00](v7);
  sub_1B2111844();
  sub_1B22519D0();
  sub_1B211280C();
  MEMORY[0x1EEE9AC00](v8);
  sub_1B2111844();
  sub_1B22519C0();
  sub_1B211280C();
  MEMORY[0x1EEE9AC00](v9);
  sub_1B2111844();
  sub_1B22522F0();
  sub_1B211280C();
  MEMORY[0x1EEE9AC00](v10);
  sub_1B2111844();
  v12 = *a1;
  v11 = *(a1 + 8);
  v13 = *(a1 + 16);
  sub_1B21552B8();
  sub_1B2113B74();
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  *(v15 + 24) = v11;
  *(v15 + 32) = v13;
  *(v15 + 40) = MEMORY[0x1E69E7CC0];
  sub_1B2113A20(v12, v11, v13);
  sub_1B22527E0();

  return sub_1B21117B4(a4, 0, 1, a2);
}

unint64_t sub_1B21552B8()
{
  result = qword_1ED85D4A0;
  if (!qword_1ED85D4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED85D4A0);
  }

  return result;
}

uint64_t sub_1B215530C(uint64_t a1)
{
  sub_1B2155660();
  swift_allocError();
  return swift_willThrow();
}

void sub_1B2155354()
{
  sub_1B2111640();
  v31 = v0;
  v2 = v1;
  v4 = v3;
  v30[0] = v5;
  v30[1] = v6;
  v8 = v7;
  v10 = v9;
  v37 = v11;
  v12 = sub_1B2252B00();
  sub_1B211280C();
  v14 = v13;
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v30 - v16;
  sub_1B21320F0(v10, v8, v35);
  v18 = v35[0];
  v19 = v35[1];
  v20 = v36;
  (*(v2 + 32))(v35, v4, v2);
  if (sub_1B2122A98(v17, 1, v4) == 1)
  {
    v21 = v37;
    (*(v14 + 8))(v17, v12);
    if (v20 != 4 || v19 | v18)
    {
      sub_1B211DA70();
      v26(v24, v25);
      v32 = v18;
      v33 = v19;
      v34 = v20;
      sub_1B21A2FC0();
      swift_allocError();
      sub_1B211D7D8();
      sub_1B2183238(v4, v27, v28, v29);
      sub_1B2111C54();
      swift_willThrow();
      sub_1B2113A44(v18, v19, v20);
      goto LABEL_8;
    }

    sub_1B2113A44(0, 0, 4);
    v22 = 1;
  }

  else
  {
    sub_1B2113A44(v18, v19, v20);
    sub_1B2111808();
    v21 = v37;
    (*(v23 + 32))(v37, v17, v4);
    v22 = 0;
  }

  sub_1B21117B4(v21, v22, 1, v4);
LABEL_8:
  sub_1B2112FDC();
}

unint64_t sub_1B2155660()
{
  result = qword_1ED85D808;
  if (!qword_1ED85D808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED85D808);
  }

  return result;
}

uint64_t DatabaseValueCursor.__deallocating_deinit()
{
  DatabaseValueCursor.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t AggregatingRequest.group(_:)()
{
  sub_1B2123510();
  sub_1B2112174();
  sub_1B2115660();
  v1 = swift_allocObject();
  sub_1B211AE34(v1);
  v2 = *(v0 + 8);

  v3 = sub_1B211623C();
  v2(v3);
  sub_1B2115ED4();
}

void *_s12GRDBInternal3SQLV13stringLiteralACSS_tcfC_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>)
{
  sub_1B2112554(MEMORY[0x1E69E7CC0], __src, a4, a5, a6, a7);
  v12 = __src[0];
  sub_1B21619D8(&qword_1EB7A0F70, &qword_1B2257590);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1B22546B0;
  *&__src[0] = a1;
  *(&__src[0] + 1) = a2;
  __src[1] = v12;
  sub_1B2114CC4(__src);
  result = memcpy((v10 + 32), __src, 0xB8uLL);
  *a3 = v10;
  return result;
}

double sub_1B2155860(void *__src, uint64_t a2, uint64_t a3, uint64_t a4)
{
  memcpy(__dst, __src, 0xA2uLL);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = __dst[14];
  v10 = __dst[15];
  memcpy(__srca, __src, sizeof(__srca));
  v11 = *(__src + 9);
  v19 = *(__src + 8);
  v20 = v11;
  v21 = *(__src + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1B21564D4;
  *(v12 + 24) = v8;

  sub_1B2136148(__dst, v23);
  sub_1B2112F4C(v9, v10);
  memcpy(v23, __src, 0xA2uLL);
  InterfaceRequest = type metadata accessor for QueryInterfaceRequest(0, a4, v13, v14);
  (*(*(InterfaceRequest - 8) + 8))(v23, InterfaceRequest);
  memcpy(__src, __srca, 0x70uLL);
  *(__src + 14) = sub_1B214D6B4;
  *(__src + 15) = v12;
  result = *&v19;
  v17 = v20;
  *(__src + 8) = v19;
  *(__src + 9) = v17;
  *(__src + 80) = v21;
  return result;
}

uint64_t SQLSpecificExpressible.forKey(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1B2124228();
  v7(v6);
  __src[21] = a1;
  __src[22] = a2;
  sub_1B2155A5C(__src);
  memcpy(a3, __src, 0xB8uLL);
}

void *sub_1B2155A5C(void *result)
{
  v1 = result[13] & 1;
  v2 = result[20] & 0xF981FFLL | 0x4000000000000000;
  result[8] &= 1uLL;
  result[13] = v1;
  result[20] = v2;
  return result;
}

uint64_t SelectionRequest.annotated(with:)()
{
  sub_1B2123510();
  sub_1B2112174();
  sub_1B2115660();
  v1 = swift_allocObject();
  sub_1B211AE34(v1);
  v2 = *(v0 + 16);

  v3 = sub_1B211623C();
  v2(v3);
  sub_1B2115ED4();
}

void *sub_1B2155B38(char *__src, uint64_t a2, uint64_t a3, uint64_t a4)
{
  memcpy(__dst, __src, 0xA2uLL);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v17 = *__src;
  v18 = *(__src + 2);
  memcpy(__srca, __src + 40, sizeof(__srca));
  v9 = swift_allocObject();
  *(v9 + 16) = *&__dst[3];
  *(v9 + 32) = sub_1B215636C;
  *(v9 + 40) = v8;
  memcpy(v19, __src, 0xA2uLL);

  sub_1B2136148(__dst, &v14);
  InterfaceRequest = type metadata accessor for QueryInterfaceRequest(0, a4, v10, v11);
  (*(*(InterfaceRequest - 8) + 8))(v19, InterfaceRequest);
  *__src = v17;
  *(__src + 2) = v18;
  *(__src + 3) = sub_1B2155E14;
  *(__src + 4) = v9;
  return memcpy(__src + 40, __srca, 0x7AuLL);
}

void SQLInterpolation.appendInterpolation(_:)(uint64_t a1)
{
  sub_1B2122B00(a1, &v14, &qword_1EB7A10F0, &qword_1B225D320);
  if (v15)
  {
    sub_1B21217FC(&v14, v16);
    sub_1B21139A0(v16, v16[3]);
    sub_1B21146C8();
    v2 = sub_1B2115FBC();
    v3(v2);
    sub_1B2127AE0(v13);
    sub_1B2127D18();
    sub_1B212CF64();
    sub_1B21172D8(v4, v5, v6, v7, v8, v9, v10, v11, v12);
    *v1 = v1;
    sub_1B2113208(v16);
  }

  else
  {
    sub_1B212AC5C(&v14, &qword_1EB7A10F0, &qword_1B225D320);
    sub_1B2114580();
  }
}

{
  sub_1B2122B00(a1, &v14, &qword_1EB7A10E8, &qword_1B2254928);
  if (v15)
  {
    sub_1B21217FC(&v14, v16);
    sub_1B21139A0(v16, v16[3]);
    sub_1B21146C8();
    v2 = sub_1B2115FBC();
    v3(v2);
    sub_1B216ED58(v13);
    sub_1B2127D18();
    sub_1B212CF64();
    sub_1B21172D8(v4, v5, v6, v7, v8, v9, v10, v11, v12);
    *v1 = v1;
    sub_1B2113208(v16);
  }

  else
  {
    sub_1B212AC5C(&v14, &qword_1EB7A10E8, &qword_1B2254928);
    sub_1B2114580();
  }
}

void *sub_1B2155DA8(double a1)
{
  *__src = a1;
  v12 = 0;
  v13 = 1;
  v1 = sub_1B2127D7C(__src);
  return sub_1B21182E8(v1, v2, v3, v4, v5, v6, v7, v8, v10);
}

char *sub_1B2155DEC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[184 * a2] <= a3)
  {
    return sub_1B2117990(a3, result);
  }

  return result;
}

void sub_1B2155E34(uint64_t a1@<X0>, void *(*a2)(uint64_t *__return_ptr)@<X1>, uint64_t (*a3)(uint64_t)@<X3>, void *a4@<X8>)
{
  a2(&v10);
  if (!v4)
  {
    v8 = v10;
    v9 = a3(a1);
    sub_1B2156384(v9);
    *a4 = v8;
  }
}

void *DatabasePool.init(path:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v32 = *v3;
  v8 = sub_1B2252120();
  v9 = sub_1B2111894(v8);
  MEMORY[0x1EEE9AC00](v9);
  sub_1B2111844();
  v31 = v11 - v10;
  type metadata accessor for Configuration(0);
  sub_1B2111808();
  MEMORY[0x1EEE9AC00](v12);
  sub_1B2111844();
  v15 = v14 - v13;
  v3[3] = 0;
  sub_1B21619D8(&qword_1EB7A3128, &qword_1B2269B70);
  sub_1B2111904();
  swift_allocObject();
  v3[4] = sub_1B2153D1C(0);
  v16 = *(a3 + 96);
  if (v16 >= 1)
  {
    sub_1B212392C(a3, v15);
    type metadata accessor for SerializedDatabase();
    sub_1B2113B74();
    swift_allocObject();

    v17 = a1;
    sub_1B2123A30();
    if (v33)
    {

      swift_deallocPartialClassInstance();
LABEL_11:
      sub_1B2133D70(a3);
      return v4;
    }

    v30 = 0;
    v3[2] = v18;
    v19 = swift_allocBox();
    v21 = v20;
    sub_1B21579F4(a3, v20);
    *(v21 + 41) = 0;
    v22 = a3;
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    v24 = v31;
    sub_1B2157A64(v31);
    sub_1B2113B74();
    v25 = swift_allocObject();
    v25[2] = v23;
    v25[3] = v17;
    v25[4] = a2;
    v25[5] = v19;
    sub_1B21619D8(&qword_1EB7A3130, &qword_1B2269B78);
    swift_allocObject();

    v32 = v23;
    a3 = v22;

    v33 = v19;

    v4[3] = sub_1B2157B7C(v16, v24, sub_1B2124044, v25);

    if (*(v22 + 1))
    {
    }

    else
    {
      MEMORY[0x1EEE9AC00](v26);
      *(&v29 - 2) = v17;
      *(&v29 - 1) = a2;

      v27 = v30;
      sub_1B2113C20(sub_1B21584B8, (&v29 - 4));
      if (v27)
      {

LABEL_10:

        goto LABEL_11;
      }
    }

    sub_1B21587AC();

    goto LABEL_10;
  }

  sub_1B2116728();
  sub_1B2112A88();
  sub_1B21144F4();
  result = sub_1B2252EC0();
  __break(1u);
  return result;
}

uint64_t sub_1B21562D8()
{

  sub_1B2113B74();

  return swift_deallocObject();
}

uint64_t SQLSelection.sqlSelection.getter()
{
  sub_1B21118C4();
  memcpy(v0, v1, v2);
  sub_1B21118C4();
  memcpy(v3, v4, v5);
  return sub_1B213A774(v8, v7);
}

void sub_1B2156384(uint64_t a1)
{
  v4 = sub_1B211284C(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1B2156418(v4, 1);
  sub_1B21169F4();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1B2114EF8();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1B211ACDC();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_1B211F610();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1B2156464(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B21619D8(&qword_1EB7A1368, qword_1B2256F28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B21564F0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = a2(a1);
  if (!v2)
  {
    v5 = v4;
    v6 = *(v4 + 16);
    if (v6)
    {
      v17 = MEMORY[0x1E69E7CC0];
      sub_1B213CA68();
      v3 = v17;
      v7 = v5 + 32;
      for (i = v6 - 1; ; --i)
      {
        sub_1B214D38C(v7, v13);
        v9 = v14;
        v10 = v15;
        sub_1B21139A0(v13, v14);
        (*(v10 + 8))(__src, v9, v10);
        sub_1B2113208(v13);
        v17 = v3;
        v11 = *(v3 + 16);
        if (v11 >= *(v3 + 24) >> 1)
        {
          sub_1B213CA68();
          v3 = v17;
        }

        *(v3 + 16) = v11 + 1;
        memcpy((v3 + 168 * v11 + 32), __src, 0xA3uLL);
        if (!i)
        {
          break;
        }

        v7 += 40;
      }
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

uint64_t *sub_1B215664C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *result;
  v5 = *(*result + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1B213CA68();
    v6 = v13;
    v8 = (v4 + 32);
    do
    {
      memcpy(__dst, v8, 0xA3uLL);
      memcpy(v10, v8, sizeof(v10));
      sub_1B2127DC0(__dst, __src);
      sub_1B213BBD8(a2, __src);
      sub_1B21356F8(__dst);
      v13 = v6;
      v9 = *(v6 + 16);
      if (v9 >= *(v6 + 24) >> 1)
      {
        sub_1B213CA68();
        v6 = v13;
      }

      *(v6 + 16) = v9 + 1;
      result = memcpy((v6 + 168 * v9 + 32), __src, 0xA3uLL);
      v8 += 168;
      --v5;
    }

    while (v5);
  }

  *a3 = v6;
  return result;
}

uint64_t Statement.description.getter()
{
  type metadata accessor for SchedulingWatchdog();
  v0 = swift_unownedRetainStrong();
  v1 = sub_1B2117B40(v0);

  if (v1)
  {
    return Statement.sql.getter();
  }

  else
  {
    return 0x6E656D6574617453;
  }
}

uint64_t Statement.sql.getter()
{
  type metadata accessor for SchedulingWatchdog();
  v1 = swift_unownedRetainStrong();
  if ((sub_1B2117B40(v1) & 1) == 0)
  {
    goto LABEL_7;
  }

  if (!sqlite3_sql(*(v0 + 16)))
  {
    __break(1u);
LABEL_7:
    sub_1B2117938();
    result = sub_1B2252EC0();
    __break(1u);
    return result;
  }

  sub_1B22523F0();
  if (qword_1ED85D650 != -1)
  {
    swift_once();
  }

  v2 = sub_1B2251B80();
  sub_1B2156958(v2, qword_1ED8618E8);
  sub_1B2156990();
  v3 = sub_1B2252B80();

  return v3;
}

uint64_t sub_1B2156958(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_1B2156990()
{
  result = qword_1ED85DBC0;
  if (!qword_1ED85DBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED85DBC0);
  }

  return result;
}

uint64_t StatementArguments.description.getter(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *v7;
  v8 = v7[1];
  v10 = *(*v7 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v25 = v7[1];
    v26 = MEMORY[0x1E69E7CC0];
    sub_1B2116B10(0, v10, 0, a4, a5, a6, a7);
    v11 = v26;
    v12 = (v9 + 48);
    while (2)
    {
      v14 = *(v12 - 2);
      v13 = *(v12 - 1);
      v15 = *v12;
      v12 += 24;
      v16 = 0xE400000000000000;
      v17 = 1280070990;
      switch(v15)
      {
        case 1:
          v18 = sub_1B22527C0();
          goto LABEL_8;
        case 2:

          v18 = sub_1B2252330();
          goto LABEL_8;
        case 3:
          sub_1B2126638(v14, v13);
          v19 = sub_1B2251DA0();
          MEMORY[0x1B2741EB0](v19);

          MEMORY[0x1B2741EB0](41, 0xE100000000000000);
          sub_1B2113A44(v14, v13, 3);
          v17 = 0x2861746144;
          v16 = 0xE500000000000000;
          goto LABEL_9;
        case 4:
          goto LABEL_9;
        default:
          v18 = sub_1B2252FD0();
LABEL_8:
          v17 = v18;
          v16 = a2;
LABEL_9:
          v21 = *(v26 + 16);
          v20 = *(v26 + 24);
          if (v21 >= v20 >> 1)
          {
            sub_1B2116B10(v20 > 1, v21 + 1, 1, a4, a5, a6, a7);
          }

          *(v26 + 16) = v21 + 1;
          v22 = v26 + 16 * v21;
          *(v22 + 32) = v17;
          *(v22 + 40) = v16;
          if (--v10)
          {
            continue;
          }

          v8 = v25;
          break;
      }

      break;
    }
  }

  sub_1B2156D18(v8, a2, a3, a4, a5, a6, a7);
  sub_1B2156C88(v11);
  v23 = sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
  sub_1B211AB74(qword_1ED85E790, &qword_1EB7A0DA0, &qword_1B2254340, MEMORY[0x1E69E6310]);
  sub_1B211A328();
  sub_1B2252250();
  sub_1B21140B8();

  MEMORY[0x1B2741EB0](&qword_1B2254340, v23);

  MEMORY[0x1B2741EB0](93, 0xE100000000000000);

  return 91;
}

void sub_1B2156C88(uint64_t a1)
{
  v4 = sub_1B211284C(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1B2157100(v4, 1);
  sub_1B21169F4();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1B2114EF8();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1B211ACDC();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_1B211F610();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1B2156D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v9 = a1;
    v52 = MEMORY[0x1E69E7CC0];
    sub_1B2116B10(0, v7, 0, a4, a5, a6, a7);
    v8 = v52;
    v12 = sub_1B2131DCC();
    v13 = 0;
    v14 = v9 + 64;
    v42 = v10;
    v43 = v7;
    v41 = v9 + 72;
    v44 = v9 + 64;
    v45 = v9;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(v9 + 32))
    {
      v15 = v12 >> 6;
      if ((*(v14 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_28;
      }

      if (*(v9 + 36) != v10)
      {
        goto LABEL_29;
      }

      v48 = v10;
      v49 = v8;
      v46 = v11;
      v47 = v13 + 1;
      v16 = *(v9 + 56) + 24 * v12;
      v18 = *v16;
      v17 = *(v16 + 8);
      v19 = *(v16 + 16);
      swift_bridgeObjectRetain_n();
      sub_1B2113A20(v18, v17, v19);
      sub_1B2113A20(v18, v17, v19);

      sub_1B2113A44(v18, v17, v19);

      v50 = sub_1B2252330();
      v51 = v20;
      MEMORY[0x1B2741EB0](8250, 0xE200000000000000);
      v21 = 0xE400000000000000;
      v22 = 1280070990;
      switch(v19)
      {
        case 1:
          v22 = sub_1B22527C0();
          goto LABEL_12;
        case 2:

          v22 = sub_1B2252330();
          goto LABEL_12;
        case 3:
          sub_1B2126638(v18, v17);
          v24 = sub_1B2251DA0();
          MEMORY[0x1B2741EB0](v24);

          MEMORY[0x1B2741EB0](41, 0xE100000000000000);
          sub_1B2113A44(v18, v17, 3);
          v22 = 0x2861746144;
          v21 = 0xE500000000000000;
          goto LABEL_13;
        case 4:
          goto LABEL_13;
        default:
          v22 = sub_1B2252FD0();
LABEL_12:
          v21 = v23;
LABEL_13:
          MEMORY[0x1B2741EB0](v22, v21);

          sub_1B2113A44(v18, v17, v19);
          v8 = v49;
          v30 = *(v49 + 16);
          v29 = *(v49 + 24);
          if (v30 >= v29 >> 1)
          {
            sub_1B2116B10(v29 > 1, v30 + 1, 1, v25, v26, v27, v28);
            v8 = v49;
          }

          *(v8 + 16) = v30 + 1;
          v31 = v8 + 16 * v30;
          *(v31 + 32) = v50;
          *(v31 + 40) = v51;
          v9 = v45;
          v32 = 1 << *(v45 + 32);
          if (v12 >= v32)
          {
            goto LABEL_30;
          }

          v14 = v44;
          v33 = *(v44 + 8 * v15);
          if ((v33 & (1 << v12)) == 0)
          {
            goto LABEL_31;
          }

          if (*(v45 + 36) != v48)
          {
            goto LABEL_32;
          }

          v34 = v33 & (-2 << (v12 & 0x3F));
          if (v34)
          {
            v32 = __clz(__rbit64(v34)) | v12 & 0x7FFFFFFFFFFFFFC0;
            goto LABEL_25;
          }

          v35 = v15 << 6;
          v36 = v15 + 1;
          v37 = (v41 + 8 * v15);
          break;
      }

      while (v36 < (v32 + 63) >> 6)
      {
        v39 = *v37++;
        v38 = v39;
        v35 += 64;
        ++v36;
        if (v39)
        {
          sub_1B21268C8(v12, v48, v46 & 1);
          v32 = __clz(__rbit64(v38)) + v35;
          goto LABEL_25;
        }
      }

      sub_1B21268C8(v12, v48, v46 & 1);
LABEL_25:
      v11 = 0;
      v12 = v32;
      v10 = v42;
      v13 = v47;
      if (v47 == v43)
      {
        return v8;
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
    JUMPOUT(0x1B21570ECLL);
  }

  return v8;
}

uint64_t static Row.fetchCursor<A>(_:_:)()
{
  sub_1B211E230();
  result = v1();
  if (v0)
  {
    return sub_1B2122C74();
  }

  if (!v15[6])
  {
    v10 = sub_1B224B280(result, v3, v4, v5, v6, v7, v8, v9, v13, v14, v15[0]);
    static Row.fetchCursor(_:arguments:adapter:)(v10, v11, v12);
    sub_1B2142D18(v15);
    return sub_1B2122C74();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B2157184(uint64_t a1)
{
  *(v2 - 176) = *(v1 + 80);

  return Row.PrefetchedRowsView.keys.getter(a1);
}

uint64_t sub_1B21571A4()
{
  sub_1B2252A10();
  sub_1B211280C();
  v24 = v2;
  v25 = v1;
  MEMORY[0x1EEE9AC00](v1);
  sub_1B2111844();
  v5 = v4 - v3;
  sub_1B22529C0();
  sub_1B21118A0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1B2111844();
  v7 = sub_1B2252120();
  sub_1B211280C();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  sub_1B2111844();
  v13 = v12 - v11;
  v14 = type metadata accessor for Configuration(0);
  v15 = *(v14 + 72);
  v16 = *(v0 + v15);
  if (v16)
  {
    v17 = *(v0 + v15);
  }

  else
  {
    v18 = v14;
    v19 = *(v0 + *(v14 + 68));
    if (!v19)
    {
      sub_1B2111770();
      (*(v9 + 16))(v13, v0 + *(v18 + 64), v7);
      sub_1B2126274();

      sub_1B21619D8(&qword_1EB7A21A0, &unk_1B225E830);
      sub_1B2124EF0();
      sub_1B2115144();
      sub_1B2252BC0();
      (*(v24 + 104))(v5, *MEMORY[0x1E69E8090], v25);
      sub_1B2115798();
      return sub_1B2252A70();
    }

    v17 = v19;
    v16 = 0;
  }

  sub_1B2111770();
  v20 = v16;

  v21 = v17;
  sub_1B2252100();
  sub_1B2126274();
  sub_1B21619D8(&qword_1EB7A21A0, &unk_1B225E830);
  sub_1B2124EF0();
  sub_1B2115144();
  sub_1B2252BC0();
  (*(v24 + 104))(v5, *MEMORY[0x1E69E8090], v25);
  sub_1B2115798();
  v22 = sub_1B2252A70();

  return v22;
}

void *sub_1B21574A4()
{
  sub_1B2112FB8();
  sub_1B21115FC();
  swift_beginAccess();

  v0 = sub_1B2111F60();
  sqlite3_commit_hook(v0, v1, v2);
  sub_1B2112FB8();
  sub_1B21115FC();
  swift_beginAccess();

  v3 = sub_1B2111F60();
  return sqlite3_rollback_hook(v3, v4, v5);
}

const char *Database.lastErrorMessage.getter()
{
  sub_1B2117330();
  swift_beginAccess();
  result = sqlite3_errmsg(*(v0 + 16));
  if (result)
  {
    return sub_1B22523F0();
  }

  __break(1u);
  return result;
}

uint64_t static DatabaseValueConvertible<>.fetchOne(_:sql:arguments:adapter:)()
{
  sub_1B211A288();
  sub_1B2122C98();
  v4 = *v2;
  v3 = v2[1];
  sub_1B2122784(v5, v8);
  sub_1B21619D8(&qword_1EB7A0F70, &qword_1B2257590);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1B22546B0;
  __src[0] = v1;
  __src[1] = v0;
  __src[2] = v4;
  __src[3] = v3;
  sub_1B2114CC4(__src);
  memcpy((v6 + 32), __src, 0xB8uLL);
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  v11 = v6;

  sub_1B2142B5C(v8, v9);
  v12 = 2;
  sub_1B21619D8(&qword_1EB7A1C18, &qword_1B2259C90);
  sub_1B21576B0();
  sub_1B212DE98();
  static DatabaseValueConvertible<>.fetchOne<A>(_:_:)();
  return sub_1B2122400(v9, &qword_1EB7A1C18, &qword_1B2259C90);
}

unint64_t sub_1B21576B0()
{
  result = qword_1ED85DE58;
  if (!qword_1ED85DE58)
  {
    sub_1B2161A20(&qword_1EB7A1C18, &qword_1B2259C90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED85DE58);
  }

  return result;
}

uint64_t static DatabaseValueConvertible<>.fetchOne<A>(_:_:)()
{
  sub_1B21229B4();
  result = v1();
  if (!v0)
  {
    sub_1B2112014(result, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12[0]);
    static DatabaseValueConvertible<>.fetchOne(_:arguments:adapter:)();
    return sub_1B2142D18(v12);
  }

  return result;
}

uint64_t SQLRequest.makePreparedRequest(_:forSingleResult:)@<X0>(uint64_t a2@<X8>)
{
  v4 = v2;
  type metadata accessor for StatementArgumentsSink();
  swift_allocObject();
  v12 = sub_1B2114D98(0, v6, v7, v8, v9, v10, v11);
  v13 = MEMORY[0x1E69E7CC0];
  sub_1B2116B4C();
  type metadata accessor for SQLGenerationContext();
  swift_allocObject();

  v15 = sub_1B2117164(v14, v12, v13);
  *&v32[0] = *(v4 + 40);

  v22 = sub_1B2119120(v15, v16, v17, v18, v19, v20, v21);
  if (v3)
  {
  }

  v24 = v22;
  v25 = v23;

  v26 = *(v4 + 48);
  if (v26 == 2)
  {
    v27 = sub_1B212641C(v24, v25, 0);
  }

  else if (v26)
  {
    v27 = sub_1B212DAFC(v24, v25);
  }

  else
  {
    v27 = Database.cachedStatement(sql:)(v24, v25);
  }

  v29 = v27;

  sub_1B211B048(v32);
  v33 = v32[0];
  v30.values._rawValue = &v33;
  Statement.setArguments(_:)(v30);
  if (v31)
  {
  }

  sub_1B2122784(v4, v32);
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0;
  *(a2 + 8) = 0u;
  *a2 = v29;
  result = sub_1B2142B5C(v32, a2 + 8);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

double sub_1B21579F4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B212392C(a1, a2);
  *(a2 + 1) = 1;
  *(a2 + 40) = 0;
  if (*(a2 + 88) == 255)
  {
    sub_1B2157A50(*(a2 + 72), *(a2 + 80), 255);
    result = 10.0;
    *(a2 + 72) = xmmword_1B2269B60;
    *(a2 + 88) = 0;
  }

  return result;
}

uint64_t sub_1B2157A50(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1B2151FF0(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1B2157A64@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B2252120();
  sub_1B211280C();
  v13 = v4;
  MEMORY[0x1EEE9AC00](v5);
  sub_1B2111844();
  v8 = v7 - v6;
  v9 = type metadata accessor for Configuration(0);
  if (*(v1 + *(v9 + 68)))
  {
    sub_1B2252A20();
    return (*(v13 + 32))(a1, v8, v3);
  }

  else
  {
    v11 = *(v13 + 16);
    v12 = v1 + *(v9 + 64);

    return v11(a1, v12, v3);
  }
}

uint64_t sub_1B2157B7C(intptr_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v33 = a3;
  v38 = sub_1B2252A10();
  v36 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1B22529C0();
  MEMORY[0x1EEE9AC00](v35);
  v10 = sub_1B2252120();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B21619D8(&qword_1EB7A3150, &qword_1B2269C08);
  swift_allocObject();
  v4[4] = sub_1B21537D0(MEMORY[0x1E69E7CC0]);
  if (a1 < 1)
  {
    result = sub_1B2252EC0();
    __break(1u);
  }

  else
  {
    v4[2] = v33;
    v4[3] = a4;

    v4[5] = dispatch_semaphore_create(a1);
    v4[6] = dispatch_group_create();
    v14 = sub_1B2111770();
    v28 = "Pool size must be at least 1";
    v29 = v10;
    v33 = a4;
    v34 = v11;
    v15 = *(v11 + 16);
    v30 = v11 + 16;
    v31 = v14;
    v32 = v15;
    v39 = v13;
    v15(v13, a2, v10);
    sub_1B21619D8(&qword_1EB7A3158, &qword_1B2269C10);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1B22546B0;
    sub_1B22529B0();
    v40 = v16;
    v26[2] = sub_1B21202AC(&qword_1ED85E780, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
    v26[1] = sub_1B21619D8(&qword_1EB7A21A0, &unk_1B225E830);
    v26[3] = sub_1B21E8598(&qword_1ED85E788, &qword_1EB7A21A0, &unk_1B225E830);
    sub_1B2252BC0();
    v26[0] = a2;
    v17 = *MEMORY[0x1E69E8090];
    v18 = v37;
    v27 = v5;
    v36 = *(v36 + 104);
    v19 = v38;
    (v36)(v37, v17, v38);
    v20 = v39;
    v5[7] = sub_1B2252A70();
    v21 = v20;
    v22 = v26[0];
    v23 = v29;
    v32(v21, v26[0], v29);
    v40 = MEMORY[0x1E69E7CC0];
    sub_1B2252BC0();
    (v36)(v18, v17, v19);
    v24 = sub_1B2252A70();

    (*(v34 + 8))(v22, v23);
    result = v27;
    *(v27 + 64) = v24;
  }

  return result;
}

void sub_1B2158070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  v6 = sub_1B215833C(a1, 0xD000000000000019, 0x80000001B2270500, MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC8], v23);
  if (v3)
  {

    sub_1B2122400(v23, &qword_1EB7A1370, &unk_1B2257580);
    return;
  }

  v8 = v6;
  v9 = v7;
  sub_1B2122400(v23, &qword_1EB7A1370, &unk_1B2257580);
  v10 = MEMORY[0x1E69E7CC8];

  v11 = MEMORY[0x1E69E7CC0];

  if (!v9)
  {
    goto LABEL_9;
  }

  if (v8 == 7102839 && v9 == 0xE300000000000000)
  {
  }

  else
  {
    v13 = sub_1B22531F0();

    if ((v13 & 1) == 0)
    {
LABEL_9:
      *&v23[0] = 0;
      *(&v23[0] + 1) = 0xE000000000000000;
      sub_1B2252CD0();

      *&v23[0] = 0xD000000000000025;
      *(&v23[0] + 1) = 0x80000001B2270520;
      MEMORY[0x1B2741EB0](a2, a3);
      v15 = v23[0];
      sub_1B21AC298();
      swift_allocError();
      *v16 = 1;
      *(v16 + 8) = v15;
      *(v16 + 24) = 0u;
      *(v16 + 40) = 0u;
      *(v16 + 56) = 0;
      swift_willThrow();
      return;
    }
  }

  *&v23[0] = v11;
  *(&v23[0] + 1) = v10;
  v17._countAndFlagsBits = 0xD00000000000001BLL;
  v17._object = 0x80000001B2270550;
  v18 = v23;
  Database.execute(sql:arguments:)(v17, *(&v14 - 1));

  if (!v19)
  {
    v20 = [objc_opt_self() defaultManager];
    *&v23[0] = a2;
    *(&v23[0] + 1) = a3;

    MEMORY[0x1B2741EB0](1818326829, 0xE400000000000000);
    v21 = sub_1B2252290();

    v22 = [v20 fileExistsAtPath_];

    if ((v22 & 1) == 0)
    {

      sub_1B2235FFC();
    }
  }
}

uint64_t *sub_1B215833C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1B2122784(a6, v14);
  sub_1B21619D8(&qword_1EB7A0F70, &qword_1B2257590);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1B22546B0;
  __src[0] = a2;
  __src[1] = a3;
  __src[2] = a4;
  __src[3] = a5;
  sub_1B2114CC4(__src);
  memcpy((v11 + 32), __src, 0xB8uLL);
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  v17 = v11;

  sub_1B2142B5C(v14, v15);
  v18 = 2;
  v12 = v15;
  sub_1B2146A54();
  if (!v6)
  {
    v12 = sub_1B21584D4();
    sub_1B2142D18(v14);
  }

  sub_1B2122400(v15, &qword_1EB7A1C18, &qword_1B2259C90);
  return v12;
}

uint64_t *sub_1B21584D4()
{
  sub_1B2117340();
  sub_1B2117F74(&qword_1EB7A1370, &unk_1B2257580, v1, v9);
  sub_1B21619D8(&qword_1EB7A1388, &qword_1B2257E20);
  sub_1B2111904();
  swift_allocObject();
  sub_1B21118E8();

  result = sub_1B2112894(v2, v3, v4);
  if (!v0)
  {
    sub_1B212216C();
    v6 = sub_1B2158588();
    v8 = v7;

    if (v8 == 1)
    {
      return 0;
    }

    else
    {
      return v6;
    }
  }

  return result;
}

uint64_t sub_1B2158588()
{
  sub_1B2116AD0();
  swift_beginAccess();
  if (*(v0 + 24))
  {
    return 0;
  }

  sub_1B2131988();
  v3 = sub_1B2122D50();
  result = sub_1B21585FC(v3);
  if (!v1 && v4 == 1)
  {
    *(v0 + 24) = 1;
  }

  return result;
}

uint64_t sub_1B21585FC(uint64_t a1)
{
  if (!sub_1B2115AA0(a1))
  {
    sub_1B2118184();
    v8 = sub_1B211497C();
    Database.statementWillExecute(_:)(v8);
    v1 = v2;
    if (v2)
    {
      goto LABEL_11;
    }
  }

  if (sqlite3_step(v3) == 100)
  {
    v9 = sub_1B2115468();
    sub_1B21586E0(v9, v10);
    if (!v2)
    {

      return v11;
    }
  }

  sub_1B21122DC();
  if (!v4)
  {
    sub_1B2118184();
    sub_1B2122398();
LABEL_11:
  }

  sub_1B2118184();
  v5 = sub_1B211497C();
  Database.statementDidExecute(_:)(v5, v6);
  sub_1B211DA88();

  if (!v1)
  {
    return 0;
  }

  return result;
}

const unsigned __int8 *sub_1B2158728@<X0>(const unsigned __int8 **a1@<X8>, sqlite3_stmt *a2@<X0>)
{
  result = sub_1B21586FC(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

const unsigned __int8 *sub_1B2158754(sqlite3_stmt *a1)
{
  v3 = *(v1 + 28);
  if (sqlite3_column_type(a1, v3) == 5)
  {
    return 0;
  }

  result = sqlite3_column_text(a1, v3);
  if (result)
  {
    return sub_1B2252400();
  }

  __break(1u);
  return result;
}

void sub_1B21587AC()
{
  v1 = type metadata accessor for Configuration(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  DatabasePool.configuration.getter(v3);
  v4 = v3[25];
  sub_1B2133D70(v3);
  if (v4 == 1)
  {
    v5 = [objc_opt_self() defaultCenter];
    if (qword_1EB7A0D88 != -1)
    {
      swift_once();
    }

    [v5 addObserver:v0 selector:sel_suspend_ name:qword_1EB7A3338 object:0];
    if (qword_1EB7A0D90 != -1)
    {
      swift_once();
    }

    [v5 addObserver:v0 selector:sel_resume_ name:qword_1EB7A3340 object:0];
  }
}

uint64_t sub_1B2158948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a1;
  v9 = (v7 + 8);
  v10 = *(v7 + 8);
  v11 = *(v10 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    *&v36 = MEMORY[0x1E69E7CC0];
    sub_1B2116B10(0, v11, 0, a4, a5, a6, a7);
    v12 = v36;
    v13 = (v10 + 40);
    do
    {
      v15 = *(v13 - 1);
      v14 = *v13;
      *&v36 = v12;
      v16 = *(v12 + 16);
      v17 = *(v12 + 24);

      if (v16 >= v17 >> 1)
      {
        sub_1B2116B10(v17 > 1, v16 + 1, 1, v18, v19, v20, v21);
        v12 = v36;
      }

      *(v12 + 16) = v16 + 1;
      v22 = v12 + 16 * v16;
      *(v22 + 32) = v15;
      *(v22 + 40) = v14;
      v13 += 5;
      --v11;
    }

    while (v11);
  }

  v35 = *v8;
  v36 = v35;
  MEMORY[0x1EEE9AC00](a1);
  v32 = &v35;

  v23 = sub_1B2158BF0(sub_1B2158ED4, &v31, v12);

  if (v23)
  {
    *&v35 = 0;
    *(&v35 + 1) = 0xE000000000000000;
    sub_1B2252CD0();

    *&v35 = 0xD00000000000001ELL;
    *(&v35 + 1) = 0x80000001B226FCB0;
    v34 = v36;
    v30 = sub_1B2252330();
    MEMORY[0x1B2741EB0](v30);

    v33 = 0;
    v32 = 320;
    result = sub_1B2252EC0();
    __break(1u);
  }

  else
  {
    sub_1B2158CA0(&v36);
    sub_1B2158CF4();
    v24 = *(*v9 + 16);
    sub_1B2158E08();
    v25 = *(v8 + 32);
    v26 = *v9;
    *(v26 + 16) = v24 + 1;
    v27 = v26 + 40 * v24;
    v28 = *(v8 + 16);
    *(v27 + 32) = *v8;
    *(v27 + 48) = v28;
    *(v27 + 64) = v25;
    *v9 = v26;
    sub_1B2158E58(&v36, &v35);
  }

  return result;
}

uint64_t DatabaseMigrator.registerMigration(_:foreignKeyChecks:migrate:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *a3;
  if (*(v7 + 1))
  {
    v9 = 0;
  }

  else
  {
    v9 = 2;
  }

  v12[0] = a1;
  v12[1] = a2;
  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9;
  }

  v13 = v10;
  v14 = a4;
  v15 = a5;
  return sub_1B2158948(v12, a2, a3, a4, a5, a6, a7);
}

BOOL sub_1B2158BF0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

void sub_1B2158CF4()
{
  v2 = sub_1B2115E10();
  *v1 = v0;
  if (!v2)
  {
    sub_1B2115530();
    sub_1B2158D58();
    *v1 = v3;
  }
}

void sub_1B2158D58()
{
  sub_1B2114660();
  if ((v4 & 1) == 0 || (sub_1B2115F84(), v5 == v6))
  {
LABEL_6:
    sub_1B2111EF8();
    if (v3)
    {
      v13 = sub_1B2113B10(v7, v8, v9, v10, v11, v12);
      v14 = sub_1B21169D8(v13);
      v15 = j__malloc_size(v14);
      sub_1B2117B94(v15);
      if (v2)
      {
LABEL_8:
        v16 = sub_1B2117B84();
        v1(v16);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    sub_1B2115B30();
    goto LABEL_11;
  }

  sub_1B212CD14();
  if (!v5)
  {
    sub_1B2115544();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1B2158E08()
{
  sub_1B2114EB4();
  if (!(v2 ^ v3 | v1))
  {
    sub_1B21220F0();
    sub_1B2158D58();
    *v0 = v4;
  }
}

uint64_t sub_1B2158F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1B22531F0() & 1;
  }
}

char *sub_1B2158F60(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return sub_1B2117990(a3, result);
  }

  return result;
}

uint64_t DatabaseMigrator.migrate(_:)(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 1);
  v4 = *(v3 + 16);
  if (v4)
  {
    v6 = v2[1];
    v7 = *v2;
    v8 = (v3 + 40 * v4);
    v10 = *(v8 - 1);
    v9 = *v8;
    ObjectType = swift_getObjectType();
    v19 = &v17;
    MEMORY[0x1EEE9AC00](ObjectType);
    v13[16] = v7;
    v13[17] = v6;
    v14 = v3;
    v15 = v10;
    v16 = v9;
    v11 = *(a2 + 32);

    v11(sub_1B2159AA0, v13, MEMORY[0x1E69E7CA8] + 8, ObjectType, a2);
  }

  return v12;
}

uint64_t DatabasePool.barrierWriteWithoutTransaction<A>(_:)@<X0>(uint64_t result@<X0>, uint64_t a3@<X2>, void *x8_0@<X8>)
{
  if (*(v4 + 24))
  {
    MEMORY[0x1EEE9AC00](result);
    v10[2] = v7;
    v10[3] = v4;
    v10[4] = v8;
    v10[5] = v9;

    sub_1B2159160(sub_1B2159384, v10, a3, x8_0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B2159160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v16 = a4;
  v5 = v4;
  v15 = a2;
  v8 = sub_1B22520F0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B21619D8(&qword_1EB7A2B88, &unk_1B2260248);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1B22546B0;
  sub_1B22520E0();
  v21 = v12;
  sub_1B212C084();
  sub_1B21619D8(&qword_1EB7A27A8, &qword_1B225E820);
  sub_1B212C0DC();
  sub_1B2252BC0();
  v17 = a3;
  v18 = v5;
  v19 = a1;
  v20 = v15;
  sub_1B2252A40();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1B215932C()
{
  v1 = *(v0 + 32);
  v2 = sub_1B22529A0();
  return v1(v2);
}

void sub_1B21593B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v9 = v4[1];
  v10 = *(v4 + 1);
  __src[0] = MEMORY[0x1E69E7CC0];
  __src[1] = MEMORY[0x1E69E7CC8];
  v11._countAndFlagsBits = 0xD000000000000051;
  v11._object = 0x80000001B226FB50;
  v12 = __src;
  Database.execute(sql:arguments:)(v11, *(&a4 - 1));
  if (v13)
  {

LABEL_3:

    return;
  }

  LOBYTE(__src[0]) = v8;
  BYTE1(__src[0]) = v9;
  __src[1] = v10;
  DatabaseMigrator.appliedMigrations(_:)(a1);
  v40 = v14;
  v56 = a1;
  v15 = 0;
  v16 = *(v10 + 16);
  v38 = v10;
  for (i = (v10 + 40); ; i += 5)
  {
    if (v16 == v15)
    {
      goto LABEL_23;
    }

    v18 = *(i - 1) == a2 && *i == a3;
    if (v18 || (sub_1B22531F0() & 1) != 0)
    {
      break;
    }

    ++v15;
  }

  v19 = sub_1B215A638(v40);
  if (!v20)
  {
    goto LABEL_23;
  }

  v21 = v19;
  v22 = v20;
  v36 = v9;
  v37 = v8;
  v23 = 0;
  for (j = (v38 + 40); ; j += 5)
  {
    if (v16 == v23)
    {
      goto LABEL_22;
    }

    v25 = *(j - 1) == v21 && v22 == *j;
    if (v25 || (sub_1B22531F0() & 1) != 0)
    {
      break;
    }

    ++v23;
  }

  if (v15 >= v23)
  {
LABEL_22:

    v8 = v37;
    v9 = v36;
LABEL_23:
    LOBYTE(__src[0]) = v8;
    BYTE1(__src[0]) = v9;
    __src[1] = v38;
    a3 = sub_1B215A67C(a2, a3, v40);

    v39 = *(a3 + 16);
    if (!v39)
    {
      goto LABEL_3;
    }

    v26 = 0;
    for (k = (a3 + 64); ; k += 5)
    {
      if (v39 == v26)
      {
        goto LABEL_3;
      }

      if (v26 >= *(a3 + 16))
      {
        __break(1u);
        goto LABEL_38;
      }

      v41 = v26;
      v28 = *(k - 3);
      v29 = *(k - 16);
      v30 = *(k - 1);
      v31 = *k;
      v52[0] = *(k - 4);
      v52[1] = v28;
      v53 = v29;
      v54 = v30;
      v55 = v31;
      v50 = 0;
      memset(v49, 0, sizeof(v49));
      sub_1B2122784(v49, &v43);
      sub_1B21619D8(&qword_1EB7A0F70, &qword_1B2257590);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1B22546B0;
      __src[0] = 0xD000000000000013;
      __src[1] = 0x80000001B226FBB0;
      __src[2] = MEMORY[0x1E69E7CC0];
      __src[3] = MEMORY[0x1E69E7CC8];
      sub_1B2114CC4(__src);
      memcpy((v32 + 32), __src, 0xB8uLL);
      memset(v45, 0, sizeof(v45));
      v46 = 0;
      v47 = v32;

      sub_1B2142B5C(&v43, v45);
      v48 = 2;
      sub_1B2146A54(&v43);
      sub_1B2122784(v44, v42);
      sub_1B21619D8(&qword_1EB7A1398, &qword_1B2257E30);
      swift_allocObject();

      sub_1B2181080(v33, 0, 0, v42);
      a2 = sub_1B223CCB4();

      sub_1B2142D18(&v43);
      sub_1B212AC5C(v45, &qword_1EB7A1C18, &qword_1B2259C90);
      sub_1B212AC5C(v49, &qword_1EB7A1370, &unk_1B2257580);

      if ((a2 & 0xFE) == 2 || (a2 & 1) == 0)
      {
        break;
      }

      if (!v29)
      {
        sub_1B21A3674(v56);
        goto LABEL_32;
      }

      if (v29 == 1)
      {
        break;
      }

      sub_1B21A36A0(v56);

LABEL_33:
      v26 = v41 + 1;
    }

    LOBYTE(v43) = 1;

    v34 = v56;

    sub_1B223C1CC(&v43, v34, v52, v34);
LABEL_32:

    goto LABEL_33;
  }

LABEL_38:
  __src[0] = 0;
  __src[1] = 0xE000000000000000;
  sub_1B2252CD0();

  __src[0] = 0xD00000000000002ELL;
  __src[1] = 0x80000001B226FC00;
  v43 = a2;
  v44[0] = a3;

  v35 = sub_1B2252330();
  MEMORY[0x1B2741EB0](v35);

  sub_1B2252EC0();
  __break(1u);
}

void sub_1B21599A8(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a2;
  v11 = a2 & 0x100;
  if (a2)
  {
    v12[0] = 0;
    v14 = 0;

    sub_1B2236ABC(&v14, a1, v11 | 1, a3, a1, v12);
    if (v5)
    {
      return;
    }

    if (v12[0])
    {
      sub_1B2236D30();
    }
  }

  v12[0] = v9 & 1;
  v12[1] = HIBYTE(v11);
  v13 = a3;
  sub_1B21593B0(a1, a4, a5, a4);
}

void sub_1B2159A74()
{
  sub_1B21162A4();
  if (v4)
  {
    v3 = 0;
  }

  sub_1B21599A8(v1, v3 | v2, v0[3], v0[4], v0[5]);
}

uint64_t sub_1B2159AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1B2122784(a6, v14);
  sub_1B21619D8(&qword_1EB7A0F70, &qword_1B2257590);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1B22546B0;
  __src[0] = a2;
  __src[1] = a3;
  __src[2] = a4;
  __src[3] = a5;
  sub_1B2114CC4(__src);
  memcpy((v11 + 32), __src, 0xB8uLL);
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  v17 = v11;

  sub_1B2142B5C(v14, v15);
  v18 = 2;
  v12 = sub_1B2159F80(a1, v15);
  sub_1B212AC5C(v15, &qword_1EB7A1C18, &qword_1B2259C90);
  return v12;
}

uint64_t DatabaseMigrator.appliedIdentifiers(_:)(uint64_t a1)
{
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v3 = sub_1B2159AB8(a1, 0xD000000000000026, 0x80000001B226FB00, MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC8], v9);
  v4 = v1;
  if (v1)
  {
    sub_1B212AC5C(v9, &qword_1EB7A1370, &unk_1B2257580);

    v5._countAndFlagsBits = 0x67696D5F62647267;
    v5._object = 0xEF736E6F69746172;
    v6 = Database.tableExists(_:)(v5);
    if (v7)
    {
    }

    else if (!v6)
    {

      return MEMORY[0x1E69E7CD0];
    }

    swift_willThrow();
  }

  else
  {
    v2 = v3;
    sub_1B212AC5C(v9, &qword_1EB7A1370, &unk_1B2257580);
  }

  return v2;
}

void DatabaseMigrator.appliedMigrations(_:)(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = DatabaseMigrator.appliedIdentifiers(_:)(a1);
  if (!v2)
  {
    v9 = v4;
    v10 = *(v3 + 16);
    if (v10)
    {
      v45 = MEMORY[0x1E69E7CC0];
      sub_1B2116B10(0, v10, 0, v5, v6, v7, v8);
      v11 = v45;
      v12 = (v3 + 40);
      do
      {
        v13 = *(v12 - 1);
        v14 = *v12;
        v16 = *(v45 + 16);
        v15 = *(v45 + 24);
        v17 = v16 + 1;

        if (v16 >= v15 >> 1)
        {
          v19 = sub_1B2112D3C();
          sub_1B2116B10(v19, v16 + 1, 1, v20, v21, v22, v23);
        }

        *(v45 + 16) = v17;
        v18 = v45 + 16 * v16;
        *(v18 + 32) = v13;
        *(v18 + 40) = v14;
        v12 += 5;
        --v10;
      }

      while (v10);
    }

    else
    {
      v11 = MEMORY[0x1E69E7CC0];
      v17 = *(MEMORY[0x1E69E7CC0] + 16);
    }

    v24 = 0;
    v25 = MEMORY[0x1E69E7CC0];
    v43 = v17;
    while (1)
    {
LABEL_10:
      if (v24 == v17)
      {

        return;
      }

      v26 = v24;
      if (v24 >= *(v11 + 16))
      {
        break;
      }

      ++v24;
      if (*(v9 + 16))
      {
        v27 = (v11 + 32 + 16 * v26);
        v29 = *v27;
        v28 = v27[1];
        sub_1B2253420();

        sub_1B2252370();
        v30 = sub_1B2253470();
        v31 = ~(-1 << *(v9 + 32));
        do
        {
          v32 = v30 & v31;
          if (((*(v9 + 56 + (((v30 & v31) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v30 & v31)) & 1) == 0)
          {

            v17 = v43;
            goto LABEL_10;
          }

          v33 = (*(v9 + 48) + 16 * v32);
          if (*v33 == v29 && v33[1] == v28)
          {
            break;
          }

          v35 = sub_1B22531F0();
          v30 = v32 + 1;
        }

        while ((v35 & 1) == 0);
        v44 = v24;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1B2116B10(0, *(v25 + 16) + 1, 1, v36, v37, v38, v39);
        }

        v41 = *(v25 + 16);
        v40 = *(v25 + 24);
        if (v41 >= v40 >> 1)
        {
          sub_1B2116B10(v40 > 1, v41 + 1, 1, v36, v37, v38, v39);
        }

        *(v25 + 16) = v41 + 1;
        v42 = v25 + 16 * v41;
        *(v42 + 32) = v29;
        *(v42 + 40) = v28;
        v17 = v43;
        v24 = v44;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1B2159F80(uint64_t a1, uint64_t a2)
{
  sub_1B2146A54(&v9);
  if (!v2)
  {
    sub_1B2122784(&v10, v8);
    sub_1B21619D8(qword_1EB7A2350, &unk_1B22604F0);
    swift_allocObject();

    v6 = sub_1B215A0E0(v4, 0, 0, v8);
    v11 = MEMORY[0x1E69E7CD0];
    swift_beginAccess();
    if (*(v6 + 24) == 1)
    {

      a2 = MEMORY[0x1E69E7CD0];
    }

    else
    {
      v7 = v6[2];

      sub_1B215A300(v7, v6, &v11);
      *(v6 + 24) = 1;

      a2 = v11;
    }

    sub_1B2142D18(&v9);
  }

  return a2;
}

uint64_t *sub_1B215A0E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v11 = *v4;
  *(v4 + 24) = 0;
  v4[2] = a1;
  v12 = v11;
  sub_1B2122784(a4, &v19);
  if (!v20)
  {

    sub_1B212AC5C(&v19, &qword_1EB7A1370, &unk_1B2257580);
    *(v6 + 7) = 0;
    goto LABEL_8;
  }

  v25 = v12;
  sub_1B2134D5C(&v19, v22);
  v13 = v23;
  v14 = v24;
  sub_1B21139A0(v22, v23);
  v20 = type metadata accessor for Statement();
  v21 = &protocol witness table for Statement;
  *&v19 = a1;
  swift_retain_n();
  v15 = sub_1B21B2B3C(0, &v19, v13, v14);
  if (v5)
  {
    sub_1B211A378(a2, a3);

    sub_1B212AC5C(a4, &qword_1EB7A1370, &unk_1B2257580);
    sub_1B2113208(&v19);
    sub_1B2113208(v22);

    swift_deallocPartialClassInstance();
    return v6;
  }

  v17 = v15;
  result = sub_1B2113208(&v19);
  if (v17 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v17 <= 0x7FFFFFFF)
  {
    *(v6 + 7) = v17;
    sub_1B2113208(v22);
LABEL_8:
    v22[0] = a2;
    v22[1] = a3;
    sub_1B2119E50(v22, v16);
    sub_1B212AC5C(a4, &qword_1EB7A1370, &unk_1B2257580);

    sub_1B211A378(a2, a3);
    if (v5)
    {
    }

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B215A47C(sqlite3_stmt *a1)
{
  v3 = *(v1 + 28);
  v4 = v3;
  if (sqlite3_column_type(a1, v3) == 5)
  {
    goto LABEL_7;
  }

  if (!sqlite3_column_text(a1, v4))
  {
    __break(1u);
LABEL_7:
    v6 = *(v1 + 16);
    v7 = v6[2];
    v8 = Statement.columnNames.getter();
    sub_1B2113624(v7, v8, v9, v10, v11, v12, v13, v14, v31, v32, v33, v34, v35, v36, SDWORD2(v36), SHIDWORD(v36), v37, v38, *(&v38 + 1), v39, *(&v39 + 1), v40, *(&v40 + 1), v41, *(&v41 + 1), v42, *(&v42 + 1), v43, *(&v43 + 1), v44, *(&v44 + 1));
    v16 = v15;
    v18 = v17;
    type metadata accessor for Row();
    v19 = swift_allocObject();
    v24 = sub_1B211EF2C(v16, v18, v19, v20, v21, v22, v23);
    v25 = Statement.sql.getter();
    v26 = v6[13];
    v27 = v6[14];
    *&v42 = v24;
    *(&v42 + 1) = v4;
    *&v43 = 0;
    BYTE8(v43) = 1;
    *&v44 = v25;
    *(&v44 + 1) = v28;
    *&v45 = v26;
    *(&v45 + 1) = v27;
    sub_1B21A2FC0();
    swift_allocError();
    v30 = v29;
    v38 = v42;
    v39 = v43;
    v40 = v44;
    v41 = v45;

    sub_1B21320F0(a1, v4, &v36);
    v33 = v36;
    LOBYTE(v34) = v37;
    sub_1B2183238(MEMORY[0x1E69E6158], &v38, &v33, v30);
    sub_1B2113A44(v33, *(&v33 + 1), v34);
    sub_1B218450C(&v42);
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  return sub_1B2252400();
}

char *sub_1B215A618(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return sub_1B2117990(a3, result);
  }

  return result;
}

uint64_t sub_1B215A638(uint64_t a1)
{
  if (*(a1 + 16))
  {
  }

  return sub_1B2112FD0();
}

uint64_t sub_1B215A67C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *(v3 + 8);
  v7 = *(v6 + 16);
  v44 = v6;
  v8 = (v6 + 64);
  v45 = -v7;
  v46 = a3;
  v9 = MEMORY[0x1E69E7CC0];
  v10 = -1;
  v43 = result;
  while (v45 + v10 != -1)
  {
    if (++v10 >= *(v44 + 16))
    {
      goto LABEL_36;
    }

    v12 = *(v8 - 4);
    v11 = *(v8 - 3);
    LODWORD(v47) = *(v8 - 16);
    v13 = *(v8 - 1);
    v14 = *v8;
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1B215AA98();
      v9 = v20;
    }

    v15 = *(v9 + 16);
    v16 = v9;
    if (v15 >= *(v9 + 24) >> 1)
    {
      sub_1B215AA98();
      v16 = v21;
    }

    *(v16 + 16) = v15 + 1;
    v9 = v16;
    v17 = v16 + 40 * v15;
    *(v17 + 32) = v12;
    *(v17 + 40) = v11;
    *(v17 + 48) = v47;
    *(v17 + 56) = v13;
    *(v17 + 64) = v14;
    v5 = v43;
    if (v12 == v43 && v11 == a2)
    {

      break;
    }

    v8 += 5;
    v19 = sub_1B22531F0();

    if (v19)
    {
      break;
    }
  }

  sub_1B215AAC8(v9, &v52);
  v22 = v53;
  if (!v53)
  {
    goto LABEL_21;
  }

  v23 = v52;
  v54[0] = v52;
  v54[1] = v53;

  if (v23 == v5 && v22 == a2)
  {
    goto LABEL_22;
  }

  v25 = sub_1B22531F0();
  result = sub_1B2158CA0(v54);
  if ((v25 & 1) == 0)
  {
LABEL_21:
    sub_1B2252CD0();

    v50 = 0xD000000000000015;
    v51 = 0x80000001B226FC90;
    v48 = v5;
    v49 = a2;

    v26 = sub_1B2252330();
    MEMORY[0x1B2741EB0](v26);

    v42 = 0;
    v41 = 337;
    sub_1B2252EC0();
    __break(1u);
LABEL_22:
    result = sub_1B2158CA0(v54);
  }

  v27 = 0;
  v47 = *(v9 + 16);
  v44 = MEMORY[0x1E69E7CC0];
  v45 = v9;
LABEL_24:
  for (i = 40 * v27; ; i += 40)
  {
    if (v47 == v27)
    {

      return v44;
    }

    if (v27 >= *(v9 + 16))
    {
      break;
    }

    v29 = v9 + i;
    v30 = *(v9 + i + 32);
    v31 = *(v9 + i + 40);
    v32 = *(v9 + i + 48);
    v34 = *(v29 + 56);
    v33 = *(v29 + 64);
    v50 = v30;
    v51 = v31;
    MEMORY[0x1EEE9AC00](result);
    v41 = &v50;

    if (!sub_1B2158BF0(sub_1B2158ED4, &v40, v46))
    {
      v35 = v44;
      result = swift_isUniquelyReferenced_nonNull_native();
      v48 = v35;
      if ((result & 1) == 0)
      {
        result = sub_1B216F010(0, *(v44 + 16) + 1, 1);
        v44 = v48;
      }

      v37 = *(v44 + 16);
      v36 = *(v44 + 24);
      if (v37 >= v36 >> 1)
      {
        result = sub_1B216F010(v36 > 1, v37 + 1, 1);
        v44 = v48;
      }

      ++v27;
      v38 = v44;
      *(v44 + 16) = v37 + 1;
      v39 = v38 + 40 * v37;
      *(v39 + 32) = v30;
      *(v39 + 40) = v31;
      *(v39 + 48) = v32;
      *(v39 + 56) = v34;
      *(v39 + 64) = v33;
      v9 = v45;
      goto LABEL_24;
    }

    ++v27;
    v9 = v45;
  }

  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_1B215AAC8@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = (result + 40 * v3);
    v6 = *(v4 - 1);
    v5 = *v4;
    v7 = *(v4 + 8);
    v9 = v4[2];
    v8 = v4[3];
  }

  else
  {
    v6 = 0;
    v5 = 0;
    v7 = 0;
    v9 = 0;
    v8 = 0;
  }

  *a2 = v6;
  a2[1] = v5;
  a2[2] = v7;
  a2[3] = v9;
  a2[4] = v8;
  return result;
}

uint64_t DatabaseMigrator.hasBeenSuperseded(_:)(uint64_t a1)
{
  v4 = *(v1 + 8);
  v5 = DatabaseMigrator.appliedIdentifiers(_:)(a1);
  if (!v2)
  {
    v10 = *(v4 + 16);
    v11 = MEMORY[0x1E69E7CC0];
    if (v10)
    {
      v12 = v5;
      v37[0] = MEMORY[0x1E69E7CC0];
      sub_1B2116B10(0, v10, 0, v6, v7, v8, v9);
      v11 = v37[0];
      v13 = (v4 + 40);
      do
      {
        v15 = *(v13 - 1);
        v14 = *v13;
        v37[0] = v11;
        v17 = *(v11 + 16);
        v16 = *(v11 + 24);

        if (v17 >= v16 >> 1)
        {
          v19 = sub_1B2112D3C();
          sub_1B2116B10(v19, v17 + 1, 1, v20, v21, v22, v23);
          v11 = v37[0];
        }

        *(v11 + 16) = v17 + 1;
        v18 = v11 + 16 * v17;
        *(v18 + 32) = v15;
        *(v18 + 40) = v14;
        v13 += 5;
        --v10;
      }

      while (v10);
      v5 = v12;
    }

    v24 = v5 + 56;
    v25 = 1 << *(v5 + 32);
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v27 = v26 & *(v5 + 56);
    v28 = (v25 + 63) >> 6;
    v38 = v5;

    v30 = 0;
    while (v27)
    {
      v31 = v30;
LABEL_17:
      v32 = (*(v38 + 48) + ((v31 << 10) | (16 * __clz(__rbit64(v27)))));
      v33 = v32[1];
      v27 &= v27 - 1;
      v37[0] = *v32;
      v37[1] = v33;
      MEMORY[0x1EEE9AC00](v29);
      v36[2] = v37;

      v34 = sub_1B2158BF0(sub_1B2158EB4, v36, v11);

      if (!v34)
      {
        v3 = 1;
        goto LABEL_20;
      }
    }

    while (1)
    {
      v31 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
        JUMPOUT(0x1B215AD64);
      }

      if (v31 >= v28)
      {
        break;
      }

      v27 = *(v24 + 8 * v31);
      ++v30;
      if (v27)
      {
        v30 = v31;
        goto LABEL_17;
      }
    }

    v3 = 0;
LABEL_20:
  }

  return v3 & 1;
}

uint64_t sub_1B215AD8C()
{

  return swift_deallocObject();
}

uint64_t sub_1B215AE08()
{

  sub_1B2112820();

  return swift_deallocObject();
}

uint64_t sub_1B215AE38()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1B215AE78()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1B215AF34()
{
  v1 = *(v0 + 16);
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  v2 = *(sub_1B2253480() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    (*(*(v1 - 8) + 8))(v0 + v3, v1);
  }

  return swift_deallocObject();
}

uint64_t sub_1B215B04C()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1B215B09C()
{

  return swift_deallocObject();
}

uint64_t sub_1B215B0E4()
{

  return swift_deallocObject();
}

uint64_t sub_1B215B11C()
{

  return swift_deallocObject();
}

BOOL sub_1B215B16C@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1B2167600();
  *a1 = result;
  return result;
}

__n128 sub_1B215B1D4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1B215B220()
{
  sub_1B213B9FC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176) | (*(v0 + 178) << 16));

  return swift_deallocObject();
}

uint64_t sub_1B215B350()
{

  return swift_deallocObject();
}

uint64_t sub_1B215B414()
{

  return swift_deallocObject();
}

uint64_t sub_1B215B4D4()
{

  if (v0[10])
  {
  }

  if (v0[19])
  {
  }

  if (v0[21])
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1B215B574()
{

  if (v0[11])
  {
  }

  if (v0[20])
  {
  }

  if (v0[22])
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1B215B614()
{

  return swift_deallocObject();
}

uint64_t sub_1B215B64C()
{
  sub_1B2114F84();
  sub_1B214DF8C(*(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232), *(v0 + 240), *(v0 + 248), *(v0 + 256), *(v0 + 264), *(v0 + 272), *(v0 + 280), *(v0 + 288), *(v0 + 296), *(v0 + 304), *(v0 + 312), *(v0 + 320), *(v0 + 328), *(v0 + 336), *(v0 + 344));

  return swift_deallocObject();
}

uint64_t sub_1B215B6FC()
{
  sub_1B2113208((v0 + 16));
  sub_1B2113208((v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_1B215B7A8()
{

  sub_1B2113208((v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1B215B808@<X0>(uint64_t a1@<X8>)
{
  result = static UInt.fromDatabaseValue(_:)();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

sqlite3_int64 sub_1B215B838@<X0>(sqlite3_stmt *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  result = sqlite3_column_int64(a1, a2);
  *a3 = result & ~(result >> 63);
  *(a3 + 8) = result < 0;
  return result;
}

uint64_t sub_1B215B8C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  sub_1B2144060();

  return sub_1B2252600();
}

uint64_t sub_1B215B994()
{

  return swift_deallocObject();
}

uint64_t sub_1B215BA18()
{

  sub_1B2117A4C();

  return swift_deallocObject();
}

uint64_t sub_1B215BA48()
{

  sub_1B2114ED8();

  return swift_deallocObject();
}

uint64_t sub_1B215BAA4()
{
  swift_unknownObjectRelease();
  sub_1B2117A4C();

  return swift_deallocObject();
}

uint64_t sub_1B215BB80()
{

  sub_1B2117C44();

  return swift_deallocObject();
}

uint64_t sub_1B215BBBC()
{

  sub_1B2117C44();

  return swift_deallocObject();
}

__n128 sub_1B215BC98(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1B215BCE0()
{

  sub_1B2115660();

  return swift_deallocObject();
}

uint64_t sub_1B215BDC8()
{
  swift_weakDestroy();
  sub_1B2115660();

  return swift_deallocObject();
}

uint64_t sub_1B215BDFC()
{

  return swift_deallocObject();
}

uint64_t sub_1B215BE38()
{

  return swift_deallocObject();
}

uint64_t sub_1B215BEDC()
{

  return swift_deallocObject();
}

uint64_t sub_1B215BF20@<X0>(uint64_t *a1@<X8>)
{
  result = FTS5TableDefinition.content.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B215BF78@<X0>(uint64_t *a1@<X8>)
{
  result = FTS5TableDefinition.contentRowID.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B215C0A8()
{

  return swift_deallocObject();
}

uint64_t sub_1B215C0E0()
{

  return swift_deallocObject();
}

uint64_t sub_1B215C118()
{

  return swift_deallocObject();
}

uint64_t sub_1B215C150()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);

  if (*(v0 + 72))
  {
  }

  (*(v2 + 8))(v0 + ((v3 + 89) & ~v3), v1);

  return swift_deallocObject();
}

__n128 sub_1B215C228(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1B215C29C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1B22531F0();
  }
}

uint64_t sub_1B215C31C()
{
  if (*(v0 + 32))
  {
  }

  if (*(v0 + 48))
  {
  }

  sub_1B2118030();

  return swift_deallocObject();
}

uint64_t sub_1B215C368()
{
  sub_1B2113208((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1B215C3A4()
{

  sub_1B2118030();

  return swift_deallocObject();
}

uint64_t sub_1B215C3EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1B21AF404(a1, a2, a3);
}

uint64_t sub_1B215C538()
{
  v1 = *(v0 + 16);
  v2 = sub_1B211510C();
  v6 = _s17ValueSubscriptionC9ObservingVMa(v2, v3, v4, v5);
  sub_1B211208C(v6);
  v8 = v7;
  v10 = v9;
  v11 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v12 = (*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(*(v1 - 8) + 8))(v0 + v11, v1);

  return swift_deallocObject();
}

uint64_t sub_1B215C60C()
{
  if (*(v0 + 40))
  {
    sub_1B2113208((v0 + 16));
  }

  return swift_deallocObject();
}

uint64_t sub_1B215C64C()
{

  sub_1B2117C44();

  return swift_deallocObject();
}

uint64_t sub_1B215C680()
{
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  sub_1B211510C();
  sub_1B2252760();
  sub_1B21118A0();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1B215C724()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1B215C75C()
{
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  sub_1B211510C();
  sub_1B2252760();
  sub_1B21118A0();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1B215C814()
{

  return swift_deallocObject();
}

uint64_t sub_1B215C860()
{

  sub_1B2113B74();

  return swift_deallocObject();
}

uint64_t sub_1B215C894()
{

  return swift_deallocObject();
}

uint64_t sub_1B215C940()
{
  sub_1B2113208((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1B215C9B0()
{
  sub_1B213B9FC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176) | (*(v0 + 178) << 16));

  return swift_deallocObject();
}

uint64_t sub_1B215CAB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1B2252120();
    v9 = a1 + *(a3 + 64);

    return sub_1B2122A98(v9, a2, v8);
  }
}

uint64_t sub_1B215CB40(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = sub_1B2252120();
    v8 = v5 + *(a4 + 64);

    return sub_1B21117B4(v8, a2, a2, v7);
  }

  return result;
}

__n128 sub_1B215CC28(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1B215CC3C()
{

  sub_1B2115660();

  return swift_deallocObject();
}

uint64_t sub_1B215CC70()
{

  if (v0[7])
  {
  }

  if (v0[16])
  {
  }

  if (v0[18])
  {
  }

  if (v0[28])
  {
  }

  if (v0[37])
  {
  }

  if (v0[39])
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1B215CDE8()
{
  sub_1B2113208((v0 + 16));

  return swift_deallocObject();
}

void sub_1B215CE40(__n128 a1)
{
  v2 = *v1;
  v3 = *(v1 + 16);
  if (*(v1 + 16))
  {
    if (v3 != 1 || v2 < -9.22337204e18 || v2 >= 9.22337204e18)
    {
      v6 = *(v1 + 8);
      v7 = *(v1 + 24);
      v18[3] = &type metadata for DatabaseValueDecodingContainer;
      v18[4] = sub_1B21CE3F4();
      sub_1B2113B74();
      v8 = swift_allocObject();
      LOBYTE(v18[0]) = v8;
      *(v8 + 16) = v2;
      *(v8 + 24) = v6;
      *(v8 + 32) = v3;
      *(v8 + 40) = v7;
      sub_1B2252D40();
      swift_allocError();
      sub_1B2113A20(*&v2, v6, v3);

      sub_1B2115188(v9, v10, v11, v12, v13, v14, v15, v16, v17, v18[0]);
      sub_1B2252D20();
      sub_1B2113208(v18);
      swift_willThrow();
      return;
    }

    if ((~*&v2 & 0x7FF0000000000000) != 0)
    {
      if (v2 > -9.22337204e18)
      {
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_1B215D00C()
{
  sub_1B2114F84();
  v1 = sub_1B212CE50();
  sub_1B211668C(v2, v3, v4, v5, v6, v7, v8, v9, v1, v10, v11, v12, v13, v0[21].n128_u16[4] | (v0[21].n128_u8[10] << 16));
  sub_1B211668C(v0[22].n128_i64[0], v0[22].n128_u64[1], v0[23].n128_i64[0], v0[23].n128_u64[1], v0[24].n128_i64[0], v0[24].n128_i64[1], v0[25].n128_i64[0], v0[25].n128_i64[1], v0[26], v0[27], v0[28], v0[29], v0[30], v0[32].n128_u16[0] | (v0[32].n128_u8[2] << 16));

  return swift_deallocObject();
}

uint64_t sub_1B215D090()
{
  sub_1B2114F84();

  return swift_deallocObject();
}

uint64_t sub_1B215D0D4()
{

  sub_1B211668C(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 112), *(v0 + 128), *(v0 + 144), *(v0 + 160), *(v0 + 192) | (*(v0 + 194) << 16));
  sub_1B211668C(*(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232), *(v0 + 240), *(v0 + 248), *(v0 + 256), *(v0 + 264), *(v0 + 280), *(v0 + 296), *(v0 + 312), *(v0 + 328), *(v0 + 360) | (*(v0 + 362) << 16));

  return swift_deallocObject();
}

__n128 sub_1B215D220(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

__n128 sub_1B215D26C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1B215D280()
{

  return swift_deallocObject();
}

uint64_t sub_1B215D354()
{
  sub_1B2113208((v0 + 16));
  sub_1B2113BC0();

  return swift_deallocObject();
}

uint64_t sub_1B215D4B0()
{

  return swift_deallocObject();
}

uint64_t sub_1B215D4F4()
{

  return swift_deallocObject();
}

uint64_t sub_1B215D534()
{
  (*(*(*(v0 + 24) - 8) + 8))(v0 + ((*(*(*(v0 + 24) - 8) + 80) + 48) & ~*(*(*(v0 + 24) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1B215D604()
{

  return swift_deallocObject();
}

uint64_t sub_1B215D640()
{
  if (*(v0 + 40))
  {
    sub_1B2113208((v0 + 16));
  }

  return swift_deallocObject();
}

uint64_t sub_1B215D694()
{

  sub_1B2117C44();

  return swift_deallocObject();
}

uint64_t sub_1B215D6D0()
{

  return swift_deallocObject();
}

uint64_t sub_1B215D70C()
{
  v1 = sub_1B2117D64();
  sub_1B21EDD18(v2, v3, v4, v5, v6, v7, v8, v9, v1.n128_i64[0], v1.n128_i64[1], v10, v11, v12, v13, v14, v15, *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176));

  return swift_deallocObject();
}

__n128 sub_1B215D78C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1B215D800()
{

  return swift_deallocObject();
}

uint64_t sub_1B215D980()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v34[0] = *(v0 + 16);
  v34[1] = v1;
  v34[2] = v2;
  v34[3] = v3;
  v35 = *(v0 + 48);
  v33 = v35;
  v4 = type metadata accessor for ReceiveValuesOnSubscription.Target(0, v34);
  sub_1B21158B4();
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  v8 = v6 + *(v7 + 64);
  v9 = sub_1B211D9CC();
  sub_1B212D0A4();
  sub_1B2114880();
  v10 = sub_1B2252000();
  sub_1B211208C(v10);
  v12 = (v8 + *(v11 + 80)) & ~*(v11 + 80);
  sub_1B2112C6C();
  v13 = sub_1B21146D8();
  v15 = v14(v13);
  v16 = *(v4 + 68);
  sub_1B2114454(v15, v17, v18, v19, v20, v21, v22, v23, v33);
  v26 = sub_1B21116A4(v24, v25);
  if (!sub_1B2122A98(v0 + v6 + v16, 1, v26))
  {
    sub_1B2112C6C();
    (*(v27 + 8))(v0 + v6 + v16, v26);
  }

  sub_1B2111B40();
  v29 = sub_1B21180F0(v28);
  v30(v29);
  if (!sub_1B2122A98(v0 + v12, 1, v9))
  {
    sub_1B2111808();
    (*(v31 + 8))(v0 + v12, v9);
  }

  return swift_deallocObject();
}

uint64_t sub_1B215DFB0()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1B2114880();
  v2 = sub_1B2252000();
  sub_1B211208C(v2);
  v4 = (*(v3 + 80) + 72) & ~*(v3 + 80);

  if (!sub_1B2122A98(v0 + v4, 1, AssociatedTypeWitness))
  {
    sub_1B2111808();
    (*(v5 + 8))(v0 + v4, AssociatedTypeWitness);
  }

  return swift_deallocObject();
}

uint64_t sub_1B215E2C0()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B21115E0();
  v3 = v2;
  v4 = (*(v2 + 80) + 72) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1B215E394()
{
  sub_1B2113208((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1B215E3CC()
{
  sub_1B2113208((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1B215E404()
{
  sub_1B2111808();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 64) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1B215E49C()
{
  sub_1B213B9FC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176) | (*(v0 + 178) << 16));
  sub_1B214DF8C(*(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232), *(v0 + 240), *(v0 + 248), *(v0 + 256), *(v0 + 264), *(v0 + 272), *(v0 + 280), *(v0 + 288), *(v0 + 296), *(v0 + 304), *(v0 + 312), *(v0 + 320), *(v0 + 328), *(v0 + 336), *(v0 + 344));

  return swift_deallocObject();
}

uint64_t sub_1B215E56C()
{

  sub_1B2111904();

  return swift_deallocObject();
}

uint64_t sub_1B215E5BC@<X0>(uint64_t *a1@<X8>)
{
  result = FTS4TableDefinition.content.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B215E61C()
{
  v1 = *(v0 + 32);
  if (v1 != 255)
  {
    sub_1B2113A44(*(v0 + 16), *(v0 + 24), v1);
  }

  return swift_deallocObject();
}

BOOL sub_1B215E680(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

BOOL sub_1B215E6AC(_DWORD *a1, int a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_1B215E718()
{

  return swift_deallocObject();
}

uint64_t sub_1B215E78C()
{
  if (v0[4])
  {
  }

  if (v0[6])
  {
  }

  if (v0[8])
  {
  }

  if (v0[10])
  {
  }

  if (v0[12])
  {
  }

  if (v0[15] >= 2uLL)
  {
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1B215E85C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1B215E894()
{

  return swift_deallocObject();
}

uint64_t sub_1B215E8CC()
{

  return swift_deallocObject();
}

uint64_t sub_1B215E90C()
{
  v1 = *(v0 + 16);
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  v2 = *(sub_1B2253480() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    (*(*(v1 - 8) + 8))(v0 + v3, v1);
  }

  return swift_deallocObject();
}

uint64_t sub_1B215EA64(uint64_t result)
{
  if (result)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1B215EAA0()
{

  return swift_deallocObject();
}

uint64_t sub_1B215EB20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B2251D00();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_1B2122A98(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 7)
    {
      return v8 - 6;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1B215EBC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B2251D00();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1B21117B4(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 6;
  }

  return result;
}

uint64_t sub_1B215ECC0()
{

  sub_1B211668C(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 120), *(v0 + 136), *(v0 + 152), *(v0 + 168), *(v0 + 200) | (*(v0 + 202) << 16));

  return swift_deallocObject();
}

uint64_t sub_1B215ED38()
{

  sub_1B211668C(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 128), *(v0 + 144), *(v0 + 160), *(v0 + 176), *(v0 + 208) | (*(v0 + 210) << 16));
  sub_1B211668C(*(v0 + 216), *(v0 + 224), *(v0 + 232), *(v0 + 240), *(v0 + 248), *(v0 + 256), *(v0 + 264), *(v0 + 272), *(v0 + 280), *(v0 + 296), *(v0 + 312), *(v0 + 328), *(v0 + 344), *(v0 + 376) | (*(v0 + 378) << 16));
  v1 = *(v0 + 448);
  v2 = *(v0 + 488);
  v3 = *(v0 + 544) | (*(v0 + 546) << 16);
  if (v1 >> 1 == 0xFFFFFFFF)
  {
    v4 = v2 != 0;
    v5 = v2 == 1;
  }

  else
  {
    v4 = 1;
    v5 = 0;
  }

  if (!v5 && v4 || (v3 & 0xFE7E00) != 0)
  {
    sub_1B213B9FC(*(v0 + 384), *(v0 + 392), *(v0 + 400), *(v0 + 408), *(v0 + 416), *(v0 + 424), *(v0 + 432), *(v0 + 440), v1, *(v0 + 456), *(v0 + 464), *(v0 + 472), *(v0 + 480), v2, *(v0 + 496), *(v0 + 504), *(v0 + 512), *(v0 + 520), *(v0 + 528), *(v0 + 536), v3);
  }

  return swift_deallocObject();
}

uint64_t sub_1B215EF1C()
{

  return swift_deallocObject();
}

uint64_t sub_1B215EF88()
{

  return swift_deallocObject();
}

uint64_t sub_1B215EFC0()
{

  return swift_deallocObject();
}

uint64_t sub_1B215F084()
{

  return swift_deallocObject();
}

uint64_t sub_1B215F0D0()
{

  return swift_deallocObject();
}

uint64_t sub_1B215F120()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1B215F1A0()
{

  return swift_deallocObject();
}

uint64_t sub_1B215F20C()
{

  return swift_deallocObject();
}

GRDBInternal::IndexOptions sub_1B215F32C@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = IndexOptions.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1B215F36C@<X0>(uint64_t *a1@<X8>)
{
  result = IndexOptions.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B215F450()
{
  v1 = *(v0 + 16);
  sub_1B21115E0();
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  sub_1B2112DC0();
  v6 = v4 + *(v5 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8 = *(sub_1B2252000() - 8);
  v9 = (v6 + *(v8 + 80)) & ~*(v8 + 80);
  (*(v3 + 8))(v0 + v4, v1);
  if (!sub_1B2122A98(v0 + v9, 1, AssociatedTypeWitness))
  {
    (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v9, AssociatedTypeWitness);
  }

  return swift_deallocObject();
}

uint64_t sub_1B215F5F4()
{
  v1 = *(v0 + 16);
  sub_1B21115E0();
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  sub_1B2112DC0();
  v6 = v4 + *(v5 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B21115E0();
  v9 = v8;
  v10 = (v6 + *(v8 + 80)) & ~*(v8 + 80);
  (*(v3 + 8))(v0 + v4, v1);
  (*(v9 + 8))(v0 + v10, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1B215F760()
{

  sub_1B211668C(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 104), *(v0 + 120), *(v0 + 136), *(v0 + 152), *(v0 + 184) | (*(v0 + 186) << 16));

  return swift_deallocObject();
}

uint64_t sub_1B215F7D8()
{
  sub_1B211668C(v0[1].n128_i64[0], v0[1].n128_u64[1], v0[2].n128_i64[0], v0[2].n128_u64[1], v0[3].n128_i64[0], v0[3].n128_i64[1], v0[4].n128_i64[0], v0[4].n128_i64[1], v0[5], v0[6], v0[7], v0[8], v0[9], v0[11].n128_u16[0] | (v0[11].n128_u8[2] << 16));

  return swift_deallocObject();
}

uint64_t sub_1B215F840()
{

  sub_1B211668C(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 104), *(v0 + 120), *(v0 + 136), *(v0 + 152), *(v0 + 184) | (*(v0 + 186) << 16));

  return swift_deallocObject();
}

uint64_t sub_1B215F8B8()
{
  sub_1B211668C(v0[1].n128_i64[0], v0[1].n128_u64[1], v0[2].n128_i64[0], v0[2].n128_u64[1], v0[3].n128_i64[0], v0[3].n128_i64[1], v0[4].n128_i64[0], v0[4].n128_i64[1], v0[5], v0[6], v0[7], v0[8], v0[9], v0[11].n128_u16[0] | (v0[11].n128_u8[2] << 16));

  return swift_deallocObject();
}

uint64_t sub_1B215F920()
{

  sub_1B2117E34();

  return swift_deallocObject();
}

uint64_t sub_1B215F964()
{

  sub_1B2114ED8();

  return swift_deallocObject();
}

uint64_t sub_1B215F9A0()
{

  sub_1B2111904();

  return swift_deallocObject();
}

uint64_t sub_1B215F9D4()
{

  sub_1B2117E34();

  return swift_deallocObject();
}

uint64_t sub_1B215FA18()
{

  sub_1B2111904();

  return swift_deallocObject();
}

uint64_t sub_1B215FA58()
{

  sub_1B2114ED8();

  return swift_deallocObject();
}

uint64_t sub_1B215FAB0()
{

  return swift_deallocObject();
}

uint64_t sub_1B215FAF0()
{

  return swift_deallocObject();
}

uint64_t sub_1B215FB38()
{

  if (v0[7])
  {
  }

  if (v0[9])
  {
  }

  if (v0[11])
  {
  }

  if (v0[13])
  {
  }

  if (v0[15])
  {
  }

  if (v0[18] >= 2uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1B215FBE8()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  v2 = *(sub_1B2253480() - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    sub_1B2111808();
    (*(v5 + 8))(v0 + v3, AssociatedTypeWitness);
  }

  v6 = (v0 + v4);
  if (*(v0 + v4))
  {
  }

  if (v6[2])
  {
  }

  if (v6[4])
  {
  }

  if (v6[6])
  {
  }

  if (v6[8])
  {
  }

  if (v6[11] >= 2uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1B215FDB4()
{

  return swift_deallocObject();
}

_OWORD *sub_1B215FE70(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1B215FF6C@<X0>(uint64_t *a1@<X8>)
{
  result = Statement.columnNames.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B215FFA4()
{

  return swift_deallocObject();
}

uint64_t sub_1B2160004()
{

  return swift_deallocObject();
}

void sub_1B2160104(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((*v2 & a1) != 0)
  {
    *v2 &= ~a1;
  }

  sub_1B223C240(a2);
}

void sub_1B2160124(uint64_t a1@<X8>, int a2@<W0>)
{
  if ((*v2 & a2) != 0)
  {
    *v2 &= ~a2;
  }

  sub_1B2135364(a1);
}

uint64_t sub_1B2160230@<X0>(uint64_t *a1@<X8>)
{
  result = Database.ColumnType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B2160394()
{

  return swift_deallocObject();
}

void sub_1B2160478(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -2;
}

void sub_1B2160488()
{
  sub_1B2111608();
  sub_1B2115AF4();
  sub_1B2252EC0();
  __break(1u);
}

char *sub_1B21604EC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[216 * a2] <= a3)
  {
    return sub_1B2116900(result, a3, 216 * a2);
  }

  return result;
}

char *sub_1B216050C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return sub_1B2117990(a3, result);
  }

  return result;
}

uint64_t sub_1B216063C()
{

  return swift_deallocObject();
}

__n128 sub_1B21606D0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1B21606E4()
{
  sub_1B213B9FC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176) | (*(v0 + 178) << 16));

  return swift_deallocObject();
}

uint64_t sub_1B2160760()
{

  return swift_deallocObject();
}

uint64_t sub_1B2160798()
{
  sub_1B2113208((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1B2160818@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1B2252220();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1B2160848()
{
  sub_1B2252E60();

  return sub_1B2252190();
}

uint64_t getEnumTagSinglePayload for SuffixRowAdapter(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SuffixRowAdapter(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

char *sub_1B2160904(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return sub_1B2117990(a3, result);
  }

  return result;
}

char *sub_1B2160924(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return sub_1B2117990(a3, result);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Database.create(virtualTable:ifNotExists:using:)(Swift::String virtualTable, Swift::Bool ifNotExists, Swift::String using)
{
  object = using._object;
  countAndFlagsBits = using._countAndFlagsBits;
  v6 = virtualTable._object;
  v7 = virtualTable._countAndFlagsBits;
  sub_1B211728C();
  sub_1B2143F5C();
  v9 = v8;
  v11 = *(v8 + 16);
  v10 = *(v8 + 24);
  v12 = v11 + 1;
  if (v11 >= v10 >> 1)
  {
    sub_1B211156C(v10);
    sub_1B211728C();
    sub_1B211E4A4();
    sub_1B2143F5C();
    v9 = v28;
  }

  *(v9 + 16) = v12;
  v13 = v9 + 16 * v11;
  *(v13 + 32) = 0xD000000000000014;
  *(v13 + 40) = 0x80000001B226CD90;
  if (ifNotExists)
  {
    v14 = *(v9 + 24);
    if ((v11 + 2) > (v14 >> 1))
    {
      sub_1B211156C(v14);
      sub_1B211728C();
      sub_1B2143F5C();
      v9 = v32;
    }

    *(v9 + 16) = v11 + 2;
    sub_1B2121EFC(v9 + 16 * v12);
  }

  v33 = 34;
  v34 = 0xE100000000000000;
  MEMORY[0x1B2741EB0](v7, v6);
  MEMORY[0x1B2741EB0](34, 0xE100000000000000);
  v16 = *(v9 + 16);
  v15 = *(v9 + 24);
  v17 = v15 >> 1;
  v18 = v16 + 1;
  if (v15 >> 1 <= v16)
  {
    sub_1B211156C(v15);
    sub_1B211728C();
    sub_1B211E4A4();
    sub_1B2143F5C();
    v9 = v29;
    v15 = *(v29 + 24);
    v17 = v15 >> 1;
  }

  *(v9 + 16) = v18;
  v19 = v9 + 16 * v16;
  *(v19 + 32) = 34;
  *(v19 + 40) = 0xE100000000000000;
  v20 = v16 + 2;
  if (v17 < (v16 + 2))
  {
    sub_1B211156C(v15);
    sub_1B211728C();
    sub_1B2143F5C();
    v9 = v30;
  }

  *(v9 + 16) = v20;
  sub_1B2117A04(v9 + 16 * v18);
  v21 = *(v9 + 24);

  if ((v16 + 3) > (v21 >> 1))
  {
    sub_1B211728C();
    sub_1B211E4A4();
    sub_1B2143F5C();
    v9 = v31;
  }

  *(v9 + 16) = v16 + 3;
  v22 = v9 + 16 * v20;
  *(v22 + 32) = countAndFlagsBits;
  *(v22 + 40) = object;
  sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
  sub_1B215175C();
  v23 = sub_1B2252250();
  v25 = v24;

  v33 = MEMORY[0x1E69E7CC0];
  v34 = MEMORY[0x1E69E7CC8];
  v26.values._rawValue = &v33;
  v27._countAndFlagsBits = v23;
  v27._object = v25;
  Database.execute(sql:arguments:)(v27, v26);
}

uint64_t Database.create<A>(virtualTable:ifNotExists:using:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void (*a5)(char *), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v74 = a2;
  v72 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  v16 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v18 = &v68 - v17;
  LOBYTE(v76) = a3;
  v19 = *(a8 + 32);
  v73 = a4;
  v71 = a7;
  v19(&v76, a7, a8, v16);
  if (a5)
  {

    a5(v18);
    if (v8)
    {
      sub_1B2112F4C(a5, a6);
      return (*(v15 + 8))(v18, AssociatedTypeWitness);
    }

    sub_1B2112F4C(a5, a6);
  }

  sub_1B211728C();
  sub_1B2143F5C();
  v21 = v20;
  v23 = *(v20 + 16);
  v22 = *(v20 + 24);
  v24 = v23 + 1;
  if (v23 >= v22 >> 1)
  {
    sub_1B211156C(v22);
    sub_1B211728C();
    sub_1B211E4A4();
    sub_1B2143F5C();
    v21 = v60;
  }

  *(v21 + 16) = v24;
  v25 = v21 + 16 * v23;
  *(v25 + 32) = 0xD000000000000014;
  *(v25 + 40) = 0x80000001B226CD90;
  v70 = v15;
  if (a3)
  {
    v26 = *(v21 + 24);
    v27 = v23 + 2;
    if (v27 > (v26 >> 1))
    {
      sub_1B211156C(v26);
      sub_1B211728C();
      sub_1B2122C40(v64);
      v21 = v65;
    }

    *(v21 + 16) = v27;
    sub_1B2121EFC(v21 + 16 * v24);
  }

  v76 = 34;
  v77 = 0xE100000000000000;
  MEMORY[0x1B2741EB0](v72, v74);
  MEMORY[0x1B2741EB0](34, 0xE100000000000000);
  v28 = v76;
  v29 = v77;
  v31 = *(v21 + 16);
  v30 = *(v21 + 24);
  v32 = v30 >> 1;
  v33 = v31 + 1;
  if (v30 >> 1 <= v31)
  {
    sub_1B211156C(v30);
    sub_1B211728C();
    sub_1B211E4A4();
    sub_1B2143F5C();
    v21 = v61;
    v30 = *(v61 + 24);
    v32 = v30 >> 1;
  }

  *(v21 + 16) = v33;
  v34 = v21 + 16 * v31;
  *(v34 + 32) = v28;
  *(v34 + 40) = v29;
  if (v32 < (v31 + 2))
  {
    sub_1B211156C(v30);
    sub_1B211728C();
    sub_1B2122C40(v62);
    v21 = v63;
  }

  *(v21 + 16) = v31 + 2;
  sub_1B2117A04(v21 + 16 * v33);
  v15 = v70;
  v35 = (*(a8 + 40))(v18, v75, v71, a8);
  if (v8)
  {

    return (*(v15 + 8))(v18, AssociatedTypeWitness);
  }

  v36 = v35;
  if (*(v35 + 16))
  {
    v37 = sub_1B214403C();
    v76 = v38(v37);
    v77 = v39;

    MEMORY[0x1B2741EB0](40, 0xE100000000000000);

    v40 = v77;
    v69 = v76;
    v76 = v36;
    sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
    sub_1B215175C();
    v41 = sub_1B2252250();
    v43 = v42;

    v76 = v69;
    v77 = v40;

    MEMORY[0x1B2741EB0](v41, v43);

    MEMORY[0x1B2741EB0](41, 0xE100000000000000);

    v44 = v76;
    v45 = v77;
  }

  else
  {

    v46 = sub_1B214403C();
    v44 = v47(v46);
    v45 = v48;
  }

  v50 = *(v21 + 16);
  v49 = *(v21 + 24);
  if (v50 >= v49 >> 1)
  {
    sub_1B211156C(v49);
    sub_1B211728C();
    sub_1B2122C40(v66);
    v21 = v67;
  }

  *(v21 + 16) = v50 + 1;
  v51 = v21 + 16 * v50;
  *(v51 + 32) = v44;
  *(v51 + 40) = v45;
  v76 = v21;
  sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
  sub_1B215175C();
  v52 = sub_1B2252250();
  v54 = v53;

  MEMORY[0x1EEE9AC00](v55);
  *(&v68 - 10) = v71;
  *(&v68 - 9) = a8;
  *(&v68 - 8) = v75;
  *(&v68 - 7) = v52;
  v57 = v72;
  v56 = v73;
  *(&v68 - 6) = v54;
  *(&v68 - 5) = v56;
  v58 = v74;
  *(&v68 - 4) = v57;
  *(&v68 - 3) = v58;
  *(&v68 - 2) = v18;
  Database.inSavepoint(_:)(sub_1B2161A68, (&v68 - 12));

  return (*(v70 + 8))(v18, AssociatedTypeWitness);
}

uint64_t sub_1B2161288(uint64_t a1, Swift::String sql, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  object = sql._object;
  v17[0] = MEMORY[0x1E69E7CC0];
  v17[1] = MEMORY[0x1E69E7CC8];
  sql._object = v17;
  countAndFlagsBits = sql._countAndFlagsBits;
  sql._countAndFlagsBits = object;
  Database.execute(sql:arguments:)(*(&sql - 8), *&sql._object);

  if (!v15)
  {
    (*(a8 + 48))(a1, a4, a5, a6, a7);
  }

  return 0;
}

void sub_1B2161368(uint64_t a2@<X8>)
{
  sub_1B216139C();
  *a2 = v3;
  *(a2 + 8) = v4 & 1;
}

uint64_t sub_1B21613E8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

void sub_1B2161444()
{
  v2 = sub_1B2115E10();
  *v1 = v0;
  if (!v2)
  {
    sub_1B2115530();
    sub_1B213B894();
    *v1 = v3;
  }
}

void sub_1B21614F0()
{
  v2 = sub_1B2115E10();
  *v1 = v0;
  if (!v2)
  {
    sub_1B2115530();
    sub_1B2143F5C();
    *v1 = v3;
  }
}

void sub_1B216156C()
{
  v2 = sub_1B2115E10();
  *v1 = v0;
  if (!v2)
  {
    sub_1B2115530();
    sub_1B2158D58();
    *v1 = v3;
  }
}

void sub_1B21615D0()
{
  v2 = sub_1B2115E10();
  *v1 = v0;
  if (!v2)
  {
    sub_1B2115530();
    sub_1B2162E10();
    *v1 = v3;
  }
}

void sub_1B2161634()
{
  v2 = sub_1B2115E10();
  *v1 = v0;
  if (!v2)
  {
    sub_1B2115530();
    sub_1B2158D58();
    *v1 = v3;
  }
}

void sub_1B2161698()
{
  v2 = sub_1B2115E10();
  *v1 = v0;
  if (!v2)
  {
    sub_1B2115530();
    sub_1B2158D58();
    *v1 = v3;
  }
}

void sub_1B21616FC()
{
  sub_1B2114EB4();
  if (!(v2 ^ v3 | v1))
  {
    sub_1B2117F10();
    sub_1B213B894();
    *v0 = v4;
  }
}

uint64_t sub_1B2161764(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

void sub_1B21617F4()
{
  sub_1B2114EB4();
  if (!(v2 ^ v3 | v1))
  {
    sub_1B2112F78();
    sub_1B2143F5C();
    *v0 = v4;
  }
}

void sub_1B2161868()
{
  sub_1B2114EB4();
  if (!(v2 ^ v3 | v1))
  {
    sub_1B2112F78();
    sub_1B2158D58();
    *v0 = v4;
  }
}

void sub_1B21618C4()
{
  sub_1B2114EB4();
  if (!(v2 ^ v3 | v1))
  {
    sub_1B2112F78();
    sub_1B2162E10();
    *v0 = v4;
  }
}

void sub_1B2161920()
{
  sub_1B2114EB4();
  if (!(v2 ^ v3 | v1))
  {
    sub_1B2112F78();
    sub_1B2158D58();
    *v0 = v4;
  }
}

void sub_1B216197C()
{
  sub_1B2114EB4();
  if (!(v2 ^ v3 | v1))
  {
    sub_1B2112F78();
    sub_1B2158D58();
    *v0 = v4;
  }
}

uint64_t sub_1B21619D8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1B2161A20(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VirtualTableConfiguration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for VirtualTableConfiguration(_BYTE *result, unsigned int a2, unsigned int a3)
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

__n128 sub_1B2161CA0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1B2161CB4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B2161CD4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 48) = v3;
  return result;
}

__n128 sub_1B2161D20(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1B2161D34(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_1B2161D88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 sub_1B2161DF0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_1B2161E04(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B2161E24(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 20) = v3;
  return result;
}

void sub_1B2161E78(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}