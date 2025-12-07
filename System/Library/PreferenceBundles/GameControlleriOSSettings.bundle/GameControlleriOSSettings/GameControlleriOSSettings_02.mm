void *sub_3C928(uint64_t (*a1)(id *), void *a2, unint64_t a3)
{
  v4 = a3;
  v19 = _swiftEmptyArrayStorage;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)); i; i = sub_D8078())
  {
    v8 = 0;
    v16 = v4 & 0xFFFFFFFFFFFFFF8;
    v17 = v4 & 0xC000000000000001;
    v15 = v4;
    while (1)
    {
      if (v17)
      {
        v9 = sub_D7FF8();
      }

      else
      {
        if (v8 >= *(v16 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v18 = v9;
      v12 = a2;
      v13 = a1(&v18);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        sub_D8028();
        sub_D8058();
        v4 = v15;
        sub_D8068();
        sub_D8038();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v19;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = _swiftEmptyArrayStorage;
LABEL_20:

  return v12;
}

BOOL sub_3CB48(void *a1, void *a2)
{
  v5 = sub_D6998();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v31[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v9);
  v12 = &v31[-v11];
  v13 = [v2 controllerToProfileMappings];
  v14 = sub_D7B48();

  v15 = [a1 persistentIdentifier];
  v16 = sub_D7C18();
  v18 = v17;

  if (!*(v14 + 16))
  {
    goto LABEL_9;
  }

  v19 = sub_1ED4C(v16, v18);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_10:

    return 0;
  }

  (*(v6 + 16))(v8, *(v14 + 56) + *(v6 + 72) * v19, v5);

  (*(v6 + 32))(v12, v8, v5);
  v22 = [a2 profiles];
  sub_27120();
  v23 = sub_D7D28();

  __chkstk_darwin(v24);
  *&v31[-16] = v12;
  v25 = sub_3C928(sub_3DB40, &v31[-32], v23);
  if (v25 >> 62)
  {
    v30 = v25;
    v26 = sub_D8078();
    v25 = v30;
  }

  else
  {
    v26 = *(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8));
  }

  v27 = v26 != 0;
  if (!v26)
  {
    goto LABEL_13;
  }

  if ((v25 & 0xC000000000000001) != 0)
  {
    sub_D7FF8();
    swift_unknownObjectRelease();
LABEL_13:

    goto LABEL_14;
  }

  v28 = *(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8));

  if (!v28)
  {
    __break(1u);
LABEL_9:

    goto LABEL_10;
  }

LABEL_14:
  (*(v6 + 8))(v12, v5);
  return v27;
}

uint64_t sub_3CE44(id *a1, uint64_t a2)
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

uint64_t sub_3D094()
{
  v1 = [v0 bundleIdentifier];
  v2 = sub_D7C18();
  v4 = v3;

  v5 = [objc_opt_self() defaultIdentifier];
  v6 = sub_D7C18();
  v8 = v7;

  if (v2 == v6 && v4 == v8)
  {

    v11 = 0;
  }

  else
  {
    v10 = sub_D8118();

    v11 = v10 ^ 1;
  }

  return v11 & 1;
}

uint64_t sub_3D178()
{
  sub_DC40(&qword_118E40, qword_DEAB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_DEAA0;
  *(v0 + 32) = [swift_getObjCClassFromMetadata() defaultGame];
  sub_3DB70(_swiftEmptyArrayStorage);
  sub_3DD4C(_swiftEmptyArrayStorage);
  v1 = objc_allocWithZone(GCSGame);
  v2 = sub_D7BD8();
  v3 = sub_D7BD8();
  sub_D6998();
  isa = sub_D7B38().super.isa;

  type metadata accessor for GCSCompatibilityMode();
  v5 = sub_D7B38().super.isa;

  v6 = [v1 initWithBundleIdentifier:v2 title:v3 controllerToProfileMappings:isa controllerToCompatibilityModeMappings:v5];

  *(v0 + 40) = v6;
  return v0;
}

uint64_t sub_3D37C()
{
  v1 = v0;
  v2 = [v0 bundleIdentifier];
  v3 = sub_D7C18();
  v5 = v4;

  v6 = [objc_opt_self() defaultIdentifier];
  v7 = sub_D7C18();
  v9 = v8;

  if (v3 == v7 && v5 == v9)
  {

    return sub_A9308(0xD000000000000010, 0x80000000000E5650);
  }

  v11 = sub_D8118();

  if (v11)
  {
    return sub_A9308(0xD000000000000010, 0x80000000000E5650);
  }

  if (objc_getAssociatedObject(v1, &unk_11B3C0))
  {
    sub_D7F58();
    swift_unknownObjectRelease();
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
  }

  v27[0] = v25;
  v27[1] = v26;
  if (*(&v26 + 1))
  {
    if (swift_dynamicCast())
    {
      return v24;
    }
  }

  else
  {
    sub_3DEA0(v27);
  }

  v13 = [v1 title];
  sub_D7C18();

  v14 = [v1 bundleIdentifier];
  v15 = sub_D7C18();
  v17 = v16;

  v18 = objc_allocWithZone(LSApplicationRecord);
  v19 = sub_3D688(v15, v17, 0);

  sub_D69A8();
  isa = sub_D7D18().super.isa;

  v21 = [v19 localizedNameWithPreferredLocalizations:isa];

  v22 = sub_D7C18();
  v23 = sub_D7BD8();
  objc_setAssociatedObject(v1, &unk_11B3C0, v23, &stru_2E8.segname[9]);

  return v22;
}

void sub_3D630(uint64_t *a1@<X8>)
{
  v3 = [*v1 bundleIdentifier];
  v4 = sub_D7C18();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

id sub_3D688(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_D7BD8();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_D6848();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_3D76C(uint64_t a1, id *a2)
{
  result = sub_D7BF8();
  *a2 = 0;
  return result;
}

uint64_t sub_3D7E4(uint64_t a1, id *a2)
{
  v3 = sub_D7C08();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_3D864@<X0>(uint64_t *a2@<X8>)
{
  sub_D7C18();
  v3 = sub_D7BD8();

  *a2 = v3;
  return result;
}

uint64_t sub_3D8A8@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_D7BD8();

  *a2 = v3;
  return result;
}

uint64_t sub_3D8F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_D7C18();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_3D91C(uint64_t a1)
{
  v2 = sub_3DFA4(&qword_117290, &unk_DEC34);
  v3 = sub_3DFA4(&unk_119190, &unk_DEBDC);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_3D9B4()
{
  sub_D7C18();
  v0 = sub_D7CE8();

  return v0;
}

uint64_t sub_3D9F0(uint64_t a1)
{
  sub_D7C18();
  sub_D7C78();
}

Swift::Int sub_3DA44(uint64_t a1)
{
  sub_D7C18();
  sub_D8168();
  sub_D7C78();
  v1 = sub_D8198();

  return v1;
}

uint64_t sub_3DAB8(void *a1, uint64_t *a2)
{
  v2 = sub_D7C18();
  v4 = v3;
  if (v2 == sub_D7C18() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_D8118();
  }

  return v7 & 1;
}

unint64_t sub_3DB70(uint64_t a1)
{
  v2 = sub_DC40(&qword_1172A0, &qword_DECC8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_DC40(&unk_119100, &unk_DECD0);
    v7 = sub_D80A8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_3DFE8(v9, v5);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1ED4C(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_D6998();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_3DD4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_DC40(&qword_117298, &qword_DECC0);
    v3 = sub_D80A8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1ED4C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void type metadata accessor for GCSCompatibilityMode()
{
  if (!qword_117280)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_117280);
    }
  }
}

uint64_t sub_3DEA0(uint64_t a1)
{
  v2 = sub_DC40(&qword_119330, &unk_DF040);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_3DFA4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GCSCompatibilityMode();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_3DFE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_DC40(&qword_1172A0, &qword_DECC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_3E074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 8);
  if (v5)
  {

    return v5;
  }

  else
  {
    type metadata accessor for GCSPreferencesStore(0);
    sub_43340(&qword_116448, type metadata accessor for GCSPreferencesStore, &unk_E23A8);
    result = sub_D6DD8();
    __break(1u);
  }

  return result;
}

uint64_t sub_3E100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for GCSPreferencesStore(0);
  sub_43340(&qword_116448, type metadata accessor for GCSPreferencesStore, &unk_E23A8);

  return sub_D6DC8();
}

uint64_t sub_3E188()
{
  sub_DC40(&qword_116510, &qword_DD4D0);
  sub_D78B8();
  return v1;
}

void (*sub_3E23C(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  *(v3 + 56) = v5;
  *(v3 + 64) = v6;
  v7 = *(v1 + 40);
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

uint64_t sub_3E2F8()
{
  sub_DC40(&qword_116510, &qword_DD4D0);
  sub_D78E8();
  return v1;
}

uint64_t sub_3E354()
{
  sub_DC40(&qword_1172A8, &qword_E1A50);
  sub_D78B8();
  return v1;
}

void (*sub_3E408(void *a1))(uint64_t *a1, char a2)
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
  v5 = v1[6];
  v6 = v1[7];
  v3[9] = v5;
  v3[10] = v6;
  v7 = v1[8];
  v3[11] = v7;
  v3[6] = v5;
  *v3 = v5;
  v3[1] = v6;
  v3[2] = v7;
  sub_16444((v3 + 6), (v3 + 3));

  v8 = v7;
  v4[12] = sub_DC40(&qword_1172A8, &qword_E1A50);
  sub_D78B8();
  return sub_3E4C8;
}

void sub_3E4C8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  *(v2 + 24) = *(*a1 + 72);
  v4 = *(v2 + 56);
  *(v2 + 64) = v4;
  v5 = *(v2 + 88);
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  if (a2)
  {
    v6 = v4;
    sub_D78C8();
    sub_164A0(v2 + 48);
  }

  else
  {
    sub_D78C8();
    sub_164A0(v2 + 48);
  }

  free(v2);
}

uint64_t sub_3E584()
{
  sub_DC40(&qword_1172A8, &qword_E1A50);
  sub_D78E8();
  return v1;
}

void *sub_3E5E0@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_D7078();
  v13 = 1;
  v5 = sub_D6FB8();
  v12 = 1;
  sub_3E6D0(v2, __src);
  memcpy(__dst, __src, 0x109uLL);
  memcpy(v15, __src, 0x109uLL);
  sub_16054(__dst, &v9, &qword_1172B0, &unk_DECE0);
  sub_160BC(v15, &qword_1172B0, &unk_DECE0);
  memcpy(&v11[7], __dst, 0x109uLL);
  v6 = v12;
  v7 = v13;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 24) = v5;
  *(a1 + 32) = 0;
  *(a1 + 40) = v6;
  return memcpy((a1 + 41), v11, 0x110uLL);
}

void sub_3E6D0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  sub_58D24(v4, v5, v6, v7);
  nullsub_1();
  v9 = v8;
  v127 = v11;
  v128 = v10;
  v129 = sub_D7088();
  v149 = 0;
  v12 = [v4 localizedName];
  v13 = sub_D7C18();
  v15 = v14;

  *v162 = v13;
  *&v162[8] = v15;
  sub_16000();
  v16 = sub_D73B8();
  v124 = v17;
  v125 = v16;
  v123 = v18;
  v126 = v19;
  v20 = *(a1 + 8);
  if (v20)
  {
    v21 = *(&stru_248.size + (swift_isaMask & *v20));
    v22 = v20;
    v130 = v9;
    if (v21(v4))
    {
      v23 = (*(&stru_248.offset + (swift_isaMask & *v22)))(v4);

      v120 = sub_D6FA8();
      v166 = 0;
      if (v23)
      {
        v116 = sub_D7688();
        sub_D7A18();
        sub_D6C28();
        *&v131[6] = v138;
        *&v131[22] = v139;
        *&v131[38] = v140;
        *v162 = sub_A9308(0x5F544F4C49504F43, 0xEE0044454B4E494CLL);
        *&v162[8] = v24;
        v25 = sub_D73B8();
        v27 = v26;
        v29 = v28;
        sub_D72E8();
        v30 = sub_D7398();
        v32 = v31;
        v34 = v33;
        v114 = v35;

        sub_1F8F0(v25, v27, v29 & 1);

        v36 = v4;
        v37 = sub_2DBF4();
        v39 = v38;
        v40 = sub_2D0E0();
        sub_2DC6C(v37, v39, v40, v41, v36, v150);
        v42 = *v150;
        v43 = *v150;
        v44 = *&v150[16];
        v45 = *&v150[40];
        *v161 = v116;
        *&v161[8] = 256;
        *&v161[10] = *v131;
        *&v161[26] = *&v131[16];
        *&v161[42] = *&v131[32];
        *&v161[56] = *(&v140 + 1);
        LOBYTE(v27) = v34 & 1;
        v168 = v34 & 1;
        v167 = v150[32] & 1;
        v118 = v150[32] & 1;
        *&v153[32] = *&v161[32];
        *&v153[48] = *&v161[48];
        *v153 = *v161;
        *&v153[16] = *&v161[16];
        sub_16054(v161, v162, &qword_1171A0, qword_DE910);
        sub_1F900(v30, v32, v34 & 1);
        v46 = v42;

        sub_43B70(v44, *(&v44 + 1));
        v47 = v45;

        sub_2DAA4(v44, *(&v44 + 1));
        sub_1F8F0(v30, v32, v27);

        *v162 = v116;
        *&v162[8] = 256;
        *&v162[10] = *v131;
        *&v162[26] = *&v131[16];
        *&v162[42] = *&v131[32];
        *&v162[56] = *(&v140 + 1);
        sub_160BC(v162, &qword_1171A0, qword_DE910);
        v138 = *v153;
        v139 = *&v153[16];
        v140 = *&v153[32];
        v141 = *&v153[48];
        DWORD1(v143) = *&v161[3];
        *(&v143 + 1) = *v161;
        DWORD1(v146) = *&v150[3];
        *(&v146 + 1) = *v150;
        *&v142 = v30;
        *(&v142 + 1) = v32;
        LOBYTE(v143) = v27;
        *(&v143 + 1) = v114;
        v144 = v43;
        v145 = v44;
        LOBYTE(v146) = v118;
        *(&v146 + 1) = v47;
        *&v131[32] = *&v153[32];
        *&v131[48] = *&v153[48];
        *v131 = *v153;
        *&v131[16] = *&v153[16];
        *&v132 = v30;
        *(&v132 + 1) = v32;
        LOBYTE(v133) = v27;
        DWORD1(v133) = *&v161[3];
        *(&v133 + 1) = *v161;
        *(&v133 + 1) = v114;
        v134 = v43;
        v135 = v44;
        LOBYTE(v136) = v118;
        DWORD1(v136) = *&v150[3];
        *(&v136 + 1) = *v150;
        *(&v136 + 1) = v47;
        sub_16054(&v138, v162, &qword_117488, &unk_E0C70);
        sub_160BC(v131, &qword_117488, &unk_E0C70);
        *&v150[87] = v143;
        *&v150[103] = v144;
        *&v150[119] = v145;
        *&v150[135] = v146;
        *&v150[23] = v139;
        *&v150[39] = v140;
        *&v150[55] = v141;
        *&v150[71] = v142;
        *&v150[7] = v138;
        LOBYTE(v42) = v166;
        v48 = sub_D7198();
        *&v162[113] = *&v150[96];
        *&v162[129] = *&v150[112];
        *&v162[145] = *&v150[128];
        *&v162[49] = *&v150[32];
        *&v162[65] = *&v150[48];
        *&v162[81] = *&v150[64];
        *&v162[97] = *&v150[80];
        *&v162[17] = *v150;
        *v162 = v120;
        *&v162[8] = 0x4014000000000000;
        v162[16] = v42;
        *&v162[160] = *&v150[143];
        *&v162[33] = *&v150[16];
        *&v162[168] = v48;
        sub_43B68(v162);
      }

      else
      {
        v117 = sub_D7658();
        sub_D7A18();
        sub_D6C28();
        *&v131[6] = v138;
        *&v131[22] = v139;
        *&v131[38] = v140;
        *v162 = sub_A9308(0xD000000000000013, 0x80000000000E52F0);
        *&v162[8] = v66;
        v67 = sub_D73B8();
        v69 = v68;
        v71 = v70;
        sub_D72E8();
        v72 = sub_D7398();
        v74 = v73;
        v76 = v75;
        v115 = v77;

        sub_1F8F0(v67, v69, v71 & 1);

        v78 = v4;
        v79 = sub_2DBF4();
        v81 = v80;
        v82 = sub_2D0E0();
        sub_2DC6C(v79, v81, v82, v83, v78, v150);
        v84 = *v150;
        v85 = *v150;
        v86 = *&v150[16];
        v87 = *&v150[40];
        *v161 = v117;
        *&v161[8] = 256;
        *&v161[10] = *v131;
        *&v161[26] = *&v131[16];
        *&v161[42] = *&v131[32];
        *&v161[56] = *(&v140 + 1);
        LOBYTE(v69) = v76 & 1;
        v168 = v76 & 1;
        v167 = v150[32] & 1;
        v119 = v150[32] & 1;
        *&v153[32] = *&v161[32];
        *&v153[48] = *&v161[48];
        *v153 = *v161;
        *&v153[16] = *&v161[16];
        sub_16054(v161, v162, &qword_1171A0, qword_DE910);
        sub_1F900(v72, v74, v76 & 1);
        v88 = v84;

        sub_43B70(v86, *(&v86 + 1));
        v89 = v87;

        sub_2DAA4(v86, *(&v86 + 1));
        sub_1F8F0(v72, v74, v69);

        *v162 = v117;
        *&v162[8] = 256;
        *&v162[10] = *v131;
        *&v162[26] = *&v131[16];
        *&v162[42] = *&v131[32];
        *&v162[56] = *(&v140 + 1);
        sub_160BC(v162, &qword_1171A0, qword_DE910);
        v138 = *v153;
        v139 = *&v153[16];
        v140 = *&v153[32];
        v141 = *&v153[48];
        DWORD1(v143) = *&v161[3];
        *(&v143 + 1) = *v161;
        DWORD1(v146) = *&v150[3];
        *(&v146 + 1) = *v150;
        *&v142 = v72;
        *(&v142 + 1) = v74;
        LOBYTE(v143) = v69;
        *(&v143 + 1) = v115;
        v144 = v85;
        v145 = v86;
        LOBYTE(v146) = v119;
        *(&v146 + 1) = v89;
        *&v131[32] = *&v153[32];
        *&v131[48] = *&v153[48];
        *v131 = *v153;
        *&v131[16] = *&v153[16];
        *&v132 = v72;
        *(&v132 + 1) = v74;
        LOBYTE(v133) = v69;
        DWORD1(v133) = *&v161[3];
        *(&v133 + 1) = *v161;
        *(&v133 + 1) = v115;
        v134 = v85;
        v135 = v86;
        LOBYTE(v136) = v119;
        DWORD1(v136) = *&v150[3];
        *(&v136 + 1) = *v150;
        *(&v136 + 1) = v89;
        sub_16054(&v138, v162, &qword_117488, &unk_E0C70);
        sub_160BC(v131, &qword_117488, &unk_E0C70);
        *&v150[87] = v143;
        *&v150[103] = v144;
        *&v150[119] = v145;
        *&v150[135] = v146;
        *&v150[23] = v139;
        *&v150[39] = v140;
        *&v150[55] = v141;
        *&v150[71] = v142;
        *&v150[7] = v138;
        LOBYTE(v78) = v166;
        v90 = sub_D7198();
        *&v162[113] = *&v150[96];
        *&v162[129] = *&v150[112];
        *&v162[145] = *&v150[128];
        *&v162[49] = *&v150[32];
        *&v162[65] = *&v150[48];
        *&v162[81] = *&v150[64];
        *&v162[97] = *&v150[80];
        *&v162[17] = *v150;
        *v162 = v120;
        *&v162[8] = 0x4014000000000000;
        v162[16] = v78;
        *&v162[160] = *&v150[143];
        *&v162[33] = *&v150[16];
        *&v162[168] = v90;
        sub_43B54(v162);
      }

      *&v161[128] = *&v162[128];
      *&v161[144] = *&v162[144];
      *&v161[157] = *&v162[157];
      *&v161[64] = *&v162[64];
      *&v161[80] = *&v162[80];
      *&v161[112] = *&v162[112];
      *&v161[96] = *&v162[96];
      *v161 = *v162;
      *&v161[16] = *&v162[16];
      *&v161[48] = *&v162[48];
      *&v161[32] = *&v162[32];
      sub_DC40(&qword_117468, &unk_DEF30);
      sub_43A70();
      sub_D70B8();
      *&v161[128] = v158;
      *&v161[144] = *v159;
      *&v161[157] = *&v159[13];
      *&v161[64] = v154;
      *&v161[80] = v155;
      *&v161[112] = v157;
      *&v161[96] = v156;
      *v161 = *v153;
      *&v161[16] = *&v153[16];
      *&v161[48] = *&v153[48];
      *&v161[32] = *&v153[32];
      sub_43B60(v161);
      v136 = *&v161[128];
      v137[0] = *&v161[144];
      *(v137 + 14) = *&v161[158];
      v132 = *&v161[64];
      v133 = *&v161[80];
      v134 = *&v161[96];
      v135 = *&v161[112];
      *v131 = *v161;
      *&v131[16] = *&v161[16];
      *&v131[32] = *&v161[32];
      *&v131[48] = *&v161[48];
      sub_DC40(&qword_117450, &unk_DEF20);
      sub_DC40(&qword_117160, &unk_DE8F0);
      sub_439EC();
      sub_39804();
      sub_D70B8();
    }

    else
    {

      v122 = sub_D6FA8();
      v168 = 0;
      v49 = sub_D75C8();
      sub_D7A18();
      sub_D6C28();
      *&v153[6] = *v150;
      *&v153[22] = *&v150[16];
      *&v153[38] = *&v150[32];
      *v162 = sub_A9308(0xD000000000000016, 0x80000000000E5310);
      *&v162[8] = v50;
      v51 = sub_D73B8();
      v53 = v52;
      v54 = a2;
      v56 = v55;
      sub_D72E8();
      v57 = sub_D7398();
      v59 = v58;
      v61 = v60;
      v121 = v62;

      v63 = v56 & 1;
      a2 = v54;
      sub_1F8F0(v51, v53, v63);

      *v161 = v49;
      *&v161[8] = 256;
      *&v161[10] = *v153;
      *&v161[26] = *&v153[16];
      *&v161[42] = *&v153[32];
      *&v161[56] = *&v150[40];
      *&v131[32] = *&v161[32];
      *&v131[48] = *&v161[48];
      *v131 = *v161;
      *&v131[16] = *&v161[16];
      sub_16054(v161, v162, &qword_1171A0, qword_DE910);
      sub_1F900(v57, v59, v61 & 1);

      sub_1F8F0(v57, v59, v61 & 1);

      *v162 = v49;
      *&v162[8] = 256;
      *&v162[10] = *v153;
      *&v162[26] = *&v153[16];
      *&v162[42] = *&v153[32];
      *&v162[56] = *&v150[40];
      sub_160BC(v162, &qword_1171A0, qword_DE910);
      v138 = *v131;
      v139 = *&v131[16];
      v140 = *&v131[32];
      v141 = *&v131[48];
      *&v142 = v57;
      *(&v142 + 1) = v59;
      LOBYTE(v143) = v61 & 1;
      DWORD1(v143) = *&v161[3];
      *(&v143 + 1) = *v161;
      *(&v143 + 1) = v121;
      *&v153[32] = *&v131[32];
      *&v153[48] = *&v131[48];
      *v153 = *v131;
      *&v153[16] = *&v131[16];
      *&v154 = v57;
      *(&v154 + 1) = v59;
      LOBYTE(v155) = v61 & 1;
      DWORD1(v155) = *&v161[3];
      *(&v155 + 1) = *v161;
      *(&v155 + 1) = v121;
      sub_16054(&v138, v162, &qword_117150, &qword_DE8E0);
      sub_160BC(v153, &qword_117150, &qword_DE8E0);
      *&v150[39] = v140;
      *&v150[55] = v141;
      *&v150[71] = v142;
      *&v150[87] = v143;
      *&v150[7] = v138;
      *&v150[23] = v139;
      v64 = v168;
      v65 = sub_D7198();
      *&v161[65] = *&v150[48];
      *&v161[81] = *&v150[64];
      *&v161[97] = *&v150[80];
      *&v161[17] = *v150;
      *&v161[33] = *&v150[16];
      *v161 = v122;
      *&v161[8] = 0x4014000000000000;
      v161[16] = v64;
      *&v161[112] = *&v150[95];
      *&v161[49] = *&v150[32];
      *&v161[120] = v65;
      sub_439E0(v161);
      v136 = *&v161[128];
      v137[0] = *&v161[144];
      *(v137 + 14) = *&v161[158];
      v132 = *&v161[64];
      v133 = *&v161[80];
      v134 = *&v161[96];
      v135 = *&v161[112];
      *v131 = *v161;
      *&v131[16] = *&v161[16];
      *&v131[32] = *&v161[32];
      *&v131[48] = *&v161[48];
      sub_DC40(&qword_117450, &unk_DEF20);
      sub_DC40(&qword_117160, &unk_DE8F0);
      sub_439EC();
      sub_39804();
      sub_D70B8();
    }

    *&v161[128] = *&v162[128];
    *&v161[144] = *&v162[144];
    *&v161[158] = *&v162[158];
    *&v161[64] = *&v162[64];
    *&v161[80] = *&v162[80];
    *&v161[112] = *&v162[112];
    *&v161[96] = *&v162[96];
    *v161 = *v162;
    *&v161[16] = *&v162[16];
    *&v161[48] = *&v162[48];
    *&v161[32] = *&v162[32];
    v136 = *&v162[128];
    v137[0] = *&v162[144];
    *(v137 + 14) = *&v162[158];
    v132 = *&v162[64];
    v133 = *&v162[80];
    v134 = *&v162[96];
    v135 = *&v162[112];
    *v131 = *v162;
    *&v131[16] = *&v162[16];
    *&v131[32] = *&v162[32];
    *&v131[48] = *&v162[48];
    v146 = *&v162[128];
    v147[0] = *&v162[144];
    *(v147 + 14) = *&v162[158];
    v142 = *&v162[64];
    v143 = *&v162[80];
    v144 = *&v162[96];
    v145 = *&v162[112];
    v138 = *v162;
    v139 = *&v162[16];
    v168 = v123 & 1;
    v140 = *&v162[32];
    v141 = *&v162[48];
    sub_1F900(v125, v124, v123 & 1);

    sub_16054(v131, v153, &qword_117480, &unk_DEF40);
    sub_160BC(v161, &qword_117480, &unk_DEF40);
    sub_1F8F0(v125, v124, v123 & 1);

    *&v150[32] = v138;
    *&v150[48] = v139;
    *&v150[96] = v142;
    *&v150[112] = v143;
    *&v150[64] = v140;
    *&v150[80] = v141;
    *(v152 + 14) = *(v147 + 14);
    v151 = v146;
    v152[0] = v147[0];
    *&v150[128] = v144;
    *&v150[144] = v145;
    *&v159[16] = v146;
    v160[0] = v147[0];
    *(v160 + 14) = *(v147 + 14);
    v156 = v142;
    v157 = v143;
    *v159 = v145;
    v158 = v144;
    *v150 = v125;
    *&v150[8] = v124;
    v150[16] = v123 & 1;
    *&v150[17] = *v161;
    *&v150[20] = *&v161[3];
    *&v150[24] = v126;
    *v153 = v125;
    *&v153[8] = v124;
    v153[16] = v123 & 1;
    *&v153[17] = *v161;
    *&v153[20] = *&v161[3];
    *&v153[24] = v126;
    *&v153[32] = v138;
    *&v153[48] = v139;
    v155 = v141;
    v154 = v140;
    sub_16054(v150, v162, &qword_117440, &qword_DEF08);
    sub_160BC(v153, &qword_117440, &qword_DEF08);
    *&v148[151] = *&v150[144];
    *&v148[167] = v151;
    *&v148[183] = v152[0];
    *&v148[197] = *(v152 + 14);
    *&v148[87] = *&v150[80];
    *&v148[103] = *&v150[96];
    *&v148[119] = *&v150[112];
    *&v148[135] = *&v150[128];
    *&v148[23] = *&v150[16];
    *&v148[39] = *&v150[32];
    *&v148[55] = *&v150[48];
    *&v148[71] = *&v150[64];
    *&v148[7] = *v150;
    *&v161[177] = *&v148[160];
    v91 = *&v148[160];
    v92 = *&v148[176];
    *&v161[193] = *&v148[176];
    v93 = *&v148[192];
    *&v161[209] = *&v148[192];
    *&v161[222] = *(&v152[1] + 6);
    *&v161[113] = *&v148[96];
    v94 = *&v148[96];
    v95 = *&v148[112];
    *&v161[129] = *&v148[112];
    *&v161[145] = *&v148[128];
    v96 = *&v148[128];
    v97 = *&v148[144];
    *&v161[161] = *&v148[144];
    v98 = *&v148[48];
    *&v161[49] = *&v148[32];
    v99 = *&v148[32];
    *&v161[65] = *&v148[48];
    v100 = *&v148[80];
    *&v161[81] = *&v148[64];
    v101 = *&v148[64];
    *&v161[97] = *&v148[80];
    v102 = *&v148[16];
    *&v161[17] = *v148;
    v103 = *v148;
    *&v161[33] = *&v148[16];
    v104 = *&v161[160];
    *(a2 + 200) = *&v161[176];
    v105 = *&v161[208];
    *(a2 + 216) = *&v161[192];
    *(a2 + 232) = v105;
    v106 = *&v161[96];
    *(a2 + 136) = *&v161[112];
    v107 = *&v161[144];
    *(a2 + 152) = *&v161[128];
    *(a2 + 168) = v107;
    *(a2 + 184) = v104;
    v108 = *&v161[32];
    *(a2 + 72) = *&v161[48];
    v109 = *&v161[80];
    *(a2 + 88) = *&v161[64];
    v110 = v149;
    *v161 = v129;
    *&v161[8] = 0x4010000000000000;
    v161[16] = v149;
    *(a2 + 104) = v109;
    *(a2 + 120) = v106;
    v111 = *&v161[16];
    *(a2 + 24) = *v161;
    *(a2 + 40) = v111;
    *(a2 + 56) = v108;
    v163 = v91;
    v164 = v92;
    *v165 = v93;
    *&v162[113] = v94;
    *&v162[129] = v95;
    *&v162[145] = v96;
    *&v162[161] = v97;
    *&v162[49] = v99;
    *&v162[65] = v98;
    *&v162[81] = v101;
    *&v162[97] = v100;
    *&v162[17] = v103;
    LOBYTE(v138) = 1;
    *a2 = v130;
    *(a2 + 8) = v128;
    *(a2 + 16) = v127;
    *(a2 + 246) = *&v161[222];
    *(a2 + 256) = 0;
    *(a2 + 264) = 1;
    *v162 = v129;
    *&v162[8] = 0x4010000000000000;
    v162[16] = v110;
    *&v165[13] = *&v148[205];
    *&v162[33] = v102;
    v112 = v130;
    v113 = v127;
    sub_16054(v161, v131, &qword_117448, &unk_DEF10);
    sub_160BC(v162, &qword_117448, &unk_DEF10);
  }

  else
  {
    type metadata accessor for GCSPreferencesStore(0);
    sub_43340(&qword_116448, type metadata accessor for GCSPreferencesStore, &unk_E23A8);
    sub_D6DD8();
    __break(1u);
  }
}

uint64_t sub_3F9E4(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  a1(0);
  sub_43340(a2, a3, a4);

  return sub_D6DF8();
}

uint64_t sub_3FA50@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  return result;
}

uint64_t sub_3FA70()
{
  if (*(v0 + 24))
  {
  }

  else
  {
    type metadata accessor for BluetoothManager(0);
    sub_43340(&qword_117058, type metadata accessor for BluetoothManager, &protocol conformance descriptor for BluetoothManager);
    result = sub_D6DD8();
    __break(1u);
  }

  return result;
}

uint64_t sub_3FB44()
{
  type metadata accessor for BluetoothManager(0);
  sub_43340(&qword_117058, type metadata accessor for BluetoothManager, &protocol conformance descriptor for BluetoothManager);

  return sub_D6DC8();
}

uint64_t sub_3FBCC()
{
  sub_DC40(&qword_116510, &qword_DD4D0);
  sub_D78B8();
  return v1;
}

void (*sub_3FC80(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  *(v4 + 48) = v5;
  *(v4 + 56) = v6;
  v7 = *(v1 + 56);
  *(v4 + 19) = v7;
  *v4 = v5;
  *(v4 + 8) = v6;
  *(v4 + 16) = v7;

  *(v4 + 64) = sub_DC40(&qword_116510, &qword_DD4D0);
  sub_D78B8();
  return sub_17138;
}

uint64_t sub_3FD34()
{
  sub_DC40(&qword_116510, &qword_DD4D0);
  sub_D78E8();
  return v1;
}

uint64_t sub_3FD90()
{
  sub_DC40(&qword_1172A8, &qword_E1A50);
  sub_D78B8();
  return v1;
}

void (*sub_3FE40(uint64_t *a1))(uint64_t *a1, char a2)
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

  v8 = v7;
  v4[11] = sub_DC40(&qword_1172A8, &qword_E1A50);
  sub_D78B8();
  return sub_23270;
}

uint64_t sub_3FEF8()
{
  sub_DC40(&qword_1172A8, &qword_E1A50);
  sub_D78E8();
  return v1;
}

__n128 sub_3FF54@<Q0>(__n128 *a1@<X8>)
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

uint64_t sub_40010(uint64_t a1)
{
  v2 = *(v1 + 200);
  v17[6] = *(v1 + 184);
  v17[7] = v2;
  v17[8] = *(v1 + 216);
  v18 = *(v1 + 232);
  v3 = *(v1 + 136);
  v17[2] = *(v1 + 120);
  v17[3] = v3;
  v4 = *(v1 + 168);
  v17[4] = *(v1 + 152);
  v17[5] = v4;
  v5 = *(v1 + 104);
  v17[0] = *(v1 + 88);
  v17[1] = v5;
  v13 = *(v1 + 184);
  v14 = *(v1 + 200);
  v15 = *(v1 + 216);
  v16 = *(v1 + 232);
  v9 = *(v1 + 120);
  v10 = *(v1 + 136);
  v11 = *(v1 + 152);
  v12 = *(v1 + 168);
  v7 = *(v1 + 88);
  v8 = *(v1 + 104);
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

void (*sub_40164(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = *(v1 + 200);
  *(v3 + 96) = *(v1 + 184);
  *(v3 + 112) = v5;
  *(v3 + 128) = *(v1 + 216);
  *(v3 + 144) = *(v1 + 232);
  v6 = *(v1 + 136);
  *(v3 + 32) = *(v1 + 120);
  *(v3 + 48) = v6;
  v7 = *(v1 + 168);
  *(v3 + 64) = *(v1 + 152);
  *(v3 + 80) = v7;
  v8 = *(v1 + 104);
  *v3 = *(v1 + 88);
  *(v3 + 16) = v8;
  *(v3 + 248) = *(v1 + 184);
  v9 = *(v1 + 216);
  *(v3 + 264) = *(v1 + 200);
  *(v3 + 280) = v9;
  *(v3 + 296) = *(v1 + 232);
  *(v3 + 184) = *(v1 + 120);
  *(v3 + 200) = *(v1 + 136);
  *(v3 + 216) = *(v1 + 152);
  *(v3 + 232) = *(v1 + 168);
  *(v3 + 152) = *(v1 + 88);
  *(v3 + 168) = *(v1 + 104);
  sub_16054(v3, v3 + 304, &qword_116848, &qword_E2CA0);
  *(v4 + 1288) = sub_DC40(&qword_116848, &qword_E2CA0);
  sub_D78B8();
  return sub_23A8C;
}

double sub_402A4@<D0>(uint64_t a1@<X8>)
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

uint64_t sub_40368(uint64_t a1)
{
  v3 = type metadata accessor for GCSProfileParams(0);
  __chkstk_darwin(v3);
  sub_42710(a1, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GCSProfileParams);
  sub_D77D8();
  return sub_28ACC(a1);
}

void *sub_40420()
{
  v1 = v0;
  v44 = *v0;
  v2 = [*v0 macAddresses];
  if (!v2)
  {
LABEL_31:
    v19 = [v44 uuidIdentifiers];
    if (v19)
    {
      v20 = v19;
      v21 = sub_D7D28();

      v22 = *(v21 + 16);
      if (v22)
      {
        v23 = 0;
        v24 = v21 + 40;
        v45 = v22 - 1;
        v47 = v21 + 40;
LABEL_34:
        v25 = v24 + 16 * v23;
        while (1)
        {
          if (v23 >= *(v21 + 16))
          {
            goto LABEL_61;
          }

          v26 = v1[3];
          if (!v26)
          {
            goto LABEL_64;
          }

          v27 = *(*v26 + 536);

          v29 = v27(v28);

          if (v29 >> 62)
          {
            break;
          }

          v30 = *(&dword_10 + (v29 & 0xFFFFFFFFFFFFFF8));
          if (v30)
          {
            goto LABEL_42;
          }

LABEL_39:
          ++v23;

          v25 += 16;
          if (v22 == v23)
          {
            goto LABEL_58;
          }
        }

        v30 = sub_D8078();
        if (!v30)
        {
          goto LABEL_39;
        }

LABEL_42:
        if (v30 < 1)
        {
          goto LABEL_63;
        }

        v41 = v22;
        v43 = v21;
        v31 = 0;
        while (1)
        {
          v32 = v1;
          if ((v29 & 0xC000000000000001) != 0)
          {
            v33 = sub_D7FF8();
          }

          else
          {
            v33 = *(v29 + 8 * v31 + 32);
          }

          v34 = (*(*v33 + 264))();
          v35 = [v34 identifier];

          if (v35)
          {
            sub_D7C18();

            if ((*(*v33 + 664))())
            {
              sub_16000();
              v36 = sub_D7F18();

              if (!v36)
              {

                sub_D7D08();
                if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
                {
                  sub_D7D48();
                }

                sub_D7D68();

                goto LABEL_46;
              }
            }

            else
            {
            }
          }

LABEL_46:
          ++v31;
          v1 = v32;
          if (v30 == v31)
          {

            v21 = v43;
            v18 = v45 == v23++;
            v22 = v41;
            v24 = v47;
            if (v18)
            {
              break;
            }

            goto LABEL_34;
          }
        }
      }

LABEL_58:
    }

    return _swiftEmptyArrayStorage;
  }

  v3 = v2;
  v4 = sub_D7D28();

  v5 = *(v4 + 16);
  if (!v5)
  {
LABEL_30:

    goto LABEL_31;
  }

  v6 = 0;
  v7 = v4 + 40;
  v46 = *(v4 + 16);
  v40 = v5 - 1;
  v48 = v4;
  v42 = v4 + 40;
LABEL_4:
  v8 = v7 + 16 * v6;
  while (v6 < *(v4 + 16))
  {
    v9 = v1[3];
    if (!v9)
    {
      goto LABEL_64;
    }

    v10 = *(*v9 + 536);

    v12 = v10(v11);

    if (v12 >> 62)
    {
      v13 = sub_D8078();
      if (v13)
      {
LABEL_12:
        if (v13 < 1)
        {
          goto LABEL_62;
        }

        v39 = v1;
        v14 = 0;
        v38 = v6 + 1;
        while (2)
        {
          if ((v12 & 0xC000000000000001) != 0)
          {
            v15 = sub_D7FF8();
          }

          else
          {
            v15 = *(v12 + 8 * v14 + 32);
          }

          (*(*v15 + 408))();
          if (!v16)
          {
            goto LABEL_15;
          }

          if (((*(*v15 + 664))() & 1) == 0)
          {

LABEL_15:

            v4 = v48;
            goto LABEL_16;
          }

          sub_16000();
          v17 = sub_D7F18();

          if (v17)
          {
            goto LABEL_15;
          }

          sub_D7D08();
          v4 = v48;
          if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            sub_D7D48();
          }

          sub_D7D68();

LABEL_16:
          if (v13 != ++v14)
          {
            continue;
          }

          break;
        }

        v1 = v39;
        v18 = v40 == v6;
        v7 = v42;
        ++v6;
        if (v18)
        {
          goto LABEL_30;
        }

        goto LABEL_4;
      }
    }

    else
    {
      v13 = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8));
      if (v13)
      {
        goto LABEL_12;
      }
    }

    ++v6;

    v8 += 16;
    if (v46 == v6)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  type metadata accessor for BluetoothManager(0);
  sub_43340(&qword_117058, type metadata accessor for BluetoothManager, &protocol conformance descriptor for BluetoothManager);

  result = sub_D6DD8();
  __break(1u);
  return result;
}

uint64_t sub_40B24(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  if (v2)
  {
    while (1)
    {
      v3 = 0;
      v4 = 0;
      if ((a1 & 0xC000000000000001) != 0)
      {
        break;
      }

      while (1)
      {
        if (v3 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_16;
        }

        v5 = *(a1 + 8 * v3 + 32);

        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

LABEL_9:
        if (v4)
        {

          v4 = 1;
          if (v6 == v2)
          {
            return v4 & 1;
          }
        }

        else
        {
          v7 = (*(*v5 + 520))();

          v4 = v7 ^ 1;
          if (v6 == v2)
          {
            return v4 & 1;
          }
        }

        ++v3;
        if ((a1 & 0xC000000000000001) != 0)
        {
          goto LABEL_4;
        }
      }

LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      v2 = sub_D8078();
      if (!v2)
      {
        goto LABEL_18;
      }
    }

LABEL_4:
    v5 = sub_D7FF8();
    v6 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_15;
    }

    goto LABEL_9;
  }

LABEL_18:
  v4 = 0;
  return v4 & 1;
}

uint64_t sub_40C58@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for GCSControllerView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v11 = v1;
  sub_DC40(&qword_1172B8, &unk_DECF0);
  sub_15FB8(&qword_1172C0, &qword_1172B8, &unk_DECF0, &protocol conformance descriptor for TupleView<A>);
  sub_D79B8();
  sub_42710(v1, &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for GCSControllerView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_43978(&v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v7 + v6, type metadata accessor for GCSControllerView);
  result = sub_DC40(&qword_1172D0, &qword_DED00);
  v9 = (a1 + *(result + 36));
  *v9 = sub_4277C;
  v9[1] = v7;
  v9[2] = 0;
  v9[3] = 0;
  return result;
}

uint64_t sub_40E30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v123 = a2;
  v118 = sub_DC40(&qword_1173B8, &qword_DEE68);
  v117 = *(v118 - 8);
  __chkstk_darwin(v118);
  v113 = (&v98 - v3);
  v4 = type metadata accessor for GCSControllerView(0);
  v103 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v105 = v5;
  v106 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_DC40(&qword_116810, &unk_DD4E0);
  __chkstk_darwin(v6 - 8);
  v104 = &v98 - v7;
  v109 = sub_DC40(&qword_116818, &qword_DF1F0);
  v108 = *(v109 - 8);
  __chkstk_darwin(v109);
  v102 = &v98 - v8;
  v111 = sub_DC40(&qword_1173C0, &qword_DEE70);
  v110 = *(v111 - 8);
  __chkstk_darwin(v111);
  v107 = &v98 - v9;
  v10 = sub_DC40(&qword_1173C8, &qword_DEE78);
  __chkstk_darwin(v10 - 8);
  v112 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v115 = &v98 - v13;
  v14 = sub_DC40(&qword_1173D0, &qword_DEE80);
  v120 = *(v14 - 8);
  v121 = v14;
  __chkstk_darwin(v14);
  v116 = &v98 - v15;
  v16 = sub_DC40(&qword_1173D8, &qword_DEE88);
  __chkstk_darwin(v16 - 8);
  v122 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v127 = &v98 - v19;
  v20 = sub_DC40(&qword_1173E0, &qword_DEE90);
  __chkstk_darwin(v20);
  v125 = sub_DC40(&qword_1173E8, &qword_DEE98);
  v21 = *(v125 - 8);
  __chkstk_darwin(v125);
  v23 = &v98 - v22;
  v124 = sub_DC40(&qword_1173F0, &qword_DEEA0);
  __chkstk_darwin(v124);
  v119 = &v98 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v98 - v26;
  __chkstk_darwin(v28);
  v126 = &v98 - v29;
  v128 = a1;
  sub_41E24(a1);
  sub_43204();
  v30 = sub_EBC0(&qword_117400, &qword_DEEA8);
  v31 = sub_43258();
  v32 = sub_16000();
  v131 = v30;
  v132 = &type metadata for String;
  v133 = v31;
  v134 = v32;
  v33 = a1;
  swift_getOpaqueTypeConformance2();
  sub_D6C98();
  v34 = *(a1 + 8);
  if (v34)
  {
    v114 = v33;
    v35 = *v33;
    v36 = *(&stru_248.reloff + (swift_isaMask & *v34));
    v37 = v34;
    LOBYTE(v36) = v36(v35);

    KeyPath = swift_getKeyPath();
    v39 = swift_allocObject();
    *(v39 + 16) = v36 & 1;
    (*(v21 + 32))(v27, v23, v125);
    v40 = &v27[*(v124 + 36)];
    *v40 = KeyPath;
    v40[1] = sub_285D8;
    v40[2] = v39;
    v41 = v126;
    sub_43398(v27, v126);
    v42 = *(&stru_248.size + (swift_isaMask & *v37));
    v43 = v37;
    LOBYTE(v42) = v42(v35);

    if ((v42 & 1) == 0)
    {
      v47 = v127;
      (*(v120 + 56))(v127, 1, 1, v121);
      v50 = v122;
      v49 = v123;
LABEL_34:
      v95 = v119;
      sub_43408(v41, v119);
      sub_16054(v47, v50, &qword_1173D8, &qword_DEE88);
      sub_43408(v95, v49);
      v96 = sub_DC40(&qword_117428, &qword_DEEE8);
      sub_16054(v50, v49 + *(v96 + 48), &qword_1173D8, &qword_DEE88);
      sub_160BC(v47, &qword_1173D8, &qword_DEE88);
      sub_43478(v41);
      sub_160BC(v50, &qword_1173D8, &qword_DEE88);
      return sub_43478(v95);
    }

    v44 = *(&stru_248.reloff + (swift_isaMask & *v43));
    v45 = v43;
    v46 = v44(v35);

    v47 = v127;
    if (v46)
    {
      v48 = v116;
      (*(v117 + 56))(v116, 1, 1, v118);
      v50 = v122;
      v49 = v123;
LABEL_33:
      sub_21A44(v48, v47, &qword_1173D0, &qword_DEE80);
      (*(v120 + 56))(v47, 0, 1, v121);
      goto LABEL_34;
    }

    v51 = *&stru_298.segname[(swift_isaMask & *v45) - 8];
    v52 = v45;
    v53 = v51(v35);

    if (v53)
    {
      v54 = sub_AD850();
      v55 = v115;
      if (v54)
      {
        v56 = *(&stru_248.offset + (swift_isaMask & *v52));
        v57 = v52;
        v58 = v56(v35);

        if ((v58 & 1) == 0)
        {
          v80 = v114[31];
          v129 = *(v114 + 240);
          v130 = v80;
          v81 = v35;
          sub_DC40(&qword_1166E0, &qword_DD340);
          sub_D7808();
          v82 = v131;
          v83 = v132;
          v84 = v133;
          v85 = sub_284F8();
          sub_28570(v85, v86, v81, v53, v82, v83, v84, &v131);
          v59 = v131;
          v125 = v132;
          v60 = v133;
          v101 = v134;
          v124 = v135;
          v100 = v136;
          v99 = v137;
          v61 = sub_40420();
          if (v61)
          {
            goto LABEL_12;
          }

          goto LABEL_31;
        }
      }

      v59 = 0;
      v125 = 0;
      v60 = 0;
      v101 = 0;
      v124 = 0;
      v100 = 0;
      v99 = 0;
    }

    else
    {
      v59 = 0;
      v125 = 0;
      v101 = 0;
      v124 = 0;
      v100 = 0;
      v99 = 0;
      v60 = 1;
      v55 = v115;
    }

    v61 = sub_40420();
    if (v61)
    {
LABEL_12:
      v62 = v61;
      v63 = v61 & 0xFFFFFFFFFFFFFF8;
      v98 = v59;
      if (v61 >> 62)
      {
        goto LABEL_37;
      }

      for (i = *(&dword_10 + (v61 & 0xFFFFFFFFFFFFFF8)); i; i = sub_D8078())
      {
        v65 = 0;
        v66 = 0;
        while ((v62 & 0xC000000000000001) != 0)
        {
          v67 = sub_D7FF8();
          v68 = v65 + 1;
          if (__OFADD__(v65, 1))
          {
            goto LABEL_35;
          }

LABEL_21:
          if (v66)
          {

            if (v68 == i)
            {
              goto LABEL_28;
            }

            v66 = 1;
            ++v65;
          }

          else
          {
            v69 = (*(*v67 + 520))();

            if (v68 == i)
            {
              if (v69)
              {
                goto LABEL_27;
              }

LABEL_28:
              v74 = v104;
              sub_D6B38();
              v75 = sub_D6B58();
              (*(*(v75 - 8) + 56))(v74, 0, 1, v75);
              v76 = v106;
              sub_42710(v114, v106, type metadata accessor for GCSControllerView);
              v77 = (*(v103 + 80) + 24) & ~*(v103 + 80);
              v78 = swift_allocObject();
              *(v78 + 16) = v62;
              sub_43978(v76, v78 + v77, type metadata accessor for GCSControllerView);
              v79 = v102;
              sub_D7838();
              v72 = v108;
              v73 = v107;
              v71 = v109;
              (*(v108 + 32))(v107, v79, v109);
              v70 = 0;
              goto LABEL_29;
            }

            v66 = v69 ^ 1;
            ++v65;
          }
        }

        if (v65 >= *(v63 + 16))
        {
          goto LABEL_36;
        }

        v67 = *(v62 + 8 * v65 + 32);

        v68 = v65 + 1;
        if (!__OFADD__(v65, 1))
        {
          goto LABEL_21;
        }

LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        ;
      }

LABEL_27:

      v70 = 1;
      v71 = v109;
      v72 = v108;
      v73 = v107;
LABEL_29:
      (*(v72 + 56))(v73, v70, 1, v71);
      sub_21A44(v73, v55, &qword_1173C0, &qword_DEE70);
      (*(v110 + 56))(v55, 0, 1, v111);
      v49 = v123;
      v59 = v98;
LABEL_32:
      v87 = v112;
      sub_16054(v55, v112, &qword_1173C8, &qword_DEE78);
      v88 = v113;
      v89 = v124;
      v90 = v125;
      *v113 = v59;
      *(v88 + 8) = v90;
      v91 = v60;
      *(v88 + 16) = v60;
      v92 = v101;
      *(v88 + 24) = v101;
      *(v88 + 32) = v89;
      v93 = v100;
      *(v88 + 40) = v100;
      *(v88 + 48) = v99;
      v94 = sub_DC40(&qword_117430, &unk_DEEF0);
      sub_16054(v87, v88 + *(v94 + 48), &qword_1173C8, &qword_DEE78);
      sub_434E0(v59, v90, v91, v92, v89, v93);
      sub_160BC(v115, &qword_1173C8, &qword_DEE78);
      sub_160BC(v87, &qword_1173C8, &qword_DEE78);
      sub_43560(v59, v90, v91, v92, v89, v93);
      v48 = v116;
      sub_21A44(v88, v116, &qword_1173B8, &qword_DEE68);
      (*(v117 + 56))(v48, 0, 1, v118);
      v50 = v122;
      v41 = v126;
      v47 = v127;
      goto LABEL_33;
    }

LABEL_31:
    (*(v110 + 56))(v55, 1, 1, v111);
    v49 = v123;
    goto LABEL_32;
  }

  type metadata accessor for GCSPreferencesStore(0);
  sub_43340(&qword_116448, type metadata accessor for GCSPreferencesStore, &unk_E23A8);
  result = sub_D6DD8();
  __break(1u);
  return result;
}

uint64_t sub_41E24(uint64_t a1)
{
  v2 = sub_DC40(&qword_117438, &qword_DEF00);
  __chkstk_darwin(v2 - 8);
  v4 = v32 - v3;
  v5 = type metadata accessor for GCSControllerCustomizeControlsView(0);
  __chkstk_darwin(v5 - 8);
  v7 = (v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_DC40(&qword_117400, &qword_DEEA8);
  __chkstk_darwin(v8);
  v10 = v32 - v9;
  v11 = *a1;
  v12 = *(a1 + 200);
  v32[6] = *(a1 + 184);
  v32[7] = v12;
  v32[8] = *(a1 + 216);
  v33 = *(a1 + 232);
  v13 = *(a1 + 136);
  v32[2] = *(a1 + 120);
  v32[3] = v13;
  v14 = *(a1 + 168);
  v32[4] = *(a1 + 152);
  v32[5] = v14;
  v15 = *(a1 + 104);
  v32[0] = *(a1 + 88);
  v32[1] = v15;
  v16 = v11;
  sub_DC40(&qword_116848, &qword_E2CA0);
  v17 = sub_D78E8();
  v18 = sub_683F0(v17);
  v20 = v19;
  sub_68468();
  v21 = sub_684CC();
  sub_684F0(v18, v20, v4, v21, v22 & 1, v16, &v34, v7);
  v23 = *(a1 + 8);
  type metadata accessor for GCSPreferencesStore(0);
  sub_43340(&qword_116448, type metadata accessor for GCSPreferencesStore, &unk_E23A8);
  if (v23)
  {
    v24 = v23;
    v25 = sub_D6A58();
    sub_43978(v7, v10, type metadata accessor for GCSControllerCustomizeControlsView);
    v26 = &v10[*(v8 + 36)];
    *v26 = v25;
    v26[1] = v23;
    v27 = [v16 localizedName];
    v28 = sub_D7C18();
    v30 = v29;

    *&v32[0] = v28;
    *(&v32[0] + 1) = v30;
    sub_43258();
    sub_16000();
    sub_D7498();

    return sub_160BC(v10, &qword_117400, &qword_DEEA8);
  }

  else
  {
    result = sub_D6DD8();
    __break(1u);
  }

  return result;
}

uint64_t sub_42168@<X0>(uint64_t a1@<X8>)
{
  sub_A9308(0xD00000000000001FLL, 0x80000000000E56C0);
  sub_16000();
  result = sub_D73B8();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_421D8(id *a1)
{
  v2 = type metadata accessor for GCSProfileParams(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v5);
  v8 = &v11 - v7;
  v9 = [*a1 baseProfile];
  sub_D20B4(v8);

  type metadata accessor for GCSControllerView(0);
  sub_42710(v8, v4, type metadata accessor for GCSProfileParams);
  sub_DC40(&qword_1172C8, &unk_E0480);
  sub_D77F8();
  return sub_28ACC(v8);
}

uint64_t sub_42330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12)
{
  v34 = a8;
  v32 = a6;
  v33 = a7;
  v31 = a5;
  v30 = a10;
  v17 = type metadata accessor for GCSProfileParams(0);
  __chkstk_darwin(v17);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v30 - v21;
  *(a9 + 64) = v30;
  v23 = *(a12 + 112);
  *(a9 + 184) = *(a12 + 96);
  *(a9 + 200) = v23;
  *(a9 + 216) = *(a12 + 128);
  v24 = *(a12 + 48);
  *(a9 + 120) = *(a12 + 32);
  *(a9 + 136) = v24;
  v25 = *(a12 + 80);
  *(a9 + 152) = *(a12 + 64);
  *(a9 + 168) = v25;
  v26 = *(a12 + 16);
  *(a9 + 88) = *a12;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  v27 = v32;
  *(a9 + 32) = v31;
  *(a9 + 40) = v27;
  *(a9 + 48) = v33;
  *(a9 + 56) = v34;
  *(a9 + 80) = a11;
  *(a9 + 232) = *(a12 + 144);
  *(a9 + 104) = v26;
  v35 = 0;
  sub_D77D8();
  v28 = v37;
  *(a9 + 240) = v36;
  *(a9 + 248) = v28;
  type metadata accessor for GCSControllerView(0);
  sub_D1AF8(v22);
  sub_42710(v22, v19, type metadata accessor for GCSProfileParams);
  sub_D77D8();
  return sub_28ACC(v22);
}

uint64_t sub_424EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(a1 - 8);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = v3;
  sub_DC40(&qword_1172B8, &unk_DECF0);
  sub_15FB8(&qword_1172C0, &qword_1172B8, &unk_DECF0, &protocol conformance descriptor for TupleView<A>);
  sub_D79B8();
  sub_42710(v3, v7, type metadata accessor for GCSControllerView);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_43978(v7, v9 + v8, type metadata accessor for GCSControllerView);
  result = sub_DC40(&qword_1172D0, &qword_DED00);
  v11 = (a2 + *(result + 36));
  *v11 = sub_43B84;
  v11[1] = v9;
  v11[2] = 0;
  v11[3] = 0;
  return result;
}

uint64_t type metadata accessor for GCSControllerView(uint64_t a1)
{
  result = qword_11B850;
  if (!qword_11B850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_42710(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_427B8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_42800(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_42874(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_DC40(&qword_1172C8, &unk_E0480);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

void *sub_42944(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_DC40(&qword_1172C8, &unk_E0480);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_429F4(uint64_t a1)
{
  sub_35F0C();
  if (v1 <= 0x3F)
  {
    sub_26BDC(319, v1, v2, v3);
    if (v4 <= 0x3F)
    {
      sub_42BD4(319);
      if (v5 <= 0x3F)
      {
        sub_26D2C(319, &qword_116918, &type metadata for Bool, &type metadata accessor for Binding);
        if (v6 <= 0x3F)
        {
          sub_42C68(319, &qword_117338, sub_35F0C, &type metadata accessor for Binding);
          if (v7 <= 0x3F)
          {
            sub_26D2C(319, &qword_116930, &type metadata for GCSProfileViewData, &type metadata accessor for Binding);
            if (v8 <= 0x3F)
            {
              sub_26D2C(319, &qword_117340, &type metadata for Bool, &type metadata accessor for State);
              if (v9 <= 0x3F)
              {
                sub_42C68(319, &qword_117348, type metadata accessor for GCSProfileParams, &type metadata accessor for State);
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
}

void sub_42BD4(uint64_t a1)
{
  if (!qword_117330)
  {
    type metadata accessor for BluetoothManager(255);
    sub_43340(&qword_117058, type metadata accessor for BluetoothManager, &protocol conformance descriptor for BluetoothManager);
    v1 = sub_D6E08();
    if (!v2)
    {
      atomic_store(v1, &qword_117330);
    }
  }
}

void sub_42C68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_42D14()
{
  result = qword_1173A0;
  if (!qword_1173A0)
  {
    sub_EBC0(&qword_1172D0, &qword_DED00);
    sub_42DA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1173A0);
  }

  return result;
}

unint64_t sub_42DA0()
{
  result = qword_1173A8;
  if (!qword_1173A8)
  {
    sub_EBC0(&qword_1173B0, &qword_DEE60);
    sub_15FB8(&qword_1172C0, &qword_1172B8, &unk_DECF0, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1173A8);
  }

  return result;
}

uint64_t sub_42E5C()
{
  v1 = (type metadata accessor for GCSControllerView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[13];
  v6 = sub_D6998();
  (*(*(v6 - 8) + 8))(v5, v6);
  type metadata accessor for GCSProfileParams(0);

  sub_DC40(&qword_1172C8, &unk_E0480);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_43068()
{
  v1 = *(type metadata accessor for GCSControllerView(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_421D8(v2);
}

__n128 sub_430C8@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *v3;
  sub_DC40(&qword_116510, &qword_DD4D0);
  sub_D78E8();
  v10 = *(v3 + 64);
  sub_DC40(&qword_1172A8, &qword_E1A50);
  sub_D78E8();
  type metadata accessor for GCSPreferencesStore(0);
  sub_43340(&qword_116448, type metadata accessor for GCSPreferencesStore, &unk_E23A8);
  v5 = sub_D6DF8();
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9.n128_u64[0];
  *(a1 + 40) = v9.n128_u8[8];
  *(a1 + 41) = v10;
  *(a1 + 44) = *(&v10 + 3);
  *(a1 + 48) = v8;
  result = v9;
  *(a1 + 56) = v9;
  return result;
}

unint64_t sub_43204()
{
  result = qword_1173F8;
  if (!qword_1173F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1173F8);
  }

  return result;
}

unint64_t sub_43258()
{
  result = qword_117408;
  if (!qword_117408)
  {
    sub_EBC0(&qword_117400, &qword_DEEA8);
    sub_43340(&qword_117410, type metadata accessor for GCSControllerCustomizeControlsView, &unk_E0518);
    sub_15FB8(&qword_117418, &qword_117420, &qword_DEEB0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_117408);
  }

  return result;
}

uint64_t sub_43340(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_43398(uint64_t a1, uint64_t a2)
{
  v4 = sub_DC40(&qword_1173F0, &qword_DEEA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_43408(uint64_t a1, uint64_t a2)
{
  v4 = sub_DC40(&qword_1173F0, &qword_DEEA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_43478(uint64_t a1)
{
  v2 = sub_DC40(&qword_1173F0, &qword_DEEA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_434E0(id a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (a3 != &dword_0 + 1)
  {
    return sub_434F0(a1, a2, a3, a4, a5, a6);
  }

  return a1;
}

id sub_434F0(id result, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
    v7 = result;

    v8 = v7;
    v9 = a3;

    return a4;
  }

  return result;
}

void *sub_43560(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (a3 != &dword_0 + 1)
  {
    return sub_43570(a1, a2, a3, a4, a5, a6);
  }

  return a1;
}

void *sub_43570(void *result, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
    v7 = result;
  }

  return result;
}

uint64_t sub_435D4()
{
  v1 = (type metadata accessor for GCSControllerView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[13];
  v6 = sub_D6998();
  (*(*(v6 - 8) + 8))(v5, v6);
  type metadata accessor for GCSProfileParams(0);

  sub_DC40(&qword_1172C8, &unk_E0480);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_437E8()
{
  v1 = type metadata accessor for GCSControllerView(0);
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = *(v3 + 80);
  v5 = *(v0 + 16);
  if (v5 >> 62)
  {
LABEL_14:
    result = sub_D8078();
    v6 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v6 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return result;
    }
  }

  v7 = v0 + ((v4 + 24) & ~v4);
  for (i = 4; ; ++i)
  {
    v0 = i - 4;
    if ((v5 & 0xC000000000000001) != 0)
    {
      v4 = sub_D7FF8();
      v9 = i - 3;
      if (__OFADD__(v0, 1))
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (v0 >= *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_13;
      }

      v4 = *(v5 + 8 * i);

      v9 = i - 3;
      if (__OFADD__(v0, 1))
      {
LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }
    }

    if (!*(v7 + 24))
    {
      break;
    }

    sub_B8D00(v4);

    if (v9 == v6)
    {
      return result;
    }
  }

  type metadata accessor for BluetoothManager(0);
  sub_43340(&qword_117058, type metadata accessor for BluetoothManager, &protocol conformance descriptor for BluetoothManager);
  result = sub_D6DD8();
  __break(1u);
  return result;
}

uint64_t sub_43978(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_439EC()
{
  result = qword_117458;
  if (!qword_117458)
  {
    sub_EBC0(&qword_117450, &unk_DEF20);
    sub_43A70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_117458);
  }

  return result;
}

unint64_t sub_43A70()
{
  result = qword_117460;
  if (!qword_117460)
  {
    sub_EBC0(&qword_117468, &unk_DEF30);
    sub_15FB8(&qword_117470, &qword_117478, &unk_E0C50, &protocol conformance descriptor for HStack<A>);
    sub_15FB8(&qword_117188, &qword_117190, &qword_DE900, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_117460);
  }

  return result;
}

uint64_t sub_43DA8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D6AC8();

  return v1;
}

uint64_t sub_43E1C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 88))();
  *a2 = result;
  return result;
}

uint64_t sub_43E68(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 96);

  return v2(v3);
}

uint64_t sub_43EBC(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_D6AD8();
}

void (*sub_43F2C(uint64_t *a1))(void *a1)
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
  return sub_E24C;
}

uint64_t sub_44020(uint64_t a1)
{
  v2 = sub_DC40(&qword_117538, &qword_DF038);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  sub_DC40(&qword_117530, &qword_DF030);
  sub_D6AA8();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_44138(void *a1))(uint64_t a1, char a2)
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
  v5 = sub_DC40(&qword_117538, &qword_DF038);
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

  v9 = OBJC_IVAR____TtC25GameControlleriOSSettings11GCSAppStore__supportedApps;
  v4[5] = v8;
  v4[6] = v9;
  v4[7] = sub_DC40(&qword_117530, &qword_DF030);
  sub_D6A98();
  return sub_E580;
}

uint64_t sub_4428C(uint64_t a1)
{
  v1 = a1;
  v2 = swift_allocObject();
  sub_442CC(v1);
  return v2;
}

void sub_442CC(int a1)
{
  v3 = sub_D6868();
  v30 = *(v3 - 8);
  v31 = v3;
  __chkstk_darwin(v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_DC40(&qword_117530, &qword_DF030);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - v8;
  v10 = OBJC_IVAR____TtC25GameControlleriOSSettings11GCSAppStore__supportedApps;
  *&aBlock = _swiftEmptyArrayStorage;
  sub_DC40(&qword_117528, &qword_DEFE0);
  sub_D6A88();
  v11 = *(v7 + 32);
  v32 = v1;
  v11(v1 + v10, v9, v6);
  v12 = [objc_opt_self() enumeratorWithOptions:0];
  if (a1)
  {
    v41 = sub_448E4;
    v42 = 0;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v39 = sub_44904;
    v40 = &unk_107B30;
    v13 = _Block_copy(&aBlock);
    [v12 setFilter:v13];
    _Block_release(v13);
  }

  v45 = _swiftEmptyArrayStorage;
  v36 = SBSCopyDisplayIdentifiers();
  if (!v36)
  {
    goto LABEL_33;
  }

  v29 = v12;
  sub_D7DE8();
  sub_D6858();
  if (!v40)
  {
    v33 = _swiftEmptyArrayStorage;
LABEL_30:
    (*(v30 + 8))(v5, v31);
    swift_getKeyPath();
    swift_getKeyPath();
    *&aBlock = v33;

    sub_D6AD8();

    return;
  }

  v33 = _swiftEmptyArrayStorage;
  v14 = &selRef_supportsBuddyController;
  v35 = a1;
  v34 = v5;
  while (1)
  {
    sub_3B548(&aBlock, v44);
    sub_450A0(0, &qword_117540, LSApplicationRecord_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_9;
    }

    v15 = v43;
    v17 = [v43 v14[80]];
    if (v17)
    {
      break;
    }

LABEL_8:

LABEL_9:
    sub_D6858();
    if (!v40)
    {
      goto LABEL_30;
    }
  }

  v18 = v17;
  if ((a1 & 1) == 0)
  {
LABEL_7:
    v16 = [v36 containsObject:v18];

    if (v16)
    {
      v28 = v15;
      sub_D7D08();
      if (*(&dword_10 + (v45 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v45 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_D7D48();
      }

      sub_D7D68();

      v33 = v45;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v19 = [v15 supportedGameControllers];
  sub_450A0(0, &qword_117548, LSPropertyList_ptr);
  v20 = sub_D7D28();

  v37 = v15;
  if (!(v20 >> 62))
  {
    v21 = *(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8));
    if (v21)
    {
      goto LABEL_15;
    }

    goto LABEL_28;
  }

  v21 = sub_D8078();
  if (!v21)
  {
LABEL_28:

    LOBYTE(a1) = v35;
    v5 = v34;
    v14 = &selRef_supportsBuddyController;
    goto LABEL_9;
  }

LABEL_15:
  v22 = 0;
  while (1)
  {
    if ((v20 & 0xC000000000000001) != 0)
    {
      v23 = sub_D7FF8();
    }

    else
    {
      if (v22 >= *(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_32;
      }

      v23 = *(v20 + 8 * v22 + 32);
    }

    v24 = v23;
    v25 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    v26 = sub_D7BD8();
    sub_450A0(0, &qword_117550, NSString_ptr);
    v27 = [v24 objectForKey:v26 ofClass:swift_getObjCClassFromMetadata()];

    if (v27)
    {

      sub_D7F58();

      swift_unknownObjectRelease();
      sub_160BC(v44, &qword_119330, &unk_DF040);
      LOBYTE(a1) = v35;
      v5 = v34;
      v14 = &selRef_supportsBuddyController;
      v15 = v37;
      goto LABEL_7;
    }

    memset(v44, 0, sizeof(v44));
    sub_160BC(v44, &qword_119330, &unk_DF040);
    ++v22;
    if (v25 == v21)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
}

uint64_t sub_44904(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

void *sub_4495C(void *a1, void *a2)
{
  v54 = a1;
  v4 = sub_DC40(&qword_117558, &unk_E2640);
  v5 = __chkstk_darwin(v4 - 8);
  v55 = &v51 - v6;
  v7 = [a2 games];
  sub_450A0(0, &qword_1164A8, GCSGame_ptr);
  v8 = sub_D7D28();

  if (v8 >> 62)
  {
LABEL_41:
    v56 = v8 & 0xFFFFFFFFFFFFFF8;
    v9 = sub_D8078();
  }

  else
  {
    v56 = v8 & 0xFFFFFFFFFFFFFF8;
    v9 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
  }

  if (!v9)
  {
    v52 = _swiftEmptyArrayStorage;
    goto LABEL_24;
  }

  v10 = 0;
  v53 = v8 & 0xC000000000000001;
  v51 = v2;
  v52 = _swiftEmptyArrayStorage;
  do
  {
    v11 = v10;
    while (1)
    {
      if (v53)
      {
        v13 = sub_D7FF8();
      }

      else
      {
        if (v11 >= *(v56 + 16))
        {
          goto LABEL_38;
        }

        v13 = *(v8 + 8 * v11 + 32);
      }

      v14 = v13;
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v15 = v9;
      v16 = [v13 controllerToProfileMappings];
      v17 = sub_D6998();
      v2 = sub_D7B48();

      v18 = [v54 persistentIdentifier];
      v19 = sub_D7C18();
      v21 = v20;

      if (*(v2 + 16))
      {
        break;
      }

LABEL_7:

      v12 = v55;
      (*(*(v17 - 8) + 56))(v55, 1, 1, v17);
      sub_160BC(v12, &qword_117558, &unk_E2640);
      ++v11;
      v9 = v15;
      if (v10 == v15)
      {
        v2 = v51;
        goto LABEL_24;
      }
    }

    v22 = sub_1ED4C(v19, v21);
    v24 = v23;

    if ((v24 & 1) == 0)
    {
      goto LABEL_7;
    }

    v25 = *(v17 - 8);
    v26 = v25;
    v27 = *(v2 + 56) + *(v25 + 72) * v22;
    v28 = v55;
    (*(v25 + 16))(v55, v27, v17);

    (*(v26 + 56))(v28, 0, 1, v17);
    sub_160BC(v28, &qword_117558, &unk_E2640);
    v29 = [v14 bundleIdentifier];
    v30 = sub_D7C18();
    v32 = v31;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v52 = sub_38A50(0, *(v52 + 2) + 1, 1, v52);
    }

    v9 = v15;
    v34 = *(v52 + 2);
    v33 = *(v52 + 3);
    if (v34 >= v33 >> 1)
    {
      v52 = sub_38A50((v33 > 1), v34 + 1, 1, v52);
    }

    v35 = v52;
    *(v52 + 2) = v34 + 1;
    v36 = &v35[16 * v34];
    *(v36 + 4) = v30;
    *(v36 + 5) = v32;
    v2 = v51;
  }

  while (v10 != v15);
LABEL_24:

  v38 = (*(*v2 + 88))(v37);
  v39 = v38;
  v58 = _swiftEmptyArrayStorage;
  if (v38 >> 62)
  {
    v40 = sub_D8078();
    if (v40)
    {
LABEL_26:
      v8 = 0;
      v55 = (v39 & 0xFFFFFFFFFFFFFF8);
      v56 = v39 & 0xC000000000000001;
      while (1)
      {
        if (v56)
        {
          v41 = sub_D7FF8();
        }

        else
        {
          if (v8 >= *(v55 + 2))
          {
            goto LABEL_40;
          }

          v41 = *(v39 + 8 * v8 + 32);
        }

        v42 = v41;
        v43 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        v44 = [v41 bundleIdentifier];
        if (!v44 || (v45 = v44, v46 = sub_D7C18(), v48 = v47, v45, v57[0] = v46, v57[1] = v48, __chkstk_darwin(v49), *(&v51 - 2) = v57, v2 = sub_450E8(sub_45194, (&v51 - 4), v52), , (v2 & 1) != 0))
        {
        }

        else
        {
          v2 = &v58;
          sub_D8028();
          sub_D8058();
          sub_D8068();
          sub_D8038();
        }

        ++v8;
        if (v43 == v40)
        {
          goto LABEL_43;
        }
      }

LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }
  }

  else
  {
    v40 = *(&dword_10 + (v38 & 0xFFFFFFFFFFFFFF8));
    if (v40)
    {
      goto LABEL_26;
    }
  }

LABEL_43:

  return v58;
}

uint64_t sub_44F34()
{
  v1 = OBJC_IVAR____TtC25GameControlleriOSSettings11GCSAppStore__supportedApps;
  v2 = sub_DC40(&qword_117530, &qword_DF030);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_44FA0()
{
  v1 = OBJC_IVAR____TtC25GameControlleriOSSettings11GCSAppStore__supportedApps;
  v2 = sub_DC40(&qword_117530, &qword_DF030);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_45048@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for GCSAppStore(0);
  result = sub_D6A68();
  *a2 = result;
  return result;
}

uint64_t sub_45088(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_450A0(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_450E8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_45194(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_D8118() & 1;
  }
}

uint64_t type metadata accessor for GCSAppStore(uint64_t a1)
{
  result = qword_11B910;
  if (!qword_11B910)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_45240(uint64_t a1)
{
  sub_452D0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_452D0(uint64_t a1)
{
  if (!qword_117588)
  {
    sub_EBC0(&qword_117528, &qword_DEFE0);
    v1 = sub_D6AE8();
    if (!v2)
    {
      atomic_store(v1, &qword_117588);
    }
  }
}

uint64_t sub_453AC(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  v8 = type metadata accessor for GCSPreferencesStore(0);
  v9 = sub_4985C(&qword_116448, type metadata accessor for GCSPreferencesStore, &unk_E23A8);

  return a1(v5, v6, v7, v8, v9);
}

uint64_t sub_45484()
{
  sub_EC8C();
}

uint64_t sub_454C8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = type metadata accessor for BluetoothManager(0);
  v6 = sub_4985C(&qword_117058, type metadata accessor for BluetoothManager, &protocol conformance descriptor for BluetoothManager);

  return a1(v2, v3, v4, v5, v6);
}

uint64_t sub_45580(uint64_t a1, unint64_t *a2, void *a3)
{
  sub_450A0(0, a2, a3);
  sub_D77D8();
  return v4;
}

id sub_455BC()
{
  v0 = [objc_opt_self() defaultGame];

  return v0;
}

id sub_45610()
{
  v0 = [objc_opt_self() defaultProfile];

  return v0;
}

uint64_t sub_45654(uint64_t a1)
{
  sub_DC40(&qword_116800, &qword_DF0C0);
  sub_D77D8();
  return v2;
}

uint64_t sub_4569C(uint64_t a1)
{
  v3 = type metadata accessor for GCSProfileParams(0);
  __chkstk_darwin(v3);
  sub_47C94(a1, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GCSProfileParams);
  sub_D77D8();
  return sub_28ACC(a1);
}

__n128 sub_45750@<Q0>(_OWORD *a2@<X8>)
{
  sub_D77D8();
  a2[6] = v10;
  a2[7] = v11;
  a2[8] = v12;
  a2[2] = v6;
  a2[3] = v7;
  a2[4] = v8;
  a2[5] = v9;
  result = v5;
  *a2 = v4;
  a2[1] = v5;
  return result;
}

__n128 sub_457DC@<Q0>(uint64_t a1@<X8>)
{
  sub_50594(v6);
  v2 = v6[7];
  *(a1 + 96) = v6[6];
  *(a1 + 112) = v2;
  *(a1 + 128) = v7;
  v3 = v6[3];
  *(a1 + 32) = v6[2];
  *(a1 + 48) = v3;
  v4 = v6[5];
  *(a1 + 64) = v6[4];
  *(a1 + 80) = v4;
  result = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = result;
  return result;
}

id sub_45858()
{
  v0 = objc_allocWithZone(GCSController);

  return [v0 initDummy];
}

uint64_t sub_4589C()
{
  v1 = (v0 + *(type metadata accessor for GCSEntryView(0) + 76));
  v2 = *v1;
  sub_4592C(*v1, v1[1]);
  return v2;
}

uint64_t type metadata accessor for GCSEntryView(uint64_t a1)
{
  result = qword_11B9A0;
  if (!qword_11B9A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_4592C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_4593C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for GCSEntryView(0) + 76));
  result = sub_45984(*v5, v5[1]);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_45984(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

BOOL sub_459DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for GCSPreferencesStore(0);
  sub_4985C(&qword_116448, type metadata accessor for GCSPreferencesStore, &unk_E23A8);
  v4 = sub_D6BD8();
  v5 = [v4 controllers];

  sub_450A0(0, &qword_117060, GCSController_ptr);
  v6 = sub_D7D28();

  if (v6 >> 62)
  {
    v7 = sub_D8078();
  }

  else
  {
    v7 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
  }

  if (v7 > 0)
  {
    return 0;
  }

  type metadata accessor for BluetoothManager(0);
  sub_4985C(&qword_117058, type metadata accessor for BluetoothManager, &protocol conformance descriptor for BluetoothManager);
  v9 = *sub_D6BD8();
  v10 = (*(v9 + 1160))();

  if (v10 >> 62)
  {
    v11 = sub_D8078();
  }

  else
  {
    v11 = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8));
  }

  return v11 < 1;
}

void *sub_45BEC@<X0>(void *a1@<X8>)
{
  v3 = sub_DC40(&qword_117640, &qword_DF0C8);
  __chkstk_darwin(v3);
  v5 = (&v65 - v4);
  v6 = sub_D6D08();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for GCSEntryView(0);
  v80 = *(v84 - 8);
  __chkstk_darwin(v84);
  v93 = v10;
  v87 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_DC40(&qword_117648, &qword_DF0D0);
  v76 = *(v78 - 8);
  __chkstk_darwin(v78);
  v12 = &v65 - v11;
  v79 = sub_DC40(&qword_117650, &qword_DF0D8);
  v77 = *(v79 - 1);
  __chkstk_darwin(v79);
  v75 = &v65 - v13;
  v14 = sub_DC40(&qword_117658, &qword_DF0E0);
  v81 = *(v14 - 8);
  v82 = v14;
  __chkstk_darwin(v14);
  v91 = &v65 - v15;
  v85 = sub_DC40(&qword_117660, &qword_DF0E8);
  v83 = *(v85 - 8);
  __chkstk_darwin(v85);
  v92 = &v65 - v16;
  v17 = sub_DC40(&qword_117668, &qword_DF0F0);
  v88 = *(v17 - 8);
  v89 = v17;
  __chkstk_darwin(v17);
  v86 = &v65 - v18;
  v19 = sub_DC40(&qword_117670, &qword_DF0F8);
  __chkstk_darwin(v19);
  v21 = &v65 - v20;
  v26 = sub_459DC(v22, v23, v24, v25);
  if (v26)
  {
    sub_A8C90(&v96);
    v27 = v97;
    *v5 = v96;
    v5[1] = v27;
    v5[2] = v98;
    swift_storeEnumTagMultiPayload();
    sub_48378();
    sub_48748();
    return sub_D70B8();
  }

  else
  {
    v66 = &v65;
    __chkstk_darwin(v26);
    v73 = v3;
    __chkstk_darwin(v29);
    v69 = v6;
    v74 = a1;
    v90 = v1;
    v70 = v7;
    sub_DC40(&qword_117678, &qword_DF100);
    v68 = v21;
    v67 = v9;
    v71 = v19;
    sub_DC40(&qword_117680, &qword_DF108);
    v72 = v5;
    sub_15FB8(&qword_117688, &qword_117678, &qword_DF100, &protocol conformance descriptor for TupleView<A>);
    sub_15FB8(&qword_117690, &qword_117680, &qword_DF108, &protocol conformance descriptor for HStack<A>);
    sub_D7318();
    *&v96 = sub_A9308(0x53474E4954544553, 0xEE00454C5449545FLL);
    *(&v96 + 1) = v30;
    v31 = sub_15FB8(&qword_117698, &qword_117648, &qword_DF0D0, &protocol conformance descriptor for Form<A>);
    v32 = sub_16000();
    v33 = v75;
    v34 = v78;
    sub_D7498();

    (*(v76 + 8))(v12, v34);
    *&v96 = v34;
    *(&v96 + 1) = &type metadata for String;
    *&v97 = v31;
    *(&v97 + 1) = v32;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v36 = v79;
    sub_D73C8();
    (*(v77 + 1))(v33, v36);
    v37 = v90;
    v38 = *(v90 + 136);
    v94 = *(v90 + 128);
    v95 = v38;
    v78 = sub_DC40(&qword_1166E0, &qword_DD340);
    sub_D7808();
    v65 = v96;
    LODWORD(v66) = v97;
    v77 = type metadata accessor for GCSEntryView;
    v39 = v87;
    sub_47C94(v37, v87, type metadata accessor for GCSEntryView);
    v40 = (*(v80 + 80) + 16) & ~*(v80 + 80);
    v41 = swift_allocObject();
    v80 = type metadata accessor for GCSEntryView;
    sub_49A80(v39, v41 + v40, type metadata accessor for GCSEntryView);
    v75 = sub_DC40(&qword_1176A0, &qword_DF110);
    *&v96 = v36;
    *(&v96 + 1) = OpaqueTypeConformance2;
    v76 = swift_getOpaqueTypeConformance2();
    v79 = &protocol conformance descriptor for NavigationView<A>;
    v42 = sub_15FB8(&qword_1176A8, &qword_1176A0, &qword_DF110, &protocol conformance descriptor for NavigationView<A>);
    v43 = v91;
    v44 = v82;
    sub_D7518();

    (*(v81 + 8))(v43, v44);
    v45 = v90;
    v46 = v90 + *(v84 + 64);
    v47 = *v46;
    v48 = *(v46 + 8);
    v94 = v47;
    v95 = v48;
    sub_D7808();
    sub_47C94(v45, v39, v77);
    v49 = swift_allocObject();
    sub_49A80(v39, v49 + v40, v80);
    v50 = sub_DC40(&qword_1176B0, &qword_DF118);
    *&v96 = v44;
    *(&v96 + 1) = v75;
    *&v97 = v76;
    *(&v97 + 1) = v42;
    *&v64 = swift_getOpaqueTypeConformance2();
    *(&v64 + 1) = sub_15FB8(&qword_1176B8, &qword_1176B0, &qword_DF118, v79);
    v52 = v85;
    v51 = v86;
    v53 = v92;
    sub_D7518();

    (*(v83 + 8))(v53, v52);
    v54 = v67;
    sub_D7A48();
    *&v96 = v52;
    *(&v96 + 1) = v50;
    v97 = v64;
    swift_getOpaqueTypeConformance2();
    sub_4985C(&qword_116888, &type metadata accessor for GroupedFormStyle, &protocol conformance descriptor for GroupedFormStyle);
    v55 = v68;
    v56 = v89;
    v57 = v69;
    sub_D7558();
    (*(v70 + 8))(v54, v57);
    (*(v88 + 8))(v51, v56);
    type metadata accessor for GCSPreferencesStore(0);
    sub_4985C(&qword_116448, type metadata accessor for GCSPreferencesStore, &unk_E23A8);
    v58 = sub_D6BD8();
    v59 = sub_D6A58();
    v60 = (v55 + *(sub_DC40(&qword_1176C0, &unk_DF120) + 36));
    *v60 = v59;
    v60[1] = v58;
    type metadata accessor for BluetoothManager(0);
    sub_4985C(&qword_117058, type metadata accessor for BluetoothManager, &protocol conformance descriptor for BluetoothManager);
    v61 = sub_D6BD8();
    v62 = sub_D6A58();
    v63 = (v55 + *(v71 + 36));
    *v63 = v62;
    v63[1] = v61;
    sub_48308(v55, v72);
    swift_storeEnumTagMultiPayload();
    sub_48378();
    sub_48748();
    sub_D70B8();
    return sub_4879C(v55);
  }
}

uint64_t sub_46960@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v144 = a2;
  v3 = sub_DC40(&qword_116840, &unk_DD500);
  __chkstk_darwin(v3 - 8);
  v147 = &v135 - v4;
  v5 = type metadata accessor for GCSProfileListView(0);
  v148 = *(v5 - 8);
  v149 = v5;
  __chkstk_darwin(v5);
  v146 = &v135 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_DC40(&qword_117848, &qword_DF210);
  __chkstk_darwin(v7 - 8);
  v158 = &v135 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v160 = &v135 - v10;
  v161 = sub_DC40(&qword_117850, &qword_DF218);
  v157 = *(v161 - 8);
  __chkstk_darwin(v161);
  v156 = &v135 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v159 = &v135 - v13;
  v14 = *a1;
  v15 = a1[1];
  v16 = *(a1 + 16);
  v17 = type metadata accessor for GCSPreferencesStore(0);
  v18 = sub_4985C(&qword_116448, type metadata accessor for GCSPreferencesStore, &unk_E23A8);
  v19 = sub_D6BD8();
  v20 = [v19 controllers];

  v21 = sub_450A0(0, &qword_117060, GCSController_ptr);
  v22 = sub_D7D28();

  if (v22 >> 62)
  {
    v23 = sub_D8078();
  }

  else
  {
    v23 = *(&dword_10 + (v22 & 0xFFFFFFFFFFFFFF8));
  }

  v150 = v21;
  v151 = v18;
  v152 = v17;
  LODWORD(v153) = v16;
  v154 = v15;
  v155 = v14;

  if (v23 < 1)
  {
    sub_498A4(&v204);
  }

  else
  {
    v24 = a1[7];
    LOBYTE(v188) = *(a1 + 48);
    *(&v188 + 1) = v24;
    sub_DC40(&qword_1166E0, &qword_DD340);
    sub_D7808();
    v25 = *(&v204 + 1);
    v145 = v204;
    v26 = v205;
    v27 = a1[9];
    *&v188 = a1[8];
    *(&v188 + 1) = v27;
    sub_DC40(&qword_117808, &unk_DF1C8);
    sub_D7808();
    v28 = v204;
    v29 = v205;
    v30 = type metadata accessor for GCSEntryView(0);
    v31 = (a1 + *(v30 + 60));
    v32 = v31[7];
    v210 = v31[6];
    v211 = v32;
    v212 = v31[8];
    v33 = v31[3];
    v206 = v31[2];
    v207 = v33;
    v34 = v31[4];
    v209 = v31[5];
    v208 = v34;
    v35 = *v31;
    v205 = v31[1];
    v204 = v35;
    sub_DC40(&qword_117820, &qword_DF1E0);
    sub_D7808();
    v36 = (a1 + *(v30 + 76));
    v37 = *v36;
    v38 = v36[1];
    v39 = sub_4592C(*v36, v38);
    v40 = sub_B5590(v39);
    sub_B5608(v40, v41, v145, v25, v26, v28, *(&v28 + 1), v29, &v188, v222, v37, v38);
    nullsub_1();
    v216 = v200;
    v217 = v201;
    v218 = v202;
    v219 = v203;
    v212 = v196;
    v213 = v197;
    v214 = v198;
    v215 = v199;
    v208 = v192;
    v209 = v193;
    v210 = v194;
    v211 = v195;
    v204 = v188;
    v205 = v189;
    v206 = v190;
    v207 = v191;
  }

  type metadata accessor for BluetoothManager(0);
  sub_4985C(&qword_117058, type metadata accessor for BluetoothManager, &protocol conformance descriptor for BluetoothManager);
  v42 = *sub_D6BD8();
  v43 = (*(v42 + 1160))();

  if (v43 >> 62)
  {
    v44 = sub_D8078();
  }

  else
  {
    v44 = *(&dword_10 + (v43 & 0xFFFFFFFFFFFFFF8));
  }

  if (v44 < 1)
  {
    v142 = 0;
    v143 = 0;
    v140 = 1;
    v141 = 0;
  }

  else
  {
    v49 = sub_36B30(v45, v46, v47, v48);
    v142 = v51;
    v143 = v50;
    v141 = v52;

    v140 = v49;
    v45 = v49;
  }

  __chkstk_darwin(v45);
  sub_DC40(&qword_117858, &qword_DF220);
  sub_15FB8(&qword_117860, &qword_117858, &qword_DF220, &protocol conformance descriptor for NavigationLink<A, B>);
  sub_D79C8();
  v53 = sub_D6BD8();
  v54 = [v53 controllers];

  v55 = sub_D7D28();
  if (v55 >> 62)
  {
    v56 = sub_D8078();
  }

  else
  {
    v56 = *(&dword_10 + (v55 & 0xFFFFFFFFFFFFFF8));
  }

  if (v56 < 1)
  {
    v76 = 1;
    v75 = v160;
  }

  else
  {
    v178[0] = *(a1 + 7);
    sub_DC40(&qword_117818, &qword_DF1D8);
    sub_D7808();
    v145 = v188;
    v138 = v189;
    v139 = *(&v188 + 1);
    v57 = a1[17];
    LOBYTE(v178[0]) = *(a1 + 128);
    *(&v178[0] + 1) = v57;
    sub_DC40(&qword_1166E0, &qword_DD340);
    sub_D7808();
    v136 = *(&v188 + 1);
    v137 = v188;
    v58 = v189;
    v59 = a1[19];
    LOBYTE(v178[0]) = *(a1 + 144);
    *(&v178[0] + 1) = v59;
    sub_D7808();
    v60 = v188;
    v61 = v189;
    v178[0] = *(a1 + 10);
    sub_D7808();
    v135 = v188;
    v62 = v189;
    v63 = type metadata accessor for GCSEntryView(0);
    sub_DC40(&qword_1172C8, &unk_E0480);
    v64 = v147;
    sub_D7808();
    v65 = (a1 + *(v63 + 60));
    v66 = v65[7];
    v194 = v65[6];
    v195 = v66;
    v196 = v65[8];
    v67 = v65[3];
    v190 = v65[2];
    v191 = v67;
    v68 = v65[5];
    v192 = v65[4];
    v193 = v68;
    v69 = v65[1];
    v188 = *v65;
    v189 = v69;
    sub_DC40(&qword_117820, &qword_DF1E0);
    v70 = sub_D7808();
    v71 = sub_5C730(v70);
    v72 = v146;
    sub_5C7A8(v71, v73, v145, v139, v138, v137, v136, v58, v146, v60, *(&v60 + 1), v61, v135, v62, v64, &v221);
    v74 = v72;
    v75 = v160;
    sub_49A80(v74, v160, type metadata accessor for GCSProfileListView);
    v76 = 0;
  }

  (*(v148 + 56))(v75, v76, 1, v149);
  v77 = sub_D6BD8();
  v78 = [v77 fusedControllers];

  v79 = sub_D7D28();
  if (v79 >> 62)
  {
    v80 = sub_D8078();
  }

  else
  {
    v80 = *(&dword_10 + (v79 & 0xFFFFFFFFFFFFFF8));
  }

  if (v80 > 0 || ((v81 = sub_D6BD8(), v82 = [v81 unfusedFusableControllers], v81, v83 = sub_D7D28(), v82, v83 >> 62) ? (v84 = sub_D8078()) : (v84 = *(&dword_10 + (v83 & 0xFFFFFFFFFFFFFF8))), , v84 >= 2))
  {
    v85 = type metadata accessor for GCSEntryView(0);
    v86 = (a1 + v85[17]);
    v88 = *v86;
    v87 = v86[1];
    *&v178[0] = v88;
    *(&v178[0] + 1) = v87;
    sub_DC40(&qword_117808, &unk_DF1C8);
    sub_D7808();
    v89 = v188;
    v90 = v189;
    v91 = (a1 + v85[18]);
    v93 = *v91;
    v92 = v91[1];
    *&v178[0] = v93;
    *(&v178[0] + 1) = v92;
    sub_D7808();
    v94 = v188;
    v95 = v189;
    v96 = a1 + v85[16];
    v97 = *v96;
    v98 = *(v96 + 1);
    LOBYTE(v178[0]) = v97;
    *(&v178[0] + 1) = v98;
    sub_DC40(&qword_1166E0, &qword_DD340);
    sub_D7808();
    v99 = v188;
    v100 = v189;
    v101 = sub_158D4();
    sub_83B28(v101, v102, v89, *(&v89 + 1), v90, v94, *(&v94 + 1), v95, v220, v99, *(&v99 + 1), v100);
    v138 = v220[2];
    v139 = v220[0];
    v154 = v220[3];
    v155 = v220[1];
    v152 = v220[5];
    v153 = v220[4];
    v150 = v220[7];
    v151 = v220[6];
    v148 = v220[9];
    v149 = v220[8];
    v146 = v220[11];
    v147 = v220[10];
    v145 = v220[12];
  }

  else
  {
    v138 = 0;
    v139 = 0;
    v154 = 0;
    v155 = 0;
    v152 = 0;
    v153 = 0;
    v150 = 0;
    v151 = 0;
    v148 = 0;
    v149 = 0;
    v146 = 0;
    v147 = 0;
    v145 = 0;
  }

  v174 = v216;
  v175 = v217;
  v176 = v218;
  v177 = v219;
  v170 = v212;
  v171 = v213;
  v172 = v214;
  v173 = v215;
  v166 = v208;
  v167 = v209;
  v168 = v210;
  v169 = v211;
  v162 = v204;
  v163 = v205;
  v164 = v206;
  v165 = v207;
  v103 = v156;
  v137 = *(v157 + 16);
  v137(v156, v159, v161);
  v104 = v158;
  sub_16054(v160, v158, &qword_117848, &qword_DF210);
  v105 = v175;
  v178[12] = v174;
  v178[13] = v175;
  v106 = v176;
  v178[14] = v176;
  v107 = v170;
  v108 = v171;
  v178[8] = v170;
  v178[9] = v171;
  v109 = v172;
  v110 = v173;
  v178[10] = v172;
  v178[11] = v173;
  v111 = v166;
  v112 = v167;
  v178[4] = v166;
  v178[5] = v167;
  v113 = v168;
  v114 = v169;
  v178[6] = v168;
  v178[7] = v169;
  v115 = v162;
  v116 = v163;
  v178[0] = v162;
  v178[1] = v163;
  v117 = v164;
  v118 = v165;
  v178[2] = v164;
  v178[3] = v165;
  v119 = v144;
  *(v144 + 192) = v174;
  *(v119 + 208) = v105;
  *(v119 + 224) = v106;
  *(v119 + 128) = v107;
  *(v119 + 144) = v108;
  *(v119 + 160) = v109;
  *(v119 + 176) = v110;
  *(v119 + 64) = v111;
  *(v119 + 80) = v112;
  *(v119 + 96) = v113;
  *(v119 + 112) = v114;
  *v119 = v115;
  *(v119 + 16) = v116;
  v120 = v177;
  v179 = v177;
  *(v119 + 32) = v117;
  *(v119 + 48) = v118;
  v121 = v140;
  v122 = v141;
  *(v119 + 240) = v120;
  *(v119 + 248) = v121;
  v124 = v142;
  v123 = v143;
  *(v119 + 256) = v143;
  *(v119 + 264) = v124;
  *(v119 + 272) = v122;
  v125 = sub_DC40(&qword_117868, &qword_DF228);
  v137((v119 + v125[16]), v103, v161);
  sub_16054(v104, v119 + v125[20], &qword_117848, &qword_DF210);
  v126 = v119 + v125[24];
  v128 = v138;
  v127 = v139;
  *&v180 = v139;
  *(&v180 + 1) = v155;
  *&v181 = v138;
  *(&v181 + 1) = v154;
  *&v182 = v153;
  *(&v182 + 1) = v152;
  *&v183 = v151;
  *(&v183 + 1) = v150;
  *&v184 = v149;
  *(&v184 + 1) = v148;
  *&v185 = v147;
  *(&v185 + 1) = v146;
  v186 = v145;
  sub_16054(v178, &v188, &qword_117870, &qword_DF230);
  sub_499F4(v121, v123, v124);
  sub_16054(&v180, &v188, &qword_117878, &qword_DF238);
  sub_49A3C(v121, v123, v124);
  v129 = v185;
  *(v126 + 64) = v184;
  *(v126 + 80) = v129;
  *(v126 + 96) = v186;
  v130 = v181;
  *v126 = v180;
  *(v126 + 16) = v130;
  v131 = v183;
  *(v126 + 32) = v182;
  *(v126 + 48) = v131;
  sub_160BC(v160, &qword_117848, &qword_DF210);
  v132 = *(v157 + 8);
  v133 = v161;
  v132(v159, v161);
  v187[0] = v127;
  v187[1] = v155;
  v187[2] = v128;
  v187[3] = v154;
  v187[4] = v153;
  v187[5] = v152;
  v187[6] = v151;
  v187[7] = v150;
  v187[8] = v149;
  v187[9] = v148;
  v187[10] = v147;
  v187[11] = v146;
  v187[12] = v145;
  sub_160BC(v187, &qword_117878, &qword_DF238);
  sub_160BC(v158, &qword_117848, &qword_DF210);
  v132(v156, v133);
  sub_49A3C(v121, v123, v124);
  v200 = v174;
  v201 = v175;
  v202 = v176;
  v203 = v177;
  v196 = v170;
  v197 = v171;
  v198 = v172;
  v199 = v173;
  v192 = v166;
  v193 = v167;
  v194 = v168;
  v195 = v169;
  v188 = v162;
  v189 = v163;
  v190 = v164;
  v191 = v165;
  return sub_160BC(&v188, &qword_117870, &qword_DF230);
}

uint64_t sub_47900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_DC40(&qword_117828, &qword_DF1E8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v29 - v6;
  v8 = sub_DC40(&qword_116818, &qword_DF1F0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v29 - v13;
  v15 = sub_DC40(&qword_117830, &qword_DF1F8);
  __chkstk_darwin(v15 - 8);
  v17 = &v29 - v16;
  *a2 = sub_D6FB8();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v18 = (a1 + *(type metadata accessor for GCSEntryView(0) + 76));
  v19 = *v18;
  if (*v18)
  {
    v33 = v17;
    v34 = a2;
    v20 = v8;
    v21 = v18[1];

    sub_D7028();
    v30 = v11;
    v31 = v5;
    v32 = v4;

    sub_D7858();
    v22 = *(v9 + 16);
    v23 = v30;
    v22(v30, v14, v20);
    *v7 = 0;
    v7[8] = 1;
    v24 = sub_DC40(&qword_117840, &qword_DF208);
    v22(&v7[*(v24 + 48)], v23, v20);
    sub_45984(v19, v21);
    v25 = *(v9 + 8);
    v25(v14, v20);
    v26 = v20;
    v17 = v33;
    v25(v23, v26);
    a2 = v34;
    sub_21A44(v7, v17, &qword_117828, &qword_DF1E8);
    (*(v31 + 56))(v17, 0, 1, v32);
  }

  else
  {
    (*(v5 + 56))(v17, 1, 1, v4);
  }

  v27 = sub_DC40(&qword_117838, &qword_DF200);
  return sub_21A44(v17, a2 + *(v27 + 44), &qword_117830, &qword_DF1F8);
}

uint64_t sub_47C94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_47D00(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return _objc_release_x1(a1, a2);
  }

  else
  {
  }
}

uint64_t sub_47D10()
{
  type metadata accessor for GCSEntryView(0);
  type metadata accessor for GCSProfileSheetView(0);
  sub_4985C(&qword_117810, type metadata accessor for GCSProfileSheetView, &unk_DD598);
  return sub_D6CB8();
}

double sub_47DE0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = sub_DC40(&qword_116840, &unk_DD500);
  __chkstk_darwin(v3 - 8);
  v5 = &v26 - v4;
  v6 = *(a1 + 152);
  LOBYTE(v32) = *(a1 + 144);
  *(&v32 + 1) = v6;
  sub_DC40(&qword_1166E0, &qword_DD340);
  sub_D7808();
  v27 = v42;
  v28 = v41;
  v7 = v43;
  v32 = *(a1 + 160);
  sub_DC40(&qword_117818, &qword_DF1D8);
  sub_D7808();
  v9 = v41;
  v8 = v42;
  v10 = v43;
  v11 = type metadata accessor for GCSEntryView(0);
  sub_DC40(&qword_1172C8, &unk_E0480);
  sub_D7808();
  v12 = (a1 + *(v11 + 60));
  v13 = v12[7];
  v38 = v12[6];
  v39 = v13;
  v40 = v12[8];
  v14 = v12[3];
  v34 = v12[2];
  v35 = v14;
  v15 = v12[5];
  v36 = v12[4];
  v37 = v15;
  v16 = v12[1];
  v32 = *v12;
  v33 = v16;
  sub_DC40(&qword_117820, &qword_DF1E0);
  sub_D7808();
  v17 = *(a1 + 136);
  v30 = *(a1 + 128);
  v31 = v17;
  v18 = sub_D7808();
  v19 = v32;
  LOBYTE(v11) = v33;
  v23 = sub_26684(v18, v20, v21, v22);
  return sub_26688(v23, v24, v28, v27, v7, v9, v8, v10, v29, v5, &v41, v19, *(&v19 + 1), v11);
}

uint64_t sub_47FCC()
{
  v1 = (type metadata accessor for GCSEntryView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = (v2 + 16) & ~v2;
  sub_47D00(*(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16));
  sub_2DAA4(*(v0 + v4 + 24), *(v0 + v4 + 32));

  v5 = v0 + v4 + v1[16];
  v6 = sub_D6998();
  (*(*(v6 - 8) + 8))(v5, v6);
  type metadata accessor for GCSProfileParams(0);

  sub_DC40(&qword_1172C8, &unk_E0480);

  v7 = (v0 + v4 + v1[17]);

  if (*(v0 + v4 + v1[21]))
  {
  }

  return _swift_deallocObject(v0, v4 + v3, v2 | 7);
}

uint64_t sub_48270()
{
  type metadata accessor for GCSEntryView(0);
  sub_49800();
  return sub_D6CB8();
}

uint64_t sub_48308(uint64_t a1, uint64_t a2)
{
  v4 = sub_DC40(&qword_117670, &qword_DF0F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_48378()
{
  result = qword_1176C8;
  if (!qword_1176C8)
  {
    sub_EBC0(&qword_117670, &qword_DF0F8);
    sub_48430();
    sub_15FB8(&qword_1176D8, &qword_1176E0, qword_DF130, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1176C8);
  }

  return result;
}

unint64_t sub_48430()
{
  result = qword_1176D0;
  if (!qword_1176D0)
  {
    sub_EBC0(&qword_1176C0, &unk_DF120);
    sub_EBC0(&qword_117668, &qword_DF0F0);
    sub_D6D08();
    sub_EBC0(&qword_117660, &qword_DF0E8);
    sub_EBC0(&qword_1176B0, &qword_DF118);
    sub_EBC0(&qword_117658, &qword_DF0E0);
    sub_EBC0(&qword_1176A0, &qword_DF110);
    sub_EBC0(&qword_117650, &qword_DF0D8);
    sub_EBC0(&qword_117648, &qword_DF0D0);
    sub_15FB8(&qword_117698, &qword_117648, &qword_DF0D0, &protocol conformance descriptor for Form<A>);
    sub_16000();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_15FB8(&qword_1176A8, &qword_1176A0, &qword_DF110, &protocol conformance descriptor for NavigationView<A>);
    swift_getOpaqueTypeConformance2();
    sub_15FB8(&qword_1176B8, &qword_1176B0, &qword_DF118, &protocol conformance descriptor for NavigationView<A>);
    swift_getOpaqueTypeConformance2();
    sub_4985C(&qword_116888, &type metadata accessor for GroupedFormStyle, &protocol conformance descriptor for GroupedFormStyle);
    swift_getOpaqueTypeConformance2();
    sub_15FB8(&qword_117418, &qword_117420, &qword_DEEB0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1176D0);
  }

  return result;
}

unint64_t sub_48748()
{
  result = qword_1176E8;
  if (!qword_1176E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1176E8);
  }

  return result;
}

uint64_t sub_4879C(uint64_t a1)
{
  v2 = sub_DC40(&qword_117670, &qword_DF0F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_48804@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for GCSProfileParams(0);
  __chkstk_darwin(v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v28 - v6;
  *a1 = sub_45368;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = sub_45484;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  LOBYTE(v29) = 0;
  sub_D77D8();
  v8 = *(&v31 + 1);
  *(a1 + 48) = v31;
  *(a1 + 56) = v8;
  v29 = [objc_allocWithZone(GCSController) initDummy];
  sub_450A0(0, &qword_117060, GCSController_ptr);
  sub_D77D8();
  v9 = *(&v31 + 1);
  *(a1 + 64) = v31;
  *(a1 + 72) = v9;
  v29 = [objc_opt_self() defaultGame];
  sub_450A0(0, &qword_1164A8, GCSGame_ptr);
  sub_D77D8();
  v10 = *(&v31 + 1);
  *(a1 + 80) = v31;
  *(a1 + 88) = v10;
  v29 = [objc_opt_self() defaultProfile];
  sub_450A0(0, &qword_118F10, GCSProfile_ptr);
  sub_D77D8();
  v11 = *(&v31 + 1);
  *(a1 + 96) = v31;
  *(a1 + 104) = v11;
  v29 = 0;
  sub_DC40(&qword_116800, &qword_DF0C0);
  sub_D77D8();
  *(a1 + 112) = v31;
  LOBYTE(v29) = 0;
  sub_D77D8();
  v12 = *(&v31 + 1);
  *(a1 + 128) = v31;
  *(a1 + 136) = v12;
  LOBYTE(v29) = 0;
  sub_D77D8();
  v13 = *(&v31 + 1);
  *(a1 + 144) = v31;
  *(a1 + 152) = v13;
  v29 = 0;
  sub_D77D8();
  *(a1 + 160) = v31;
  v14 = type metadata accessor for GCSEntryView(0);
  sub_D1AF8(v7);
  sub_47C94(v7, v4, type metadata accessor for GCSProfileParams);
  sub_D77D8();
  sub_28ACC(v7);
  v15 = (a1 + v14[15]);
  sub_50594(&v29);
  sub_D77D8();
  v16 = v38;
  v15[6] = v37;
  v15[7] = v16;
  v15[8] = v39;
  v17 = v34;
  v15[2] = v33;
  v15[3] = v17;
  v18 = v36;
  v15[4] = v35;
  v15[5] = v18;
  v19 = v32;
  *v15 = v31;
  v15[1] = v19;
  v20 = a1 + v14[16];
  LOBYTE(v28) = 0;
  sub_D77D8();
  v21 = v30;
  *v20 = v29;
  *(v20 + 8) = v21;
  v22 = (a1 + v14[17]);
  v28 = [objc_allocWithZone(GCSController) initDummy];
  sub_D77D8();
  v23 = v30;
  *v22 = v29;
  v22[1] = v23;
  v24 = (a1 + v14[18]);
  v28 = [objc_allocWithZone(GCSController) initDummy];
  result = sub_D77D8();
  v26 = v30;
  *v24 = v29;
  v24[1] = v26;
  v27 = (a1 + v14[19]);
  *v27 = 0;
  v27[1] = 0;
  return result;
}

void *sub_48BE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v39 = a5;
  v40 = a6;
  v12 = type metadata accessor for GCSProfileParams(0);
  __chkstk_darwin(v12);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v39 - v16;
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = 0;
  *(a7 + 24) = a3;
  *(a7 + 32) = a4;
  *(a7 + 40) = 0;
  LOBYTE(v42) = 0;
  sub_D77D8();
  v18 = *(&v44 + 1);
  *(a7 + 48) = v44;
  *(a7 + 56) = v18;
  v42 = [objc_allocWithZone(GCSController) initDummy];
  sub_450A0(0, &qword_117060, GCSController_ptr);
  sub_D77D8();
  v19 = *(&v44 + 1);
  *(a7 + 64) = v44;
  *(a7 + 72) = v19;
  v42 = [objc_opt_self() defaultGame];
  sub_450A0(0, &qword_1164A8, GCSGame_ptr);
  sub_D77D8();
  v20 = *(&v44 + 1);
  *(a7 + 80) = v44;
  *(a7 + 88) = v20;
  v42 = [objc_opt_self() defaultProfile];
  sub_450A0(0, &qword_118F10, GCSProfile_ptr);
  sub_D77D8();
  v21 = *(&v44 + 1);
  *(a7 + 96) = v44;
  *(a7 + 104) = v21;
  v42 = 0;
  sub_DC40(&qword_116800, &qword_DF0C0);
  sub_D77D8();
  *(a7 + 112) = v44;
  LOBYTE(v42) = 0;
  sub_D77D8();
  v22 = *(&v44 + 1);
  *(a7 + 128) = v44;
  *(a7 + 136) = v22;
  LOBYTE(v42) = 0;
  sub_D77D8();
  v23 = *(&v44 + 1);
  *(a7 + 144) = v44;
  *(a7 + 152) = v23;
  v42 = 0;
  sub_D77D8();
  *(a7 + 160) = v44;
  v24 = type metadata accessor for GCSEntryView(0);
  sub_D1AF8(v17);
  sub_47C94(v17, v14, type metadata accessor for GCSProfileParams);
  sub_D77D8();
  sub_28ACC(v17);
  v25 = (a7 + v24[15]);
  sub_50594(&v42);
  sub_D77D8();
  v26 = v51;
  v25[6] = v50;
  v25[7] = v26;
  v25[8] = v52;
  v27 = v47;
  v25[2] = v46;
  v25[3] = v27;
  v28 = v49;
  v25[4] = v48;
  v25[5] = v28;
  v29 = v45;
  *v25 = v44;
  v25[1] = v29;
  v30 = a7 + v24[16];
  LOBYTE(v41) = 0;
  sub_D77D8();
  v31 = v43;
  *v30 = v42;
  *(v30 + 8) = v31;
  v32 = (a7 + v24[17]);
  v41 = [objc_allocWithZone(GCSController) initDummy];
  sub_D77D8();
  v33 = v43;
  *v32 = v42;
  v32[1] = v33;
  v34 = (a7 + v24[18]);
  v41 = [objc_allocWithZone(GCSController) initDummy];
  result = sub_D77D8();
  v36 = v43;
  *v34 = v42;
  v34[1] = v36;
  v37 = (a7 + v24[19]);
  v38 = v40;
  *v37 = v39;
  v37[1] = v38;
  return result;
}

uint64_t sub_48FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 64);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_DC40(&qword_1172C8, &unk_E0480);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 56);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_490C8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 64) = (a2 - 1);
  }

  else
  {
    v7 = sub_DC40(&qword_1172C8, &unk_E0480);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 56);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_49178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_49394(319, a2, a3, a4);
  if (v4 <= 0x3F)
  {
    sub_49428(319);
    if (v5 <= 0x3F)
    {
      sub_4956C(319, &qword_117340, &type metadata for Bool);
      if (v6 <= 0x3F)
      {
        sub_494BC(319, &qword_117758, &qword_117060, GCSController_ptr);
        if (v7 <= 0x3F)
        {
          sub_494BC(319, &qword_117760, &qword_1164A8, GCSGame_ptr);
          if (v8 <= 0x3F)
          {
            sub_494BC(319, &qword_117768, &qword_118F10, GCSProfile_ptr);
            if (v9 <= 0x3F)
            {
              sub_495B8(319, &qword_117770, &qword_116800, &qword_DF0C0, &type metadata accessor for State);
              if (v10 <= 0x3F)
              {
                sub_49514(319);
                if (v11 <= 0x3F)
                {
                  sub_4956C(319, &qword_117778, &type metadata for GCSProfileViewData);
                  if (v12 <= 0x3F)
                  {
                    sub_495B8(319, &qword_117780, &unk_117788, &qword_E2C00, &type metadata accessor for Optional);
                    if (v13 <= 0x3F)
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

void sub_49394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_117748)
  {
    type metadata accessor for GCSPreferencesStore(255);
    sub_4985C(&qword_116448, type metadata accessor for GCSPreferencesStore, &unk_E23A8);
    v4 = sub_D6BE8();
    if (!v5)
    {
      atomic_store(v4, &qword_117748);
    }
  }
}

void sub_49428(uint64_t a1)
{
  if (!qword_117750)
  {
    type metadata accessor for BluetoothManager(255);
    sub_4985C(&qword_117058, type metadata accessor for BluetoothManager, &protocol conformance descriptor for BluetoothManager);
    v1 = sub_D6BE8();
    if (!v2)
    {
      atomic_store(v1, &qword_117750);
    }
  }
}

void sub_494BC(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_450A0(255, a3, a4);
    v5 = sub_D7818();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_49514(uint64_t a1)
{
  if (!qword_117348)
  {
    type metadata accessor for GCSProfileParams(255);
    v1 = sub_D7818();
    if (!v2)
    {
      atomic_store(v1, &qword_117348);
    }
  }
}

void sub_4956C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_D7818();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_495B8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_EBC0(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_49620()
{
  result = qword_1177F0;
  if (!qword_1177F0)
  {
    sub_EBC0(&qword_1177F8, &qword_DF1C0);
    sub_48378();
    sub_48748();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1177F0);
  }

  return result;
}

__n128 sub_496AC@<Q0>(uint64_t a1@<X8>)
{
  type metadata accessor for GCSEntryView(0);
  sub_DC40(&qword_117808, &unk_DF1C8);
  sub_D7808();
  sub_D7808();
  sub_DC40(&qword_1166E0, &qword_DD340);
  v2 = sub_D7808();
  v6 = sub_26684(v2, v3, v4, v5);
  sub_D56EC(v6, v7, v11, *(&v11 + 1), v12, v11, *(&v11 + 1), v12, &v11, v11, *(&v11 + 1), v12);
  v8 = v16;
  *(a1 + 64) = v15;
  *(a1 + 80) = v8;
  *(a1 + 96) = v17;
  v9 = v12;
  *a1 = v11;
  *(a1 + 16) = v9;
  result = v14;
  *(a1 + 32) = v13;
  *(a1 + 48) = result;
  return result;
}

unint64_t sub_49800()
{
  result = qword_117800;
  if (!qword_117800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_117800);
  }

  return result;
}

uint64_t sub_4985C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_498A4(uint64_t a1)
{
  *(a1 + 240) = 0;
  result = 0.0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_498D0()
{
  sub_A9308(0xD00000000000001ALL, 0x80000000000E58E0);
  nullsub_1();
  type metadata accessor for GCSPreferencesStore(0);
  sub_4985C(&qword_116448, type metadata accessor for GCSPreferencesStore, &unk_E23A8);
  sub_D6BD8();
  sub_D6A58();
  sub_DC40(&qword_117880, &unk_DF240);
  sub_49AE8();
  sub_16000();
  return sub_D6CA8();
}

char *sub_499F4(char *result, uint64_t a2, uint64_t a3)
{
  if (result != &dword_0 + 1)
  {
    v4 = result;

    return v4;
  }

  return result;
}

char *sub_49A3C(char *result, uint64_t a2, uint64_t a3)
{
  if (result != &dword_0 + 1)
  {
  }

  return result;
}

uint64_t sub_49A80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_49AE8()
{
  result = qword_117888;
  if (!qword_117888)
  {
    sub_EBC0(&qword_117880, &unk_DF240);
    sub_49BA0();
    sub_15FB8(&qword_117418, &qword_117420, &qword_DEEB0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_117888);
  }

  return result;
}

unint64_t sub_49BA0()
{
  result = qword_117890;
  if (!qword_117890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_117890);
  }

  return result;
}

__n128 sub_49C08@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_DC40(&qword_117898, &qword_DF250);
  __chkstk_darwin(v4 - 8);
  v6 = v12 - v5;
  *v6 = sub_D6FB8();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v7 = sub_DC40(&qword_1178A0, &qword_DF258);
  sub_49D4C(a1, &v6[*(v7 + 44)]);
  sub_D7A18();
  sub_D6DB8();
  sub_4A3E0(v6, a2);
  v8 = a2 + *(sub_DC40(&qword_1178A8, &qword_DF260) + 36);
  v9 = v12[5];
  *(v8 + 64) = v12[4];
  *(v8 + 80) = v9;
  *(v8 + 96) = v12[6];
  v10 = v12[1];
  *v8 = v12[0];
  *(v8 + 16) = v10;
  result = v12[3];
  *(v8 + 32) = v12[2];
  *(v8 + 48) = result;
  return result;
}

uint64_t sub_49D4C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v68 = a1;
  v64 = sub_D7708();
  v2 = *(v64 - 8);
  __chkstk_darwin(v64);
  v4 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_D7598();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_DC40(&qword_1170E8, qword_DE5D0) - 8;
  __chkstk_darwin(v65);
  v66 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v62 - v11;
  v13 = *(sub_D6D98() + 20);
  v14 = enum case for RoundedCornerStyle.continuous(_:);
  v15 = sub_D7048();
  (*(*(v15 - 8) + 104))(&v12[v13], v14, v15);
  __asm { FMOV            V0.2D, #7.0 }

  *v12 = _Q0;
  sub_DC40(&qword_1170D8, &unk_DE5C0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_DC430;
  v22 = enum case for Color.RGBColorSpace.sRGB(_:);
  v23 = *(v6 + 104);
  v23(v8, enum case for Color.RGBColorSpace.sRGB(_:), v5);
  *(v21 + 32) = sub_D76D8();
  v23(v8, v22, v5);
  *(v21 + 40) = sub_D76D8();
  sub_D79D8();
  sub_D6C78();
  v24 = sub_DC40(&qword_1170C8, &unk_DE5B0);
  v25 = &v12[*(v24 + 52)];
  v26 = v76;
  *v25 = v75;
  *(v25 + 1) = v26;
  *(v25 + 4) = v77;
  *&v12[*(v24 + 56)] = 256;
  v63 = sub_D7A18();
  v28 = v27;
  v29 = [v68 sfSymbolsName];
  sub_D7C18();

  sub_D76F8();
  v30 = v64;
  (*(v2 + 104))(v4, enum case for Image.ResizingMode.stretch(_:), v64);
  v31 = sub_D7758();

  (*(v2 + 8))(v4, v30);
  v32 = sub_D7668();
  LOBYTE(v4) = sub_D71F8();
  sub_D6B68();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v78 = v31;
  LOWORD(v79) = 1;
  *(&v79 + 2) = v73;
  WORD3(v79) = v74;
  *(&v79 + 1) = v32;
  LOBYTE(v80) = v4;
  *(&v80 + 1) = *v72;
  DWORD1(v80) = *&v72[3];
  *(&v80 + 1) = v33;
  *&v81 = v35;
  *(&v81 + 1) = v37;
  *&v82 = v39;
  BYTE8(v82) = 0;
  HIDWORD(v82) = *(&v69 + 3);
  *(&v82 + 9) = v69;
  v41 = v63;
  *&v83 = v63;
  *(&v83 + 1) = v28;
  v42 = &v12[*(sub_DC40(&qword_1170D0, &unk_DF330) + 36)];
  v43 = v81;
  *(v42 + 2) = v80;
  *(v42 + 3) = v43;
  v44 = v83;
  *(v42 + 4) = v82;
  *(v42 + 5) = v44;
  v45 = v79;
  *v42 = v78;
  *(v42 + 1) = v45;
  v84[0] = v31;
  v84[1] = 0;
  v85 = 1;
  v87 = v74;
  v86 = v73;
  v88 = v32;
  v89 = v4;
  *&v90[3] = *&v72[3];
  *v90 = *v72;
  v91 = v34;
  v92 = v36;
  v93 = v38;
  v94 = v40;
  v95 = 0;
  *v96 = v69;
  *&v96[3] = *(&v69 + 3);
  v97 = v41;
  v98 = v28;
  sub_16054(&v78, v71, &qword_1170E0, &qword_DF440);
  sub_160BC(v84, &qword_1170E0, &qword_DF440);
  sub_D7A18();
  sub_D6C28();
  v46 = &v12[*(v65 + 44)];
  v47 = v71[1];
  *v46 = v71[0];
  *(v46 + 1) = v47;
  *(v46 + 2) = v71[2];
  v48 = [v68 name];
  v49 = sub_D7C18();
  v51 = v50;

  v69 = v49;
  v70 = v51;
  sub_16000();
  v52 = sub_D73B8();
  v54 = v53;
  LOBYTE(v51) = v55;
  v57 = v56;
  v58 = v66;
  sub_16054(v12, v66, &qword_1170E8, qword_DE5D0);
  v59 = v67;
  sub_16054(v58, v67, &qword_1170E8, qword_DE5D0);
  v60 = v59 + *(sub_DC40(&qword_1178C0, &unk_DF340) + 48);
  *v60 = v52;
  *(v60 + 8) = v54;
  LOBYTE(v51) = v51 & 1;
  *(v60 + 16) = v51;
  *(v60 + 24) = v57;
  sub_1F900(v52, v54, v51);

  sub_160BC(v12, &qword_1170E8, qword_DE5D0);
  sub_1F8F0(v52, v54, v51);

  return sub_160BC(v58, &qword_1170E8, qword_DE5D0);
}

uint64_t sub_4A3E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_DC40(&qword_117898, &qword_DF250);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_4A488()
{
  result = qword_1178B0;
  if (!qword_1178B0)
  {
    sub_EBC0(&qword_1178A8, &qword_DF260);
    sub_4A514();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1178B0);
  }

  return result;
}

unint64_t sub_4A514()
{
  result = qword_1178B8;
  if (!qword_1178B8)
  {
    sub_EBC0(&qword_117898, &qword_DF250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1178B8);
  }

  return result;
}

uint64_t sub_4A578@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_D6FB8();
  *(a2 + 8) = 0x4024000000000000;
  *(a2 + 16) = 0;
  v4 = sub_DC40(&qword_1178C8, &qword_DF350);
  return sub_4A5D0(a1, a2 + *(v4 + 44));
}

uint64_t sub_4A5D0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = sub_DC40(&qword_1178E0, &unk_DF410);
  __chkstk_darwin(v3 - 8);
  v32 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = (&v31 - v6);
  *v7 = sub_D7A18();
  v7[1] = v8;
  v9 = sub_DC40(&qword_1178E8, &qword_E0700);
  sub_4A820(a1, (v7 + *(v9 + 44)), v10);
  v11 = [a1 localizedName];
  v12 = sub_D7C18();
  v14 = v13;

  v34 = v12;
  v35 = v14;
  sub_16000();
  v15 = sub_D73B8();
  v17 = v16;
  v19 = v18;
  sub_D76B8();
  v20 = sub_D7378();
  v22 = v21;
  v24 = v23;
  v26 = v25;

  sub_1F8F0(v15, v17, v19 & 1);

  v27 = v32;
  sub_16054(v7, v32, &qword_1178E0, &unk_DF410);
  v28 = v33;
  sub_16054(v27, v33, &qword_1178E0, &unk_DF410);
  v29 = v28 + *(sub_DC40(&qword_1178F0, &unk_DF420) + 48);
  *v29 = v20;
  *(v29 + 8) = v22;
  *(v29 + 16) = v24 & 1;
  *(v29 + 24) = v26;
  sub_1F900(v20, v22, v24 & 1);

  sub_160BC(v7, &qword_1178E0, &unk_DF410);
  sub_1F8F0(v20, v22, v24 & 1);

  return sub_160BC(v27, &qword_1178E0, &unk_DF410);
}

uint64_t sub_4A820@<X0>(void *a1@<X0>, void *a2@<X8>, double a3@<D0>)
{
  v5 = sub_D7598();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_DC40(&qword_1170E8, qword_DE5D0);
  __chkstk_darwin(v70);
  v10 = &v66 - v9;
  v68 = sub_DC40(&qword_1178F8, &unk_DF430);
  __chkstk_darwin(v68);
  v69 = &v66 - v11;
  v67 = sub_D7708();
  v12 = *(v67 - 8);
  v13 = __chkstk_darwin(v67);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a1 bundleIdentifier];
  if (v16 && (v17 = v16, v18 = [objc_opt_self() appIconImageForBundleIdentifier:v16], v17, v18) && (v19 = objc_msgSend(v18, "UIImage"), v18, v19))
  {
    v20 = v19;
    sub_D76E8();
    v21 = v67;
    (*(v12 + 104))(v15, enum case for Image.ResizingMode.stretch(_:), v67);
    v22 = sub_D7758();

    (*(v12 + 8))(v15, v21);
    sub_D7A18();
    sub_D6C28();
    LOBYTE(v78[0]) = 1;
    v71 = 0;
    *(&v79[2] + 6) = v74;
    *(&v79[1] + 6) = v73;
    *(v79 + 6) = v72;
    v82 = v22;
    LOWORD(v83) = 257;
    *(&v83 + 2) = v86;
    WORD3(v83) = WORD2(v86);
    *(&v83 + 1) = 0x3FF0000000000000;
    *v84 = 0;
    *&v84[48] = *(&v74 + 1);
    *&v84[34] = v79[2];
    *&v84[18] = v79[1];
    *&v84[2] = v79[0];
    v23 = *&v84[16];
    v24 = v69;
    *(v69 + 2) = *v84;
    *(v24 + 3) = v23;
    *(v24 + 4) = *&v84[32];
    *(v24 + 10) = *&v84[48];
    v25 = v83;
    *v24 = v82;
    *(v24 + 1) = v25;
    swift_storeEnumTagMultiPayload();
    sub_16054(&v82, v79, &qword_117900, &qword_DF448);
    sub_DC40(&qword_117900, &qword_DF448);
    sub_4B248(&qword_117908, &qword_117900, &qword_DF448, sub_4B1BC);
    sub_4B248(&qword_117120, &qword_1170E8, qword_DE5D0, sub_39714);
    sub_D70B8();

    v26 = &v82;
    v27 = &qword_117900;
    v28 = &qword_DF448;
  }

  else
  {
    v29 = *(sub_D6D98() + 20);
    v30 = enum case for RoundedCornerStyle.continuous(_:);
    v31 = sub_D7048();
    (*(*(v31 - 8) + 104))(&v10[v29], v30, v31);
    __asm { FMOV            V0.2D, #7.0 }

    *v10 = _Q0;
    sub_DC40(&qword_1170D8, &unk_DE5C0);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_DC430;
    v38 = enum case for Color.RGBColorSpace.sRGB(_:);
    v66 = a2;
    v39 = *(v6 + 104);
    v39(v8, enum case for Color.RGBColorSpace.sRGB(_:), v5);
    *(v37 + 32) = sub_D76D8();
    v39(v8, v38, v5);
    *(v37 + 40) = sub_D76D8();
    sub_D79D8();
    sub_D6C78();
    v40 = sub_DC40(&qword_1170C8, &unk_DE5B0);
    v41 = &v10[*(v40 + 52)];
    v42 = v87;
    *v41 = v86;
    *(v41 + 1) = v42;
    *(v41 + 4) = v88;
    *&v10[*(v40 + 56)] = 256;
    v43 = sub_D7A18();
    v45 = v44;
    sub_D76F8();
    v46 = v67;
    (*(v12 + 104))(v15, enum case for Image.ResizingMode.stretch(_:), v67);
    v47 = sub_D7758();

    (*(v12 + 8))(v15, v46);
    v48 = sub_D7668();
    v49 = sub_D71F8();
    sub_D6B68();
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v79[0] = v47;
    LOWORD(v79[1]) = 1;
    *(&v79[1] + 2) = v76;
    WORD3(v79[1]) = v77;
    *(&v79[1] + 1) = v48;
    LOBYTE(v79[2]) = v49;
    *(&v79[2] + 1) = *v75;
    DWORD1(v79[2]) = *&v75[3];
    *(&v79[2] + 1) = v50;
    *&v79[3] = v52;
    *(&v79[3] + 1) = v54;
    *&v80 = v56;
    BYTE8(v80) = 0;
    HIDWORD(v80) = *(v78 + 3);
    *(&v80 + 9) = v78[0];
    *&v81 = v43;
    *(&v81 + 1) = v45;
    v58 = &v10[*(sub_DC40(&qword_1170D0, &unk_DF330) + 36)];
    v59 = v79[3];
    *(v58 + 2) = v79[2];
    *(v58 + 3) = v59;
    v60 = v81;
    *(v58 + 4) = v80;
    *(v58 + 5) = v60;
    v61 = v79[1];
    *v58 = v79[0];
    *(v58 + 1) = v61;
    v82 = v47;
    LOWORD(v83) = 1;
    WORD3(v83) = v77;
    *(&v83 + 2) = v76;
    *(&v83 + 1) = v48;
    v84[0] = v49;
    *&v84[4] = *&v75[3];
    *&v84[1] = *v75;
    *&v84[8] = v51;
    *&v84[16] = v53;
    *&v84[24] = v55;
    *&v84[32] = v57;
    v84[40] = 0;
    *&v84[41] = v78[0];
    *&v84[44] = *(v78 + 3);
    *&v84[48] = v43;
    v85 = v45;
    sub_16054(v79, &v72, &qword_1170E0, &qword_DF440);
    sub_160BC(&v82, &qword_1170E0, &qword_DF440);
    sub_D7A18();
    sub_D6C28();
    v62 = v69;
    v63 = &v10[*(v70 + 36)];
    v64 = v73;
    *v63 = v72;
    *(v63 + 1) = v64;
    *(v63 + 2) = v74;
    sub_16054(v10, v62, &qword_1170E8, qword_DE5D0);
    swift_storeEnumTagMultiPayload();
    sub_DC40(&qword_117900, &qword_DF448);
    sub_4B248(&qword_117908, &qword_117900, &qword_DF448, sub_4B1BC);
    sub_4B248(&qword_117120, &qword_1170E8, qword_DE5D0, sub_39714);
    sub_D70B8();
    v26 = v10;
    v27 = &qword_1170E8;
    v28 = qword_DE5D0;
  }

  return sub_160BC(v26, v27, v28);
}

uint64_t sub_4B110@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  *a2 = sub_D6FB8();
  *(a2 + 8) = 0x4024000000000000;
  *(a2 + 16) = 0;
  v5 = sub_DC40(&qword_1178C8, &qword_DF350);
  return sub_4A5D0(v4, a2 + *(v5 + 44));
}

unint64_t sub_4B1BC()
{
  result = qword_117910;
  if (!qword_117910)
  {
    sub_EBC0(&qword_117918, &unk_DF450);
    sub_16168();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_117910);
  }

  return result;
}

uint64_t sub_4B248(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_EBC0(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_4B2CC()
{
  type metadata accessor for GCSAppStore(0);
  sub_4C4F4(&qword_117920, type metadata accessor for GCSAppStore, &unk_DF050);

  return sub_D6DF8();
}

uint64_t sub_4B340@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_DC40(&qword_117928, &unk_DF490);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_4B3C4()
{
  type metadata accessor for GCSAppSelectionView(0);
  sub_DC40(&qword_117930, &qword_E39E0);
  sub_D78B8();
  return v1;
}

uint64_t type metadata accessor for GCSAppSelectionView(uint64_t a1)
{
  result = qword_11BB40;
  if (!qword_11BB40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_4B478(uint64_t a1)
{
  type metadata accessor for GCSAppSelectionView(0);
  sub_DC40(&qword_117930, &qword_E39E0);
  return sub_D78C8();
}

void (*sub_4B4E8(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = (v1 + *(type metadata accessor for GCSAppSelectionView(0) + 24));
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

  v4[11] = sub_DC40(&qword_117930, &qword_E39E0);
  sub_D78B8();
  return sub_23270;
}

uint64_t sub_4B5B4()
{
  type metadata accessor for GCSAppSelectionView(0);
  sub_DC40(&qword_117930, &qword_E39E0);
  sub_D78E8();
  return v1;
}

uint64_t sub_4B620(uint64_t a1)
{
  sub_DC40(&qword_117528, &qword_DEFE0);
  sub_D77D8();
  return v2;
}

uint64_t sub_4B668@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v31 = sub_D70E8();
  v2 = *(v31 - 8);
  __chkstk_darwin(v31);
  v4 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_D70F8();
  v32 = *(v5 - 8);
  v33 = v5;
  __chkstk_darwin(v5);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_DC40(&qword_117938, &unk_E28A0);
  v9 = *(v8 - 8);
  v29 = v8;
  v30 = v9;
  __chkstk_darwin(v8);
  v11 = v28 - v10;
  v35 = v1;
  v28[0] = sub_DC40(&qword_117940, &unk_DF4A0);
  v12 = sub_EBC0(&qword_117948, &unk_E28B0);
  v13 = sub_EBC0(&qword_117950, &unk_DF4B0);
  v14 = sub_EBC0(&qword_117958, &unk_E28C0);
  v15 = sub_EBC0(&qword_117960, &unk_DF4C0);
  v16 = sub_4C2F0();
  v17 = sub_16000();
  v38 = v15;
  v39 = &type metadata for String;
  v40 = v16;
  v41 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = v14;
  v39 = OpaqueTypeConformance2;
  v19 = swift_getOpaqueTypeConformance2();
  v20 = sub_EBC0(&qword_116998, &unk_DF4E0);
  v21 = sub_15FB8(&qword_1179A0, &qword_116998, &unk_DF4E0, &protocol conformance descriptor for ToolbarItem<A, B>);
  v38 = v20;
  v39 = v21;
  v22 = swift_getOpaqueTypeConformance2();
  v38 = v12;
  v39 = v13;
  v40 = v19;
  v41 = v22;
  swift_getOpaqueTypeConformance2();
  sub_D6CB8();
  v23 = (v28[1] + *(type metadata accessor for GCSAppSelectionView(0) + 32));
  v24 = *v23;
  v25 = *(v23 + 2);
  v36 = v24;
  v37 = v25;
  sub_DC40(&qword_1169A8, &qword_E28F0);
  sub_D7808();
  sub_D70D8();
  sub_D70C8();
  (*(v2 + 8))(v4, v31);
  sub_15FB8(&qword_1179A8, &qword_117938, &unk_E28A0, &protocol conformance descriptor for NavigationView<A>);
  v26 = v29;
  sub_D7418();

  (*(v32 + 8))(v7, v33);
  return (*(v30 + 8))(v11, v26);
}

uint64_t sub_4BAEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a1;
  v65 = a2;
  v3 = sub_D6F98();
  v63 = *(v3 - 8);
  v64 = v3;
  __chkstk_darwin(v3);
  v62 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for GCSAppSelectionView(0);
  v6 = v5 - 8;
  v57 = *(v5 - 8);
  v56 = *(v57 + 64);
  __chkstk_darwin(v5);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_D6D08();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_DC40(&qword_117980, &unk_DF4D0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v52 - v15;
  v54 = sub_DC40(&qword_117960, &unk_DF4C0);
  __chkstk_darwin(v54);
  v18 = &v52 - v17;
  v19 = sub_DC40(&qword_117958, &unk_E28C0);
  v20 = *(v19 - 8);
  v58 = v19;
  v59 = v20;
  __chkstk_darwin(v19);
  v53 = &v52 - v21;
  v22 = sub_DC40(&qword_117948, &unk_E28B0);
  v23 = *(v22 - 8);
  v60 = v22;
  v61 = v23;
  __chkstk_darwin(v22);
  v55 = &v52 - v24;
  v67 = a1;
  sub_DC40(&qword_117A70, qword_DF590);
  sub_4D6C8();
  sub_D7328();
  sub_D7A48();
  sub_15FB8(&qword_117988, &qword_117980, &unk_DF4D0, &protocol conformance descriptor for Form<A>);
  sub_4C4F4(&qword_116888, &type metadata accessor for GroupedFormStyle, &protocol conformance descriptor for GroupedFormStyle);
  sub_D7558();
  (*(v10 + 8))(v12, v9);
  (*(v14 + 8))(v16, v13);
  v25 = v52;
  v26 = v52 + *(v6 + 40);
  v27 = *v26;
  v28 = *(v26 + 16);
  v68 = v27;
  v69 = v28;
  sub_DC40(&qword_1169A8, &qword_E28F0);
  sub_D77E8();
  v29 = v71;
  v30 = v72;
  sub_4D778(v25, v8);
  v31 = (*(v57 + 80) + 16) & ~*(v57 + 80);
  v32 = swift_allocObject();
  sub_4D7E0(v8, v32 + v31);
  v33 = &v18[*(sub_DC40(&qword_117978, &unk_E28D0) + 36)];
  *v33 = v29;
  *(v33 + 1) = v30;
  *(v33 + 2) = sub_4D844;
  *(v33 + 3) = v32;
  sub_4D778(v25, v8);
  v34 = swift_allocObject();
  sub_4D7E0(v8, v34 + v31);
  v35 = v54;
  v36 = &v18[*(v54 + 36)];
  *v36 = sub_4DBD4;
  v36[1] = v34;
  v36[2] = 0;
  v36[3] = 0;
  *&v68 = sub_A9308(0x5449545F53505041, 0xEA0000000000454CLL);
  *(&v68 + 1) = v37;
  v38 = sub_4C2F0();
  v39 = sub_16000();
  v40 = v53;
  v41 = v35;
  sub_D7498();

  sub_4DD1C(v18);
  v42 = v62;
  v43 = v63;
  v44 = v64;
  (*(v63 + 104))(v62, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v64);
  *&v68 = v41;
  *(&v68 + 1) = &type metadata for String;
  v69 = v38;
  v70 = v39;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v46 = v55;
  v47 = v58;
  sub_D74F8();
  (*(v43 + 8))(v42, v44);
  (*(v59 + 8))(v40, v47);
  v66 = v25;
  sub_DC40(&qword_117950, &unk_DF4B0);
  *&v68 = v47;
  *(&v68 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v48 = sub_EBC0(&qword_116998, &unk_DF4E0);
  v49 = sub_15FB8(&qword_1179A0, &qword_116998, &unk_DF4E0, &protocol conformance descriptor for ToolbarItem<A, B>);
  *&v68 = v48;
  *(&v68 + 1) = v49;
  swift_getOpaqueTypeConformance2();
  v50 = v60;
  sub_D7528();
  return (*(v61 + 8))(v46, v50);
}

unint64_t sub_4C2F0()
{
  result = qword_117968;
  if (!qword_117968)
  {
    sub_EBC0(&qword_117960, &unk_DF4C0);
    sub_4C37C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_117968);
  }

  return result;
}

unint64_t sub_4C37C()
{
  result = qword_117970;
  if (!qword_117970)
  {
    sub_EBC0(&qword_117978, &unk_E28D0);
    sub_EBC0(&qword_117980, &unk_DF4D0);
    sub_D6D08();
    sub_15FB8(&qword_117988, &qword_117980, &unk_DF4D0, &protocol conformance descriptor for Form<A>);
    sub_4C4F4(&qword_116888, &type metadata accessor for GroupedFormStyle, &protocol conformance descriptor for GroupedFormStyle);
    swift_getOpaqueTypeConformance2();
    sub_15FB8(&qword_117990, &qword_117998, &unk_E28E0, &protocol conformance descriptor for _ValueActionModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_117970);
  }

  return result;
}

uint64_t sub_4C4F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_4C53C(uint64_t a1)
{
  v2 = type metadata accessor for GCSAppSelectionView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v11[1] = *(a1 + *(v5 + 36) + 8);
  sub_DC40(&qword_117A90, qword_E2A50);
  sub_D77E8();

  v11[0] = sub_4EFBC(v6);
  sub_4E04C(v11);

  swift_getKeyPath();
  sub_4D778(a1, v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_4D7E0(v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  sub_DC40(&qword_117528, &qword_DEFE0);
  sub_DC40(&qword_117A88, &unk_E2A40);
  sub_15FB8(&qword_117A98, &qword_117528, &qword_DEFE0, &protocol conformance descriptor for [A]);
  sub_4F480();
  sub_15FB8(&qword_117A80, &qword_117A88, &unk_E2A40, &protocol conformance descriptor for Button<A>);
  return sub_D7988();
}

void sub_4C798(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 bundleIdentifier];
  if (v3)
  {
    v4 = v3;
    v5 = sub_D7C18();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

uint64_t sub_4C800(void **a1, uint64_t a2)
{
  v4 = type metadata accessor for GCSAppSelectionView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = *a1;
  sub_4D778(a2, &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_4D7E0(&v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v9 + v8);
  *(v9 + ((v6 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = v7;
  v13 = v7;
  sub_4F744();
  v10 = v7;
  return sub_D7848();
}

uint64_t sub_4C95C(uint64_t a1, void *a2)
{
  v4 = sub_D6C48();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (a1 + *(type metadata accessor for GCSAppSelectionView(0) + 24));
  v9 = *v8;
  v10 = *(v8 + 2);
  v14 = v9;
  v15 = v10;
  v13 = a2;
  v11 = a2;
  sub_DC40(&qword_117930, &qword_E39E0);
  sub_D78C8();
  sub_4DDF4(v7);
  sub_D6C38();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_4CA90(uint64_t a1, double a2)
{
  v3 = sub_D7128();
  __chkstk_darwin(v3 - 8);
  v4 = sub_DC40(&qword_116998, &unk_DF4E0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9[-v6];
  sub_D7108();
  v10 = a1;
  sub_DC40(&qword_116818, &qword_DF1F0);
  sub_15FB8(&qword_116830, &qword_116818, &qword_DF1F0, &protocol conformance descriptor for Button<A>);
  sub_D6C08();
  sub_15FB8(&qword_1179A0, &qword_116998, &unk_DF4E0, &protocol conformance descriptor for ToolbarItem<A, B>);
  sub_D7168();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_4CC7C(uint64_t a1)
{
  v2 = type metadata accessor for GCSAppSelectionView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v9[0] = sub_A9308(0x4C45434E4143, 0xE600000000000000);
  v9[1] = v5;
  sub_4D778(a1, v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_4D7E0(v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  sub_16000();
  return sub_D7868();
}

uint64_t sub_4CDB0(uint64_t a1)
{
  v2 = sub_D6F68();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_DC40(&qword_117928, &unk_DF490);
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  v9 = sub_D6C48();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for GCSAppSelectionView(0);
  sub_4DFDC(a1 + *(v13 + 20), v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    sub_D7E28();
    v14 = sub_D71C8();
    sub_D6A08();

    sub_D6F58();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  sub_D6C38();
  return (*(v10 + 8))(v12, v9);
}

double sub_4D024@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  type metadata accessor for GCSAppStore(0);
  sub_4C4F4(&qword_117920, type metadata accessor for GCSAppStore, &unk_DF050);
  *a4 = sub_D6DF8();
  a4[1] = v8;
  v9 = type metadata accessor for GCSAppSelectionView(0);
  v10 = v9[5];
  *(a4 + v10) = swift_getKeyPath();
  sub_DC40(&qword_117928, &unk_DF490);
  swift_storeEnumTagMultiPayload();
  v11 = (a4 + v9[6]);
  *v11 = a1;
  v11[1] = a2;
  v11[2] = a3;
  v12 = (a4 + v9[7]);
  sub_DC40(&qword_117528, &qword_DEFE0);
  sub_D77D8();
  *v12 = v15;
  v13 = a4 + v9[8];
  sub_D77D8();
  result = *&v15;
  *v13 = v15;
  *(v13 + 2) = v16;
  return result;
}

uint64_t sub_4D1B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_DC40(&qword_1179B0, qword_DF540);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_4D298(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_DC40(&qword_1179B0, qword_DF540);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

void sub_4D364(uint64_t a1)
{
  sub_4D488(319);
  if (v1 <= 0x3F)
  {
    sub_4D51C(319);
    if (v2 <= 0x3F)
    {
      sub_4D574(319, &qword_117A20, &qword_117A28, &qword_E37B0, &type metadata accessor for Binding);
      if (v3 <= 0x3F)
      {
        sub_4D574(319, &unk_117A30, &qword_117528, &qword_DEFE0, &type metadata accessor for State);
        if (v4 <= 0x3F)
        {
          sub_4D5D8();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_4D488(uint64_t a1)
{
  if (!qword_117A10)
  {
    type metadata accessor for GCSAppStore(255);
    sub_4C4F4(&qword_117920, type metadata accessor for GCSAppStore, &unk_DF050);
    v1 = sub_D6E08();
    if (!v2)
    {
      atomic_store(v1, &qword_117A10);
    }
  }
}

void sub_4D51C(uint64_t a1)
{
  if (!qword_117A18)
  {
    sub_D6C48();
    v1 = sub_D6BC8();
    if (!v2)
    {
      atomic_store(v1, &qword_117A18);
    }
  }
}

void sub_4D574(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_EBC0(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_4D5D8()
{
  if (!qword_116938)
  {
    v0 = sub_D7818();
    if (!v1)
    {
      atomic_store(v0, &qword_116938);
    }
  }
}

uint64_t sub_4D628()
{
  sub_EBC0(&qword_117938, &unk_E28A0);
  sub_15FB8(&qword_1179A8, &qword_117938, &unk_E28A0, &protocol conformance descriptor for NavigationView<A>);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_4D6C8()
{
  result = qword_117A78;
  if (!qword_117A78)
  {
    sub_EBC0(&qword_117A70, qword_DF590);
    sub_15FB8(&qword_117A80, &qword_117A88, &unk_E2A40, &protocol conformance descriptor for Button<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_117A78);
  }

  return result;
}

uint64_t sub_4D778(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GCSAppSelectionView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_4D7E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GCSAppSelectionView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_4D844(uint64_t *a1)
{
  v3 = type metadata accessor for GCSAppSelectionView(0);
  v4 = a1[1];
  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = *a1 & 0xFFFFFFFFFFFFLL;
  }

  v6 = *(v1 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80)));
  if (v5)
  {
    if (v6)
    {
      v7 = *(*v6 + 88);

      v9 = v7(v8);

      if (v9 >> 62)
      {
        goto LABEL_22;
      }

      for (i = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8)); i; i = sub_D8078())
      {
        v11 = 4;
        while (1)
        {
          v12 = v11 - 4;
          if ((v9 & 0xC000000000000001) != 0)
          {
            v13 = sub_D7FF8();
          }

          else
          {
            if (v12 >= *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_21;
            }

            v13 = *(v9 + 8 * v11);
          }

          v14 = v13;
          v15 = v11 - 3;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          sub_D69A8();
          isa = sub_D7D18().super.isa;

          v17 = [v14 localizedNameWithPreferredLocalizations:isa];

          sub_D7C18();
          sub_D7C48();

          sub_D7C48();
          sub_16000();
          LOBYTE(v17) = sub_D7F48();

          if (v17)
          {
            sub_D8028();
            sub_D8058();
            sub_D8068();
            sub_D8038();
          }

          else
          {
          }

          ++v11;
          if (v15 == i)
          {
            goto LABEL_23;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        ;
      }

LABEL_23:

      goto LABEL_24;
    }
  }

  else if (v6)
  {
    v18 = *(*v6 + 88);

    v18(v19);

LABEL_24:
    sub_DC40(&qword_117A90, qword_E2A50);
    return sub_D77F8();
  }

  type metadata accessor for GCSAppStore(0);
  sub_4C4F4(&qword_117920, type metadata accessor for GCSAppStore, &unk_DF050);
  result = sub_D6DD8();
  __break(1u);
  return result;
}

uint64_t sub_4DBD4()
{
  v1 = type metadata accessor for GCSAppSelectionView(0);
  v2 = *(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));
  if (v2)
  {
    v3 = *(*v2 + 88);

    v3(v4);

    sub_DC40(&qword_117A90, qword_E2A50);
    return sub_D77F8();
  }

  else
  {
    type metadata accessor for GCSAppStore(0);
    sub_4C4F4(&qword_117920, type metadata accessor for GCSAppStore, &unk_DF050);
    result = sub_D6DD8();
    __break(1u);
  }

  return result;
}

uint64_t sub_4DD1C(uint64_t a1)
{
  v2 = sub_DC40(&qword_117960, &unk_DF4C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_4DD94()
{
  v1 = *(type metadata accessor for GCSAppSelectionView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_4CDB0(v2);
}

uint64_t sub_4DDF4@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_D6F68();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_DC40(&qword_117928, &unk_DF490);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_4DFDC(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_D6C48();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_D7E28();
    v13 = sub_D71C8();
    sub_D6A08();

    sub_D6F58();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_4DFDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_DC40(&qword_117928, &unk_DF490);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_4E04C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_4F7E4(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_4E150(v6);
  return sub_D8038();
}

void *sub_4E0C8(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_DC40(&qword_118E40, qword_DEAB0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

Swift::Int sub_4E150(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_D80E8(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_4F798();
        v6 = sub_D7D58();
        *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_4E3D0(v8, v9, a1, v4);
      *(v7 + 16) = 0;
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
    return sub_4E254(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_4E254(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v26 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = result - a3;
LABEL_6:
    v24 = v4;
    v25 = a3;
    v6 = *(v26 + 8 * a3);
    v23 = v5;
    while (1)
    {
      v7 = *v4;
      v8 = v6;
      v9 = v7;
      v10 = [v8 localizedName];
      v11 = sub_D7C18();
      v13 = v12;

      v14 = [v9 localizedName];
      v15 = sub_D7C18();
      v17 = v16;

      if (v11 == v15 && v13 == v17)
      {

LABEL_5:
        a3 = v25 + 1;
        v4 = v24 + 8;
        v5 = v23 - 1;
        if (v25 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v19 = sub_D8118();

      if ((v19 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v26)
      {
        break;
      }

      v20 = *v4;
      v6 = *(v4 + 8);
      *v4 = v6;
      *(v4 + 8) = v20;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_4E3D0(id **a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_107:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_146;
    }

    v4 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v107 = v4;
LABEL_110:
      v4 = *(v107 + 2);
      if (v4 >= 2)
      {
        do
        {
          v108 = *v6;
          if (!*v6)
          {
            goto LABEL_144;
          }

          v6 = (v4 - 1);
          v109 = *&v107[16 * v4];
          v110 = v107;
          v111 = *&v107[16 * v4 + 24];
          sub_4EBD0((v108 + 8 * v109), (v108 + 8 * *&v107[16 * v4 + 16]), (v108 + 8 * v111), v5);
          if (v126)
          {
            break;
          }

          if (v111 < v109)
          {
            goto LABEL_133;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v110 = sub_1EC34(v110);
          }

          if (v4 - 2 >= *(v110 + 2))
          {
            goto LABEL_134;
          }

          v112 = &v110[16 * v4];
          *v112 = v109;
          *(v112 + 1) = v111;
          sub_1EBA8(v4 - 1);
          v107 = v110;
          v4 = *(v110 + 2);
          v6 = a3;
        }

        while (v4 > 1);
      }

LABEL_118:

      return;
    }

LABEL_140:
    v107 = sub_1EC34(v4);
    goto LABEL_110;
  }

  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v122 = v7;
      v114 = v9;
      v116 = v10;
      v4 = *v6;
      v11 = *(*v6 + 8 * v8);
      v12 = *(*v6 + 8 * v10);
      v13 = v11;
      v14 = v12;
      v15 = [v13 localizedName];
      v16 = sub_D7C18();
      v18 = v17;

      v19 = [v14 localizedName];
      v20 = sub_D7C18();
      v5 = v21;

      if (v16 == v20 && v18 == v5)
      {
        v127 = 0;
      }

      else
      {
        v127 = sub_D8118();
      }

      v10 = v116;
      v8 = v116 + 2;
      if (v116 + 2 >= v122)
      {
        v6 = a3;
      }

      else
      {
        v4 += 8 * v116 + 16;
        do
        {
          v124 = v8;
          v24 = *(v4 - 8);
          v25 = *v4;
          v26 = v24;
          v27 = [v25 localizedName];
          v5 = sub_D7C18();
          v29 = v28;

          v30 = [v26 localizedName];
          v31 = sub_D7C18();
          v33 = v32;

          if (v5 == v31 && v29 == v33)
          {

            v8 = v124;
            if (v127)
            {
              v6 = a3;
              v9 = v114;
              v10 = v116;
              goto LABEL_26;
            }
          }

          else
          {
            v23 = sub_D8118();

            v8 = v124;
            if ((v127 ^ v23))
            {
              goto LABEL_24;
            }
          }

          ++v8;
          v4 += 8;
        }

        while (v122 != v8);
        v8 = v122;
LABEL_24:
        v6 = a3;
        v10 = v116;
      }

      v9 = v114;
      if (v127)
      {
LABEL_26:
        if (v8 < v10)
        {
          goto LABEL_137;
        }

        if (v10 < v8)
        {
          v35 = 8 * v8 - 8;
          v36 = 8 * v10;
          v37 = v8;
          v38 = v10;
          do
          {
            if (v38 != --v37)
            {
              v39 = *v6;
              if (!*v6)
              {
                goto LABEL_143;
              }

              v40 = *(v39 + v36);
              *(v39 + v36) = *(v39 + v35);
              *(v39 + v35) = v40;
            }

            ++v38;
            v35 -= 8;
            v36 += 8;
          }

          while (v38 < v37);
        }
      }
    }

    v41 = v6[1];
    if (v8 < v41)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_136;
      }

      if (v8 - v10 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v8 < v10)
    {
      goto LABEL_135;
    }

    v60 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v9 = v60;
    }

    else
    {
      v9 = sub_1EC48(0, *(v60 + 2) + 1, 1, v60);
    }

    v4 = *(v9 + 2);
    v61 = *(v9 + 3);
    v62 = v4 + 1;
    if (v4 >= v61 >> 1)
    {
      v9 = sub_1EC48((v61 > 1), v4 + 1, 1, v9);
    }

    *(v9 + 2) = v62;
    v63 = &v9[16 * v4];
    *(v63 + 4) = v10;
    *(v63 + 5) = v8;
    v64 = *a1;
    if (!*a1)
    {
      goto LABEL_145;
    }

    if (v4)
    {
      while (1)
      {
        v65 = v62 - 1;
        if (v62 >= 4)
        {
          break;
        }

        if (v62 == 3)
        {
          v66 = *(v9 + 4);
          v67 = *(v9 + 5);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_75:
          if (v69)
          {
            goto LABEL_124;
          }

          v82 = &v9[16 * v62];
          v84 = *v82;
          v83 = *(v82 + 1);
          v85 = __OFSUB__(v83, v84);
          v86 = v83 - v84;
          v87 = v85;
          if (v85)
          {
            goto LABEL_127;
          }

          v88 = &v9[16 * v65 + 32];
          v90 = *v88;
          v89 = *(v88 + 1);
          v76 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v76)
          {
            goto LABEL_130;
          }

          if (__OFADD__(v86, v91))
          {
            goto LABEL_131;
          }

          if (v86 + v91 >= v68)
          {
            if (v68 < v91)
            {
              v65 = v62 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v92 = &v9[16 * v62];
        v94 = *v92;
        v93 = *(v92 + 1);
        v76 = __OFSUB__(v93, v94);
        v86 = v93 - v94;
        v87 = v76;
LABEL_89:
        if (v87)
        {
          goto LABEL_126;
        }

        v95 = &v9[16 * v65];
        v97 = *(v95 + 4);
        v96 = *(v95 + 5);
        v76 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v76)
        {
          goto LABEL_129;
        }

        if (v98 < v86)
        {
          goto LABEL_3;
        }

LABEL_96:
        v4 = v65 - 1;
        if (v65 - 1 >= v62)
        {
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
          goto LABEL_139;
        }

        if (!*v6)
        {
          goto LABEL_142;
        }

        v5 = v8;
        v103 = v9;
        v104 = *&v9[16 * v4 + 32];
        v105 = *&v9[16 * v65 + 40];
        sub_4EBD0((*v6 + 8 * v104), (*v6 + 8 * *&v9[16 * v65 + 32]), (*v6 + 8 * v105), v64);
        if (v126)
        {
          goto LABEL_118;
        }

        if (v105 < v104)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v103 = sub_1EC34(v103);
        }

        if (v4 >= *(v103 + 2))
        {
          goto LABEL_121;
        }

        v106 = &v103[16 * v4];
        *(v106 + 4) = v104;
        *(v106 + 5) = v105;
        sub_1EBA8(v65);
        v9 = v103;
        v62 = *(v103 + 2);
        v8 = v5;
        if (v62 <= 1)
        {
          goto LABEL_3;
        }
      }

      v70 = &v9[16 * v62 + 32];
      v71 = *(v70 - 64);
      v72 = *(v70 - 56);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_122;
      }

      v75 = *(v70 - 48);
      v74 = *(v70 - 40);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_123;
      }

      v77 = &v9[16 * v62];
      v79 = *v77;
      v78 = *(v77 + 1);
      v76 = __OFSUB__(v78, v79);
      v80 = v78 - v79;
      if (v76)
      {
        goto LABEL_125;
      }

      v76 = __OFADD__(v68, v80);
      v81 = v68 + v80;
      if (v76)
      {
        goto LABEL_128;
      }

      if (v81 >= v73)
      {
        v99 = &v9[16 * v65 + 32];
        v101 = *v99;
        v100 = *(v99 + 1);
        v76 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v76)
        {
          goto LABEL_132;
        }

        if (v68 < v102)
        {
          v65 = v62 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v7 = v6[1];
    if (v8 >= v7)
    {
      goto LABEL_107;
    }
  }

  v42 = v10 + a4;
  if (__OFADD__(v10, a4))
  {
    goto LABEL_138;
  }

  if (v42 >= v41)
  {
    v42 = v6[1];
  }

  if (v42 < v10)
  {
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  if (v8 == v42)
  {
    goto LABEL_55;
  }

  v115 = v9;
  v117 = v10;
  v128 = *v6;
  v4 = *v6 + 8 * v8 - 8;
  v43 = v10 - v8;
  v120 = v42;
LABEL_44:
  v123 = v4;
  v125 = v8;
  v44 = *(v128 + 8 * v8);
  v121 = v43;
  v45 = v43;
  while (1)
  {
    v46 = *v4;
    v47 = v44;
    v48 = v46;
    v49 = [v47 localizedName];
    v5 = sub_D7C18();
    v51 = v50;

    v52 = [v48 localizedName];
    v53 = sub_D7C18();
    v55 = v54;

    if (v5 == v53 && v51 == v55)
    {

LABEL_43:
      v8 = v125 + 1;
      v4 = v123 + 8;
      v43 = v121 - 1;
      if ((v125 + 1) == v120)
      {
        v8 = v120;
        v6 = a3;
        v9 = v115;
        v10 = v117;
        goto LABEL_55;
      }

      goto LABEL_44;
    }

    v57 = sub_D8118();

    if ((v57 & 1) == 0)
    {
      goto LABEL_43;
    }

    if (!v128)
    {
      break;
    }

    v58 = *v4;
    v44 = *(v4 + 8);
    *v4 = v44;
    *(v4 + 8) = v58;
    v4 -= 8;
    if (__CFADD__(v45++, 1))
    {
      goto LABEL_43;
    }
  }

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
}

uint64_t sub_4EBD0(void **__dst, id *__src, id *a3, id *a4)
{
  v4 = a3;
  v5 = __src;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 3;
  v10 = a3 - __src;
  v11 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    if (a4 != __src || &__src[v12] <= a4)
    {
      v29 = a4;
      memmove(a4, __src, 8 * v12);
      a4 = v29;
    }

    v54 = &a4[v12];
    v13 = a4;
    if (v10 >= 8 && v5 > v6)
    {
      v49 = a4;
      v48 = v6;
LABEL_32:
      v30 = v5 - 1;
      v31 = v4;
      v32 = v54;
      v51 = v5 - 1;
      v53 = v5;
      do
      {
        v33 = *--v32;
        v34 = *v30;
        v35 = v33;
        v36 = v34;
        v37 = [v35 localizedName];
        v38 = sub_D7C18();
        v40 = v39;

        v41 = [v36 localizedName];
        v42 = sub_D7C18();
        v44 = v43;

        if (v38 == v42 && v40 == v44)
        {

          v4 = v31 - 1;
        }

        else
        {
          v46 = sub_D8118();

          v4 = v31 - 1;
          if (v46)
          {
            v13 = v49;
            if (v31 != v53)
            {
              *v4 = *v51;
            }

            if (v54 <= v49 || (v5 = v51, v51 <= v48))
            {
              v5 = v51;
              goto LABEL_49;
            }

            goto LABEL_32;
          }
        }

        v13 = v49;
        v30 = v51;
        if (v54 != v31)
        {
          *v4 = *v32;
        }

        v54 = v32;
        v31 = v4;
      }

      while (v32 > v49);
      v54 = v32;
      v5 = v53;
    }
  }

  else
  {
    v13 = a4;
    if (a4 != __dst || &__dst[v9] <= a4)
    {
      memmove(a4, __dst, 8 * v9);
    }

    v54 = &v13[v9];
    if (v7 >= 8 && v5 < v4)
    {
      v50 = v4;
      while (1)
      {
        v52 = v5;
        v14 = *v13;
        v15 = *v5;
        v16 = v14;
        v17 = [v15 localizedName];
        v18 = sub_D7C18();
        v20 = v19;

        v21 = [v16 localizedName];
        v22 = sub_D7C18();
        v24 = v23;

        v25 = v18 == v22 && v20 == v24;
        if (v25)
        {
          break;
        }

        v26 = sub_D8118();

        if ((v26 & 1) == 0)
        {
          goto LABEL_20;
        }

        v27 = v52;
        v5 = v52 + 1;
        v28 = v50;
        if (v6 != v52)
        {
          goto LABEL_21;
        }

LABEL_22:
        ++v6;
        if (v13 >= v54 || v5 >= v28)
        {
          goto LABEL_24;
        }
      }

LABEL_20:
      v27 = v13;
      v25 = v6 == v13++;
      v5 = v52;
      v28 = v50;
      if (v25)
      {
        goto LABEL_22;
      }

LABEL_21:
      *v6 = *v27;
      goto LABEL_22;
    }

LABEL_24:
    v5 = v6;
  }

LABEL_49:
  if (v5 != v13 || v5 >= (v13 + ((v54 - v13 + (v54 - v13 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v5, v13, 8 * (v54 - v13));
  }

  return 1;
}

void *sub_4EFBC(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_D8078();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_4E0C8(v3, 0);
  sub_4F050((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_4F050(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_D8078();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_D8078();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_15FB8(&qword_117AB0, &qword_117528, &qword_DEFE0, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_DC40(&qword_117528, &qword_DEFE0);
            v9 = sub_4F1F4(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_4F798();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_4F1F4(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_D7FF8();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_4F274;
  }

  __break(1u);
  return result;
}

uint64_t sub_4F288()
{
  v1 = type metadata accessor for GCSAppSelectionView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 20);
  sub_DC40(&qword_117928, &unk_DF490);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_D6C48();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v5 + *(v1 + 24);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_4F400(void **a1)
{
  v3 = *(type metadata accessor for GCSAppSelectionView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_4C800(a1, v4);
}

unint64_t sub_4F480()
{
  result = qword_117AA0;
  if (!qword_117AA0)
  {
    sub_EBC0(&qword_118ED0, &unk_DF5E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_117AA0);
  }

  return result;
}

uint64_t sub_4F4FC()
{
  v1 = type metadata accessor for GCSAppSelectionView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 20);
  sub_DC40(&qword_117928, &unk_DF490);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_D6C48();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = v5 + *(v1 + 24);

  return _swift_deallocObject(v0, v8 + 8, v2 | 7);
}

uint64_t sub_4F688()
{
  v1 = *(type metadata accessor for GCSAppSelectionView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_4C95C(v0 + v2, v3);
}

void sub_4F714(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  nullsub_1();
  *a1 = v4;
}

unint64_t sub_4F744()
{
  result = qword_117AA8;
  if (!qword_117AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_117AA8);
  }

  return result;
}

unint64_t sub_4F798()
{
  result = qword_117540;
  if (!qword_117540)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_117540);
  }

  return result;
}

uint64_t sub_4F8C4(uint64_t a1, uint64_t a2)
{
  if (*(sub_54798() + 16))
  {
    sub_1ED4C(a1, a2);
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_4F924(uint64_t a1, uint64_t a2)
{
  v4 = sub_54798();
  if (*(v4 + 16) && (v5 = sub_1ED4C(a1, a2), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 32 * v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_4F9A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_54798();
  if (*(v4 + 16) && (v5 = sub_1ED4C(a1, a2), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 32 * v5 + 16);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_4FA1C()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_4FA4C(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_4FA84()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_4FAB4(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_4FAF4(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_4FB28(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t sub_4FB7C(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t sub_4FBD0(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

uint64_t sub_4FC20(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  while (!(a2 >> 62))
  {
    result = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
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

    v4 = sub_2AEB0();
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
          v15 = sub_D7FF8();
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = sub_D7FF8();
LABEL_26:
        v17 = v16;
        v18 = sub_D7EA8();

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
    v21 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    v22 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
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
      v18 = sub_D7EA8();

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
    v5 = sub_D8078();
  }

  result = sub_D8078();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_4FE60(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v4 = 1;
    }

    else
    {
      sub_55710();
      v3 = 0;
      do
      {
        v4 = sub_D7BA8();
        if ((v4 & 1) == 0)
        {
          break;
        }

        v3 += 40;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_4FF40(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v25 = v2;
  v26 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[1];
    v17 = *v5;
    v18[0] = v8;
    *(v18 + 11) = *(v5 + 27);
    v15 = v17;
    v16[0] = v8;
    *(v16 + 11) = *(v18 + 11);
    v9 = v6[1];
    v19 = *v6;
    v20[0] = v9;
    *(v20 + 11) = *(v6 + 27);
    v13 = v19;
    v14[0] = v9;
    *(v14 + 11) = *(v20 + 11);
    sub_1B040(&v17, v12);
    sub_1B040(&v19, v12);
    sub_556BC();
    v10 = sub_D7BA8();
    v21 = v13;
    v22[0] = v14[0];
    *(v22 + 11) = *(v14 + 11);
    sub_1B09C(&v21);
    v23 = v15;
    v24[0] = v16[0];
    *(v24 + 11) = *(v16 + 11);
    sub_1B09C(&v23);
    if ((v10 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 3;
    v5 += 3;
  }

  return 1;
}

void sub_5007C(uint64_t a1)
{
  sub_D7C78();
  sub_D7C78();
  sub_543E8(a1, v1[4]);
  sub_543E8(a1, v1[5]);
  v3 = v1[6];
  v4 = *(v3 + 16);
  sub_D8178(v4);
  if (v4)
  {
    sub_55048();
    v5 = (v3 + 64);
    do
    {
      v6 = *(v5 - 2);
      v7 = *(v5 - 1);
      v8 = *v5;
      v5 += 5;
      __dst = v6;
      *v19 = v7;
      *&v19[16] = v8;
      sub_D7B88();
      --v4;
    }

    while (v4);
  }

  v9 = v1[7];
  v10 = *(v9 + 16);
  sub_D8178(v10);
  if (v10)
  {
    v11 = (v9 + 32);
    do
    {
      v12 = *v11;
      v13 = v11[1];
      *&v15[11] = *(v11 + 27);
      v14 = v12;
      *v15 = v13;
      memmove(&__dst, v11, 0x2BuLL);
      sub_1B040(&v14, &v16);
      sub_5509C();
      sub_D7B88();
      v16 = __dst;
      v17[0] = *v19;
      *(v17 + 11) = *&v19[11];
      sub_1B09C(&v16);
      v11 += 3;
      --v10;
    }

    while (v10);
  }
}

Swift::Int sub_501D0()
{
  sub_D8168();
  sub_5007C(v1);
  return sub_D8198();
}

uint64_t sub_50210@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

Swift::Int sub_50228(uint64_t a1)
{
  sub_D8168();
  sub_5007C(v2);
  return sub_D8198();
}

uint64_t sub_50264@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

id sub_502BC()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t sub_502EC(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_50318@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2FBB0();

  return sub_31FEC(v2, a1);
}

uint64_t sub_50378(uint64_t a1)
{

  *(v1 + 88) = a1;
  return result;
}

uint64_t sub_503CC(uint64_t a1)
{

  *(v1 + 96) = a1;
  return result;
}

uint64_t sub_50420(uint64_t a1)
{

  *(v1 + 104) = a1;
  return result;
}

void *sub_504CC()
{
  v1 = *(v0 + 120);
  v2 = v1;
  return v1;
}

uint64_t sub_50548(uint64_t a1)
{

  *(v1 + 128) = a1;
  return result;
}

__n128 sub_50594@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_2FBB0();
  v13[0] = *v2;
  v4 = v2[2];
  v3 = v2[3];
  v5 = v2[1];
  v14 = *(v2 + 8);
  v13[2] = v4;
  v13[3] = v3;
  v13[1] = v5;
  v6 = v2[3];
  v17 = v2[2];
  v18 = v6;
  v19 = *(v2 + 8);
  v7 = v2[1];
  v15 = *v2;
  v16 = v7;
  sub_31FEC(v13, v12);
  v8 = sub_54CE8(_swiftEmptyArrayStorage);
  *a1 = 0;
  *(a1 + 8) = _swiftEmptyArrayStorage;
  v9 = v18;
  *(a1 + 48) = v17;
  *(a1 + 64) = v9;
  v10 = v19;
  result = v16;
  *(a1 + 16) = v15;
  *(a1 + 32) = result;
  *(a1 + 80) = v10;
  *(a1 + 88) = v8;
  *(a1 + 96) = _swiftEmptyArrayStorage;
  *(a1 + 104) = _swiftEmptyArrayStorage;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_50648@<X0>(unint64_t a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *&v458 = 0;
  *(&v458 + 1) = _swiftEmptyArrayStorage;
  v7 = sub_2FBB0();
  v468[0] = *v7;
  v9 = v7[2];
  v8 = v7[3];
  v10 = v7[1];
  v469 = *(v7 + 8);
  v468[2] = v9;
  v468[3] = v8;
  v468[1] = v10;
  memmove(&v459, v7, 0x48uLL);
  sub_31FEC(v468, &v439);
  sub_54CE8(_swiftEmptyArrayStorage);
  v466 = _swiftEmptyArrayStorage;
  v11 = type metadata accessor for GCSProfileParams(0);
  sub_30674(*(a1 + *(v11 + 72)), v467);
  sub_550F0(v467, &v459);
  if (a2)
  {
    v12 = a2;

    v13 = [v12 localizedProductCategory];
    v14 = sub_D7C18();
    v16 = v15;

    v17 = [v12 productCategoryKey];
    v18 = sub_D7C18();
    v415 = v19;

    v20 = *(a1 + *(v11 + 44));
    v21 = [v12 allButtons];
    sub_2AEB0();
    v22 = sub_D7D28();

    v23 = sub_CF530(v20, v22);

    v24 = [v12 allDpads];
    v25 = sub_D7D28();

    sub_CFC70(v20, v25);
    v27 = v26;

    LOBYTE(v465) = [v12 supportsHaptics];
    BYTE1(v465) = [v12 supportsLight];
    *(&v465 + 1) = [v12 shareButton];
    sub_DC40(&qword_117048, &qword_DE518);
    v28 = swift_allocObject();
    v424 = v14;
    *&v439 = v14;
    *(&v439 + 1) = v16;
    *&v440 = v18;
    *(&v440 + 1) = v415;
    *&v441 = _swiftEmptyArrayStorage;
    *(&v441 + 1) = _swiftEmptyArrayStorage;
    *&v442 = v23;
    *(&v442 + 1) = v27;
    v29 = v439;
    v30 = v440;
    *(v28 + 16) = xmmword_DCB80;
    *(v28 + 32) = v29;
    v31 = v441;
    v32 = v442;
    *(v28 + 48) = v30;
    *(v28 + 64) = v31;
    *(v28 + 80) = v32;
    v466 = v28;
    *&v464 = v23;
    *(&v464 + 1) = v27;
    sub_35294(&v439, &v430);
    v33 = [v12 buttons];
    v34 = sub_D7B48();

    v35 = [v12 dpads];
    v36 = sub_D7B48();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v429[0] = v34;
    sub_5514C(v36, sub_5462C, 0, isUniquelyReferenced_nonNull_native, v429);

    v38 = *&v429[0];
    sub_28ACC(a1);

    *(&v463 + 1) = v38;
    *&v430 = v424;
    *(&v430 + 1) = v16;
    *&v431 = v18;
    *(&v431 + 1) = v415;
    *&v432 = _swiftEmptyArrayStorage;
    *(&v432 + 1) = _swiftEmptyArrayStorage;
    *&v433 = v23;
    *(&v433 + 1) = v27;
    sub_35304(&v430);
LABEL_254:
    v436 = v464;
    v437 = v465;
    v432 = v460;
    v433 = v461;
    v434 = v462;
    v435 = v463;
    v430 = v458;
    v431 = v459;
    v445 = v464;
    v446 = v465;
    v441 = v460;
    v442 = v461;
    v443 = v462;
    v444 = v463;
    v438 = v466;
    v447 = v466;
    v439 = v458;
    v440 = v459;
    sub_23CAC(&v430, v429);
    result = sub_23D08(&v439);
    v373 = v437;
    *(a4 + 96) = v436;
    *(a4 + 112) = v373;
    *(a4 + 128) = v438;
    v374 = v433;
    *(a4 + 32) = v432;
    *(a4 + 48) = v374;
    v375 = v435;
    *(a4 + 64) = v434;
    *(a4 + 80) = v375;
    v376 = v431;
    *a4 = v430;
    *(a4 + 16) = v376;
    return result;
  }

  v423 = v11;
  v457 = sub_54CE8(_swiftEmptyArrayStorage);
  v456 = sub_54CE8(_swiftEmptyArrayStorage);
  v39 = sub_54DEC(_swiftEmptyArrayStorage);
  v455 = v39;
  v40 = a3;
  v393 = a3;
  if (a3 >> 62)
  {
    goto LABEL_286;
  }

  v41 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
LABEL_5:
  v42 = v423;
  v401 = a1;
  if (!v41)
  {
    LOWORD(v465) = 0;
    *(&v465 + 1) = 0;
    *(&v386 + 1) = 0x80000000000E5900;
LABEL_195:
    *&v386 = 0xD000000000000014;

    goto LABEL_196;
  }

  v43 = 0;
  v394 = v40 & 0xC000000000000001;
  v384 = v40 & 0xFFFFFFFFFFFFFF8;
  v381 = (v40 + 32);
  v391 = v41;
  do
  {
    if (v394)
    {
      v49 = sub_D7FF8();
      v50 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        goto LABEL_275;
      }
    }

    else
    {
      if (v43 >= *(v384 + 16))
      {
        goto LABEL_283;
      }

      v49 = *(v40 + 8 * v43 + 32);
      v50 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        goto LABEL_275;
      }
    }

    v418 = v50;
    v51 = v49;
    v52 = [v49 productCategoryKey];
    a1 = sub_D7C18();
    v54 = v53;

    v55 = [v51 localizedProductCategory];
    v56 = sub_D7C18();
    v58 = v57;

    v425 = v51;
    v59 = [v51 productCategoryKey];
    v60 = sub_D7C18();
    v62 = v61;

    v63 = swift_isUniquelyReferenced_nonNull_native();
    *&v430 = v39;
    v455 = 0x8000000000000000;
    v64 = sub_1ED4C(a1, v54);
    v66 = *(v39 + 16);
    v67 = (v65 & 1) == 0;
    v68 = __OFADD__(v66, v67);
    v69 = v66 + v67;
    if (v68)
    {
      goto LABEL_276;
    }

    v70 = v65;
    if (*(v39 + 24) < v69)
    {
      sub_53614(v69, v63);
      v64 = sub_1ED4C(a1, v54);
      if ((v70 & 1) != (v71 & 1))
      {
        goto LABEL_289;
      }

LABEL_20:
      if (v70)
      {
        goto LABEL_7;
      }

      goto LABEL_21;
    }

    if (v63)
    {
      goto LABEL_20;
    }

    v76 = v64;
    sub_53F64();
    v64 = v76;
    if (v70)
    {
LABEL_7:
      v44 = v64;

      v39 = v430;
      v45 = *(v430 + 56) + (v44 << 6);
      v47 = *(v45 + 32);
      v46 = *(v45 + 48);
      v48 = *(v45 + 16);
      v439 = *v45;
      v440 = v48;
      v441 = v47;
      v442 = v46;
      *v45 = v56;
      *(v45 + 8) = v58;
      *(v45 + 16) = v60;
      *(v45 + 24) = v62;
      *(v45 + 32) = _swiftEmptyArrayStorage;
      *(v45 + 40) = _swiftEmptyArrayStorage;
      *(v45 + 48) = _swiftEmptyArrayStorage;
      *(v45 + 56) = _swiftEmptyArrayStorage;
      sub_35304(&v439);

      goto LABEL_8;
    }

LABEL_21:
    v39 = v430;
    *(v430 + 8 * (v64 >> 6) + 64) |= 1 << v64;
    v72 = (*(v39 + 48) + 16 * v64);
    *v72 = a1;
    v72[1] = v54;
    v73 = (*(v39 + 56) + (v64 << 6));
    *v73 = v56;
    v73[1] = v58;
    v73[2] = v60;
    v73[3] = v62;
    v73[4] = _swiftEmptyArrayStorage;
    v73[5] = _swiftEmptyArrayStorage;
    v73[6] = _swiftEmptyArrayStorage;
    v73[7] = _swiftEmptyArrayStorage;

    v74 = *(v39 + 16);
    v68 = __OFADD__(v74, 1);
    v75 = v74 + 1;
    if (v68)
    {
      goto LABEL_282;
    }

    *(v39 + 16) = v75;
LABEL_8:
    v455 = v39;
    ++v43;
    v40 = v393;
  }

  while (v418 != v391);
  v389 = 0;
  v387 = 0;
  v383 = 0;
  v77 = 0;
  v426 = *(v39 + 16);
  do
  {
    if (v394)
    {
      v78 = v77;
      v79 = sub_D7FF8();
    }

    else
    {
      if (v77 >= *(v384 + 16))
      {
        goto LABEL_285;
      }

      v78 = v77;
      v79 = v381[v77];
    }

    a1 = v79;
    v68 = __OFADD__(v78, 1);
    v80 = v78 + 1;
    if (v68)
    {
      goto LABEL_284;
    }

    v385 = v80;
    if (v387)
    {
      v387 = 1;
      if ((v389 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v387 = [v79 supportsHaptics];
      if ((v389 & 1) == 0)
      {
LABEL_34:
        v81 = [a1 supportsLight];
        goto LABEL_37;
      }
    }

    v81 = 1;
LABEL_37:
    v82 = [a1 shareButton];
    v416 = a1;
    v389 = v81;
    if (v82)
    {
      if (v383)
      {
      }

      else
      {
        v383 = v82;
        if (v426 >= 2)
        {
          v83 = v82;
          v84 = [v82 name];
          v85 = sub_D7C18();
          v87 = v86;

          if (*(sub_54798() + 16) && (sub_1ED4C(v85, v87), (v88 & 1) != 0))
          {

            v89 = [v83 name];
            v90 = sub_D7C18();
            v92 = v91;

            if (*(sub_54798() + 16) && (sub_1ED4C(v90, v92), (v93 & 1) != 0))
            {

              v94 = [v83 name];
              if (!v94)
              {
                sub_D7C18();
                v94 = sub_D7BD8();
              }

              v95 = [v83 remappingKey];
              v96 = objc_allocWithZone(GCSElement);
              v97 = sub_D7BD8();

              v98 = sub_D7BD8();

              v383 = [v96 initWithName:v94 nameLocalizationKey:v97 sfSymbolsName:v98 remappingKey:v95 kind:1];
            }

            else
            {

              v383 = v83;
            }

            a1 = v416;
          }

          else
          {

            v383 = v83;
          }
        }
      }
    }

    v99 = [a1 allButtons];
    v39 = sub_2AEB0();
    v100 = sub_D7D28();

    if (v100 >> 62)
    {
      v101 = sub_D8078();
      if (!v101)
      {
        goto LABEL_120;
      }

LABEL_53:
      a1 = 0;
      v419 = v100 & 0xC000000000000001;
      v396 = v100 + 32;
      v398 = v100 & 0xFFFFFFFFFFFFFF8;
      v402 = v101;
      while (1)
      {
        while (1)
        {
          if (v419)
          {
            v102 = sub_D7FF8();
          }

          else
          {
            if (a1 >= *(v398 + 16))
            {
              goto LABEL_265;
            }

            v102 = *(v396 + 8 * a1);
          }

          v103 = v102;
          v68 = __OFADD__(a1++, 1);
          if (v68)
          {
            __break(1u);
LABEL_260:
            __break(1u);
LABEL_261:
            __break(1u);
LABEL_262:
            __break(1u);
LABEL_263:
            __break(1u);
LABEL_264:
            __break(1u);
LABEL_265:
            __break(1u);
LABEL_266:
            __break(1u);
LABEL_267:
            __break(1u);
LABEL_268:
            __break(1u);
LABEL_269:
            __break(1u);
LABEL_270:
            __break(1u);
LABEL_271:
            __break(1u);
LABEL_272:
            __break(1u);
LABEL_273:
            __break(1u);
LABEL_274:
            __break(1u);
LABEL_275:
            __break(1u);
LABEL_276:
            __break(1u);
LABEL_277:
            __break(1u);
LABEL_278:
            __break(1u);
LABEL_279:
            __break(1u);
LABEL_280:
            __break(1u);
LABEL_281:
            __break(1u);
LABEL_282:
            __break(1u);
LABEL_283:
            __break(1u);
LABEL_284:
            __break(1u);
LABEL_285:
            __break(1u);
LABEL_286:
            v41 = sub_D8078();
            v40 = v393;
            goto LABEL_5;
          }

          v104 = [v102 name];
          v105 = sub_D7C18();
          v107 = v106;

          if (*(v457 + 16))
          {
            break;
          }

LABEL_64:
          v109 = [v103 name];
          v110 = sub_D7C18();
          v112 = v111;

          if (v426 >= 2)
          {
            if (!*(sub_54798() + 16))
            {
              goto LABEL_85;
            }

            sub_1ED4C(v110, v112);
            v114 = v113;

            if (v114)
            {
              v115 = [v103 name];
              v116 = sub_D7C18();
              v118 = v117;

              if (!*(sub_54798() + 16))
              {
                goto LABEL_85;
              }

              sub_1ED4C(v116, v118);
              v120 = v119;

              if (v120)
              {

                v121 = [v103 name];
                v122 = sub_D7C18();
                v124 = v123;

                if (*(sub_54798() + 16))
                {
                  sub_1ED4C(v122, v124);
                  v126 = v125;

                  if (v126)
                  {

                    v127 = [v103 name];
                    v128 = sub_D7C18();
                    v412 = v129;

                    v130 = [v103 name];
                    if (!v130)
                    {
                      sub_D7C18();
                      v130 = sub_D7BD8();
                    }

                    v131 = [v103 remappingKey];
                    v132 = objc_allocWithZone(GCSElement);
                    v133 = sub_D7BD8();

                    v134 = sub_D7BD8();

                    v135 = [v132 initWithName:v130 nameLocalizationKey:v133 sfSymbolsName:v134 remappingKey:v131 kind:1];

                    v39 = &v457;
                    sub_52B14(v135, v128, v412);

                    goto LABEL_116;
                  }

LABEL_85:
                }

                else
                {
                }
              }
            }

            v148 = [v416 productCategoryKey];
            v149 = sub_D7C18();
            v151 = v150;

            v152 = v455;
            if (*(v455 + 16))
            {
              v153 = sub_1ED4C(v149, v151);
              v155 = v154;

              if (v155)
              {
                v156 = (*(v152 + 56) + (v153 << 6));
                v158 = v156[2];
                v157 = v156[3];
                v159 = v156[1];
                v439 = *v156;
                v440 = v159;
                v441 = v158;
                v442 = v157;
                v161 = *(&v439 + 1);
                v160 = v439;
                v162 = *(&v159 + 1);
                v163 = v159;
                v164 = *(&v158 + 1);
                v165 = v158;
                v166 = *(&v157 + 1);
                v39 = v157;
                sub_35294(&v439, &v430);
                if (v161)
                {
                  v439 = __PAIR128__(v161, v160);
                  v440 = __PAIR128__(v162, v163);
                  v441 = __PAIR128__(v164, v165);
                  v442 = __PAIR128__(v166, v39);

                  sub_553E8(&v439);
                  if (v165 >> 62)
                  {
                    v408 = sub_D8078();
                  }

                  else
                  {
                    v408 = *(&dword_10 + (v165 & 0xFFFFFFFFFFFFFF8));
                  }

                  v167 = 0;
                  while (v408 != v167)
                  {
                    if ((v165 & 0xC000000000000001) != 0)
                    {
                      v169 = sub_D7FF8();
                    }

                    else
                    {
                      if (v167 >= *(&dword_10 + (v165 & 0xFFFFFFFFFFFFFF8)))
                      {
                        goto LABEL_262;
                      }

                      v169 = *(v165 + 8 * v167 + 32);
                    }

                    v170 = v169;
                    if (__OFADD__(v167, 1))
                    {
                      goto LABEL_261;
                    }

                    v171 = [v169 name];
                    v172 = sub_D7C18();
                    v174 = v173;

                    v175 = [v103 name];
                    v176 = sub_D7C18();
                    v39 = v177;

                    if (v172 == v176 && v174 == v39)
                    {

LABEL_111:

                      goto LABEL_116;
                    }

                    v168 = sub_D8118();

                    ++v167;
                    if (v168)
                    {

                      v39 = v165;
                      goto LABEL_111;
                    }
                  }

                  v178 = [v416 productCategoryKey];
                  v179 = sub_D7C18();
                  v181 = v180;

                  v39 = &v455;
                  v183 = sub_52C0C(&v430, v179, v181);
                  if (*(v182 + 8))
                  {
                    v184 = v182;
                    v185 = v103;
                    sub_D7D08();
                    if (*(&dword_10 + (*(v184 + 32) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v184 + 32) & 0xFFFFFFFFFFFFFF8)) >> 1)
                    {
                      sub_D7D48();
                    }

                    v39 = v184 + 32;
                    sub_D7D68();
                    (v183)(&v430, 0);
                  }

                  else
                  {
                    (v183)(&v430, 0);
                  }

                  goto LABEL_116;
                }

                goto LABEL_105;
              }
            }

            else
            {
            }

            v166 = 0;
            v39 = 0;
            v164 = 0;
            v165 = 0;
            v162 = 0;
            v163 = 0;
            v160 = 0;
LABEL_105:

            v439 = v160;
            *&v440 = v163;
            *(&v440 + 1) = v162;
            *&v441 = v165;
            *(&v441 + 1) = v164;
            *&v442 = v39;
            *(&v442 + 1) = v166;
            sub_553E8(&v439);
            goto LABEL_116;
          }

          v136 = v103;
          v39 = v457;
          v137 = swift_isUniquelyReferenced_nonNull_native();
          *&v439 = v39;
          v457 = 0x8000000000000000;
          v138 = sub_1ED4C(v110, v112);
          v140 = *(v39 + 16);
          v141 = (v139 & 1) == 0;
          v68 = __OFADD__(v140, v141);
          v142 = v140 + v141;
          if (v68)
          {
            goto LABEL_267;
          }

          v143 = v139;
          if (*(v39 + 24) >= v142)
          {
            if ((v137 & 1) == 0)
            {
              v39 = &v439;
              v186 = v138;
              sub_54104();
              v138 = v186;
              if ((v143 & 1) == 0)
              {
LABEL_114:
                v187 = v439;
                *(v439 + 8 * (v138 >> 6) + 64) |= 1 << v138;
                v188 = (v187[6] + 16 * v138);
                *v188 = v110;
                v188[1] = v112;
                *(v187[7] + 8 * v138) = v136;

                v189 = v187[2];
                v68 = __OFADD__(v189, 1);
                v190 = v189 + 1;
                if (v68)
                {
                  goto LABEL_273;
                }

                v187[2] = v190;
                v457 = v187;
                goto LABEL_116;
              }

              goto LABEL_80;
            }
          }

          else
          {
            sub_53958(v142, v137);
            v39 = v439;
            v138 = sub_1ED4C(v110, v112);
            if ((v143 & 1) != (v144 & 1))
            {
              goto LABEL_289;
            }
          }

          if ((v143 & 1) == 0)
          {
            goto LABEL_114;
          }

LABEL_80:
          v145 = v138;

          v39 = v439;
          v146 = *(v439 + 56);
          v147 = *(v146 + 8 * v145);
          *(v146 + 8 * v145) = v136;

          v457 = v39;
LABEL_116:
          v101 = v402;
          if (a1 == v402)
          {
            goto LABEL_120;
          }
        }

        sub_1ED4C(v105, v107);
        v39 = v108;

        if ((v39 & 1) == 0)
        {
          goto LABEL_64;
        }

        if (a1 == v101)
        {
          goto LABEL_120;
        }
      }
    }

    v101 = *(&dword_10 + (v100 & 0xFFFFFFFFFFFFFF8));
    if (v101)
    {
      goto LABEL_53;
    }

LABEL_120:

    v191 = [v416 allDpads];
    v192 = sub_D7D28();

    if (v192 >> 62)
    {
      v193 = sub_D8078();
      v42 = v423;
      if (!v193)
      {
        goto LABEL_26;
      }

LABEL_122:
      a1 = 0;
      v420 = v192 & 0xC000000000000001;
      v403 = v192 & 0xFFFFFFFFFFFFFF8;
      v405 = v193;
      v399 = v192 + 32;
      while (1)
      {
        while (1)
        {
          if (v420)
          {
            v197 = sub_D7FF8();
          }

          else
          {
            if (a1 >= *(v403 + 16))
            {
              goto LABEL_266;
            }

            v197 = *(v399 + 8 * a1);
          }

          v198 = v197;
          v68 = __OFADD__(a1++, 1);
          if (v68)
          {
            goto LABEL_260;
          }

          v199 = [v197 name];
          v200 = sub_D7C18();
          v202 = v201;

          v39 = v456;
          if (*(v456 + 16))
          {
            break;
          }

LABEL_136:
          v205 = [v198 name];
          v206 = sub_D7C18();
          v208 = v207;

          if (v426 >= 2)
          {
            if (!*(sub_54798() + 16))
            {
              goto LABEL_158;
            }

            sub_1ED4C(v206, v208);
            v210 = v209;

            if (v210)
            {
              v211 = [v198 name];
              v212 = sub_D7C18();
              v214 = v213;

              if (!*(sub_54798() + 16))
              {
                goto LABEL_158;
              }

              sub_1ED4C(v212, v214);
              v216 = v215;

              if (v216)
              {

                v217 = [v198 name];
                v218 = sub_D7C18();
                v220 = v219;

                if (*(sub_54798() + 16))
                {
                  sub_1ED4C(v218, v220);
                  v222 = v221;

                  if (v222)
                  {

                    v223 = [v198 name];
                    v224 = sub_D7C18();
                    v409 = v225;
                    v413 = v224;

                    v226 = [v198 name];
                    if (!v226)
                    {
                      sub_D7C18();
                      v226 = sub_D7BD8();
                    }

                    v227 = [v198 remappingKey];
                    v228 = objc_allocWithZone(GCSElement);
                    v229 = sub_D7BD8();

                    v230 = sub_D7BD8();

                    v231 = [v228 initWithName:v226 nameLocalizationKey:v229 sfSymbolsName:v230 remappingKey:v227 kind:2];

                    v39 = &v456;
                    sub_52B14(v231, v413, v409);

                    goto LABEL_179;
                  }

LABEL_158:
                }

                else
                {
                }
              }
            }

            v245 = [v416 productCategoryKey];
            v246 = sub_D7C18();
            v248 = v247;

            v249 = v455;
            if (*(v455 + 16))
            {
              v250 = sub_1ED4C(v246, v248);
              v252 = v251;

              if (v252)
              {
                v253 = (*(v249 + 56) + (v250 << 6));
                v255 = v253[2];
                v254 = v253[3];
                v256 = v253[1];
                v439 = *v253;
                v440 = v256;
                v441 = v255;
                v442 = v254;
                v258 = *(&v439 + 1);
                v257 = v439;
                v259 = *(&v256 + 1);
                v260 = v256;
                v39 = *(&v255 + 1);
                v261 = v255;
                v262 = *(&v254 + 1);
                v263 = v254;
                sub_35294(&v439, &v430);
                if (v258)
                {
                  v439 = __PAIR128__(v258, v257);
                  v440 = __PAIR128__(v259, v260);
                  v441 = __PAIR128__(v39, v261);
                  v442 = __PAIR128__(v262, v263);

                  sub_553E8(&v439);
                  if (v39 >> 62)
                  {
                    v410 = sub_D8078();
                  }

                  else
                  {
                    v410 = *(&dword_10 + (v39 & 0xFFFFFFFFFFFFFF8));
                  }

                  v264 = 0;
                  while (v410 != v264)
                  {
                    if ((v39 & 0xC000000000000001) != 0)
                    {
                      v266 = sub_D7FF8();
                    }

                    else
                    {
                      if (v264 >= *(&dword_10 + (v39 & 0xFFFFFFFFFFFFFF8)))
                      {
                        goto LABEL_264;
                      }

                      v266 = *(v39 + 8 * v264 + 32);
                    }

                    v267 = v266;
                    if (__OFADD__(v264, 1))
                    {
                      goto LABEL_263;
                    }

                    v268 = [v266 name];
                    v269 = sub_D7C18();
                    v271 = v270;

                    v272 = [v198 name];
                    v273 = sub_D7C18();
                    v275 = v274;

                    if (v269 == v273 && v271 == v275)
                    {

LABEL_185:

                      goto LABEL_179;
                    }

                    v265 = sub_D8118();

                    ++v264;
                    if (v265)
                    {

                      goto LABEL_185;
                    }
                  }

                  v276 = [v416 productCategoryKey];
                  v277 = sub_D7C18();
                  v279 = v278;

                  v39 = &v455;
                  v281 = sub_52C0C(&v430, v277, v279);
                  if (*(v280 + 8))
                  {
                    v282 = v280;
                    v283 = v198;
                    sub_D7D08();
                    v42 = v423;
                    if (*(&dword_10 + (*(v282 + 40) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v282 + 40) & 0xFFFFFFFFFFFFFF8)) >> 1)
                    {
                      sub_D7D48();
                      v42 = v423;
                    }

                    v39 = v282 + 40;
                    sub_D7D68();
                    (v281)(&v430, 0);

                    goto LABEL_125;
                  }

                  (v281)(&v430, 0);

                  goto LABEL_179;
                }

                goto LABEL_178;
              }
            }

            else
            {
            }

            v262 = 0;
            v263 = 0;
            v39 = 0;
            v261 = 0;
            v259 = 0;
            v260 = 0;
            v257 = 0;
LABEL_178:

            v439 = v257;
            *&v440 = v260;
            *(&v440 + 1) = v259;
            *&v441 = v261;
            *(&v441 + 1) = v39;
            *&v442 = v263;
            *(&v442 + 1) = v262;
            sub_553E8(&v439);
LABEL_179:
            v42 = v423;
            goto LABEL_125;
          }

          v232 = v198;
          v39 = v456;
          v233 = swift_isUniquelyReferenced_nonNull_native();
          *&v439 = v39;
          v456 = 0x8000000000000000;
          v234 = sub_1ED4C(v206, v208);
          v236 = *(v39 + 16);
          v237 = (v235 & 1) == 0;
          v68 = __OFADD__(v236, v237);
          v238 = v236 + v237;
          if (v68)
          {
            goto LABEL_268;
          }

          v239 = v235;
          if (*(v39 + 24) < v238)
          {
            sub_53958(v238, v233);
            v39 = v439;
            v234 = sub_1ED4C(v206, v208);
            if ((v239 & 1) != (v240 & 1))
            {
              goto LABEL_289;
            }

LABEL_151:
            if ((v239 & 1) == 0)
            {
              goto LABEL_152;
            }

            goto LABEL_123;
          }

          if (v233)
          {
            goto LABEL_151;
          }

          v39 = &v439;
          v284 = v234;
          sub_54104();
          v234 = v284;
          if ((v239 & 1) == 0)
          {
LABEL_152:
            v241 = v439;
            *(v439 + 8 * (v234 >> 6) + 64) |= 1 << v234;
            v242 = (v241[6] + 16 * v234);
            *v242 = v206;
            v242[1] = v208;
            *(v241[7] + 8 * v234) = v232;

            v243 = v241[2];
            v68 = __OFADD__(v243, 1);
            v244 = v243 + 1;
            if (v68)
            {
              goto LABEL_274;
            }

            v241[2] = v244;
            v456 = v241;
            goto LABEL_124;
          }

LABEL_123:
          v194 = v234;

          v39 = v439;
          v195 = *(v439 + 56);
          v196 = *(v195 + 8 * v194);
          *(v195 + 8 * v194) = v232;

          v456 = v39;
LABEL_124:
          v42 = v423;
LABEL_125:
          v193 = v405;
          if (a1 == v405)
          {
            goto LABEL_26;
          }
        }

        sub_1ED4C(v200, v202);
        v204 = v203;

        if ((v204 & 1) == 0)
        {
          goto LABEL_136;
        }

        v42 = v423;
        if (a1 == v193)
        {
          goto LABEL_26;
        }
      }
    }

    v193 = *(&dword_10 + (v192 & 0xFFFFFFFFFFFFFF8));
    v42 = v423;
    if (v193)
    {
      goto LABEL_122;
    }

LABEL_26:

    v77 = v385;
    a1 = v401;
  }

  while (v385 != v391);
  LOBYTE(v465) = v387;
  BYTE1(v465) = v389;
  *(&v465 + 1) = v383;
  if (v426 > 1)
  {
    *(&v386 + 1) = 0x80000000000E5900;
    goto LABEL_195;
  }

  if (v394)
  {
    v377 = sub_D7FF8();
    goto LABEL_258;
  }

  if (*(v384 + 16))
  {
    v377 = *v381;
LABEL_258:
    v378 = v377;

    v379 = [v378 productCategoryKey];

    *&v386 = sub_D7C18();
    *(&v386 + 1) = v380;

    v42 = v423;
LABEL_196:
    v285 = *(a1 + *(v42 + 44));
    v286 = v457;

    v288 = sub_52CE0(v287);
    v289 = sub_CF530(v285, v288);

    v290 = v456;

    v292 = sub_52CE0(v291);
    v395 = v285;
    sub_CFC70(v285, v292);
    v294 = v293;

    v295 = swift_isUniquelyReferenced_nonNull_native();
    v454 = v286;
    sub_5514C(v290, sub_5462C, 0, v295, &v454);

    v296 = v454;
    *&v439 = 0x636972656E6547;
    *(&v439 + 1) = 0xE700000000000000;
    v440 = v386;
    *&v441 = _swiftEmptyArrayStorage;
    *(&v441 + 1) = _swiftEmptyArrayStorage;
    *&v442 = v289;
    *(&v442 + 1) = v294;
    sub_35294(&v439, &v430);
    v466 = _swiftEmptyArrayStorage;

    v466 = sub_35358(0, 1, 1, _swiftEmptyArrayStorage);
    v298 = *(v466 + 2);
    v297 = *(v466 + 3);
    v407 = v466;
    if (v298 >= v297 >> 1)
    {
      v407 = sub_35358((v297 > 1), v298 + 1, 1, v466);
    }

    *(v407 + 2) = v298 + 1;
    v299 = &v407[64 * v298];
    v300 = v439;
    v301 = v440;
    v302 = v442;
    *(v299 + 4) = v441;
    *(v299 + 5) = v302;
    *(v299 + 2) = v300;
    *(v299 + 3) = v301;
    v466 = v407;
    *&v464 = v289;
    *(&v464 + 1) = v294;
    v303 = v455 + 64;
    v304 = 1 << *(v455 + 32);
    v305 = -1;
    if (v304 < 64)
    {
      v305 = ~(-1 << v304);
    }

    v306 = v305 & *(v455 + 64);
    v39 = (v304 + 63) >> 6;
    v397 = v455;

    v307 = 0;
    v392 = v294;
    v393 = v289;
    v388 = v39;
    v390 = v303;
LABEL_202:
    if (v306)
    {
      goto LABEL_207;
    }

    while (1)
    {
      v308 = v307 + 1;
      if (__OFADD__(v307, 1))
      {
        goto LABEL_279;
      }

      if (v308 >= v39)
      {
        break;
      }

      v306 = *(v303 + 8 * v308);
      ++v307;
      if (v306)
      {
        v307 = v308;
LABEL_207:
        v404 = v307;
        v406 = v306;
        v309 = (*(v397 + 56) + ((v307 << 12) | (__clz(__rbit64(v306)) << 6)));
        v310 = v309[1];
        v312 = v309[2];
        v311 = v309[3];
        v429[0] = *v309;
        v429[1] = v310;
        v429[2] = v312;
        v429[3] = v311;
        v313 = v312;
        v314 = v309[1];
        v451 = *v309;
        v452 = v314;
        v453 = v309[2];
        sub_35294(v429, &v430);

        v315 = sub_CF530(v395, v313);

        sub_CFC70(v395, *(&v313 + 1));
        v317 = v316;

        v431 = v452;
        v432 = v453;
        v430 = v451;
        *&v433 = v315;
        *(&v433 + 1) = v317;
        v318 = *(&v453 + 1);
        v319 = v453;
        sub_35294(&v430, v448);
        v466 = v407;
        v320 = *(v407 + 2);
        v321 = *(v407 + 3);
        v411 = v315;

        v423 = v318;

        if (v320 >= v321 >> 1)
        {
          v407 = sub_35358((v321 > 1), v320 + 1, 1, v407);
        }

        *(v407 + 2) = v320 + 1;
        v322 = &v407[64 * v320];
        v323 = v430;
        v324 = v431;
        v325 = v433;
        *(v322 + 4) = v432;
        *(v322 + 5) = v325;
        *(v322 + 2) = v323;
        *(v322 + 3) = v324;
        v466 = v407;
        sub_52D70(v315);
        v39 = &v464 + 8;
        v400 = v317;
        sub_52E68(v317);
        a1 = v401;
        if (v319 >> 62)
        {
          v326 = sub_D8078();
          if (!v326)
          {
            goto LABEL_231;
          }

LABEL_211:
          v327 = 0;
          v417 = v319;
          v421 = v319 & 0xC000000000000001;
          v414 = (v319 & 0xFFFFFFFFFFFFFF8);
          while (2)
          {
            if (v421)
            {
              v329 = sub_D7FF8();
            }

            else
            {
              if (v327 >= v414[2])
              {
                goto LABEL_280;
              }

              v329 = *(v319 + 8 * v327 + 32);
            }

            v330 = v329;
            if (__OFADD__(v327, 1))
            {
              goto LABEL_269;
            }

            v427 = v327 + 1;
            v331 = [v329 name];
            v332 = sub_D7C18();
            v334 = v333;

            v335 = v330;
            v336 = swift_isUniquelyReferenced_nonNull_native();
            *&v448[0] = v296;
            v39 = v296;
            v338 = sub_1ED4C(v332, v334);
            v339 = v296[2];
            v340 = (v337 & 1) == 0;
            v341 = v339 + v340;
            if (__OFADD__(v339, v340))
            {
              goto LABEL_270;
            }

            a1 = v337;
            if (v296[3] >= v341)
            {
              if (v336)
              {
                if ((v337 & 1) == 0)
                {
                  goto LABEL_226;
                }
              }

              else
              {
                v39 = v448;
                sub_54104();
                if ((a1 & 1) == 0)
                {
                  goto LABEL_226;
                }
              }
            }

            else
            {
              sub_53958(v341, v336);
              v39 = *&v448[0];
              v342 = sub_1ED4C(v332, v334);
              if ((a1 & 1) != (v343 & 1))
              {
                goto LABEL_289;
              }

              v338 = v342;
              if ((a1 & 1) == 0)
              {
LABEL_226:
                v296 = *&v448[0];
                *(*&v448[0] + 8 * (v338 >> 6) + 64) |= 1 << v338;
                v344 = (v296[6] + 16 * v338);
                *v344 = v332;
                v344[1] = v334;
                *(v296[7] + 8 * v338) = v335;

                v345 = v296[2];
                v68 = __OFADD__(v345, 1);
                v346 = v345 + 1;
                if (v68)
                {
                  goto LABEL_277;
                }

                v296[2] = v346;
                goto LABEL_213;
              }
            }

            v296 = *&v448[0];
            v328 = *(*&v448[0] + 56);
            v39 = *(v328 + 8 * v338);
            *(v328 + 8 * v338) = v335;

LABEL_213:
            ++v327;
            a1 = v401;
            v319 = v417;
            if (v427 == v326)
            {
              goto LABEL_231;
            }

            continue;
          }
        }

        v326 = *(&dword_10 + (v319 & 0xFFFFFFFFFFFFFF8));
        if (v326)
        {
          goto LABEL_211;
        }

LABEL_231:

        v347 = v423;
        if (v423 >> 62)
        {
          v371 = sub_D8078();
          v347 = v423;
          v348 = v371;
          if (!v371)
          {
            goto LABEL_201;
          }

LABEL_233:
          v349 = 0;
          v428 = v347 & 0xC000000000000001;
          v422 = v347 & 0xFFFFFFFFFFFFFF8;
          while (2)
          {
            if (v428)
            {
              v352 = sub_D7FF8();
            }

            else
            {
              if (v349 >= *(v422 + 16))
              {
                goto LABEL_281;
              }

              v352 = *(v347 + 8 * v349 + 32);
            }

            v353 = v352;
            v354 = v349 + 1;
            if (__OFADD__(v349, 1))
            {
              goto LABEL_271;
            }

            v355 = [v352 name];
            v356 = sub_D7C18();
            v358 = v357;

            v359 = v353;
            a1 = swift_isUniquelyReferenced_nonNull_native();
            *&v448[0] = v296;
            v39 = v296;
            v360 = sub_1ED4C(v356, v358);
            v362 = v296[2];
            v363 = (v361 & 1) == 0;
            v68 = __OFADD__(v362, v363);
            v364 = v362 + v363;
            if (v68)
            {
              goto LABEL_272;
            }

            v365 = v361;
            if (v296[3] >= v364)
            {
              if (a1)
              {
                goto LABEL_246;
              }

              v39 = v448;
              v370 = v360;
              sub_54104();
              v360 = v370;
              a1 = v401;
              if (v365)
              {
                goto LABEL_234;
              }

LABEL_247:
              v296 = *&v448[0];
              *(*&v448[0] + 8 * (v360 >> 6) + 64) |= 1 << v360;
              v367 = (v296[6] + 16 * v360);
              *v367 = v356;
              v367[1] = v358;
              *(v296[7] + 8 * v360) = v359;

              v368 = v296[2];
              v68 = __OFADD__(v368, 1);
              v369 = v368 + 1;
              if (v68)
              {
                goto LABEL_278;
              }

              v296[2] = v369;
            }

            else
            {
              sub_53958(v364, a1);
              v39 = *&v448[0];
              v360 = sub_1ED4C(v356, v358);
              if ((v365 & 1) != (v366 & 1))
              {
                goto LABEL_289;
              }

LABEL_246:
              a1 = v401;
              if ((v365 & 1) == 0)
              {
                goto LABEL_247;
              }

LABEL_234:
              v350 = v360;

              v296 = *&v448[0];
              v351 = *(*&v448[0] + 56);
              v39 = *(v351 + 8 * v350);
              *(v351 + 8 * v350) = v359;
            }

            ++v349;
            v347 = v423;
            if (v354 == v348)
            {
              goto LABEL_201;
            }

            continue;
          }
        }

        v348 = *(&dword_10 + (v423 & 0xFFFFFFFFFFFFFF8));
        if (v348)
        {
          goto LABEL_233;
        }

LABEL_201:
        v306 = (v406 - 1) & v406;

        v448[0] = v451;
        v448[1] = v452;
        v448[2] = v453;
        v449 = v411;
        v450 = v400;
        sub_35304(v448);
        v294 = v392;
        v289 = v393;
        v39 = v388;
        v303 = v390;
        v307 = v404;
        goto LABEL_202;
      }
    }

    sub_28ACC(a1);

    *(&v463 + 1) = v296;
    *&v430 = 0x636972656E6547;
    *(&v430 + 1) = 0xE700000000000000;
    v431 = v386;
    *&v432 = _swiftEmptyArrayStorage;
    *(&v432 + 1) = _swiftEmptyArrayStorage;
    *&v433 = v289;
    *(&v433 + 1) = v294;
    sub_35304(&v430);

    goto LABEL_254;
  }

  __break(1u);
LABEL_289:
  sub_D8138();
  __break(1u);

  __break(1u);

  __break(1u);
  return result;
}