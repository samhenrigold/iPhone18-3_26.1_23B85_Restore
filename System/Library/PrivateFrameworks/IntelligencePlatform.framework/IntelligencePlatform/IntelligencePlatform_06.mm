uint64_t sub_1ABAF6188()
{
  sub_1ABA7BC10();
  *(v2 + 1184) = v1;
  *(v2 + 1192) = v0;

  if (v0)
  {
  }

  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

void sub_1ABAF62C8()
{
  v1 = 0;
  v174 = (v0 + 872);
  v175 = (v0 + 760);
  v2 = *(v0 + 1184);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v183 = *(v0 + 1184);
  v6 = -1;
  v7 = -1 << *(v183 + 32);
  v185 = v4;
  v186 = *(v0 + 1160);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v3;
  v9 = (63 - v7) >> 6;
  v184 = v9;
  if ((v6 & v3) == 0)
  {
LABEL_5:
    while (1)
    {
      v10 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        sub_1ABAD219C(&qword_1EB4D1ED0, &qword_1ABF34A68);
        sub_1ABA7ED8C();
        sub_1ABA7B9B4(v73, v74, v75, v76);
        v8 = 0;
        goto LABEL_10;
      }

      v8 = *(v4 + 8 * v10);
      ++v1;
      if (v8)
      {
        v1 = v10;
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  while (1)
  {
    v10 = v1;
LABEL_9:
    v11 = *(v0 + 952);
    v12 = *(v0 + 944);
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v14 = v13 | (v10 << 6);
    v15 = (*(v183 + 48) + 16 * v14);
    v17 = *v15;
    v16 = v15[1];
    sub_1ABAFC790(*(v183 + 56) + *(*(v0 + 920) + 72) * v14, v12, &qword_1EB4DBB00, &qword_1ABF34A00);
    v18 = sub_1ABAD219C(&qword_1EB4D1ED0, &qword_1ABF34A68);
    v19 = *(v18 + 48);
    *v11 = v17;
    v11[1] = v16;
    sub_1ABAFC6F0(v12, v11 + v19, &qword_1EB4DBB00, &qword_1ABF34A00);
    v20 = sub_1ABAB1000();
    sub_1ABA7B9B4(v20, v21, v22, v18);

LABEL_10:
    v23 = *(v0 + 960);
    sub_1ABAFC6F0(*(v0 + 952), v23, &qword_1EB4D1E50, &qword_1ABF34A08);
    v24 = sub_1ABAD219C(&qword_1EB4D1ED0, &qword_1ABF34A68);
    if (sub_1ABA7E1E0(v23, 1, v24) == 1)
    {
      break;
    }

    v25 = *(v0 + 960);
    v26 = *v25;
    v27 = v25[1];
    sub_1ABAFC6F0(v25 + *(v24 + 48), *(v0 + 936), &qword_1EB4DBB00, &qword_1ABF34A00);
    if (!*(v186 + 16))
    {
      goto LABEL_23;
    }

    sub_1ABA8EF60();
    sub_1ABA94F58(v26, v27, v28, sub_1ABA955E8, v29, v30, v31, v32, v166, v168, v169, v171, v172, v173, v174, v175, v176, v177);
    if ((v33 & 1) == 0)
    {
      goto LABEL_23;
    }

    v180 = v26;
    sub_1ABAB525C();
    memcpy((v0 + 104), (v35 + v34 * v36), 0x58uLL);
    v178 = *(v0 + 104);
    v182 = *(v0 + 112);
    v37 = *(v0 + 160);
    v38 = *(v0 + 168);
    sub_1ABAFC790(v0 + 104, v0 + 192, &qword_1EB4D1E98, &qword_1ABF34A40);
    v39 = sub_1ABA826A8();
    sub_1ABAF7FB8(v39, v40, v37, v38);

    if (!*(v186 + 16) || (sub_1ABA8EF60(), sub_1ABA94F58(v180, v27, v41, sub_1ABA955E8, v42, v43, v44, v45, v166, v168, v169, v171, v172, v173, v174, v175, v176, v177), (v46 & 1) == 0))
    {
LABEL_30:

      goto LABEL_23;
    }

    sub_1ABAB525C();
    memcpy((v0 + 280), (v48 + v47 * v49), 0x58uLL);
    v176 = *(v0 + 296);
    v177 = *(v0 + 304);
    v50 = *(v0 + 320);
    v51 = *(v0 + 328);
    v52 = *(v0 + 336);
    v53 = *(v0 + 344);
    sub_1ABAFC790(v0 + 280, v0 + 368, &qword_1EB4D1E98, &qword_1ABF34A40);
    sub_1ABAF7FB8(v50, v51, v52, v53);

    if (!*(v186 + 16))
    {

LABEL_23:

      if (qword_1ED871B38 != -1)
      {
        swift_once();
      }

      v77 = sub_1ABF237F4();
      sub_1ABA7AA24(v77, qword_1ED871B40);
      v78 = sub_1ABF237D4();
      v79 = sub_1ABF24674();
      v80 = os_log_type_enabled(v78, v79);
      v81 = *(v0 + 936);
      if (v80)
      {
        v82 = swift_slowAlloc();
        *v82 = 0;
        _os_log_impl(&dword_1ABA78000, v78, v79, "domainId or assetId not found in trialAssetsToGet", v82, 2u);
        MEMORY[0x1AC5AB8B0](v82, -1, -1);
      }

      v83 = v81;
      goto LABEL_28;
    }

    sub_1ABA8EF60();
    v59 = sub_1ABA94F58(v180, v27, v54, sub_1ABA955E8, v55, v56, v57, v58, v166, v168, v169, v171, v172, v173, v174, v175, v176, v177);
    v61 = v60;

    if ((v61 & 1) == 0)
    {
      goto LABEL_30;
    }

    sub_1ABAB525C();
    memcpy((v0 + 456), (v62 + v59 * v63), 0x58uLL);
    v65 = *(v0 + 496);
    v64 = *(v0 + 504);
    v66 = *(v0 + 512);
    v67 = *(v0 + 520) | (*(v0 + 522) << 16);
    v172 = *(v0 + 528);
    v173 = *(v0 + 536);
    sub_1ABAFC790(v0 + 456, v0 + 544, &qword_1EB4D1E98, &qword_1ABF34A40);

    v68 = sub_1ABAF70D4(v175, v178, v182);
    v181 = v69;
    if (*v69)
    {
      HIDWORD(v168) = v67;
      v170 = v65;
      v179 = v66;
      sub_1ABAFC790(*(v0 + 936), *(v0 + 928), &qword_1EB4DBB00, &qword_1ABF34A00);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v71 = *(v0 + 1080);
      v167 = v68;
      if (EnumCaseMultiPayload == 1)
      {
        v72 = *(v0 + 928);
        sub_1ABAF7FB8(v65, v64, v66, v67);

        *v71 = *v72;
      }

      else
      {
        v84 = *(v0 + 1040);
        v85 = *(v0 + 1008);
        v86 = *(v0 + 1000);
        v87 = *(v0 + 904);
        v88 = *(v0 + 896);
        sub_1ABA94734();
        sub_1ABAF7FE4(v89, v87, v90);
        (*(v85 + 32))(v71, v87, v86);
        v91 = v71 + *(v84 + 20);
        *v91 = v170;
        *(v91 + 1) = v64;
        *(v91 + 2) = v179;
        v91[26] = BYTE6(v168);
        *(v91 + 12) = WORD2(v168);
        *(v91 + 4) = v172;
        *(v91 + 5) = v173;
        sub_1ABAB2AA8(*(v87 + *(v88 + 20)));
        v92 = sub_1ABAB1000();
        sub_1ABA7B9B4(v92, v93, v94, v84);
      }

      swift_storeEnumTagMultiPayload();
      sub_1ABAFC6F0(*(v0 + 1080), *(v0 + 1072), &qword_1EB4D1E58, &qword_1ABF34A10);
      swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 872) = *v181;
      *v181 = 0x8000000000000000;
      sub_1ABA8EF60();
      v95 = v177;
      sub_1ABA94F58(v176, v177, v96, sub_1ABA955E8, v97, v98, v99, v100, v167, v168, v170, v64, v172, v173, v174, v175, v176, v177);
      sub_1ABA7D0D8();
      if (v103)
      {
        goto LABEL_81;
      }

      v104 = v101;
      v105 = v102;
      sub_1ABAD219C(&qword_1EB4D1EB8, &qword_1ABF34A58);
      if (sub_1ABF24C64())
      {
        sub_1ABA8EF60();
        v111 = sub_1ABA94F58(v176, v95, v106, sub_1ABA955E8, v107, v108, v109, v110, v166, v168, v169, v171, v172, v173, v174, v175, v176, v177);
        if ((v105 & 1) != (v112 & 1))
        {
          goto LABEL_76;
        }

        v104 = v111;
      }

      if (v105)
      {

        v113 = *v174;
        v114 = sub_1ABA8BA44();
        sub_1ABAFC62C(v114, v115);
      }

      else
      {
        v113 = *v174;
        sub_1ABA7D110(*v174 + 8 * (v104 >> 6));
        v116 = (*(v113 + 48) + 16 * v104);
        *v116 = v176;
        v116[1] = v117;
        v118 = sub_1ABA8BA44();
        sub_1ABAFC6F0(v118, v119, &qword_1EB4D1E58, &qword_1ABF34A10);
        v120 = *(v113 + 16);
        v103 = __OFADD__(v120, 1);
        v121 = v120 + 1;
        if (v103)
        {
          goto LABEL_82;
        }

        *(v113 + 16) = v121;
      }

      *v181 = v113;

      v68 = v166;
    }

    else
    {

      sub_1ABAF7FB8(v65, v64, v66, v67);
    }

    v68();
    v122 = *(v0 + 936);

    v83 = v122;
LABEL_28:
    sub_1ABAFC73C(v83, &qword_1EB4DBB00);
    v9 = v184;
    v4 = v185;
    if (!v8)
    {
      goto LABEL_5;
    }
  }

  v123 = *(v0 + 1152);
  if (((*(v0 + 1144) - 1) & *(v0 + 1144)) != 0)
  {
LABEL_57:
    sub_1ABA95FE4(v123);
    v187 = v133;
    v136 = *(v135 + 8 * v134);
    *(v0 + 1160) = v136;
    v137 = sub_1ABAD219C(&qword_1EB4D1EC8, &qword_1ABF34A60);
    v138 = sub_1ABF24D24();
    v139 = 0;
    sub_1ABA8B830(v138);
    sub_1ABAA03C4();
    v142 = v141 & v140;
    v144 = (v143 + 63) >> 6;
    v146 = v145 + 64;
    if ((v141 & v140) != 0)
    {
      while (1)
      {
        v147 = __clz(__rbit64(v142));
        v142 &= v142 - 1;
LABEL_64:
        v150 = v147 | (v139 << 6);
        v151 = (*(v136 + 48) + 16 * v150);
        v153 = *v151;
        v152 = v151[1];
        LOBYTE(v151) = *(*(v136 + 56) + 88 * v150 + 32);
        *(v146 + ((v150 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v150;
        v154 = (v138[6] + 16 * v150);
        *v154 = v153;
        v154[1] = v152;
        *(v138[7] + v150) = v151;
        v155 = v138[2];
        v103 = __OFADD__(v155, 1);
        v156 = v155 + 1;
        if (v103)
        {
          break;
        }

        v138[2] = v156;

        if (!v142)
        {
          goto LABEL_59;
        }
      }

LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
      return;
    }

LABEL_59:
    v148 = v139;
    while (1)
    {
      v139 = v148 + 1;
      if (__OFADD__(v148, 1))
      {
        goto LABEL_74;
      }

      if (v139 >= v144)
      {
        v157 = *(v0 + 1200);
        *(v0 + 1204) = v187;
        *(v0 + 1202) = v157;

        v158 = swift_task_alloc();
        *(v0 + 1176) = v158;
        *v158 = v0;
        sub_1ABAA3754(v158);
        sub_1ABA8B618();

        TrialAssetManager.assets(for:in:downloadOptions:)(v159, v160, v161);
        return;
      }

      v149 = *(v137 + 8 * v139);
      ++v148;
      if (v149)
      {
        v147 = __clz(__rbit64(v149));
        v142 = (v149 - 1) & v149;
        goto LABEL_64;
      }
    }
  }

  while (1)
  {
    v124 = v123 + 1;
    if (__OFADD__(v123, 1))
    {
      break;
    }

    if (v124 >= (((1 << *(v0 + 1206)) + 63) >> 6))
    {

      v125 = *(v0 + 1128);
      v126 = (*(v0 + 1120) - 1) & *(v0 + 1120);
      if (!v126)
      {
        while (1)
        {
          v127 = v125 + 1;
          if (__OFADD__(v125, 1))
          {
            break;
          }

          if (v127 >= (((1 << *(v0 + 1205)) + 63) >> 6))
          {

            sub_1ABAB5C10();

            sub_1ABA82A20();
            sub_1ABA8B618();

            __asm { BRAA            X2, X16 }
          }

          v126 = *(*(v0 + 1104) + 8 * v127 + 64);
          ++v125;
          if (v126)
          {
            v125 = v127;
            goto LABEL_53;
          }
        }

        __break(1u);
        goto LABEL_80;
      }

LABEL_53:
      *(v0 + 1128) = v125;
      *(v0 + 1120) = v126;
      v128 = sub_1ABAA27C0(v125);
      v130 = 1 << v129;
      if (v130 < 64)
      {
        v131 = ~(-1 << v130);
      }

      else
      {
        v131 = -1;
      }

      v132 = v131 & *(v128 + 64);

      v123 = 0;
      if (v132)
      {
        goto LABEL_57;
      }
    }

    else
    {
      ++v123;
      if (*(*(v0 + 1136) + 8 * v124 + 64))
      {
        v123 = v124;
        goto LABEL_57;
      }
    }
  }

LABEL_75:
  __break(1u);
LABEL_76:
  sub_1ABA8B618();

  sub_1ABF25104();
}

void sub_1ABAF6EF8()
{

  sub_1ABA7BBE0();
  sub_1ABAA0280();

  __asm { BRAA            X1, X16 }
}

uint64_t (*sub_1ABAF7064(uint64_t *a1))()
{
  v2 = sub_1ABAFDD10(0x28uLL);
  *a1 = v2;
  sub_1ABA96BD0();
  v2[4] = sub_1ABAFE134(v3, v4, v5);
  return sub_1ABAFF5B4;
}

uint64_t (*sub_1ABAF70D4(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  v6 = sub_1ABAFDD10(0x28uLL);
  *a1 = v6;
  v6[4] = sub_1ABAFE2F0(v6, a2, a3);
  return sub_1ABAFF5B4;
}

uint64_t (*sub_1ABAF7148(uint64_t *a1, uint64_t a2))()
{
  v4 = sub_1ABAFDD10(0x28uLL);
  *a1 = v4;
  v4[4] = sub_1ABAFE260(v4, a2);
  return sub_1ABAFF5B4;
}

uint64_t (*sub_1ABAF71AC(uint64_t *a1, uint64_t a2))()
{
  v4 = sub_1ABAFDD10(0x28uLL);
  *a1 = v4;
  v4[4] = sub_1ABAFE1CC(v4, a2);
  return sub_1ABAF7210;
}

void sub_1ABAF7214(void **a1)
{
  v1 = *a1;
  v2 = sub_1ABA8C520();
  v3(v2);

  free(v1);
}

uint64_t AssetRegistry.deinit()
{
  sub_1ABA84B54((v0 + 16));
  sub_1ABAFC7DC(*(v0 + 56), *(v0 + 64), *(v0 + 72));
  return v0;
}

uint64_t AssetRegistry.__deallocating_deinit()
{
  sub_1ABA84B54((v0 + 16));
  sub_1ABAFC7DC(*(v0 + 56), *(v0 + 64), *(v0 + 72));

  return swift_deallocClassInstance();
}

uint64_t sub_1ABAF72F0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1ABA7FDA0;

  return AssetRegistry.asset(for:in:)();
}

uint64_t sub_1ABAF73BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1ABAF7454;

  return AssetRegistry.assets(for:)();
}

uint64_t sub_1ABAF7454()
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

uint64_t sub_1ABAF7588@<X0>(_BYTE *a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a2;
  if (*a1)
  {
    v5 = type metadata accessor for InferenceSupportRemoteBackendXPC();
    v9 = v4;
    result = sub_1ABD4E658(v5, &v9);
    v7 = &off_1F207B058;
  }

  else
  {
    v5 = sub_1ABAD219C(&qword_1EB4D2040, &qword_1ABF35230);
    v8 = v4;
    result = sub_1ABB0CFA4(&v8);
    v7 = &off_1F20959E0;
  }

  a3[3] = v5;
  a3[4] = v7;
  *a3 = result;
  return result;
}

uint64_t sub_1ABAF7624@<X0>(uint64_t *a1@<X8>)
{
  v2 = [objc_allocWithZone(GDXPCAssetRegistryService) init];
  sub_1ABF21854();
  swift_allocObject();
  v3 = sub_1ABF21844();
  sub_1ABF217F4();
  swift_allocObject();
  v4 = sub_1ABF217E4();
  v5 = sub_1ABAD219C(&qword_1EB4D2038, &qword_1ABF35228);
  v6 = swift_allocObject();
  sub_1ABAD219C(&qword_1EB4D2040, &qword_1ABF35230);
  swift_allocObject();
  result = sub_1ABB0DD94(1, v2, v3, v4);
  *(v6 + 16) = result;
  a1[3] = v5;
  a1[4] = &protocol witness table for AssetRegistryRemoteWritableBackendXPC<A>;
  *a1 = v6;
  return result;
}

uint64_t sub_1ABAF7744(uint64_t a1)
{
  v2 = sub_1ABAFC844();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABAF7780(uint64_t a1)
{
  v2 = sub_1ABAFC844();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AssetRegistryParameters.LocalOptions.encode(to:)(void *a1)
{
  sub_1ABAD219C(&qword_1EB4D1ED8, &qword_1ABF34A70);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v2);
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABAFC844();
  sub_1ABF252E4();
  v3 = sub_1ABA7D0F8();
  return v4(v3);
}

uint64_t AssetRegistryParameters.RemoteEndpointType.hashValue.getter()
{
  v1 = *v0;
  sub_1ABF25234();
  MEMORY[0x1AC5AA8A0](v1);
  return sub_1ABF25294();
}

uint64_t sub_1ABAF79A8(uint64_t a1)
{
  v2 = *v1;
  sub_1ABF25234();
  MEMORY[0x1AC5AA8A0](v2);
  return sub_1ABF25294();
}

uint64_t sub_1ABAF7A00(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001ALL && 0x80000001ABF86A40 == a2)
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

uint64_t _s20IntelligencePlatform34LocationEmbedderInferenceInterfaceO6ErrorsO8RunErrorO9hashValueSivg_0()
{
  sub_1ABF25234();
  MEMORY[0x1AC5AA8A0](0);
  return sub_1ABF25294();
}

uint64_t sub_1ABAF7AE4(uint64_t a1)
{
  sub_1ABF25234();
  MEMORY[0x1AC5AA8A0](0);
  return sub_1ABF25294();
}

uint64_t sub_1ABAF7B28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABAF7A00(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1ABAF7B54(uint64_t a1)
{
  v2 = sub_1ABAFC898();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABAF7B90(uint64_t a1)
{
  v2 = sub_1ABAFC898();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AssetRegistryParameters.RemoteOptions.encode(to:)()
{
  sub_1ABA7BCA8();
  v1 = v0;
  sub_1ABAD219C(&qword_1EB4D1EE8, &qword_1ABF34A78);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v2);
  sub_1ABA93E20(v1, v1[3]);
  sub_1ABAFC898();
  sub_1ABF252E4();
  sub_1ABF24F44();
  v3 = sub_1ABA805B4();
  v4(v3);
  sub_1ABA7BC90();
}

void AssetRegistryParameters.RemoteOptions.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABA7BCA8();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = sub_1ABAD219C(&qword_1EB4D1EF8, &qword_1ABF34A80);
  sub_1ABA7BB64();
  v29 = v28;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &a9 - v31;
  sub_1ABA93E20(v24, v24[3]);
  sub_1ABAFC898();
  sub_1ABF252C4();
  if (!v20)
  {
    v33 = sub_1ABF24E24();
    (*(v29 + 8))(v32, v27);
    *v26 = v33 & 1;
  }

  sub_1ABA84B54(v24);
  sub_1ABA7BC90();
}

uint64_t AssetRegistryAsset.url.getter()
{
  sub_1ABF21CF4();
  sub_1ABA7BBB0();
  v0 = sub_1ABA7D000();

  return v1(v0);
}

uint64_t AssetRegistryAsset.assetEntry.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AssetRegistryAsset(0) + 20);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 26);
  v8 = *(v3 + 24);
  v9 = *(v3 + 32);
  v10 = *(v3 + 40);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 26) = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  sub_1ABAF8040(v4, v5, v6, v8);
}

uint64_t AssetRegistryAsset.metadata.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AssetRegistryAsset(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;

  return sub_1ABAFC8EC(v4, v5, v6, v7, v8, v9);
}

uint64_t AssetRegistryAsset.Metadata.TrialMetadata.experimentIdentifiers.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  return sub_1ABAFC95C(v2, v3);
}

uint64_t sub_1ABAF7FB8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 < 0)
  {
  }

  else
  {
    return sub_1ABAF7FCC();
  }
}

uint64_t sub_1ABAF7FE4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1ABA7BBB0();
  v4 = sub_1ABA7D000();
  v5(v4);
  return a2;
}

uint64_t sub_1ABAF8040(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 < 0)
  {
  }

  else
  {
    return sub_1ABAF7FD8();
  }
}

unint64_t sub_1ABAF8054()
{
  result = qword_1EB4D1E48;
  if (!qword_1EB4D1E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D1E48);
  }

  return result;
}

unint64_t sub_1ABAF80C8()
{
  result = qword_1EB4D1E78;
  if (!qword_1EB4D1E78)
  {
    sub_1ABAE2850(&qword_1EB4D1E68, &qword_1ABF34A20);
    sub_1ABAF814C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D1E78);
  }

  return result;
}

unint64_t sub_1ABAF814C()
{
  result = qword_1EB4D1E80;
  if (!qword_1EB4D1E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D1E80);
  }

  return result;
}

unint64_t sub_1ABAF81A8()
{
  sub_1ABA8E098();
  sub_1ABF25234();
  MEMORY[0x1AC5AA8D0](v0);
  sub_1ABF25294();
  v1 = sub_1ABA7ED80();

  return sub_1ABAF8BB8(v1, v2);
}

unint64_t sub_1ABAF8208()
{
  sub_1ABA8E098();
  sub_1ABF25234();
  sub_1ABF23D34();
  sub_1ABF25294();
  v0 = sub_1ABA7ED80();

  return sub_1ABAF8C18(v0, v1);
}

unint64_t sub_1ABAF8268()
{
  v0 = sub_1ABA90C64();
  sub_1ABB10A40(v0);
  v1 = sub_1ABA895D4();

  return sub_1ABAF8CC8(v1, v2);
}

unint64_t sub_1ABAF82A0(uint64_t a1, char a2)
{
  sub_1ABAB59CC();
  sub_1ABF25254();
  if ((a2 & 1) == 0)
  {
    MEMORY[0x1AC5AA8D0](a1);
  }

  v4 = sub_1ABF25294();

  return sub_1ABAF8E60(a1, a2 & 1, v4);
}

unint64_t sub_1ABAF8328()
{
  sub_1ABA8E098();
  sub_1ABF25234();
  sub_1ABF23D34();
  sub_1ABF25294();
  v0 = sub_1ABA7ED80();

  return sub_1ABAF8EE4(v0, v1);
}

unint64_t sub_1ABAF83B4()
{
  sub_1ABA8E098();
  sub_1ABF25234();
  CodableLocation.hash(into:)(v3);
  sub_1ABF25294();
  v0 = sub_1ABA7ED80();

  return sub_1ABAF92A0(v0, v1);
}

unint64_t sub_1ABAF8414(uint64_t a1)
{
  v1 = a1;
  sub_1ABAB59CC();
  sub_1ABF25264();
  v2 = sub_1ABF25294();
  return sub_1ABAFA604(v1, v2);
}

unint64_t sub_1ABAF84E4()
{
  sub_1ABA8E098();
  sub_1ABF25234();
  sub_1ABF23D34();
  sub_1ABF23D34();
  ViewService.DefaultResolverInteractionsView.CandidateType.hash(into:)(v3);
  sub_1ABF25294();
  v0 = sub_1ABA7ED80();

  return sub_1ABAF96B8(v0, v1);
}

uint64_t sub_1ABAF85A0(uint64_t a1, uint64_t (*a2)(_BYTE *, uint64_t), uint64_t (*a3)(uint64_t, uint64_t))
{
  sub_1ABAB59CC();
  a2(v8, a1);
  v5 = sub_1ABF25294();

  return a3(a1, v5);
}

unint64_t sub_1ABAF8618(uint64_t a1)
{
  v1 = a1;
  sub_1ABF25234();
  sub_1ABAFF27C(v4, v1);
  v2 = sub_1ABF25294();

  return sub_1ABAF9BE4(v1, v2);
}

unint64_t sub_1ABAF8684()
{
  sub_1ABA8E098();
  sub_1ABF25234();
  v1 = *(v0 + 33);
  sub_1ABF23D34();
  sub_1ABF25254();
  if (v1 != 2)
  {
    MEMORY[0x1AC5AA8A0](v1 & 1);
  }

  sub_1ABF25294();
  v2 = sub_1ABA7ED80();

  return sub_1ABAF9D80(v2, v3);
}

unint64_t sub_1ABAF8714(char a1)
{
  v3 = sub_1ABB11118(*(v1 + 40));

  return sub_1ABAF9E74(a1 & 1, v3);
}

unint64_t sub_1ABAF8758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_1ABA9FCD0();
  sub_1ABF23C04();
  sub_1ABF25234();
  sub_1ABF23D34();
  sub_1ABF25294();

  sub_1ABA8AEA4();

  return sub_1ABAF9FBC(v26, v27);
}

unint64_t sub_1ABAF87E4()
{
  sub_1ABA7ABC0();
  v1 = sub_1ABF249D4();

  return sub_1ABAFA0B4(v0, v1);
}

unint64_t sub_1ABAF8820(uint64_t a1)
{
  v1 = a1;
  sub_1ABAB59CC();
  sub_1ABBAE824(v1);
  sub_1ABF23D34();

  v2 = sub_1ABF25294();

  return sub_1ABAFA178(v1, v2);
}

unint64_t sub_1ABAF88A0(unsigned int a1)
{
  MEMORY[0x1AC5AA870](*(v1 + 40), a1, 4);
  v2 = sub_1ABA895D4();

  return sub_1ABAFA408(v2, v3);
}

void sub_1ABAF88E4()
{
  sub_1ABA7ABC0();
  sub_1ABF247A4();
  sub_1ABAFA664();
}

unint64_t sub_1ABAF892C(double a1)
{
  v2 = sub_1ABF25224();

  return sub_1ABAFA468(v2, a1);
}

void sub_1ABAF8978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_1ABA9FCD0();
  sub_1ABA8E098();
  sub_1ABF25234();
  sub_1ABF23D34();
  sub_1ABF23D34();
  sub_1ABF23D34();
  sub_1ABF25294();
  v26 = sub_1ABA7ED80();
  sub_1ABAFA4C4(v26, v27);
  sub_1ABA8AEA4();
}

void sub_1ABAF89FC()
{
  sub_1ABA7ABC0();
  sub_1ABF247A4();
  sub_1ABAFA664();
}

unint64_t sub_1ABAF8A44()
{
  v0 = sub_1ABA90C64();
  sub_1ABB114F4(v0);
  v1 = sub_1ABA895D4();

  return sub_1ABAFA720(v1, v2);
}

unint64_t sub_1ABAF8A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_1ABA9FCD0();
  sub_1ABAB59CC();
  sub_1ABF23D34();
  sub_1ABF23D34();
  sub_1ABF25294();
  sub_1ABA805B4();
  sub_1ABA8AEA4();

  return sub_1ABAFA88C(v26, v27, v28, v29, v30);
}

void sub_1ABAF8B70()
{
  sub_1ABA7ABC0();
  sub_1ABF247A4();
  sub_1ABAFA664();
}

unint64_t sub_1ABAF8BB8(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_1ABAF8C18(void *a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    v6 = (*(v2 + 48) + 40 * i);
    v7 = *v6 == *a1 && v6[1] == a1[1];
    if (v7 || (sub_1ABF25054() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1ABAF8CC8(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0x7463614670696B73;
          v8 = 0xEF7265646E655273;
        }

        else
        {
          v7 = 0xD000000000000013;
          v8 = 0x80000001ABF7EBE0;
        }
      }

      else
      {
        v8 = 0xE700000000000000;
        v7 = 0x73736572646461;
      }

      if (a1)
      {
        v9 = a1 == 1 ? 0x7463614670696B73 : 0xD000000000000013;
        v10 = a1 == 1 ? 0xEF7265646E655273 : 0x80000001ABF7EBE0;
      }

      else
      {
        v10 = 0xE700000000000000;
        v9 = 0x73736572646461;
      }

      if (v7 == v9 && v8 == v10)
      {
        break;
      }

      v12 = sub_1ABF25054();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1ABAF8E60(uint64_t a1, char a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = *(v3 + 48) + 16 * result;
      if (*(v8 + 8))
      {
        if (a2)
        {
          return result;
        }
      }

      else if ((a2 & 1) == 0 && *v8 == a1)
      {
        return result;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1ABAF8EE4(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    v6 = *(v2 + 48) + 40 * i;
    v7 = *(v6 + 16) == *(a1 + 16) && *(v6 + 24) == *(a1 + 24);
    if (v7 || (sub_1ABF25054() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1ABAF8F94(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE400000000000000;
      v8 = 1701736302;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0xD000000000000010;
          v7 = 0x80000001ABF7EE20;
          break;
        case 2:
          v7 = 0xE700000000000000;
          v8 = 0x7865646E496F6ELL;
          break;
        case 3:
          v9 = 0x47746E657665;
          goto LABEL_11;
        case 4:
          v8 = 0x79676F6C6F746E6FLL;
          v7 = 0xED00007865646E49;
          break;
        case 5:
          v8 = 0x49747865746E6F63;
          v7 = 0xEC0000007865646ELL;
          break;
        case 6:
          v9 = 0x476C61636F6CLL;
LABEL_11:
          v8 = v9 & 0xFFFFFFFFFFFFLL | 0x6172000000000000;
          v7 = 0xEF7865646E496870;
          break;
        case 7:
          v8 = 0xD00000000000001ALL;
          v7 = 0x80000001ABF7EE80;
          break;
        case 8:
          v8 = 0xD000000000000018;
          v7 = 0x80000001ABF7EEA0;
          break;
        default:
          break;
      }

      v10 = 0xE400000000000000;
      v11 = 1701736302;
      switch(a1)
      {
        case 1:
          v11 = 0xD000000000000010;
          v10 = 0x80000001ABF7EE20;
          break;
        case 2:
          v10 = 0xE700000000000000;
          v11 = 0x7865646E496F6ELL;
          break;
        case 3:
          v12 = 0x47746E657665;
          goto LABEL_21;
        case 4:
          v11 = 0x79676F6C6F746E6FLL;
          v10 = 0xED00007865646E49;
          break;
        case 5:
          v11 = 0x49747865746E6F63;
          v10 = 0xEC0000007865646ELL;
          break;
        case 6:
          v12 = 0x476C61636F6CLL;
LABEL_21:
          v11 = v12 & 0xFFFFFFFFFFFFLL | 0x6172000000000000;
          v10 = 0xEF7865646E496870;
          break;
        case 7:
          v11 = 0xD00000000000001ALL;
          v10 = 0x80000001ABF7EE80;
          break;
        case 8:
          v11 = 0xD000000000000018;
          v10 = 0x80000001ABF7EEA0;
          break;
        default:
          break;
      }

      if (v8 == v11 && v7 == v10)
      {
        break;
      }

      v14 = sub_1ABF25054();

      if ((v14 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1ABAF92A0(double *a1, uint64_t a2)
{
  v5 = type metadata accessor for CodableLocation(0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *a1;
    v13 = *(v6 + 72);
    do
    {
      sub_1ABAFEEF4(*(v2 + 48) + v13 * v10, v8);
      if (*v8 == v12 && v8[1] == a1[1] && v8[2] == a1[2] && v8[3] == a1[3] && v8[4] == a1[4] && v8[5] == a1[5] && v8[6] == a1[6])
      {
        v14 = sub_1ABF21E54();
        sub_1ABAFEF58(v8);
        if (v14)
        {
          return v10;
        }
      }

      else
      {
        sub_1ABAFEF58(v8);
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_1ABAF9470(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a4 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    do
    {
      v10 = *(v4 + 48) + 24 * v6;
      v11 = *(v10 + 16);
      v12 = *v10 == a1 && *(v10 + 8) == a2;
      if (v12 || (sub_1ABF25054() & 1) != 0)
      {
        v13 = 0xE500000000000000;
        v14 = 0x44495F474BLL;
        switch(v11)
        {
          case 1:
            v14 = 0x61746164696B6957;
            v13 = 0xEB0000000044495FLL;
            break;
          case 2:
            v13 = 0xE700000000000000;
            v14 = 0x44495F6D616441;
            break;
          case 3:
            v13 = 0xE600000000000000;
            v14 = 0x44495F434D55;
            break;
          case 4:
            v13 = 0xE800000000000000;
            v14 = 0x44495F7374617453;
            break;
          default:
            break;
        }

        v15 = 0xE500000000000000;
        v16 = 0x44495F474BLL;
        switch(a3)
        {
          case 1:
            v16 = 0x61746164696B6957;
            v15 = 0xEB0000000044495FLL;
            break;
          case 2:
            v15 = 0xE700000000000000;
            v16 = 0x44495F6D616441;
            break;
          case 3:
            v15 = 0xE600000000000000;
            v16 = 0x44495F434D55;
            break;
          case 4:
            v15 = 0xE800000000000000;
            v16 = 0x44495F7374617453;
            break;
          default:
            break;
        }

        if (v14 == v16 && v13 == v15)
        {

          return v6;
        }

        v18 = sub_1ABF25054();

        if (v18)
        {
          return v6;
        }
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_1ABAF96B8(uint64_t *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v19 = ~v3;
    v5 = a1[1];
    v23 = a1[2];
    v24 = *a1;
    v22 = a1[3];
    v6 = *(a1 + 3);
    v34 = *(a1 + 2);
    v35 = v6;
    v36 = *(a1 + 64);
    do
    {
      v7 = *(v21 + 48) + 72 * v4;
      v8 = *(v7 + 16);
      v9 = *(v7 + 24);
      v10 = *(v7 + 32);
      v11 = *(v7 + 40);
      v13 = *(v7 + 48);
      v12 = *(v7 + 56);
      v14 = *(v7 + 64);
      v15 = *v7 == v24 && *(v7 + 8) == v5;
      if (v15 || (sub_1ABF25054() & 1) != 0)
      {
        v16 = v8 == v23 && v9 == v22;
        if (v16 || (sub_1ABF25054() & 1) != 0)
        {
          v29 = v10;
          v30 = v11;
          v31 = v13;
          v32 = v12;
          v33 = v14;
          v26 = v34;
          v27 = v35;
          v28 = v36;

          sub_1ABAFF488(v10, v11, v13, v12, v14);
          sub_1ABAFF488(v10, v11, v13, v12, v14);
          sub_1ABAFF4E8(&v34, v25);
          v17 = static ViewService.DefaultResolverInteractionsView.CandidateType.== infix(_:_:)(&v29, &v26);
          sub_1ABAFF544(v26, *(&v26 + 1), v27, *(&v27 + 1), v28);
          sub_1ABAFF544(v29, v30, v31, v32, v33);

          sub_1ABAFF544(v10, v11, v13, v12, v14);
          if (v17)
          {
            break;
          }
        }
      }

      v4 = (v4 + 1) & v19;
    }

    while (((*(v20 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1ABAF98C8(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xEB00000000474946;
      v8 = 0x4E4F435F4452454ELL;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0xD00000000000001FLL;
          v7 = 0x80000001ABF7EC50;
          break;
        case 2:
          v8 = 0xD000000000000028;
          v7 = 0x80000001ABF7EC70;
          break;
        case 3:
          v8 = 0xD000000000000020;
          v7 = 0x80000001ABF7ECA0;
          break;
        case 4:
          v8 = 0xD00000000000001CLL;
          v7 = 0x80000001ABF7ECD0;
          break;
        case 5:
          v8 = 0xD00000000000002ELL;
          v7 = 0x80000001ABF7ECF0;
          break;
        case 6:
          v8 = 0xD00000000000001DLL;
          v7 = 0x80000001ABF7ED20;
          break;
        case 7:
          v8 = 0xD00000000000001FLL;
          v7 = 0x80000001ABF7ED40;
          break;
        case 8:
          break;
        default:
          v8 = 0xD000000000000022;
          v7 = 0x80000001ABF7EC20;
          break;
      }

      v9 = 0x4E4F435F4452454ELL;
      v10 = 0xEB00000000474946;
      switch(a1)
      {
        case 1:
          v9 = 0xD00000000000001FLL;
          v10 = 0x80000001ABF7EC50;
          break;
        case 2:
          v9 = 0xD000000000000028;
          v10 = 0x80000001ABF7EC70;
          break;
        case 3:
          v9 = 0xD000000000000020;
          v10 = 0x80000001ABF7ECA0;
          break;
        case 4:
          v9 = 0xD00000000000001CLL;
          v10 = 0x80000001ABF7ECD0;
          break;
        case 5:
          v9 = 0xD00000000000002ELL;
          v10 = 0x80000001ABF7ECF0;
          break;
        case 6:
          v9 = 0xD00000000000001DLL;
          v10 = 0x80000001ABF7ED20;
          break;
        case 7:
          v9 = 0xD00000000000001FLL;
          v10 = 0x80000001ABF7ED40;
          break;
        case 8:
          break;
        default:
          v9 = 0xD000000000000022;
          v10 = 0x80000001ABF7EC20;
          break;
      }

      if (v8 == v9 && v7 == v10)
      {
        break;
      }

      v12 = sub_1ABF25054();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1ABAF9BE4(int a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    v7 = a1;
    if ((a1 & 0x100) != 0)
    {
      v8 = 0x6974657263736964;
    }

    else
    {
      v8 = 0xD000000000000010;
    }

    if ((a1 & 0x100) != 0)
    {
      v9 = 0xED00007972616E6FLL;
    }

    else
    {
      v9 = 0x80000001ABF86150;
    }

    do
    {
      v10 = *(*(v2 + 48) + 2 * v4);
      if (*(*(v2 + 48) + 2 * v4) == 2)
      {
        if (v7 == 2)
        {
          return v4;
        }
      }

      else if (v7 != 2 && ((v10 ^ a1) & 1) == 0)
      {
        if ((v10 & 0x100) != 0)
        {
          v11 = 0x6974657263736964;
        }

        else
        {
          v11 = 0xD000000000000010;
        }

        if ((v10 & 0x100) != 0)
        {
          v12 = 0xED00007972616E6FLL;
        }

        else
        {
          v12 = 0x80000001ABF86150;
        }

        if (v11 == v8 && v12 == v9)
        {

          return v4;
        }

        v14 = sub_1ABF25054();

        if (v14)
        {
          return v4;
        }
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1ABAF9D80(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    v7 = *(a1 + 33);
    v9 = *(a1 + 16);
    v8 = *(a1 + 24);
    v10 = *(v2 + 48);
    do
    {
      v11 = v10 + 40 * v5;
      v12 = *(v11 + 33);
      v13 = *(v11 + 16) == v9 && *(v11 + 24) == v8;
      if (v13 || (sub_1ABF25054() & 1) != 0)
      {
        if (v12 == 2)
        {
          if (v7 == 2)
          {
            return v5;
          }
        }

        else if (v7 != 2 && ((v12 ^ v7) & 1) == 0)
        {
          return v5;
        }
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1ABAF9E74(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x7241746E65746E69;
    }

    else
    {
      v6 = 0x79676F6C6F746E6FLL;
    }

    if (a1)
    {
      v7 = 0xE900000000000067;
    }

    else
    {
      v7 = 0xE800000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x7241746E65746E69 : 0x79676F6C6F746E6FLL;
      v9 = *(*(v2 + 48) + v4) ? 0xE900000000000067 : 0xE800000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_1ABF25054();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1ABAF9FBC(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = sub_1ABF23C04();
    v7 = v6;
    if (v5 == sub_1ABF23C04() && v7 == v8)
    {

      return i;
    }

    v10 = sub_1ABF25054();

    if (v10)
    {
      return i;
    }
  }

  return i;
}

unint64_t sub_1ABAFA0B4(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_1ABAFDC04(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x1AC5AA040](v8, a1);
    sub_1ABAFDC60(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1ABAFA178(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xEA00000000006572;
      v8 = 0x6F63536369706F74;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0xD00000000000001BLL;
          v7 = 0x80000001ABF7F1E0;
          break;
        case 2:
          v8 = 0xD00000000000001ALL;
          v7 = 0x80000001ABF7F200;
          break;
        case 3:
          v8 = 0xD000000000000016;
          v7 = 0x80000001ABF7F220;
          break;
        case 4:
          v8 = 0xD00000000000001BLL;
          v7 = 0x80000001ABF7F240;
          break;
        case 5:
          v8 = 0xD000000000000017;
          v7 = 0x80000001ABF7F260;
          break;
        case 6:
          break;
        default:
          v8 = 0xD000000000000012;
          v7 = 0x80000001ABF7F1C0;
          break;
      }

      v9 = 0x6F63536369706F74;
      v10 = 0xEA00000000006572;
      switch(a1)
      {
        case 1:
          v9 = 0xD00000000000001BLL;
          v10 = 0x80000001ABF7F1E0;
          break;
        case 2:
          v9 = 0xD00000000000001ALL;
          v10 = 0x80000001ABF7F200;
          break;
        case 3:
          v9 = 0xD000000000000016;
          v10 = 0x80000001ABF7F220;
          break;
        case 4:
          v9 = 0xD00000000000001BLL;
          v10 = 0x80000001ABF7F240;
          break;
        case 5:
          v9 = 0xD000000000000017;
          v10 = 0x80000001ABF7F260;
          break;
        case 6:
          break;
        default:
          v9 = 0xD000000000000012;
          v10 = 0x80000001ABF7F1C0;
          break;
      }

      if (v8 == v9 && v7 == v10)
      {
        break;
      }

      v12 = sub_1ABF25054();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1ABAFA408(int a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_1ABAFA468(uint64_t a1, double a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return result;
}

unint64_t sub_1ABAFA4C4(uint64_t *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v19 = ~v3;
    v6 = *a1;
    v5 = a1[1];
    v21 = a1[3];
    v22 = a1[2];
    v7 = a1[4];
    v8 = a1[5];
    v9 = *(v2 + 48);
    do
    {
      v10 = (v9 + 48 * v4);
      v12 = v10[2];
      v11 = v10[3];
      v13 = v10[4];
      v14 = v10[5];
      v15 = *v10 == v6 && v10[1] == v5;
      if (v15 || (sub_1ABF25054() & 1) != 0)
      {
        v16 = v12 == v22 && v11 == v21;
        if (v16 || (sub_1ABF25054() & 1) != 0)
        {
          v17 = v13 == v7 && v14 == v8;
          if (v17 || (sub_1ABF25054() & 1) != 0)
          {
            break;
          }
        }
      }

      v4 = (v4 + 1) & v19;
    }

    while (((*(v20 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1ABAFA604(unsigned __int8 a1, uint64_t a2)
{
  v3 = a1;
  v4 = ~(-1 << *(v2 + 32));
    ;
  }

  return result;
}

void sub_1ABAFA664()
{
  sub_1ABA7E2A8();
  v1 = v0;
  v2 = v0 + 64;
  v3 = ~(-1 << *(v0 + 32));
  for (i = v4 & v3; ((1 << i) & *(v2 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_1ABA96BD0();
    sub_1ABAFF390(v6, v7, v8);
    v9 = *(*(v1 + 48) + 8 * i);
    v10 = sub_1ABF247B4();

    if (v10)
    {
      break;
    }
  }

  sub_1ABA7BC1C();
}

unint64_t sub_1ABAFA720(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0xE700000000000000;
          v8 = 0x796C68746E6F6DLL;
        }

        else
        {
          v7 = 0xE600000000000000;
          v8 = 0x6C61756E6E61;
        }
      }

      else
      {
        v7 = 0xE600000000000000;
        v8 = 0x796C6B656577;
      }

      if (a1)
      {
        v9 = a1 == 1 ? 0x796C68746E6F6DLL : 0x6C61756E6E61;
        v10 = a1 == 1 ? 0xE700000000000000 : 0xE600000000000000;
      }

      else
      {
        v10 = 0xE600000000000000;
        v9 = 0x796C6B656577;
      }

      if (v8 == v9 && v7 == v10)
      {
        break;
      }

      v12 = sub_1ABF25054();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1ABAFA88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v16 = v15[2];
      v17 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (sub_1ABF25054() & 1) != 0)
      {
        v19 = v16 == a3 && v17 == a4;
        if (v19 || (sub_1ABF25054() & 1) != 0)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_1ABAFA988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a4 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v24 = ~v5;
    do
    {
      v8 = *(v4 + 48) + 24 * v6;
      v9 = *v8;
      v10 = *(v8 + 8);
      v11 = *(v8 + 16);
      v12 = sub_1ABF23C04();
      v14 = v13;
      if (v12 == sub_1ABF23C04() && v14 == v15)
      {

        v19 = v9;
      }

      else
      {
        v17 = sub_1ABF25054();

        v18 = v9;

        if ((v17 & 1) == 0)
        {

          goto LABEL_21;
        }
      }

      if (v11)
      {
        if (a3)
        {
          if (v10 == a2 && v11 == a3)
          {

            return v6;
          }

          v21 = sub_1ABF25054();

          if (v21)
          {
            return v6;
          }
        }

        else
        {
        }
      }

      else
      {

        if (!a3)
        {
          return v6;
        }
      }

LABEL_21:
      v6 = (v6 + 1) & v24;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

uint64_t sub_1ABAFAB44(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  v4 = a1[1];
  v7 = a1[2];
  v6 = a1[3];
  v22 = a1[4];
  v23 = a1[5];
  sub_1ABAF8328();
  sub_1ABA7D0D8();
  if (v10)
  {
    __break(1u);
LABEL_12:
    result = sub_1ABF25104();
    __break(1u);
    return result;
  }

  v11 = v8;
  v12 = v9;
  v13 = sub_1ABAD219C(&qword_1EB4D1F88, &qword_1ABF35178);
  if (sub_1ABA8B454(v13))
  {
    sub_1ABAF8328();
    sub_1ABA905B0();
    if (!v15)
    {
      goto LABEL_12;
    }

    v11 = v14;
  }

  if (v12)
  {
    v16 = (*(*v2 + 56) + 48 * v11);
    *v16 = v5;
    v16[1] = v4;
    v16[2] = v7;
    v16[3] = v6;
    v16[4] = v22;
    v16[5] = v23;
  }

  else
  {
    v25 = v5;
    v26 = v4;
    v27 = v7;
    v28 = v6;
    v29 = v22;
    v30 = v23;
    v18 = sub_1ABA7D0EC();
    sub_1ABAFC3FC(v18, v19, v20, v21);
    return sub_1ABAFF06C(a2, v24);
  }
}

uint64_t sub_1ABAFADB8()
{
  sub_1ABA7E2A8();
  sub_1ABAA0A1C();
  v4 = v3;
  v6 = v5;
  v8 = sub_1ABAA06A0(v5, v7);
  sub_1ABAF8474(v8);
  sub_1ABA7D0D8();
  if (v9)
  {
    __break(1u);
LABEL_14:
    result = sub_1ABF25104();
    __break(1u);
    return result;
  }

  sub_1ABA8BC34();
  v10 = sub_1ABAD219C(&qword_1EB4D1F58, &unk_1ABF35140);
  if (sub_1ABA97424(v10))
  {
    v11 = sub_1ABA82DB8();
    sub_1ABAF8474(v11);
    sub_1ABAA3404();
    if (!v13)
    {
      goto LABEL_14;
    }

    v2 = v12;
  }

  if (v1)
  {
    *(*(*v0 + 56) + 8 * v2) = v6;
    sub_1ABA7BC1C();
  }

  else
  {
    sub_1ABAA3414();
    sub_1ABAFC468(v16, v17, v18, v4, v6, v19);
    sub_1ABA7BC1C();
  }
}

_OWORD *sub_1ABAFAEC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1ABAA00E4();
  v16 = sub_1ABA979A4(v14, v15);
  sub_1ABAC92C0(v16);
  sub_1ABA7D0D8();
  if (v17)
  {
    __break(1u);
LABEL_14:
    result = sub_1ABF25104();
    __break(1u);
    return result;
  }

  sub_1ABAFF5E8();
  v18 = sub_1ABAD219C(&qword_1EB4D1FB8, &qword_1ABF351A8);
  if (sub_1ABA9924C(v18))
  {
    sub_1ABAC92C0(v10);
    sub_1ABA905B0();
    if (!v20)
    {
      goto LABEL_14;
    }

    v13 = v19;
  }

  if (v12)
  {
    sub_1ABA84B54((*(*v11 + 56) + 32 * v13));
    sub_1ABA7D000();
    sub_1ABA82A00();

    return sub_1ABAFF238(v21, v22);
  }

  else
  {
    sub_1ABA96BD0();
    sub_1ABA82A00();

    return sub_1ABAFC4E8(v25, v26, v27, v28);
  }
}

void sub_1ABAFAFA0()
{
  sub_1ABAA00E4();
  sub_1ABAA4858();
  sub_1ABA7ED68();
  sub_1ABAF85A0(v1, v5, sub_1ABAF98C8);
  sub_1ABA7D0D8();
  if (v6)
  {
    __break(1u);
LABEL_12:
    sub_1ABF25104();
    __break(1u);
    return;
  }

  sub_1ABAFF5E8();
  v7 = sub_1ABAD219C(&qword_1EB4D2030, &qword_1ABF35220);
  if (sub_1ABA9924C(v7))
  {
    sub_1ABA7ED68();
    sub_1ABAF85A0(v1, v8, sub_1ABAF98C8);
    sub_1ABA905B0();
    if (!v10)
    {
      goto LABEL_12;
    }

    v4 = v9;
  }

  v11 = *v2;
  if (v3)
  {
    *(*(v11 + 56) + 8 * v4) = v0;
    sub_1ABA82A00();
  }

  else
  {
    sub_1ABAFDF20(v4, v1, v0, v11);
    sub_1ABA82A00();
  }
}

unint64_t sub_1ABAFB1D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1ABAA00E4();
  v17 = sub_1ABA979A4(v15, v16);
  sub_1ABAC92C0(v17);
  sub_1ABA7D0D8();
  if (v18)
  {
    __break(1u);
LABEL_14:
    result = sub_1ABF25104();
    __break(1u);
    return result;
  }

  sub_1ABAFF5E8();
  v19 = sub_1ABAD219C(&qword_1EB4D1F50, &qword_1ABF35138);
  if (sub_1ABA9924C(v19))
  {
    sub_1ABAC92C0(v11);
    sub_1ABA905B0();
    if (!v21)
    {
      goto LABEL_14;
    }

    v14 = v20;
  }

  if (v13)
  {
    *(*(*v12 + 56) + 8 * v14) = v10;
    sub_1ABA82A00();
  }

  else
  {
    sub_1ABA96BD0();
    sub_1ABA82A00();

    return sub_1ABAFDBC0(v24, v25, v26, v27);
  }
}

uint64_t sub_1ABAFB2B0(uint64_t a1, float a2)
{
  sub_1ABAF8820(a1);
  sub_1ABA7D0D8();
  if (v7)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = v5;
  v9 = v6;
  v10 = sub_1ABAD219C(&qword_1EB4D2000, &qword_1ABF351F0);
  result = sub_1ABA8B454(v10);
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  result = sub_1ABAF8820(a1);
  if ((v9 & 1) != (v12 & 1))
  {
LABEL_11:
    result = sub_1ABF25104();
    __break(1u);
    return result;
  }

  v8 = result;
LABEL_5:
  v13 = *v2;
  if (v9)
  {
    *(v13[7] + 4 * v8) = a2;
  }

  else
  {

    return sub_1ABAFDD44(v8, a1, v13, a2);
  }

  return result;
}

void sub_1ABAFB7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1ABA8B234();
  a23 = v29;
  a24 = v30;
  sub_1ABA979A4(v31, v32);
  sub_1ABAF8328();
  sub_1ABA7D0D8();
  if (v33)
  {
    __break(1u);
LABEL_12:
    sub_1ABF25104();
    __break(1u);
    return;
  }

  sub_1ABA82A14();
  v34 = sub_1ABAD219C(&qword_1EB4D2010, &qword_1ABF35200);
  if (sub_1ABA9924C(v34))
  {
    sub_1ABAF8328();
    sub_1ABA814EC();
    if (!v36)
    {
      goto LABEL_12;
    }

    v27 = v35;
  }

  if (v28)
  {
    v37 = (*(*v26 + 56) + 48 * v27);
    v38 = v24[1];
    *v37 = *v24;
    v37[1] = v38;
    v37[2] = v24[2];

    swift_unknownObjectRelease();
    sub_1ABAB5424();
  }

  else
  {
    sub_1ABA96BD0();
    sub_1ABAFC3FC(v40, v41, v42, v43);
    sub_1ABAFF06C(v25, &a10);
    sub_1ABAB5424();
  }
}

uint64_t sub_1ABAFB8D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1ABAA00E4();
  sub_1ABAA4858();
  sub_1ABAA2F84();
  sub_1ABAF85A0(v10, v14, sub_1ABAF8F94);
  sub_1ABA7D0D8();
  if (v15)
  {
    __break(1u);
LABEL_14:
    result = sub_1ABF25104();
    __break(1u);
    return result;
  }

  sub_1ABAFF5E8();
  v16 = sub_1ABAD219C(&qword_1EB4D1FC0, &unk_1ABF351B0);
  if (sub_1ABA9924C(v16))
  {
    sub_1ABAA2F84();
    sub_1ABAF85A0(v10, v17, sub_1ABAF8F94);
    sub_1ABA905B0();
    if (!v19)
    {
      goto LABEL_14;
    }

    v13 = v18;
  }

  if (v12)
  {
    sub_1ABA84B54((*(*v11 + 56) + 40 * v13));
    sub_1ABA7D000();
    sub_1ABA82A00();

    return sub_1ABA946C0(v20, v21);
  }

  else
  {
    sub_1ABA82A00();

    return sub_1ABAFDE3C(v24, v25, v26, v27);
  }
}

void sub_1ABAFBC28()
{
  sub_1ABAA00E4();
  sub_1ABAA4858();
  sub_1ABAAFEB4();
  sub_1ABA7D0D8();
  if (v5)
  {
    __break(1u);
LABEL_12:
    sub_1ABF25104();
    __break(1u);
    return;
  }

  sub_1ABA82A14();
  v6 = sub_1ABAD219C(&qword_1EB4D1FE0, &qword_1ABF351D0);
  if (sub_1ABA9924C(v6))
  {
    sub_1ABAAFEB4();
    sub_1ABA814EC();
    if (!v8)
    {
      goto LABEL_12;
    }

    v3 = v7;
  }

  v9 = *v2;
  if (v4)
  {
    *(*(v9 + 56) + 8 * v3) = v0;
    sub_1ABA82A00();
  }

  else
  {
    sub_1ABAFDF20(v3, v1, v0, v9);
    sub_1ABA82A00();
  }
}

void sub_1ABAFBCFC(uint64_t a1, uint64_t a2, double a3)
{
  sub_1ABA8EF60();
  sub_1ABA94F58(v9, v10, v11, sub_1ABA955E8, v12, v13, v14, v15, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47);
  sub_1ABA7D0D8();
  if (v16)
  {
    __break(1u);
LABEL_12:
    sub_1ABF25104();
    __break(1u);
    return;
  }

  sub_1ABAFF5E8();
  v17 = sub_1ABAD219C(&qword_1EB4D1FD8, &qword_1ABF4ACE0);
  if (sub_1ABA9924C(v17))
  {
    sub_1ABA8EF60();
    sub_1ABA94F58(a1, a2, v18, sub_1ABA955E8, v19, v20, v21, v22, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48);
    sub_1ABA905B0();
    if (!v24)
    {
      goto LABEL_12;
    }

    v5 = v23;
  }

  if (v4)
  {
    *(*(*v3 + 56) + 8 * v5) = a3;
  }

  else
  {
    sub_1ABA96BD0();
    sub_1ABAFDF54(v25, v26, v27, v28);
  }
}

void sub_1ABAFBE2C()
{
  sub_1ABAA0A1C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_1ABA8EF60();
  v9 = sub_1ABA82DB8();
  sub_1ABA94F58(v9, v10, v11, v12, v13, v14, v15, v16, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54);
  sub_1ABA7D0D8();
  if (v17)
  {
    __break(1u);
LABEL_12:
    sub_1ABF25104();
    __break(1u);
    return;
  }

  sub_1ABA8BC34();
  v18 = sub_1ABAD219C(&qword_1EB4D1FE8, &qword_1ABF351D8);
  if (sub_1ABA97424(v18))
  {
    sub_1ABA8EF60();
    v19 = sub_1ABA82DB8();
    sub_1ABA94F58(v19, v20, v21, v22, v23, v24, v25, v26, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55);
    sub_1ABAA3404();
    if (!v28)
    {
      goto LABEL_12;
    }

    v2 = v27;
  }

  if (v1)
  {
    v29 = *(*v0 + 56) + 24 * v2;
    *v29 = v8;
    *(v29 + 8) = v6;
    *(v29 + 16) = v4 & 1;
    sub_1ABA8B438();
  }

  else
  {
    sub_1ABAA3414();
    sub_1ABAFDF8C(v30, v31, v32, v6, v33, v34);
    sub_1ABA8B438();
  }
}

void sub_1ABAFC060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1ABA8B234();
  a23 = v29;
  a24 = v30;
  sub_1ABAA5690(v31, v32);
  sub_1ABAF8208();
  sub_1ABA7D0D8();
  if (v33)
  {
    __break(1u);
LABEL_12:
    sub_1ABF25104();
    __break(1u);
    return;
  }

  sub_1ABA82A14();
  v34 = sub_1ABAD219C(&qword_1EB4D1FB0, &qword_1ABF351A0);
  if (sub_1ABA9924C(v34))
  {
    sub_1ABAF8208();
    sub_1ABA814EC();
    if (!v36)
    {
      goto LABEL_12;
    }

    v27 = v35;
  }

  if (v28)
  {
    *(*(*v26 + 56) + 8 * v27) = v25;
    sub_1ABAB5424();
  }

  else
  {
    v38 = sub_1ABA82DB8();
    sub_1ABAFC3B4(v38, v39, v25, v40);
    sub_1ABAFF1DC(v24, &a10);
    sub_1ABAB5424();
  }
}

void sub_1ABAFC280(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v10 = sub_1ABAA06A0(a1, a2);
  sub_1ABAF8B08(v10, v11, v12);
  sub_1ABA7D0D8();
  if (v13)
  {
    __break(1u);
LABEL_14:
    sub_1ABF25104();
    __break(1u);
    return;
  }

  sub_1ABA9771C();
  v14 = sub_1ABAD219C(&qword_1EB4D2048, &qword_1ABF35238);
  if (sub_1ABA83EEC(v14))
  {
    sub_1ABAF8B08(a2, a3, a4);
    sub_1ABA814EC();
    if (!v16)
    {
      goto LABEL_14;
    }

    v6 = v15;
  }

  v17 = *v4;
  if (v5)
  {
    v18 = v17[7];
    v19 = *(v18 + 8 * v6);
    *(v18 + 8 * v6) = a1;
  }

  else
  {
    sub_1ABAFE0E4(v6, a2, a3, a4, a1, v17);

    v20 = a2;
  }
}

void sub_1ABAFC3B4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1ABAA3F2C(a1, a2, a3, a4);
  v7 = v6 + 40 * v4;
  v9 = *(v8 + 16);
  *v7 = *v8;
  *(v7 + 16) = v9;
  *(v7 + 32) = *(v8 + 32);
  *(*(v5 + 56) + 8 * v4) = v10;
  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    sub_1ABA82DC4(v5, v13);
  }
}

unint64_t sub_1ABAFC3FC(unint64_t result, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 40 * result;
  v5 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a2 + 32);
  v6 = (a4[7] + 48 * result);
  v7 = a3[1];
  *v6 = *a3;
  v6[1] = v7;
  v6[2] = a3[2];
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

void sub_1ABAFC468(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = sub_1ABAA0E6C(a1, a2, a3, a4, a5, a6);
  v9 = v8 + 24 * v6;
  *v9 = v10;
  *(v9 + 8) = v11;
  *(v9 + 16) = v12;
  *(*(v7 + 56) + 8 * v6) = v13;
  v14 = *(v7 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    sub_1ABA96F48(v7, v16);
  }
}

void sub_1ABAFC4A8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_1ABA7E2E4(a1, a2, a3, a4, a5);
  v8 = v7 + 40 * v5;
  v10 = *(v9 + 16);
  *v8 = *v9;
  *(v8 + 16) = v10;
  *(v8 + 32) = *(v9 + 32);
  v11 = *(v6 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    sub_1ABAB6578(v6, v13);
  }
}

_OWORD *sub_1ABAFC4E8(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1ABAFF238(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_1ABAFC550(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_1ABAFC594(unint64_t result, __int16 a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 2 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_1ABAFC5D8()
{
  result = qword_1EB4D1EB0;
  if (!qword_1EB4D1EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D1EB0);
  }

  return result;
}

uint64_t sub_1ABAFC62C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4D1E58, &qword_1ABF34A10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1ABAFC69C()
{
  result = qword_1EB4D1EC0;
  if (!qword_1EB4D1EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D1EC0);
  }

  return result;
}

uint64_t sub_1ABAFC6F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1ABA7BCC0(a1, a2, a3, a4);
  sub_1ABA7BBB0();
  v5 = sub_1ABA7D000();
  v6(v5);
  return v4;
}

uint64_t sub_1ABAFC73C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1ABAA06A0(a1, a2);
  sub_1ABAD219C(v3, v4);
  sub_1ABA7BBB0();
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_1ABAFC790(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1ABA7BCC0(a1, a2, a3, a4);
  sub_1ABA7BBB0();
  v5 = sub_1ABA7D000();
  v6(v5);
  return v4;
}

uint64_t sub_1ABAFC7DC(uint64_t result, uint64_t a2, char a3)
{
  if (a3 && a3 != 2)
  {
    if (a3 != 1)
    {
      return v3;
    }
  }
}

unint64_t sub_1ABAFC844()
{
  result = qword_1EB4D1EE0;
  if (!qword_1EB4D1EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D1EE0);
  }

  return result;
}

unint64_t sub_1ABAFC898()
{
  result = qword_1EB4D1EF0;
  if (!qword_1EB4D1EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D1EF0);
  }

  return result;
}

uint64_t sub_1ABAFC8EC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result)
  {

    return sub_1ABAFC95C(a2, a3);
  }

  return result;
}

uint64_t sub_1ABAFC95C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1ABAFC9CC()
{
  result = qword_1EB4D1F00;
  if (!qword_1EB4D1F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D1F00);
  }

  return result;
}

unint64_t sub_1ABAFCA20()
{
  result = qword_1EB4D1F08;
  if (!qword_1EB4D1F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D1F08);
  }

  return result;
}

unint64_t sub_1ABAFCA78()
{
  result = qword_1EB4D1F10;
  if (!qword_1EB4D1F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D1F10);
  }

  return result;
}

uint64_t sub_1ABAFCAF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABAFCB34()
{
  result = qword_1EB4D1F18;
  if (!qword_1EB4D1F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D1F18);
  }

  return result;
}

unint64_t sub_1ABAFCB88()
{
  result = qword_1EB4D1F20;
  if (!qword_1EB4D1F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D1F20);
  }

  return result;
}

uint64_t sub_1ABAFCC04(uint64_t a1)
{
  v1 = type metadata accessor for AssetRegistryAsset(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t dispatch thunk of AssetRegistryProtocol.asset(for:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 16) + **(a7 + 16));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1ABA7FDA0;

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of AssetRegistryProtocol.assets(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(a3 + 24) + **(a3 + 24));
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1ABAFCEF0;
  sub_1ABA96BD0();

  return v6();
}

uint64_t sub_1ABAFCEF0()
{
  sub_1ABA7BBF8();
  v2 = v1;
  sub_1ABA7BC10();
  v3 = *v0;
  sub_1ABA7BBC0();
  *v4 = v3;

  sub_1ABA82A20();

  return v5(v2);
}

__n128 initializeBufferWithCopyOfBuffer for VisualUnderstandingStreamingGallery.ClusterResult(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1ABAFD060(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
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

uint64_t sub_1ABAFD0A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

__n128 _s6ClauseV16ComparisonClauseVwCP(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1ABAFD100(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1ABAFD140(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AssetRegistryParameters(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 0x3FFF)
  {
    if (a2 + 49153 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 49153 < 0xFF0000)
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
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 49154;
    return v5 + 1;
  }

LABEL_17:
  v5 = (*a1 & 0xFE | (*a1 >> 15) | (*a1 >> 1) & 0x3F00) ^ 0x3FFF;
  if (v5 >= 0x3FFE)
  {
    v5 = -1;
  }

  return v5 + 1;
}

uint64_t storeEnumTagSinglePayload for AssetRegistryParameters(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 49153 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 49153 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x3FFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x3FFE)
  {
    v6 = ((a2 - 0x3FFF) >> 16) + 1;
    *result = a2 - 0x3FFF;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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
          v7 = ((-a2 >> 1) & 0x1FFF) - (a2 << 13);
          *result = (4 * v7) & 0xFE00 | (2 * (v7 & 0x7F));
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AssetRegistryRemoteBackendType(unsigned __int8 *a1, unsigned int a2)
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
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AssetRegistryParameters.RemoteEndpointType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for AssetRegistryParameters.RemoteOptions(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for AssetRegistryParameters.RemoteOptions(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1ABAFD688(uint64_t a1)
{
  result = sub_1ABF21CF4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1ABAFD70C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1ABAFD724(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1ABAFD73C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ABAFD78C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1ABAFD7E8(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_1ABAFD824(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1ABAFD864(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for AssetRegistryOverrideAssetEntryParameters.OverrideCodingKeys(unsigned int *a1, int a2)
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

_BYTE *sub_1ABAFD910(_BYTE *result, int a2, int a3)
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

unint64_t sub_1ABAFD9D0()
{
  result = qword_1EB4D1F28;
  if (!qword_1EB4D1F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D1F28);
  }

  return result;
}

unint64_t sub_1ABAFDA28()
{
  result = qword_1EB4D1F30;
  if (!qword_1EB4D1F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D1F30);
  }

  return result;
}

unint64_t sub_1ABAFDA80()
{
  result = qword_1EB4D1F38;
  if (!qword_1EB4D1F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D1F38);
  }

  return result;
}

unint64_t sub_1ABAFDAD8()
{
  result = qword_1EB4D1F40;
  if (!qword_1EB4D1F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D1F40);
  }

  return result;
}

unint64_t sub_1ABAFDB30()
{
  result = qword_1EB4D1F48;
  if (!qword_1EB4D1F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D1F48);
  }

  return result;
}

void sub_1ABAFDB84(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = sub_1ABAA0E6C(a1, a2, a3, a4, a5, a6);
  v9 = (v8 + 16 * v6);
  *v9 = v10;
  v9[1] = v11;
  v12 = (*(v7 + 56) + 16 * v6);
  *v12 = v13;
  v12[1] = v14;
  v15 = *(v7 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    sub_1ABA96F48(v7, v17);
  }
}

unint64_t sub_1ABAFDBC0(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

void *sub_1ABAFDD10(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

unint64_t sub_1ABAFDD44(unint64_t result, char a2, void *a3, float a4)
{
  a3[(result >> 6) + 8] |= 1 << result;
  *(a3[6] + result) = a2;
  *(a3[7] + 4 * result) = a4;
  v4 = a3[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v6;
  }

  return result;
}

void sub_1ABAFDD88(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1ABAA3F2C(a1, a2, a3, a4);
  v7 = (v6 + 48 * v4);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;
  v7[2] = v8[2];
  *(*(v5 + 56) + 8 * v4) = v10;
  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    sub_1ABA82DC4(v5, v13);
  }
}

uint64_t sub_1ABAFDDD0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1ABAFF42C(a4, a5[7] + 8 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_1ABAFDE3C(unint64_t a1, char a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  result = sub_1ABA946C0(a3, a4[7] + 40 * a1);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

void *sub_1ABAFDEA8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1ABA7E2E4(a1, a2, a3, a4, a5);
  result = memcpy((v7 + 112 * v6), v8, 0x70uLL);
  v10 = *(a5 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v12;
  }

  return result;
}

void sub_1ABAFDEF4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_1ABA7E2E4(a1, a2, a3, a4, a5);
  *(v8 + 8 * v5) = v7;
  v9 = *(v6 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    sub_1ABAB6578(v6, v11);
  }
}

void sub_1ABAFDF20(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1ABAA3F2C(a1, a2, a3, a4);
  *(v7 + v4) = v6;
  *(*(v5 + 56) + 8 * v4) = v8;
  v9 = *(v5 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    sub_1ABA82DC4(v5, v11);
  }
}

void sub_1ABAFDF54(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1ABAA3F2C(a1, a2, a3, a4);
  v7 = (v6 + 16 * v4);
  *v7 = v8;
  v7[1] = v9;
  *(*(v5 + 56) + 8 * v4) = v10;
  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    sub_1ABA82DC4(v5, v13);
  }
}

void sub_1ABAFDF8C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = sub_1ABAA0E6C(a1, a2, a3, a4, a5, a6);
  v9 = (v8 + 16 * v6);
  *v9 = v10;
  v9[1] = v11;
  v12 = *(v7 + 56) + 24 * v6;
  *v12 = v13;
  *(v12 + 8) = v14;
  *(v12 + 16) = v15 & 1;
  v16 = *(v7 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    sub_1ABA96F48(v7, v18);
  }
}

void sub_1ABAFDFD8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1ABAA3F2C(a1, a2, a3, a4);
  *(v7 + 8 * v4) = v6;
  *(*(v5 + 56) + 8 * v4) = v8;
  v9 = *(v5 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    sub_1ABA82DC4(v5, v11);
  }
}

unint64_t sub_1ABAFE00C(unint64_t result, _OWORD *a2, _OWORD *a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = (a4[6] + 48 * result);
  v5 = a2[1];
  *v4 = *a2;
  v4[1] = v5;
  v4[2] = a2[2];
  v6 = (a4[7] + 48 * result);
  v7 = a3[1];
  *v6 = *a3;
  v6[1] = v7;
  *(v6 + 25) = *(a3 + 25);
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_1ABAFE074(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a7[6] + 32 * a1);
  *v8 = a2;
  v8[1] = a3;
  v8[2] = a4;
  v8[3] = a5;
  result = sub_1ABAFF124(a6, a7[7] + 8 * a1);
  v10 = a7[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v12;
  }

  return result;
}

unint64_t sub_1ABAFE0E4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 24 * result);
  *v6 = a2;
  v6[1] = a3;
  v6[2] = a4;
  *(a6[7] + 8 * result) = a5;
  v7 = a6[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v9;
  }

  return result;
}

uint64_t (*sub_1ABAFE134(void *a1, uint64_t a2, uint64_t a3))()
{
  v6 = sub_1ABAFDD10(0x50uLL);
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_1ABAFEDF0(v6);
  v6[9] = sub_1ABAFE3E4(v6 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1ABAFF5C0;
}

uint64_t (*sub_1ABAFE1CC(void *a1, uint64_t a2))()
{
  v4 = sub_1ABAFDD10(0x50uLL);
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4[8] = sub_1ABAFF248(v4);
  v4[9] = sub_1ABAFE74C((v4 + 4), a2, isUniquelyReferenced_nonNull_native);
  return sub_1ABAFE25C;
}

uint64_t (*sub_1ABAFE260(void *a1, uint64_t a2))()
{
  v4 = sub_1ABAFDD10(0x50uLL);
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4[8] = sub_1ABAFEDF0(v4);
  v4[9] = sub_1ABAFE980((v4 + 4), a2, isUniquelyReferenced_nonNull_native);
  return sub_1ABAFF5C0;
}

uint64_t (*sub_1ABAFE2F0(void *a1, uint64_t a2, uint64_t a3))()
{
  v6 = sub_1ABAFDD10(0x50uLL);
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_1ABAFEDF0(v6);
  v6[9] = sub_1ABAFEB84(v6 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1ABAFF5C0;
}

void sub_1ABAFE388(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v3 = sub_1ABA8C520();
  v2(v3);

  free(v1);
}

void (*sub_1ABAFE3E4(void *a1, uint64_t a2, uint64_t a3, char a4))()
{
  v5 = v4;
  v9 = sub_1ABAFDD10(0x98uLL);
  *a1 = v9;
  *(v9 + 16) = a3;
  *(v9 + 17) = v4;
  *(v9 + 15) = a2;
  v10 = *v4;
  v15 = sub_1ABA94F58(a2, a3, MEMORY[0x1E69E60C8], sub_1ABA955E8, v11, v12, v13, v14, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49);
  v9[33] = v16 & 1;
  if (__OFADD__(*(v10 + 16), (v16 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v17 = v15;
  v18 = v16;
  sub_1ABAD219C(&qword_1EB4D1F60, &unk_1ABF35150);
  if (sub_1ABF24C64())
  {
    v23 = sub_1ABA94F58(a2, a3, MEMORY[0x1E69E60C8], sub_1ABA955E8, v19, v20, v21, v22, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50);
    if ((v18 & 1) == (v24 & 1))
    {
      v17 = v23;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_1ABF25104();
    __break(1u);
    return result;
  }

LABEL_5:
  *(v9 + 18) = v17;
  if (v18)
  {
    v25 = *(*v5 + 56) + 40 * v17;
    v26 = *v25;
    v27 = *(v25 + 8);
    v28 = *(v25 + 24);
    v29 = *(v25 + 32);
  }

  else
  {
    v26 = 0;
    v28 = 0;
    v29 = 0;
    v27 = 0uLL;
  }

  *(v9 + 10) = v26;
  *(v9 + 88) = v27;
  *(v9 + 13) = v28;
  v9[112] = v29;
  return sub_1ABAFE5A0;
}

void sub_1ABAFE5A0()
{
  sub_1ABA7E2A8();
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 96);
  v5 = *(*v0 + 104);
  v6 = *(*v0 + 112);
  v7 = *(*v0 + 33);
  if ((v8 & 1) == 0)
  {
    if (!v3)
    {
      if ((*(*v0 + 33) & 1) == 0)
      {
        goto LABEL_15;
      }

      v17 = *(*v0 + 80);
      sub_1ABAFEEA0(*(**(v1 + 136) + 48) + 16 * *(v1 + 144));
      sub_1ABF24C84();
      goto LABEL_14;
    }

    v9 = *(v1 + 144);
    v10 = **(v1 + 136);
    if ((v7 & 1) == 0)
    {
      v11 = *(v1 + 120);
      v18 = *(v1 + 128);
      *(v1 + 40) = v2;
      *(v1 + 48) = v3;
      *(v1 + 56) = v4;
      *(v1 + 64) = v5;
      *(v1 + 72) = v6;
      v14 = v1 + 40;
      v13 = v18;
      goto LABEL_13;
    }

LABEL_7:
    v15 = *(v10 + 56) + 40 * v9;
    *v15 = v2;
    *(v15 + 8) = v3;
    *(v15 + 16) = v4;
    *(v15 + 24) = v5;
    *(v15 + 32) = v6;
    goto LABEL_15;
  }

  if (v3)
  {
    v9 = *(v1 + 144);
    v10 = **(v1 + 136);
    if ((v7 & 1) == 0)
    {
      v11 = *(v1 + 120);
      v12 = *(v1 + 128);
      *v1 = v2;
      *(v1 + 8) = v3;
      *(v1 + 16) = v4;
      *(v1 + 24) = v5;
      *(v1 + 32) = v6;
      v13 = v12;
      v14 = v1;
LABEL_13:
      v17 = v2;
      sub_1ABAFC4A8(v9, v11, v13, v14, v10);

LABEL_14:
      v2 = v17;
      goto LABEL_15;
    }

    goto LABEL_7;
  }

  if (*(*v0 + 33))
  {
    v16 = *(*v0 + 80);
    sub_1ABAFEEA0(*(**(v1 + 136) + 48) + 16 * *(v1 + 144));
    sub_1ABF24C84();
    v2 = v16;
  }

LABEL_15:
  v19 = *(v1 + 80);
  v20 = *(v1 + 88);
  sub_1ABAFEE18(v2, v3);
  sub_1ABAFEE5C(v19, v20);
  sub_1ABA7BC1C();

  free(v21);
}

unint64_t (*sub_1ABAFE74C(uint64_t a1, uint64_t a2, char a3))(unint64_t result)
{
  v4 = v3;
  *(a1 + 8) = v3;
  *(a1 + 24) = a2;
  v7 = *v3;
  v8 = sub_1ABAF85A0(a2, sub_1ABBB62B8, sub_1ABAF98C8);
  *(a1 + 25) = v9 & 1;
  if (__OFADD__(*(v7 + 16), (v9 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v10 = v8;
  v11 = v9;
  sub_1ABAD219C(&qword_1EB4D1EA0, &qword_1ABF34A48);
  if (sub_1ABF24C64())
  {
    v12 = sub_1ABAF85A0(a2, sub_1ABBB62B8, sub_1ABAF98C8);
    if ((v11 & 1) == (v13 & 1))
    {
      v10 = v12;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_1ABF25104();
    __break(1u);
    return result;
  }

LABEL_5:
  *(a1 + 16) = v10;
  if (v11)
  {
    v14 = *(*(*v4 + 56) + 8 * v10);
  }

  else
  {
    v14 = 0;
  }

  *a1 = v14;
  return sub_1ABAFE8B4;
}

unint64_t sub_1ABAFE8B4(unint64_t result)
{
  v1 = *result;
  if (*result)
  {
    v2 = **(result + 8);
    if (*(result + 25))
    {
      *(v2[7] + 8 * *(result + 16)) = v1;
    }

    else
    {
      v3 = *(result + 24);
      v4 = *(result + 16);

      return sub_1ABAFC550(v4, v3, v1, v2);
    }
  }

  else if (*(result + 25))
  {
    sub_1ABAD219C(&qword_1EB4D1E88, &qword_1ABF34A30);
    sub_1ABA94588();
    sub_1ABA7D000();

    return sub_1ABF24C84();
  }

  return result;
}

unint64_t (*sub_1ABAFE980(uint64_t a1, uint64_t a2, char a3))(unint64_t result)
{
  v4 = v3;
  *(a1 + 8) = v3;
  *(a1 + 24) = a2;
  v7 = *v3;
  v8 = sub_1ABAF8618(a2);
  *(a1 + 26) = v9 & 1;
  if (__OFADD__(*(v7 + 16), (v9 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v10 = v8;
  v11 = v9;
  sub_1ABAD219C(&qword_1EB4D1E90, &qword_1ABF34A38);
  if (sub_1ABF24C64())
  {
    v12 = sub_1ABAF8618(a2);
    if ((v11 & 1) == (v13 & 1))
    {
      v10 = v12;
      goto LABEL_5;
    }

LABEL_10:
    sub_1ABAD219C(&qword_1EB4D1E68, &qword_1ABF34A20);
    result = sub_1ABF25104();
    __break(1u);
    return result;
  }

LABEL_5:
  *(a1 + 16) = v10;
  if (v11)
  {
    v14 = *(*(*v4 + 56) + 8 * v10);
  }

  else
  {
    v14 = 0;
  }

  *a1 = v14;
  return sub_1ABAFEAA4;
}

unint64_t sub_1ABAFEAA4(unint64_t result)
{
  v1 = *result;
  if (*result)
  {
    v2 = **(result + 8);
    if (*(result + 26))
    {
      *(v2[7] + 8 * *(result + 16)) = v1;
    }

    else
    {
      v3 = *(result + 24);
      v4 = *(result + 16);

      return sub_1ABAFC594(v4, v3, v1, v2);
    }
  }

  else if (*(result + 26))
  {
    sub_1ABAD219C(&qword_1EB4D1E68, &qword_1ABF34A20);
    sub_1ABAD219C(&qword_1EB4D1E70, &qword_1ABF34A28);
    sub_1ABAF80C8();
    sub_1ABA7D000();

    return sub_1ABF24C84();
  }

  return result;
}

void (*sub_1ABAFEB84(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1)
{
  v5 = v4;
  v9 = sub_1ABAFDD10(0x30uLL);
  *a1 = v9;
  v9[2] = a3;
  v9[3] = v4;
  v9[1] = a2;
  v10 = *v4;
  v15 = sub_1ABA94F58(a2, a3, MEMORY[0x1E69E60C8], sub_1ABA955E8, v11, v12, v13, v14, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45);
  *(v9 + 40) = v16 & 1;
  if (__OFADD__(*(v10 + 16), (v16 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v17 = v15;
  v18 = v16;
  sub_1ABAD219C(&qword_1EB4D2028, &qword_1ABF35218);
  if (sub_1ABF24C64())
  {
    v23 = sub_1ABA94F58(a2, a3, MEMORY[0x1E69E60C8], sub_1ABA955E8, v19, v20, v21, v22, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46);
    if ((v18 & 1) == (v24 & 1))
    {
      v17 = v23;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_1ABF25104();
    __break(1u);
    return result;
  }

LABEL_5:
  v9[4] = v17;
  if (v18)
  {
    v25 = *(*(*v5 + 56) + 8 * v17);
  }

  else
  {
    v25 = 0;
  }

  *v9 = v25;
  return sub_1ABAFED14;
}

void sub_1ABAFED14(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 40);
  if (v2)
  {
    v4 = v1[4];
    v5 = *v1[3];
    if (v3)
    {
      *(*(v5 + 56) + 8 * v4) = v2;
    }

    else
    {
      sub_1ABAFDEF4(v4, v1[1], v1[2], v2, v5);
    }
  }

  else if ((*a1)[5])
  {
    sub_1ABAFEEA0(*(*v1[3] + 48) + 16 * v1[4]);
    sub_1ABAD219C(&qword_1EB4D1E60, &qword_1ABF34A18);
    sub_1ABF24C84();
  }

  free(v1);
}

uint64_t (*sub_1ABAFEDF0(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1ABAFF5AC;
}

uint64_t sub_1ABAFEE18(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1ABAFEE5C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1ABAFEEF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CodableLocation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABAFEF58(uint64_t a1)
{
  v2 = type metadata accessor for CodableLocation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *sub_1ABAFF238(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t (*sub_1ABAFF248(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1ABAFF270;
}

uint64_t sub_1ABAFF27C(uint64_t a1, __int16 a2)
{
  if (a2 == 2)
  {
    return sub_1ABF25254();
  }

  sub_1ABF25254();
  sub_1ABF25254();
  sub_1ABF23D34();
}

uint64_t sub_1ABAFF390(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_1ABAFF488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    if (a5 != 1)
    {
      return result;
    }
  }
}

uint64_t sub_1ABAFF544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    if (a5 != 1)
    {
      return result;
    }
  }
}

uint64_t sub_1ABAFF60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{

  return sub_1ABA94F58(a2, v18, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t AssetRegistryAssetEntry.location.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 26);
  v6 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 26) = v5;
  *(a1 + 24) = v6;
  return sub_1ABAF8040(v2, v3, v4, v6);
}

__n128 AssetRegistryAssetEntry.init(location:ratchetNumber:userInfo:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, __n128 *a4@<X8>)
{
  v4 = a1[1].n128_u64[0];
  v5 = a1[1].n128_u16[4];
  v6 = a1[1].n128_u8[10];
  result = *a1;
  *a4 = *a1;
  a4[1].n128_u64[0] = v4;
  a4[1].n128_u8[10] = v6;
  a4[1].n128_u16[4] = v5;
  a4[2].n128_u64[0] = a2;
  a4[2].n128_u64[1] = a3;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AssetRegistryAssetEntry.verifyValidity()()
{
  v1 = *(v0 + 24);
  if ((v1 & 0x80) == 0)
  {
    if (v1)
    {
      sub_1ABAAA4A0();
      v2 = sub_1ABAAA44C();
      if ((sub_1ABA80668(v2, MEMORY[0x1E69E6158], v3, v4, v2, v5, v6, v7, 47) & 1) == 0)
      {
        return;
      }

      sub_1ABAFC69C();
    }

    else
    {
      sub_1ABAAA4A0();
      v8 = sub_1ABAAA44C();
      if (sub_1ABA80668(v8, MEMORY[0x1E69E6158], v9, v10, v8, v11, v12, v13, 47))
      {
        return;
      }

      sub_1ABAF8054();
    }

    swift_allocError();
    *v14 = 0;
    swift_willThrow();
  }
}

uint64_t sub_1ABAFF778(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4E74656863746172 && a2 == 0xED00007265626D75;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6F666E4972657375 && a2 == 0xE800000000000000)
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

uint64_t sub_1ABAFF890(char a1)
{
  if (!a1)
  {
    return 0x6E6F697461636F6CLL;
  }

  if (a1 == 1)
  {
    return 0x4E74656863746172;
  }

  return 0x6F666E4972657375;
}

uint64_t sub_1ABAFF8FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABAFF778(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABAFF924(uint64_t a1)
{
  v2 = sub_1ABAFFEF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABAFF960(uint64_t a1)
{
  v2 = sub_1ABAFFEF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AssetRegistryAssetEntry.encode(to:)(void *a1)
{
  v21 = sub_1ABAD219C(&qword_1EB4D2050, &unk_1ABF35240);
  sub_1ABA7BB64();
  v23 = v3;
  MEMORY[0x1EEE9AC00](v4);
  v5 = *v1;
  v6 = *(v1 + 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 26);
  v9 = *(v1 + 24);
  v10 = *(v1 + 32);
  v20[0] = *(v1 + 40);
  v20[1] = v10;
  v11 = a1[3];
  v20[2] = a1[4];
  v12 = a1;
  v14 = v20 - v13;
  sub_1ABA93E20(v12, v11);
  sub_1ABAF8040(v5, v6, v7, v9);
  sub_1ABAFFEF0();
  sub_1ABF252E4();
  v24 = v5;
  v25 = v6;
  v26 = v7;
  v28 = v8;
  v15 = v21;
  v27 = v9;
  v29 = 0;
  sub_1ABAFFF44();
  v16 = v22;
  sub_1ABF24F84();
  sub_1ABAF7FB8(v24, v25, v26, v27);
  if (v16)
  {
    return (*(v23 + 8))(v14, v15);
  }

  v18 = v20[0];
  v19 = v23;
  LOBYTE(v24) = 1;
  sub_1ABF24F74();
  v24 = v18;
  v29 = 2;
  sub_1ABAD219C(&qword_1EB4D2068, &qword_1ABF41380);
  sub_1ABAFFFEC(&qword_1EB4D2070, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
  sub_1ABF24F14();
  return (*(v19 + 8))(v14, v15);
}

uint64_t AssetRegistryAssetEntry.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1ABAD219C(&qword_1EB4D2078, &qword_1ABF35250);
  sub_1ABA7BB64();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABAFFEF0();
  sub_1ABF252C4();
  if (v2)
  {
    return sub_1ABA84B54(a1);
  }

  sub_1ABAFFF98();
  sub_1ABF24E64();
  v6 = v19;
  LOBYTE(v19) = 1;
  v18 = sub_1ABF24E54();
  sub_1ABAD219C(&qword_1EB4D2068, &qword_1ABF41380);
  sub_1ABAFFFEC(&qword_1ED86B400, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
  sub_1ABF24DF4();
  v7 = sub_1ABA8E0A8();
  v8(v7);
  *a2 = v6;
  *(a2 + 8) = v20;
  *(a2 + 16) = v21;
  *(a2 + 26) = v23;
  *(a2 + 24) = v22;
  *(a2 + 32) = v18;
  *(a2 + 40) = v19;
  v9 = sub_1ABA7D120();
  sub_1ABAF8040(v9, v10, v11, v12);

  sub_1ABA84B54(a1);
  v13 = sub_1ABA7D120();
  sub_1ABAF7FB8(v13, v14, v15, v16);
}

unint64_t sub_1ABAFFEF0()
{
  result = qword_1EB4D2058;
  if (!qword_1EB4D2058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2058);
  }

  return result;
}

unint64_t sub_1ABAFFF44()
{
  result = qword_1EB4D2060;
  if (!qword_1EB4D2060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2060);
  }

  return result;
}

unint64_t sub_1ABAFFF98()
{
  result = qword_1EB4D2080;
  if (!qword_1EB4D2080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2080);
  }

  return result;
}

uint64_t sub_1ABAFFFEC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1ABAE2850(&qword_1EB4D2068, &qword_1ABF41380);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1ABB00058(uint64_t a1)
{
  *(a1 + 8) = sub_1ABB00088();
  result = sub_1ABB000DC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABB00088()
{
  result = qword_1EB4D2088;
  if (!qword_1EB4D2088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2088);
  }

  return result;
}

unint64_t sub_1ABB000DC()
{
  result = qword_1EB4D2090;
  if (!qword_1EB4D2090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2090);
  }

  return result;
}

uint64_t sub_1ABB00148(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 40);
      if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1ABB0019C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AssetRegistryAssetEntry.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1ABB002EC()
{
  result = qword_1EB4D2098;
  if (!qword_1EB4D2098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2098);
  }

  return result;
}

unint64_t sub_1ABB00344()
{
  result = qword_1EB4D20A0;
  if (!qword_1EB4D20A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D20A0);
  }

  return result;
}

unint64_t sub_1ABB0039C()
{
  result = qword_1EB4D20A8;
  if (!qword_1EB4D20A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D20A8);
  }

  return result;
}

void AssetRegistryAssetLocation.LocalAsset.localURL.getter()
{
  sub_1ABA7BCA8();
  v1 = sub_1ABF21C24();
  sub_1ABA7BB64();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7BC58();
  v7 = v6 - v5;
  sub_1ABAD219C(&qword_1EB4D1E40, &qword_1ABF349F0);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v19 - v9;
  v11 = v0[1];
  if (v0[3])
  {
    v12 = v0[2];
    LOBYTE(v20) = *v0 & 1;
    v21 = v11;
    v22 = v12;
    AssetRegistryAssetLocation.LocalAsset.LocalRelativeAsset.localURL.getter();
  }

  else
  {
    v20 = *v0;
    v21 = v11;
    sub_1ABA7E32C();
    v19[1] = v13;
    v19[2] = v14;
    sub_1ABAAA4A0();
    sub_1ABAAA44C();
    if (sub_1ABF23B44())
    {
      v15 = sub_1ABF21CF4();
      sub_1ABA7B9B4(v10, 1, 1, v15);
      (*(v3 + 104))(v7, *MEMORY[0x1E6968F70], v1);

      sub_1ABF21CD4();
    }

    else
    {
      v16 = sub_1ABAF8054();
      v17 = sub_1ABA7BD00(&type metadata for AssetRegistryAssetLocation.LocalAsset.LocalAbsoluteAsset.ValidityError, v16);
      sub_1ABA8E0B8(v17, v18);
    }
  }

  sub_1ABA83F0C();
  sub_1ABA7BC90();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AssetRegistryAssetLocation.verifyValidity()()
{
  v1 = *(v0 + 24);
  if ((v1 & 0x80) == 0)
  {
    if (v1)
    {
      sub_1ABA7E32C();
      v20 = v2;
      sub_1ABAAA4A0();
      v3 = sub_1ABAAA44C();
      sub_1ABA7D134(v3, MEMORY[0x1E69E6158], v4, v5, v3, v6, v7, v8, v20);
      if ((sub_1ABF23B44() & 1) == 0)
      {
        return;
      }

      v9 = sub_1ABAFC69C();
      v10 = &type metadata for AssetRegistryAssetLocation.LocalAsset.LocalRelativeAsset.ValidityError;
    }

    else
    {
      sub_1ABA7E32C();
      v21 = v11;
      sub_1ABAAA4A0();
      v12 = sub_1ABAAA44C();
      sub_1ABA7D134(v12, MEMORY[0x1E69E6158], v13, v14, v12, v15, v16, v17, v21);
      if (sub_1ABF23B44())
      {
        return;
      }

      v9 = sub_1ABAF8054();
      v10 = &type metadata for AssetRegistryAssetLocation.LocalAsset.LocalAbsoluteAsset.ValidityError;
    }

    v18 = sub_1ABA7BD00(v10, v9);
    sub_1ABA8E0B8(v18, v19);
  }
}

IntelligencePlatform::AssetRegistryAcceptableBundleName_optional __swiftcall AssetRegistryAcceptableBundleName.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1ABF24D84();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t AssetRegistryAcceptableBundleName.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000018;
  }

  else
  {
    return 0xD000000000000014;
  }
}

unint64_t sub_1ABB00774@<X0>(unint64_t *a1@<X8>)
{
  result = AssetRegistryAcceptableBundleName.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void AssetRegistryAssetLocation.LocalAsset.LocalAbsoluteAsset.localURL.getter()
{
  sub_1ABA7BCA8();
  v1 = sub_1ABF21C24();
  sub_1ABA7BB64();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7BC58();
  v7 = v6 - v5;
  sub_1ABAD219C(&qword_1EB4D1E40, &qword_1ABF349F0);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA7BCE0();
  sub_1ABA7E32C();
  sub_1ABAAA4A0();
  sub_1ABAAA44C();
  sub_1ABAA4434();
  if (sub_1ABF23B44())
  {
    v9 = sub_1ABF21CF4();
    sub_1ABA7B9B4(v0, 1, 1, v9);
    (*(v3 + 104))(v7, *MEMORY[0x1E6968F70], v1);

    sub_1ABF21CD4();
  }

  else
  {
    v10 = sub_1ABAF8054();
    v11 = sub_1ABA7BD00(&type metadata for AssetRegistryAssetLocation.LocalAsset.LocalAbsoluteAsset.ValidityError, v10);
    sub_1ABA8E0B8(v11, v12);
  }

  sub_1ABA83F0C();
  sub_1ABA7BC90();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AssetRegistryAssetLocation.LocalAsset.LocalAbsoluteAsset.verifyValidity()()
{
  sub_1ABA7E32C();
  v10 = v0;
  sub_1ABAAA4A0();
  v1 = sub_1ABAAA44C();
  sub_1ABA7D134(v1, MEMORY[0x1E69E6158], v2, v3, v1, v4, v5, v6, v10);
  if ((sub_1ABF23B44() & 1) == 0)
  {
    v7 = sub_1ABAF8054();
    v8 = sub_1ABA7BD00(&type metadata for AssetRegistryAssetLocation.LocalAsset.LocalAbsoluteAsset.ValidityError, v7);
    sub_1ABA8E0B8(v8, v9);
  }
}

IntelligencePlatform::AssetRegistryAssetLocation::LocalAsset::LocalAbsoluteAsset __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AssetRegistryAssetLocation.LocalAsset.LocalAbsoluteAsset.init(absoluteFilePath:)(Swift::String absoluteFilePath)
{
  object = absoluteFilePath._object;
  countAndFlagsBits = absoluteFilePath._countAndFlagsBits;
  v4 = v1;
  sub_1ABA7E32C();
  v17 = v5;
  sub_1ABAAA4A0();
  v6 = sub_1ABAAA44C();
  sub_1ABA7D134(v6, MEMORY[0x1E69E6158], v7, v8, v6, v9, v10, v11, v17);
  v12 = sub_1ABF23B44();
  if (v12)
  {
    *v4 = countAndFlagsBits;
    v4[1] = object;
  }

  else
  {
    v14 = sub_1ABAF8054();
    sub_1ABA7BD00(&type metadata for AssetRegistryAssetLocation.LocalAsset.LocalAbsoluteAsset.ValidityError, v14);
    *v15 = 0;
    swift_willThrow();
  }

  result.absoluteFilePath._object = v13;
  result.absoluteFilePath._countAndFlagsBits = v12;
  return result;
}

void AssetRegistryAssetLocation.LocalAsset.LocalAbsoluteAsset.init(filePathURL:)()
{
  sub_1ABA7BCA8();
  v1 = v0;
  v3 = v2;
  v4 = sub_1ABF21CF4();
  sub_1ABA7BB64();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7BC58();
  v10 = v9 - v8;
  if (sub_1ABF21C04())
  {
    v20 = v3;
    sub_1ABF21C14();
    v11 = sub_1ABF21CB4();
    v13 = v12;
    v14 = *(v6 + 8);
    v14(v10, v4);
    sub_1ABA7E32C();
    sub_1ABAAA4A0();
    sub_1ABAAA44C();
    sub_1ABAA4434();
    if (sub_1ABF23B44())
    {
      v14(v1, v4);
      *v20 = v11;
      v20[1] = v13;
    }

    else
    {
      v17 = sub_1ABAF8054();
      v18 = sub_1ABA7BD00(&type metadata for AssetRegistryAssetLocation.LocalAsset.LocalAbsoluteAsset.ValidityError, v17);
      sub_1ABA8E0B8(v18, v19);
      v14(v1, v4);
    }
  }

  else
  {
    v15 = sub_1ABAF8054();
    sub_1ABA7BD00(&type metadata for AssetRegistryAssetLocation.LocalAsset.LocalAbsoluteAsset.ValidityError, v15);
    *v16 = 1;
    swift_willThrow();
    (*(v6 + 8))(v1, v4);
  }

  sub_1ABA83F0C();
  sub_1ABA7BC90();
}

uint64_t sub_1ABB00D20(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001ABF7EDC0 == a2)
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

uint64_t sub_1ABB00DC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABB00D20(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1ABB00DEC(uint64_t a1)
{
  v2 = sub_1ABB02738();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB00E28(uint64_t a1)
{
  v2 = sub_1ABB02738();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AssetRegistryAssetLocation.LocalAsset.LocalAbsoluteAsset.encode(to:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v3 = sub_1ABAD219C(&qword_1EB4D20B0, &qword_1ABF354D8);
  sub_1ABA7BB64();
  v5 = v4;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABA7ED98();
  sub_1ABA88DCC(v2, v2[3]);
  sub_1ABB02738();
  sub_1ABA8E0D4();
  sub_1ABF252E4();
  sub_1ABAA2F9C();
  sub_1ABF24F34();
  (*(v5 + 8))(v0, v3);
  sub_1ABA83F0C();
  sub_1ABA7BC90();
}

void AssetRegistryAssetLocation.LocalAsset.LocalAbsoluteAsset.init(from:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v4 = v3;
  sub_1ABAD219C(&qword_1EB4D20C0, &qword_1ABF354E0);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7ED98();
  v6 = sub_1ABAA2F9C();
  sub_1ABA88DCC(v6, v7);
  sub_1ABB02738();
  sub_1ABA8E0D4();
  sub_1ABF252C4();
  if (!v0)
  {
    v8 = sub_1ABF24E14();
    v10 = v9;
    v11 = sub_1ABA7BCF0();
    v12(v11);
    *v4 = v8;
    v4[1] = v10;
  }

  sub_1ABA84B54(v2);
  sub_1ABA7BC90();
}

void AssetRegistryAssetLocation.LocalAsset.LocalRelativeAsset.localURL.getter()
{
  sub_1ABA7BCA8();
  v32 = v2;
  sub_1ABF21C24();
  sub_1ABA7BB64();
  v30 = v4;
  v31 = v3;
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA7BC58();
  v29 = v6 - v5;
  sub_1ABAD219C(&qword_1EB4D1E40, &qword_1ABF349F0);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7BCE0();
  v8 = sub_1ABF21CF4();
  sub_1ABA7BB64();
  v28 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v27 - v14;
  v16 = *v0;
  v17 = *(v0 + 2);
  v35 = *(v0 + 1);
  v36 = v17;
  sub_1ABA7E32C();
  v33 = v18;
  v34 = v19;
  sub_1ABAAA4A0();
  sub_1ABAAA44C();
  sub_1ABAA4434();
  if (sub_1ABF23B44())
  {
    v20 = sub_1ABAFC69C();
    sub_1ABA7BD00(&type metadata for AssetRegistryAssetLocation.LocalAsset.LocalRelativeAsset.ValidityError, v20);
    *v21 = 0;
LABEL_13:
    swift_willThrow();
    goto LABEL_14;
  }

  if (v16)
  {
    if (qword_1ED870628 != -1)
    {
      swift_once();
    }

    v22 = &qword_1ED870630;
  }

  else
  {
    if (qword_1ED871EA0 != -1)
    {
      swift_once();
    }

    v22 = &qword_1ED871EA8;
  }

  v23 = [*v22 resourceURL];
  if (!v23)
  {
    v26 = sub_1ABAFC5D8();
    sub_1ABA7BD00(&type metadata for AssetRegistryAssetLocation.LocalAsset.LocalRelativeAsset.ResourceError, v26);
    goto LABEL_13;
  }

  v24 = v23;
  sub_1ABF21CA4();

  v25 = v28;
  (*(v28 + 32))(v15, v12, v8);
  (*(v25 + 16))(v1, v15, v8);
  sub_1ABA7B9B4(v1, 0, 1, v8);
  (*(v30 + 104))(v29, *MEMORY[0x1E6968F70], v31);

  sub_1ABF21CD4();
  (*(v25 + 8))(v15, v8);
LABEL_14:
  sub_1ABA83F0C();
  sub_1ABA7BC90();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AssetRegistryAssetLocation.LocalAsset.LocalRelativeAsset.verifyValidity()()
{
  sub_1ABA7E32C();
  v10 = v0;
  sub_1ABAAA4A0();
  v1 = sub_1ABAAA44C();
  sub_1ABA7D134(v1, MEMORY[0x1E69E6158], v2, v3, v1, v4, v5, v6, v10);
  if (sub_1ABF23B44())
  {
    v7 = sub_1ABAFC69C();
    v8 = sub_1ABA7BD00(&type metadata for AssetRegistryAssetLocation.LocalAsset.LocalRelativeAsset.ValidityError, v7);
    sub_1ABA8E0B8(v8, v9);
  }
}

IntelligencePlatform::AssetRegistryAssetLocation::LocalAsset::LocalRelativeAsset __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AssetRegistryAssetLocation.LocalAsset.LocalRelativeAsset.init(bundleName:relativeFilePath:)(IntelligencePlatform::AssetRegistryAcceptableBundleName bundleName, Swift::String relativeFilePath)
{
  object = relativeFilePath._object;
  countAndFlagsBits = relativeFilePath._countAndFlagsBits;
  v5 = v2;
  v6 = *bundleName;
  sub_1ABA7E32C();
  v21 = v7;
  sub_1ABAAA4A0();
  sub_1ABAAA44C();

  sub_1ABA7D134(v8, MEMORY[0x1E69E6158], v9, v10, v11, v12, v13, v14, v21);
  v15 = sub_1ABF23B44();

  if (v15)
  {
    v19 = sub_1ABAFC69C();
    sub_1ABA7BD00(&type metadata for AssetRegistryAssetLocation.LocalAsset.LocalRelativeAsset.ValidityError, v19);
    *v20 = 0;
    swift_willThrow();
  }

  else
  {
    *v5 = v6;
    *(v5 + 8) = countAndFlagsBits;
    *(v5 + 16) = object;
  }

  result.relativeFilePath._object = v18;
  result.relativeFilePath._countAndFlagsBits = v17;
  result.bundleName = v16;
  return result;
}

uint64_t _s20IntelligencePlatform013AssetRegistryC8LocationO05LocalC0O0f8AbsoluteC0V13ValidityErrorO9hashValueSivg_0()
{
  v1 = *v0;
  sub_1ABA7AB5C();
  MEMORY[0x1AC5AA8A0](v1);
  return sub_1ABF25294();
}

uint64_t AssetRegistryAssetLocation.LocalAsset.LocalRelativeAsset.ResourceError.hashValue.getter()
{
  sub_1ABA7AB5C();
  MEMORY[0x1AC5AA8A0](0);
  return sub_1ABF25294();
}

uint64_t sub_1ABB0164C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614E656C646E7562 && a2 == 0xEA0000000000656DLL;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001ABF86A60 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1ABB0172C(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x614E656C646E7562;
  }
}

uint64_t sub_1ABB017BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABB0164C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABB017E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1ABB01724();
  *a1 = result;
  return result;
}

uint64_t sub_1ABB0180C(uint64_t a1)
{
  v2 = sub_1ABB03B44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB01848(uint64_t a1)
{
  v2 = sub_1ABB03B44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AssetRegistryAssetLocation.LocalAsset.LocalRelativeAsset.encode(to:)()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v4 = sub_1ABAD219C(&qword_1EB4D20C8, &qword_1ABF354E8);
  sub_1ABA7BB64();
  v6 = v5;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7E338();
  sub_1ABA88DCC(v3, v3[3]);
  v8 = sub_1ABB03B44();
  sub_1ABAA2B8C(&type metadata for AssetRegistryAssetLocation.LocalAsset.LocalRelativeAsset.CodingKeys, v9, v8);
  sub_1ABB03B98();
  sub_1ABAA5ECC();
  sub_1ABF24F84();
  if (!v0)
  {
    sub_1ABAA4870();
  }

  (*(v6 + 8))(v1, v4);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void AssetRegistryAssetLocation.LocalAsset.LocalRelativeAsset.init(from:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v4 = v3;
  sub_1ABAD219C(&qword_1EB4D20E0, &qword_1ABF354F0);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7ED98();
  v6 = v2[4];
  v7 = sub_1ABAA2F9C();
  sub_1ABA88DCC(v7, v8);
  sub_1ABB03B44();
  sub_1ABA8E0D4();
  sub_1ABF252C4();
  if (!v0)
  {
    sub_1ABB03BEC();
    sub_1ABA979C0();
    sub_1ABF24E64();
    sub_1ABAA3B9C();
    v9 = sub_1ABF24E14();
    v11 = v10;
    v12 = sub_1ABA7BCF0();
    v13(v12);
    *v4 = v6;
    *(v4 + 8) = v9;
    *(v4 + 16) = v11;
  }

  sub_1ABA84B54(v2);
  sub_1ABA7BC90();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AssetRegistryAssetLocation.LocalAsset.verifyValidity()()
{
  if (*(v0 + 24))
  {
    sub_1ABA7E32C();
    v19 = v1;
    sub_1ABAAA4A0();
    v2 = sub_1ABAAA44C();
    sub_1ABA7D134(v2, MEMORY[0x1E69E6158], v3, v4, v2, v5, v6, v7, v19);
    if ((sub_1ABF23B44() & 1) == 0)
    {
      return;
    }

    v8 = sub_1ABAFC69C();
    v9 = &type metadata for AssetRegistryAssetLocation.LocalAsset.LocalRelativeAsset.ValidityError;
  }

  else
  {
    sub_1ABA7E32C();
    v20 = v10;
    sub_1ABAAA4A0();
    v11 = sub_1ABAAA44C();
    sub_1ABA7D134(v11, MEMORY[0x1E69E6158], v12, v13, v11, v14, v15, v16, v20);
    if (sub_1ABF23B44())
    {
      return;
    }

    v8 = sub_1ABAF8054();
    v9 = &type metadata for AssetRegistryAssetLocation.LocalAsset.LocalAbsoluteAsset.ValidityError;
  }

  v17 = sub_1ABA7BD00(v9, v8);
  sub_1ABA8E0B8(v17, v18);
}

uint64_t sub_1ABB01C58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574756C6F736261 && a2 == 0xE800000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001ABF7EDE0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1ABB01D28(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6574756C6F736261;
  }
}

uint64_t sub_1ABB01D68(uint64_t a1)
{
  v2 = sub_1ABB03D3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB01DA4(uint64_t a1)
{
  v2 = sub_1ABB03D3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB01DE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABB01C58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABB01E10(uint64_t a1)
{
  v2 = sub_1ABB03C40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB01E4C(uint64_t a1)
{
  v2 = sub_1ABB03C40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB01E88(uint64_t a1)
{
  v2 = sub_1ABB03C94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB01EC4(uint64_t a1)
{
  v2 = sub_1ABB03C94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AssetRegistryAssetLocation.LocalAsset.encode(to:)()
{
  sub_1ABA7BCA8();
  v4 = v3;
  sub_1ABAD219C(&qword_1EB4D20E8, &qword_1ABF354F8);
  sub_1ABA7BB64();
  v25 = v6;
  v26 = v5;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7BCE0();
  sub_1ABAD219C(&qword_1EB4D20F0, &qword_1ABF35500);
  sub_1ABA7BB64();
  v23 = v9;
  v24 = v8;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  v29 = sub_1ABAD219C(&qword_1EB4D20F8, &qword_1ABF35508);
  sub_1ABA7BB64();
  v14 = v13;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA7ED98();
  v16 = v0[1];
  v27 = *v0;
  v28 = v16;
  v22 = v0[2];
  v17 = *(v0 + 24);
  sub_1ABA88DCC(v4, v4[3]);
  sub_1ABB03C40();
  sub_1ABA8E0D4();
  sub_1ABF252E4();
  if (v17)
  {
    LOBYTE(v30) = 1;
    sub_1ABB03C94();
    v18 = v29;
    sub_1ABA979C0();
    sub_1ABF24EC4();
    LOBYTE(v30) = v27 & 1;
    v31 = v28;
    v32 = v22;
    sub_1ABB03CE8();
    v19 = v26;
    sub_1ABF24F84();
    (*(v25 + 8))(v2, v19);
  }

  else
  {
    LOBYTE(v30) = 0;
    sub_1ABB03D3C();
    v18 = v29;
    sub_1ABA979C0();
    sub_1ABF24EC4();
    v30 = v27;
    v31 = v28;
    sub_1ABB03D90();
    v20 = v24;
    sub_1ABF24F84();
    (*(v23 + 8))(v12, v20);
  }

  (*(v14 + 8))(v1, v18);
  sub_1ABA83F0C();
  sub_1ABA7BC90();
}

void AssetRegistryAssetLocation.LocalAsset.init(from:)()
{
  sub_1ABA7BCA8();
  v4 = v3;
  v38 = v5;
  sub_1ABAD219C(&qword_1EB4D2128, &qword_1ABF35510);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABA7E338();
  v7 = sub_1ABAD219C(&qword_1EB4D2130, &qword_1ABF35518);
  sub_1ABA7BB64();
  v36 = v8;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7BCE0();
  v10 = sub_1ABAD219C(&qword_1EB4D2138, &unk_1ABF35520);
  sub_1ABA7BB64();
  v37 = v11;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA7ED98();
  sub_1ABA88DCC(v4, v4[3]);
  sub_1ABB03C40();
  sub_1ABA8E0D4();
  sub_1ABF252C4();
  if (v0)
  {
    goto LABEL_9;
  }

  v42 = v4;
  sub_1ABF24EA4();
  v16 = sub_1ABAD4EA4();
  if (v14 == v15 >> 1)
  {
LABEL_7:
    v23 = sub_1ABF24B44();
    sub_1ABA7BD00(v23, MEMORY[0x1E69E6B28]);
    v25 = v24;
    sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050);
    *v25 = &type metadata for AssetRegistryAssetLocation.LocalAsset;
    v26 = sub_1ABF24DA4();
    sub_1ABA835CC(v26);
    (*(*(v23 - 8) + 104))(v25, *MEMORY[0x1E69E6AF8], v23);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v37 + 8))(v1, v10);
    v4 = v42;
LABEL_9:
    sub_1ABA84B54(v4);
LABEL_10:
    sub_1ABA7FC10();
    sub_1ABA7BC90();
    return;
  }

  if (v14 < (v15 >> 1))
  {
    v17 = *(v13 + v14);
    sub_1ABAD4E90();
    sub_1ABA97444();
    if (!(v16 >> 1))
    {
      v18 = v17;
      if (v17)
      {
        sub_1ABB03C94();
        sub_1ABA979C0();
        sub_1ABF24D94();
        v19 = sub_1ABB03DE4();
        sub_1ABAA56AC(&type metadata for AssetRegistryAssetLocation.LocalAsset.LocalRelativeAsset, v20, v21, v22, v19);
        swift_unknownObjectRelease();
        v27 = sub_1ABA8E620();
        v28(v27);
        v29 = sub_1ABA814FC();
        v30(v29);
        v31 = 1;
        v33 = v40;
        v32 = v41;
        v18 = v17;
      }

      else
      {
        LOBYTE(v39) = 0;
        sub_1ABB03D3C();
        sub_1ABA979C0();
        sub_1ABF24D94();
        sub_1ABB03E38();
        sub_1ABF24E64();
        swift_unknownObjectRelease();
        (*(v36 + 8))(v2, v7);
        v34 = sub_1ABA814FC();
        v35(v34);
        v32 = 0;
        v31 = v39;
        v33 = v40;
      }

      *v38 = v31;
      *(v38 + 8) = v33;
      *(v38 + 16) = v32;
      *(v38 + 24) = v18;
      sub_1ABA84B54(v42);
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  __break(1u);
}

IntelligencePlatform::AssetRegistryAssetLocation::TrialAsset __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AssetRegistryAssetLocation.TrialAsset.init(namespace:factor:assetType:downloadOptions:)(IntelligencePlatform::TrialNamespace a1, Swift::String factor, IntelligencePlatform::TrialAssetManager::AssetType assetType, IntelligencePlatform::TrialAssetManager::DownloadOptions_optional downloadOptions)
{
  v5 = *assetType;
  v6 = **&downloadOptions.value.allowsCellularAccess;
  *v4 = *a1;
  *(v4 + 8) = factor;
  *(v4 + 24) = v5;
  *(v4 + 25) = v6;
  result.factor = factor;
  result.assetType = assetType;
  result.namespace = a1;
  return result;
}

unint64_t sub_1ABB02738()
{
  result = qword_1EB4D20B8;
  if (!qword_1EB4D20B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D20B8);
  }

  return result;
}

IntelligencePlatform::AssetRegistryAssetLocation::TrialAsset __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AssetRegistryAssetLocation.TrialAsset.init(namespaceName:factor:assetTypeRawString:downloadOptions:)(Swift::String namespaceName, Swift::String factor, Swift::String assetTypeRawString, IntelligencePlatform::TrialAssetManager::DownloadOptions_optional downloadOptions)
{
  countAndFlagsBits = factor._countAndFlagsBits;
  object = assetTypeRawString._object;
  v6 = assetTypeRawString._countAndFlagsBits;
  v7 = factor._object;
  v8 = namespaceName._object;
  v9 = namespaceName._countAndFlagsBits;
  v10 = v4;
  v11 = **&downloadOptions.value.allowsCellularAccess;

  v12._countAndFlagsBits = v9;
  v12._object = v8;
  TrialNamespace.init(rawValue:)(v12);
  if (v22 == 9)
  {

LABEL_9:
    v19 = sub_1ABB03E8C();
    sub_1ABA7BD00(&type metadata for AssetRegistryAssetLocation.TrialAsset.ValidityError, v19);
    *v20 = v9;
    *(v20 + 8) = v8;
    *(v20 + 16) = v22 != 9;
    v15 = swift_willThrow();
    goto LABEL_10;
  }

  v13 = sub_1ABF24D84();
  if (!v13)
  {
    v14 = 0;
    goto LABEL_7;
  }

  if (v13 != 1)
  {

    v8 = object;
    v9 = v6;
    goto LABEL_9;
  }

  v14 = 1;
LABEL_7:

  *v10 = v22;
  *(v10 + 8) = countAndFlagsBits;
  *(v10 + 16) = v7;
  *(v10 + 24) = v14;
  *(v10 + 25) = v11;
LABEL_10:
  result.factor._object = v17;
  result.factor._countAndFlagsBits = v16;
  result.assetType = v18;
  result.downloadOptions = *(&v18 + 1);
  result.namespace = v15;
  return result;
}

uint64_t sub_1ABB028C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x63617073656D616ELL && a2 == 0xE900000000000065;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x726F74636166 && a2 == 0xE600000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7079547465737361 && a2 == 0xE900000000000065;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x64616F6C6E776F64 && a2 == 0xEF736E6F6974704FLL)
      {

        return 3;
      }

      else
      {
        v9 = sub_1ABF25054();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1ABB02A34(char a1)
{
  result = 0x63617073656D616ELL;
  switch(a1)
  {
    case 1:
      result = 0x726F74636166;
      break;
    case 2:
      result = 0x7079547465737361;
      break;
    case 3:
      result = 0x64616F6C6E776F64;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABB02AC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABB028C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABB02AF0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1ABB02A2C();
  *a1 = result;
  return result;
}

uint64_t sub_1ABB02B18(uint64_t a1)
{
  v2 = sub_1ABB03EE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB02B54(uint64_t a1)
{
  v2 = sub_1ABB03EE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AssetRegistryAssetLocation.TrialAsset.encode(to:)()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v4 = sub_1ABAD219C(&qword_1EB4D2158, &qword_1ABF35530);
  sub_1ABA7BB64();
  v6 = v5;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7E338();
  sub_1ABA88DCC(v3, v3[3]);
  v8 = sub_1ABB03EE0();
  sub_1ABAA2B8C(&type metadata for AssetRegistryAssetLocation.TrialAsset.CodingKeys, v9, v8);
  sub_1ABB03F34();
  sub_1ABAA5ECC();
  sub_1ABF24F84();
  if (!v0)
  {
    sub_1ABAA4870();
    sub_1ABB03F88();
    sub_1ABAA5ECC();
    sub_1ABF24F84();
    sub_1ABB03FDC();
    sub_1ABAA5ECC();
    sub_1ABF24F14();
  }

  (*(v6 + 8))(v1, v4);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void AssetRegistryAssetLocation.TrialAsset.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, __int16 a11, char a12)
{
  sub_1ABA7BCA8();
  v14 = v13;
  v16 = v15;
  sub_1ABAD219C(&qword_1EB4D2180, &qword_1ABF35538);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA7BCE0();
  v18 = v14[4];
  v19 = sub_1ABAA2F9C();
  sub_1ABA88DCC(v19, v20);
  sub_1ABB03EE0();
  sub_1ABF252C4();
  if (v12)
  {
    sub_1ABA84B54(v14);
  }

  else
  {
    sub_1ABB04030();
    sub_1ABA905C0();
    sub_1ABF24E64();
    sub_1ABAA3B9C();
    v21 = sub_1ABF24E14();
    v23 = v22;
    v26 = v21;
    sub_1ABB04084();
    sub_1ABA905C0();
    sub_1ABF24E64();
    sub_1ABB040D8();
    sub_1ABA905C0();
    sub_1ABF24DF4();
    v24 = sub_1ABA7BC4C();
    v25(v24);
    *v16 = v18;
    *(v16 + 8) = v26;
    *(v16 + 16) = v23;
    *(v16 + 24) = a12;
    *(v16 + 25) = a10;

    sub_1ABA84B54(v14);
  }

  sub_1ABA7BC90();
}

uint64_t sub_1ABB02F70(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7373416C61636F6CLL && a2 == 0xEA00000000007465;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7373416C61697274 && a2 == 0xEA00000000007465)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1ABB03048(char a1)
{
  if (a1)
  {
    return 0x7373416C61697274;
  }

  else
  {
    return 0x7373416C61636F6CLL;
  }
}

uint64_t sub_1ABB0307C(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
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

uint64_t sub_1ABB030EC()
{
  sub_1ABA7AB5C();
  MEMORY[0x1AC5AA8A0](0);
  return sub_1ABF25294();
}

uint64_t sub_1ABB03158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1ABF25234();
  a4(v8, v6);
  return sub_1ABF25294();
}

uint64_t sub_1ABB031AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABB02F70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABB031D4(uint64_t a1)
{
  v2 = sub_1ABB0412C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB03210(uint64_t a1)
{
  v2 = sub_1ABB0412C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB0324C(uint64_t a1)
{
  v2 = sub_1ABB04228();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB03288(uint64_t a1)
{
  v2 = sub_1ABB04228();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB032C4(uint64_t a1)
{
  v2 = sub_1ABB04180();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB03300(uint64_t a1)
{
  v2 = sub_1ABB04180();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AssetRegistryAssetLocation.encode(to:)()
{
  sub_1ABA7BCA8();
  v4 = v3;
  sub_1ABAD219C(&qword_1EB4D2198, &qword_1ABF35540);
  sub_1ABA7BB64();
  v23 = v6;
  v24 = v5;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7BCE0();
  sub_1ABAD219C(&qword_1EB4D21A0, &qword_1ABF35548);
  sub_1ABA7BB64();
  v21 = v9;
  v22 = v8;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  v28 = sub_1ABAD219C(&qword_1EB4D21A8, &qword_1ABF35550);
  sub_1ABA7BB64();
  v14 = v13;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA7ED98();
  v16 = v0[1];
  v25 = *v0;
  v26 = v16;
  v27 = v0[2];
  v17 = *(v0 + 12) | (*(v0 + 26) << 16);
  sub_1ABA88DCC(v4, v4[3]);
  sub_1ABB0412C();
  sub_1ABA8E0D4();
  sub_1ABF252E4();
  if ((v17 & 0x80) != 0)
  {
    LOBYTE(v29) = 1;
    sub_1ABB04180();
    v18 = v28;
    sub_1ABA979C0();
    sub_1ABF24EC4();
    LOBYTE(v29) = v25;
    v30 = v26;
    v31 = v27;
    v32 = v17 & 1;
    v33 = v17 >> 8;
    sub_1ABB041D4();
    v20 = v24;
    sub_1ABF24F84();
    (*(v23 + 8))(v2, v20);
  }

  else
  {
    LOBYTE(v29) = 0;
    sub_1ABB04228();
    v18 = v28;
    sub_1ABA979C0();
    sub_1ABF24EC4();
    v29 = v25;
    v30 = v26;
    v31 = v27;
    v32 = v17 & 1;
    sub_1ABB0427C();
    v19 = v22;
    sub_1ABF24F84();
    (*(v21 + 8))(v12, v19);
  }

  (*(v14 + 8))(v1, v18);
  sub_1ABA83F0C();
  sub_1ABA7BC90();
}

void AssetRegistryAssetLocation.init(from:)()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v41 = v4;
  sub_1ABAD219C(&qword_1EB4D21D8, &qword_1ABF35558);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7E338();
  sub_1ABAD219C(&qword_1EB4D21E0, &qword_1ABF35560);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABA7ED98();
  v7 = sub_1ABAD219C(&qword_1EB4D21E8, &qword_1ABF35568);
  sub_1ABA7BB64();
  v40 = v8;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7BCE0();
  sub_1ABA88DCC(v3, v3[3]);
  sub_1ABB0412C();
  sub_1ABF252C4();
  if (v0)
  {
    goto LABEL_8;
  }

  sub_1ABF24EA4();
  v13 = sub_1ABAD4EA4();
  if (v11 == v12 >> 1)
  {
LABEL_7:
    v18 = sub_1ABF24B44();
    sub_1ABA7BD00(v18, MEMORY[0x1E69E6B28]);
    v20 = v19;
    sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050);
    *v20 = &type metadata for AssetRegistryAssetLocation;
    v21 = sub_1ABF24DA4();
    sub_1ABA835CC(v21);
    (*(*(v18 - 8) + 104))(v20, *MEMORY[0x1E69E6AF8], v18);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v40 + 8))(v1, v7);
LABEL_8:
    sub_1ABA84B54(v3);
LABEL_9:
    sub_1ABA7FC10();
    sub_1ABA7BC90();
    return;
  }

  if (v11 < (v12 >> 1))
  {
    v39 = *(v10 + v11);
    sub_1ABAD4E90();
    sub_1ABA97444();
    if (!(v13 >> 1))
    {
      if (v39)
      {
        LOBYTE(v42) = 1;
        sub_1ABB04180();
        sub_1ABAA24CC(&type metadata for AssetRegistryAssetLocation.TrialAssetCodingKeys, &v42);
        v14 = sub_1ABB042D0();
        sub_1ABAA56AC(&type metadata for AssetRegistryAssetLocation.TrialAsset, v15, v16, v17, v14);
        swift_unknownObjectRelease();
        v26 = sub_1ABA8E620();
        v27(v26);
        v28 = sub_1ABA835BC();
        v29(v28);
        v35 = v42;
        v36 = v43;
        v37 = v44;
        if (v45)
        {
          v30 = 129;
        }

        else
        {
          v30 = 128;
        }

        v38 = v30 | (v46 << 8);
      }

      else
      {
        LOBYTE(v42) = 0;
        sub_1ABB04228();
        sub_1ABAA24CC(&type metadata for AssetRegistryAssetLocation.LocalAssetCodingKeys, &v42);
        v22 = sub_1ABB04324();
        sub_1ABAA56AC(&type metadata for AssetRegistryAssetLocation.LocalAsset, v23, v24, v25, v22);
        swift_unknownObjectRelease();
        v31 = sub_1ABA8E620();
        v32(v31);
        v33 = sub_1ABA835BC();
        v34(v33);
        v35 = v42;
        v36 = v43;
        v37 = v44;
        v38 = v45;
      }

      *v41 = v35;
      *(v41 + 8) = v36;
      *(v41 + 16) = v37;
      *(v41 + 24) = v38;
      *(v41 + 26) = BYTE2(v38);
      sub_1ABA84B54(v3);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

unint64_t sub_1ABB03B44()
{
  result = qword_1EB4D20D0;
  if (!qword_1EB4D20D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D20D0);
  }

  return result;
}

unint64_t sub_1ABB03B98()
{
  result = qword_1EB4D20D8;
  if (!qword_1EB4D20D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D20D8);
  }

  return result;
}

unint64_t sub_1ABB03BEC()
{
  result = qword_1ED86B430;
  if (!qword_1ED86B430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B430);
  }

  return result;
}

unint64_t sub_1ABB03C40()
{
  result = qword_1EB4D2100;
  if (!qword_1EB4D2100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2100);
  }

  return result;
}

unint64_t sub_1ABB03C94()
{
  result = qword_1EB4D2108;
  if (!qword_1EB4D2108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2108);
  }

  return result;
}

unint64_t sub_1ABB03CE8()
{
  result = qword_1EB4D2110;
  if (!qword_1EB4D2110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2110);
  }

  return result;
}

unint64_t sub_1ABB03D3C()
{
  result = qword_1EB4D2118;
  if (!qword_1EB4D2118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2118);
  }

  return result;
}

unint64_t sub_1ABB03D90()
{
  result = qword_1EB4D2120;
  if (!qword_1EB4D2120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2120);
  }

  return result;
}

unint64_t sub_1ABB03DE4()
{
  result = qword_1EB4D2140;
  if (!qword_1EB4D2140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2140);
  }

  return result;
}

unint64_t sub_1ABB03E38()
{
  result = qword_1EB4D2148;
  if (!qword_1EB4D2148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2148);
  }

  return result;
}

unint64_t sub_1ABB03E8C()
{
  result = qword_1EB4D2150;
  if (!qword_1EB4D2150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2150);
  }

  return result;
}

unint64_t sub_1ABB03EE0()
{
  result = qword_1EB4D2160;
  if (!qword_1EB4D2160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2160);
  }

  return result;
}

unint64_t sub_1ABB03F34()
{
  result = qword_1EB4D2168;
  if (!qword_1EB4D2168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2168);
  }

  return result;
}

unint64_t sub_1ABB03F88()
{
  result = qword_1EB4D2170;
  if (!qword_1EB4D2170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2170);
  }

  return result;
}

unint64_t sub_1ABB03FDC()
{
  result = qword_1EB4D2178;
  if (!qword_1EB4D2178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2178);
  }

  return result;
}

unint64_t sub_1ABB04030()
{
  result = qword_1EB4D2188;
  if (!qword_1EB4D2188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2188);
  }

  return result;
}

unint64_t sub_1ABB04084()
{
  result = qword_1EB4D2190;
  if (!qword_1EB4D2190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2190);
  }

  return result;
}

unint64_t sub_1ABB040D8()
{
  result = qword_1ED86B550;
  if (!qword_1ED86B550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B550);
  }

  return result;
}

unint64_t sub_1ABB0412C()
{
  result = qword_1EB4D21B0;
  if (!qword_1EB4D21B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D21B0);
  }

  return result;
}

unint64_t sub_1ABB04180()
{
  result = qword_1EB4D21B8;
  if (!qword_1EB4D21B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D21B8);
  }

  return result;
}

unint64_t sub_1ABB041D4()
{
  result = qword_1EB4D21C0;
  if (!qword_1EB4D21C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D21C0);
  }

  return result;
}

unint64_t sub_1ABB04228()
{
  result = qword_1EB4D21C8;
  if (!qword_1EB4D21C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D21C8);
  }

  return result;
}

unint64_t sub_1ABB0427C()
{
  result = qword_1EB4D21D0;
  if (!qword_1EB4D21D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D21D0);
  }

  return result;
}

unint64_t sub_1ABB042D0()
{
  result = qword_1EB4D21F0;
  if (!qword_1EB4D21F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D21F0);
  }

  return result;
}

unint64_t sub_1ABB04324()
{
  result = qword_1EB4D21F8;
  if (!qword_1EB4D21F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D21F8);
  }

  return result;
}

unint64_t sub_1ABB0437C()
{
  result = qword_1EB4D2200;
  if (!qword_1EB4D2200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2200);
  }

  return result;
}

unint64_t sub_1ABB043D4()
{
  result = qword_1EB4D2208;
  if (!qword_1EB4D2208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2208);
  }

  return result;
}

unint64_t sub_1ABB04428(uint64_t a1)
{
  result = sub_1ABB04450();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABB04450()
{
  result = qword_1EB4D2210;
  if (!qword_1EB4D2210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2210);
  }

  return result;
}

unint64_t sub_1ABB044A4(uint64_t a1)
{
  result = sub_1ABB044CC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABB044CC()
{
  result = qword_1EB4D2218;
  if (!qword_1EB4D2218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2218);
  }

  return result;
}

unint64_t sub_1ABB04550()
{
  result = qword_1EB4D2220;
  if (!qword_1EB4D2220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2220);
  }

  return result;
}

unint64_t sub_1ABB045A8()
{
  result = qword_1EB4D2228;
  if (!qword_1EB4D2228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2228);
  }

  return result;
}

unint64_t sub_1ABB045FC(uint64_t a1)
{
  result = sub_1ABB04624();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABB04624()
{
  result = qword_1EB4D2230;
  if (!qword_1EB4D2230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2230);
  }

  return result;
}

unint64_t sub_1ABB04678(uint64_t a1)
{
  result = sub_1ABB046A0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABB046A0()
{
  result = qword_1EB4D2238;
  if (!qword_1EB4D2238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2238);
  }

  return result;
}

unint64_t sub_1ABB04720(uint64_t a1)
{
  result = sub_1ABB04748();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABB04748()
{
  result = qword_1EB4D2240;
  if (!qword_1EB4D2240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2240);
  }

  return result;
}

unint64_t sub_1ABB0479C(uint64_t a1)
{
  result = sub_1ABB047C4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABB047C4()
{
  result = qword_1EB4D2248;
  if (!qword_1EB4D2248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2248);
  }

  return result;
}

unint64_t sub_1ABB04844(uint64_t a1)
{
  result = sub_1ABB0486C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABB0486C()
{
  result = qword_1EB4D2250;
  if (!qword_1EB4D2250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2250);
  }

  return result;
}

unint64_t sub_1ABB048EC(uint64_t a1)
{
  result = sub_1ABB04914();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABB04914()
{
  result = qword_1EB4D2258;
  if (!qword_1EB4D2258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2258);
  }

  return result;
}

uint64_t sub_1ABB04994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

__n128 sub_1ABB04A04(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 11) = *(a2 + 11);
  *a1 = result;
  return result;
}

uint64_t sub_1ABB04A18(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7F && *(a1 + 27))
    {
      v2 = *a1 + 126;
    }

    else
    {
      v2 = (*(a1 + 24) & 0x7E | (*(a1 + 24) >> 7) & 1) ^ 0x7F;
      if (v2 >= 0x7E)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1ABB04A60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 26) = 0;
    *(result + 24) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 27) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 27) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 26) = 0;
      *(result + 24) = 2 * ((((-a2 >> 1) & 0x3F) - (a2 << 6)) & 0x7F);
    }
  }

  return result;
}

uint64_t sub_1ABB04AC4(uint64_t a1)
{
  v2 = *(a1 + 24);
  result = a1 + 24;
  v3 = *(result + 2);
  *result = v2 & 0xFF7F;
  *(result + 2) = (v2 & 0xFFFFFF7F | (v3 << 16)) >> 16;
  return result;
}

uint64_t sub_1ABB04AE4(uint64_t a1, char a2)
{
  v3 = *(a1 + 24);
  result = a1 + 24;
  v4 = v3 & 0xFFFFFF01 | (*(result + 2) << 16);
  *result = v3 & 0xFF01 | ((a2 & 1) << 7);
  *(result + 2) = BYTE2(v4);
  return result;
}

uint64_t sub_1ABB04B18(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 25))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 1)
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

uint64_t sub_1ABB04B58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1ABB04BD0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1ABB04C10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1ABB04C74(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 27))
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

uint64_t sub_1ABB04CB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 26) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 27) = 1;
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

    *(result + 27) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1ABB04D14(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
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

uint64_t sub_1ABB04D54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

_BYTE *storeEnumTagSinglePayload for AssetRegistryAssetLocation.TrialAsset.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1ABB04EEC(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1ABB04FC8(_BYTE *result, int a2, int a3)
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

unint64_t sub_1ABB05078()
{
  result = qword_1EB4D2260;
  if (!qword_1EB4D2260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2260);
  }

  return result;
}

unint64_t sub_1ABB050D0()
{
  result = qword_1EB4D2268;
  if (!qword_1EB4D2268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2268);
  }

  return result;
}

unint64_t sub_1ABB05128()
{
  result = qword_1EB4D2270;
  if (!qword_1EB4D2270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2270);
  }

  return result;
}

unint64_t sub_1ABB05180()
{
  result = qword_1EB4D2278;
  if (!qword_1EB4D2278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2278);
  }

  return result;
}

unint64_t sub_1ABB051D8()
{
  result = qword_1EB4D2280;
  if (!qword_1EB4D2280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2280);
  }

  return result;
}

unint64_t sub_1ABB05230()
{
  result = qword_1EB4D2288;
  if (!qword_1EB4D2288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2288);
  }

  return result;
}

unint64_t sub_1ABB05288()
{
  result = qword_1EB4D2290;
  if (!qword_1EB4D2290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2290);
  }

  return result;
}

unint64_t sub_1ABB052E0()
{
  result = qword_1EB4D2298;
  if (!qword_1EB4D2298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2298);
  }

  return result;
}

unint64_t sub_1ABB05338()
{
  result = qword_1EB4D22A0;
  if (!qword_1EB4D22A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D22A0);
  }

  return result;
}

unint64_t sub_1ABB05390()
{
  result = qword_1EB4D22A8;
  if (!qword_1EB4D22A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D22A8);
  }

  return result;
}

unint64_t sub_1ABB053E8()
{
  result = qword_1EB4D22B0;
  if (!qword_1EB4D22B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D22B0);
  }

  return result;
}

unint64_t sub_1ABB05440()
{
  result = qword_1EB4D22B8;
  if (!qword_1EB4D22B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D22B8);
  }

  return result;
}

unint64_t sub_1ABB05498()
{
  result = qword_1EB4D22C0;
  if (!qword_1EB4D22C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D22C0);
  }

  return result;
}

unint64_t sub_1ABB054F0()
{
  result = qword_1EB4D22C8;
  if (!qword_1EB4D22C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D22C8);
  }

  return result;
}

unint64_t sub_1ABB05548()
{
  result = qword_1EB4D22D0;
  if (!qword_1EB4D22D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D22D0);
  }

  return result;
}

unint64_t sub_1ABB055A0()
{
  result = qword_1EB4D22D8;
  if (!qword_1EB4D22D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D22D8);
  }

  return result;
}

unint64_t sub_1ABB055F8()
{
  result = qword_1EB4D22E0;
  if (!qword_1EB4D22E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D22E0);
  }

  return result;
}

unint64_t sub_1ABB05650()
{
  result = qword_1EB4D22E8;
  if (!qword_1EB4D22E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D22E8);
  }

  return result;
}

unint64_t sub_1ABB056A8()
{
  result = qword_1EB4D22F0;
  if (!qword_1EB4D22F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D22F0);
  }

  return result;
}

unint64_t sub_1ABB05700()
{
  result = qword_1EB4D22F8;
  if (!qword_1EB4D22F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D22F8);
  }

  return result;
}

unint64_t sub_1ABB05758()
{
  result = qword_1EB4D2300;
  if (!qword_1EB4D2300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2300);
  }

  return result;
}

unint64_t sub_1ABB057B0()
{
  result = qword_1EB4D2308;
  if (!qword_1EB4D2308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2308);
  }

  return result;
}

unint64_t sub_1ABB05808()
{
  result = qword_1EB4D2310;
  if (!qword_1EB4D2310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2310);
  }

  return result;
}

unint64_t sub_1ABB05860()
{
  result = qword_1EB4D2318;
  if (!qword_1EB4D2318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2318);
  }

  return result;
}

unint64_t sub_1ABB058B8()
{
  result = qword_1EB4D2320;
  if (!qword_1EB4D2320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2320);
  }

  return result;
}

unint64_t sub_1ABB05910()
{
  result = qword_1EB4D2328;
  if (!qword_1EB4D2328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2328);
  }

  return result;
}

unint64_t sub_1ABB05968()
{
  result = qword_1EB4D2330;
  if (!qword_1EB4D2330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2330);
  }

  return result;
}

unint64_t sub_1ABB059BC()
{
  result = qword_1ED86B438;
  if (!qword_1ED86B438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B438);
  }

  return result;
}

uint64_t AssetRegistryRemoteBackendType.hashValue.getter()
{
  v1 = *v0;
  sub_1ABF25234();
  MEMORY[0x1AC5AA8A0](v1);
  return sub_1ABF25294();
}

unint64_t sub_1ABB05B04()
{
  result = qword_1EB4D2338;
  if (!qword_1EB4D2338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2338);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AssetRegistryRemoteBackendType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t AssetRegistryBasicServer.assetEntryResult(for:in:localOptions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1ABB05DC0(v5, a3, a4, a1, a2, &v11);
  result = v11;
  v8 = v12;
  v9 = v13;
  v10 = v14;
  *a5 = v11;
  *(a5 + 16) = v8;
  *(a5 + 24) = v9;
  *(a5 + 40) = v10;
  *(a5 + 48) = 0;
  return result;
}

uint64_t sub_1ABB05DC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  result = sub_1ABB102C8(a2, a3, *(a1 + 24));
  if (!v6)
  {
    if (v13)
    {
      sub_1ABB0914C(a4, a5, result, v13, v14, v15, v16, v17, &v24);

      v19 = v28;
      if (v28 != 1)
      {
        v21 = v27;
        v22 = v26;
        v23 = v25;
        *a6 = v24;
        *(a6 + 16) = v23;
        *(a6 + 26) = BYTE2(v22);
        *(a6 + 24) = v22;
        *(a6 + 32) = v21;
        *(a6 + 40) = v19;
        return result;
      }

      sub_1ABB05FF4();
      swift_allocError();
      *v20 = a4;
      *(v20 + 8) = a5;
      *(v20 + 16) = 1;
      swift_willThrow();
    }

    else
    {
      sub_1ABB05FF4();
      swift_allocError();
      *v18 = a2;
      *(v18 + 8) = a3;
      *(v18 + 16) = 0;
      swift_willThrow();
    }
  }

  return result;
}

uint64_t AssetRegistryBasicServer.deinit()
{

  return v0;
}

uint64_t AssetRegistryBasicServer.__deallocating_deinit()
{
  AssetRegistryBasicServer.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABB05F8C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1ABB05FA0(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1ABB05FA0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

unint64_t sub_1ABB05FF4()
{
  result = qword_1EB4CFB98;
  if (!qword_1EB4CFB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CFB98);
  }

  return result;
}

uint64_t sub_1ABB06048(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001ABF86AD0 == a2;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4E64497465737361 && a2 == 0xEF646E756F46746FLL;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000013 && 0x80000001ABF86AF0 == a2)
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

uint64_t sub_1ABB0616C(char a1)
{
  if (!a1)
  {
    return 0xD000000000000010;
  }

  if (a1 == 1)
  {
    return 0x4E64497465737361;
  }

  return 0xD000000000000013;
}

uint64_t sub_1ABB061DC(uint64_t a1)
{
  v2 = sub_1ABB06820();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB06218(uint64_t a1)
{
  v2 = sub_1ABB06820();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB06274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABB06048(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABB0629C(uint64_t a1)
{
  v2 = sub_1ABB06778();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB062D8(uint64_t a1)
{
  v2 = sub_1ABB06778();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB06314(uint64_t a1)
{
  v2 = sub_1ABB06874();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB06350(uint64_t a1)
{
  v2 = sub_1ABB06874();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB0638C(uint64_t a1)
{
  v2 = sub_1ABB067CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB063C8(uint64_t a1)
{
  v2 = sub_1ABB067CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AssetRegistryLookupError.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1ABA7BCA8();
  a23 = v27;
  a24 = v28;
  v66 = v25;
  v30 = v29;
  sub_1ABAD219C(&qword_1EB4D2340, &qword_1ABF36A20);
  sub_1ABA7BB64();
  v61 = v32;
  v62 = v31;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v33);
  sub_1ABA7FBE0();
  v60 = v34;
  sub_1ABAD219C(&qword_1EB4D2348, &qword_1ABF36A28);
  sub_1ABA7BB64();
  v58 = v36;
  v59 = v35;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v37);
  sub_1ABA7E358();
  sub_1ABAD219C(&qword_1EB4D2350, &qword_1ABF36A30);
  sub_1ABA7BB64();
  v56 = v39;
  v57 = v38;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v55 - v41;
  v65 = sub_1ABAD219C(&qword_1EB4D2358, &qword_1ABF36A38);
  sub_1ABA7BB64();
  v44 = v43;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v45);
  sub_1ABA7ED98();
  v46 = v24[1];
  v63 = *v24;
  v64 = v46;
  v47 = *(v24 + 16);
  sub_1ABA93E20(v30, v30[3]);
  sub_1ABB06778();
  sub_1ABF252E4();
  v48 = (v44 + 8);
  if (v47)
  {
    if (v47 == 1)
    {
      a13 = 1;
      sub_1ABB06820();
      sub_1ABAA4CAC(&type metadata for AssetRegistryLookupError.AssetIdNotFoundCodingKeys, &a13);
      v49 = v59;
      sub_1ABF24F34();
      v50 = sub_1ABA8150C();
    }

    else
    {
      a14 = 2;
      sub_1ABB067CC();
      v54 = v60;
      sub_1ABAA4CAC(&type metadata for AssetRegistryLookupError.InternalServerErrorCodingKeys, &a14);
      v49 = v62;
      sub_1ABF24F34();
      v51 = *(v61 + 8);
      v50 = v54;
    }

    v51(v50, v49);
    (*v48)(v26, v42);
  }

  else
  {
    sub_1ABB06874();
    v52 = v65;
    sub_1ABF24EC4();
    v53 = v57;
    sub_1ABF24F34();
    (*(v56 + 8))(v42, v53);
    (*v48)(v26, v52);
  }

  sub_1ABA7BC90();
}

unint64_t sub_1ABB06778()
{
  result = qword_1EB4D2360;
  if (!qword_1EB4D2360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2360);
  }

  return result;
}

unint64_t sub_1ABB067CC()
{
  result = qword_1EB4D2368;
  if (!qword_1EB4D2368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2368);
  }

  return result;
}

unint64_t sub_1ABB06820()
{
  result = qword_1EB4D2370;
  if (!qword_1EB4D2370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2370);
  }

  return result;
}

unint64_t sub_1ABB06874()
{
  result = qword_1EB4D2378;
  if (!qword_1EB4D2378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2378);
  }

  return result;
}

void AssetRegistryLookupError.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, char a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  sub_1ABA7BCA8();
  a24 = v26;
  a25 = v27;
  v98 = v25;
  v29 = v28;
  v95 = v30;
  v91 = sub_1ABAD219C(&qword_1EB4D2380, &qword_1ABF36A40);
  sub_1ABA7BB64();
  v94 = v31;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v32);
  sub_1ABA7FBE0();
  v96 = v33;
  sub_1ABAD219C(&qword_1EB4D2388, &qword_1ABF36A48);
  sub_1ABA7BB64();
  v92 = v34;
  v93 = v35;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v36);
  sub_1ABA7ED98();
  v37 = sub_1ABAD219C(&qword_1EB4D2390, &qword_1ABF36A50);
  sub_1ABA7BB64();
  v90 = v38;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v39);
  sub_1ABA7E358();
  v40 = sub_1ABAD219C(&qword_1EB4D2398, &unk_1ABF36A58);
  sub_1ABA7BB64();
  v42 = v41;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v87 - v44;
  v46 = v29[3];
  v97 = v29;
  sub_1ABA93E20(v29, v46);
  sub_1ABB06778();
  v47 = v98;
  sub_1ABF252C4();
  if (v47)
  {
    goto LABEL_11;
  }

  v88 = 0;
  v89 = v42;
  v98 = v45;
  sub_1ABF24EA4();
  sub_1ABAD4EA4();
  v49 = v40;
  if (v50 == v48 >> 1)
  {
LABEL_10:
    v61 = sub_1ABF24B44();
    swift_allocError();
    v63 = v62;
    sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050);
    *v63 = &type metadata for AssetRegistryLookupError;
    v64 = sub_1ABF24DA4();
    sub_1ABA835CC(v64);
    (*(*(v61 - 8) + 104))(v63, *MEMORY[0x1E69E6AF8], v61);
    swift_willThrow();
    swift_unknownObjectRelease();
    v65 = sub_1ABA8B474();
    v66(v65, v49);
LABEL_11:
    v67 = v97;
    goto LABEL_12;
  }

  sub_1ABA83F18();
  if (v53 == v54)
  {
    __break(1u);
    return;
  }

  v55 = *(v52 + v51);
  sub_1ABAD4E90();
  v57 = v56;
  v59 = v58;
  swift_unknownObjectRelease();
  if (v57 != v59 >> 1)
  {
    v49 = v40;
    goto LABEL_10;
  }

  if (v55)
  {
    a10 = v55;
    if (v55 == 1)
    {
      a14 = 1;
      sub_1ABB06820();
      sub_1ABAA56CC(&type metadata for AssetRegistryLookupError.AssetIdNotFoundCodingKeys, &a14);
      v60 = v95;
      v71 = sub_1ABF24E14();
      v76 = v75;
      v88 = v71;
      swift_unknownObjectRelease();
      v77 = sub_1ABA83F30();
      v78(v77);
      v79 = v97;
      v80 = v89;
    }

    else
    {
      a15 = 2;
      sub_1ABB067CC();
      sub_1ABAA56CC(&type metadata for AssetRegistryLookupError.InternalServerErrorCodingKeys, &a15);
      v79 = v97;
      v60 = v95;
      v73 = v91;
      v74 = sub_1ABF24E14();
      v80 = v89;
      v76 = v84;
      v88 = v74;
      swift_unknownObjectRelease();
      v85 = sub_1ABA8150C();
      v86(v85, v73);
    }

    goto LABEL_18;
  }

  sub_1ABB06874();
  v68 = v88;
  sub_1ABF24D94();
  if (!v68)
  {
    v72 = sub_1ABF24E14();
    v79 = v97;
    v80 = v89;
    v76 = v81;
    v88 = v72;
    a10 = 0;
    swift_unknownObjectRelease();
    v82 = sub_1ABA8150C();
    v83(v82, v37);
    v60 = v95;
LABEL_18:
    (*(v80 + 8))(v98, v40);
    *v60 = v88;
    *(v60 + 8) = v76;
    *(v60 + 16) = a10;
    sub_1ABA84B54(v79);
    goto LABEL_13;
  }

  v69 = sub_1ABA8B474();
  v70(v69, v40);
  swift_unknownObjectRelease();
  v67 = v97;
LABEL_12:
  sub_1ABA84B54(v67);
LABEL_13:
  sub_1ABA7BC90();
}

uint64_t sub_1ABB06F20(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000023 && 0x80000001ABF86B10 == a2;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x80000001ABF86AD0 == a2;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x4E64497465737361 && a2 == 0xEF646E756F46746FLL;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000013 && 0x80000001ABF86AF0 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_1ABF25054();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1ABB07088(char a1)
{
  result = 0x4E64497465737361;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      return result;
    case 3:
      result = 0xD000000000000013;
      break;
    default:
      result = 0xD000000000000023;
      break;
  }

  return result;
}

uint64_t sub_1ABB0712C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 2;
}

uint64_t sub_1ABB07170(uint64_t a1)
{
  v2 = sub_1ABB08064();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB071AC(uint64_t a1)
{
  v2 = sub_1ABB08064();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB071E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1ABF25234();
  a4(v8, v6);
  return sub_1ABF25294();
}

uint64_t sub_1ABB0723C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABB06F20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABB07264(uint64_t a1)
{
  v2 = sub_1ABB07FBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB072A0(uint64_t a1)
{
  v2 = sub_1ABB07FBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB072DC(uint64_t a1)
{
  v2 = sub_1ABB080B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB07318(uint64_t a1)
{
  v2 = sub_1ABB080B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB07354(uint64_t a1)
{
  v2 = sub_1ABB08010();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB07390(uint64_t a1)
{
  v2 = sub_1ABB08010();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB073CC(uint64_t a1)
{
  v2 = sub_1ABB0810C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB07408(uint64_t a1)
{
  v2 = sub_1ABB0810C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AssetRegistryOverrideError.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1ABA7BCA8();
  a23 = v27;
  a24 = v28;
  v73 = v25;
  v30 = v29;
  sub_1ABAD219C(&qword_1EB4D23A0, &qword_1ABF36A68);
  sub_1ABA7BB64();
  v68 = v32;
  v69 = v31;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v33);
  sub_1ABA7FBE0();
  v67 = v34;
  sub_1ABAD219C(&qword_1EB4D23A8, &qword_1ABF36A70);
  sub_1ABA7BB64();
  v65 = v36;
  v66 = v35;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v37);
  sub_1ABA7FBE0();
  v64 = v38;
  sub_1ABAD219C(&qword_1EB4D23B0, &qword_1ABF36A78);
  sub_1ABA7BB64();
  v62 = v40;
  v63 = v39;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v41);
  sub_1ABAD219C(&qword_1EB4D23B8, &qword_1ABF36A80);
  sub_1ABA7BB64();
  v60 = v43;
  v61 = v42;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v60 - v45;
  v72 = sub_1ABAD219C(&qword_1EB4D23C0, &qword_1ABF36A88);
  sub_1ABA7BB64();
  v48 = v47;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v49);
  sub_1ABA7ED98();
  v50 = *(v24 + 8);
  v70 = *v24;
  v71 = v50;
  v51 = *(v24 + 16);
  sub_1ABA93E20(v30, v30[3]);
  sub_1ABB07FBC();
  sub_1ABF252E4();
  switch(v51)
  {
    case 1:
      a12 = 1;
      sub_1ABB080B8();
      sub_1ABA7BD18(&type metadata for AssetRegistryOverrideError.DomainIdNotFoundCodingKeys, &a12);
      v57 = v63;
      sub_1ABF24F34();
      v58 = sub_1ABA8FE20();
      v59(v58, v57);
      goto LABEL_7;
    case 2:
      a13 = 2;
      sub_1ABB08064();
      v46 = v64;
      sub_1ABA7BD18(&type metadata for AssetRegistryOverrideError.AssetIdNotFoundCodingKeys, &a13);
      v52 = v66;
      sub_1ABA8E0E0(v70, v71, v55);
      v54 = v65;
      goto LABEL_5;
    case 3:
      a14 = 3;
      sub_1ABB08010();
      v46 = v67;
      sub_1ABA7BD18(&type metadata for AssetRegistryOverrideError.InternalServerErrorCodingKeys, &a14);
      v52 = v69;
      sub_1ABA8E0E0(v70, v71, v56);
      v54 = v68;
      goto LABEL_5;
    default:
      a11 = 0;
      sub_1ABB0810C();
      sub_1ABA7BD18(&type metadata for AssetRegistryOverrideError.LackingOverrideEntitlementForDomainCodingKeys, &a11);
      v52 = v61;
      sub_1ABA8E0E0(v70, v71, v53);
      v54 = v60;
LABEL_5:
      (*(v54 + 8))(v46, v52);
LABEL_7:
      (*(v48 + 8))(v26, v51);
      sub_1ABA7BC90();
      return;
  }
}

void AssetRegistryOverrideError.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1ABA7BCA8();
  a23 = v26;
  a24 = v27;
  v106 = v24;
  v29 = v28;
  v101 = v30;
  sub_1ABAD219C(&qword_1EB4D23F0, &qword_1ABF36A90);
  sub_1ABA7BB64();
  v99 = v32;
  v100 = v31;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v33);
  sub_1ABA7FBE0();
  v104 = v34;
  sub_1ABAD219C(&qword_1EB4D23F8, &qword_1ABF36A98);
  sub_1ABA7BB64();
  v97 = v35;
  v98 = v36;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v37);
  sub_1ABA7FBE0();
  v103 = v38;
  v102 = sub_1ABAD219C(&qword_1EB4D2400, &qword_1ABF36AA0);
  sub_1ABA7BB64();
  v96 = v39;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v40);
  sub_1ABA7E358();
  v41 = sub_1ABAD219C(&qword_1EB4D2408, &qword_1ABF36AA8);
  sub_1ABA7BB64();
  v95 = v42;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v89 - v44;
  v46 = sub_1ABAD219C(&qword_1EB4D2410, &qword_1ABF36AB0);
  sub_1ABA7BB64();
  v48 = v47;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v49);
  v50 = v29[3];
  v105 = v29;
  sub_1ABA93E20(v29, v50);
  sub_1ABB07FBC();
  v51 = v106;
  sub_1ABF252C4();
  if (!v51)
  {
    v92 = v41;
    v93 = v45;
    v94 = v25;
    v52 = v103;
    v106 = v48;
    sub_1ABF24EA4();
    sub_1ABAD4EA4();
    if (v54 != v53 >> 1)
    {
      sub_1ABA83F18();
      if (v57 == v58)
      {
        __break(1u);
        return;
      }

      v59 = 0;
      v90 = *(v56 + v55);
      v60 = sub_1ABAD4E90();
      v62 = v61;
      v64 = v63;
      swift_unknownObjectRelease();
      v91 = v60;
      if (v62 == v64 >> 1)
      {
        v65 = v101;
        switch(v90)
        {
          case 1:
            a12 = 1;
            sub_1ABB080B8();
            v73 = v94;
            sub_1ABA80688(&type metadata for AssetRegistryOverrideError.DomainIdNotFoundCodingKeys, &a12);
            v84 = v105;
            goto LABEL_14;
          case 2:
            a13 = 2;
            sub_1ABB08064();
            v73 = v52;
            sub_1ABA80688(&type metadata for AssetRegistryOverrideError.AssetIdNotFoundCodingKeys, &a13);
            v84 = v105;
LABEL_14:
            v77 = v73;
            sub_1ABF24E14();
            v89 = 0;
            sub_1ABAA5EDC();
            v85 = sub_1ABA7E348();
            v86(v85);
            break;
          case 3:
            a14 = 3;
            sub_1ABB08010();
            sub_1ABA80688(&type metadata for AssetRegistryOverrideError.InternalServerErrorCodingKeys, &a14);
            v84 = v105;
            v74 = v100;
            v75 = sub_1ABF24E14();
            v89 = 0;
            v59 = v75;
            v79 = v78;
            swift_unknownObjectRelease();
            v80 = sub_1ABA8B474();
            v81(v80, v74);
            v77 = v79;
            break;
          default:
            a11 = 0;
            sub_1ABB0810C();
            v66 = v93;
            sub_1ABA80688(&type metadata for AssetRegistryOverrideError.LackingOverrideEntitlementForDomainCodingKeys, &a11);
            v76 = v92;
            v77 = v66;
            sub_1ABF24E14();
            v89 = 0;
            sub_1ABAA5EDC();
            v82 = sub_1ABA8FE20();
            v83(v82, v76);
            v84 = v105;
            break;
        }

        v87 = sub_1ABA8BE60();
        v88(v87);
        *v65 = v59;
        *(v65 + 8) = v77;
        *(v65 + 16) = v90;
        sub_1ABA84B54(v84);
        goto LABEL_10;
      }
    }

    v67 = sub_1ABF24B44();
    swift_allocError();
    v69 = v68;
    sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050);
    *v69 = &type metadata for AssetRegistryOverrideError;
    v70 = sub_1ABF24DA4();
    sub_1ABA835CC(v70);
    (*(*(v67 - 8) + 104))(v69, *MEMORY[0x1E69E6AF8], v67);
    swift_willThrow();
    swift_unknownObjectRelease();
    v71 = sub_1ABA8B474();
    v72(v71, v46);
  }

  sub_1ABA84B54(v105);
LABEL_10:
  sub_1ABA7BC90();
}

uint64_t sub_1ABB07F78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 3;
}

unint64_t sub_1ABB07FBC()
{
  result = qword_1EB4D23C8;
  if (!qword_1EB4D23C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D23C8);
  }

  return result;
}

unint64_t sub_1ABB08010()
{
  result = qword_1EB4D23D0;
  if (!qword_1EB4D23D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D23D0);
  }

  return result;
}