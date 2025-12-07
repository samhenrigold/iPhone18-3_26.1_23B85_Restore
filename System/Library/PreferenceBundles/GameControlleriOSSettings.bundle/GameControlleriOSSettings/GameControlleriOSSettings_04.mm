uint64_t sub_6932C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_69414()
{
  result = qword_118060;
  if (!qword_118060)
  {
    sub_EBC0(&qword_118010, &qword_E0620);
    sub_15FB8(&qword_116830, &qword_116818, &qword_DF1F0, &protocol conformance descriptor for Button<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_118060);
  }

  return result;
}

uint64_t sub_694E8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for GCSControllerCustomizeControlsView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_6955C()
{
  type metadata accessor for GCSControllerCustomizeControlsView(0);
  sub_DC40(&qword_1166E0, &qword_DD340);
  return sub_D77F8();
}

uint64_t sub_69618(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for GCSControllerCustomizeControlsView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_696AC()
{
  result = qword_118088;
  if (!qword_118088)
  {
    sub_EBC0(&qword_118080, &qword_E0688);
    sub_EBC0(&qword_118040, &qword_E0650);
    sub_D6D68();
    sub_15FB8(&qword_118048, &qword_118040, &qword_E0650, &protocol conformance descriptor for Button<A>);
    sub_6932C(&qword_116E28, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_118088);
  }

  return result;
}

unint64_t sub_697F0(uint64_t a1)
{
  v3 = *(type metadata accessor for GCSControllerCustomizeControlsView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_67060(a1, v4);
}

uint64_t sub_69860()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_69898()
{
  v1 = type metadata accessor for GCSControllerCustomizeControlsView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v0 + v3 + v1[5];
  sub_DC40(&qword_117EA0, &qword_E03A8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v8 = *(sub_DC40(&qword_117EA8, &qword_E03B0) + 32);
    v9 = sub_D6D88();
    (*(*(v9 - 8) + 8))(v6 + v8, v9);
  }

  sub_16AA0(*(v5 + v1[6]), *(v5 + v1[6] + 8));

  v10 = v5 + v1[8];

  v11 = v5 + v1[13];
  v12 = sub_D6998();
  (*(*(v12 - 8) + 8))(v11, v12);
  type metadata accessor for GCSProfileParams(0);

  sub_DC40(&qword_1172C8, &unk_E0480);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_69BC4()
{
  type metadata accessor for GCSControllerCustomizeControlsView(0);
  sub_DC40(&qword_1166E0, &qword_DD340);
  return sub_D77F8();
}

void sub_69C68(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

char *sub_69CB8()
{
  v1 = v0;
  v35 = sub_D6998();
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_DC40(&unk_119100, &unk_DECD0);
  v3 = *v0;
  v4 = sub_D8088();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
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

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
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

id sub_69F40@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v5;
  v3 = v2;

  return v5;
}

unint64_t sub_69F80()
{
  result = qword_118098;
  if (!qword_118098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_118098);
  }

  return result;
}

uint64_t sub_69FD4()
{
  v1 = type metadata accessor for GCSControllerCustomizeControlsView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v0 + v3 + v1[5];
  sub_DC40(&qword_117EA0, &qword_E03A8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v8 = *(sub_DC40(&qword_117EA8, &qword_E03B0) + 32);
    v9 = sub_D6D88();
    (*(*(v9 - 8) + 8))(v6 + v8, v9);
  }

  v10 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_16AA0(*(v5 + v1[6]), *(v5 + v1[6] + 8));

  v11 = v5 + v1[8];

  v12 = v5 + v1[13];
  v13 = sub_D6998();
  (*(*(v13 - 8) + 8))(v12, v13);
  type metadata accessor for GCSProfileParams(0);

  sub_DC40(&qword_1172C8, &unk_E0480);

  return _swift_deallocObject(v0, v10 + 8, v2 | 7);
}

uint64_t sub_6A314()
{
  v1 = type metadata accessor for GCSControllerCustomizeControlsView(0) - 8;
  v5 = *(v0 + ((*(*v1 + 64) + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v2 = v5;
  sub_DC40(&qword_1180A0, &qword_E0698);
  sub_D77F8();
  sub_63E7C();
  v3 = [v2 bundleIdentifier];
  sub_D7C18();

  sub_DC40(&qword_1180A8, &unk_E06A0);
  return sub_D77F8();
}

uint64_t sub_6A474(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_6A4DC()
{
  result = qword_1180D0;
  if (!qword_1180D0)
  {
    sub_EBC0(&qword_1180C0, &qword_E06B8);
    sub_6932C(&qword_1180D8, type metadata accessor for GCSControllerCustomizeGameView, &unk_E1AB8);
    sub_15FB8(&qword_117418, &qword_117420, &qword_DEEB0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1180D0);
  }

  return result;
}

uint64_t sub_6A5C4(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

Swift::Int sub_6A704()
{
  sub_D8168();
  sub_D8178(0);
  return sub_D8198();
}

Swift::Int sub_6A770(uint64_t a1)
{
  sub_D8168();
  sub_D8178(0);
  return sub_D8198();
}

id sub_6A7D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {

    return a1;
  }

  else
  {
    type metadata accessor for GCSPreferencesStore(a1);
    sub_71E78(&qword_116448, type metadata accessor for GCSPreferencesStore, &unk_E23A8);
    result = sub_D6DD8();
    __break(1u);
  }

  return result;
}

uint64_t sub_6A854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for GCSPreferencesStore(0);
  sub_71E78(&qword_116448, type metadata accessor for GCSPreferencesStore, &unk_E23A8);

  return sub_D6DC8();
}

void *sub_6A8E0@<X0>(void *a1@<X0>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = sub_D6FB8();
  v13 = 1;
  sub_6A9CC(a1, a3, __src);
  memcpy(__dst, __src, 0x109uLL);
  memcpy(v15, __src, 0x109uLL);
  sub_16054(__dst, v10, &qword_1180E8, &qword_E0760);
  sub_160BC(v15, &qword_1180E8, &qword_E0760);
  memcpy(&v12[7], __dst, 0x109uLL);
  v8 = v13;
  *a4 = v7;
  *(a4 + 8) = 0;
  *(a4 + 16) = v8;
  return memcpy((a4 + 17), v12, 0x110uLL);
}

void sub_6A9CC(void *a1@<X0>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a3;
  sub_58D24(v6, v7, v8, v9);
  nullsub_1();
  v11 = v10;
  v99 = v12;
  v14 = v13;
  v15 = sub_D7088();
  v124 = 0;
  v16 = [v6 localizedName];
  v17 = sub_D7C18();
  v19 = v18;

  *v138 = v17;
  *&v138[8] = v19;
  sub_16000();
  v97 = sub_D73B8();
  v98 = v20;
  v95 = v21;
  v94 = v22;
  if (a1)
  {
    v100 = v15;
    v101 = v11;
    v102 = v14;
    v23 = *(&stru_248.size + (swift_isaMask & *a1));
    v24 = a1;
    LOBYTE(v23) = v23(v6);

    v96 = a4;
    v93 = sub_D6FA8();
    if (v23)
    {
      v143 = 0;
      v90 = sub_D7658();
      sub_D7A18();
      sub_D6C28();
      *&v128[6] = v113;
      *&v128[22] = v114;
      *&v128[38] = v115;
      *v138 = sub_A9308(0xD000000000000013, 0x80000000000E52F0);
      *&v138[8] = v25;
      v26 = sub_D73B8();
      v28 = v27;
      v30 = v29;
      sub_D72E8();
      v31 = sub_D7398();
      v33 = v32;
      v35 = v34;
      v91 = v36;

      sub_1F8F0(v26, v28, v30 & 1);

      v37 = v6;
      v38 = sub_2DBF4();
      v40 = v39;
      v41 = sub_2D0E0();
      sub_2DC6C(v38, v40, v41, v42, v37, v125);
      v43 = *v125;
      v44 = *v125;
      v45 = *&v125[16];
      v46 = *&v125[40];
      *v137 = v90;
      *&v137[8] = 256;
      *&v137[10] = *v128;
      *&v137[26] = *&v128[16];
      *&v137[42] = *&v128[32];
      *&v137[56] = *&v128[46];
      v145 = v35 & 1;
      v144 = v125[32] & 1;
      v92 = v125[32] & 1;
      v105 = *&v137[32];
      v106 = *&v137[48];
      v103 = *v137;
      v104 = *&v137[16];
      sub_16054(v137, v138, &qword_1171A0, qword_DE910);
      sub_1F900(v31, v33, v35 & 1);
      v47 = v43;

      sub_43B70(v45, *(&v45 + 1));
      v48 = v46;

      sub_2DAA4(v45, *(&v45 + 1));
      sub_1F8F0(v31, v33, v35 & 1);

      *v138 = v90;
      *&v138[8] = 256;
      *&v138[10] = *v128;
      *&v138[26] = *&v128[16];
      *&v138[42] = *&v128[32];
      *&v138[56] = *&v128[46];
      sub_160BC(v138, &qword_1171A0, qword_DE910);
      v113 = v103;
      v114 = v104;
      v115 = v105;
      v116 = v106;
      DWORD1(v118) = *&v137[3];
      *(&v118 + 1) = *v137;
      DWORD1(v121) = *&v125[3];
      *(&v121 + 1) = *v125;
      *&v117 = v31;
      *(&v117 + 1) = v33;
      LOBYTE(v118) = v35 & 1;
      *(&v118 + 1) = v91;
      v119 = v44;
      v120 = v45;
      LOBYTE(v121) = v92;
      *(&v121 + 1) = v48;
      *&v128[32] = v105;
      *&v128[48] = v106;
      *v128 = v103;
      *&v128[16] = v104;
      *&v129 = v31;
      *(&v129 + 1) = v33;
      LOBYTE(v130) = v35 & 1;
      DWORD1(v130) = *&v137[3];
      *(&v130 + 1) = *v137;
      *(&v130 + 1) = v91;
      v131 = v44;
      v132 = v45;
      LOBYTE(v133) = v92;
      DWORD1(v133) = *&v125[3];
      *(&v133 + 1) = *v125;
      *(&v133 + 1) = v48;
      sub_16054(&v113, v138, &qword_117488, &unk_E0C70);
      sub_160BC(v128, &qword_117488, &unk_E0C70);
      *&v125[87] = v118;
      *&v125[103] = v119;
      *&v125[119] = v120;
      *&v125[135] = v121;
      *&v125[23] = v114;
      *&v125[39] = v115;
      *&v125[55] = v116;
      *&v125[71] = v117;
      *&v125[7] = v113;
      LOBYTE(v37) = v143;
      v49 = sub_D7198();
      *&v137[113] = *&v125[96];
      *&v137[129] = *&v125[112];
      *&v137[145] = *&v125[128];
      *&v137[49] = *&v125[32];
      *&v137[65] = *&v125[48];
      *&v137[81] = *&v125[64];
      *&v137[97] = *&v125[80];
      *&v137[17] = *v125;
      *v137 = v93;
      *&v137[8] = 0x4014000000000000;
      v137[16] = v37;
      *&v137[160] = *&v125[143];
      *&v137[33] = *&v125[16];
      *&v137[168] = v49;
      sub_43B68(v137);
    }

    else
    {
      v145 = 0;
      v50 = sub_D75C8();
      sub_D7A18();
      sub_D6C28();
      *&v128[6] = *v125;
      *&v128[22] = *&v125[16];
      *&v128[38] = *&v125[32];
      *v138 = sub_A9308(0xD000000000000016, 0x80000000000E5310);
      *&v138[8] = v51;
      v52 = sub_D73B8();
      v54 = v53;
      v56 = v55;
      sub_D72E8();
      v57 = sub_D7398();
      v59 = v58;
      v61 = v60;
      v63 = v62;

      sub_1F8F0(v52, v54, v56 & 1);

      *v137 = v50;
      *&v137[8] = 256;
      *&v137[10] = *v128;
      *&v137[26] = *&v128[16];
      *&v137[42] = *&v128[32];
      *&v137[56] = *&v125[40];
      v105 = *&v137[32];
      v106 = *&v137[48];
      v103 = *v137;
      v104 = *&v137[16];
      sub_16054(v137, v138, &qword_1171A0, qword_DE910);
      sub_1F900(v57, v59, v61 & 1);

      sub_1F8F0(v57, v59, v61 & 1);

      *v138 = v50;
      *&v138[8] = 256;
      *&v138[10] = *v128;
      *&v138[26] = *&v128[16];
      *&v138[42] = *&v128[32];
      *&v138[56] = *&v125[40];
      sub_160BC(v138, &qword_1171A0, qword_DE910);
      v113 = v103;
      v114 = v104;
      v115 = v105;
      v116 = v106;
      *&v117 = v57;
      *(&v117 + 1) = v59;
      LOBYTE(v118) = v61 & 1;
      DWORD1(v118) = *&v137[3];
      *(&v118 + 1) = *v137;
      *(&v118 + 1) = v63;
      *&v128[32] = v105;
      *&v128[48] = v106;
      *v128 = v103;
      *&v128[16] = v104;
      *&v129 = v57;
      *(&v129 + 1) = v59;
      LOBYTE(v130) = v61 & 1;
      DWORD1(v130) = *&v137[3];
      *(&v130 + 1) = *v137;
      *(&v130 + 1) = v63;
      sub_16054(&v113, v138, &qword_117150, &qword_DE8E0);
      sub_160BC(v128, &qword_117150, &qword_DE8E0);
      *&v125[39] = v115;
      *&v125[55] = v116;
      *&v125[71] = v117;
      *&v125[87] = v118;
      *&v125[7] = v113;
      *&v125[23] = v114;
      v64 = v145;
      v65 = sub_D7198();
      *&v137[65] = *&v125[48];
      *&v137[81] = *&v125[64];
      *&v137[97] = *&v125[80];
      *&v137[17] = *v125;
      *&v137[33] = *&v125[16];
      *v137 = v93;
      *&v137[8] = 0x4014000000000000;
      v137[16] = v64;
      *&v137[112] = *&v125[95];
      *&v137[49] = *&v125[32];
      *&v137[120] = v65;
      sub_43B54(v137);
    }

    sub_DC40(&qword_117468, &unk_DEF30);
    sub_DC40(&qword_117160, &unk_DE8F0);
    sub_43A70();
    sub_39804();
    sub_D70B8();
    *&v137[128] = *&v138[128];
    *&v137[144] = *&v138[144];
    *&v137[157] = *&v138[157];
    *&v137[64] = *&v138[64];
    *&v137[80] = *&v138[80];
    *&v137[112] = *&v138[112];
    *&v137[96] = *&v138[96];
    *v137 = *v138;
    *&v137[16] = *&v138[16];
    *&v137[48] = *&v138[48];
    *&v137[32] = *&v138[32];
    v111 = *&v138[128];
    v112[0] = *&v138[144];
    *(v112 + 13) = *&v138[157];
    v107 = *&v138[64];
    v108 = *&v138[80];
    v109 = *&v138[96];
    v110 = *&v138[112];
    v103 = *v138;
    v104 = *&v138[16];
    v105 = *&v138[32];
    v106 = *&v138[48];
    v121 = *&v138[128];
    v122[0] = *&v138[144];
    *(v122 + 13) = *&v138[157];
    v117 = *&v138[64];
    v118 = *&v138[80];
    v119 = *&v138[96];
    v120 = *&v138[112];
    v113 = *v138;
    v114 = *&v138[16];
    v145 = v94 & 1;
    v115 = *&v138[32];
    v116 = *&v138[48];
    sub_1F900(v97, v95, v94 & 1);

    sub_16054(&v103, v128, &qword_118358, &qword_E0C68);
    sub_160BC(v137, &qword_118358, &qword_E0C68);
    sub_1F8F0(v97, v95, v94 & 1);

    *&v125[32] = v113;
    *&v125[48] = v114;
    *&v125[96] = v117;
    *&v125[112] = v118;
    *&v125[64] = v115;
    *&v125[80] = v116;
    *(v127 + 13) = *(v122 + 13);
    v126 = v121;
    v127[0] = v122[0];
    *&v125[128] = v119;
    *&v125[144] = v120;
    v135 = v121;
    v136[0] = v122[0];
    *(v136 + 13) = *(v122 + 13);
    v131 = v117;
    v132 = v118;
    v134 = v120;
    v133 = v119;
    *v125 = v97;
    *&v125[8] = v95;
    v125[16] = v94 & 1;
    *&v125[17] = *v137;
    *&v125[20] = *&v137[3];
    *&v125[24] = v98;
    *v128 = v97;
    *&v128[8] = v95;
    v128[16] = v94 & 1;
    *&v128[17] = *v137;
    *&v128[20] = *&v137[3];
    *&v128[24] = v98;
    *&v128[32] = v113;
    *&v128[48] = v114;
    v130 = v116;
    v129 = v115;
    sub_16054(v125, v138, &qword_118348, &qword_E0C38);
    sub_160BC(v128, &qword_118348, &qword_E0C38);
    *&v123[151] = *&v125[144];
    *&v123[167] = v126;
    *&v123[183] = v127[0];
    *&v123[196] = *(v127 + 13);
    *&v123[87] = *&v125[80];
    *&v123[103] = *&v125[96];
    *&v123[119] = *&v125[112];
    *&v123[135] = *&v125[128];
    *&v123[23] = *&v125[16];
    *&v123[39] = *&v125[32];
    *&v123[55] = *&v125[48];
    *&v123[71] = *&v125[64];
    *&v123[7] = *v125;
    *&v137[177] = *&v123[160];
    v66 = *&v123[160];
    v67 = *&v123[176];
    *&v137[193] = *&v123[176];
    v68 = *&v123[192];
    *&v137[209] = *&v123[192];
    *&v137[113] = *&v123[96];
    v69 = *&v123[96];
    v70 = *&v123[112];
    *&v137[129] = *&v123[112];
    *&v137[145] = *&v123[128];
    v71 = *&v123[128];
    v72 = *&v123[144];
    *&v137[161] = *&v123[144];
    v73 = *&v123[48];
    *&v137[49] = *&v123[32];
    v74 = *&v123[32];
    *&v137[65] = *&v123[48];
    v75 = *&v123[80];
    *&v137[81] = *&v123[64];
    v76 = *&v123[64];
    *&v137[97] = *&v123[80];
    v77 = *&v123[16];
    *&v137[17] = *v123;
    v78 = *v123;
    *&v137[33] = *&v123[16];
    v79 = *&v137[160];
    *(v96 + 200) = *&v137[176];
    v80 = *&v137[208];
    *(v96 + 216) = *&v137[192];
    *(v96 + 232) = v80;
    v81 = *&v137[96];
    *(v96 + 136) = *&v137[112];
    v82 = *&v137[144];
    *(v96 + 152) = *&v137[128];
    *(v96 + 168) = v82;
    *(v96 + 184) = v79;
    v83 = *&v137[32];
    *(v96 + 72) = *&v137[48];
    v84 = *&v137[80];
    *(v96 + 88) = *&v137[64];
    v85 = v124;
    *v137 = v100;
    *&v137[8] = 0x4010000000000000;
    v137[16] = v124;
    *(v96 + 104) = v84;
    *(v96 + 120) = v81;
    v86 = *&v137[16];
    *(v96 + 24) = *v137;
    *(v96 + 40) = v86;
    *(v96 + 56) = v83;
    v139 = v66;
    v140 = v67;
    v141 = v68;
    *&v138[113] = v69;
    *&v138[129] = v70;
    *&v138[145] = v71;
    *&v138[161] = v72;
    *&v138[49] = v74;
    *&v138[65] = v73;
    *&v138[81] = v76;
    *&v138[97] = v75;
    *&v138[17] = v78;
    v87 = *&v123[208];
    *&v137[225] = *&v123[208];
    *v96 = v101;
    *(v96 + 8) = v99;
    LOBYTE(v113) = 1;
    *(v96 + 16) = v102;
    *(v96 + 245) = *&v137[221];
    *(v96 + 256) = 0;
    *(v96 + 264) = 1;
    *v138 = v100;
    *&v138[8] = 0x4010000000000000;
    v138[16] = v85;
    v142 = v87;
    *&v138[33] = v77;
    v88 = v101;
    v89 = v102;
    sub_16054(v137, &v103, &qword_118350, &unk_E0C40);
    sub_160BC(v138, &qword_118350, &unk_E0C40);
  }

  else
  {
    type metadata accessor for GCSPreferencesStore(0);
    sub_71E78(&qword_116448, type metadata accessor for GCSPreferencesStore, &unk_E23A8);
    sub_D6DD8();
    __break(1u);
  }
}

void *sub_6B74C@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 16);
  v6 = sub_D6FB8();
  v12 = 1;
  sub_6A9CC(v4, v5, __src);
  memcpy(__dst, __src, 0x109uLL);
  memcpy(v14, __src, 0x109uLL);
  sub_16054(__dst, v9, &qword_1180E8, &qword_E0760);
  sub_160BC(v14, &qword_1180E8, &qword_E0760);
  memcpy(&v11[7], __dst, 0x109uLL);
  v7 = v12;
  *a2 = v6;
  *(a2 + 8) = 0;
  *(a2 + 16) = v7;
  return memcpy((a2 + 17), v11, 0x110uLL);
}

double sub_6B834@<D0>(void *a2@<X2>, void *a3@<X3>, uint64_t a4@<X8>)
{
  v7 = sub_D6FB8();
  v26 = 1;
  sub_6BA48(a2, a3, &v16);
  v33 = v22;
  v34 = v23;
  v35[0] = v24[0];
  *(v35 + 9) = *(v24 + 9);
  v29 = v18;
  v30 = v19;
  v31 = v20;
  v32 = v21;
  v27 = v16;
  v28 = v17;
  v36[6] = v22;
  v36[7] = v23;
  v37[0] = v24[0];
  *(v37 + 9) = *(v24 + 9);
  v36[2] = v18;
  v36[3] = v19;
  v36[4] = v20;
  v36[5] = v21;
  v36[0] = v16;
  v36[1] = v17;
  sub_16054(&v27, &v15, &qword_1180F0, &qword_E0768);
  sub_160BC(v36, &qword_1180F0, &qword_E0768);
  *(&v25[3] + 7) = v30;
  *(&v25[2] + 7) = v29;
  *(&v25[6] + 7) = v33;
  *(&v25[7] + 7) = v34;
  *(&v25[8] + 7) = v35[0];
  v25[9] = *(v35 + 9);
  *(&v25[4] + 7) = v31;
  *(&v25[5] + 7) = v32;
  *(v25 + 7) = v27;
  *(&v25[1] + 7) = v28;
  v8 = v25[7];
  *(a4 + 113) = v25[6];
  *(a4 + 129) = v8;
  v9 = v25[9];
  *(a4 + 145) = v25[8];
  *(a4 + 161) = v9;
  v10 = v25[3];
  *(a4 + 49) = v25[2];
  *(a4 + 65) = v10;
  v11 = v25[5];
  *(a4 + 81) = v25[4];
  *(a4 + 97) = v11;
  result = *v25;
  v13 = v25[1];
  *(a4 + 17) = v25[0];
  v14 = v26;
  *a4 = v7;
  *(a4 + 8) = 0;
  *(a4 + 16) = v14;
  *(a4 + 33) = v13;
  return result;
}

void sub_6BA48(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1;
  v6 = a2;
  nullsub_1();
  v54 = v7;
  v55 = v8;
  v10 = v9;
  sub_D7AA8();
  v12 = v11;
  v14 = v13;
  v53 = sub_D7088();
  v60 = 0;
  v15 = [v5 localizedName];
  sub_D7C18();

  sub_16000();
  v16 = sub_D73B8();
  v50 = v17;
  v51 = v16;
  v49 = v18;
  v52 = v19;
  sub_DC40(&qword_115F08, &unk_DD4B0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_DCB80;
  v21 = [v6 localizedName];
  v22 = sub_D7C18();
  v24 = v23;

  *(v20 + 56) = &type metadata for String;
  *(v20 + 64) = sub_14B60();
  *(v20 + 32) = v22;
  *(v20 + 40) = v24;
  String.localized(with:)(v20);

  v25 = sub_D73B8();
  v27 = v26;
  LOBYTE(v22) = v28;
  sub_D72E8();
  v29 = sub_D7398();
  v31 = v30;
  v33 = v32;

  sub_1F8F0(v25, v27, v22 & 1);

  sub_D7198();
  v34 = sub_D7388();
  v36 = v35;
  LOBYTE(v25) = v37;
  v39 = v38;
  sub_1F8F0(v29, v31, v33 & 1);

  v56[0] = v49 & 1;
  LOBYTE(v25) = v25 & 1;
  sub_1F900(v51, v50, v49 & 1);

  sub_1F900(v34, v36, v25);

  sub_1F8F0(v34, v36, v25);

  sub_1F8F0(v51, v50, v49 & 1);

  v40 = v60;
  v41 = v59[0];
  *(&v62 + 1) = v59[0];
  DWORD1(v62) = *(v59 + 3);
  v42 = v58[0];
  *(&v63 + 9) = v58[0];
  HIDWORD(v63) = *(v58 + 3);
  HIDWORD(v65) = *&v57[3];
  v43 = *v57;
  *(&v65 + 9) = *v57;
  *(a3 + 16) = v10;
  v60 = 1;
  *(a3 + 152) = 1;
  *&v61 = v53;
  *(&v61 + 1) = 0x4010000000000000;
  LOBYTE(v62) = v40;
  *(&v62 + 1) = v51;
  *&v63 = v50;
  BYTE8(v63) = v49 & 1;
  *&v64 = v52;
  *(&v64 + 1) = v34;
  *&v65 = v36;
  BYTE8(v65) = v25;
  *a3 = v54;
  *(a3 + 8) = v55;
  *(a3 + 24) = vdupq_n_s64(0x3FF3333333333333uLL);
  *(a3 + 40) = v12;
  *(a3 + 48) = v14;
  v44 = v61;
  v45 = v63;
  *(a3 + 72) = v62;
  *(a3 + 56) = v44;
  v46 = v64;
  *(a3 + 120) = v65;
  *(a3 + 104) = v46;
  *(a3 + 88) = v45;
  *(a3 + 136) = v39;
  *(a3 + 144) = 0;
  v66 = v39;
  v67[0] = v53;
  v67[1] = 0x4010000000000000;
  v68 = v40;
  *&v69[3] = *(v59 + 3);
  *v69 = v41;
  v70 = v51;
  v71 = v50;
  v72 = v49 & 1;
  *&v73[3] = *(v58 + 3);
  *v73 = v42;
  v74 = v52;
  v75 = v34;
  v76 = v36;
  v77 = v25;
  *&v78[3] = *&v57[3];
  *v78 = v43;
  v79 = v39;
  v47 = v54;
  v48 = v55;
  sub_16054(&v61, v56, &qword_116E78, &qword_DE000);
  sub_160BC(v67, &qword_116E78, &qword_DE000);
}

double sub_6BE8C@<D0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = sub_D6FB8();
  v25 = 1;
  sub_6BA48(v4, v5, &v15);
  v32 = v21;
  v33 = v22;
  v34[0] = v23[0];
  *(v34 + 9) = *(v23 + 9);
  v28 = v17;
  v29 = v18;
  v30 = v19;
  v31 = v20;
  v26 = v15;
  v27 = v16;
  v35[6] = v21;
  v35[7] = v22;
  v36[0] = v23[0];
  *(v36 + 9) = *(v23 + 9);
  v35[2] = v17;
  v35[3] = v18;
  v35[4] = v19;
  v35[5] = v20;
  v35[0] = v15;
  v35[1] = v16;
  sub_16054(&v26, &v14, &qword_1180F0, &qword_E0768);
  sub_160BC(v35, &qword_1180F0, &qword_E0768);
  *(&v24[3] + 7) = v29;
  *(&v24[2] + 7) = v28;
  *(&v24[6] + 7) = v32;
  *(&v24[7] + 7) = v33;
  *(&v24[8] + 7) = v34[0];
  v24[9] = *(v34 + 9);
  *(&v24[4] + 7) = v30;
  *(&v24[5] + 7) = v31;
  *(v24 + 7) = v26;
  *(&v24[1] + 7) = v27;
  v7 = v24[7];
  *(a2 + 113) = v24[6];
  *(a2 + 129) = v7;
  v8 = v24[9];
  *(a2 + 145) = v24[8];
  *(a2 + 161) = v8;
  v9 = v24[3];
  *(a2 + 49) = v24[2];
  *(a2 + 65) = v9;
  v10 = v24[5];
  *(a2 + 81) = v24[4];
  *(a2 + 97) = v10;
  result = *v24;
  v12 = v24[1];
  *(a2 + 17) = v24[0];
  v13 = v25;
  *a2 = v6;
  *(a2 + 8) = 0;
  *(a2 + 16) = v13;
  *(a2 + 33) = v12;
  return result;
}

id sub_6C09C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  if (*v4)
  {

    return v5;
  }

  else
  {
    type metadata accessor for GCSPreferencesStore(0);
    sub_71E78(&qword_116448, type metadata accessor for GCSPreferencesStore, &unk_E23A8);
    result = sub_D6DD8();
    __break(1u);
  }

  return result;
}

uint64_t sub_6C128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for GCSPreferencesStore(0);
  sub_71E78(&qword_116448, type metadata accessor for GCSPreferencesStore, &unk_E23A8);

  return sub_D6DC8();
}

uint64_t sub_6C1B0()
{
  sub_DC40(&qword_1180F8, &unk_E0770);
  sub_D78B8();
  return v1;
}

void (*sub_6C260(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = v1[4];
  v6 = v1[5];
  v4[8] = v5;
  v4[9] = v6;
  v7 = v1[6];
  v4[10] = v7;
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;

  v8 = v7;
  v4[11] = sub_DC40(&qword_1180F8, &unk_E0770);
  sub_D78B8();
  return sub_5DD14;
}

uint64_t sub_6C318()
{
  sub_DC40(&qword_1180F8, &unk_E0770);
  sub_D78E8();
  return v1;
}

__n128 sub_6C374@<Q0>(__n128 *a1@<X8>)
{
  sub_DC40(&qword_116848, &qword_E2CA0);
  sub_D78B8();
  a1[6] = v9;
  a1[7] = v10;
  a1[8].n128_u64[0] = v11;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  result = v4;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_6C430(uint64_t a1)
{
  v2 = *(v1 + 168);
  v17[6] = *(v1 + 152);
  v17[7] = v2;
  v17[8] = *(v1 + 184);
  v18 = *(v1 + 200);
  v3 = *(v1 + 104);
  v17[2] = *(v1 + 88);
  v17[3] = v3;
  v4 = *(v1 + 136);
  v17[4] = *(v1 + 120);
  v17[5] = v4;
  v5 = *(v1 + 72);
  v17[0] = *(v1 + 56);
  v17[1] = v5;
  v13 = *(v1 + 152);
  v14 = *(v1 + 168);
  v15 = *(v1 + 184);
  v16 = *(v1 + 200);
  v9 = *(v1 + 88);
  v10 = *(v1 + 104);
  v11 = *(v1 + 120);
  v12 = *(v1 + 136);
  v7 = *(v1 + 56);
  v8 = *(v1 + 72);
  sub_16054(v17, v19, &qword_116848, &qword_E2CA0);
  sub_DC40(&qword_116848, &qword_E2CA0);
  sub_D78C8();
  v19[6] = v13;
  v19[7] = v14;
  v19[8] = v15;
  v20 = v16;
  v19[2] = v9;
  v19[3] = v10;
  v19[4] = v11;
  v19[5] = v12;
  v19[0] = v7;
  v19[1] = v8;
  return sub_160BC(v19, &qword_116848, &qword_E2CA0);
}

void (*sub_6C584(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x510uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + 168);
  *(v3 + 96) = *(v1 + 152);
  *(v3 + 112) = v5;
  *(v3 + 128) = *(v1 + 184);
  *(v3 + 144) = *(v1 + 200);
  v6 = *(v1 + 104);
  *(v3 + 32) = *(v1 + 88);
  *(v3 + 48) = v6;
  v7 = *(v1 + 136);
  *(v3 + 64) = *(v1 + 120);
  *(v3 + 80) = v7;
  v8 = *(v1 + 72);
  *v3 = *(v1 + 56);
  *(v3 + 16) = v8;
  *(v3 + 248) = *(v1 + 152);
  v9 = *(v1 + 184);
  *(v3 + 264) = *(v1 + 168);
  *(v3 + 280) = v9;
  *(v3 + 296) = *(v1 + 200);
  *(v3 + 184) = *(v1 + 88);
  *(v3 + 200) = *(v1 + 104);
  *(v3 + 216) = *(v1 + 120);
  *(v3 + 232) = *(v1 + 136);
  *(v3 + 152) = *(v1 + 56);
  *(v3 + 168) = *(v1 + 72);
  sub_16054(v3, v3 + 304, &qword_116848, &qword_E2CA0);
  *(v4 + 1288) = sub_DC40(&qword_116848, &qword_E2CA0);
  sub_D78B8();
  return sub_23A8C;
}

double sub_6C6C4@<D0>(uint64_t a1@<X8>)
{
  sub_DC40(&qword_116848, &qword_E2CA0);
  sub_D78E8();
  *(a1 + 96) = v9;
  *(a1 + 112) = v10;
  *(a1 + 128) = v11;
  *(a1 + 144) = v12;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_6C788()
{
  sub_DC40(&qword_118100, &qword_E0780);
  sub_D78B8();
  return v1;
}

void (*sub_6C838(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = v1[26];
  v6 = v1[27];
  v4[8] = v5;
  v4[9] = v6;
  v7 = v1[28];
  v4[10] = v7;
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;

  v4[11] = sub_DC40(&qword_118100, &qword_E0780);
  sub_D78B8();
  return sub_6C8F4;
}

void sub_6C8F4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v2[3] = *(*a1 + 64);
  v2[7] = v2[6];
  v4 = v2[10];
  v2[4] = v3;
  v2[5] = v4;
  if (a2)
  {

    sub_D78C8();
  }

  else
  {
    sub_D78C8();
  }

  free(v2);
}

uint64_t sub_6C9BC()
{
  sub_DC40(&qword_118100, &qword_E0780);
  sub_D78E8();
  return v1;
}

uint64_t sub_6CA18(uint64_t a1)
{
  v3 = sub_D6998();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  (*(v4 + 16))(&v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3, v5);
  sub_D77D8();
  return (*(v4 + 8))(a1, v3);
}

uint64_t sub_6CB14()
{
  type metadata accessor for GCSControllerSheetDetailView(0);
  sub_DC40(&qword_118108, &unk_E0788);
  sub_D78B8();
  return v1;
}

uint64_t type metadata accessor for GCSControllerSheetDetailView(uint64_t a1)
{
  result = qword_11CC80;
  if (!qword_11CC80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_6CBC8(uint64_t a1)
{
  type metadata accessor for GCSControllerSheetDetailView(0);
  sub_DC40(&qword_118108, &unk_E0788);
  return sub_D78C8();
}

void (*sub_6CC34(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for GCSControllerSheetDetailView(0) + 44));
  v6 = *v5;
  v7 = v5[1];
  v4[8] = *v5;
  v4[9] = v7;
  v8 = v5[2];
  v4[10] = v8;
  *v4 = v6;
  v4[1] = v7;
  v4[2] = v8;

  v9 = v8;
  v4[11] = sub_DC40(&qword_118108, &unk_E0788);
  sub_D78B8();
  return sub_5A194;
}

uint64_t sub_6CCFC()
{
  type metadata accessor for GCSControllerSheetDetailView(0);
  sub_DC40(&qword_118108, &unk_E0788);
  sub_D78E8();
  return v1;
}

uint64_t sub_6CD68(uint64_t a1)
{
  v3 = type metadata accessor for GCSProfileParams(0);
  __chkstk_darwin(v3);
  sub_73294(a1, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GCSProfileParams);
  sub_D77D8();
  return sub_277D8(a1, type metadata accessor for GCSProfileParams);
}

uint64_t sub_6CE30()
{
  type metadata accessor for GCSControllerSheetDetailView(0);
  sub_DC40(&qword_116510, &qword_DD4D0);
  sub_D78B8();
  return v1;
}

uint64_t sub_6CE98(char a1)
{
  type metadata accessor for GCSControllerSheetDetailView(0);
  sub_DC40(&qword_116510, &qword_DD4D0);
  return sub_D78C8();
}

void (*sub_6CF08(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for GCSControllerSheetDetailView(0) + 52));
  v6 = *v5;
  v7 = v5[1];
  *(v4 + 48) = *v5;
  *(v4 + 56) = v7;
  LOBYTE(v5) = *(v5 + 16);
  *(v4 + 19) = v5;
  *v4 = v6;
  *(v4 + 8) = v7;
  *(v4 + 16) = v5;

  *(v4 + 64) = sub_DC40(&qword_116510, &qword_DD4D0);
  sub_D78B8();
  return sub_17138;
}

uint64_t sub_6CFCC()
{
  type metadata accessor for GCSControllerSheetDetailView(0);
  sub_DC40(&qword_116510, &qword_DD4D0);
  sub_D78E8();
  return v1;
}

id sub_6D038()
{
  type metadata accessor for GCSControllerSheetDetailView(0);
  sub_DC40(&qword_118108, &unk_E0788);
  sub_D78B8();
  v0 = [v2 customizable];

  return v0;
}

void *sub_6D0BC()
{
  v15 = sub_D6998();
  v1 = *(v15 - 8);
  __chkstk_darwin(v15);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v0 + 208);
  v18 = *(v0 + 216);
  sub_DC40(&qword_118100, &qword_E0780);
  sub_D78B8();
  v4 = v16;
  if (!(v16 >> 62))
  {
    v5 = *(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8));
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_13:

    return _swiftEmptyArrayStorage;
  }

  v5 = sub_D8078();
  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_3:
  v17 = _swiftEmptyArrayStorage;
  result = sub_71E1C(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v8 = v17;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = sub_D7FF8();
      }

      else
      {
        v9 = *(v4 + 8 * v7 + 32);
      }

      v10 = v9;
      v11 = [v9 uuid];
      sub_D6978();

      v17 = v8;
      v13 = v8[2];
      v12 = v8[3];
      if (v13 >= v12 >> 1)
      {
        sub_71E1C((v12 > 1), v13 + 1, 1);
        v8 = v17;
      }

      ++v7;
      v8[2] = v13 + 1;
      (*(v1 + 32))(v8 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v13, v3, v15);
    }

    while (v5 != v7);

    return v8;
  }

  __break(1u);
  return result;
}

void *sub_6D2F0(uint64_t a1)
{
  v5[5] = *(v1 + 208);
  v6 = *(v1 + 216);
  sub_DC40(&qword_118100, &qword_E0780);
  sub_D78B8();
  v5[2] = a1;
  v3 = sub_6D490(sub_71E3C, v5, v5[4]);

  return v3;
}

uint64_t sub_6D38C(id *a1, uint64_t a2)
{
  v3 = sub_D6998();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [*a1 uuid];
  sub_D6978();

  v9 = sub_D6968();
  (*(v4 + 8))(v7, v3);
  return v9 & 1;
}

void *sub_6D490(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)); i; i = sub_D8078())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = sub_D7FF8();
      }

      else
      {
        if (j >= *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t sub_6D5A4@<X0>(uint64_t a1@<X8>)
{
  v61 = a1;
  v65 = type metadata accessor for GCSControllerSheetDetailView(0);
  v63 = *(v65 - 8);
  __chkstk_darwin(v65);
  v66 = v2;
  v60 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_D6998();
  v56 = *(v59 - 8);
  __chkstk_darwin(v59);
  v55 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  OpaqueTypeConformance2 = sub_D6D08();
  v49 = *(OpaqueTypeConformance2 - 8);
  __chkstk_darwin(OpaqueTypeConformance2);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_DC40(&qword_118110, &qword_E0798);
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v7 = &v47 - v6;
  v54 = sub_DC40(&qword_118118, &qword_E07A0);
  v52 = *(v54 - 8);
  __chkstk_darwin(v54);
  v51 = &v47 - v8;
  v9 = sub_DC40(&qword_118120, &qword_E07A8);
  v57 = *(v9 - 8);
  v58 = v9;
  v10 = __chkstk_darwin(v9);
  v64 = &v47 - v11;
  v12 = [*(v1 + 16) bundleIdentifier];
  v13 = sub_D7C18();
  v15 = v14;

  v16 = [objc_opt_self() defaultIdentifier];
  v17 = sub_D7C18();
  v19 = v18;

  if (v13 == v17 && v15 == v19)
  {
    v20 = 1;
  }

  else
  {
    v20 = sub_D8118();
  }

  __chkstk_darwin(v21);
  *(&v47 - 16) = v20 & 1;
  *(&v47 - 1) = v1;
  sub_DC40(&qword_118128, &qword_E07B0);
  sub_15FB8(&qword_118130, &qword_118128, &qword_E07B0, &protocol conformance descriptor for TupleView<A>);
  sub_D7328();
  sub_D7A48();
  v22 = sub_15FB8(&qword_118138, &qword_118110, &qword_E0798, &protocol conformance descriptor for Form<A>);
  v23 = sub_71E78(&qword_116888, &type metadata accessor for GroupedFormStyle, &protocol conformance descriptor for GroupedFormStyle);
  v24 = v51;
  v25 = v50;
  v26 = OpaqueTypeConformance2;
  sub_D7558();
  (*(v49 + 1))(v5, v26);
  (*(v48 + 8))(v7, v25);
  sub_DC40(&qword_118140, &qword_E1A80);
  v62 = v1;
  v27 = v55;
  sub_D77E8();
  v49 = type metadata accessor for GCSControllerSheetDetailView;
  v28 = v60;
  sub_73294(v1, v60, type metadata accessor for GCSControllerSheetDetailView);
  v63 = *(v63 + 80);
  v29 = (v63 + 16) & ~v63;
  v30 = swift_allocObject();
  sub_71EC4(v28, v30 + v29);
  v68 = v25;
  *&v69 = v26;
  *(&v69 + 1) = v22;
  v70 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v50 = sub_71E78(&unk_119150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v31 = v54;
  v32 = v59;
  sub_D7538();

  (*(v56 + 8))(v27, v32);
  (*(v52 + 8))(v24, v31);
  v33 = v62;
  v34 = v62 + *(v65 + 44);
  v68 = *v34;
  v69 = *(v34 + 8);
  sub_DC40(&qword_118108, &unk_E0788);
  sub_D78B8();
  v35 = v67;
  v36 = v49;
  sub_73294(v33, v28, v49);
  v37 = swift_allocObject();
  sub_71EC4(v28, v37 + v29);
  sub_450A0(0, &qword_118F10, GCSProfile_ptr);
  v68 = v31;
  *&v69 = v32;
  *(&v69 + 1) = OpaqueTypeConformance2;
  v70 = v50;
  swift_getOpaqueTypeConformance2();
  sub_720CC();
  v38 = v61;
  v39 = v58;
  v40 = v64;
  sub_D7538();

  (*(v57 + 8))(v40, v39);
  v41 = v62;
  sub_73294(v62, v28, v36);
  v42 = swift_allocObject();
  sub_71EC4(v28, v42 + v29);
  v43 = (v38 + *(sub_DC40(&qword_118150, &qword_E07B8) + 36));
  *v43 = sub_72134;
  v43[1] = v42;
  v43[2] = 0;
  v43[3] = 0;
  sub_73294(v41, v28, v36);
  v44 = swift_allocObject();
  sub_71EC4(v28, v44 + v29);
  result = sub_DC40(&qword_118158, &unk_E07C0);
  v46 = (v38 + *(result + 36));
  *v46 = 0;
  v46[1] = 0;
  v46[2] = sub_7214C;
  v46[3] = v44;
  return result;
}

uint64_t sub_6DED8@<X0>(char a1@<W0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v109 = a3;
  v5 = sub_DC40(&qword_116840, &unk_DD500);
  __chkstk_darwin(v5 - 8);
  v99 = &v83 - v6;
  v7 = type metadata accessor for GCSProfileContentView(0);
  __chkstk_darwin(v7 - 8);
  v108 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v110 = &v83 - v10;
  v11 = sub_DC40(&qword_118268, &qword_E0A28);
  v106 = *(v11 - 8);
  v107 = v11;
  __chkstk_darwin(v11);
  v105 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v104 = &v83 - v14;
  v111 = a1;
  v112 = a2;
  sub_DC40(&qword_118270, &qword_E0A30);
  sub_15FB8(&qword_118278, &qword_118270, &qword_E0A30, &protocol conformance descriptor for TupleView<A>);
  sub_D79C8();
  v15 = type metadata accessor for GCSControllerSheetDetailView(0);
  v16 = a2 + *(v15 + 44);
  *v243 = *v16;
  *&v243[8] = *(v16 + 8);
  sub_DC40(&qword_118108, &unk_E0788);
  sub_D78B8();
  v17 = *&v241[0];
  v103 = [*&v241[0] customizable];

  v18 = *(a2 + 168);
  v248 = *(a2 + 152);
  v249 = v18;
  v250 = *(a2 + 184);
  v251 = *(a2 + 200);
  v19 = *(a2 + 104);
  v244 = *(a2 + 88);
  v245 = v19;
  v20 = *(a2 + 136);
  v246 = *(a2 + 120);
  v247 = v20;
  v21 = *(a2 + 72);
  *v243 = *(a2 + 56);
  *&v243[16] = v21;
  sub_DC40(&qword_116848, &qword_E2CA0);
  sub_D78E8();
  swift_getKeyPath();
  v223 = v229[6];
  v224 = v229[7];
  v225 = v229[8];
  v226 = v230;
  v219 = v229[2];
  v220 = v229[3];
  v221 = v229[4];
  v222 = v229[5];
  v217 = v229[0];
  v218 = v229[1];
  sub_D78D8();

  sub_160BC(v229, &qword_116848, &qword_E2CA0);
  v101 = v215;
  v102 = v214;
  v100 = v216;
  v22 = *(a2 + 168);
  v248 = *(a2 + 152);
  v249 = v22;
  v250 = *(a2 + 184);
  v251 = *(a2 + 200);
  v23 = *(a2 + 104);
  v244 = *(a2 + 88);
  v245 = v23;
  v24 = *(a2 + 136);
  v246 = *(a2 + 120);
  v247 = v24;
  v25 = *(a2 + 72);
  *v243 = *(a2 + 56);
  *&v243[16] = v25;
  sub_D78E8();
  swift_getKeyPath();
  v210 = v231[6];
  v211 = v231[7];
  v212 = v231[8];
  v213 = v232;
  v206 = v231[2];
  v207 = v231[3];
  v208 = v231[4];
  v209 = v231[5];
  v204 = v231[0];
  v205 = v231[1];
  sub_D78D8();

  sub_160BC(v231, &qword_116848, &qword_E2CA0);
  v97 = v202;
  v98 = v201;
  v96 = v203;
  v26 = *(a2 + 168);
  v248 = *(a2 + 152);
  v249 = v26;
  v250 = *(a2 + 184);
  v251 = *(a2 + 200);
  v27 = *(a2 + 104);
  v244 = *(a2 + 88);
  v245 = v27;
  v28 = *(a2 + 136);
  v246 = *(a2 + 120);
  v247 = v28;
  v29 = *(a2 + 72);
  *v243 = *(a2 + 56);
  *&v243[16] = v29;
  sub_D78E8();
  swift_getKeyPath();
  v197 = v233[6];
  v198 = v233[7];
  v199 = v233[8];
  v200 = v234;
  v193 = v233[2];
  v194 = v233[3];
  v195 = v233[4];
  v196 = v233[5];
  v191 = v233[0];
  v192 = v233[1];
  sub_D78D8();

  sub_160BC(v233, &qword_116848, &qword_E2CA0);
  v94 = v189;
  v95 = v188;
  v93 = v190;
  v30 = *(a2 + 168);
  v248 = *(a2 + 152);
  v249 = v30;
  v250 = *(a2 + 184);
  v251 = *(a2 + 200);
  v31 = *(a2 + 104);
  v244 = *(a2 + 88);
  v245 = v31;
  v32 = *(a2 + 136);
  v246 = *(a2 + 120);
  v247 = v32;
  v33 = *(a2 + 72);
  *v243 = *(a2 + 56);
  *&v243[16] = v33;
  sub_D78E8();
  swift_getKeyPath();
  v184 = v235[6];
  v185 = v235[7];
  v186 = v235[8];
  v187 = v236;
  v180 = v235[2];
  v181 = v235[3];
  v182 = v235[4];
  v183 = v235[5];
  v178 = v235[0];
  v179 = v235[1];
  sub_D78D8();

  sub_160BC(v235, &qword_116848, &qword_E2CA0);
  v91 = v176;
  v92 = v175;
  v90 = v177;
  v34 = *(a2 + 168);
  v248 = *(a2 + 152);
  v249 = v34;
  v250 = *(a2 + 184);
  v251 = *(a2 + 200);
  v35 = *(a2 + 104);
  v244 = *(a2 + 88);
  v245 = v35;
  v36 = *(a2 + 136);
  v246 = *(a2 + 120);
  v247 = v36;
  v37 = *(a2 + 72);
  *v243 = *(a2 + 56);
  *&v243[16] = v37;
  sub_D78E8();
  swift_getKeyPath();
  v172 = v237[7];
  v173 = v237[8];
  v174 = v238;
  v167 = v237[2];
  v168 = v237[3];
  v169 = v237[4];
  v170 = v237[5];
  v171 = v237[6];
  v165 = v237[0];
  v166 = v237[1];
  sub_D78D8();

  sub_160BC(v237, &qword_116848, &qword_E2CA0);
  v88 = v163;
  v89 = v162;
  v87 = v164;
  v38 = *(a2 + 168);
  v248 = *(a2 + 152);
  v249 = v38;
  v250 = *(a2 + 184);
  v251 = *(a2 + 200);
  v39 = *(a2 + 104);
  v244 = *(a2 + 88);
  v245 = v39;
  v40 = *(a2 + 136);
  v246 = *(a2 + 120);
  v247 = v40;
  v41 = *(a2 + 72);
  *v243 = *(a2 + 56);
  *&v243[16] = v41;
  sub_D78E8();
  swift_getKeyPath();
  v158 = v239[6];
  v159 = v239[7];
  v160 = v239[8];
  v161 = v240;
  v154 = v239[2];
  v155 = v239[3];
  v156 = v239[4];
  v157 = v239[5];
  v152 = v239[0];
  v153 = v239[1];
  sub_D78D8();

  sub_160BC(v239, &qword_116848, &qword_E2CA0);
  v85 = v150;
  v86 = v149;
  v84 = v151;
  v42 = *(a2 + 168);
  v248 = *(a2 + 152);
  v249 = v42;
  v250 = *(a2 + 184);
  v251 = *(a2 + 200);
  v43 = *(a2 + 104);
  v244 = *(a2 + 88);
  v245 = v43;
  v44 = *(a2 + 136);
  v246 = *(a2 + 120);
  v247 = v44;
  v45 = *(a2 + 72);
  *v243 = *(a2 + 56);
  *&v243[16] = v45;
  sub_D78E8();
  swift_getKeyPath();
  v145 = v241[6];
  v146 = v241[7];
  v147 = v241[8];
  v148 = v242;
  v141 = v241[2];
  v142 = v241[3];
  v143 = v241[4];
  v144 = v241[5];
  v139 = v241[0];
  v140 = v241[1];
  sub_D78D8();

  sub_160BC(v241, &qword_116848, &qword_E2CA0);
  v227[4] = v137;
  v228 = v138;
  v227[3] = v136;
  v227[2] = v135;
  v227[0] = v133;
  v227[1] = v134;
  sub_DC40(&qword_1172C8, &unk_E0480);
  v46 = v99;
  sub_D7808();
  v47 = *(a2 + 168);
  v129 = *(a2 + 152);
  v130 = v47;
  v131 = *(a2 + 184);
  v132 = *(a2 + 200);
  v48 = *(a2 + 104);
  v125 = *(a2 + 88);
  v126 = v48;
  v49 = *(a2 + 136);
  v127 = *(a2 + 120);
  v128 = v49;
  v50 = *(a2 + 72);
  v123 = *(a2 + 56);
  v124 = v50;
  sub_D78E8();
  swift_getKeyPath();
  v129 = v248;
  v130 = v249;
  v131 = v250;
  v132 = v251;
  v125 = v244;
  v126 = v245;
  v127 = v246;
  v128 = v247;
  v123 = *v243;
  v124 = *&v243[16];
  sub_D78D8();

  sub_160BC(v243, &qword_116848, &qword_E2CA0);
  v51 = v120;
  v52 = v121;
  v53 = v122;
  v54 = (a2 + *(v15 + 56));
  v55 = *v54;
  v56 = v54[1];
  v57 = v54[2];
  v117 = v55;
  v118 = v56;
  v119 = v57;
  sub_DC40(&qword_1169A8, &qword_E28F0);
  sub_D7808();
  v58 = v113;
  v59 = v114;
  v61 = v115;
  v60 = v116;
  v62 = sub_16244();
  v82 = v60;
  v81.n128_u64[0] = v58;
  v81.n128_u64[1] = v59;
  *(&v80 + 1) = v52;
  *&v80 = v51;
  *(&v79 + 1) = v85;
  *&v79 = v86;
  *(&v78 + 1) = v93;
  *&v78 = v94;
  *(&v77 + 1) = v95;
  *&v77 = v96;
  *(&v76 + 1) = v97;
  *&v76 = v98;
  v63 = v110;
  v65 = sub_774D0(0, v103, 1, v62, v64, v102, v101, v100, v110, v76, v77, v78, v92, v91, v90, v89, v88, v87, v79, v84, 1, v227, v46, v80, v53, v81, v61, v82);
  v66 = v105;
  v67 = v106;
  v68 = *(v106 + 16);
  v69 = v104;
  v70 = v107;
  v68(v105, v104, v107, v65);
  v71 = v108;
  sub_73294(v63, v108, type metadata accessor for GCSProfileContentView);
  v72 = v109;
  (v68)(v109, v66, v70);
  v73 = sub_DC40(&qword_118280, &qword_E0B38);
  sub_73294(v71, &v72[*(v73 + 48)], type metadata accessor for GCSProfileContentView);
  sub_277D8(v110, type metadata accessor for GCSProfileContentView);
  v74 = *(v67 + 8);
  v74(v69, v70);
  sub_277D8(v71, type metadata accessor for GCSProfileContentView);
  return (v74)(v66, v70);
}

void sub_6EACC(int a1@<W0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  v115 = a3;
  v5 = type metadata accessor for GCSControllerSheetDetailView(0);
  v92[0] = *(v5 - 8);
  __chkstk_darwin(v5);
  v92[1] = v6;
  v93 = v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_DC40(&qword_118288, &qword_E0B40);
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v8 = v92 - v7;
  v102 = sub_DC40(&qword_118290, &qword_E0B48);
  v101 = *(v102 - 8);
  __chkstk_darwin(v102);
  v95 = v92 - v9;
  v113 = sub_DC40(&qword_118298, &qword_E0B50);
  v111 = *(v113 - 8);
  __chkstk_darwin(v113);
  v100 = v92 - v10;
  v11 = sub_DC40(&qword_1182A0, &qword_E0B58);
  __chkstk_darwin(v11 - 8);
  v114 = v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v92 - v14;
  v16 = sub_DC40(&qword_1182A8, &unk_E0B60);
  __chkstk_darwin(v16 - 8);
  v18 = v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v92 - v20;
  v112 = sub_DC40(&qword_1182B0, &qword_E1CD0);
  v110 = *(v112 - 8);
  __chkstk_darwin(v112);
  v116 = v92 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v118 = v92 - v24;
  v99 = a1;
  v117 = v15;
  v96 = v8;
  if (a1)
  {
    v25 = a2[3];
    type metadata accessor for GCSPreferencesStore(0);
    sub_71E78(&qword_116448, type metadata accessor for GCSPreferencesStore, &unk_E23A8);
    v26 = v25;
    v128 = sub_D6DF8();
    v129 = v27;
    v130 = v26;
    v131 = 0;
    v132 = 0;
  }

  else
  {
    v28 = a2[2];
    v29 = a2[3];
    type metadata accessor for GCSPreferencesStore(0);
    sub_71E78(&qword_116448, type metadata accessor for GCSPreferencesStore, &unk_E23A8);
    v30 = v28;
    v31 = v29;
    v128 = sub_D6DF8();
    v129 = v32;
    v130 = v30;
    v131 = v31;
    v132 = 1;
  }

  sub_732FC();
  sub_73350();
  sub_D70B8();
  v103 = v120;
  v104 = v121;
  v107 = *(&v120 + 1);
  v108 = v120;
  v105 = *(&v121 + 1);
  v106 = v121;
  v109 = v122;
  sub_733A4(v120, *(&v120 + 1), v121, *(&v121 + 1), v122);
  sub_DC40(&qword_118140, &qword_E1A80);
  v33 = sub_D7808();
  __chkstk_darwin(v33);
  v94 = a2;
  sub_16054(v21, v18, &qword_1182A8, &unk_E0B60);
  v34 = sub_D7088();
  v35 = 1;
  LOBYTE(v128) = 1;
  *&v120 = sub_A9308(0xD000000000000010, 0x80000000000E5D80);
  *(&v120 + 1) = v36;
  sub_16000();
  v37 = sub_D73B8();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  KeyPath = swift_getKeyPath();
  v119 = 0;
  v120 = v34;
  LOBYTE(v121) = v128;
  *(&v121 + 1) = v37;
  v122 = v39;
  v123 = v41 & 1;
  v124 = v43;
  v125 = KeyPath;
  v126 = 1;
  v127 = 0;
  sub_DC40(&qword_1182C8, &unk_E0BA0);
  sub_D6998();
  sub_DC40(&qword_1182D0, &unk_E1D10);
  sub_15FB8(&qword_1182D8, &qword_1182C8, &unk_E0BA0, &protocol conformance descriptor for VStack<A>);
  sub_71E78(&qword_117DE8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  sub_73400();
  sub_D7878();
  sub_160BC(v21, &qword_1182A8, &unk_E0B60);
  *(&v121 + 1) = &type metadata for GameControllerFeatures;
  v122 = sub_735D8();
  v45 = sub_D69E8();
  sub_7362C(&v120);
  v46 = v117;
  if (v45)
  {
    if (v99)
    {
      v47 = 1;
      v48 = v102;
      v49 = v100;
    }

    else
    {
      v50 = v94;
      v51 = v93;
      sub_73294(v94, v93, type metadata accessor for GCSControllerSheetDetailView);
      sub_D7D98();
      v52 = sub_D7D88();
      v53 = (*(v92[0] + 80) + 32) & ~*(v92[0] + 80);
      v54 = swift_allocObject();
      *(v54 + 16) = v52;
      *(v54 + 24) = &protocol witness table for MainActor;
      sub_71EC4(v51, v54 + v53);
      sub_73294(v50, v51, type metadata accessor for GCSControllerSheetDetailView);
      v55 = sub_D7D88();
      v56 = swift_allocObject();
      *(v56 + 16) = v55;
      *(v56 + 24) = &protocol witness table for MainActor;
      sub_71EC4(v51, v56 + v53);
      sub_D78F8();
      sub_DC40(&qword_118308, &qword_E0BC0);
      sub_15FB8(&qword_118310, &qword_118308, &qword_E0BC0, &protocol conformance descriptor for LabelGroup<A>);
      v57 = v96;
      sub_D78A8();
      v58 = v50[4];
      v59 = v50[5];
      v60 = v50[6];
      *&v120 = v58;
      *(&v120 + 1) = v59;
      *&v121 = v60;
      sub_DC40(&qword_1180F8, &unk_E0770);
      sub_D78B8();
      v61 = v128;
      v62 = sub_D7C18();
      v64 = v63;
      if (v62 == sub_D7C18() && v64 == v65)
      {

        v66 = 0;
      }

      else
      {
        v67 = sub_D8118();

        v66 = 0;
        if ((v67 & 1) == 0)
        {
          *&v120 = v58;
          *(&v120 + 1) = v59;
          *&v121 = v60;
          sub_D78B8();
          v68 = v128;
          v69 = sub_D7C18();
          v71 = v70;
          if (v69 == sub_D7C18() && v71 == v72)
          {

            v66 = 0;
          }

          else
          {
            v73 = sub_D8118();

            v66 = v73 ^ 1;
          }
        }
      }

      v74 = swift_getKeyPath();
      v75 = swift_allocObject();
      *(v75 + 16) = v66 & 1;
      v76 = v95;
      (*(v97 + 32))(v95, v57, v98);
      v48 = v102;
      v77 = (v76 + *(v102 + 36));
      *v77 = v74;
      v77[1] = sub_285D8;
      v77[2] = v75;
      v49 = v100;
      sub_21A44(v76, v100, &qword_118290, &qword_E0B48);
      v47 = 0;
      v46 = v117;
    }

    (*(v101 + 56))(v49, v47, 1, v48);
    sub_21A44(v49, v46, &qword_118298, &qword_E0B50);
    v35 = 0;
  }

  (*(v111 + 56))(v46, v35, 1, v113);
  v78 = v110;
  v79 = *(v110 + 16);
  v80 = v116;
  v81 = v112;
  v79(v116, v118, v112);
  v82 = v114;
  sub_16054(v46, v114, &qword_1182A0, &qword_E0B58);
  v83 = v115;
  v84 = v104;
  *v115 = v103;
  v83[1] = v84;
  v85 = v109;
  *(v83 + 32) = v109;
  v86 = sub_DC40(&qword_118300, &qword_E0BB8);
  v79(v83 + *(v86 + 48), v80, v81);
  sub_16054(v82, v83 + *(v86 + 64), &qword_1182A0, &qword_E0B58);
  v87 = v108;
  v88 = v107;
  v89 = v106;
  v90 = v105;
  sub_733A4(v108, v107, v106, v105, v85);
  sub_73678(v87, v88, v89, v90, v85);
  sub_160BC(v117, &qword_1182A0, &qword_E0B58);
  v91 = *(v78 + 8);
  v91(v118, v81);
  sub_160BC(v82, &qword_1182A0, &qword_E0B58);
  v91(v116, v81);
  sub_73678(v87, v88, v89, v90, v85);
}

uint64_t sub_6F874(uint64_t a1)
{
  v2 = type metadata accessor for GCSControllerSheetDetailView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v8[1] = sub_6D0BC();
  swift_getKeyPath();
  sub_73294(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GCSControllerSheetDetailView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_71EC4(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  sub_DC40(&qword_118328, &unk_E0C20);
  sub_DC40(&qword_1182F0, &qword_E0BB0);
  sub_15FB8(&qword_118330, &qword_118328, &unk_E0C20, &protocol conformance descriptor for [A]);
  sub_71E78(&qword_117DE8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  sub_73484();
  return sub_D7988();
}

uint64_t sub_6FA74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_DC40(&qword_118338, &unk_E1D50);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17[-v8];
  v20 = *(a2 + 208);
  v21 = *(a2 + 216);
  sub_DC40(&qword_118100, &qword_E0780);
  sub_D78B8();
  v18 = a1;
  v10 = sub_6D490(sub_73FFC, v17, v19);

  v11 = 1;
  if (v10)
  {
    nullsub_1();
    v13 = v12;
    v14 = v9 + *(sub_DC40(&qword_118160, &unk_E07D0) + 36);
    v15 = sub_D6998();
    (*(*(v15 - 8) + 16))(v14, a1, v15);
    v14[*(sub_DC40(&qword_118168, &unk_E1AA0) + 36)] = 1;
    *v9 = v13;
    (*(v7 + 32))(a3, v9, v6);
    v11 = 0;
  }

  return (*(v7 + 56))(a3, v11, 1, v6);
}

uint64_t sub_6FC74()
{
  v0 = sub_DC40(&qword_118318, &unk_E0BF8);
  v1 = sub_15FB8(&qword_118320, &qword_118318, &unk_E0BF8, &protocol conformance descriptor for TupleView<A>);

  return LabelGroup.init(content:)(sub_6FD18, 0, v0, v1);
}

uint64_t sub_6FD18@<X0>(uint64_t a1@<X8>)
{
  sub_D7028();
  v2 = sub_D73A8();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_D7028();
  v9 = sub_D73A8();
  v11 = v10;
  v13 = v12 & 1;
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  *(a1 + 48) = v12 & 1;
  *(a1 + 56) = v14;
  sub_1F900(v2, v4, v6 & 1);

  sub_1F900(v9, v11, v13);

  sub_1F8F0(v9, v11, v13);

  sub_1F8F0(v2, v4, v6 & 1);
}

uint64_t sub_6FE90(uint64_t *a1, void **a2, uint64_t a3)
{
  v6 = sub_D7AC8();
  v63 = *(v6 - 8);
  v64 = v6;
  __chkstk_darwin(v6);
  v61 = v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_D7AF8();
  v60 = *(v62 - 8);
  __chkstk_darwin(v62);
  v59 = v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for GCSControllerSheetDetailView(0);
  v56 = *(v9 - 8);
  __chkstk_darwin(v9);
  v57 = v10;
  v58 = v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for GCSProfileParams(0);
  __chkstk_darwin(v54);
  v53 = v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v51 - v13;
  v15 = sub_D6998();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v51 - v20;
  v52 = *a1;
  v22 = *a2;
  v55 = v9;
  v23 = *(v9 + 40);
  sub_DC40(&qword_118140, &qword_E1A80);
  v66 = a3;
  v51[1] = v23;
  sub_D77E8();
  v65 = v22;
  v24 = [v22 uuid];
  sub_D6978();

  sub_71E78(&unk_119150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  LOBYTE(v24) = sub_D7BA8();
  v25 = *(v16 + 8);
  v25(v18, v15);
  v25(v21, v15);
  if ((v24 & 1) == 0)
  {
    v26 = [v65 uuid];
    sub_D6978();

    (*(v16 + 16))(v18, v21, v15);
    sub_D77F8();
    v25(v21, v15);
  }

  v27 = v55;
  v28 = v66;
  v29 = v66 + *(v55 + 52);
  v30 = *v29;
  v31 = *(v29 + 8);
  v32 = *(v29 + 16);
  *&aBlock = *v29;
  *(&aBlock + 1) = v31;
  LOBYTE(v68) = v32;
  sub_DC40(&qword_116510, &qword_DD4D0);
  sub_D78B8();
  if (v72 != 1)
  {
    *&aBlock = v30;
    *(&aBlock + 1) = v31;
    LOBYTE(v68) = v32;
    LOBYTE(v72) = 1;
    sub_D78C8();
    goto LABEL_7;
  }

  sub_71320();
  v33 = *v28;
  if (*v28)
  {
    sub_450A0(0, &qword_118F10, GCSProfile_ptr);
    v34 = v33;
    sub_DC40(&qword_1172C8, &unk_E0480);
    sub_D77E8();
    v35 = sub_D1EF0(v14);
    (*(&stru_298.flags + (swift_isaMask & *v34)))(v52, v35, 1);

LABEL_7:
    sub_D20B4(v14);
    sub_73294(v14, v53, type metadata accessor for GCSProfileParams);
    sub_DC40(&qword_1172C8, &unk_E0480);
    sub_D77F8();
    sub_277D8(v14, type metadata accessor for GCSProfileParams);
    sub_D77E8();
    v36 = &v14[*(v54 + 20)];
    v38 = *v36;
    v37 = *(v36 + 1);

    sub_277D8(v14, type metadata accessor for GCSProfileParams);
    v39 = v28 + *(v27 + 56);
    v40 = *v39;
    v41 = *(v39 + 2);
    aBlock = v40;
    v68 = v41;
    v72 = v38;
    v73 = v37;
    sub_DC40(&qword_1169A8, &qword_E28F0);
    sub_D77F8();
    sub_450A0(0, &qword_118F30, OS_dispatch_queue_ptr);
    v42 = sub_D7E58();
    v43 = v58;
    sub_73294(v28, v58, type metadata accessor for GCSControllerSheetDetailView);
    v44 = (*(v56 + 80) + 16) & ~*(v56 + 80);
    v45 = swift_allocObject();
    sub_71EC4(v43, v45 + v44);
    v70 = sub_731E4;
    v71 = v45;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v68 = sub_284B4;
    v69 = &unk_1088F8;
    v46 = _Block_copy(&aBlock);

    v47 = v59;
    sub_D7AE8();
    *&aBlock = _swiftEmptyArrayStorage;
    sub_71E78(&qword_1169F0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_DC40(&unk_118F40, &unk_E2B00);
    sub_15FB8(&qword_1169F8, &unk_118F40, &unk_E2B00, &protocol conformance descriptor for [A]);
    v48 = v61;
    v49 = v64;
    sub_D7F78();
    sub_D7E68();
    _Block_release(v46);

    (*(v63 + 8))(v48, v49);
    return (*(v60 + 8))(v47, v62);
  }

  type metadata accessor for GCSPreferencesStore(0);
  sub_71E78(&qword_116448, type metadata accessor for GCSPreferencesStore, &unk_E23A8);
  result = sub_D6DD8();
  __break(1u);
  return result;
}

void sub_7075C(uint64_t a1)
{
  v3 = type metadata accessor for GCSProfileParams(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_71320();
  v6 = *v1;
  if (*v1)
  {
    sub_450A0(0, &qword_118F10, GCSProfile_ptr);
    type metadata accessor for GCSControllerSheetDetailView(0);
    v7 = v6;
    sub_DC40(&qword_1172C8, &unk_E0480);
    sub_D77E8();
    v8 = sub_D1EF0(v5);
    (*(&stru_298.flags + (swift_isaMask & *v7)))(a1, v8, 1);
  }

  else
  {
    type metadata accessor for GCSPreferencesStore(0);
    sub_71E78(&qword_116448, type metadata accessor for GCSPreferencesStore, &unk_E23A8);
    sub_D6DD8();
    __break(1u);
  }
}

uint64_t sub_70904(uint64_t a1)
{
  v2 = type metadata accessor for GCSProfileParams(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GCSControllerSheetDetailView(0);
  sub_DC40(&qword_1172C8, &unk_E0480);
  sub_D77E8();
  v5 = *(a1 + 24);
  v6 = *a1;
  if (*a1)
  {
    v7 = v5;
    v8 = [v6 controllers];
    sub_450A0(0, &qword_117060, GCSController_ptr);
    v9 = sub_D7D28();

    sub_50648(v4, v7, v9, &v21);
    v10 = *(a1 + 168);
    v32[6] = *(a1 + 152);
    v32[7] = v10;
    v32[8] = *(a1 + 184);
    v33 = *(a1 + 200);
    v11 = *(a1 + 104);
    v32[2] = *(a1 + 88);
    v32[3] = v11;
    v12 = *(a1 + 136);
    v32[4] = *(a1 + 120);
    v32[5] = v12;
    v13 = *(a1 + 72);
    v32[0] = *(a1 + 56);
    v32[1] = v13;
    v14 = *(a1 + 168);
    v28 = *(a1 + 152);
    v29 = v14;
    v30 = *(a1 + 184);
    v31 = *(a1 + 200);
    v15 = *(a1 + 104);
    v24 = *(a1 + 88);
    v25 = v15;
    v16 = *(a1 + 136);
    v26 = *(a1 + 120);
    v27 = v16;
    v17 = *(a1 + 72);
    v22 = *(a1 + 56);
    v23 = v17;
    sub_16054(v32, v34, &qword_116848, &qword_E2CA0);
    sub_DC40(&qword_116848, &qword_E2CA0);
    sub_D78C8();
    v34[6] = v28;
    v34[7] = v29;
    v34[8] = v30;
    v35 = v31;
    v34[2] = v24;
    v34[3] = v25;
    v34[4] = v26;
    v34[5] = v27;
    v34[0] = v22;
    v34[1] = v23;
    return sub_160BC(v34, &qword_116848, &qword_E2CA0);
  }

  else
  {
    type metadata accessor for GCSPreferencesStore(0);
    sub_71E78(&qword_116448, type metadata accessor for GCSPreferencesStore, &unk_E23A8);
    v19 = v5;
    result = sub_D6DD8();
    __break(1u);
  }

  return result;
}

uint64_t sub_70B90(uint64_t a1)
{
  v57 = type metadata accessor for GCSProfileParams(0) - 8;
  __chkstk_darwin(v57);
  v58 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v56 = &v50 - v4;
  __chkstk_darwin(v5);
  v7 = &v50 - v6;
  v8 = sub_D6998();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v50 - v13;
  v15 = type metadata accessor for GCSControllerSheetDetailView(0);
  v16 = *(v15 + 52);
  v17 = v15;
  v51 = v15;
  v18 = (a1 + v16);
  v19 = *v18;
  v20 = v18[1];
  LOBYTE(v18) = *(v18 + 16);
  *&v72 = v19;
  *(&v72 + 1) = v20;
  LOBYTE(v73) = v18;
  LOBYTE(v70[0]) = 0;
  sub_DC40(&qword_116510, &qword_DD4D0);
  sub_D78C8();
  v21 = (a1 + *(v17 + 44));
  v22 = *v21;
  v54 = v21[1];
  v55 = v22;
  v53 = v21[2];
  *&v72 = v22;
  *(&v72 + 1) = v54;
  *&v73 = v53;
  v52 = sub_DC40(&qword_118108, &unk_E0788);
  sub_D78B8();
  v23 = *&v70[0];
  v24 = [*&v70[0] uuid];

  sub_D6978();
  v25 = v51;
  (*(v9 + 16))(v11, v14, v8);
  sub_DC40(&qword_118140, &qword_E1A80);
  sub_D77F8();
  (*(v9 + 8))(v14, v8);
  *&v72 = v55;
  *(&v72 + 1) = v54;
  *&v73 = v53;
  sub_D78B8();
  v26 = *&v70[0];
  sub_D20B4(v7);

  sub_73294(v7, v56, type metadata accessor for GCSProfileParams);
  sub_DC40(&qword_1172C8, &unk_E0480);
  sub_D77F8();
  sub_277D8(v7, type metadata accessor for GCSProfileParams);
  sub_D77E8();
  v27 = &v7[*(v57 + 28)];
  v29 = *v27;
  v28 = *(v27 + 1);

  v30 = v7;
  v31 = v58;
  sub_277D8(v30, type metadata accessor for GCSProfileParams);
  v32 = (a1 + *(v25 + 56));
  v33 = *v32;
  v34 = *(v32 + 2);
  v72 = v33;
  *&v73 = v34;
  *&v70[0] = v29;
  *(&v70[0] + 1) = v28;
  sub_DC40(&qword_1169A8, &qword_E28F0);
  sub_D77F8();
  sub_D77E8();
  v35 = *(a1 + 24);
  v36 = *a1;
  if (*a1)
  {
    v37 = v35;
    v38 = [v36 controllers];
    sub_450A0(0, &qword_117060, GCSController_ptr);
    v39 = sub_D7D28();

    sub_50648(v31, v37, v39, &v59);
    v40 = *(a1 + 168);
    v70[6] = *(a1 + 152);
    v70[7] = v40;
    v70[8] = *(a1 + 184);
    v71 = *(a1 + 200);
    v41 = *(a1 + 104);
    v70[2] = *(a1 + 88);
    v70[3] = v41;
    v42 = *(a1 + 136);
    v70[4] = *(a1 + 120);
    v70[5] = v42;
    v43 = *(a1 + 72);
    v70[0] = *(a1 + 56);
    v70[1] = v43;
    v44 = *(a1 + 168);
    v66 = *(a1 + 152);
    v67 = v44;
    v68 = *(a1 + 184);
    v69 = *(a1 + 200);
    v45 = *(a1 + 104);
    v62 = *(a1 + 88);
    v63 = v45;
    v46 = *(a1 + 136);
    v64 = *(a1 + 120);
    v65 = v46;
    v47 = *(a1 + 72);
    v60 = *(a1 + 56);
    v61 = v47;
    sub_16054(v70, &v72, &qword_116848, &qword_E2CA0);
    sub_DC40(&qword_116848, &qword_E2CA0);
    sub_D78C8();
    v78 = v66;
    v79 = v67;
    v80 = v68;
    v81 = v69;
    v74 = v62;
    v75 = v63;
    v76 = v64;
    v77 = v65;
    v72 = v60;
    v73 = v61;
    return sub_160BC(&v72, &qword_116848, &qword_E2CA0);
  }

  else
  {
    type metadata accessor for GCSPreferencesStore(0);
    sub_71E78(&qword_116448, type metadata accessor for GCSPreferencesStore, &unk_E23A8);
    v49 = v35;
    result = sub_D6DD8();
    __break(1u);
  }

  return result;
}

void sub_7112C(void **a1)
{
  v2 = type metadata accessor for GCSProfileParams(0);
  __chkstk_darwin(v2 - 8);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = a1 + *(type metadata accessor for GCSControllerSheetDetailView(0) + 44);
  v10[1] = *v5;
  v11 = *(v5 + 8);
  sub_DC40(&qword_118108, &unk_E0788);
  sub_D78B8();
  v6 = v10[0];
  sub_71320();
  v7 = *a1;
  if (*a1)
  {
    sub_450A0(0, &qword_118F10, GCSProfile_ptr);
    v8 = v7;
    sub_DC40(&qword_1172C8, &unk_E0480);
    sub_D77E8();
    v9 = sub_D1EF0(v4);
    (*(&stru_298.flags + (swift_isaMask & *v8)))(v6, v9, 1);
  }

  else
  {
    type metadata accessor for GCSPreferencesStore(0);
    sub_71E78(&qword_116448, type metadata accessor for GCSPreferencesStore, &unk_E23A8);
    sub_D6DD8();
    __break(1u);
  }
}

void *sub_71320()
{
  v1 = v0;
  v74 = type metadata accessor for GCSProfileParams(0);
  __chkstk_darwin(v74);
  v76 = &v70 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v70 - v4;
  v71 = type metadata accessor for GCSControllerSheetDetailView(0);
  v6 = *(v71 + 48);
  v72 = sub_DC40(&qword_1172C8, &unk_E0480);
  v73 = v6;
  v75 = v5;
  sub_D77E8();
  v7 = *(v1 + 168);
  v103 = *(v1 + 152);
  v104 = v7;
  v105 = *(v1 + 184);
  v106 = *(v1 + 200);
  v8 = *(v1 + 104);
  v99[1] = *(v1 + 88);
  v100 = v8;
  v9 = *(v1 + 136);
  v101 = *(v1 + 120);
  v102 = v9;
  v10 = *(v1 + 56);
  v77 = v1;
  v11 = *(v1 + 72);
  v98 = v10;
  v99[0] = v11;
  v70 = sub_DC40(&qword_116848, &qword_E2CA0);
  sub_D78B8();
  v12 = v107[16];

  result = sub_23D08(v107);
  v80 = *(v12 + 16);
  if (!v80)
  {

    v15 = _swiftEmptyArrayStorage;
LABEL_48:
    v54 = sub_CEE7C(v15);

    v56 = v76;
    v55 = v77;
    sub_D77E8();
    v57 = sub_D16B4(v54);

    sub_277D8(v56, type metadata accessor for GCSProfileParams);
    v58 = v74;
    v59 = v75;
    v60 = *(v74 + 44);

    *(v59 + v60) = v57;
    v61 = *(v55 + 168);
    v103 = *(v55 + 152);
    v104 = v61;
    v105 = *(v55 + 184);
    v106 = *(v55 + 200);
    v62 = *(v55 + 104);
    v99[1] = *(v55 + 88);
    v100 = v62;
    v63 = *(v55 + 136);
    v101 = *(v55 + 120);
    v102 = v63;
    v64 = *(v55 + 72);
    v98 = *(v55 + 56);
    v99[0] = v64;
    sub_D78B8();
    v95 = v87[6];
    v96 = v87[7];
    v97 = v88;
    v91 = v87[2];
    v92 = v87[3];
    v93 = v87[4];
    v94 = v87[5];
    v89 = v87[0];
    v90 = v87[1];
    sub_23D08(&v89);
    *(v59 + *(v58 + 72)) = v90;
    v65 = v55 + *(v71 + 56);
    v66 = *v65;
    v67 = *(v65 + 16);
    v98 = v66;
    *&v99[0] = v67;
    sub_DC40(&qword_1169A8, &qword_E28F0);
    sub_D77E8();
    v68 = v87[0];
    v69 = (v59 + *(v58 + 20));

    *v69 = v68;
    sub_73294(v59, v56, type metadata accessor for GCSProfileParams);
    sub_D77F8();
    return sub_277D8(v59, type metadata accessor for GCSProfileParams);
  }

  v14 = 0;
  v79 = v12 + 32;
  v15 = _swiftEmptyArrayStorage;
  v78 = v12;
  while (v14 < *(v12 + 16))
  {
    v16 = v79 + (v14 << 6);
    v17 = *(v16 + 48);
    v18 = *(v17 + 16);
    v84 = *(v16 + 56);
    if (v18)
    {
      v82 = v15;
      v83 = v14;
      *&v89 = _swiftEmptyArrayStorage;

      sub_272B4(0, v18, 0);
      v19 = v89;
      v81 = v17;
      v20 = (v17 + 64);
      do
      {
        v22 = *(v20 - 4);
        v21 = *(v20 - 3);
        v23 = *(v20 - 2);
        v24 = *(v20 - 1);
        v85 = *v20;
        v86 = v23;
        *&v89 = v19;
        v26 = v19[2];
        v25 = v19[3];

        if (v26 >= v25 >> 1)
        {
          sub_272B4((v25 > 1), v26 + 1, 1);
          v19 = v89;
        }

        v20 += 5;
        *(&v99[0] + 1) = &type metadata for GCSElementMappingView;
        *&v99[1] = &off_10AC48;
        v27 = swift_allocObject();
        *&v98 = v27;
        v27[2] = v22;
        v27[3] = v21;
        v28 = v85;
        v27[4] = v86;
        v27[5] = v24;
        v27[6] = v28;
        v19[2] = v26 + 1;
        sub_272DC(&v98, &v19[5 * v26 + 4]);
        --v18;
      }

      while (v18);

      v12 = v78;
      v15 = v82;
      v14 = v83;
    }

    else
    {

      v19 = _swiftEmptyArrayStorage;
    }

    v29 = v19[2];
    v30 = v15[2];
    v31 = v30 + v29;
    if (__OFADD__(v30, v29))
    {
      goto LABEL_50;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v31 > v15[3] >> 1)
    {
      if (v30 <= v31)
      {
        v32 = v30 + v29;
      }

      else
      {
        v32 = v30;
      }

      result = sub_2716C(result, v32, 1, v15);
      v15 = result;
    }

    v33 = v84;
    if (v19[2])
    {
      if ((v15[3] >> 1) - v15[2] < v29)
      {
        goto LABEL_54;
      }

      sub_DC40(&qword_1169A0, &unk_DD6B0);
      swift_arrayInitWithCopy();

      if (v29)
      {
        v34 = v15[2];
        v35 = __OFADD__(v34, v29);
        v36 = v34 + v29;
        if (v35)
        {
          goto LABEL_56;
        }

        v15[2] = v36;
      }
    }

    else
    {

      if (v29)
      {
        goto LABEL_51;
      }
    }

    v37 = *(v33 + 16);
    if (v37)
    {
      v38 = v15;
      *&v87[0] = _swiftEmptyArrayStorage;
      sub_272B4(0, v37, 0);
      v39 = *&v87[0];
      v40 = v37 - 1;
      for (i = 32; ; i += 48)
      {
        v42 = *(v33 + i);
        v43 = *(v33 + i + 16);
        *(v99 + 11) = *(v33 + i + 27);
        v98 = v42;
        v99[0] = v43;
        sub_1B040(&v98, &v89);
        *&v87[0] = v39;
        v45 = v39[2];
        v44 = v39[3];
        if (v45 >= v44 >> 1)
        {
          sub_272B4((v44 > 1), v45 + 1, 1);
          v39 = *&v87[0];
        }

        *(&v90 + 1) = &type metadata for GCSDirectionPadElementMappingView;
        *&v91 = &off_10AC98;
        v46 = swift_allocObject();
        *&v89 = v46;
        v47 = v99[0];
        v46[1] = v98;
        v46[2] = v47;
        *(v46 + 43) = *(v99 + 11);
        v39[2] = v45 + 1;
        sub_272DC(&v89, &v39[5 * v45 + 4]);
        if (!v40)
        {
          break;
        }

        --v40;
        v33 = v84;
      }

      v15 = v38;
    }

    else
    {

      v39 = _swiftEmptyArrayStorage;
    }

    v48 = v39[2];
    v49 = v15[2];
    v50 = v49 + v48;
    if (__OFADD__(v49, v48))
    {
      goto LABEL_52;
    }

    if (v50 > v15[3] >> 1)
    {
      if (v49 <= v50)
      {
        v53 = v49 + v48;
      }

      else
      {
        v53 = v15[2];
      }

      result = sub_2716C((&dword_0 + 1), v53, 1, v15);
      v15 = result;
      v49 = result[2];
      if (v39[2])
      {
LABEL_37:
        if (((v15[3] >> 1) - v49) < v48)
        {
          goto LABEL_55;
        }

        sub_DC40(&qword_1169A0, &unk_DD6B0);
        swift_arrayInitWithCopy();

        if (v48)
        {
          v51 = v15[2];
          v35 = __OFADD__(v51, v48);
          v52 = v51 + v48;
          if (v35)
          {
            goto LABEL_57;
          }

          v15[2] = v52;
        }

        goto LABEL_4;
      }
    }

    else if (v48)
    {
      goto LABEL_37;
    }

    if (v48)
    {
      goto LABEL_53;
    }

LABEL_4:
    if (++v14 == v80)
    {

      goto LABEL_48;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
  return result;
}

uint64_t sub_71A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for GCSPreferencesStore(0);
  sub_71E78(&qword_116448, type metadata accessor for GCSPreferencesStore, &unk_E23A8);

  return sub_D6DF8();
}

double sub_71AFC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, __int128 a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned __int8 a16)
{
  v52 = a6;
  v53 = a7;
  v50 = a4;
  v51 = a5;
  v47 = a2;
  v58 = a16;
  v56 = a14;
  v57 = a15;
  v55 = a13;
  v54 = a12;
  v48 = a11;
  v49 = a3;
  v46 = a10;
  v19 = type metadata accessor for GCSProfileParams(0);
  __chkstk_darwin(v19);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v46 - v23;
  v25 = sub_D6998();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v46 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v46 - v30;
  v32 = *(a8 + 112);
  *(a9 + 152) = *(a8 + 96);
  *(a9 + 168) = v32;
  *(a9 + 184) = *(a8 + 128);
  v33 = *(a8 + 48);
  *(a9 + 88) = *(a8 + 32);
  *(a9 + 104) = v33;
  v34 = *(a8 + 80);
  *(a9 + 120) = *(a8 + 64);
  *(a9 + 136) = v34;
  v35 = *(a8 + 16);
  *(a9 + 56) = *a8;
  v36 = v47;
  *a9 = a1;
  *(a9 + 8) = v36;
  v37 = v50;
  *(a9 + 16) = v49;
  *(a9 + 24) = v37;
  v38 = v52;
  *(a9 + 32) = v51;
  *(a9 + 40) = v38;
  *(a9 + 48) = v53;
  *(a9 + 200) = *(a8 + 144);
  *(a9 + 72) = v35;
  *(a9 + 208) = v46;
  *(a9 + 224) = v48;
  v39 = type metadata accessor for GCSControllerSheetDetailView(0);
  sub_D6988();
  (*(v26 + 16))(v28, v31, v25);
  sub_D77D8();
  (*(v26 + 8))(v31, v25);
  v40 = a9 + v39[11];
  *v40 = v54;
  *(v40 + 16) = v55;
  sub_D1AF8(v24);
  sub_73294(v24, v21, type metadata accessor for GCSProfileParams);
  sub_D77D8();
  sub_277D8(v24, type metadata accessor for GCSProfileParams);
  v41 = a9 + v39[13];
  v42 = v57;
  *v41 = v56;
  *(v41 + 8) = v42;
  *(v41 + 16) = v58;
  v43 = a9 + v39[14];
  v59 = 0;
  v60 = 0xE000000000000000;
  sub_D77D8();
  result = *&v61;
  v45 = v62;
  *v43 = v61;
  *(v43 + 16) = v45;
  return result;
}

void *sub_71E1C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_724C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_71E78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_71EC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GCSControllerSheetDetailView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_71F28(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for GCSControllerSheetDetailView(0);
  v5 = v2 + ((*(*(v4 - 8) + 80) + 16) & ~*(*(v4 - 8) + 80));
  v10 = *(v5 + 208);
  v11 = *(v5 + 216);
  sub_DC40(&qword_118100, &qword_E0780);
  sub_D78B8();
  v9[2] = a2;
  v6 = sub_6D490(sub_73FFC, v9, v9[0]);

  if (v6)
  {
    v8 = (v5 + *(v4 + 44));
    v10 = *v8;
    v11 = *(v8 + 1);
    v9[3] = v6;
    sub_DC40(&qword_118108, &unk_E0788);
    return sub_D78C8();
  }

  return result;
}

uint64_t sub_7204C(uint64_t *a1, void **a2)
{
  v5 = *(type metadata accessor for GCSControllerSheetDetailView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_6FE90(a1, a2, v6);
}

unint64_t sub_720CC()
{
  result = qword_118148;
  if (!qword_118148)
  {
    sub_450A0(255, &qword_118F10, GCSProfile_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_118148);
  }

  return result;
}

uint64_t sub_72164(uint64_t *a1)
{
  if (sub_D62A8(2, 26, 0, 0))
  {
    sub_D71B8();

    return sub_D6CF8();
  }

  else
  {
    sub_D6DA8();
    swift_getWitnessTable();
    sub_D7178();
    sub_D6CF8();
    sub_D7EE8();
    swift_getWitnessTable();
    sub_D6DA8();
    swift_getWitnessTable();
    sub_D7178();
    return sub_D6CF8();
  }
}

uint64_t sub_722C8(uint64_t *a1)
{
  if (sub_D62A8(2, 26, 0, 0))
  {
    sub_D71B8();
    sub_D6CF8();
  }

  else
  {
    sub_D6DA8();
    swift_getWitnessTable();
    sub_D7178();
    sub_D6CF8();
    sub_D7EE8();
    swift_getWitnessTable();
    sub_D6DA8();
    swift_getWitnessTable();
    sub_D7178();
    sub_D6CF8();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

void *sub_724C8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_DC40(&qword_118340, &qword_E0C30);
  v10 = *(sub_D6998() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_D6998() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_72728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_DC40(&qword_118140, &qword_E1A80);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 40);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_DC40(&qword_1172C8, &unk_E0480);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 48);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_72878(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = sub_DC40(&qword_118140, &qword_E1A80);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 40);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_DC40(&qword_1172C8, &unk_E0480);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_729B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_26BDC(319, a2, a3, a4);
  if (v4 <= 0x3F)
  {
    sub_450A0(319, &qword_1164A8, GCSGame_ptr);
    if (v5 <= 0x3F)
    {
      sub_450A0(319, &qword_117060, GCSController_ptr);
      if (v6 <= 0x3F)
      {
        sub_72C90(319, &qword_1181C8, type metadata accessor for GCSCompatibilityMode, &type metadata accessor for Binding);
        if (v7 <= 0x3F)
        {
          sub_72D5C(319, &qword_116930, &type metadata for GCSProfileViewData, &type metadata accessor for Binding);
          if (v8 <= 0x3F)
          {
            sub_72C2C(319);
            if (v9 <= 0x3F)
            {
              sub_72C90(319, &qword_1181D8, &type metadata accessor for UUID, &type metadata accessor for State);
              if (v10 <= 0x3F)
              {
                sub_72CF4(319);
                if (v11 <= 0x3F)
                {
                  sub_72C90(319, &qword_117348, type metadata accessor for GCSProfileParams, &type metadata accessor for State);
                  if (v12 <= 0x3F)
                  {
                    sub_72D5C(319, &qword_116918, &type metadata for Bool, &type metadata accessor for Binding);
                    if (v13 <= 0x3F)
                    {
                      sub_72D5C(319, &qword_116938, &type metadata for String, &type metadata accessor for State);
                      if (v14 <= 0x3F)
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
      }
    }
  }
}

void sub_72C2C(uint64_t a1)
{
  if (!qword_1181D0)
  {
    sub_EBC0(&qword_117DB8, &qword_E09C0);
    v1 = sub_D7958();
    if (!v2)
    {
      atomic_store(v1, &qword_1181D0);
    }
  }
}

void sub_72C90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_72CF4(uint64_t a1)
{
  if (!qword_1181E0)
  {
    sub_450A0(255, &qword_118F10, GCSProfile_ptr);
    v1 = sub_D7958();
    if (!v2)
    {
      atomic_store(v1, &qword_1181E0);
    }
  }
}

void sub_72D5C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_72E38()
{
  result = qword_118258;
  if (!qword_118258)
  {
    sub_EBC0(&qword_118158, &unk_E07C0);
    sub_72EC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_118258);
  }

  return result;
}

unint64_t sub_72EC4()
{
  result = qword_118260;
  if (!qword_118260)
  {
    sub_EBC0(&qword_118150, &qword_E07B8);
    sub_EBC0(&qword_118120, &qword_E07A8);
    sub_450A0(255, &qword_118F10, GCSProfile_ptr);
    sub_EBC0(&qword_118118, &qword_E07A0);
    sub_D6998();
    sub_EBC0(&qword_118110, &qword_E0798);
    sub_D6D08();
    sub_15FB8(&qword_118138, &qword_118110, &qword_E0798, &protocol conformance descriptor for Form<A>);
    sub_71E78(&qword_116888, &type metadata accessor for GroupedFormStyle, &protocol conformance descriptor for GroupedFormStyle);
    swift_getOpaqueTypeConformance2();
    sub_71E78(&unk_119150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    swift_getOpaqueTypeConformance2();
    sub_720CC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_118260);
  }

  return result;
}

uint64_t sub_731FC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for GCSControllerSheetDetailView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_73270(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_73294(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_732FC()
{
  result = qword_1182B8;
  if (!qword_1182B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1182B8);
  }

  return result;
}

unint64_t sub_73350()
{
  result = qword_1182C0;
  if (!qword_1182C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1182C0);
  }

  return result;
}

id sub_733A4(void *a1, uint64_t a2, void *a3, void *a4, char a5)
{
  if (a5)
  {
    v6 = a1;
    a1 = a3;
    a3 = a4;
  }

  v7 = a1;

  return a3;
}

unint64_t sub_73400()
{
  result = qword_1182E0;
  if (!qword_1182E0)
  {
    sub_EBC0(&qword_1182D0, &unk_E1D10);
    sub_73484();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1182E0);
  }

  return result;
}

unint64_t sub_73484()
{
  result = qword_1182E8;
  if (!qword_1182E8)
  {
    sub_EBC0(&qword_1182F0, &qword_E0BB0);
    sub_D6998();
    sub_73584();
    sub_71E78(&qword_117DE8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1182E8);
  }

  return result;
}

unint64_t sub_73584()
{
  result = qword_1182F8;
  if (!qword_1182F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1182F8);
  }

  return result;
}

unint64_t sub_735D8()
{
  result = qword_11CFD8[0];
  if (!qword_11CFD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_11CFD8);
  }

  return result;
}

uint64_t sub_7362C(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void sub_73678(void *a1, uint64_t a2, void *a3, void *a4, char a5)
{
  if (a5)
  {
  }
}

void sub_736CC(_BYTE *a1@<X8>)
{
  type metadata accessor for GCSControllerSheetDetailView(0);
  sub_DC40(&qword_1180F8, &unk_E0770);
  sub_D78B8();
  v2 = sub_D7C18();
  v4 = v3;
  if (v2 == sub_D7C18() && v4 == v5)
  {

    v8 = 0;
  }

  else
  {
    v7 = sub_D8118();

    v8 = v7 ^ 1;
  }

  *a1 = v8 & 1;
}

uint64_t sub_737FC()
{
  v1 = (type metadata accessor for GCSControllerSheetDetailView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3 + v1[12];
  v6 = sub_D6998();
  v7 = *(*(v6 - 8) + 8);
  v7(v5, v6);
  sub_DC40(&qword_118140, &qword_E1A80);

  v8 = v0 + v3 + v1[13];

  v7(v0 + v3 + v1[14], v6);
  type metadata accessor for GCSProfileParams(0);

  sub_DC40(&qword_1172C8, &unk_E0480);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_73AB0(_BYTE *a1)
{
  type metadata accessor for GCSControllerSheetDetailView(0);
  if (*a1)
  {
    v2 = &GCSCompatibilityModeXbox360;
  }

  else
  {
    v2 = &GCSCompatibilityModeDisabled;
  }

  *v2;
  sub_DC40(&qword_1180F8, &unk_E0770);
  return sub_D78C8();
}

uint64_t sub_73B7C()
{
  v1 = (type metadata accessor for GCSControllerSheetDetailView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[12];
  v6 = sub_D6998();
  v7 = *(*(v6 - 8) + 8);
  v7(v5, v6);
  sub_DC40(&qword_118140, &qword_E1A80);

  v8 = v0 + v3 + v1[13];

  v7(v0 + v3 + v1[14], v6);
  type metadata accessor for GCSProfileParams(0);

  sub_DC40(&qword_1172C8, &unk_E0480);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_73E28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for GCSControllerSheetDetailView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_6FA74(a1, v6, a2);
}

uint64_t getEnumTagSinglePayload for GameControllerFeatures(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for GameControllerFeatures(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_73F8C()
{
  result = qword_11CFF0[0];
  if (!qword_11CFF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_11CFF0);
  }

  return result;
}

id sub_74030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 8);
  if (v5)
  {

    return v5;
  }

  else
  {
    v7 = type metadata accessor for GCSPreferencesStore(0);
    sub_15564(v7, v8, v9, v10);
    result = sub_D6DD8();
    __break(1u);
  }

  return result;
}

uint64_t sub_7408C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for GCSPreferencesStore(0);
  sub_15564(v4, v5, v6, v7);

  return sub_D6DC8();
}

uint64_t sub_74108()
{
  sub_DC40(&qword_118360, &unk_E0D60);
  sub_D78B8();
  return v1;
}

void (*sub_741B8(uint64_t *a1))(uint64_t, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = v1[5];
  v6 = v1[6];
  v4[8] = v5;
  v4[9] = v6;
  v7 = v1[7];
  v4[10] = v7;
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;

  v4[11] = sub_DC40(&qword_118360, &unk_E0D60);
  sub_D78B8();
  return sub_74274;
}

uint64_t sub_74278()
{
  sub_DC40(&qword_118360, &unk_E0D60);
  sub_D78E8();
  return v1;
}

uint64_t sub_742D4()
{
  sub_DC40(&qword_116F98, &unk_DE370);
  sub_D78B8();
  return v1;
}

void (*sub_74384(uint64_t *a1))(uint64_t, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = v1[8];
  v6 = v1[9];
  v4[8] = v5;
  v4[9] = v6;
  v7 = v1[10];
  v4[10] = v7;
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;

  v4[11] = sub_DC40(&qword_116F98, &unk_DE370);
  sub_D78B8();
  return sub_780FC;
}

uint64_t sub_74440()
{
  sub_DC40(&qword_116F98, &unk_DE370);
  sub_D78E8();
  return v1;
}

uint64_t sub_7449C()
{
  sub_DC40(&qword_1164C8, &qword_DCBC0);
  sub_D78B8();
  return v1;
}

void (*sub_7454C(uint64_t *a1))(uint64_t, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = v1[11];
  v6 = v1[12];
  v4[8] = v5;
  v4[9] = v6;
  v7 = v1[13];
  v4[10] = v7;
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;

  v4[11] = sub_DC40(&qword_1164C8, &qword_DCBC0);
  sub_D78B8();
  return sub_780FC;
}

uint64_t sub_74608()
{
  sub_DC40(&qword_1164C8, &qword_DCBC0);
  sub_D78E8();
  return v1;
}

uint64_t sub_74664()
{
  sub_DC40(&qword_116510, &qword_DD4D0);
  sub_D78B8();
  return v1;
}

void (*sub_74718(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + 112);
  v6 = *(v1 + 120);
  *(v4 + 48) = v5;
  *(v4 + 56) = v6;
  v7 = *(v1 + 128);
  *(v4 + 19) = v7;
  *v4 = v5;
  *(v4 + 8) = v6;
  *(v4 + 16) = v7;

  *(v4 + 64) = sub_DC40(&qword_116510, &qword_DD4D0);
  sub_D78B8();
  return sub_27AA0;
}

uint64_t sub_747CC()
{
  sub_DC40(&qword_116510, &qword_DD4D0);
  sub_D78E8();
  return v1;
}

uint64_t sub_74828()
{
  sub_DC40(&qword_116510, &qword_DD4D0);
  sub_D78B8();
  return v1;
}

void (*sub_748DC(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + 136);
  v6 = *(v1 + 144);
  *(v4 + 48) = v5;
  *(v4 + 56) = v6;
  v7 = *(v1 + 152);
  *(v4 + 19) = v7;
  *v4 = v5;
  *(v4 + 8) = v6;
  *(v4 + 16) = v7;

  *(v4 + 64) = sub_DC40(&qword_116510, &qword_DD4D0);
  sub_D78B8();
  return sub_23098;
}

uint64_t sub_74990()
{
  sub_DC40(&qword_116510, &qword_DD4D0);
  sub_D78E8();
  return v1;
}

uint64_t sub_749EC()
{
  sub_DC40(&qword_118368, &unk_E0D70);
  sub_D78B8();
  return v1;
}

void (*sub_74AA0(void *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = v1[20];
  v6 = v1[21];
  v3[8] = v5;
  v3[9] = v6;
  v7 = v1[22];
  v3[10] = v7;
  *v3 = v5;
  v3[1] = v6;
  v3[2] = v7;
  v8 = v7;

  v4[11] = sub_DC40(&qword_118368, &unk_E0D70);
  sub_D78B8();
  return sub_23270;
}

uint64_t sub_74B64()
{
  sub_DC40(&qword_118368, &unk_E0D70);
  sub_D78E8();
  return v1;
}

uint64_t sub_74BC0()
{
  sub_DC40(&qword_1166E0, &qword_DD340);
  sub_D77E8();
  return v1;
}

void (*sub_74C74(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + 184);
  *(v3 + 50) = v5;
  v6 = *(v1 + 192);
  *(v4 + 32) = v6;
  *v4 = v5;
  *(v4 + 8) = v6;

  *(v4 + 40) = sub_DC40(&qword_1166E0, &qword_DD340);
  sub_D77E8();
  return sub_74D20;
}

void sub_74D20(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  *(*a1 + 16) = *(*a1 + 50);
  *(v1 + 24) = v3;
  *(v1 + 49) = v2;
  sub_D77F8();

  free(v1);
}

uint64_t sub_74D88()
{
  sub_DC40(&qword_1166E0, &qword_DD340);
  sub_D7808();
  return v1;
}

__n128 sub_74DE4@<Q0>(uint64_t a1@<X8>)
{
  sub_DC40(&qword_116DD0, qword_E0D80);
  sub_D78B8();
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  result = v4;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_74E78(uint64_t a1)
{
  v2 = *(v1 + 248);
  v11[2] = *(v1 + 232);
  v11[3] = v2;
  v11[4] = *(v1 + 264);
  v12 = *(v1 + 280);
  v3 = *(v1 + 216);
  v11[0] = *(v1 + 200);
  v11[1] = v3;
  v7 = *(v1 + 232);
  v8 = *(v1 + 248);
  v9 = *(v1 + 264);
  v10 = *(v1 + 280);
  v5 = *(v1 + 200);
  v6 = *(v1 + 216);
  sub_16054(v11, v13, &qword_116DD0, qword_E0D80);
  sub_DC40(&qword_116DD0, qword_E0D80);
  sub_D78C8();
  v13[2] = v7;
  v13[3] = v8;
  v13[4] = v9;
  v14 = v10;
  v13[0] = v5;
  v13[1] = v6;
  return sub_160BC(v13, &qword_116DD0, qword_E0D80);
}

void (*sub_74F80(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x2D0uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + 232);
  v6 = *(v1 + 248);
  *(v3 + 32) = v5;
  *(v3 + 48) = v6;
  v7 = *(v1 + 280);
  *(v3 + 80) = v7;
  v8 = *(v1 + 200);
  v9 = *(v1 + 216);
  *v3 = v8;
  *(v3 + 16) = v9;
  v10 = *(v1 + 264);
  *(v3 + 64) = v10;
  *(v3 + 120) = v5;
  *(v3 + 136) = v6;
  *(v3 + 168) = v7;
  *(v3 + 88) = v8;
  *(v3 + 104) = v9;
  *(v3 + 152) = v10;
  sub_16054(v3, v3 + 176, &qword_116DD0, qword_E0D80);
  *(v4 + 712) = sub_DC40(&qword_116DD0, qword_E0D80);
  sub_D78B8();
  return sub_30BD0;
}

double sub_7506C@<D0>(uint64_t a1@<X8>)
{
  sub_DC40(&qword_116DD0, qword_E0D80);
  sub_D78E8();
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t type metadata accessor for GCSProfileContentView(uint64_t a1)
{
  result = qword_11D210;
  if (!qword_11D210)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_75174(uint64_t a1)
{
  v2 = type metadata accessor for GCSProfileParams(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GCSProfileContentView(0);
  sub_77D44(a1, v4, type metadata accessor for GCSProfileParams);
  sub_DC40(&qword_116840, &unk_DD500);
  sub_D78C8();
  return sub_28ACC(a1);
}

void (*sub_7523C(void **a1))(uint64_t a1, char a2)
{
  v3 = *(*(type metadata accessor for GCSProfileParams(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *a1 = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    *a1 = malloc(v3);
    v4 = malloc(v3);
  }

  a1[1] = v4;
  v5 = sub_DC40(&qword_116840, &unk_DD500);
  a1[2] = v5;
  v6 = *(*(v5 - 1) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  a1[3] = v7;
  v9 = type metadata accessor for GCSProfileContentView(0);
  sub_16054(v1 + *(v9 + 68), v8, &qword_116840, &unk_DD500);
  sub_D78B8();
  return sub_75370;
}

void sub_75370(uint64_t a1, char a2)
{
  v2 = *(a1 + 24);
  v3 = *a1;
  v4 = *(a1 + 8);
  if (a2)
  {
    sub_77D44(*(a1 + 8), v3, type metadata accessor for GCSProfileParams);
    sub_D78C8();
    sub_160BC(v2, &qword_116840, &unk_DD500);
    sub_28ACC(v4);
  }

  else
  {
    sub_D78C8();
    sub_160BC(v2, &qword_116840, &unk_DD500);
  }

  free(v2);
  free(v4);

  free(v3);
}

uint64_t sub_75450(uint64_t (*a1)(uint64_t))
{
  type metadata accessor for GCSProfileContentView(0);
  v2 = sub_DC40(&qword_116840, &unk_DD500);
  return a1(v2);
}

uint64_t sub_754AC()
{
  type metadata accessor for GCSProfileContentView(0);
  sub_DC40(&qword_116FA8, &qword_DE380);
  sub_D78B8();
  return v1;
}

uint64_t sub_75514(uint64_t a1)
{
  type metadata accessor for GCSProfileContentView(0);
  sub_DC40(&qword_116FA8, &qword_DE380);
  return sub_D78C8();
}

void (*sub_75580(uint64_t *a1))(uint64_t, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for GCSProfileContentView(0) + 72));
  v6 = *v5;
  v7 = v5[1];
  v4[8] = *v5;
  v4[9] = v7;
  v8 = v5[2];
  v4[10] = v8;
  *v4 = v6;
  v4[1] = v7;
  v4[2] = v8;

  v4[11] = sub_DC40(&qword_116FA8, &qword_DE380);
  sub_D78B8();
  return sub_780FC;
}

uint64_t sub_7564C()
{
  type metadata accessor for GCSProfileContentView(0);
  sub_DC40(&qword_116FA8, &qword_DE380);
  sub_D78E8();
  return v1;
}

uint64_t sub_756B8()
{
  type metadata accessor for GCSProfileContentView(0);
  sub_DC40(&qword_116738, &qword_DD3C8);
  sub_D78B8();
  return v1;
}

uint64_t sub_75720(uint64_t a1, uint64_t a2)
{
  type metadata accessor for GCSProfileContentView(0);
  sub_DC40(&qword_116738, &qword_DD3C8);
  return sub_D78C8();
}

void (*sub_7579C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for GCSProfileContentView(0) + 76));
  v6 = *v5;
  v7 = v5[1];
  v4[12] = *v5;
  v4[13] = v7;
  v8 = v5[2];
  v9 = v5[3];
  v4[14] = v8;
  v4[15] = v9;
  *v4 = v6;
  v4[1] = v7;
  v4[2] = v8;
  v4[3] = v9;

  v4[16] = sub_DC40(&qword_116738, &qword_DD3C8);
  sub_D78B8();
  return sub_75868;
}

void sub_75868(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 104);
  v2[4] = *(*a1 + 96);
  v2[10] = v2[8];
  v4 = v2[9];
  v5 = v2[15];
  v6 = v2[14];
  v2[5] = v3;
  v2[6] = v6;
  v2[7] = v5;
  v2[11] = v4;
  if (a2)
  {

    sub_D78C8();
  }

  else
  {
    sub_D78C8();
  }

  free(v2);
}

uint64_t sub_75940()
{
  type metadata accessor for GCSProfileContentView(0);
  sub_DC40(&qword_116738, &qword_DD3C8);
  sub_D78E8();
  return v1;
}

uint64_t sub_759AC()
{
  v1 = sub_D6F68();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 24);
  if (*(v0 + 32) != 1)
  {

    sub_D7E28();
    v7 = sub_D71C8();
    sub_D6A08();

    sub_D6F58();
    swift_getAtKeyPath();
    sub_16AA0(v5, 0);
    (*(v2 + 8))(v4, v1);
    if (v9[15] != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = *(v0 + 1) ^ 1;
    return v6 & 1;
  }

  if (v5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = 1;
  return v6 & 1;
}

uint64_t sub_75B18()
{
  v1 = sub_D6F68();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 24);
  if (*(v0 + 32) != 1)
  {

    sub_D7E28();
    v7 = sub_D71C8();
    sub_D6A08();

    sub_D6F58();
    swift_getAtKeyPath();
    sub_16AA0(v5, 0);
    (*(v2 + 8))(v4, v1);
    if (v9[15] != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = *(v0 + 2) ^ 1;
    return v6 & 1;
  }

  if (v5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = 1;
  return v6 & 1;
}

uint64_t sub_75C8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v149 = a2;
  v3 = type metadata accessor for GCSProfileShareGestureView(0);
  __chkstk_darwin(v3 - 8);
  v144 = v134 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_DC40(&qword_118488, &qword_E0E50);
  v145 = *(v5 - 8);
  v146 = v5;
  __chkstk_darwin(v5);
  v142 = v134 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v141 = v134 - v8;
  v9 = sub_DC40(&qword_118490, &qword_E0E58);
  __chkstk_darwin(v9 - 8);
  v148 = v134 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v158 = v134 - v12;
  v13 = type metadata accessor for GCSProfileLightView(0);
  __chkstk_darwin(v13 - 8);
  v140 = v134 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_DC40(&qword_118498, &qword_E0E60);
  v143 = *(v15 - 8);
  __chkstk_darwin(v15);
  v139 = v134 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v138 = v134 - v18;
  v19 = sub_DC40(&qword_1184A0, &qword_E0E68);
  __chkstk_darwin(v19 - 8);
  v147 = v134 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v159 = v134 - v22;
  v155 = sub_DC40(&qword_116840, &unk_DD500);
  __chkstk_darwin(v155);
  v154 = v134 - v23;
  v24 = type metadata accessor for GCSProfileHapticsView(0);
  __chkstk_darwin(v24 - 8);
  v26 = v134 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_DC40(&qword_1184A8, &qword_E0E70);
  v27 = *(v150 - 8);
  __chkstk_darwin(v150);
  v137 = v134 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v136 = v134 - v30;
  v31 = sub_DC40(&qword_1184B0, &qword_E0E78);
  __chkstk_darwin(v31 - 8);
  v157 = v134 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v161 = v134 - v34;
  v35 = sub_DC40(&qword_1184B8, &qword_E0E80);
  v36 = *(v35 - 8);
  __chkstk_darwin(v35);
  v38 = v134 - v37;
  v39 = sub_D6F68();
  v152 = *(v39 - 8);
  v153 = v39;
  __chkstk_darwin(v39);
  v151 = v134 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_DC40(&qword_1184C0, &qword_E0E88);
  __chkstk_darwin(v41 - 8);
  v156 = v134 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v160 = v134 - v44;
  v45 = *(a1 + 192);
  LOBYTE(v169[0]) = *(a1 + 184);
  *(&v169[0] + 1) = v45;
  sub_DC40(&qword_1166E0, &qword_DD340);
  v46 = sub_D77E8();
  if (v162)
  {
    goto LABEL_2;
  }

  v55 = *(a1 + 24);
  if (*(a1 + 32) != 1)
  {

    sub_D7E28();
    v72 = sub_D71C8();
    v135 = v27;
    v73 = v26;
    v74 = v15;
    v75 = v72;
    sub_D6A08();

    v76 = v151;
    sub_D6F58();
    swift_getAtKeyPath();
    sub_16AA0(v55, 0);
    v77 = v76;
    v15 = v74;
    v26 = v73;
    v27 = v135;
    v46 = (*(v152 + 8))(v77, v153);
    if (LOBYTE(v169[0]) == 1)
    {
      goto LABEL_18;
    }

LABEL_2:
    v47 = 1;
    goto LABEL_3;
  }

  if ((v55 & 1) == 0)
  {
    goto LABEL_2;
  }

LABEL_18:
  if (*(a1 + 1) != 1)
  {
    goto LABEL_2;
  }

  v135 = v134;
  __chkstk_darwin(v46);
  v134[2] = &v134[-4];
  v134[1] = sub_DC40(&qword_1184D8, &qword_E0ED0);
  v78 = sub_EBC0(&qword_1184E0, qword_E0ED8);
  v79 = sub_15FB8(&qword_1184E8, &qword_1184E0, qword_E0ED8, &protocol conformance descriptor for TextField<A>);
  *&v169[0] = v78;
  *(&v169[0] + 1) = v79;
  swift_getOpaqueTypeConformance2();
  sub_D79C8();
  (*(v36 + 32))(v160, v38, v35);
  v47 = 0;
LABEL_3:
  v48 = 1;
  (*(v36 + 56))(v160, v47, 1, v35);
  v49 = *(a1 + 120);
  v50 = *(a1 + 128);
  *&v169[0] = *(a1 + 112);
  *(&v169[0] + 1) = v49;
  LOBYTE(v169[1]) = v50;
  sub_DC40(&qword_116510, &qword_DD4D0);
  sub_D78B8();
  if (v162 != 1)
  {
    goto LABEL_13;
  }

  type metadata accessor for GCSProfileContentView(0);
  v51 = v154;
  sub_D78E8();
  sub_7BC2C(v51, v26);
  v52 = *(a1 + 24);
  v53 = v15;
  if (*(a1 + 32) != 1)
  {

    sub_D7E28();
    v56 = sub_D71C8();
    sub_D6A08();

    v57 = v151;
    sub_D6F58();
    swift_getAtKeyPath();
    sub_16AA0(v52, 0);
    (*(v152 + 8))(v57, v153);
    if (LOBYTE(v169[0]) != 1)
    {
      goto LABEL_6;
    }

LABEL_11:
    v54 = *(a1 + 2) ^ 1;
    goto LABEL_12;
  }

  if (v52)
  {
    goto LABEL_11;
  }

LABEL_6:
  v54 = 1;
LABEL_12:
  KeyPath = swift_getKeyPath();
  v59 = swift_allocObject();
  *(v59 + 16) = v54 & 1;
  v60 = v137;
  sub_78028(v26, v137, type metadata accessor for GCSProfileHapticsView);
  v61 = (v60 + *(v150 + 36));
  *v61 = KeyPath;
  v61[1] = sub_78100;
  v61[2] = v59;
  v62 = v60;
  v63 = v136;
  sub_21A44(v62, v136, &qword_1184A8, &qword_E0E70);
  sub_21A44(v63, v161, &qword_1184A8, &qword_E0E70);
  v48 = 0;
  v15 = v53;
LABEL_13:
  v64 = 1;
  (v27[7])(v161, v48, 1, v150);
  v65 = *(a1 + 144);
  v66 = *(a1 + 152);
  *&v169[0] = *(a1 + 136);
  *(&v169[0] + 1) = v65;
  LOBYTE(v169[1]) = v66;
  sub_D78B8();
  if (v162 != 1)
  {
    goto LABEL_24;
  }

  type metadata accessor for GCSProfileContentView(0);
  v67 = v154;
  sub_D78E8();
  v68 = *(a1 + 248);
  v170 = *(a1 + 232);
  v171 = v68;
  v172 = *(a1 + 264);
  v173 = *(a1 + 280);
  v69 = *(a1 + 216);
  v169[0] = *(a1 + 200);
  v169[1] = v69;
  sub_DC40(&qword_116DD0, qword_E0D80);
  sub_D78E8();
  v70 = v140;
  sub_3BD00(v67, v181, v140);
  v71 = *(a1 + 24);
  if (*(a1 + 32) == 1)
  {
    if ((v71 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else
  {

    sub_D7E28();
    v80 = sub_D71C8();
    sub_D6A08();

    v81 = v151;
    sub_D6F58();
    swift_getAtKeyPath();
    sub_16AA0(v71, 0);
    (*(v152 + 8))(v81, v153);
    if (LOBYTE(v169[0]) != 1)
    {
      LOBYTE(v64) = 1;
      goto LABEL_23;
    }
  }

  LOBYTE(v64) = *(a1 + 2) ^ 1;
LABEL_23:
  v82 = swift_getKeyPath();
  v83 = swift_allocObject();
  *(v83 + 16) = v64 & 1;
  v84 = v139;
  sub_78028(v70, v139, type metadata accessor for GCSProfileLightView);
  v85 = (v84 + *(v15 + 36));
  *v85 = v82;
  v85[1] = sub_78100;
  v85[2] = v83;
  v86 = v84;
  v87 = v138;
  sub_21A44(v86, v138, &qword_118498, &qword_E0E60);
  sub_21A44(v87, v159, &qword_118498, &qword_E0E60);
  v64 = 0;
LABEL_24:
  (*(v143 + 56))(v159, v64, 1, v15);
  *&v169[0] = *(a1 + 40);
  *(v169 + 8) = *(a1 + 48);
  sub_DC40(&qword_118360, &unk_E0D60);
  sub_D78B8();
  v88 = v162;
  *&v169[0] = *(a1 + 64);
  *(v169 + 8) = *(a1 + 72);
  sub_DC40(&qword_116F98, &unk_DE370);
  sub_D78E8();
  v89 = v162;
  v90 = v163;
  *&v169[0] = *(a1 + 88);
  *(v169 + 8) = *(a1 + 96);
  sub_DC40(&qword_1164C8, &qword_DCBC0);
  sub_D78E8();
  v91 = v162;
  v92 = v163;
  v143 = type metadata accessor for GCSProfileContentView(0);
  v93 = a1 + *(v143 + 72);
  *&v169[0] = *v93;
  *(v169 + 8) = *(v93 + 8);
  sub_DC40(&qword_116FA8, &qword_DE380);
  sub_D78E8();
  sub_346B8(v88, v89, *(&v89 + 1), v90, v91, *(&v91 + 1), v92, v162, &v176, *(&v162 + 1), v163);
  v94 = *(a1 + 24);
  v95 = *(a1 + 32);
  if (v95 == 1)
  {
    v96 = v144;
    if ((v94 & 1) == 0)
    {
LABEL_26:
      v97 = 1;
      goto LABEL_29;
    }
  }

  else
  {

    sub_D7E28();
    v98 = sub_D71C8();
    sub_D6A08();

    v99 = v151;
    sub_D6F58();
    swift_getAtKeyPath();
    sub_16AA0(v94, 0);
    (*(v152 + 8))(v99, v153);
    v96 = v144;
    if (LOBYTE(v169[0]) != 1)
    {
      goto LABEL_26;
    }
  }

  v97 = *(a1 + 2) ^ 1;
LABEL_29:
  v150 = swift_getKeyPath();
  v144 = swift_allocObject();
  v144[16] = v97 & 1;
  v100 = *(a1 + 176);
  v169[0] = *(a1 + 160);
  *&v169[1] = v100;
  sub_DC40(&qword_118368, &unk_E0D70);
  sub_D78B8();
  if (v162)
  {
    v101 = v162;
    v102 = v154;
    sub_D78E8();
    sub_2A98C(v101, v102, v96);
    if (v95)
    {

      if ((v94 & 1) == 0)
      {
LABEL_32:
        v103 = 1;
LABEL_36:
        v109 = swift_getKeyPath();
        v110 = swift_allocObject();
        *(v110 + 16) = v103 & 1;
        v111 = v96;
        v112 = v142;
        sub_78028(v111, v142, type metadata accessor for GCSProfileShareGestureView);
        v106 = v146;
        v113 = (v112 + *(v146 + 36));
        *v113 = v109;
        v113[1] = sub_78100;
        v113[2] = v110;
        v114 = v112;
        v115 = v141;
        sub_21A44(v114, v141, &qword_118488, &qword_E0E50);
        v116 = v115;
        v105 = v158;
        sub_21A44(v116, v158, &qword_118488, &qword_E0E50);
        v104 = 0;
        goto LABEL_37;
      }
    }

    else
    {

      sub_D7E28();
      v107 = sub_D71C8();
      sub_D6A08();

      v108 = v151;
      sub_D6F58();
      swift_getAtKeyPath();
      sub_16AA0(v94, 0);
      (*(v152 + 8))(v108, v153);

      if (LOBYTE(v169[0]) != 1)
      {
        goto LABEL_32;
      }
    }

    v103 = *(a1 + 2) ^ 1;
    goto LABEL_36;
  }

  v104 = 1;
  v105 = v158;
  v106 = v146;
LABEL_37:
  (*(v145 + 56))(v105, v104, 1, v106);
  v117 = v156;
  sub_77C64(v160, v156);
  v118 = v157;
  sub_16054(v161, v157, &qword_1184B0, &qword_E0E78);
  v119 = v159;
  v120 = v147;
  sub_16054(v159, v147, &qword_1184A0, &qword_E0E68);
  v121 = v148;
  sub_16054(v105, v148, &qword_118490, &qword_E0E58);
  v122 = v149;
  sub_77C64(v117, v149);
  v123 = sub_DC40(&qword_1184C8, &qword_E0EC0);
  sub_16054(v118, v122 + v123[12], &qword_1184B0, &qword_E0E78);
  sub_16054(v120, v122 + v123[16], &qword_1184A0, &qword_E0E68);
  v124 = v122 + v123[20];
  v125 = v178;
  v126 = v179;
  v164 = v178;
  v165 = v179;
  v127 = v180;
  v166 = v180;
  v129 = v176;
  v128 = v177;
  v162 = v176;
  v163 = v177;
  v130 = v150;
  *&v167 = v150;
  *(&v167 + 1) = sub_285D8;
  v131 = v144;
  v168 = v144;
  *(v124 + 96) = v144;
  *v124 = v129;
  *(v124 + 16) = v128;
  *(v124 + 32) = v125;
  *(v124 + 48) = v126;
  v132 = v167;
  *(v124 + 64) = v127;
  *(v124 + 80) = v132;
  sub_16054(v121, v122 + v123[24], &qword_118490, &qword_E0E58);
  sub_16054(&v162, v169, &qword_1184D0, &qword_E0EC8);
  sub_160BC(v158, &qword_118490, &qword_E0E58);
  sub_160BC(v119, &qword_1184A0, &qword_E0E68);
  sub_160BC(v161, &qword_1184B0, &qword_E0E78);
  sub_77CD4(v160);
  sub_160BC(v121, &qword_118490, &qword_E0E58);
  v170 = v178;
  v171 = v179;
  v172 = v180;
  v169[0] = v176;
  v169[1] = v177;
  v173 = v130;
  v174 = sub_285D8;
  v175 = v131;
  sub_160BC(v169, &qword_1184D0, &qword_E0EC8);
  sub_160BC(v120, &qword_1184A0, &qword_E0E68);
  sub_160BC(v157, &qword_1184B0, &qword_E0E78);
  return sub_77CD4(v156);
}

uint64_t sub_76FD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a1;
  v29 = a2;
  v3 = sub_D6CD8();
  v30 = *(v3 - 8);
  v31 = v3;
  __chkstk_darwin(v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for GCSProfileContentView(0);
  v7 = v6 - 8;
  v26 = *(v6 - 8);
  v8 = *(v26 + 64);
  __chkstk_darwin(v6);
  v9 = sub_DC40(&qword_1184E0, qword_E0ED8);
  v10 = *(v9 - 8);
  v27 = v9;
  v28 = v10;
  __chkstk_darwin(v9);
  v12 = &v24 - v11;
  v13 = sub_A9308(0xD000000000000012, 0x80000000000E5E30);
  v15 = v14;
  v16 = (a1 + *(v7 + 84));
  v17 = *v16;
  v19 = *(v16 + 2);
  v18 = *(v16 + 3);
  v32 = v17;
  v33 = v19;
  v34 = v18;
  sub_DC40(&qword_116738, &qword_DD3C8);
  sub_D78E8();
  *&v32 = v13;
  *(&v32 + 1) = v15;
  sub_16000();
  sub_D7A78();
  sub_77D44(v25, &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GCSProfileContentView);
  v20 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v21 = swift_allocObject();
  sub_78028(&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for GCSProfileContentView);
  sub_D6CC8();
  sub_15FB8(&qword_1184E8, &qword_1184E0, qword_E0ED8, &protocol conformance descriptor for TextField<A>);
  v22 = v27;
  sub_D7548();

  (*(v30 + 8))(v5, v31);
  return (*(v28 + 8))(v12, v22);
}

uint64_t sub_77368(uint64_t a1)
{
  v17 = type metadata accessor for GCSProfileParams(0);
  __chkstk_darwin(v17);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = (a1 + *(type metadata accessor for GCSProfileContentView(0) + 76));
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];
  v20 = *v4;
  v21 = v6;
  v22 = v7;
  v23 = v8;
  sub_DC40(&qword_116738, &qword_DD3C8);
  sub_D78B8();
  v10 = v18;
  v9 = v19;

  v12 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v12 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    v20 = v5;
    v21 = v6;
    v22 = v7;
    v23 = v8;
    sub_D78B8();
    v13 = v18;
    v14 = v19;
    sub_DC40(&qword_116840, &unk_DD500);
    sub_D78B8();
    v15 = &v3[*(v17 + 20)];

    *v15 = v13;
    *(v15 + 1) = v14;
    return sub_D78C8();
  }

  return result;
}

__n128 sub_774D0@<Q0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, __int128 a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, char a18, __int128 a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, __int128 a24, uint64_t a25, __n128 a26, unint64_t a27, unint64_t a28)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 8) = a4;
  *(a9 + 16) = a5;
  *(a9 + 24) = swift_getKeyPath();
  *(a9 + 32) = 0;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 112) = a13;
  *(a9 + 120) = a14;
  *(a9 + 128) = a15;
  *(a9 + 136) = a16;
  *(a9 + 144) = a17;
  *(a9 + 152) = a18;
  *(a9 + 160) = a19;
  *(a9 + 176) = a20;
  sub_D77D8();
  v30 = *(a22 + 48);
  *(a9 + 232) = *(a22 + 32);
  *(a9 + 248) = v30;
  *(a9 + 264) = *(a22 + 64);
  v31 = *(a22 + 16);
  *(a9 + 200) = *a22;
  *(a9 + 184) = v38;
  *(a9 + 192) = v39;
  *(a9 + 280) = *(a22 + 80);
  *(a9 + 216) = v31;
  v32 = type metadata accessor for GCSProfileContentView(0);
  sub_21A44(a23, a9 + v32[17], &qword_116840, &unk_DD500);
  v33 = a9 + v32[18];
  *v33 = a24;
  *(v33 + 16) = a25;
  v34 = (a9 + v32[19]);
  result = a26;
  *v34 = a26;
  v34[1].n128_u64[0] = a27;
  v34[1].n128_u64[1] = a28;
  return result;
}

uint64_t sub_776C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_DC40(&qword_116840, &unk_DD500);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 68);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_77794(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
  }

  else
  {
    v7 = sub_DC40(&qword_116840, &unk_DD500);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 68);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_77844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_26BDC(319, a2, a3, a4);
  if (v4 <= 0x3F)
  {
    sub_77B50(319, &qword_116AC0, &type metadata for Bool, &type metadata accessor for Environment);
    if (v5 <= 0x3F)
    {
      sub_77AFC(319, &qword_1183C8, &qword_1183D0, &qword_E0E18);
      if (v6 <= 0x3F)
      {
        sub_77AFC(319, &qword_1183D8, &qword_116FA0, &unk_E0E20);
        if (v7 <= 0x3F)
        {
          sub_77AFC(319, &qword_1183E0, &qword_1164D0, &qword_DCBC8);
          if (v8 <= 0x3F)
          {
            sub_77B50(319, &qword_116918, &type metadata for Bool, &type metadata accessor for Binding);
            if (v9 <= 0x3F)
            {
              sub_77AFC(319, &qword_1183E8, &qword_1183F0, &unk_E0E30);
              if (v10 <= 0x3F)
              {
                sub_77B50(319, &qword_117340, &type metadata for Bool, &type metadata accessor for State);
                if (v11 <= 0x3F)
                {
                  sub_77B50(319, &qword_116F10, &type metadata for LightbarSwatch, &type metadata accessor for Binding);
                  if (v12 <= 0x3F)
                  {
                    sub_26CD4(319);
                    if (v13 <= 0x3F)
                    {
                      sub_77AFC(319, &qword_1183F8, &qword_116FB0, &qword_DE388);
                      if (v14 <= 0x3F)
                      {
                        sub_77B50(319, &qword_118400, &type metadata for String, &type metadata accessor for Binding);
                        if (v15 <= 0x3F)
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
        }
      }
    }
  }
}

void sub_77AFC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_EBC0(a3, a4);
    v5 = sub_D7958();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_77B50(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_77BA4()
{
  result = qword_118468;
  if (!qword_118468)
  {
    sub_EBC0(&qword_118470, &qword_E0E40);
    sub_15FB8(&qword_118478, &qword_118480, &qword_E0E48, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_118468);
  }

  return result;
}

uint64_t sub_77C64(uint64_t a1, uint64_t a2)
{
  v4 = sub_DC40(&qword_1184C0, &qword_E0E88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_77CD4(uint64_t a1)
{
  v2 = sub_DC40(&qword_1184C0, &qword_E0E88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_77D44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_77DAC()
{
  v1 = (type metadata accessor for GCSProfileContentView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  sub_16AA0(*(v0 + v3 + 24), *(v0 + v3 + 32));

  v5 = v0 + v3 + v1[19];

  v6 = v5 + *(sub_DC40(&qword_116840, &unk_DD500) + 32);
  v7 = sub_D6998();
  (*(*(v7 - 8) + 8))(v6, v7);
  type metadata accessor for GCSProfileParams(0);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_78028(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_78090()
{
  v1 = *(type metadata accessor for GCSProfileContentView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_77368(v2);
}

uint64_t GCSElement.id.getter()
{
  v1 = [v0 localizedName];
  v2 = sub_D7C18();

  return v2;
}

void sub_7815C(uint64_t *a1@<X8>)
{
  v3 = [*v1 localizedName];
  v4 = sub_D7C18();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

id sub_781B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  if (*v4)
  {

    return v5;
  }

  else
  {
    type metadata accessor for GCSPreferencesStore(0);
    sub_7A088(&qword_116448, type metadata accessor for GCSPreferencesStore, &unk_E23A8);
    result = sub_D6DD8();
    __break(1u);
  }

  return result;
}

uint64_t sub_78240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for GCSPreferencesStore(0);
  sub_7A088(&qword_116448, type metadata accessor for GCSPreferencesStore, &unk_E23A8);

  return sub_D6DC8();
}

uint64_t sub_782DC()
{
  sub_DC40(&qword_116510, &qword_DD4D0);
  sub_D78B8();
  return v1;
}

void (*sub_78390(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  *(v4 + 48) = v5;
  *(v4 + 56) = v6;
  v7 = *(v1 + 48);
  *(v4 + 19) = v7;
  *v4 = v5;
  *(v4 + 8) = v6;
  *(v4 + 16) = v7;

  *(v4 + 64) = sub_DC40(&qword_116510, &qword_DD4D0);
  sub_D78B8();
  return sub_23098;
}

uint64_t sub_78444()
{
  sub_DC40(&qword_116510, &qword_DD4D0);
  sub_D78E8();
  return v1;
}

uint64_t sub_784A0()
{
  sub_DC40(&qword_116510, &qword_DD4D0);
  sub_D78B8();
  return v1;
}

void (*sub_78554(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  *(v4 + 48) = v5;
  *(v4 + 56) = v6;
  v7 = *(v1 + 72);
  *(v4 + 19) = v7;
  *v4 = v5;
  *(v4 + 8) = v6;
  *(v4 + 16) = v7;

  *(v4 + 64) = sub_DC40(&qword_116510, &qword_DD4D0);
  sub_D78B8();
  return sub_27AA0;
}

uint64_t sub_78608()
{
  sub_DC40(&qword_116510, &qword_DD4D0);
  sub_D78E8();
  return v1;
}

uint64_t sub_78664()
{
  sub_DC40(&qword_1167F8, &unk_DD4C0);
  sub_D78B8();
  return v1;
}

void (*sub_78718(void *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = v1[10];
  v6 = v1[11];
  v3[8] = v5;
  v3[9] = v6;
  v7 = v1[12];
  v3[10] = v7;
  *v3 = v5;
  v3[1] = v6;
  v3[2] = v7;
  v8 = v7;

  v4[11] = sub_DC40(&qword_1167F8, &unk_DD4C0);
  sub_D78B8();
  return sub_23270;
}

uint64_t sub_787DC()
{
  sub_DC40(&qword_1167F8, &unk_DD4C0);
  sub_D78E8();
  return v1;
}

uint64_t type metadata accessor for GCSProfileListSectionViewRow(uint64_t a1)
{
  result = qword_11D530;
  if (!qword_11D530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_7889C(uint64_t a1)
{
  v2 = type metadata accessor for GCSProfileParams(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GCSProfileListSectionViewRow(0);
  sub_28A68(a1, v4);
  sub_DC40(&qword_116840, &unk_DD500);
  sub_D78C8();
  return sub_28ACC(a1);
}

void (*sub_78950(void **a1))(uint64_t a1, char a2)
{
  v3 = *(*(type metadata accessor for GCSProfileParams(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *a1 = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    *a1 = malloc(v3);
    v4 = malloc(v3);
  }

  a1[1] = v4;
  v5 = sub_DC40(&qword_116840, &unk_DD500);
  a1[2] = v5;
  v6 = *(*(v5 - 1) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  a1[3] = v7;
  v9 = type metadata accessor for GCSProfileListSectionViewRow(0);
  sub_16054(v1 + *(v9 + 40), v8, &qword_116840, &unk_DD500);
  sub_D78B8();
  return sub_28C5C;
}

uint64_t sub_78A9C(uint64_t (*a1)(uint64_t))
{
  type metadata accessor for GCSProfileListSectionViewRow(0);
  v2 = sub_DC40(&qword_116840, &unk_DD500);
  return a1(v2);
}

__n128 sub_78AF8@<Q0>(__n128 *a1@<X8>)
{
  type metadata accessor for GCSProfileListSectionViewRow(0);
  sub_DC40(&qword_116848, &qword_E2CA0);
  sub_D78B8();
  a1[6] = v9;
  a1[7] = v10;
  a1[8].n128_u64[0] = v11;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  result = v4;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_78BB4(uint64_t a1)
{
  v2 = v1 + *(type metadata accessor for GCSProfileListSectionViewRow(0) + 44);
  v3 = *(v2 + 112);
  v4 = *(v2 + 80);
  v27 = *(v2 + 96);
  v28 = v3;
  v5 = *(v2 + 112);
  v29 = *(v2 + 128);
  v6 = *(v2 + 48);
  v7 = *(v2 + 16);
  v23 = *(v2 + 32);
  v24 = v6;
  v8 = *(v2 + 48);
  v9 = *(v2 + 80);
  v25 = *(v2 + 64);
  v26 = v9;
  v10 = *(v2 + 16);
  v22[0] = *v2;
  v22[1] = v10;
  v18 = v27;
  v19 = v5;
  v20 = *(v2 + 128);
  v14 = v23;
  v15 = v8;
  v16 = v25;
  v17 = v4;
  v30 = *(v2 + 144);
  v21 = *(v2 + 144);
  v12 = v22[0];
  v13 = v7;
  sub_16054(v22, v31, &qword_116848, &qword_E2CA0);
  sub_DC40(&qword_116848, &qword_E2CA0);
  sub_D78C8();
  v31[6] = v18;
  v31[7] = v19;
  v31[8] = v20;
  v32 = v21;
  v31[2] = v14;
  v31[3] = v15;
  v31[4] = v16;
  v31[5] = v17;
  v31[0] = v12;
  v31[1] = v13;
  return sub_160BC(v31, &qword_116848, &qword_E2CA0);
}

void (*sub_78CFC(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = v1;
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x510uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = v4 + 152;
  v7 = (v2 + *(type metadata accessor for GCSProfileListSectionViewRow(0) + 44));
  v9 = v7[6];
  v8 = v7[7];
  v10 = v7[5];
  *(v5 + 96) = v9;
  *(v5 + 112) = v8;
  v11 = v7[7];
  *(v5 + 128) = v7[8];
  v13 = v7[2];
  v12 = v7[3];
  v14 = v7[1];
  *(v5 + 32) = v13;
  *(v5 + 48) = v12;
  v15 = v7[3];
  v17 = v7[4];
  v16 = v7[5];
  *(v5 + 64) = v17;
  *(v5 + 80) = v16;
  v18 = v7[1];
  v19 = *v7;
  *v5 = *v7;
  *(v5 + 16) = v18;
  *(v5 + 248) = v9;
  v20 = v7[8];
  *(v6 + 112) = v11;
  *(v6 + 128) = v20;
  *(v5 + 184) = v13;
  *(v5 + 200) = v15;
  *(v5 + 216) = v17;
  *(v5 + 232) = v10;
  *(v5 + 152) = v19;
  *(v5 + 144) = *(v7 + 18);
  *(v5 + 296) = *(v7 + 18);
  *(v5 + 168) = v14;
  sub_16054(v5, v5 + 304, &qword_116848, &qword_E2CA0);
  *(v5 + 1288) = sub_DC40(&qword_116848, &qword_E2CA0);
  sub_D78B8();
  return sub_23A8C;
}

double sub_78E30@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for GCSProfileListSectionViewRow(0);
  sub_DC40(&qword_116848, &qword_E2CA0);
  sub_D78E8();
  *(a1 + 96) = v9;
  *(a1 + 112) = v10;
  *(a1 + 128) = v11;
  *(a1 + 144) = v12;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

id sub_78EF4()
{
  v1 = *(v0 + *(type metadata accessor for GCSProfileListSectionViewRow(0) + 48));

  return v1;
}

uint64_t sub_78F28()
{
  v1 = *(v0 + *(type metadata accessor for GCSProfileListSectionViewRow(0) + 48));
  v2 = *(&stru_68.size + (swift_isaMask & *v1));
  if (v2() || (*(&stru_68.offset + (swift_isaMask & *v1)))())
  {
    if (v2() < 1 || (*(&stru_68.offset + (swift_isaMask & *v1)))())
    {
      if (v2() || (v11 = *(&stru_68.offset + (swift_isaMask & *v1)), v11() < 1))
      {
        sub_A9308(0xD000000000000018, 0x80000000000E5E70);
        sub_DC40(&qword_115F08, &unk_DD4B0);
        v3 = swift_allocObject();
        *(v3 + 16) = xmmword_DCB80;
        v4 = v2();
        *(v3 + 56) = &type metadata for Int;
        *(v3 + 64) = &protocol witness table for Int;
        *(v3 + 32) = v4;
        v5 = String.localized(with:)(v3);

        sub_A9308(0xD000000000000012, 0x80000000000E5E90);
        v6 = swift_allocObject();
        *(v6 + 16) = xmmword_DCB80;
        v7 = (*(&stru_68.offset + (swift_isaMask & *v1)))();
        *(v6 + 56) = &type metadata for Int;
        *(v6 + 64) = &protocol witness table for Int;
        *(v6 + 32) = v7;
        v8 = String.localized(with:)(v6);

        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_DC430;
        *(v9 + 56) = &type metadata for String;
        v10 = sub_14B60();
        *(v9 + 32) = v5;
        *(v9 + 96) = &type metadata for String;
        *(v9 + 104) = v10;
        *(v9 + 64) = v10;
        *(v9 + 72) = v8;
LABEL_11:
        countAndFlagsBits = String.localized(with:)(v9)._countAndFlagsBits;

        return countAndFlagsBits;
      }

      sub_DC40(&qword_115F08, &unk_DD4B0);
      v12 = swift_allocObject();
      v18 = xmmword_DCB80;
      *(v12 + 16) = xmmword_DCB80;
      v13 = v11();
      *(v12 + 56) = &type metadata for Int;
      *(v12 + 64) = &protocol witness table for Int;
      *(v12 + 32) = v13;
    }

    else
    {
      sub_DC40(&qword_115F08, &unk_DD4B0);
      v12 = swift_allocObject();
      v18 = xmmword_DCB80;
      *(v12 + 16) = xmmword_DCB80;
      v14 = v2();
      *(v12 + 56) = &type metadata for Int;
      *(v12 + 64) = &protocol witness table for Int;
      *(v12 + 32) = v14;
    }

    v15 = String.localized(with:)(v12);

    v9 = swift_allocObject();
    *(v9 + 16) = v18;
    *(v9 + 56) = &type metadata for String;
    *(v9 + 64) = sub_14B60();
    *(v9 + 32) = v15;
    goto LABEL_11;
  }

  return sub_A9308(0xD000000000000018, 0x80000000000E5ED0);
}

__n128 sub_793D4@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_DC40(&qword_1184F0, &qword_E0F58);
  __chkstk_darwin(v3 - 8);
  v5 = v11 - v4;
  *v5 = sub_D6FB8();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v6 = sub_DC40(&qword_1184F8, &qword_E0F60);
  sub_79530(v1, &v5[*(v6 + 44)]);
  sub_D7A18();
  sub_D6DB8();
  sub_21A44(v5, a1, &qword_1184F0, &qword_E0F58);
  v7 = a1 + *(sub_DC40(&qword_118500, qword_E0F68) + 36);
  v8 = v11[5];
  *(v7 + 64) = v11[4];
  *(v7 + 80) = v8;
  *(v7 + 96) = v11[6];
  v9 = v11[1];
  *v7 = v11[0];
  *(v7 + 16) = v9;
  result = v11[3];
  *(v7 + 32) = v11[2];
  *(v7 + 48) = result;
  return result;
}

uint64_t sub_79530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v114 = a1;
  v109 = a2;
  v113 = sub_D7708();
  v2 = *(v113 - 8);
  __chkstk_darwin(v113);
  v4 = &v103 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_D7598();
  v59 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = (sub_DC40(&qword_1170E8, qword_DE5D0) - 8);
  __chkstk_darwin(v115);
  v116 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v103 - v10;
  v12 = *(sub_D6D98() + 20);
  v13 = enum case for RoundedCornerStyle.continuous(_:);
  v14 = sub_D7048();
  (*(*(v14 - 8) + 104))(&v11[v12], v13, v14);
  __asm { FMOV            V0.2D, #7.0 }

  *v11 = _Q0;
  sub_DC40(&qword_1170D8, &unk_DE5C0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_DC430;
  v21 = enum case for Color.RGBColorSpace.sRGB(_:);
  v22 = *(v59 + 104);
  v22(v7, enum case for Color.RGBColorSpace.sRGB(_:), v5);
  *(v20 + 32) = sub_D76D8();
  v22(v7, v21, v5);
  *(v20 + 40) = sub_D76D8();
  sub_D79D8();
  sub_D6C78();
  v23 = sub_DC40(&qword_1170C8, &unk_DE5B0);
  v24 = &v11[*(v23 + 52)];
  v25 = v136;
  *v24 = v135;
  *(v24 + 1) = v25;
  *(v24 + 4) = v137;
  *&v11[*(v23 + 56)] = 256;
  v26 = sub_D7A18();
  v28 = v27;
  v112 = *(v114 + 24);
  v29 = [v112 sfSymbolsName];
  sub_D7C18();

  sub_D76F8();
  v30 = v113;
  (*(v2 + 104))(v4, enum case for Image.ResizingMode.stretch(_:), v113);
  v31 = sub_D7758();

  (*(v2 + 8))(v4, v30);
  v32 = sub_D7668();
  LOBYTE(v4) = sub_D71F8();
  sub_D6B68();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v141 = v31;
  LOWORD(v142) = 1;
  *(&v142 + 2) = v133;
  WORD3(v142) = v134;
  *(&v142 + 1) = v32;
  LOBYTE(v143) = v4;
  *(&v143 + 1) = *v132;
  DWORD1(v143) = *&v132[3];
  *(&v143 + 1) = v33;
  *&v144 = v35;
  *(&v144 + 1) = v37;
  *&v145 = v39;
  BYTE8(v145) = 0;
  HIDWORD(v145) = *(&v162 + 3);
  *(&v145 + 9) = v162;
  *&v146 = v26;
  *(&v146 + 1) = v28;
  v41 = &v11[*(sub_DC40(&qword_1170D0, &unk_DF330) + 36)];
  v42 = v144;
  *(v41 + 2) = v143;
  *(v41 + 3) = v42;
  v43 = v146;
  *(v41 + 4) = v145;
  *(v41 + 5) = v43;
  v44 = v142;
  *v41 = v141;
  *(v41 + 1) = v44;
  v147[0] = v31;
  v147[1] = 0;
  v148 = 1;
  v150 = v134;
  v149 = v133;
  v151 = v32;
  v152 = v4;
  *&v153[3] = *&v132[3];
  *v153 = *v132;
  v154 = v34;
  v155 = v36;
  v156 = v38;
  v157 = v40;
  v158 = 0;
  *v159 = v162;
  *&v159[3] = *(&v162 + 3);
  v160 = v26;
  v161 = v28;
  sub_16054(&v141, &v119, &qword_1170E0, &qword_DF440);
  sub_160BC(v147, &qword_1170E0, &qword_DF440);
  sub_D7A18();
  sub_D6C28();
  v45 = *(v115 + 11);
  v115 = v11;
  v46 = &v11[v45];
  v47 = v139;
  *v46 = v138;
  *(v46 + 1) = v47;
  *(v46 + 2) = v140;
  v113 = sub_D7088();
  LOBYTE(v162) = 1;
  v48 = [v112 name];
  v49 = sub_D7C18();
  v51 = v50;

  v119 = v49;
  v120 = v51;
  sub_16000();
  v52 = sub_D73B8();
  v54 = v53;
  LOBYTE(v51) = v55;
  sub_D76B8();
  v56 = sub_D7378();
  v110 = v57;
  v111 = v56;
  LODWORD(v59) = v58;
  v112 = v60;

  sub_1F8F0(v52, v54, v51 & 1);

  v61 = 0;
  v62 = 0;
  v63 = 0;
  v64 = 0;
  if ((*(v114 + 16) & 1) == 0)
  {
    v119 = sub_78F28();
    v120 = v65;
    v66 = sub_D73B8();
    v68 = v67;
    v70 = v69;
    sub_D72E8();
    v71 = sub_D7398();
    LODWORD(v114) = v59;
    v59 = v72;
    v74 = v73;

    sub_1F8F0(v66, v68, v70 & 1);

    sub_D76C8();
    v61 = sub_D7378();
    v62 = v75;
    LOBYTE(v66) = v76;
    v64 = v77;

    v78 = v59;
    LOBYTE(v59) = v114;
    sub_1F8F0(v71, v78, v74 & 1);

    v63 = v66 & 1;
    sub_1F900(v61, v62, v66 & 1);
  }

  v104 = v64;
  v105 = v63;
  v79 = v59 & 1;
  v81 = v110;
  v80 = v111;
  v106 = v59 & 1;
  sub_1F900(v111, v110, v59 & 1);
  v82 = v112;

  sub_7A57C(v61, v62, v63, v64);
  sub_7A5C0(v61, v62, v63, v64);
  LOBYTE(v119) = v79;
  sub_7A5C0(v61, v62, v63, v64);
  sub_1F8F0(v80, v81, v79);

  v83 = v162;
  v108 = v162;
  v84 = sub_BE368();
  v114 = v62;
  v85 = v84;
  v107 = v86;
  v87 = v116;
  sub_16054(v115, v116, &qword_1170E8, qword_DE5D0);
  v88 = v87;
  v89 = v109;
  sub_16054(v88, v109, &qword_1170E8, qword_DE5D0);
  v90 = sub_DC40(&qword_1185C8, &qword_E1168);
  v91 = v89 + v90[12];
  v162 = v113;
  LOBYTE(v163) = v83;
  *(&v163 + 1) = v118[0];
  DWORD1(v163) = *(v118 + 3);
  v92 = v111;
  *(&v163 + 1) = v111;
  *&v164 = v81;
  v93 = v106;
  BYTE8(v164) = v106;
  HIDWORD(v164) = *(v117 + 3);
  *(&v164 + 9) = v117[0];
  *&v165 = v82;
  *(&v165 + 1) = v61;
  v95 = v104;
  v94 = v105;
  *&v166 = v62;
  *(&v166 + 1) = v105;
  v167 = v104;
  v96 = v164;
  v97 = v165;
  v98 = v166;
  *(v91 + 80) = v104;
  *(v91 + 48) = v97;
  *(v91 + 64) = v98;
  v99 = v162;
  *(v91 + 16) = v163;
  *(v91 + 32) = v96;
  *v91 = v99;
  v100 = v89 + v90[16];
  *v100 = 0;
  *(v100 + 8) = 1;
  v101 = v89 + v90[20];
  *v101 = v85;
  LOBYTE(v82) = v107 & 1;
  *(v101 + 8) = v107 & 1;
  sub_16054(&v162, &v119, &qword_1185D0, &qword_E1170);
  sub_6A5C4(v85, v82);
  sub_160BC(v115, &qword_1170E8, qword_DE5D0);
  sub_6A6FC(v85, v82);
  v119 = v113;
  v120 = 0;
  v121 = v108;
  *v122 = v118[0];
  *&v122[3] = *(v118 + 3);
  v123 = v92;
  v124 = v110;
  v125 = v93;
  *v126 = v117[0];
  *&v126[3] = *(v117 + 3);
  v127 = v112;
  v128 = v61;
  v129 = v114;
  v130 = v94;
  v131 = v95;
  sub_160BC(&v119, &qword_1185D0, &qword_E1170);
  return sub_160BC(v116, &qword_1170E8, qword_DE5D0);
}

uint64_t sub_79EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for GCSPreferencesStore(0);
  sub_7A088(&qword_116448, type metadata accessor for GCSPreferencesStore, &unk_E23A8);

  return sub_D6DF8();
}

__n128 sub_79F68@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, __int128 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3 & 1;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  *(a9 + 80) = a12;
  *(a9 + 96) = a13;
  v17 = type metadata accessor for GCSProfileListSectionViewRow(0);
  sub_21A44(a14, a9 + v17[10], &qword_116840, &unk_DD500);
  v18 = a9 + v17[11];
  v19 = *(a15 + 112);
  *(v18 + 96) = *(a15 + 96);
  *(v18 + 112) = v19;
  *(v18 + 128) = *(a15 + 128);
  *(v18 + 144) = *(a15 + 144);
  v20 = *(a15 + 48);
  *(v18 + 32) = *(a15 + 32);
  *(v18 + 48) = v20;
  v21 = *(a15 + 80);
  *(v18 + 64) = *(a15 + 64);
  *(v18 + 80) = v21;
  result = *a15;
  v23 = *(a15 + 16);
  *v18 = *a15;
  *(v18 + 16) = v23;
  *(a9 + v17[12]) = a16;
  return result;
}

uint64_t sub_7A088(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_7A0D4()
{
  result = qword_118510;
  if (!qword_118510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_118510);
  }

  return result;
}

uint64_t sub_7A15C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_DC40(&qword_116840, &unk_DD500);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_7A22C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_DC40(&qword_116840, &unk_DD500);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_7A2DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_26BDC(319, a2, a3, a4);
  if (v4 <= 0x3F)
  {
    sub_27120();
    if (v5 <= 0x3F)
    {
      sub_7A428(319, &qword_116918, &type metadata for Bool, &type metadata accessor for Binding);
      if (v6 <= 0x3F)
      {
        sub_26C70(319);
        if (v7 <= 0x3F)
        {
          sub_26CD4(319);
          if (v8 <= 0x3F)
          {
            sub_7A428(319, &qword_116930, &type metadata for GCSProfileViewData, &type metadata accessor for Binding);
            if (v9 <= 0x3F)
            {
              type metadata accessor for GCSProfileUsageStats();
              if (v10 <= 0x3F)
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

void sub_7A428(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_7A48C()
{
  result = qword_1185B8;
  if (!qword_1185B8)
  {
    sub_EBC0(&qword_118500, qword_E0F68);
    sub_7A518();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1185B8);
  }

  return result;
}

unint64_t sub_7A518()
{
  result = qword_1185C0;
  if (!qword_1185C0)
  {
    sub_EBC0(&qword_1184F0, &qword_E0F58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1185C0);
  }

  return result;
}

uint64_t sub_7A57C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1F900(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_7A5C0(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1F8F0(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_7A664(uint64_t a1)
{
  v2 = type metadata accessor for GCSProfileParams(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GCSProfileHapticsPickerView(0);
  sub_28A68(a1, v4);
  sub_DC40(&qword_116840, &unk_DD500);
  sub_D78C8();
  return sub_28ACC(a1);
}

void (*sub_7A718(void **a1))(uint64_t, char)
{
  v3 = *(*(type metadata accessor for GCSProfileParams(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *a1 = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    *a1 = malloc(v3);
    v4 = malloc(v3);
  }

  a1[1] = v4;
  v5 = sub_DC40(&qword_116840, &unk_DD500);
  a1[2] = v5;
  v6 = *(*(v5 - 1) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  a1[3] = v7;
  v9 = type metadata accessor for GCSProfileHapticsPickerView(0);
  sub_16054(v1 + *(v9 + 20), v8, &qword_116840, &unk_DD500);
  sub_D78B8();
  return sub_7C2E8;
}

uint64_t sub_7A864(uint64_t (*a1)(uint64_t))
{
  type metadata accessor for GCSProfileHapticsPickerView(0);
  v2 = sub_DC40(&qword_116840, &unk_DD500);
  return a1(v2);
}

uint64_t sub_7A8C0()
{
  v0 = type metadata accessor for GCSProfileParams(0);
  __chkstk_darwin(v0);
  v2 = &v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GCSProfileHapticsPickerView(0);
  sub_DC40(&qword_116840, &unk_DD500);
  sub_D78B8();
  v3 = *&v2[*(v0 + 52)];
  sub_28ACC(v2);
  if (v3 >= 0.24)
  {
    sub_D78B8();
    v5 = *&v2[*(v0 + 52)];
    sub_28ACC(v2);
    if (v5 >= 0.99)
    {
      v4 = 0xEE00474E4F525453;
    }

    else
    {
      v4 = 0xEC0000004B414557;
    }
  }

  else
  {
    v4 = 0xEB0000000046464FLL;
  }

  return sub_A9308(0x5F53434954504148, v4);
}

void *sub_7AA08@<X0>(void *a1@<X8>)
{
  v56 = a1;
  v53 = sub_DC40(&qword_1185D8, &qword_E11C8);
  __chkstk_darwin(v53);
  v55 = &v46 - v2;
  v3 = sub_DC40(&qword_116840, &unk_DD500);
  __chkstk_darwin(v3);
  v5 = &v46 - v4;
  v54 = sub_DC40(&qword_1185E0, &qword_E11D0);
  v52 = *(v54 - 8);
  __chkstk_darwin(v54);
  v51 = &v46 - v6;
  v7 = sub_D6F68();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v1;
  if (*(v1 + 8) == 1)
  {
    if ((v11 & 1) == 0)
    {
LABEL_3:
      v52 = sub_D6FB8();
      v63 = 0;
      v69 = sub_A9308(0xD000000000000014, 0x80000000000E5EF0);
      v70 = v12;
      sub_16000();
      v13 = sub_D73B8();
      v47 = v14;
      v48 = v13;
      LODWORD(v51) = v15;
      v49 = v16;
      v69 = sub_7A8C0();
      v70 = v17;
      v18 = sub_D73B8();
      v20 = v19;
      v22 = v21;
      LODWORD(v69) = sub_D7198();
      v23 = sub_D7388();
      v25 = v24;
      v27 = v26;
      v29 = v28;
      sub_1F8F0(v18, v20, v22 & 1);

      LOBYTE(v20) = v51 & 1;
      LOBYTE(v69) = v20;
      LOBYTE(v64) = v51 & 1;
      LOBYTE(v57) = 0;
      LOBYTE(v18) = v27 & 1;
      LOBYTE(v61[0]) = v27 & 1;
      v50 = 0;
      LODWORD(v51) = v27 & 1;
      v31 = v47;
      v30 = v48;
      sub_1F900(v48, v47, v20);
      v32 = v49;

      sub_1F900(v23, v25, v18);

      sub_1F8F0(v23, v25, v18);

      sub_1F8F0(v30, v31, v69);

      *(&v65 + 1) = v61[0];
      DWORD1(v65) = *(v61 + 3);
      *(&v66 + 9) = *v60;
      HIDWORD(v66) = *&v60[3];
      DWORD1(v68) = *&v59[3];
      *(&v68 + 1) = *v59;
      *&v64 = v30;
      *(&v64 + 1) = v31;
      LOBYTE(v65) = v20;
      v69 = v30;
      v70 = v31;
      *(&v65 + 1) = v32;
      *&v66 = 0x402E000000000000;
      BYTE8(v66) = v50;
      *&v67 = v23;
      *(&v67 + 1) = v25;
      LOBYTE(v68) = v51;
      *(&v68 + 1) = v29;
      v71 = v20;
      *&v72[3] = *(v61 + 3);
      *v72 = v61[0];
      v73 = v32;
      v74 = 0x402E000000000000;
      v75 = v50;
      *v76 = *v60;
      *&v76[3] = *&v60[3];
      v77 = v23;
      v78 = v25;
      v79 = v51;
      *&v80[3] = *&v59[3];
      *v80 = *v59;
      v81 = v29;
      sub_16054(&v64, &v57, &qword_116A28, &qword_DD9A8);
      sub_160BC(&v69, &qword_116A28, &qword_DD9A8);
      *&v62[71] = v68;
      *&v62[55] = v67;
      *&v62[39] = v66;
      *&v62[23] = v65;
      *&v62[7] = v64;
      v33 = *&v62[48];
      v34 = v55;
      *(v55 + 49) = *&v62[32];
      *(v34 + 65) = v33;
      *(v34 + 81) = *&v62[64];
      v35 = *v62;
      *(v34 + 33) = *&v62[16];
      v36 = v63;
      *v34 = v52;
      *(v34 + 1) = 0;
      v34[16] = v36;
      *(v34 + 12) = *&v62[79];
      *(v34 + 17) = v35;
      swift_storeEnumTagMultiPayload();
      sub_DC40(&qword_116A30, &unk_DD9B0);
      sub_15FB8(&qword_1185E8, &qword_1185E0, &qword_E11D0, &protocol conformance descriptor for Picker<A, B, C>);
      sub_15FB8(&qword_1185F0, &qword_116A30, &unk_DD9B0, &protocol conformance descriptor for HStack<A>);
      return sub_D70B8();
    }
  }

  else
  {

    sub_D7E28();
    v38 = sub_D71C8();
    sub_D6A08();

    sub_D6F58();
    swift_getAtKeyPath();
    sub_16AA0(v11, 0);
    (*(v8 + 8))(v10, v7);
    if (v69 != 1)
    {
      goto LABEL_3;
    }
  }

  type metadata accessor for GCSProfileHapticsPickerView(0);
  sub_D78E8();
  swift_getKeyPath();
  sub_D78D8();

  sub_160BC(v5, &qword_116840, &unk_DD500);
  v57 = v64;
  v58 = v65;
  v69 = sub_A9308(0xD000000000000014, 0x80000000000E5EF0);
  v70 = v39;
  sub_16000();
  v69 = sub_D73B8();
  v70 = v40;
  v71 = v41 & 1;
  v73 = v42;
  sub_DC40(&qword_1185F8, &unk_E11F8);
  sub_15FB8(&qword_118600, &qword_1185F8, &unk_E11F8, &protocol conformance descriptor for TupleView<A>);
  v43 = v51;
  sub_D7878();
  v44 = v52;
  v45 = v54;
  (*(v52 + 16))(v55, v43, v54);
  swift_storeEnumTagMultiPayload();
  sub_DC40(&qword_116A30, &unk_DD9B0);
  sub_15FB8(&qword_1185E8, &qword_1185E0, &qword_E11D0, &protocol conformance descriptor for Picker<A, B, C>);
  sub_15FB8(&qword_1185F0, &qword_116A30, &unk_DD9B0, &protocol conformance descriptor for HStack<A>);
  sub_D70B8();
  return (*(v44 + 8))(v43, v45);
}

uint64_t sub_7B220@<X0>(char *a1@<X8>)
{
  v43 = a1;
  v1 = sub_DC40(&qword_118730, &qword_E1318);
  v39 = *(v1 - 8);
  v2 = v39;
  __chkstk_darwin(v1);
  v42 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v41 = &v38 - v5;
  __chkstk_darwin(v6);
  v8 = &v38 - v7;
  __chkstk_darwin(v9);
  v11 = &v38 - v10;
  __chkstk_darwin(v12);
  v14 = &v38 - v13;
  __chkstk_darwin(v15);
  v17 = &v38 - v16;
  v44 = sub_A9308(0x5F53434954504148, 0xEB0000000046464FLL);
  v45 = v18;
  sub_16000();
  *v17 = sub_D73B8();
  *(v17 + 1) = v19;
  v17[16] = v20 & 1;
  *(v17 + 3) = v21;
  *(v17 + 4) = 0;
  v17[40] = 1;
  v44 = sub_A9308(0x5F53434954504148, 0xEC0000004B414557);
  v45 = v22;
  *v14 = sub_D73B8();
  *(v14 + 1) = v23;
  v14[16] = v24 & 1;
  *(v14 + 3) = v25;
  *(v14 + 4) = 0x3FD0000000000000;
  v14[40] = 1;
  v44 = sub_A9308(0x5F53434954504148, 0xEE00474E4F525453);
  v45 = v26;
  *v11 = sub_D73B8();
  *(v11 + 1) = v27;
  v11[16] = v28 & 1;
  *(v11 + 3) = v29;
  *(v11 + 4) = 0x3FF0000000000000;
  v11[40] = 1;
  v30 = *(v2 + 16);
  v31 = v8;
  v40 = v8;
  v30(v8, v17, v1);
  v32 = v41;
  v30(v41, v14, v1);
  v33 = v42;
  v30(v42, v11, v1);
  v34 = v43;
  v30(v43, v31, v1);
  v35 = sub_DC40(&qword_118738, &unk_E1320);
  v30(&v34[*(v35 + 48)], v32, v1);
  v30(&v34[*(v35 + 64)], v33, v1);
  v36 = *(v39 + 8);
  v36(v11, v1);
  v36(v14, v1);
  v36(v17, v1);
  v36(v33, v1);
  v36(v32, v1);
  return (v36)(v40, v1);
}

uint64_t sub_7B5CC(uint64_t *a1)
{
  if (sub_D62A8(2, 26, 0, 0))
  {
    sub_D71B8();

    return sub_D6CF8();
  }

  else
  {
    sub_D6DA8();
    swift_getWitnessTable();
    sub_D7178();
    sub_D6CF8();
    sub_D7EE8();
    swift_getWitnessTable();
    sub_D6DA8();
    swift_getWitnessTable();
    sub_D7178();
    return sub_D6CF8();
  }
}

uint64_t sub_7B730(uint64_t *a1)
{
  if (sub_D62A8(2, 26, 0, 0))
  {
    sub_D71B8();
    sub_D6CF8();
  }

  else
  {
    sub_D6DA8();
    swift_getWitnessTable();
    sub_D7178();
    sub_D6CF8();
    sub_D7EE8();
    swift_getWitnessTable();
    sub_D6DA8();
    swift_getWitnessTable();
    sub_D7178();
    sub_D6CF8();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_7B930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  v4 = a2 + *(type metadata accessor for GCSProfileHapticsPickerView(0) + 20);

  return sub_26780(a1, v4);
}

uint64_t sub_7B990(uint64_t a1)
{
  v2 = type metadata accessor for GCSProfileParams(0);
  __chkstk_darwin(v2 - 8);
  sub_28A68(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_DC40(&qword_116840, &unk_DD500);
  sub_D78C8();
  return sub_28ACC(a1);
}

void (*sub_7BA34(void **a1))(uint64_t, char)
{
  v3 = *(*(type metadata accessor for GCSProfileParams(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *a1 = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    *a1 = malloc(v3);
    v4 = malloc(v3);
  }

  a1[1] = v4;
  v5 = sub_DC40(&qword_116840, &unk_DD500);
  a1[2] = v5;
  v6 = *(*(v5 - 1) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  a1[3] = v7;
  sub_16054(v1, v7, &qword_116840, &unk_DD500);
  sub_D78B8();
  return sub_7BB5C;
}

uint64_t sub_7BB60()
{
  type metadata accessor for GCSProfileHapticsPickerView(0);
  sub_7BCA0();
  return sub_D79C8();
}

uint64_t sub_7BBC4@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for GCSProfileHapticsPickerView(0);
  sub_DC40(&qword_116840, &unk_DD500);
  sub_D78E8();
  result = swift_getKeyPath();
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_7BC34()
{
  type metadata accessor for GCSProfileHapticsPickerView(0);
  sub_7BCA0();
  return sub_D79C8();
}

unint64_t sub_7BCA0()
{
  result = qword_118608;
  if (!qword_118608)
  {
    type metadata accessor for GCSProfileHapticsPickerView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_118608);
  }

  return result;
}

uint64_t sub_7BD44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_DC40(&qword_116840, &unk_DD500);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_7BE0C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = sub_DC40(&qword_116840, &unk_DD500);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_7BEB8(uint64_t a1)
{
  sub_7BF3C();
  if (v1 <= 0x3F)
  {
    sub_26CD4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_7BF3C()
{
  if (!qword_116AC0)
  {
    v0 = sub_D6BC8();
    if (!v1)
    {
      atomic_store(v0, &qword_116AC0);
    }
  }
}

uint64_t sub_7BFA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_DC40(&qword_116840, &unk_DD500);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_7C02C(uint64_t a1, uint64_t a2)
{
  v4 = sub_DC40(&qword_116840, &unk_DD500);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_7C0C8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_7C100(uint64_t a1)
{
  sub_26CD4(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_7C170()
{
  result = qword_118710;
  if (!qword_118710)
  {
    sub_EBC0(&qword_118718, &qword_E1308);
    sub_15FB8(&qword_1185E8, &qword_1185E0, &qword_E11D0, &protocol conformance descriptor for Picker<A, B, C>);
    sub_15FB8(&qword_1185F0, &qword_116A30, &unk_DD9B0, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_118710);
  }

  return result;
}

unint64_t sub_7C258()
{
  result = qword_118720;
  if (!qword_118720)
  {
    sub_EBC0(&qword_118728, &qword_E1310);
    sub_7BCA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_118720);
  }

  return result;
}

uint64_t sub_7C300()
{
  v1 = *(v0 + 24);
  sub_7C334(v1, *(v0 + 32));
  return v1;
}

uint64_t sub_7C334(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_7C388(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return sub_7C39C(v3, v4);
}

uint64_t sub_7C39C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_7C410(uint64_t a1)
{
  v2 = *(v1 + 40);
  *(v1 + 40) = a1;
  return _objc_release_x1(a1, v2);
}

uint64_t sub_7C424(uint64_t a1)
{
  v2 = *(v1 + 48);
  *(v1 + 48) = a1;
  return _objc_release_x1(a1, v2);
}

uint64_t sub_7C440()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t sub_7C470(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

uint64_t sub_7C4A0()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t sub_7C4D0(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
}

void *sub_7C500()
{
  v1 = *(v0 + 96);
  v2 = v1;
  return v1;
}

uint64_t sub_7C528(uint64_t a1)
{
  v2 = *(v1 + 96);
  *(v1 + 96) = a1;
  return _objc_release_x1(a1, v2);
}

id sub_7C534()
{
  v1 = (*(*v0 + 264))();
  v2 = [v1 btAddressData];

  if (v2)
  {
    v3 = sub_D68D8();
    v5 = v4;

    sub_DC40(&qword_115F08, &unk_DD4B0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_E1330;
    v7 = sub_D68B8();
    *(v6 + 56) = &type metadata for UInt8;
    *(v6 + 64) = &protocol witness table for UInt8;
    *(v6 + 32) = v7;
    v8 = sub_D68B8();
    *(v6 + 96) = &type metadata for UInt8;
    *(v6 + 104) = &protocol witness table for UInt8;
    *(v6 + 72) = v8;
    v9 = sub_D68B8();
    *(v6 + 136) = &type metadata for UInt8;
    *(v6 + 144) = &protocol witness table for UInt8;
    *(v6 + 112) = v9;
    v10 = sub_D68B8();
    *(v6 + 176) = &type metadata for UInt8;
    *(v6 + 184) = &protocol witness table for UInt8;
    *(v6 + 152) = v10;
    v11 = sub_D68B8();
    *(v6 + 216) = &type metadata for UInt8;
    *(v6 + 224) = &protocol witness table for UInt8;
    *(v6 + 192) = v11;
    v12 = sub_D68B8();
    *(v6 + 256) = &type metadata for UInt8;
    *(v6 + 264) = &protocol witness table for UInt8;
    *(v6 + 232) = v12;
    sub_D7C28();
    v2 = sub_D7C48();

    sub_7C39C(v3, v5);
  }

  return v2;
}

void *sub_7C6E8()
{
  v1 = *(v0 + 104);
  v2 = v1;
  return v1;
}

void sub_7C710(void *a1)
{
  sub_80EE8(a1);
}

void (*sub_7C748(void *a1))(id *a1, char a2)
{
  v2 = *(v1 + 104);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_7C794;
}

void sub_7C794(id *a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = v4;
    sub_80EE8(v4);

    v3 = v2;
  }

  else
  {
    sub_80EE8(*a1);
    v3 = v4;
  }
}

unint64_t sub_7C800()
{
  v1 = (*(*v0 + 264))();
  v2 = [v1 discoveryFlags];

  return (v2 >> 37) & 1;
}

uint64_t sub_7C864()
{
  v1 = (*(*v0 + 264))();
  v2 = [v1 deviceFlags];

  if ((v2 & 0x2000) == 0)
  {
    return 1;
  }

  if (((*(*v0 + 464))() & 1) == 0)
  {
    return 0;
  }

  v4 = *(*v0 + 528);

  return v4();
}

BOOL sub_7C954()
{
  if ((*(*v0 + 504))() & 1) != 0 && ((*(*v0 + 760))())
  {
    return 1;
  }

  v1 = (*v0 + 264);
  v2 = *v1;
  v3 = (*v1)();
  v4 = [v3 deviceType];

  if (v4 == 26)
  {
    return 1;
  }

  v5 = v2();
  v6 = [v5 deviceType];

  if (v6 == 24)
  {
    return 1;
  }

  v7 = v2();
  v8 = [v7 deviceType];

  if (v8 == 49)
  {
    return 1;
  }

  v10 = v2();
  v11 = [v10 deviceType];

  return v11 == 25;
}

unint64_t sub_7CAAC()
{
  v1 = (*(*v0 + 264))();
  v2 = [v1 discoveryFlags];

  return (v2 >> 50) & 1;
}

BOOL sub_7CB28(SEL *a1)
{
  v3 = (*(*v1 + 264))();
  v4 = [v3 *a1];

  return v4 == 0;
}

unint64_t sub_7CB90()
{
  v1 = (*(*v0 + 264))();
  v2 = [v1 deviceFlags];

  return (v2 >> 12) & 1;
}

unint64_t sub_7CBF4()
{
  v1 = (*(*v0 + 264))();
  v2 = [v1 deviceFlags];

  return (v2 >> 16) & 1;
}

BOOL sub_7CC58()
{
  if (((*(*v0 + 968))() & 1) == 0)
  {
    return 0;
  }

  v1 = (*v0 + 264);
  v2 = *v1;
  v3 = (*v1)();
  v4 = [v3 deviceType];

  if (v4 == 20)
  {
    return 1;
  }

  v6 = v2();
  v7 = [v6 deviceType];

  return v7 == 16;
}

unint64_t sub_7CD38()
{
  v1 = (*(*v0 + 264))();
  v2 = [v1 discoveryFlags];

  return (v2 >> 49) & 1;
}

unint64_t sub_7CD9C()
{
  v1 = (*(*v0 + 264))();
  v2 = [v1 deviceFlags];

  return (v2 >> 13) & 1;
}

unint64_t sub_7CE00()
{
  v1 = (*(*v0 + 264))();
  v2 = [v1 deviceFlags];

  return (v2 >> 15) & 1;
}

BOOL sub_7CE64()
{
  v1 = (*(*v0 + 264))();
  v2 = [v1 deviceType];

  return v2 == 26;
}

uint64_t sub_7CECC()
{
  v1 = (*v0 + 904);
  v2 = *v1;
  if (((*v1)() & 1) != 0 && ((*(*v0 + 528))() & 1) == 0)
  {
    return 1;
  }

  if ((v2() & 1) == 0 || ((*(*v0 + 760))() & 1) == 0)
  {
    return 0;
  }

  v3 = *(*v0 + 528);

  return v3();
}

uint64_t sub_7CFE4()
{
  if ((*(*v0 + 440))() & 1) != 0 || ((*(*v0 + 464))())
  {
    return 1;
  }

  v2 = *(*v0 + 512);

  return v2();
}

unint64_t sub_7D09C()
{
  v1 = (*(*v0 + 264))();
  v2 = [v1 deviceFlags];

  return (v2 >> 40) & 1;
}

uint64_t sub_7D144()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D6AC8();

  return v1;
}

uint64_t sub_7D1B8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 568))();
  *a2 = result;
  return result;
}

uint64_t sub_7D25C(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_D6AD8();
}

uint64_t (*sub_7D2CC(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_D6AB8();
  return sub_EC0C;
}

uint64_t sub_7D3C0(uint64_t a1)
{
  v2 = sub_DC40(&qword_118748, &qword_E1398);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  sub_DC40(&qword_118740, &qword_E1390);
  sub_D6AA8();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_7D4D8(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = sub_DC40(&qword_118748, &qword_E1398);
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v4[4] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v6 + 64));
    v4[4] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC25GameControlleriOSSettings6Device__smartRoutingMode;
  v4[5] = v8;
  v4[6] = v9;
  v4[7] = sub_DC40(&qword_118740, &qword_E1390);
  sub_D6A98();
  return sub_EC10;
}

uint64_t sub_7D640@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 616))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_7D6FC(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_D6AB8();
  return sub_E248;
}

uint64_t sub_7D7F0(uint64_t a1)
{
  v2 = sub_DC40(&qword_115EB8, &unk_DC490);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  sub_DC40(&unk_118EC0, &qword_DC488);
  sub_D6AA8();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_7D908(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = sub_DC40(&qword_115EB8, &unk_DC490);
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v4[4] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v6 + 64));
    v4[4] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC25GameControlleriOSSettings6Device__showDeviceInfoView;
  v4[5] = v8;
  v4[6] = v9;
  v4[7] = sub_DC40(&unk_118EC0, &qword_DC488);
  sub_D6A98();
  return sub_E57C;
}

uint64_t sub_7DA70@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 664))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_7DB18(int a1)
{
  v3 = (*(*v1 + 760))();
  v4 = (*v1 + 712);
  v5 = *v4;
  if ((*v4)())
  {
    if (v3)
    {
      goto LABEL_9;
    }
  }

  else if (((v3 ^ a1) & 1) == 0)
  {
    goto LABEL_9;
  }

  if (a1)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5();
  }

  (*(*v1 + 768))(v6 & 1);
LABEL_9:
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_D6AD8();
}

uint64_t (*sub_7DC4C(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D6AC8();

  *(a1 + 8) = *(a1 + 9);
  return sub_7DCE0;
}

uint64_t sub_7DD58(uint64_t a1)
{
  v2 = sub_DC40(&qword_115EB8, &unk_DC490);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  sub_DC40(&unk_118EC0, &qword_DC488);
  sub_D6AA8();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_7DE70(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = sub_DC40(&qword_115EB8, &unk_DC490);
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v4[4] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v6 + 64));
    v4[4] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC25GameControlleriOSSettings6Device__connectedOverBluetooth;
  v4[5] = v8;
  v4[6] = v9;
  v4[7] = sub_DC40(&unk_118EC0, &qword_DC488);
  sub_D6A98();
  return sub_EC10;
}

uint64_t sub_7DFD8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 712))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_7E080(char a1)
{
  v3 = (*(*v1 + 760))();
  if (a1)
  {
    if ((v3 & 1) == 0)
    {
      v4 = 1;
LABEL_6:
      (*(*v1 + 768))(v4 & 1);
    }
  }

  else
  {
    v5 = (*v1 + 664);
    v6 = *v5;
    if ((v3 ^ (*v5)()))
    {
      v4 = v6();
      goto LABEL_6;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();

  return sub_D6AD8();
}

uint64_t (*sub_7E1AC(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D6AC8();

  *(a1 + 8) = *(a1 + 9);
  return sub_7E240;
}

uint64_t sub_7E2B8(uint64_t a1)
{
  v2 = sub_DC40(&qword_115EB8, &unk_DC490);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  sub_DC40(&unk_118EC0, &qword_DC488);
  sub_D6AA8();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_7E3D0(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = sub_DC40(&qword_115EB8, &unk_DC490);
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v4[4] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v6 + 64));
    v4[4] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC25GameControlleriOSSettings6Device__connectedOverUSB;
  v4[5] = v8;
  v4[6] = v9;
  v4[7] = sub_DC40(&unk_118EC0, &qword_DC488);
  sub_D6A98();
  return sub_EC10;
}

uint64_t sub_7E538@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 760))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_7E5E0(char a1)
{
  if (a1)
  {
    (*(*v1 + 816))(0);
    (*(*v1 + 864))(0);
  }

  swift_getKeyPath();
  swift_getKeyPath();

  v2 = sub_D6AD8();
  if (((*(*v1 + 760))(v2) & 1) != 0 || (result = (*(*v1 + 808))(), (result & 1) == 0))
  {
    result = (*(*v1 + 416))();
    if (result)
    {

      return (*(*v1 + 816))(0);
    }
  }

  return result;
}

uint64_t (*sub_7E788(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D6AC8();

  *(a1 + 8) = *(a1 + 9);
  return sub_7E81C;
}

uint64_t sub_7E894(uint64_t a1)
{
  v2 = sub_DC40(&qword_115EB8, &unk_DC490);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  sub_DC40(&unk_118EC0, &qword_DC488);
  sub_D6AA8();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_7E9AC(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = sub_DC40(&qword_115EB8, &unk_DC490);
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v4[4] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v6 + 64));
    v4[4] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC25GameControlleriOSSettings6Device__isConnected;
  v4[5] = v8;
  v4[6] = v9;
  v4[7] = sub_DC40(&unk_118EC0, &qword_DC488);
  sub_D6A98();
  return sub_EC10;
}

uint64_t sub_7EB14@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 808))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_7EBBC(uint64_t a1)
{
  v2 = *(**sub_EC8C() + 496);

  v2(a1);

  swift_getKeyPath();
  swift_getKeyPath();

  return sub_D6AD8();
}

uint64_t (*sub_7EC80(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D6AC8();

  *(a1 + 8) = *(a1 + 9);
  return sub_7ED14;
}

uint64_t sub_7ED14(uint64_t *a1)
{
  v2 = *(a1 + 8);
  v3 = *(**sub_EC8C() + 496);

  v3(v2);

  swift_getKeyPath();
  swift_getKeyPath();
  *(a1 + 9) = v2;

  return sub_D6AD8();
}

uint64_t sub_7EE30(uint64_t a1)
{
  v2 = sub_DC40(&qword_115EB8, &unk_DC490);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  sub_DC40(&unk_118EC0, &qword_DC488);
  sub_D6AA8();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_7EF48(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = sub_DC40(&qword_115EB8, &unk_DC490);
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v4[4] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v6 + 64));
    v4[4] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC25GameControlleriOSSettings6Device__isConnecting;
  v4[5] = v8;
  v4[6] = v9;
  v4[7] = sub_DC40(&unk_118EC0, &qword_DC488);
  sub_D6A98();
  return sub_EC10;
}

uint64_t sub_7F0B0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 856))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_7F16C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_D6AB8();
  return sub_EC0C;
}

uint64_t sub_7F260(uint64_t a1)
{
  v2 = sub_DC40(&qword_115EB8, &unk_DC490);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  sub_DC40(&unk_118EC0, &qword_DC488);
  sub_D6AA8();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_7F378(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = sub_DC40(&qword_115EB8, &unk_DC490);
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v4[4] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v6 + 64));
    v4[4] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC25GameControlleriOSSettings6Device__isPairing;
  v4[5] = v8;
  v4[6] = v9;
  v4[7] = sub_DC40(&unk_118EC0, &qword_DC488);
  sub_D6A98();
  return sub_EC10;
}

uint64_t sub_7F4E0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 904))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_7F588(char a1)
{
  if (a1)
  {
    (*(*v1 + 864))(0);
  }

  swift_getKeyPath();
  swift_getKeyPath();

  return sub_D6AD8();
}

uint64_t (*sub_7F630(uint64_t a1))(unsigned __int8 *a1)
{
  *a1 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D6AC8();

  *(a1 + 8) = *(a1 + 9);
  return sub_7F6C4;
}

uint64_t sub_7F6C4(unsigned __int8 *a1)
{
  v2 = a1[8];
  if (v2 == 1)
  {
    (*(**a1 + 864))(0);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  a1[9] = v2;

  return sub_D6AD8();
}

uint64_t sub_7F7D4(uint64_t a1)
{
  v2 = sub_DC40(&qword_115EB8, &unk_DC490);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  sub_DC40(&unk_118EC0, &qword_DC488);
  sub_D6AA8();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_7F8EC(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = sub_DC40(&qword_115EB8, &unk_DC490);
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v4[4] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v6 + 64));
    v4[4] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC25GameControlleriOSSettings6Device__isPaired;
  v4[5] = v8;
  v4[6] = v9;
  v4[7] = sub_DC40(&unk_118EC0, &qword_DC488);
  sub_D6A98();
  return sub_EC10;
}

uint64_t sub_7FA40(void *a1)
{
  swift_allocObject();
  v2 = sub_8121C(a1);

  return v2;
}

uint64_t sub_7FA88(void *a1)
{
  v2 = sub_8121C(a1);

  return v2;
}

uint64_t sub_7FAB8(void *a1)
{
  if (a1)
  {
    a1 = (*(*v1 + 272))(a1);
  }

  v2 = (*v1 + 264);
  v3 = *v2;
  v4 = (*v2)(a1);
  v5 = [v4 btAddressData];

  if (v5 || (v6 = v3(), v5 = [v6 bleAdvertisementData], v6, v5))
  {
    v7 = sub_D68D8();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xC000000000000000;
  }

  v10 = (*(*v1 + 248))(v7, v9);
  v11 = (v3)(v10);
  v12 = [v11 connectedServices];

  v13 = (*(*v1 + 672))(v12 != 0);
  v14 = (v3)(v13);
  v15 = [v14 deviceFlags];

  v16 = (*(*v1 + 720))((v15 >> 20) & 1);
  v17 = (v3)(v16);
  v18 = [v17 name];

  if (v18)
  {
    v19 = sub_D7C18();
    v21 = v20;

    v22 = v21;
    v23 = v19;
  }

  else
  {
    v23 = (*(*v1 + 336))();
  }

  v24 = (*(*v1 + 368))(v23, v22);
  v25 = (v3)(v24);
  v26 = [v25 discoveryFlags];

  if ((v26 & 0x800000) == 0 || (v27 = v3(), v28 = [v27 deviceFlags], v27, (v28 & 0x8000) != 0))
  {
    v30 = v3();
    v31 = [v30 discoveryFlags];

    if ((v31 & 0x800000) != 0 && (v32 = v3(), v33 = [v32 discoveryFlags], v32, (v33 & 0x200000) != 0))
    {
      v34 = v3();
      v35 = [v34 deviceFlags];

      v29 = (v35 >> 15) & 1;
    }

    else
    {
      v29 = 0;
    }
  }

  else
  {
    v29 = 1;
  }

  v36 = (*(*v1 + 912))(v29);
  v37 = (v3)(v36);
  v38 = [v37 smartRoutingMode];

  (*(*v1 + 576))(v38);
  v39 = (*(*v1 + 376))(v41);
  sub_5685C();
  return v39(v41, 0);
}

unint64_t sub_7FEF4()
{
  v1 = (*v0 + 264);
  v2 = *v1;
  v3 = (*v1)();
  v4 = [v3 vendorIDSource];

  if (v4 == 2)
  {
    v5 = v2();
    v6 = [v5 vendorID];

    if (v6 == 1452)
    {
      return 1;
    }
  }

  v7 = v2();
  v8 = [v7 vendorID];

  if (v8 == 76)
  {
    return 1;
  }

  v9 = v2();
  v10 = [v9 deviceFlags];

  if ((v10 & 0x8000) != 0)
  {
    return 1;
  }

  v11 = v2();
  v12 = [v11 deviceFlags];

  return (v12 >> 1) & 1;
}

uint64_t sub_80014()
{
  v1 = (*(*v0 + 240))();
  v3 = v2;
  isa = sub_D68C8().super.isa;
  sub_7C39C(v1, v3);
  v5 = CUPrintNSDataAddress();

  if (!v5)
  {
    return 0;
  }

  v6 = sub_D7C18();

  return v6;
}

uint64_t sub_800BC()
{
  result = (*(*v0 + 976))();
  if (v2)
  {
    sub_16000();
    v3 = sub_D7F08();

    return v3;
  }

  return result;
}

uint64_t sub_8018C()
{
  if (((*(*v0 + 968))() & 1) != 0 && (v1 = (*(*v0 + 264))(), v2 = [v1 deviceType], v1, v2 == 12))
  {
    sub_43BF8();
    v3 = sub_D7C48();
    v5 = v4;
  }

  else
  {
    v6 = (*(*v0 + 264))();
    [v6 deviceType];

    CBDeviceTypeToString();
    sub_D7CC8();
    v3 = sub_D7C48();
    v5 = v7;
  }

  v8 = sub_A9308(v3, v5);

  return v8;
}

uint64_t sub_802D0()
{
  v1 = (*(*v0 + 264))();
  v2 = [v1 modelUser];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_D7C18();

  return v3;
}

uint64_t sub_8036C()
{
  if (((*(*v0 + 968))() & 1) == 0)
  {
    return 0;
  }

  sub_DC40(&qword_115F08, &unk_DD4B0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_DCB80;
  v2 = (*(*v0 + 264))();
  v3 = [v2 productID];

  *(v1 + 56) = &type metadata for UInt32;
  *(v1 + 64) = &protocol witness table for UInt32;
  *(v1 + 32) = v3;
  return sub_D7C28();
}

uint64_t sub_8047C()
{
  v1 = v0;
  sub_D8158();
  sub_DC40(&qword_1171B0, qword_DE9B0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_DCB80;
  v36._countAndFlagsBits = (*(*v0 + 360))();
  sub_D7CA8(v36);

  *(v2 + 56) = &type metadata for String;
  *(v2 + 32) = 2313;
  *(v2 + 40) = 0xE200000000000000;
  sub_D8158();

  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_DC430;
  *(v3 + 56) = &type metadata for String;
  *(v3 + 32) = 0x90909093A6469;
  *(v3 + 40) = 0xE700000000000000;
  v4 = (*(*v0 + 216))();
  *(v3 + 88) = &type metadata for ObjectIdentifier;
  *(v3 + 64) = v4;
  sub_D8158();

  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_DC430;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 32) = 0x3A73736572646461;
  *(v5 + 40) = 0xEA00000000000909;
  v6 = (*(*v0 + 976))();
  v8 = v7;
  *(v5 + 88) = sub_DC40(&qword_118ED0, &unk_DF5E0);
  *(v5 + 64) = v6;
  *(v5 + 72) = v8;
  sub_D8158();

  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_DC430;
  *(v9 + 56) = &type metadata for String;
  strcpy((v9 + 32), "isConnected:\t");
  *(v9 + 46) = -4864;
  v10 = (*(*v1 + 760))();
  *(v9 + 88) = &type metadata for Bool;
  *(v9 + 64) = v10 & 1;
  sub_D8158();

  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_DC430;
  *(v11 + 56) = &type metadata for String;
  strcpy((v11 + 32), "isConnecting:\t");
  *(v11 + 47) = -18;
  v12 = (*(*v1 + 808))();
  *(v11 + 88) = &type metadata for Bool;
  *(v11 + 64) = v12 & 1;
  sub_D8158();

  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_DC430;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 32) = 0x6465726961507369;
  *(v13 + 40) = 0xEB0000000009093ALL;
  v14 = (*(*v1 + 904))();
  *(v13 + 88) = &type metadata for Bool;
  *(v13 + 64) = v14 & 1;
  sub_D8158();

  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_DC430;
  *(v15 + 56) = &type metadata for String;
  strcpy((v15 + 32), "isPairing:\t\t");
  *(v15 + 45) = 0;
  *(v15 + 46) = -5120;
  v16 = (*(*v1 + 856))();
  *(v15 + 88) = &type metadata for Bool;
  *(v15 + 64) = v16 & 1;
  sub_D8158();

  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_DC430;
  *(v17 + 56) = &type metadata for String;
  strcpy((v17 + 32), "deviceType:\t\t");
  *(v17 + 46) = -4864;
  v18 = (*(*v1 + 336))();
  *(v17 + 88) = &type metadata for String;
  *(v17 + 64) = v18;
  *(v17 + 72) = v19;
  sub_D8158();

  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_DC430;
  *(v20 + 56) = &type metadata for String;
  *(v20 + 32) = 0xD000000000000010;
  *(v20 + 40) = 0x80000000000E5F30;
  v21 = *(*v1 + 264);
  v22 = v21();
  v23 = [v22 discoveryFlags];

  v24 = sub_B9888(v23);
  *(v20 + 88) = &type metadata for String;
  *(v20 + 64) = v24;
  *(v20 + 72) = v25;
  sub_D8158();

  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_DC430;
  *(v26 + 56) = &type metadata for String;
  strcpy((v26 + 32), "deviceFlags:\t");
  *(v26 + 46) = -4864;
  v27 = v21();
  LODWORD(v23) = [v27 deviceFlags];

  v28 = sub_BB988(v23);
  *(v26 + 88) = &type metadata for String;
  *(v26 + 64) = v28;
  *(v26 + 72) = v29;
  sub_D8158();

  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_DC430;
  *(v30 + 56) = &type metadata for String;
  strcpy((v30 + 32), "serviceFlags:\t");
  *(v30 + 47) = -18;
  v31 = v21();
  LODWORD(v1) = [v31 connectedServices];

  v32 = sub_BCAD0(v1);
  *(v30 + 88) = &type metadata for String;
  *(v30 + 64) = v32;
  *(v30 + 72) = v33;
  sub_D8158();

  return sub_D8158();
}

uint64_t Device.deinit()
{
  sub_7C39C(*(v0 + 24), *(v0 + 32));

  v1 = OBJC_IVAR____TtC25GameControlleriOSSettings6Device__smartRoutingMode;
  v2 = sub_DC40(&qword_118740, &qword_E1390);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC25GameControlleriOSSettings6Device__showDeviceInfoView;
  v4 = sub_DC40(&unk_118EC0, &qword_DC488);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC25GameControlleriOSSettings6Device__connectedOverBluetooth, v4);
  v5(v0 + OBJC_IVAR____TtC25GameControlleriOSSettings6Device__connectedOverUSB, v4);
  v5(v0 + OBJC_IVAR____TtC25GameControlleriOSSettings6Device__isConnected, v4);
  v5(v0 + OBJC_IVAR____TtC25GameControlleriOSSettings6Device__isConnecting, v4);
  v5(v0 + OBJC_IVAR____TtC25GameControlleriOSSettings6Device__isPairing, v4);
  v5(v0 + OBJC_IVAR____TtC25GameControlleriOSSettings6Device__isPaired, v4);
  return v0;
}

uint64_t Device.__deallocating_deinit()
{
  Device.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_80E50@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for Device(0);
  result = sub_D6A68();
  *a2 = result;
  return result;
}

uint64_t sub_80E90@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 216))();
  *a1 = result;
  return result;
}

void sub_80EE8(void *a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = v1[13];
    v2[13] = a1;
    v4 = a1;

    v5 = v2[13];
    if (!v5)
    {
      return;
    }
  }

  else
  {
    (*(*v1 + 102))();
    (*(*v1 + 108))(0);
    v13 = *(**sub_EC8C() + 496);

    v13(0);

    [v1[13] invalidate];
    v14 = v1[13];
    v1[13] = 0;

    v5 = v1[13];
    if (!v5)
    {
      return;
    }
  }

  v6 = *(*v2 + 33);
  v15 = v5;
  v7 = v6();
  [v15 setPeerDevice:v7];

  [v15 setServiceFlags:0xFFFFFFFFLL];
  [v15 setConnectionFlags:18];
  v8 = (*(*v2 + 102))(1);
  v9 = (*(*v2 + 113))(v8);
  v10 = (*(*v2 + 108))((v9 & 1) == 0);
  v11 = (v6)(v10);
  v12 = [v11 discoveryFlags];

  if ((v12 & 0x2000000000000) != 0)
  {
    [v15 setConnectionFlags:{objc_msgSend(v15, "connectionFlags") | 0x80}];
    [v15 setConnectionFlags:{objc_msgSend(v15, "connectionFlags") | 0x200}];
    [v15 setConnectionFlags:{objc_msgSend(v15, "connectionFlags") | 0x100}];
  }
}

uint64_t sub_8121C(void *a1)
{
  v2 = v1;
  v4 = sub_DC40(&unk_118EC0, &qword_DC488);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v39[-v6];
  v8 = sub_DC40(&qword_118740, &qword_E1390);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v39[-v10];
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0xE000000000000000;
  *(v2 + 80) = 0;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  *(v2 + 88) = 0xE000000000000000;
  v12 = OBJC_IVAR____TtC25GameControlleriOSSettings6Device__smartRoutingMode;
  v39[0] = 0;
  type metadata accessor for CBSmartRoutingMode(0);
  sub_D6A88();
  (*(v9 + 32))(v2 + v12, v11, v8);
  v13 = OBJC_IVAR____TtC25GameControlleriOSSettings6Device__showDeviceInfoView;
  v39[0] = 0;
  sub_D6A88();
  v14 = *(v5 + 32);
  v14(v2 + v13, v7, v4);
  v15 = OBJC_IVAR____TtC25GameControlleriOSSettings6Device__connectedOverBluetooth;
  v39[0] = 0;
  sub_D6A88();
  v14(v2 + v15, v7, v4);
  v16 = OBJC_IVAR____TtC25GameControlleriOSSettings6Device__connectedOverUSB;
  v39[0] = 0;
  sub_D6A88();
  v14(v2 + v16, v7, v4);
  v17 = OBJC_IVAR____TtC25GameControlleriOSSettings6Device__isConnected;
  v39[0] = 0;
  sub_D6A88();
  v14(v2 + v17, v7, v4);
  v18 = OBJC_IVAR____TtC25GameControlleriOSSettings6Device__isConnecting;
  v39[0] = 0;
  sub_D6A88();
  v14(v2 + v18, v7, v4);
  v19 = OBJC_IVAR____TtC25GameControlleriOSSettings6Device__isPairing;
  v39[0] = 0;
  sub_D6A88();
  v14(v2 + v19, v7, v4);
  *(v2 + 16) = a1;
  v20 = [a1 btAddressData];
  if (v20 || (v20 = [a1 bleAdvertisementData]) != 0)
  {
    v21 = v20;
    v22 = sub_D68D8();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0xC000000000000000;
  }

  *(v2 + 24) = v22;
  *(v2 + 32) = v24;
  *(v2 + 40) = a1;
  v25 = a1;
  *(v2 + 48) = [objc_opt_self() productInfoWithProductID:{objc_msgSend(v25, "productID")}];
  if (([*(v2 + 40) discoveryFlags] & 0x800000) == 0 || (objc_msgSend(*(v2 + 40), "deviceFlags") & 0x8000) != 0)
  {
    if (([*(v2 + 40) discoveryFlags] & 0x800000) != 0 && (objc_msgSend(*(v2 + 40), "discoveryFlags") & 0x200000) != 0)
    {
      v26 = ([*(v2 + 40) deviceFlags] >> 15) & 1;
    }

    else
    {
      LOBYTE(v26) = 0;
    }
  }

  else
  {
    LOBYTE(v26) = 1;
  }

  v39[0] = v26;
  sub_D6A88();
  v27 = [v25 smartRoutingMode];
  swift_getKeyPath();
  swift_getKeyPath();
  v39[0] = v27;

  sub_D6AD8();
  (*(*v2 + 672))([v25 connectedServices] != 0);
  v28 = (*(*v2 + 720))(([v25 deviceFlags] >> 20) & 1);
  v29 = (*(*v2 + 992))(v28);
  (*(*v2 + 344))(v29);
  v30 = [v25 name];
  if (v30)
  {
    v31 = v30;
    v32 = sub_D7C18();
    v34 = v33;

    v35 = v34;
    v36 = v32;
  }

  else
  {
    v36 = (*(*v2 + 336))();
  }

  (*(*v2 + 368))(v36, v35);
  v37 = (*(*v2 + 376))(v39);
  sub_5685C();
  v37(v39, 0);
  return v2;
}

uint64_t _s25GameControlleriOSSettings6DeviceC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a1 + 264))();
  v4 = [v3 identifier];

  if (v4)
  {
    v5 = sub_D7C18();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = (*(*a2 + 264))();
  v9 = [v8 identifier];

  if (v9)
  {
    v10 = sub_D7C18();
    v12 = v11;

    if (v7)
    {
      if (v12)
      {
        if (v5 == v10 && v7 == v12)
        {

          v14 = 1;
        }

        else
        {
          v14 = sub_D8118();
        }

        goto LABEL_18;
      }

      goto LABEL_13;
    }

    if (v12)
    {
      v14 = 0;
      goto LABEL_18;
    }
  }

  else if (v7)
  {
LABEL_13:
    v14 = 0;
LABEL_18:

    return v14 & 1;
  }

  v14 = 1;
  return v14 & 1;
}

uint64_t type metadata accessor for Device(uint64_t a1)
{
  result = qword_11D930;
  if (!qword_11D930)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_81A6C(uint64_t a1)
{
  sub_81BA8(319);
  if (v1 <= 0x3F)
  {
    sub_81C00(319, &qword_119010, &type metadata for Bool, &type metadata accessor for Published);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_81BA8(uint64_t a1)
{
  if (!qword_118778)
  {
    type metadata accessor for CBSmartRoutingMode(255);
    v1 = sub_D6AE8();
    if (!v2)
    {
      atomic_store(v1, &qword_118778);
    }
  }
}

void sub_81C00(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void *sub_81C50@<X0>(void *a1@<X0>, void *a3@<X2>, Swift::String *a5@<X8>)
{
  if (a1)
  {
    v7 = a1;
    v8 = [a3 fusedControllerIdentifier];
    v9 = sub_D7C18();
    v11 = v10;

    v12 = (*&stru_1F8.segname[(swift_isaMask & *v7) + 16])(v9, v11);

    if (v12)
    {
      v13 = [a3 pilotIdentifier];
      v14 = sub_D7C18();
      v16 = v15;

      v17 = *&stru_1F8.segname[(swift_isaMask & *v7) + 16];
      v18 = v17(v14, v16);

      v19 = v18;

      if (v18)
      {
        v20 = [a3 copilotIdentifier];
        v21 = sub_D7C18();
        v23 = v22;

        v24 = v17(v21, v23);

        if (v24)
        {
          v78 = sub_D7088();
          v79 = sub_D6FB8();
          v81 = v12;
          sub_58D24(v81, v25, v26, v27);
          nullsub_1();
          v75 = v28;
          v76 = v29;
          v77 = v30;
          v74 = sub_D7088();
          LOBYTE(v94._countAndFlagsBits) = 0;
          v31 = [v19 localizedName];
          sub_D7C18();

          sub_16000();
          v32 = sub_D73B8();
          v71 = v33;
          v72 = v32;
          v70 = v34;
          v73 = v35;
          sub_DC40(&qword_115F08, &unk_DD4B0);
          v80 = v19;
          v36 = swift_allocObject();
          *(v36 + 16) = xmmword_DCB80;
          v37 = [v24 localizedName];
          v38 = sub_D7C18();
          v40 = v39;

          *(v36 + 56) = &type metadata for String;
          *(v36 + 64) = sub_14B60();
          *(v36 + 32) = v38;
          *(v36 + 40) = v40;
          String.localized(with:)(v36);

          v41 = sub_D73B8();
          v43 = v42;
          v45 = v44;
          sub_D72E8();
          v46 = sub_D7398();
          v48 = v47;
          v50 = v49;

          sub_1F8F0(v41, v43, v45 & 1);

          sub_D7198();
          v51 = sub_D7388();
          v53 = v52;
          LOBYTE(v43) = v54;
          v56 = v55;
          sub_1F8F0(v46, v48, v50 & 1);

          LOBYTE(v97._countAndFlagsBits) = v70 & 1;
          sub_1F900(v72, v71, v70 & 1);

          sub_1F900(v51, v53, v43 & 1);

          sub_1F8F0(v51, v53, v43 & 1);

          sub_1F8F0(v72, v71, v70 & 1);

          countAndFlagsBits = v94._countAndFlagsBits;
          *(&v108._countAndFlagsBits + 1) = v85[0];
          HIDWORD(v108._countAndFlagsBits) = *(v85 + 3);
          *(&v109._object + 1) = v83;
          HIDWORD(v109._object) = *(&v83 + 3);
          HIDWORD(v111._object) = *(v128 + 3);
          *(&v111._object + 1) = v128[0];
          v107._countAndFlagsBits = v74;
          v107._object = 0x4008000000000000;
          LOBYTE(v108._countAndFlagsBits) = v94._countAndFlagsBits;
          v108._object = v72;
          v109._countAndFlagsBits = v71;
          LOBYTE(v109._object) = v70 & 1;
          v110._countAndFlagsBits = v73;
          v110._object = v51;
          v111._countAndFlagsBits = v53;
          LOBYTE(v111._object) = v43 & 1;
          v112._countAndFlagsBits = v56;
          v127 = 1;
          *&v96[48] = v56;
          *&v96[16] = v110;
          *&v96[32] = v111;
          v95 = v108;
          *v96 = v109;
          v94 = v107;
          v117._countAndFlagsBits = v74;
          v117._object = 0x4008000000000000;
          LOBYTE(v118._countAndFlagsBits) = countAndFlagsBits;
          HIDWORD(v118._countAndFlagsBits) = *(v85 + 3);
          *(&v118._countAndFlagsBits + 1) = v85[0];
          v118._object = v72;
          v119._countAndFlagsBits = v71;
          LOBYTE(v119._object) = v70 & 1;
          HIDWORD(v119._object) = *(&v83 + 3);
          *(&v119._object + 1) = v83;
          v120._countAndFlagsBits = v73;
          v120._object = v51;
          v121._countAndFlagsBits = v53;
          LOBYTE(v121._object) = v43 & 1;
          HIDWORD(v121._object) = *(v128 + 3);
          *(&v121._object + 1) = v128[0];
          v122._countAndFlagsBits = v56;
          v58 = v75;
          v59 = v76;
          sub_16054(&v107, &v97, &qword_116E78, &qword_DE000);
          sub_160BC(&v117, &qword_116E78, &qword_DE000);

          *&v84[40] = *v96;
          *&v84[56] = *&v96[16];
          *&v84[72] = *&v96[32];
          *&v84[8] = v94;
          *&v84[24] = v95;
          v87 = v95;
          v86 = v94;
          *&v84[88] = v56;
          *&v84[96] = 0;
          *&v83 = v75;
          *(&v83 + 1) = v77;
          *v84 = v59;
          v84[104] = 1;
          v85[0] = v75;
          v85[1] = v77;
          v85[2] = v59;
          v91 = v56;
          v92 = 0;
          v90 = *&v96[32];
          v89 = *&v96[16];
          v88 = *v96;
          v93 = 1;
          sub_16054(&v83, &v117, &qword_118BC0, &qword_E1730);
          sub_160BC(v85, &qword_118BC0, &qword_E1730);
          *&v82[71] = *&v84[48];
          *&v82[87] = *&v84[64];
          *&v82[103] = *&v84[80];
          *&v82[7] = v83;
          *&v82[23] = *v84;
          *&v82[39] = *&v84[16];
          *&v82[55] = *&v84[32];
          *&v96[9] = *v82;
          *&v96[25] = *&v82[16];
          *&v96[41] = *&v82[32];
          *&v96[121] = *&v84[89];
          *&v96[105] = *&v82[96];
          *&v96[89] = *&v82[80];
          v94 = v78;
          LOBYTE(v95._countAndFlagsBits) = 1;
          HIDWORD(v95._countAndFlagsBits) = *(&v117._countAndFlagsBits + 3);
          *(&v95._countAndFlagsBits + 1) = v117._countAndFlagsBits;
          v95._object = v79;
          *v96 = 0;
          v96[8] = 1;
          *&v96[73] = *&v82[64];
          *&v96[57] = *&v82[48];
          v115 = *&v96[96];
          v116[0] = *&v96[112];
          *(v116 + 9) = *&v84[89];
          v111 = *&v96[32];
          v112 = *&v96[48];
          v113 = *&v96[64];
          v114 = *&v96[80];
          v107 = v78;
          v108 = v95;
          v109 = *v96;
          v110 = *&v96[16];
          sub_826BC(&v107);
          v125 = v115;
          v126[0] = v116[0];
          *(v126 + 10) = *(v116 + 10);
          v121 = v111;
          v122 = v112;
          v124 = v114;
          v123 = v113;
          v117 = v107;
          v118 = v108;
          v120 = v110;
          v119 = v109;
          sub_16054(&v94, &v97, &qword_118BA0, &qword_E1720);
          sub_16054(&v94, &v97, &qword_118BA0, &qword_E1720);
          sub_DC40(&qword_118BA0, &qword_E1720);
          sub_DC40(&qword_118BA8, &qword_E1728);
          sub_15FB8(&qword_118BB0, &qword_118BA0, &qword_E1720, &protocol conformance descriptor for VStack<A>);
          sub_15FB8(&qword_118BB8, &qword_118BA8, &qword_E1728, &protocol conformance descriptor for VStack<A>);
          sub_D70B8();

          sub_160BC(&v94, &qword_118BA0, &qword_E1720);
          result = sub_160BC(&v94, &qword_118BA0, &qword_E1720);
          v125 = v105;
          v126[0] = v106[0];
          *(v126 + 10) = *(v106 + 10);
          v121 = v101;
          v122 = v102;
          v124 = v104;
          v123 = v103;
          v117 = v97;
          v118 = v98;
          v120 = v100;
          v119 = v99;
LABEL_9:
          v61 = v126[0];
          a5[8] = v125;
          a5[9] = v61;
          *(a5 + 154) = *(v126 + 10);
          v62 = v122;
          a5[4] = v121;
          a5[5] = v62;
          v63 = v124;
          a5[6] = v123;
          a5[7] = v63;
          v64 = v118;
          *a5 = v117;
          a5[1] = v64;
          v65 = v120;
          a5[2] = v119;
          a5[3] = v65;
          return result;
        }

        v7 = v19;
      }
    }

    else
    {
      v12 = v7;
    }

    v107 = sub_D7078();
    LOBYTE(v108._countAndFlagsBits) = 1;
    sub_826B0(&v107);
    v105 = v115;
    v106[0] = v116[0];
    *(v106 + 10) = *(v116 + 10);
    v101 = v111;
    v102 = v112;
    v103 = v113;
    v104 = v114;
    v97 = v107;
    v98 = v108;
    v99 = v109;
    v100 = v110;
    sub_DC40(&qword_118BA0, &qword_E1720);
    sub_DC40(&qword_118BA8, &qword_E1728);
    sub_15FB8(&qword_118BB0, &qword_118BA0, &qword_E1720, &protocol conformance descriptor for VStack<A>);
    sub_15FB8(&qword_118BB8, &qword_118BA8, &qword_E1728, &protocol conformance descriptor for VStack<A>);
    result = sub_D70B8();
    goto LABEL_9;
  }

  v66 = type metadata accessor for GCSPreferencesStore(0);
  sub_15564(v66, v67, v68, v69);
  result = sub_D6DD8();
  __break(1u);
  return result;
}

id sub_826D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  if (*v4)
  {

    return v5;
  }

  else
  {
    v7 = type metadata accessor for GCSPreferencesStore(0);
    sub_15564(v7, v8, v9, v10);
    result = sub_D6DD8();
    __break(1u);
  }

  return result;
}

uint64_t sub_8272C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for GCSPreferencesStore(0);
  sub_15564(v4, v5, v6, v7);

  return sub_D6DC8();
}

uint64_t sub_82784()
{
  sub_DC40(&qword_1172A8, &qword_E1A50);
  sub_D78B8();
  return v1;
}

void (*sub_82838(void *a1))(uint64_t *, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = v1[2];
  v6 = v1[3];
  v3[9] = v5;
  v3[10] = v6;
  v7 = v1[4];
  v3[11] = v7;
  v3[6] = v5;
  *v3 = v5;
  v3[1] = v6;
  v3[2] = v7;
  sub_16444((v3 + 6), (v3 + 3));

  v8 = v7;
  v4[12] = sub_DC40(&qword_1172A8, &qword_E1A50);
  sub_D78B8();
  return sub_828F8;
}

uint64_t sub_828FC()
{
  sub_DC40(&qword_1172A8, &qword_E1A50);
  sub_D78E8();
  return v1;
}

uint64_t sub_82958()
{
  sub_DC40(&qword_1172A8, &qword_E1A50);
  sub_D78B8();
  return v1;
}

void (*sub_82A0C(void *a1))(uint64_t *, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = v1[5];
  v6 = v1[6];
  v3[9] = v5;
  v3[10] = v6;
  v7 = v1[7];
  v3[11] = v7;
  v3[6] = v5;
  *v3 = v5;
  v3[1] = v6;
  v3[2] = v7;
  sub_16444((v3 + 6), (v3 + 3));

  v8 = v7;
  v4[12] = sub_DC40(&qword_1172A8, &qword_E1A50);
  sub_D78B8();
  return sub_84378;
}

uint64_t sub_82ACC()
{
  sub_DC40(&qword_1172A8, &qword_E1A50);
  sub_D78E8();
  return v1;
}

uint64_t sub_82B28()
{
  sub_DC40(&qword_116510, &qword_DD4D0);
  sub_D78B8();
  return v1;
}

void (*sub_82BDC(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  *(v3 + 56) = v5;
  *(v3 + 64) = v6;
  v7 = *(v1 + 80);
  *(v3 + 19) = v7;
  *(v3 + 48) = v5;
  *v3 = v5;
  *(v3 + 8) = v6;
  *(v3 + 16) = v7;
  sub_16444(v3 + 48, v3 + 24);

  *(v4 + 72) = sub_DC40(&qword_116510, &qword_DD4D0);
  sub_D78B8();
  return sub_22030;
}

uint64_t sub_82C98()
{
  sub_DC40(&qword_116510, &qword_DD4D0);
  sub_D78E8();
  return v1;
}

uint64_t sub_82CF4(uint64_t a1)
{
  sub_DC40(&qword_118BC8, &qword_E1738);
  sub_D77D8();
  return v2;
}

uint64_t sub_82D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*v4)
  {
    goto LABEL_13;
  }

  v5 = *v4;
  v6 = [v5 unfusedFusableControllers];
  sub_450A0(0, &qword_117060, GCSController_ptr);
  v7 = sub_D7D28();

  if ((v7 & 0xC000000000000001) != 0)
  {
    sub_D7FF8();
    goto LABEL_5;
  }

  if (*(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
  {
    v8 = *(v7 + 32);
LABEL_5:

    sub_DC40(&qword_1172A8, &qword_E1A50);
    sub_D78C8();
    v9 = [v5 unfusedFusableControllers];

    v10 = sub_D7D28();
    if ((v10 & 0xC000000000000001) != 0)
    {
      sub_D7FF8();
      goto LABEL_8;
    }

    if (*(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)) >= 2uLL)
    {
      v11 = *(v10 + 40);
LABEL_8:

      sub_D78C8();
      sub_DC40(&qword_116510, &qword_DD4D0);
      return sub_D78C8();
    }

    goto LABEL_12;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  v13 = type metadata accessor for GCSPreferencesStore(0);
  sub_15564(v13, v14, v15, v16);
  result = sub_D6DD8();
  __break(1u);
  return result;
}

void sub_82F40()
{
  sub_DC40(&qword_118BD0, &qword_E1740);
  sub_D77E8();
  v1 = v13;
  if (v13)
  {
    if (*v0)
    {
      v2 = *v0;
      v3 = [v13 fusedControllerIdentifier];
      v4 = sub_D7C18();
      v6 = v5;

      v7 = (*&stru_1F8.segname[(swift_isaMask & *v2) + 16])(v4, v6);

      if (v7)
      {
        v8 = static MacParity.Pantheon.getter();
        (*(&stru_2E8.reserved2 + (swift_isaMask & *v2)))(v7, v8 & 1);

        v1 = v7;
      }
    }

    else
    {
      v9 = type metadata accessor for GCSPreferencesStore(0);
      sub_15564(v9, v10, v11, v12);
      sub_D6DD8();
      __break(1u);
    }
  }
}

uint64_t sub_830D0()
{
  sub_A9308(0x5F544F4C49504F43, 0xED0000454C544954);
  sub_16000();
  sub_D73B8();
  sub_A9308(0x5F544F4C49504F43, 0xEC00000043534544);
  sub_D73B8();
  sub_DC40(&qword_118BD8, &qword_E1748);
  sub_15FB8(&qword_118BE0, &qword_118BD8, &qword_E1748, &protocol conformance descriptor for List<A, B>);
  return sub_D79B8();
}

uint64_t sub_83224(uint64_t a1)
{
  sub_DC40(&qword_118BD0, &qword_E1740);
  sub_D7808();
  sub_450A0(0, &unk_118F00, GCSCopilotFusedController_ptr);
  sub_DC40(&qword_118C08, &qword_E18F8);
  sub_83F64();
  sub_15FB8(&qword_118C18, &qword_118C08, &qword_E18F8, &protocol conformance descriptor for TupleView<A>);
  return sub_D7338();
}

uint64_t sub_83344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v3 = sub_DC40(&qword_116818, &qword_DF1F0);
  v61 = *(v3 - 8);
  v62 = v3;
  __chkstk_darwin(v3);
  v57 = &v55 - v4;
  v59 = sub_DC40(&qword_1169D0, qword_DD820);
  __chkstk_darwin(v59);
  v64 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v58 = &v55 - v7;
  __chkstk_darwin(v8);
  v63 = &v55 - v9;
  v56 = sub_DC40(&qword_118C20, &qword_E1900);
  v10 = *(v56 - 8);
  __chkstk_darwin(v56);
  v12 = &v55 - v11;
  v13 = sub_DC40(&qword_118C28, &unk_E1908);
  __chkstk_darwin(v13);
  v60 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v55 - v16;
  __chkstk_darwin(v18);
  v66 = &v55 - v19;
  if (*a1)
  {
    v20 = *a1;
    v21 = [v20 copilotFusedControllers];
    sub_450A0(0, &unk_118F00, GCSCopilotFusedController_ptr);
    v22 = sub_D7D28();

    v67[0] = v22;
    swift_getKeyPath();
    sub_DC40(&qword_118C30, &qword_E1930);
    sub_15FB8(&qword_118C38, &qword_118C30, &qword_E1930, &protocol conformance descriptor for [A]);
    sub_83F64();
    sub_83FCC();
    sub_D7988();
    v23 = swift_allocObject();
    v24 = *(a1 + 80);
    *(v23 + 80) = *(a1 + 64);
    *(v23 + 96) = v24;
    *(v23 + 112) = *(a1 + 96);
    v25 = *(a1 + 16);
    *(v23 + 16) = *a1;
    *(v23 + 32) = v25;
    v26 = *(a1 + 48);
    *(v23 + 48) = *(a1 + 32);
    *(v23 + 64) = v26;
    v27 = swift_allocObject();
    *(v27 + 16) = sub_84024;
    *(v27 + 24) = v23;
    (*(v10 + 32))(v17, v12, v56);
    v28 = &v17[*(v13 + 36)];
    *v28 = sub_5D5D8;
    v28[1] = v27;
    sub_21A44(v17, v66, &qword_118C28, &unk_E1908);
    v29 = swift_allocObject();
    v30 = *(a1 + 80);
    *(v29 + 80) = *(a1 + 64);
    *(v29 + 96) = v30;
    *(v29 + 112) = *(a1 + 96);
    v31 = *(a1 + 16);
    *(v29 + 16) = *a1;
    *(v29 + 32) = v31;
    v32 = *(a1 + 48);
    *(v29 + 48) = *(a1 + 32);
    *(v29 + 64) = v32;
    sub_8432C(a1, v67);
    sub_8432C(a1, v67);
    v33 = v57;
    sub_D7848();
    v34 = [v20 unfusedFusableControllers];

    sub_450A0(0, &qword_117060, GCSController_ptr);
    v35 = sub_D7D28();

    if (v35 >> 62)
    {
      v36 = sub_D8078();
    }

    else
    {
      v36 = *(&dword_10 + (v35 & 0xFFFFFFFFFFFFFF8));
    }

    v38 = v64;
    v37 = v65;
    v39 = v62;
    v40 = v63;
    v42 = v60;
    v41 = v61;

    v43 = v36 < 2;
    KeyPath = swift_getKeyPath();
    v45 = swift_allocObject();
    *(v45 + 16) = v43;
    v46 = v58;
    (*(v41 + 32))(v58, v33, v39);
    v47 = (v46 + *(v59 + 36));
    *v47 = KeyPath;
    v47[1] = sub_285D8;
    v47[2] = v45;
    sub_21A44(v46, v40, &qword_1169D0, qword_DD820);
    v48 = v66;
    sub_16054(v66, v42, &qword_118C28, &unk_E1908);
    sub_16054(v40, v38, &qword_1169D0, qword_DD820);
    sub_16054(v42, v37, &qword_118C28, &unk_E1908);
    v49 = sub_DC40(&qword_118C48, &qword_E1968);
    sub_16054(v38, v37 + *(v49 + 48), &qword_1169D0, qword_DD820);
    sub_160BC(v40, &qword_1169D0, qword_DD820);
    sub_160BC(v48, &qword_118C28, &unk_E1908);
    sub_160BC(v38, &qword_1169D0, qword_DD820);
    return sub_160BC(v42, &qword_118C28, &unk_E1908);
  }

  else
  {
    v51 = type metadata accessor for GCSPreferencesStore(0);
    sub_15564(v51, v52, v53, v54);
    result = sub_D6DD8();
    __break(1u);
  }

  return result;
}

uint64_t sub_83A5C@<X0>(void **a1@<X0>, uint64_t *a5@<X8>)
{
  v6 = *a1;
  v7 = type metadata accessor for GCSPreferencesStore(0);
  sub_15564(v7, v8, v9, v10);
  v11 = v6;
  result = sub_D6DF8();
  *a5 = result;
  a5[1] = v13;
  a5[2] = v11;
  return result;
}

uint64_t sub_83AB8@<X0>(uint64_t a1@<X8>)
{
  sub_A9308(0xD00000000000001FLL, 0x80000000000E6080);
  sub_16000();
  result = sub_D73B8();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

__n128 sub_83B28@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12)
{
  sub_DC40(&qword_118BC8, &qword_E1738);
  sub_D77D8();
  result = v22;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  *(a9 + 80) = a12;
  *(a9 + 88) = v22;
  return result;
}

uint64_t sub_83C18()
{
  sub_A9308(0x5F544F4C49504F43, 0xED0000454C544954);
  sub_16000();
  sub_D73B8();
  sub_A9308(0x5F544F4C49504F43, 0xEC00000043534544);
  sub_D73B8();
  sub_DC40(&qword_118BD8, &qword_E1748);
  sub_15FB8(&qword_118BE0, &qword_118BD8, &qword_E1748, &protocol conformance descriptor for List<A, B>);
  return sub_D79B8();
}

unint64_t sub_83DBC()
{
  result = qword_118BE8;
  if (!qword_118BE8)
  {
    sub_EBC0(&qword_118BF0, &qword_E18E8);
    sub_15FB8(&qword_118BB0, &qword_118BA0, &qword_E1720, &protocol conformance descriptor for VStack<A>);
    sub_15FB8(&qword_118BB8, &qword_118BA8, &qword_E1728, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_118BE8);
  }

  return result;
}

unint64_t sub_83EA0()
{
  result = qword_118BF8;
  if (!qword_118BF8)
  {
    sub_EBC0(&qword_118C00, &qword_E18F0);
    sub_15FB8(&qword_118BE0, &qword_118BD8, &qword_E1748, &protocol conformance descriptor for List<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_118BF8);
  }

  return result;
}

unint64_t sub_83F64()
{
  result = qword_118C10;
  if (!qword_118C10)
  {
    sub_450A0(255, &unk_118F00, GCSCopilotFusedController_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_118C10);
  }

  return result;
}

unint64_t sub_83FCC()
{
  result = qword_118C40;
  if (!qword_118C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_118C40);
  }

  return result;
}

void sub_84024(double a1)
{
  v2 = sub_D69D8();
  if (v3)
  {
    return;
  }

  v4 = *(v1 + 16);
  if (!v4)
  {
LABEL_15:
    v16 = type metadata accessor for GCSPreferencesStore(0);
    sub_15564(v16, v17, v18, v19);
    sub_D6DD8();
    __break(1u);
    return;
  }

  v5 = v2;
  v6 = v4;
  v7 = [v6 copilotFusedControllers];
  sub_450A0(0, &unk_118F00, GCSCopilotFusedController_ptr);
  v8 = sub_D7D28();

  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = sub_D7FF8();
    goto LABEL_7;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v5 >= *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = *(v8 + 8 * v5 + 32);
LABEL_7:
  v20 = v9;

  v10 = [v20 fusedControllerIdentifier];
  v11 = sub_D7C18();
  v13 = v12;

  v14 = (*&stru_1F8.segname[(swift_isaMask & *v6) + 16])(v11, v13);

  if (v14)
  {
    v15 = static MacParity.Pantheon.getter();
    (*(&stru_2E8.reserved2 + (swift_isaMask & *v6)))(v14, v15 & 1);

    v20 = v14;
  }
}